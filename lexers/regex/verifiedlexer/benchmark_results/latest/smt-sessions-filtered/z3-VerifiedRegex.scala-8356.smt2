; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!434932 () Bool)

(assert start!434932)

(declare-fun tp_is_empty!26627 () Bool)

(declare-fun tp_is_empty!26625 () Bool)

(declare-fun tp!1334301 () Bool)

(declare-fun b!4443216 () Bool)

(declare-fun e!2766537 () Bool)

(assert (=> b!4443216 (= e!2766537 (and tp_is_empty!26627 tp_is_empty!26625 tp!1334301))))

(declare-fun b!4443217 () Bool)

(declare-fun res!1840049 () Bool)

(declare-fun e!2766536 () Bool)

(assert (=> b!4443217 (=> (not res!1840049) (not e!2766536))))

(declare-datatypes ((V!11431 0))(
  ( (V!11432 (val!17219 Int)) )
))
(declare-datatypes ((K!11185 0))(
  ( (K!11186 (val!17220 Int)) )
))
(declare-datatypes ((tuple2!49758 0))(
  ( (tuple2!49759 (_1!28173 K!11185) (_2!28173 V!11431)) )
))
(declare-datatypes ((List!49942 0))(
  ( (Nil!49818) (Cons!49818 (h!55551 tuple2!49758) (t!356884 List!49942)) )
))
(declare-datatypes ((tuple2!49760 0))(
  ( (tuple2!49761 (_1!28174 (_ BitVec 64)) (_2!28174 List!49942)) )
))
(declare-datatypes ((List!49943 0))(
  ( (Nil!49819) (Cons!49819 (h!55552 tuple2!49760) (t!356885 List!49943)) )
))
(declare-datatypes ((ListLongMap!2327 0))(
  ( (ListLongMap!2328 (toList!3677 List!49943)) )
))
(declare-fun lm!1616 () ListLongMap!2327)

(declare-fun lambda!157730 () Int)

(declare-fun forall!9722 (List!49943 Int) Bool)

(assert (=> b!4443217 (= res!1840049 (forall!9722 (toList!3677 lm!1616) lambda!157730))))

(declare-fun key!3717 () K!11185)

(declare-fun newBucket!194 () List!49942)

(declare-fun lt!1638047 () Bool)

(declare-fun b!4443218 () Bool)

(declare-fun newValue!93 () V!11431)

(declare-fun e!2766540 () Bool)

(assert (=> b!4443218 (= e!2766540 (and (not lt!1638047) (= newBucket!194 (Cons!49818 (tuple2!49759 key!3717 newValue!93) Nil!49818))))))

(declare-fun b!4443219 () Bool)

(declare-fun res!1840042 () Bool)

(declare-fun e!2766534 () Bool)

(assert (=> b!4443219 (=> res!1840042 e!2766534)))

(declare-fun lt!1638046 () ListLongMap!2327)

(declare-datatypes ((Hashable!5239 0))(
  ( (HashableExt!5238 (__x!30942 Int)) )
))
(declare-fun hashF!1220 () Hashable!5239)

(declare-fun allKeysSameHashInMap!951 (ListLongMap!2327 Hashable!5239) Bool)

(assert (=> b!4443219 (= res!1840042 (not (allKeysSameHashInMap!951 lt!1638046 hashF!1220)))))

(declare-fun b!4443220 () Bool)

(declare-fun e!2766533 () Bool)

(declare-fun tp!1334302 () Bool)

(assert (=> b!4443220 (= e!2766533 tp!1334302)))

(declare-fun b!4443221 () Bool)

(declare-fun res!1840038 () Bool)

(assert (=> b!4443221 (=> (not res!1840038) (not e!2766536))))

(declare-fun noDuplicateKeys!845 (List!49942) Bool)

(assert (=> b!4443221 (= res!1840038 (noDuplicateKeys!845 newBucket!194))))

(declare-fun b!4443222 () Bool)

(declare-fun res!1840041 () Bool)

(declare-fun e!2766539 () Bool)

(assert (=> b!4443222 (=> (not res!1840041) (not e!2766539))))

