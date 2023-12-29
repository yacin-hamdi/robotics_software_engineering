# Import PCL module
import pcl

# Load Point Cloud file
cloud = pcl.load_XYZRGB('tabletop.pcd')


# Voxel Grid filter
vox = cloud.make_voxel_grid_filter()
LEAF_SIZE = 0.01

vox.set_leaf_size(LEAF_SIZE, LEAF_SIZE, LEAF_SIZE)
cloud_filtered = vox.filter()

# PassThrough filter


# RANSAC plane segmentation


# Extract inliers

# Save pcd for table
filename = "voxel_downsampled.pcd"
pcl.save(cloud, filename)


# Extract outliers


# Save pcd for tabletop objects


