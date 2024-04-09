; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133324 () Bool)

(assert start!133324)

(declare-fun newKey!135 () (_ BitVec 64))

(declare-fun b!1558743 () Bool)

(declare-datatypes ((B!2444 0))(
  ( (B!2445 (val!19308 Int)) )
))
(declare-fun newValue!135 () B!2444)

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-datatypes ((tuple2!25132 0))(
  ( (tuple2!25133 (_1!12576 (_ BitVec 64)) (_2!12576 B!2444)) )
))
(declare-datatypes ((List!36488 0))(
  ( (Nil!36485) (Cons!36484 (h!37931 tuple2!25132) (t!51225 List!36488)) )
))
(declare-fun l!1292 () List!36488)

(declare-fun e!868412 () Bool)

(declare-fun containsKey!843 (List!36488 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!572 (List!36488 (_ BitVec 64) B!2444) List!36488)

(assert (=> b!1558743 (= e!868412 (not (containsKey!843 (insertStrictlySorted!572 l!1292 newKey!135 newValue!135) otherKey!62)))))

(declare-fun b!1558741 () Bool)

(declare-fun res!1066132 () Bool)

(assert (=> b!1558741 (=> (not res!1066132) (not e!868412))))

(assert (=> b!1558741 (= res!1066132 (containsKey!843 l!1292 otherKey!62))))

(declare-fun b!1558742 () Bool)

(declare-fun res!1066133 () Bool)

(assert (=> b!1558742 (=> (not res!1066133) (not e!868412))))

(assert (=> b!1558742 (= res!1066133 (and (not (= otherKey!62 newKey!135)) (or (not (is-Cons!36484 l!1292)) (= (_1!12576 (h!37931 l!1292)) otherKey!62))))))

(declare-fun b!1558744 () Bool)

(declare-fun e!868413 () Bool)

(declare-fun tp_is_empty!38449 () Bool)

(declare-fun tp!112678 () Bool)

(assert (=> b!1558744 (= e!868413 (and tp_is_empty!38449 tp!112678))))

(declare-fun res!1066134 () Bool)

(assert (=> start!133324 (=> (not res!1066134) (not e!868412))))

(declare-fun isStrictlySorted!979 (List!36488) Bool)

(assert (=> start!133324 (= res!1066134 (isStrictlySorted!979 l!1292))))

(assert (=> start!133324 e!868412))

(assert (=> start!133324 e!868413))

(assert (=> start!133324 true))

(assert (=> start!133324 tp_is_empty!38449))

(assert (= (and start!133324 res!1066134) b!1558741))

(assert (= (and b!1558741 res!1066132) b!1558742))

(assert (= (and b!1558742 res!1066133) b!1558743))

(assert (= (and start!133324 (is-Cons!36484 l!1292)) b!1558744))

(declare-fun m!1435269 () Bool)

(assert (=> b!1558743 m!1435269))

(assert (=> b!1558743 m!1435269))

(declare-fun m!1435271 () Bool)

(assert (=> b!1558743 m!1435271))

(declare-fun m!1435273 () Bool)

(assert (=> b!1558741 m!1435273))

(declare-fun m!1435275 () Bool)

(assert (=> start!133324 m!1435275))

(push 1)

(assert (not start!133324))

(assert tp_is_empty!38449)

(assert (not b!1558741))

(assert (not b!1558744))

(assert (not b!1558743))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162739 () Bool)

(declare-fun res!1066169 () Bool)

(declare-fun e!868442 () Bool)

(assert (=> d!162739 (=> res!1066169 e!868442)))

(assert (=> d!162739 (= res!1066169 (and (is-Cons!36484 l!1292) (= (_1!12576 (h!37931 l!1292)) otherKey!62)))))

(assert (=> d!162739 (= (containsKey!843 l!1292 otherKey!62) e!868442)))

(declare-fun b!1558785 () Bool)

(declare-fun e!868443 () Bool)

(assert (=> b!1558785 (= e!868442 e!868443)))

(declare-fun res!1066170 () Bool)

(assert (=> b!1558785 (=> (not res!1066170) (not e!868443))))

(assert (=> b!1558785 (= res!1066170 (and (or (not (is-Cons!36484 l!1292)) (bvsle (_1!12576 (h!37931 l!1292)) otherKey!62)) (is-Cons!36484 l!1292) (bvslt (_1!12576 (h!37931 l!1292)) otherKey!62)))))

