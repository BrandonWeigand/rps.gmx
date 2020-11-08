///element_decide( emnt1, emnt2) - return bool if emnt 1 beats 2 or tie 
var atk = element_type(argument[0]);
var def = element_type(argument[1]);
if(atk==def){return('tie');}
var order = array_create(6);
order[0] = 'fire';
order[1] = 'earth';
order[2] = 'spirit';
order[3] = 'wind';
order[4] = 'water';
order[5] = 'fire';
order[6] = 'earth';
for(var i=0; i<5;i++){
    if(atk == order[i]){
        if(def == order[i+1] || def == order[i+2]){
            return(true);
        }
    }
}
return(false);
