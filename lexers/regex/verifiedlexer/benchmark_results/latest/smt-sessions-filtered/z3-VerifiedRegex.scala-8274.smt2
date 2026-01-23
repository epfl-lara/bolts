; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!429838 () Bool)

(assert start!429838)

(declare-fun b!4414554 () Bool)

(declare-fun res!1822996 () Bool)

(declare-fun e!2748996 () Bool)

(assert (=> b!4414554 (=> res!1822996 e!2748996)))

(declare-datatypes ((V!11021 0))(
  ( (V!11022 (val!16891 Int)) )
))
(declare-datatypes ((K!10775 0))(
  ( (K!10776 (val!16892 Int)) )
))
(declare-datatypes ((tuple2!49102 0))(
  ( (tuple2!49103 (_1!27845 K!10775) (_2!27845 V!11021)) )
))
(declare-datatypes ((List!49541 0))(
  ( (Nil!49417) (Cons!49417 (h!55072 tuple2!49102) (t!356479 List!49541)) )
))
(declare-datatypes ((tuple2!49104 0))(
  ( (tuple2!49105 (_1!27846 (_ BitVec 64)) (_2!27846 List!49541)) )
))
(declare-datatypes ((List!49542 0))(
  ( (Nil!49418) (Cons!49418 (h!55073 tuple2!49104) (t!356480 List!49542)) )
))
(declare-datatypes ((ListLongMap!1999 0))(
  ( (ListLongMap!2000 (toList!3349 List!49542)) )
))
(declare-fun lt!1616396 () ListLongMap!1999)

(declare-fun lt!1616395 () tuple2!49104)

(declare-fun head!9160 (List!49542) tuple2!49104)

(assert (=> b!4414554 (= res!1822996 (not (= (head!9160 (toList!3349 lt!1616396)) lt!1616395)))))

(declare-fun e!2748991 () Bool)

(declare-fun key!3717 () K!10775)

(declare-fun newBucket!194 () List!49541)

(declare-fun lm!1616 () ListLongMap!1999)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun b!4414555 () Bool)

(declare-fun newValue!93 () V!11021)

(declare-fun apply!11533 (ListLongMap!1999 (_ BitVec 64)) List!49541)

(assert (=> b!4414555 (= e!2748991 (= newBucket!194 (Cons!49417 (tuple2!49103 key!3717 newValue!93) (apply!11533 lm!1616 hash!366))))))

(declare-fun b!4414556 () Bool)

(declare-fun res!1822984 () Bool)

(declare-fun e!2748995 () Bool)

(assert (=> b!4414556 (=> (not res!1822984) (not e!2748995))))

(declare-fun lambda!151544 () Int)

(declare-fun forall!9458 (List!49542 Int) Bool)

(assert (=> b!4414556 (= res!1822984 (forall!9458 (toList!3349 lm!1616) lambda!151544))))

(declare-fun b!4414557 () Bool)

(declare-fun e!2748992 () Bool)

(assert (=> b!4414557 (= e!2748992 true)))

(declare-fun lt!1616391 () Bool)

(declare-fun lt!1616393 () List!49541)

(declare-fun noDuplicateKeys!681 (List!49541) Bool)

(assert (=> b!4414557 (= lt!1616391 (noDuplicateKeys!681 lt!1616393))))

(declare-fun b!4414558 () Bool)

(declare-fun e!2748994 () Bool)

(assert (=> b!4414558 (= e!2748994 e!2748995)))

(declare-fun res!1822989 () Bool)

(assert (=> b!4414558 (=> (not res!1822989) (not e!2748995))))

(declare-fun e!2748990 () Bool)

(assert (=> b!4414558 (= res!1822989 e!2748990)))

(declare-fun res!1822981 () Bool)

(assert (=> b!4414558 (=> res!1822981 e!2748990)))

(assert (=> b!4414558 (= res!1822981 e!2748991)))

(declare-fun res!1822997 () Bool)

(assert (=> b!4414558 (=> (not res!1822997) (not e!2748991))))

(declare-fun lt!1616397 () Bool)

(assert (=> b!4414558 (= res!1822997 (not lt!1616397))))

(declare-fun lt!1616398 () Bool)