(declare-fun b!1558786 () Bool)

(assert (=> b!1558786 (= e!868443 (containsKey!843 (t!51225 l!1292) otherKey!62))))

(assert (= (and d!162739 (not res!1066169)) b!1558785))

(assert (= (and b!1558785 res!1066170) b!1558786))

(declare-fun m!1435297 () Bool)

(assert (=> b!1558786 m!1435297))

(assert (=> b!1558741 d!162739))

(declare-fun d!162747 () Bool)

(declare-fun res!1066179 () Bool)

(declare-fun e!868452 () Bool)

(assert (=> d!162747 (=> res!1066179 e!868452)))

(assert (=> d!162747 (= res!1066179 (or (is-Nil!36485 l!1292) (is-Nil!36485 (t!51225 l!1292))))))

(assert (=> d!162747 (= (isStrictlySorted!979 l!1292) e!868452)))

(declare-fun b!1558795 () Bool)

(declare-fun e!868453 () Bool)

(assert (=> b!1558795 (= e!868452 e!868453)))

(declare-fun res!1066180 () Bool)

(assert (=> b!1558795 (=> (not res!1066180) (not e!868453))))

(assert (=> b!1558795 (= res!1066180 (bvslt (_1!12576 (h!37931 l!1292)) (_1!12576 (h!37931 (t!51225 l!1292)))))))

(declare-fun b!1558796 () Bool)

(assert (=> b!1558796 (= e!868453 (isStrictlySorted!979 (t!51225 l!1292)))))

(assert (= (and d!162747 (not res!1066179)) b!1558795))

(assert (= (and b!1558795 res!1066180) b!1558796))

(declare-fun m!1435299 () Bool)

(assert (=> b!1558796 m!1435299))

(assert (=> start!133324 d!162747))

(declare-fun d!162749 () Bool)

(declare-fun res!1066183 () Bool)

(declare-fun e!868456 () Bool)

(assert (=> d!162749 (=> res!1066183 e!868456)))

(assert (=> d!162749 (= res!1066183 (and (is-Cons!36484 (insertStrictlySorted!572 l!1292 newKey!135 newValue!135)) (= (_1!12576 (h!37931 (insertStrictlySorted!572 l!1292 newKey!135 newValue!135))) otherKey!62)))))

(assert (=> d!162749 (= (containsKey!843 (insertStrictlySorted!572 l!1292 newKey!135 newValue!135) otherKey!62) e!868456)))

(declare-fun b!1558799 () Bool)

(declare-fun e!868457 () Bool)

(assert (=> b!1558799 (= e!868456 e!868457)))

(declare-fun res!1066184 () Bool)

(assert (=> b!1558799 (=> (not res!1066184) (not e!868457))))

(assert (=> b!1558799 (= res!1066184 (and (or (not (is-Cons!36484 (insertStrictlySorted!572 l!1292 newKey!135 newValue!135))) (bvsle (_1!12576 (h!37931 (insertStrictlySorted!572 l!1292 newKey!135 newValue!135))) otherKey!62)) (is-Cons!36484 (insertStrictlySorted!572 l!1292 newKey!135 newValue!135)) (bvslt (_1!12576 (h!37931 (insertStrictlySorted!572 l!1292 newKey!135 newValue!135))) otherKey!62)))))

(declare-fun b!1558800 () Bool)

(assert (=> b!1558800 (= e!868457 (containsKey!843 (t!51225 (insertStrictlySorted!572 l!1292 newKey!135 newValue!135)) otherKey!62))))

(assert (= (and d!162749 (not res!1066183)) b!1558799))

(assert (= (and b!1558799 res!1066184) b!1558800))

(declare-fun m!1435303 () Bool)

(assert (=> b!1558800 m!1435303))

(assert (=> b!1558743 d!162749))

(declare-fun b!1558894 () Bool)

(declare-fun e!868511 () List!36488)

(declare-fun call!71820 () List!36488)

(assert (=> b!1558894 (= e!868511 call!71820)))

(declare-fun b!1558895 () Bool)

(declare-fun c!144134 () Bool)

(assert (=> b!1558895 (= c!144134 (and (is-Cons!36484 l!1292) (bvsgt (_1!12576 (h!37931 l!1292)) newKey!135)))))

(declare-fun e!868509 () List!36488)

(declare-fun e!868510 () List!36488)

(assert (=> b!1558895 (= e!868509 e!868510)))

