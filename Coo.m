grid = 2; %meter squared

CPmod = CP/grid;

pix = 11.7541;

world_image = 'D:\IRL_SharedSpace\IRL_SharedSpace\Map\RB-1-6--world.jpg';
wld = imread(world_image);
%imshow(wld);

dim = size(wld);
height = dim(1);
width = dim(2);

grid_height = floor(height/pix/grid);
grid_width = floor(width/pix/grid);
height_meter = floor(height/pix);
width_meter = floor(width/pix);
G = zeros(grid_height,grid_width);

for ii = 1:length(CP(:,1))
    for yy = 1:grid_height
        if CPmod(ii,2) >= yy-1 && CPmod(ii,2) < yy
            for xx = 1:grid_width
                if CPmod(ii,1) >= xx-1 && CPmod(ii,1) < xx
                    
                    G(yy,xx) = G(yy,xx) + 1;
                    
                end
            end
        end
    end
end

%load('cmap');

cmap = colormap(cfg.ea_cfg.colormap);

len = length(cmap);

max_v = max(max(G));
min_v = min(min(G));

delta = max_v - min_v;

if strcmp(cfg.ea_cfg.map,'linear')
    G_scale = ceil((G - min_v)*(len-1)/(delta))+1;
elseif strcmp(cfg.ea_cfg.map,'exp')
    
end

br = cfg.ea_cfg.bg_ratio;
hr = cfg.ea_cfg.hotspot_ratio;

for yy = 1:grid_height
    
    ybounds = (round((yy-1)*grid*pix)+1:round(yy*grid*pix));
    
    for xx = 1:grid_width
        
        xbounds = (round((xx-1)*grid*pix)+1:round(xx*grid*pix));
        
        P(ybounds,xbounds,1) = uint8(128*cmap(G_scale(yy,xx),1));
        P(ybounds,xbounds,2) = uint8(128*cmap(G_scale(yy,xx),2));
        P(ybounds,xbounds,3) = uint8(128*cmap(G_scale(yy,xx),3));
    end
end



for yy = 1:length(P(:,1,1))
    
    for xx = 1:length(P(1,:,1))
        
        if P(length(P(:,1,1))-yy+1,xx,1) == uint8(128*cmap(1,1)) &&...
            P(length(P(:,1,1))-yy+1,xx,2) == uint8(128*cmap(1,2)) &&...
            P(length(P(:,1,1))-yy+1,xx,3) == uint8(128*cmap(1,3))
            
            M(yy,xx,1) = ((1-br)*P(length(P(:,1,1))-yy+1,xx,1)+br*wld(yy,xx,1))*1;
            M(yy,xx,2) = ((1-br)*P(length(P(:,1,1))-yy+1,xx,2)+br*wld(yy,xx,2))*1;
            M(yy,xx,3) = ((1-br)*P(length(P(:,1,1))-yy+1,xx,3)+br*wld(yy,xx,3))*1;
        else
            M(yy,xx,1) = (1-hr)*P(length(P(:,1,1))-yy+1,xx,1)+hr*wld(yy,xx,1);
            M(yy,xx,2) = (1-hr)*P(length(P(:,1,1))-yy+1,xx,2)+hr*wld(yy,xx,2);
            M(yy,xx,3) = (1-hr)*P(length(P(:,1,1))-yy+1,xx,3)+hr*wld(yy,xx,3);            
        end
    end
end