(declare-datatypes ((ListMap!2921 0))(
  ( (ListMap!2922 (toList!3678 List!49942)) )
))
(declare-fun contains!12394 (ListMap!2921 K!11185) Bool)

(declare-fun extractMap!906 (List!49943) ListMap!2921)

(assert (=> b!4443222 (= res!1840041 (not (contains!12394 (extractMap!906 (toList!3677 lm!1616)) key!3717)))))

(declare-fun b!4443223 () Bool)

(declare-fun res!1840044 () Bool)

(declare-fun e!2766535 () Bool)

(assert (=> b!4443223 (=> res!1840044 e!2766535)))

(declare-fun hash!366 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4443223 (= res!1840044 (or (and ((_ is Cons!49819) (toList!3677 lm!1616)) (= (_1!28174 (h!55552 (toList!3677 lm!1616))) hash!366)) (not ((_ is Cons!49819) (toList!3677 lm!1616))) (= (_1!28174 (h!55552 (toList!3677 lm!1616))) hash!366)))))

(declare-fun b!4443224 () Bool)

(declare-datatypes ((Unit!84098 0))(
  ( (Unit!84099) )
))
(declare-fun e!2766538 () Unit!84098)

(declare-fun Unit!84100 () Unit!84098)

(assert (=> b!4443224 (= e!2766538 Unit!84100)))

(declare-fun b!4443225 () Bool)

(assert (=> b!4443225 (= e!2766535 e!2766534)))

(declare-fun res!1840051 () Bool)

(assert (=> b!4443225 (=> res!1840051 e!2766534)))

(assert (=> b!4443225 (= res!1840051 (not (forall!9722 (toList!3677 lt!1638046) lambda!157730)))))

(declare-fun tail!7390 (ListLongMap!2327) ListLongMap!2327)

(assert (=> b!4443225 (= lt!1638046 (tail!7390 lm!1616))))

(declare-fun lt!1638044 () Unit!84098)

(assert (=> b!4443225 (= lt!1638044 e!2766538)))

(declare-fun c!756169 () Bool)

(declare-fun tail!7391 (List!49943) List!49943)

(assert (=> b!4443225 (= c!756169 (contains!12394 (extractMap!906 (tail!7391 (toList!3677 lm!1616))) key!3717))))

(declare-fun b!4443226 () Bool)

(declare-fun res!1840037 () Bool)

(assert (=> b!4443226 (=> res!1840037 e!2766534)))

(assert (=> b!4443226 (= res!1840037 (contains!12394 (extractMap!906 (toList!3677 lt!1638046)) key!3717))))

(declare-fun b!4443227 () Bool)

(assert (=> b!4443227 (= e!2766534 true)))

(declare-fun lt!1638045 () Bool)

(declare-fun e!2766531 () Bool)

(assert (=> b!4443227 (= lt!1638045 e!2766531)))

(declare-fun res!1840036 () Bool)

(assert (=> b!4443227 (=> res!1840036 e!2766531)))

(declare-fun contains!12395 (ListLongMap!2327 (_ BitVec 64)) Bool)

(assert (=> b!4443227 (= res!1840036 (not (contains!12395 lt!1638046 hash!366)))))

(declare-fun e!2766532 () Bool)

(declare-fun b!4443228 () Bool)

(declare-fun apply!11697 (ListLongMap!2327 (_ BitVec 64)) List!49942)

(assert (=> b!4443228 (= e!2766532 (= newBucket!194 (Cons!49818 (tuple2!49759 key!3717 newValue!93) (apply!11697 lm!1616 hash!366))))))

(declare-fun b!4443229 () Bool)

(declare-fun res!1840046 () Bool)

(assert (=> b!4443229 (=> (not res!1840046) (not e!2766539))))

(declare-fun allKeysSameHash!805 (List!49942 (_ BitVec 64) Hashable!5239) Bool)