(assert (=> b!4414558 (= lt!1616397 (not lt!1616398))))

(declare-fun contains!11863 (ListLongMap!1999 (_ BitVec 64)) Bool)

(assert (=> b!4414558 (= lt!1616398 (contains!11863 lm!1616 hash!366))))

(declare-fun b!4414559 () Bool)

(declare-fun res!1822986 () Bool)

(assert (=> b!4414559 (=> res!1822986 e!2748996)))

(get-info :version)

(assert (=> b!4414559 (= res!1822986 (or (not ((_ is Cons!49418) (toList!3349 lm!1616))) (not (= (_1!27846 (h!55073 (toList!3349 lm!1616))) hash!366)) lt!1616397))))

(declare-fun b!4414560 () Bool)

(declare-fun res!1822987 () Bool)

(assert (=> b!4414560 (=> (not res!1822987) (not e!2748994))))

(declare-datatypes ((Hashable!5075 0))(
  ( (HashableExt!5074 (__x!30778 Int)) )
))
(declare-fun hashF!1220 () Hashable!5075)

(declare-fun allKeysSameHashInMap!787 (ListLongMap!1999 Hashable!5075) Bool)

(assert (=> b!4414560 (= res!1822987 (allKeysSameHashInMap!787 lm!1616 hashF!1220))))

(declare-fun b!4414561 () Bool)

(declare-fun res!1822995 () Bool)

(assert (=> b!4414561 (=> res!1822995 e!2748996)))

(declare-fun tail!7169 (List!49542) List!49542)

(assert (=> b!4414561 (= res!1822995 (not (= (tail!7169 (toList!3349 lt!1616396)) (t!356480 (toList!3349 lm!1616)))))))

(declare-fun b!4414562 () Bool)

(declare-fun e!2748997 () Bool)

(assert (=> b!4414562 (= e!2748997 e!2748992)))

(declare-fun res!1822983 () Bool)

(assert (=> b!4414562 (=> res!1822983 e!2748992)))

(declare-fun lt!1616394 () tuple2!49102)

(assert (=> b!4414562 (= res!1822983 (not (= newBucket!194 (Cons!49417 lt!1616394 lt!1616393))))))

(assert (=> b!4414562 (= lt!1616393 (apply!11533 lm!1616 hash!366))))

(assert (=> b!4414562 (= lt!1616394 (tuple2!49103 key!3717 newValue!93))))

(declare-fun b!4414563 () Bool)

(declare-fun tp_is_empty!25971 () Bool)

(declare-fun tp_is_empty!25969 () Bool)

(declare-fun tp!1332475 () Bool)

(declare-fun e!2748998 () Bool)

(assert (=> b!4414563 (= e!2748998 (and tp_is_empty!25971 tp_is_empty!25969 tp!1332475))))

(declare-fun b!4414564 () Bool)

(declare-fun res!1822992 () Bool)

(assert (=> b!4414564 (=> (not res!1822992) (not e!2748994))))

(declare-datatypes ((ListMap!2593 0))(
  ( (ListMap!2594 (toList!3350 List!49541)) )
))
(declare-fun contains!11864 (ListMap!2593 K!10775) Bool)

(declare-fun extractMap!742 (List!49542) ListMap!2593)

(assert (=> b!4414564 (= res!1822992 (not (contains!11864 (extractMap!742 (toList!3349 lm!1616)) key!3717)))))

(declare-fun b!4414565 () Bool)

(declare-fun res!1822985 () Bool)

(assert (=> b!4414565 (=> res!1822985 e!2748992)))

(declare-fun lt!1616399 () ListMap!2593)

(declare-fun lt!1616401 () ListMap!2593)

(declare-fun addToMapMapFromBucket!335 (List!49541 ListMap!2593) ListMap!2593)

(declare-fun +!962 (ListMap!2593 tuple2!49102) ListMap!2593)

(assert (=> b!4414565 (= res!1822985 (not (= lt!1616399 (addToMapMapFromBucket!335 lt!1616393 (+!962 lt!1616401 lt!1616394)))))))

(declare-fun res!1822982 () Bool)

(assert (=> start!429838 (=> (not res!1822982) (not e!2748994))))