(declare-fun bm!71815 () Bool)

(declare-fun call!71819 () List!36488)

(declare-fun call!71818 () List!36488)

(assert (=> bm!71815 (= call!71819 call!71818)))

(declare-fun b!1558896 () Bool)

(declare-fun e!868513 () List!36488)

(declare-fun c!144132 () Bool)

(assert (=> b!1558896 (= e!868513 (ite c!144132 (t!51225 l!1292) (ite c!144134 (Cons!36484 (h!37931 l!1292) (t!51225 l!1292)) Nil!36485)))))

(declare-fun b!1558897 () Bool)

(assert (=> b!1558897 (= e!868509 call!71818)))

(declare-fun d!162753 () Bool)

(declare-fun e!868512 () Bool)

(assert (=> d!162753 e!868512))

(declare-fun res!1066209 () Bool)

(assert (=> d!162753 (=> (not res!1066209) (not e!868512))))

(declare-fun lt!670760 () List!36488)

(assert (=> d!162753 (= res!1066209 (isStrictlySorted!979 lt!670760))))

(assert (=> d!162753 (= lt!670760 e!868511)))

(declare-fun c!144133 () Bool)

(assert (=> d!162753 (= c!144133 (and (is-Cons!36484 l!1292) (bvslt (_1!12576 (h!37931 l!1292)) newKey!135)))))

(assert (=> d!162753 (isStrictlySorted!979 l!1292)))

(assert (=> d!162753 (= (insertStrictlySorted!572 l!1292 newKey!135 newValue!135) lt!670760)))

(declare-fun b!1558898 () Bool)

(declare-fun contains!10222 (List!36488 tuple2!25132) Bool)

(assert (=> b!1558898 (= e!868512 (contains!10222 lt!670760 (tuple2!25133 newKey!135 newValue!135)))))

(declare-fun bm!71816 () Bool)

(assert (=> bm!71816 (= call!71818 call!71820)))

(declare-fun b!1558899 () Bool)

(declare-fun res!1066210 () Bool)

(assert (=> b!1558899 (=> (not res!1066210) (not e!868512))))

(assert (=> b!1558899 (= res!1066210 (containsKey!843 lt!670760 newKey!135))))

(declare-fun bm!71817 () Bool)

(declare-fun $colon$colon!987 (List!36488 tuple2!25132) List!36488)

(assert (=> bm!71817 (= call!71820 ($colon$colon!987 e!868513 (ite c!144133 (h!37931 l!1292) (tuple2!25133 newKey!135 newValue!135))))))

(declare-fun c!144131 () Bool)

(assert (=> bm!71817 (= c!144131 c!144133)))

(declare-fun b!1558900 () Bool)

(assert (=> b!1558900 (= e!868510 call!71819)))

(declare-fun b!1558901 () Bool)

(assert (=> b!1558901 (= e!868513 (insertStrictlySorted!572 (t!51225 l!1292) newKey!135 newValue!135))))

(declare-fun b!1558902 () Bool)

(assert (=> b!1558902 (= e!868510 call!71819)))

(declare-fun b!1558903 () Bool)

(assert (=> b!1558903 (= e!868511 e!868509)))

(assert (=> b!1558903 (= c!144132 (and (is-Cons!36484 l!1292) (= (_1!12576 (h!37931 l!1292)) newKey!135)))))

(assert (= (and d!162753 c!144133) b!1558894))

(assert (= (and d!162753 (not c!144133)) b!1558903))

(assert (= (and b!1558903 c!144132) b!1558897))

(assert (= (and b!1558903 (not c!144132)) b!1558895))

(assert (= (and b!1558895 c!144134) b!1558902))

(assert (= (and b!1558895 (not c!144134)) b!1558900))

(assert (= (or b!1558902 b!1558900) bm!71815))

(assert (= (or b!1558897 bm!71815) bm!71816))

(assert (= (or b!1558894 bm!71816) bm!71817))

(assert (= (and bm!71817 c!144131) b!1558901))

(assert (= (and bm!71817 (not c!144131)) b!1558896))

(assert (= (and d!162753 res!1066209) b!1558899))

(assert (= (and b!1558899 res!1066210) b!1558898))

(declare-fun m!1435323 () Bool)

(assert (=> b!1558901 m!1435323))

(declare-fun m!1435327 () Bool)

(assert (=> d!162753 m!1435327))

(assert (=> d!162753 m!1435275))