(assert (=> b!4443229 (= res!1840046 (allKeysSameHash!805 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4443230 () Bool)

(declare-fun res!1840048 () Bool)

(assert (=> b!4443230 (=> (not res!1840048) (not e!2766539))))

(declare-fun hash!2305 (Hashable!5239 K!11185) (_ BitVec 64))

(assert (=> b!4443230 (= res!1840048 (= (hash!2305 hashF!1220 key!3717) hash!366))))

(declare-fun b!4443231 () Bool)

(assert (=> b!4443231 (= e!2766531 (not (= newBucket!194 (Cons!49818 (tuple2!49759 key!3717 newValue!93) (apply!11697 lt!1638046 hash!366)))))))

(declare-fun b!4443232 () Bool)

(assert (=> b!4443232 (= e!2766539 e!2766536)))

(declare-fun res!1840045 () Bool)

(assert (=> b!4443232 (=> (not res!1840045) (not e!2766536))))

(assert (=> b!4443232 (= res!1840045 e!2766540)))

(declare-fun res!1840043 () Bool)

(assert (=> b!4443232 (=> res!1840043 e!2766540)))

(assert (=> b!4443232 (= res!1840043 e!2766532)))

(declare-fun res!1840047 () Bool)

(assert (=> b!4443232 (=> (not res!1840047) (not e!2766532))))

(assert (=> b!4443232 (= res!1840047 lt!1638047)))

(assert (=> b!4443232 (= lt!1638047 (contains!12395 lm!1616 hash!366))))

(declare-fun b!4443233 () Bool)

(declare-fun res!1840039 () Bool)

(assert (=> b!4443233 (=> (not res!1840039) (not e!2766539))))

(assert (=> b!4443233 (= res!1840039 (allKeysSameHashInMap!951 lm!1616 hashF!1220))))

(declare-fun b!4443235 () Bool)

(assert (=> b!4443235 (= e!2766536 (not e!2766535))))

(declare-fun res!1840050 () Bool)

(assert (=> b!4443235 (=> res!1840050 e!2766535)))

(declare-fun lt!1638048 () ListLongMap!2327)

(assert (=> b!4443235 (= res!1840050 (not (forall!9722 (toList!3677 lt!1638048) lambda!157730)))))

(assert (=> b!4443235 (forall!9722 (toList!3677 lt!1638048) lambda!157730)))

(declare-fun +!1230 (ListLongMap!2327 tuple2!49760) ListLongMap!2327)

(assert (=> b!4443235 (= lt!1638048 (+!1230 lm!1616 (tuple2!49761 hash!366 newBucket!194)))))

(declare-fun lt!1638049 () Unit!84098)

(declare-fun addValidProp!483 (ListLongMap!2327 Int (_ BitVec 64) List!49942) Unit!84098)

(assert (=> b!4443235 (= lt!1638049 (addValidProp!483 lm!1616 lambda!157730 hash!366 newBucket!194))))

(declare-fun res!1840040 () Bool)

(assert (=> start!434932 (=> (not res!1840040) (not e!2766539))))

(assert (=> start!434932 (= res!1840040 (forall!9722 (toList!3677 lm!1616) lambda!157730))))

(assert (=> start!434932 e!2766539))

(assert (=> start!434932 tp_is_empty!26625))

(assert (=> start!434932 tp_is_empty!26627))

(assert (=> start!434932 e!2766537))

(declare-fun inv!65371 (ListLongMap!2327) Bool)

(assert (=> start!434932 (and (inv!65371 lm!1616) e!2766533)))

(assert (=> start!434932 true))

(declare-fun b!4443234 () Bool)

(declare-fun Unit!84101 () Unit!84098)

(assert (=> b!4443234 (= e!2766538 Unit!84101)))

(declare-fun lt!1638043 () Unit!84098)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!82 (ListLongMap!2327 K!11185 Hashable!5239) Unit!84098)

(assert (=> b!4443234 (= lt!1638043 (lemmaExtractTailMapContainsThenExtractMapDoes!82 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4443234 false))

(assert (= (and start!434932 res!1840040) b!4443233))

(assert (= (and b!4443233 res!1840039) b!4443230))

(assert (= (and b!4443230 res!1840048) b!4443229))

(assert (= (and b!4443229 res!1840046) b!4443222))

(assert (= (and b!4443222 res!1840041) b!4443232))

(assert (= (and b!4443232 res!1840047) b!4443228))

(assert (= (and b!4443232 (not res!1840043)) b!4443218))

(assert (= (and b!4443232 res!1840045) b!4443221))

(assert (= (and b!4443221 res!1840038) b!4443217))

(assert (= (and b!4443217 res!1840049) b!4443235))

(assert (= (and b!4443235 (not res!1840050)) b!4443223))

(assert (= (and b!4443223 (not res!1840044)) b!4443225))

(assert (= (and b!4443225 c!756169) b!4443234))

(assert (= (and b!4443225 (not c!756169)) b!4443224))

(assert (= (and b!4443225 (not res!1840051)) b!4443219))

(assert (= (and b!4443219 (not res!1840042)) b!4443226))

(assert (= (and b!4443226 (not res!1840037)) b!4443227))

(assert (= (and b!4443227 (not res!1840036)) b!4443231))

(assert (= (and start!434932 ((_ is Cons!49818) newBucket!194)) b!4443216))

(assert (= start!434932 b!4443220))

(declare-fun m!5132543 () Bool)

(assert (=> b!4443229 m!5132543))

(declare-fun m!5132545 () Bool)

(assert (=> b!4443219 m!5132545))

(declare-fun m!5132547 () Bool)

(assert (=> b!4443232 m!5132547))

(declare-fun m!5132549 () Bool)

(assert (=> b!4443222 m!5132549))

(assert (=> b!4443222 m!5132549))

(declare-fun m!5132551 () Bool)

(assert (=> b!4443222 m!5132551))

(declare-fun m!5132553 () Bool)

(assert (=> b!4443226 m!5132553))

(assert (=> b!4443226 m!5132553))

(declare-fun m!5132555 () Bool)

(assert (=> b!4443226 m!5132555))

(declare-fun m!5132557 () Bool)

(assert (=> b!4443235 m!5132557))

(assert (=> b!4443235 m!5132557))

(declare-fun m!5132559 () Bool)

(assert (=> b!4443235 m!5132559))

(declare-fun m!5132561 () Bool)

(assert (=> b!4443235 m!5132561))

(declare-fun m!5132563 () Bool)

(assert (=> b!4443231 m!5132563))

(declare-fun m!5132565 () Bool)

(assert (=> b!4443227 m!5132565))

(declare-fun m!5132567 () Bool)

(assert (=> b!4443225 m!5132567))

(declare-fun m!5132569 () Bool)

(assert (=> b!4443225 m!5132569))

(declare-fun m!5132571 () Bool)

(assert (=> b!4443225 m!5132571))

(assert (=> b!4443225 m!5132567))

(assert (=> b!4443225 m!5132569))

(declare-fun m!5132573 () Bool)

(assert (=> b!4443225 m!5132573))

(declare-fun m!5132575 () Bool)

(assert (=> b!4443225 m!5132575))

(declare-fun m!5132577 () Bool)

(assert (=> b!4443228 m!5132577))

(declare-fun m!5132579 () Bool)

(assert (=> b!4443233 m!5132579))

(declare-fun m!5132581 () Bool)

(assert (=> b!4443217 m!5132581))

(declare-fun m!5132583 () Bool)

(assert (=> b!4443230 m!5132583))

(declare-fun m!5132585 () Bool)

(assert (=> b!4443234 m!5132585))

(declare-fun m!5132587 () Bool)

(assert (=> b!4443221 m!5132587))

(assert (=> start!434932 m!5132581))

(declare-fun m!5132589 () Bool)

(assert (=> start!434932 m!5132589))

(check-sat (not b!4443221) (not b!4443230) (not b!4443235) (not b!4443228) (not b!4443231) tp_is_empty!26627 (not b!4443233) tp_is_empty!26625 (not b!4443225) (not b!4443220) (not b!4443234) (not start!434932) (not b!4443219) (not b!4443216) (not b!4443222) (not b!4443232) (not b!4443217) (not b!4443229) (not b!4443227) (not b!4443226))
(check-sat)
