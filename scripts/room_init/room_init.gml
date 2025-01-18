function room_init(){
	show_debug_message("Initializing room...");

    generate_room_flooe();
}

function generate_room_flooe() {
    randomize();

    var roomWidth = round(room_width / 32);
    var roomHeight = round(room_height / 32);

    var layer_id = layer_get_id("GroundLayer");
    var map_id = layer_tilemap_get_id(layer_id);

    // loop through the room and set the floor tiles
    for (var i = 0; i < roomWidth; i++) {
        for (var j = 0; j < roomHeight; j++) {

            // first tile is always empty for some reason
            var randTile = pickTileIndex([0, 41, 41, 4, 4, 3, 3, 2, 1, 1]);

            tilemap_set(map_id, randTile, i, j);
        }
    }
}

// pick tile based on array of chances. Ex: [90, 8, 2] means 90% chance of first tile, 8% of second and 2% of third
function pickTileIndex(chances) {
    var rand = irandom(100);
    var sum = 0;

    for (var i = 0; i < array_length(chances); i++) {
        sum += chances[i];
        if (rand < sum) {
            return i;
        }
    }

    return 1;
}