(declare-fun m!1435331 () Bool)

(assert (=> bm!71817 m!1435331))

(declare-fun m!1435335 () Bool)

(assert (=> b!1558898 m!1435335))

(declare-fun m!1435337 () Bool)

(assert (=> b!1558899 m!1435337))

(assert (=> b!1558743 d!162753))

(declare-fun b!1558914 () Bool)

(declare-fun e!868520 () Bool)

(declare-fun tp!112692 () Bool)

(assert (=> b!1558914 (= e!868520 (and tp_is_empty!38449 tp!112692))))

(assert (=> b!1558744 (= tp!112678 e!868520)))

(assert (= (and b!1558744 (is-Cons!36484 (t!51225 l!1292))) b!1558914))

(push 1)

(assert (not bm!71817))

(assert tp_is_empty!38449)

(assert (not b!1558796))

(assert (not b!1558800))

(assert (not b!1558898))

(assert (not b!1558901))

(assert (not b!1558914))

(assert (not b!1558899))

(assert (not b!1558786))

(assert (not d!162753))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1558916 () Bool)

(declare-fun e!868524 () List!36488)

(declare-fun call!71823 () List!36488)

(assert (=> b!1558916 (= e!868524 call!71823)))

(declare-fun b!1558917 () Bool)

(declare-fun c!144138 () Bool)

(assert (=> b!1558917 (= c!144138 (and (is-Cons!36484 (t!51225 l!1292)) (bvsgt (_1!12576 (h!37931 (t!51225 l!1292))) newKey!135)))))

(declare-fun e!868522 () List!36488)

(declare-fun e!868523 () List!36488)

(assert (=> b!1558917 (= e!868522 e!868523)))

(declare-fun bm!71818 () Bool)

(declare-fun call!71822 () List!36488)

(declare-fun call!71821 () List!36488)

(assert (=> bm!71818 (= call!71822 call!71821)))

(declare-fun e!868526 () List!36488)

(declare-fun b!1558918 () Bool)

(declare-fun c!144136 () Bool)

(assert (=> b!1558918 (= e!868526 (ite c!144136 (t!51225 (t!51225 l!1292)) (ite c!144138 (Cons!36484 (h!37931 (t!51225 l!1292)) (t!51225 (t!51225 l!1292))) Nil!36485)))))

(declare-fun b!1558919 () Bool)

(assert (=> b!1558919 (= e!868522 call!71821)))

(declare-fun d!162761 () Bool)

(declare-fun e!868525 () Bool)

(assert (=> d!162761 e!868525))

(declare-fun res!1066213 () Bool)

(assert (=> d!162761 (=> (not res!1066213) (not e!868525))))

(declare-fun lt!670761 () List!36488)

(assert (=> d!162761 (= res!1066213 (isStrictlySorted!979 lt!670761))))

(assert (=> d!162761 (= lt!670761 e!868524)))

(declare-fun c!144137 () Bool)

(assert (=> d!162761 (= c!144137 (and (is-Cons!36484 (t!51225 l!1292)) (bvslt (_1!12576 (h!37931 (t!51225 l!1292))) newKey!135)))))

(assert (=> d!162761 (isStrictlySorted!979 (t!51225 l!1292))))

(assert (=> d!162761 (= (insertStrictlySorted!572 (t!51225 l!1292) newKey!135 newValue!135) lt!670761)))

(declare-fun b!1558920 () Bool)

(assert (=> b!1558920 (= e!868525 (contains!10222 lt!670761 (tuple2!25133 newKey!135 newValue!135)))))

(declare-fun bm!71819 () Bool)

(assert (=> bm!71819 (= call!71821 call!71823)))

(declare-fun b!1558921 () Bool)

(declare-fun res!1066214 () Bool)

(assert (=> b!1558921 (=> (not res!1066214) (not e!868525))))

(assert (=> b!1558921 (= res!1066214 (containsKey!843 lt!670761 newKey!135))))

(declare-fun bm!71820 () Bool)

(assert (=> bm!71820 (= call!71823 ($colon$colon!987 e!868526 (ite c!144137 (h!37931 (t!51225 l!1292)) (tuple2!25133 newKey!135 newValue!135))))))

(declare-fun c!144135 () Bool)

(assert (=> bm!71820 (= c!144135 c!144137)))

(declare-fun b!1558922 () Bool)

(assert (=> b!1558922 (= e!868523 call!71822)))