(assert (=> start!429838 (= res!1822982 (forall!9458 (toList!3349 lm!1616) lambda!151544))))

(assert (=> start!429838 e!2748994))

(assert (=> start!429838 tp_is_empty!25969))

(assert (=> start!429838 tp_is_empty!25971))

(assert (=> start!429838 e!2748998))

(declare-fun e!2748993 () Bool)

(declare-fun inv!64961 (ListLongMap!1999) Bool)

(assert (=> start!429838 (and (inv!64961 lm!1616) e!2748993)))

(assert (=> start!429838 true))

(declare-fun b!4414566 () Bool)

(declare-fun res!1822991 () Bool)

(assert (=> b!4414566 (=> (not res!1822991) (not e!2748994))))

(declare-fun hash!1990 (Hashable!5075 K!10775) (_ BitVec 64))

(assert (=> b!4414566 (= res!1822991 (= (hash!1990 hashF!1220 key!3717) hash!366))))

(declare-fun b!4414567 () Bool)

(declare-fun res!1822994 () Bool)

(assert (=> b!4414567 (=> (not res!1822994) (not e!2748994))))

(declare-fun allKeysSameHash!641 (List!49541 (_ BitVec 64) Hashable!5075) Bool)

(assert (=> b!4414567 (= res!1822994 (allKeysSameHash!641 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4414568 () Bool)

(declare-fun tp!1332476 () Bool)

(assert (=> b!4414568 (= e!2748993 tp!1332476)))

(declare-fun b!4414569 () Bool)

(declare-fun res!1822988 () Bool)

(assert (=> b!4414569 (=> (not res!1822988) (not e!2748995))))

(assert (=> b!4414569 (= res!1822988 (noDuplicateKeys!681 newBucket!194))))

(declare-fun b!4414570 () Bool)

(assert (=> b!4414570 (= e!2748996 e!2748997)))

(declare-fun res!1822990 () Bool)

(assert (=> b!4414570 (=> res!1822990 e!2748997)))

(declare-fun lt!1616400 () ListMap!2593)

(assert (=> b!4414570 (= res!1822990 (not (= lt!1616400 lt!1616399)))))

(assert (=> b!4414570 (= lt!1616399 (addToMapMapFromBucket!335 newBucket!194 lt!1616401))))

(assert (=> b!4414570 (= lt!1616400 (extractMap!742 (toList!3349 lt!1616396)))))

(assert (=> b!4414570 (= lt!1616401 (extractMap!742 (t!356480 (toList!3349 lm!1616))))))

(declare-fun b!4414571 () Bool)

(assert (=> b!4414571 (= e!2748990 (and (not lt!1616398) (= newBucket!194 (Cons!49417 (tuple2!49103 key!3717 newValue!93) Nil!49417))))))

(declare-fun b!4414572 () Bool)

(assert (=> b!4414572 (= e!2748995 (not e!2748996))))

(declare-fun res!1822980 () Bool)

(assert (=> b!4414572 (=> res!1822980 e!2748996)))

(assert (=> b!4414572 (= res!1822980 (not (forall!9458 (toList!3349 lt!1616396) lambda!151544)))))

(assert (=> b!4414572 (forall!9458 (toList!3349 lt!1616396) lambda!151544)))

(declare-fun +!963 (ListLongMap!1999 tuple2!49104) ListLongMap!1999)

(assert (=> b!4414572 (= lt!1616396 (+!963 lm!1616 lt!1616395))))

(assert (=> b!4414572 (= lt!1616395 (tuple2!49105 hash!366 newBucket!194))))

(declare-datatypes ((Unit!80659 0))(
  ( (Unit!80660) )
))
(declare-fun lt!1616392 () Unit!80659)

(declare-fun addValidProp!325 (ListLongMap!1999 Int (_ BitVec 64) List!49541) Unit!80659)

(assert (=> b!4414572 (= lt!1616392 (addValidProp!325 lm!1616 lambda!151544 hash!366 newBucket!194))))

(declare-fun b!4414573 () Bool)

(declare-fun res!1822993 () Bool)

(assert (=> b!4414573 (=> res!1822993 e!2748992)))

(declare-fun containsKey!1023 (List!49541 K!10775) Bool)

(assert (=> b!4414573 (= res!1822993 (containsKey!1023 lt!1616393 key!3717))))

(assert (= (and start!429838 res!1822982) b!4414560))

(assert (= (and b!4414560 res!1822987) b!4414566))

(assert (= (and b!4414566 res!1822991) b!4414567))

(assert (= (and b!4414567 res!1822994) b!4414564))

(assert (= (and b!4414564 res!1822992) b!4414558))

(assert (= (and b!4414558 res!1822997) b!4414555))

(assert (= (and b!4414558 (not res!1822981)) b!4414571))

(assert (= (and b!4414558 res!1822989) b!4414569))

(assert (= (and b!4414569 res!1822988) b!4414556))

(assert (= (and b!4414556 res!1822984) b!4414572))

(assert (= (and b!4414572 (not res!1822980)) b!4414559))

(assert (= (and b!4414559 (not res!1822986)) b!4414554))

(assert (= (and b!4414554 (not res!1822996)) b!4414561))

(assert (= (and b!4414561 (not res!1822995)) b!4414570))

(assert (= (and b!4414570 (not res!1822990)) b!4414562))

(assert (= (and b!4414562 (not res!1822983)) b!4414565))

(assert (= (and b!4414565 (not res!1822985)) b!4414573))

(assert (= (and b!4414573 (not res!1822993)) b!4414557))

(assert (= (and start!429838 ((_ is Cons!49417) newBucket!194)) b!4414563))

(assert (= start!429838 b!4414568))

(declare-fun m!5090247 () Bool)

(assert (=> b!4414564 m!5090247))

(assert (=> b!4414564 m!5090247))

(declare-fun m!5090249 () Bool)

(assert (=> b!4414564 m!5090249))

(declare-fun m!5090251 () Bool)

(assert (=> b!4414561 m!5090251))

(declare-fun m!5090253 () Bool)

(assert (=> b!4414558 m!5090253))

(declare-fun m!5090255 () Bool)

(assert (=> b!4414573 m!5090255))

(declare-fun m!5090257 () Bool)

(assert (=> b!4414570 m!5090257))

(declare-fun m!5090259 () Bool)

(assert (=> b!4414570 m!5090259))

(declare-fun m!5090261 () Bool)

(assert (=> b!4414570 m!5090261))

(declare-fun m!5090263 () Bool)

(assert (=> b!4414567 m!5090263))

(declare-fun m!5090265 () Bool)

(assert (=> b!4414556 m!5090265))

(assert (=> start!429838 m!5090265))

(declare-fun m!5090267 () Bool)

(assert (=> start!429838 m!5090267))

(declare-fun m!5090269 () Bool)

(assert (=> b!4414554 m!5090269))

(declare-fun m!5090271 () Bool)

(assert (=> b!4414572 m!5090271))

(assert (=> b!4414572 m!5090271))

(declare-fun m!5090273 () Bool)

(assert (=> b!4414572 m!5090273))

(declare-fun m!5090275 () Bool)

(assert (=> b!4414572 m!5090275))

(declare-fun m!5090277 () Bool)

(assert (=> b!4414565 m!5090277))

(assert (=> b!4414565 m!5090277))

(declare-fun m!5090279 () Bool)

(assert (=> b!4414565 m!5090279))

(declare-fun m!5090281 () Bool)

(assert (=> b!4414562 m!5090281))

(declare-fun m!5090283 () Bool)

(assert (=> b!4414560 m!5090283))

(declare-fun m!5090285 () Bool)

(assert (=> b!4414557 m!5090285))

(declare-fun m!5090287 () Bool)

(assert (=> b!4414569 m!5090287))

(assert (=> b!4414555 m!5090281))

(declare-fun m!5090289 () Bool)

(assert (=> b!4414566 m!5090289))

(check-sat (not b!4414569) (not b!4414565) tp_is_empty!25971 (not b!4414564) (not b!4414557) tp_is_empty!25969 (not b!4414554) (not b!4414558) (not b!4414568) (not b!4414567) (not b!4414561) (not b!4414560) (not b!4414562) (not b!4414563) (not b!4414555) (not b!4414570) (not b!4414573) (not b!4414556) (not b!4414566) (not start!429838) (not b!4414572))
(check-sat)
