function monTitre(x){
    x=parseInt(x);
    //while(x>0){
        if(x === 0)
            return "PROJET SUR LE TOURISME"
        else if(x === 1)
           return "PROJET SUR L'AGRO-ALIMENTAIRE"
        else if(x === 2)
            return "PROJET SUR LE SERVICE"
        else
            return "GESTION DE PROJET"
   // }
}

function nomP(x){
    var y=x;
    return y;
}


function nom_model(x){
    x = parseInt(x);
    var y=new Array;
    switch(x){
    case 1: y.push(modelP0);
        break;
    case 2: y.push(modelP0, modelP1);
        break;
    case 3: y.push(modelP0,modelP1,modelP2);
        break;
    case 4: y.push(modelP0,modelP1,modelP2,modelP3);
        break;
    case 5: y.push(modelP0,modelP1,modelP2,modelP3,modelP4);
        break;
    case 6: y.push(modelP0,modelP1,modelP2,modelP3,modelP4,modelP5);
        break;
    case 7: y.push(modelP0,modelP1,modelP2,modelP3,modelP4,modelP5,modelP6);
        break;
    case 8: y.push(modelP0,modelP1,modelP2,modelP3,modelP4,modelP5,modelP6,modelP7);
        break;
    case 9: y.push(modelP0,modelP1,modelP2,modelP3,modelP4,modelP5,modelP6,modelP7,modelP8);
        break;
    case 10: y.push(modelP0,modelP1,modelP2,modelP3,modelP4,modelP5,modelP6,modelP7,modelP8,modelP9);
        break;
    default: y.push(_autre);
    }
    return y;
}
function nom_Pro(x){
    x = parseInt(x);
    var y=new Array;
    switch(x){
    case 1: y.push(modelR0);
        break;
    case 2: y.push(modelR0,modelR1);
        break;
    case 3: y.push(modelR0,modelR1,modelR2);
        break;
    case 4: y.push(modelR0,modelR1,modelR2,modelR3);
        break;
    case 5: y.push(modelR0,modelR1,modelR2,modelR3,modelR4);
        break;
    case 6: y.push(modelR0,modelR1,modelR2,modelR3,modelR4,modelR5);
        break;
    case 7: y.push(modelR0,modelR1,modelR2,modelR3,modelR4,modelR5,modelR6);
        break;
    default: y.push(_autre);
    }
    return y;
}
function planif(x){
    x = parseInt(x);
    var y=new Array;
    switch(x){
    case 1: y.push(modelV0);
        break;
    case 2: y.push(modelV0,modelV1);
        break;
    case 3: y.push(modelV0,modelV1,modelV2);
        break;
    case 4: y.push(modelV0,modelV1,modelV2,modelV3);
        break;
    case 5: y.push(modelV0,modelV1,modelV2,modelV3,modelV4);
        break;
    case 6: y.push(modelV0,modelV1,modelV2,modelV3,modelV4,modelV5);
        break;
    case 7: y.push(modelV0,modelV1,modelV2,modelV3,modelV4,modelV5,modelV6);
        break;
    default: y.push(_autre);
    }
    return y;
}