(declare-fun b!1558923 () Bool)

(assert (=> b!1558923 (= e!868526 (insertStrictlySorted!572 (t!51225 (t!51225 l!1292)) newKey!135 newValue!135))))

(declare-fun b!1558924 () Bool)

(assert (=> b!1558924 (= e!868523 call!71822)))

(declare-fun b!1558925 () Bool)

(assert (=> b!1558925 (= e!868524 e!868522)))

(assert (=> b!1558925 (= c!144136 (and (is-Cons!36484 (t!51225 l!1292)) (= (_1!12576 (h!37931 (t!51225 l!1292))) newKey!135)))))

(assert (= (and d!162761 c!144137) b!1558916))

(assert (= (and d!162761 (not c!144137)) b!1558925))

(assert (= (and b!1558925 c!144136) b!1558919))

(assert (= (and b!1558925 (not c!144136)) b!1558917))

(assert (= (and b!1558917 c!144138) b!1558924))

(assert (= (and b!1558917 (not c!144138)) b!1558922))

(assert (= (or b!1558924 b!1558922) bm!71818))

(assert (= (or b!1558919 bm!71818) bm!71819))

(assert (= (or b!1558916 bm!71819) bm!71820))

(assert (= (and bm!71820 c!144135) b!1558923))

(assert (= (and bm!71820 (not c!144135)) b!1558918))

(assert (= (and d!162761 res!1066213) b!1558921))

(assert (= (and b!1558921 res!1066214) b!1558920))

(declare-fun m!1435341 () Bool)

(assert (=> b!1558923 m!1435341))

(declare-fun m!1435343 () Bool)

(assert (=> d!162761 m!1435343))

(assert (=> d!162761 m!1435299))

(declare-fun m!1435345 () Bool)

(assert (=> bm!71820 m!1435345))

(declare-fun m!1435347 () Bool)

(assert (=> b!1558920 m!1435347))

(declare-fun m!1435349 () Bool)

(assert (=> b!1558921 m!1435349))

(assert (=> b!1558901 d!162761))

(declare-fun d!162763 () Bool)

(declare-fun res!1066215 () Bool)

(declare-fun e!868527 () Bool)

(assert (=> d!162763 (=> res!1066215 e!868527)))

(assert (=> d!162763 (= res!1066215 (or (is-Nil!36485 lt!670760) (is-Nil!36485 (t!51225 lt!670760))))))

(assert (=> d!162763 (= (isStrictlySorted!979 lt!670760) e!868527)))

(declare-fun b!1558926 () Bool)

(declare-fun e!868528 () Bool)

(assert (=> b!1558926 (= e!868527 e!868528)))

(declare-fun res!1066216 () Bool)

(assert (=> b!1558926 (=> (not res!1066216) (not e!868528))))

(assert (=> b!1558926 (= res!1066216 (bvslt (_1!12576 (h!37931 lt!670760)) (_1!12576 (h!37931 (t!51225 lt!670760)))))))

(declare-fun b!1558927 () Bool)

(assert (=> b!1558927 (= e!868528 (isStrictlySorted!979 (t!51225 lt!670760)))))

(assert (= (and d!162763 (not res!1066215)) b!1558926))

(assert (= (and b!1558926 res!1066216) b!1558927))

(declare-fun m!1435351 () Bool)

(assert (=> b!1558927 m!1435351))

(assert (=> d!162753 d!162763))

(assert (=> d!162753 d!162747))

(declare-fun lt!670764 () Bool)

(declare-fun d!162765 () Bool)

(declare-fun content!808 (List!36488) (Set tuple2!25132))

(assert (=> d!162765 (= lt!670764 (set.member (tuple2!25133 newKey!135 newValue!135) (content!808 lt!670760)))))

(declare-fun e!868533 () Bool)

(assert (=> d!162765 (= lt!670764 e!868533)))

(declare-fun res!1066221 () Bool)

(assert (=> d!162765 (=> (not res!1066221) (not e!868533))))

(assert (=> d!162765 (= res!1066221 (is-Cons!36484 lt!670760))))

(assert (=> d!162765 (= (contains!10222 lt!670760 (tuple2!25133 newKey!135 newValue!135)) lt!670764)))

(declare-fun b!1558932 () Bool)

(declare-fun e!868534 () Bool)

(assert (=> b!1558932 (= e!868533 e!868534)))

(declare-fun res!1066222 () Bool)

(assert (=> b!1558932 (=> res!1066222 e!868534)))

(assert (=> b!1558932 (= res!1066222 (= (h!37931 lt!670760) (tuple2!25133 newKey!135 newValue!135)))))

(declare-fun b!1558933 () Bool)

(assert (=> b!1558933 (= e!868534 (contains!10222 (t!51225 lt!670760) (tuple2!25133 newKey!135 newValue!135)))))

(assert (= (and d!162765 res!1066221) b!1558932))

(assert (= (and b!1558932 (not res!1066222)) b!1558933))

(declare-fun m!1435353 () Bool)

(assert (=> d!162765 m!1435353))

(declare-fun m!1435355 () Bool)

(assert (=> d!162765 m!1435355))

(declare-fun m!1435357 () Bool)

(assert (=> b!1558933 m!1435357))

(assert (=> b!1558898 d!162765))

(declare-fun d!162767 () Bool)

(assert (=> d!162767 (= ($colon$colon!987 e!868513 (ite c!144133 (h!37931 l!1292) (tuple2!25133 newKey!135 newValue!135))) (Cons!36484 (ite c!144133 (h!37931 l!1292) (tuple2!25133 newKey!135 newValue!135)) e!868513))))

(assert (=> bm!71817 d!162767))

(declare-fun d!162769 () Bool)

(declare-fun res!1066223 () Bool)

(declare-fun e!868535 () Bool)

(assert (=> d!162769 (=> res!1066223 e!868535)))

(assert (=> d!162769 (= res!1066223 (and (is-Cons!36484 lt!670760) (= (_1!12576 (h!37931 lt!670760)) newKey!135)))))

(assert (=> d!162769 (= (containsKey!843 lt!670760 newKey!135) e!868535)))

(declare-fun b!1558934 () Bool)

(declare-fun e!868536 () Bool)

(assert (=> b!1558934 (= e!868535 e!868536)))

(declare-fun res!1066224 () Bool)

(assert (=> b!1558934 (=> (not res!1066224) (not e!868536))))

(assert (=> b!1558934 (= res!1066224 (and (or (not (is-Cons!36484 lt!670760)) (bvsle (_1!12576 (h!37931 lt!670760)) newKey!135)) (is-Cons!36484 lt!670760) (bvslt (_1!12576 (h!37931 lt!670760)) newKey!135)))))

(declare-fun b!1558935 () Bool)

(assert (=> b!1558935 (= e!868536 (containsKey!843 (t!51225 lt!670760) newKey!135))))

(assert (= (and d!162769 (not res!1066223)) b!1558934))

(assert (= (and b!1558934 res!1066224) b!1558935))

(declare-fun m!1435359 () Bool)

(assert (=> b!1558935 m!1435359))

(assert (=> b!1558899 d!162769))

(declare-fun d!162773 () Bool)

(declare-fun res!1066225 () Bool)

(declare-fun e!868537 () Bool)

(assert (=> d!162773 (=> res!1066225 e!868537)))

(assert (=> d!162773 (= res!1066225 (and (is-Cons!36484 (t!51225 (insertStrictlySorted!572 l!1292 newKey!135 newValue!135))) (= (_1!12576 (h!37931 (t!51225 (insertStrictlySorted!572 l!1292 newKey!135 newValue!135)))) otherKey!62)))))

(assert (=> d!162773 (= (containsKey!843 (t!51225 (insertStrictlySorted!572 l!1292 newKey!135 newValue!135)) otherKey!62) e!868537)))

(declare-fun b!1558936 () Bool)

(declare-fun e!868538 () Bool)

(assert (=> b!1558936 (= e!868537 e!868538)))

(declare-fun res!1066226 () Bool)

(assert (=> b!1558936 (=> (not res!1066226) (not e!868538))))

(assert (=> b!1558936 (= res!1066226 (and (or (not (is-Cons!36484 (t!51225 (insertStrictlySorted!572 l!1292 newKey!135 newValue!135)))) (bvsle (_1!12576 (h!37931 (t!51225 (insertStrictlySorted!572 l!1292 newKey!135 newValue!135)))) otherKey!62)) (is-Cons!36484 (t!51225 (insertStrictlySorted!572 l!1292 newKey!135 newValue!135))) (bvslt (_1!12576 (h!37931 (t!51225 (insertStrictlySorted!572 l!1292 newKey!135 newValue!135)))) otherKey!62)))))

(declare-fun b!1558937 () Bool)

(assert (=> b!1558937 (= e!868538 (containsKey!843 (t!51225 (t!51225 (insertStrictlySorted!572 l!1292 newKey!135 newValue!135))) otherKey!62))))

(assert (= (and d!162773 (not res!1066225)) b!1558936))

(assert (= (and b!1558936 res!1066226) b!1558937))

(declare-fun m!1435361 () Bool)

(assert (=> b!1558937 m!1435361))

(assert (=> b!1558800 d!162773))

(declare-fun d!162775 () Bool)

(declare-fun res!1066227 () Bool)

(declare-fun e!868539 () Bool)

(assert (=> d!162775 (=> res!1066227 e!868539)))

(assert (=> d!162775 (= res!1066227 (or (is-Nil!36485 (t!51225 l!1292)) (is-Nil!36485 (t!51225 (t!51225 l!1292)))))))

(assert (=> d!162775 (= (isStrictlySorted!979 (t!51225 l!1292)) e!868539)))

(declare-fun b!1558938 () Bool)

(declare-fun e!868540 () Bool)

(assert (=> b!1558938 (= e!868539 e!868540)))

(declare-fun res!1066228 () Bool)

(assert (=> b!1558938 (=> (not res!1066228) (not e!868540))))

(assert (=> b!1558938 (= res!1066228 (bvslt (_1!12576 (h!37931 (t!51225 l!1292))) (_1!12576 (h!37931 (t!51225 (t!51225 l!1292))))))))

(declare-fun b!1558939 () Bool)

(assert (=> b!1558939 (= e!868540 (isStrictlySorted!979 (t!51225 (t!51225 l!1292))))))

(assert (= (and d!162775 (not res!1066227)) b!1558938))

(assert (= (and b!1558938 res!1066228) b!1558939))

(declare-fun m!1435363 () Bool)

(assert (=> b!1558939 m!1435363))

(assert (=> b!1558796 d!162775))

(declare-fun d!162777 () Bool)

(declare-fun res!1066229 () Bool)

(declare-fun e!868541 () Bool)

(assert (=> d!162777 (=> res!1066229 e!868541)))

(assert (=> d!162777 (= res!1066229 (and (is-Cons!36484 (t!51225 l!1292)) (= (_1!12576 (h!37931 (t!51225 l!1292))) otherKey!62)))))

(assert (=> d!162777 (= (containsKey!843 (t!51225 l!1292) otherKey!62) e!868541)))

(declare-fun b!1558940 () Bool)

(declare-fun e!868542 () Bool)

(assert (=> b!1558940 (= e!868541 e!868542)))

(declare-fun res!1066230 () Bool)

(assert (=> b!1558940 (=> (not res!1066230) (not e!868542))))

(assert (=> b!1558940 (= res!1066230 (and (or (not (is-Cons!36484 (t!51225 l!1292))) (bvsle (_1!12576 (h!37931 (t!51225 l!1292))) otherKey!62)) (is-Cons!36484 (t!51225 l!1292)) (bvslt (_1!12576 (h!37931 (t!51225 l!1292))) otherKey!62)))))

(declare-fun b!1558941 () Bool)

(assert (=> b!1558941 (= e!868542 (containsKey!843 (t!51225 (t!51225 l!1292)) otherKey!62))))

(assert (= (and d!162777 (not res!1066229)) b!1558940))

(assert (= (and b!1558940 res!1066230) b!1558941))

(declare-fun m!1435365 () Bool)

(assert (=> b!1558941 m!1435365))

(assert (=> b!1558786 d!162777))

(declare-fun b!1558952 () Bool)

(declare-fun e!868548 () Bool)

(declare-fun tp!112694 () Bool)

(assert (=> b!1558952 (= e!868548 (and tp_is_empty!38449 tp!112694))))

(assert (=> b!1558914 (= tp!112692 e!868548)))

(assert (= (and b!1558914 (is-Cons!36484 (t!51225 (t!51225 l!1292)))) b!1558952))

(push 1)

(assert (not b!1558920))

(assert (not d!162765))

(assert tp_is_empty!38449)

(assert (not b!1558939))

(assert (not b!1558952))

(assert (not b!1558921))

(assert (not bm!71820))

(assert (not b!1558923))

(assert (not b!1558937))

(assert (not d!162761))

(assert (not b!1558941))

(assert (not b!1558927))

(assert (not b!1558935))

(assert (not b!1558933))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

