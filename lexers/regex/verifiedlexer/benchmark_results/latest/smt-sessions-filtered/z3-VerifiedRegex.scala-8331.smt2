; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!433336 () Bool)

(assert start!433336)

(declare-fun b!4434032 () Bool)

(declare-fun e!2760969 () Bool)

(declare-fun e!2760967 () Bool)

(assert (=> b!4434032 (= e!2760969 (not e!2760967))))

(declare-fun res!1834738 () Bool)

(assert (=> b!4434032 (=> res!1834738 e!2760967)))

(declare-datatypes ((V!11306 0))(
  ( (V!11307 (val!17119 Int)) )
))
(declare-datatypes ((K!11060 0))(
  ( (K!11061 (val!17120 Int)) )
))
(declare-datatypes ((tuple2!49558 0))(
  ( (tuple2!49559 (_1!28073 K!11060) (_2!28073 V!11306)) )
))
(declare-datatypes ((List!49817 0))(
  ( (Nil!49693) (Cons!49693 (h!55398 tuple2!49558) (t!356759 List!49817)) )
))
(declare-datatypes ((tuple2!49560 0))(
  ( (tuple2!49561 (_1!28074 (_ BitVec 64)) (_2!28074 List!49817)) )
))
(declare-datatypes ((List!49818 0))(
  ( (Nil!49694) (Cons!49694 (h!55399 tuple2!49560) (t!356760 List!49818)) )
))
(declare-datatypes ((ListLongMap!2227 0))(
  ( (ListLongMap!2228 (toList!3577 List!49818)) )
))
(declare-fun lt!1631403 () ListLongMap!2227)

(declare-fun lambda!155816 () Int)

(declare-fun forall!9638 (List!49818 Int) Bool)

(assert (=> b!4434032 (= res!1834738 (not (forall!9638 (toList!3577 lt!1631403) lambda!155816)))))

(assert (=> b!4434032 (forall!9638 (toList!3577 lt!1631403) lambda!155816)))

(declare-fun lm!1616 () ListLongMap!2227)

(declare-fun lt!1631406 () tuple2!49560)

(declare-fun +!1158 (ListLongMap!2227 tuple2!49560) ListLongMap!2227)

(assert (=> b!4434032 (= lt!1631403 (+!1158 lm!1616 lt!1631406))))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun newBucket!194 () List!49817)

(assert (=> b!4434032 (= lt!1631406 (tuple2!49561 hash!366 newBucket!194))))

(declare-datatypes ((Unit!83023 0))(
  ( (Unit!83024) )
))
(declare-fun lt!1631405 () Unit!83023)

(declare-fun addValidProp!437 (ListLongMap!2227 Int (_ BitVec 64) List!49817) Unit!83023)

(assert (=> b!4434032 (= lt!1631405 (addValidProp!437 lm!1616 lambda!155816 hash!366 newBucket!194))))

(declare-fun b!4434033 () Bool)

(declare-fun e!2760970 () Bool)

(assert (=> b!4434033 (= e!2760967 e!2760970)))

(declare-fun res!1834746 () Bool)

(assert (=> b!4434033 (=> res!1834746 e!2760970)))

(declare-datatypes ((ListMap!2821 0))(
  ( (ListMap!2822 (toList!3578 List!49817)) )
))
(declare-fun lt!1631399 () ListMap!2821)

(declare-fun lt!1631404 () ListMap!2821)

(assert (=> b!4434033 (= res!1834746 (not (= lt!1631399 lt!1631404)))))

(declare-fun lt!1631401 () ListMap!2821)

(declare-fun addToMapMapFromBucket!420 (List!49817 ListMap!2821) ListMap!2821)

(assert (=> b!4434033 (= lt!1631404 (addToMapMapFromBucket!420 newBucket!194 lt!1631401))))

(declare-fun extractMap!856 (List!49818) ListMap!2821)

(assert (=> b!4434033 (= lt!1631399 (extractMap!856 (toList!3577 lt!1631403)))))

(assert (=> b!4434033 (= lt!1631401 (extractMap!856 (t!356760 (toList!3577 lm!1616))))))

(declare-fun b!4434034 () Bool)

(declare-fun newValue!93 () V!11306)

(declare-fun key!3717 () K!11060)

(declare-fun e!2760966 () Bool)

(declare-fun apply!11647 (ListLongMap!2227 (_ BitVec 64)) List!49817)

(assert (=> b!4434034 (= e!2760966 (= newBucket!194 (Cons!49693 (tuple2!49559 key!3717 newValue!93) (apply!11647 lm!1616 hash!366))))))

(declare-fun b!4434036 () Bool)

(declare-fun lt!1631398 () Bool)

(declare-fun e!2760968 () Bool)

(assert (=> b!4434036 (= e!2760968 (and (not lt!1631398) (= newBucket!194 (Cons!49693 (tuple2!49559 key!3717 newValue!93) Nil!49693))))))

(declare-fun b!4434037 () Bool)

(declare-fun e!2760973 () Bool)

(declare-fun lt!1631402 () tuple2!49558)

(declare-fun lt!1631400 () List!49817)

(declare-fun +!1159 (ListMap!2821 tuple2!49558) ListMap!2821)

(assert (=> b!4434037 (= e!2760973 (= lt!1631404 (addToMapMapFromBucket!420 lt!1631400 (+!1159 lt!1631401 lt!1631402))))))

(declare-fun b!4434038 () Bool)

(declare-fun res!1834744 () Bool)

(assert (=> b!4434038 (=> (not res!1834744) (not e!2760969))))

(assert (=> b!4434038 (= res!1834744 (forall!9638 (toList!3577 lm!1616) lambda!155816))))

(declare-fun b!4434039 () Bool)

(declare-fun res!1834739 () Bool)

(assert (=> b!4434039 (=> res!1834739 e!2760967)))

(declare-fun head!9260 (List!49818) tuple2!49560)

(assert (=> b!4434039 (= res!1834739 (not (= (head!9260 (toList!3577 lt!1631403)) lt!1631406)))))

(declare-fun b!4434040 () Bool)

(declare-fun res!1834736 () Bool)

(declare-fun e!2760971 () Bool)

(assert (=> b!4434040 (=> (not res!1834736) (not e!2760971))))

(declare-datatypes ((Hashable!5189 0))(
  ( (HashableExt!5188 (__x!30892 Int)) )
))
(declare-fun hashF!1220 () Hashable!5189)

(declare-fun allKeysSameHash!755 (List!49817 (_ BitVec 64) Hashable!5189) Bool)

(assert (=> b!4434040 (= res!1834736 (allKeysSameHash!755 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4434041 () Bool)

(assert (=> b!4434041 (= e!2760970 e!2760973)))

(declare-fun res!1834745 () Bool)

(assert (=> b!4434041 (=> res!1834745 e!2760973)))

(assert (=> b!4434041 (= res!1834745 (not (= newBucket!194 (Cons!49693 lt!1631402 lt!1631400))))))

(assert (=> b!4434041 (= lt!1631400 (apply!11647 lm!1616 hash!366))))

(assert (=> b!4434041 (= lt!1631402 (tuple2!49559 key!3717 newValue!93))))

(declare-fun b!4434042 () Bool)

(assert (=> b!4434042 (= e!2760971 e!2760969)))

(declare-fun res!1834733 () Bool)

(assert (=> b!4434042 (=> (not res!1834733) (not e!2760969))))

(assert (=> b!4434042 (= res!1834733 e!2760968)))

(declare-fun res!1834732 () Bool)

(assert (=> b!4434042 (=> res!1834732 e!2760968)))

(assert (=> b!4434042 (= res!1834732 e!2760966)))

(declare-fun res!1834735 () Bool)

(assert (=> b!4434042 (=> (not res!1834735) (not e!2760966))))

(declare-fun lt!1631407 () Bool)

(assert (=> b!4434042 (= res!1834735 (not lt!1631407))))

(assert (=> b!4434042 (= lt!1631407 (not lt!1631398))))

(declare-fun contains!12232 (ListLongMap!2227 (_ BitVec 64)) Bool)

(assert (=> b!4434042 (= lt!1631398 (contains!12232 lm!1616 hash!366))))

(declare-fun res!1834737 () Bool)

(assert (=> start!433336 (=> (not res!1834737) (not e!2760971))))

(assert (=> start!433336 (= res!1834737 (forall!9638 (toList!3577 lm!1616) lambda!155816))))

(assert (=> start!433336 e!2760971))

(declare-fun tp_is_empty!26425 () Bool)

(assert (=> start!433336 tp_is_empty!26425))

(declare-fun tp_is_empty!26427 () Bool)

(assert (=> start!433336 tp_is_empty!26427))

(declare-fun e!2760974 () Bool)

(assert (=> start!433336 e!2760974))

(declare-fun e!2760972 () Bool)

(declare-fun inv!65246 (ListLongMap!2227) Bool)

(assert (=> start!433336 (and (inv!65246 lm!1616) e!2760972)))

(assert (=> start!433336 true))

(declare-fun b!4434035 () Bool)

(declare-fun res!1834740 () Bool)

(assert (=> b!4434035 (=> (not res!1834740) (not e!2760969))))

(declare-fun noDuplicateKeys!795 (List!49817) Bool)

(assert (=> b!4434035 (= res!1834740 (noDuplicateKeys!795 newBucket!194))))

(declare-fun b!4434043 () Bool)

(declare-fun res!1834734 () Bool)

(assert (=> b!4434043 (=> (not res!1834734) (not e!2760971))))

(declare-fun contains!12233 (ListMap!2821 K!11060) Bool)

(assert (=> b!4434043 (= res!1834734 (not (contains!12233 (extractMap!856 (toList!3577 lm!1616)) key!3717)))))

(declare-fun b!4434044 () Bool)

(declare-fun tp!1333709 () Bool)

(assert (=> b!4434044 (= e!2760972 tp!1333709)))

(declare-fun b!4434045 () Bool)

(declare-fun res!1834741 () Bool)

(assert (=> b!4434045 (=> res!1834741 e!2760967)))

(get-info :version)

(assert (=> b!4434045 (= res!1834741 (or (not ((_ is Cons!49694) (toList!3577 lm!1616))) (not (= (_1!28074 (h!55399 (toList!3577 lm!1616))) hash!366)) lt!1631407))))

(declare-fun b!4434046 () Bool)

(declare-fun res!1834742 () Bool)

(assert (=> b!4434046 (=> (not res!1834742) (not e!2760971))))

(declare-fun hash!2216 (Hashable!5189 K!11060) (_ BitVec 64))

(assert (=> b!4434046 (= res!1834742 (= (hash!2216 hashF!1220 key!3717) hash!366))))

(declare-fun b!4434047 () Bool)

(declare-fun tp!1333710 () Bool)

(assert (=> b!4434047 (= e!2760974 (and tp_is_empty!26427 tp_is_empty!26425 tp!1333710))))

(declare-fun b!4434048 () Bool)

(declare-fun res!1834747 () Bool)

(assert (=> b!4434048 (=> res!1834747 e!2760967)))

(declare-fun tail!7323 (List!49818) List!49818)

(assert (=> b!4434048 (= res!1834747 (not (= (tail!7323 (toList!3577 lt!1631403)) (t!356760 (toList!3577 lm!1616)))))))

(declare-fun b!4434049 () Bool)

(declare-fun res!1834743 () Bool)

(assert (=> b!4434049 (=> (not res!1834743) (not e!2760971))))

(declare-fun allKeysSameHashInMap!901 (ListLongMap!2227 Hashable!5189) Bool)

(assert (=> b!4434049 (= res!1834743 (allKeysSameHashInMap!901 lm!1616 hashF!1220))))

(assert (= (and start!433336 res!1834737) b!4434049))

(assert (= (and b!4434049 res!1834743) b!4434046))

(assert (= (and b!4434046 res!1834742) b!4434040))

(assert (= (and b!4434040 res!1834736) b!4434043))

(assert (= (and b!4434043 res!1834734) b!4434042))

(assert (= (and b!4434042 res!1834735) b!4434034))

(assert (= (and b!4434042 (not res!1834732)) b!4434036))

(assert (= (and b!4434042 res!1834733) b!4434035))

(assert (= (and b!4434035 res!1834740) b!4434038))

(assert (= (and b!4434038 res!1834744) b!4434032))

(assert (= (and b!4434032 (not res!1834738)) b!4434045))

(assert (= (and b!4434045 (not res!1834741)) b!4434039))

(assert (= (and b!4434039 (not res!1834739)) b!4434048))

(assert (= (and b!4434048 (not res!1834747)) b!4434033))

(assert (= (and b!4434033 (not res!1834746)) b!4434041))

(assert (= (and b!4434041 (not res!1834745)) b!4434037))

(assert (= (and start!433336 ((_ is Cons!49693) newBucket!194)) b!4434047))

(assert (= start!433336 b!4434044))

(declare-fun m!5119499 () Bool)

(assert (=> b!4434033 m!5119499))

(declare-fun m!5119501 () Bool)

(assert (=> b!4434033 m!5119501))

(declare-fun m!5119503 () Bool)

(assert (=> b!4434033 m!5119503))

(declare-fun m!5119505 () Bool)

(assert (=> b!4434032 m!5119505))

(assert (=> b!4434032 m!5119505))

(declare-fun m!5119507 () Bool)

(assert (=> b!4434032 m!5119507))

(declare-fun m!5119509 () Bool)

(assert (=> b!4434032 m!5119509))

(declare-fun m!5119511 () Bool)

(assert (=> b!4434043 m!5119511))

(assert (=> b!4434043 m!5119511))

(declare-fun m!5119513 () Bool)

(assert (=> b!4434043 m!5119513))

(declare-fun m!5119515 () Bool)

(assert (=> b!4434039 m!5119515))

(declare-fun m!5119517 () Bool)

(assert (=> b!4434038 m!5119517))

(declare-fun m!5119519 () Bool)

(assert (=> b!4434042 m!5119519))

(declare-fun m!5119521 () Bool)

(assert (=> b!4434046 m!5119521))

(declare-fun m!5119523 () Bool)

(assert (=> b!4434040 m!5119523))

(declare-fun m!5119525 () Bool)

(assert (=> b!4434041 m!5119525))

(assert (=> b!4434034 m!5119525))

(declare-fun m!5119527 () Bool)

(assert (=> b!4434048 m!5119527))

(declare-fun m!5119529 () Bool)

(assert (=> b!4434049 m!5119529))

(assert (=> start!433336 m!5119517))

(declare-fun m!5119531 () Bool)

(assert (=> start!433336 m!5119531))

(declare-fun m!5119533 () Bool)

(assert (=> b!4434035 m!5119533))

(declare-fun m!5119535 () Bool)

(assert (=> b!4434037 m!5119535))

(assert (=> b!4434037 m!5119535))

(declare-fun m!5119537 () Bool)

(assert (=> b!4434037 m!5119537))

(check-sat (not b!4434038) (not b!4434035) (not b!4434041) (not b!4434046) tp_is_empty!26427 (not start!433336) (not b!4434044) (not b!4434039) (not b!4434034) (not b!4434037) (not b!4434043) (not b!4434032) (not b!4434033) (not b!4434048) tp_is_empty!26425 (not b!4434047) (not b!4434042) (not b!4434049) (not b!4434040))
(check-sat)
(get-model)

(declare-fun d!1345426 () Bool)

(declare-fun res!1834752 () Bool)

(declare-fun e!2760979 () Bool)

(assert (=> d!1345426 (=> res!1834752 e!2760979)))

(assert (=> d!1345426 (= res!1834752 ((_ is Nil!49694) (toList!3577 lt!1631403)))))

(assert (=> d!1345426 (= (forall!9638 (toList!3577 lt!1631403) lambda!155816) e!2760979)))

(declare-fun b!4434054 () Bool)

(declare-fun e!2760980 () Bool)

(assert (=> b!4434054 (= e!2760979 e!2760980)))

(declare-fun res!1834753 () Bool)

(assert (=> b!4434054 (=> (not res!1834753) (not e!2760980))))

(declare-fun dynLambda!20884 (Int tuple2!49560) Bool)

(assert (=> b!4434054 (= res!1834753 (dynLambda!20884 lambda!155816 (h!55399 (toList!3577 lt!1631403))))))

(declare-fun b!4434055 () Bool)

(assert (=> b!4434055 (= e!2760980 (forall!9638 (t!356760 (toList!3577 lt!1631403)) lambda!155816))))

(assert (= (and d!1345426 (not res!1834752)) b!4434054))

(assert (= (and b!4434054 res!1834753) b!4434055))

(declare-fun b_lambda!144267 () Bool)

(assert (=> (not b_lambda!144267) (not b!4434054)))

(declare-fun m!5119545 () Bool)

(assert (=> b!4434054 m!5119545))

(declare-fun m!5119547 () Bool)

(assert (=> b!4434055 m!5119547))

(assert (=> b!4434032 d!1345426))

(declare-fun d!1345432 () Bool)

(declare-fun e!2760983 () Bool)

(assert (=> d!1345432 e!2760983))

(declare-fun res!1834758 () Bool)

(assert (=> d!1345432 (=> (not res!1834758) (not e!2760983))))

(declare-fun lt!1631417 () ListLongMap!2227)

(assert (=> d!1345432 (= res!1834758 (contains!12232 lt!1631417 (_1!28074 lt!1631406)))))

(declare-fun lt!1631416 () List!49818)

(assert (=> d!1345432 (= lt!1631417 (ListLongMap!2228 lt!1631416))))

(declare-fun lt!1631418 () Unit!83023)

(declare-fun lt!1631419 () Unit!83023)

(assert (=> d!1345432 (= lt!1631418 lt!1631419)))

(declare-datatypes ((Option!10765 0))(
  ( (None!10764) (Some!10764 (v!43974 List!49817)) )
))
(declare-fun getValueByKey!751 (List!49818 (_ BitVec 64)) Option!10765)

(assert (=> d!1345432 (= (getValueByKey!751 lt!1631416 (_1!28074 lt!1631406)) (Some!10764 (_2!28074 lt!1631406)))))

(declare-fun lemmaContainsTupThenGetReturnValue!484 (List!49818 (_ BitVec 64) List!49817) Unit!83023)

(assert (=> d!1345432 (= lt!1631419 (lemmaContainsTupThenGetReturnValue!484 lt!1631416 (_1!28074 lt!1631406) (_2!28074 lt!1631406)))))

(declare-fun insertStrictlySorted!280 (List!49818 (_ BitVec 64) List!49817) List!49818)

(assert (=> d!1345432 (= lt!1631416 (insertStrictlySorted!280 (toList!3577 lm!1616) (_1!28074 lt!1631406) (_2!28074 lt!1631406)))))

(assert (=> d!1345432 (= (+!1158 lm!1616 lt!1631406) lt!1631417)))

(declare-fun b!4434060 () Bool)

(declare-fun res!1834759 () Bool)

(assert (=> b!4434060 (=> (not res!1834759) (not e!2760983))))

(assert (=> b!4434060 (= res!1834759 (= (getValueByKey!751 (toList!3577 lt!1631417) (_1!28074 lt!1631406)) (Some!10764 (_2!28074 lt!1631406))))))

(declare-fun b!4434061 () Bool)

(declare-fun contains!12236 (List!49818 tuple2!49560) Bool)

(assert (=> b!4434061 (= e!2760983 (contains!12236 (toList!3577 lt!1631417) lt!1631406))))

(assert (= (and d!1345432 res!1834758) b!4434060))

(assert (= (and b!4434060 res!1834759) b!4434061))

(declare-fun m!5119549 () Bool)

(assert (=> d!1345432 m!5119549))

(declare-fun m!5119551 () Bool)

(assert (=> d!1345432 m!5119551))

(declare-fun m!5119553 () Bool)

(assert (=> d!1345432 m!5119553))

(declare-fun m!5119555 () Bool)

(assert (=> d!1345432 m!5119555))

(declare-fun m!5119557 () Bool)

(assert (=> b!4434060 m!5119557))

(declare-fun m!5119559 () Bool)

(assert (=> b!4434061 m!5119559))

(assert (=> b!4434032 d!1345432))

(declare-fun d!1345434 () Bool)

(assert (=> d!1345434 (forall!9638 (toList!3577 (+!1158 lm!1616 (tuple2!49561 hash!366 newBucket!194))) lambda!155816)))

(declare-fun lt!1631422 () Unit!83023)

(declare-fun choose!28113 (ListLongMap!2227 Int (_ BitVec 64) List!49817) Unit!83023)

(assert (=> d!1345434 (= lt!1631422 (choose!28113 lm!1616 lambda!155816 hash!366 newBucket!194))))

(declare-fun e!2760986 () Bool)

(assert (=> d!1345434 e!2760986))

(declare-fun res!1834762 () Bool)

(assert (=> d!1345434 (=> (not res!1834762) (not e!2760986))))

(assert (=> d!1345434 (= res!1834762 (forall!9638 (toList!3577 lm!1616) lambda!155816))))

(assert (=> d!1345434 (= (addValidProp!437 lm!1616 lambda!155816 hash!366 newBucket!194) lt!1631422)))

(declare-fun b!4434065 () Bool)

(assert (=> b!4434065 (= e!2760986 (dynLambda!20884 lambda!155816 (tuple2!49561 hash!366 newBucket!194)))))

(assert (= (and d!1345434 res!1834762) b!4434065))

(declare-fun b_lambda!144269 () Bool)

(assert (=> (not b_lambda!144269) (not b!4434065)))

(declare-fun m!5119561 () Bool)

(assert (=> d!1345434 m!5119561))

(declare-fun m!5119563 () Bool)

(assert (=> d!1345434 m!5119563))

(declare-fun m!5119565 () Bool)

(assert (=> d!1345434 m!5119565))

(assert (=> d!1345434 m!5119517))

(declare-fun m!5119567 () Bool)

(assert (=> b!4434065 m!5119567))

(assert (=> b!4434032 d!1345434))

(declare-fun b!4434084 () Bool)

(declare-datatypes ((List!49819 0))(
  ( (Nil!49695) (Cons!49695 (h!55402 K!11060) (t!356761 List!49819)) )
))
(declare-fun e!2761003 () List!49819)

(declare-fun keys!16997 (ListMap!2821) List!49819)

(assert (=> b!4434084 (= e!2761003 (keys!16997 (extractMap!856 (toList!3577 lm!1616))))))

(declare-fun b!4434085 () Bool)

(declare-fun e!2761000 () Bool)

(declare-fun contains!12237 (List!49819 K!11060) Bool)

(assert (=> b!4434085 (= e!2761000 (contains!12237 (keys!16997 (extractMap!856 (toList!3577 lm!1616))) key!3717))))

(declare-fun d!1345436 () Bool)

(declare-fun e!2761002 () Bool)

(assert (=> d!1345436 e!2761002))

(declare-fun res!1834771 () Bool)

(assert (=> d!1345436 (=> res!1834771 e!2761002)))

(declare-fun e!2760999 () Bool)

(assert (=> d!1345436 (= res!1834771 e!2760999)))

(declare-fun res!1834770 () Bool)

(assert (=> d!1345436 (=> (not res!1834770) (not e!2760999))))

(declare-fun lt!1631439 () Bool)

(assert (=> d!1345436 (= res!1834770 (not lt!1631439))))

(declare-fun lt!1631445 () Bool)

(assert (=> d!1345436 (= lt!1631439 lt!1631445)))

(declare-fun lt!1631442 () Unit!83023)

(declare-fun e!2761001 () Unit!83023)

(assert (=> d!1345436 (= lt!1631442 e!2761001)))

(declare-fun c!754683 () Bool)

(assert (=> d!1345436 (= c!754683 lt!1631445)))

(declare-fun containsKey!1185 (List!49817 K!11060) Bool)

(assert (=> d!1345436 (= lt!1631445 (containsKey!1185 (toList!3578 (extractMap!856 (toList!3577 lm!1616))) key!3717))))

(assert (=> d!1345436 (= (contains!12233 (extractMap!856 (toList!3577 lm!1616)) key!3717) lt!1631439)))

(declare-fun b!4434086 () Bool)

(declare-fun e!2761004 () Unit!83023)

(assert (=> b!4434086 (= e!2761001 e!2761004)))

(declare-fun c!754684 () Bool)

(declare-fun call!308499 () Bool)

(assert (=> b!4434086 (= c!754684 call!308499)))

(declare-fun b!4434087 () Bool)

(declare-fun getKeysList!271 (List!49817) List!49819)

(assert (=> b!4434087 (= e!2761003 (getKeysList!271 (toList!3578 (extractMap!856 (toList!3577 lm!1616)))))))

(declare-fun bm!308494 () Bool)

(assert (=> bm!308494 (= call!308499 (contains!12237 e!2761003 key!3717))))

(declare-fun c!754682 () Bool)

(assert (=> bm!308494 (= c!754682 c!754683)))

(declare-fun b!4434088 () Bool)

(assert (=> b!4434088 (= e!2760999 (not (contains!12237 (keys!16997 (extractMap!856 (toList!3577 lm!1616))) key!3717)))))

(declare-fun b!4434089 () Bool)

(declare-fun lt!1631440 () Unit!83023)

(assert (=> b!4434089 (= e!2761001 lt!1631440)))

(declare-fun lt!1631446 () Unit!83023)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!659 (List!49817 K!11060) Unit!83023)

(assert (=> b!4434089 (= lt!1631446 (lemmaContainsKeyImpliesGetValueByKeyDefined!659 (toList!3578 (extractMap!856 (toList!3577 lm!1616))) key!3717))))

(declare-datatypes ((Option!10766 0))(
  ( (None!10765) (Some!10765 (v!43975 V!11306)) )
))
(declare-fun isDefined!8056 (Option!10766) Bool)

(declare-fun getValueByKey!752 (List!49817 K!11060) Option!10766)

(assert (=> b!4434089 (isDefined!8056 (getValueByKey!752 (toList!3578 (extractMap!856 (toList!3577 lm!1616))) key!3717))))

(declare-fun lt!1631443 () Unit!83023)

(assert (=> b!4434089 (= lt!1631443 lt!1631446)))

(declare-fun lemmaInListThenGetKeysListContains!268 (List!49817 K!11060) Unit!83023)

(assert (=> b!4434089 (= lt!1631440 (lemmaInListThenGetKeysListContains!268 (toList!3578 (extractMap!856 (toList!3577 lm!1616))) key!3717))))

(assert (=> b!4434089 call!308499))

(declare-fun b!4434090 () Bool)

(assert (=> b!4434090 (= e!2761002 e!2761000)))

(declare-fun res!1834769 () Bool)

(assert (=> b!4434090 (=> (not res!1834769) (not e!2761000))))

(assert (=> b!4434090 (= res!1834769 (isDefined!8056 (getValueByKey!752 (toList!3578 (extractMap!856 (toList!3577 lm!1616))) key!3717)))))

(declare-fun b!4434091 () Bool)

(declare-fun Unit!83049 () Unit!83023)

(assert (=> b!4434091 (= e!2761004 Unit!83049)))

(declare-fun b!4434092 () Bool)

(assert (=> b!4434092 false))

(declare-fun lt!1631444 () Unit!83023)

(declare-fun lt!1631441 () Unit!83023)

(assert (=> b!4434092 (= lt!1631444 lt!1631441)))

(assert (=> b!4434092 (containsKey!1185 (toList!3578 (extractMap!856 (toList!3577 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!269 (List!49817 K!11060) Unit!83023)

(assert (=> b!4434092 (= lt!1631441 (lemmaInGetKeysListThenContainsKey!269 (toList!3578 (extractMap!856 (toList!3577 lm!1616))) key!3717))))

(declare-fun Unit!83050 () Unit!83023)

(assert (=> b!4434092 (= e!2761004 Unit!83050)))

(assert (= (and d!1345436 c!754683) b!4434089))

(assert (= (and d!1345436 (not c!754683)) b!4434086))

(assert (= (and b!4434086 c!754684) b!4434092))

(assert (= (and b!4434086 (not c!754684)) b!4434091))

(assert (= (or b!4434089 b!4434086) bm!308494))

(assert (= (and bm!308494 c!754682) b!4434087))

(assert (= (and bm!308494 (not c!754682)) b!4434084))

(assert (= (and d!1345436 res!1834770) b!4434088))

(assert (= (and d!1345436 (not res!1834771)) b!4434090))

(assert (= (and b!4434090 res!1834769) b!4434085))

(declare-fun m!5119569 () Bool)

(assert (=> b!4434092 m!5119569))

(declare-fun m!5119571 () Bool)

(assert (=> b!4434092 m!5119571))

(assert (=> b!4434084 m!5119511))

(declare-fun m!5119573 () Bool)

(assert (=> b!4434084 m!5119573))

(assert (=> b!4434088 m!5119511))

(assert (=> b!4434088 m!5119573))

(assert (=> b!4434088 m!5119573))

(declare-fun m!5119575 () Bool)

(assert (=> b!4434088 m!5119575))

(declare-fun m!5119577 () Bool)

(assert (=> bm!308494 m!5119577))

(declare-fun m!5119579 () Bool)

(assert (=> b!4434090 m!5119579))

(assert (=> b!4434090 m!5119579))

(declare-fun m!5119581 () Bool)

(assert (=> b!4434090 m!5119581))

(declare-fun m!5119583 () Bool)

(assert (=> b!4434087 m!5119583))

(declare-fun m!5119585 () Bool)

(assert (=> b!4434089 m!5119585))

(assert (=> b!4434089 m!5119579))

(assert (=> b!4434089 m!5119579))

(assert (=> b!4434089 m!5119581))

(declare-fun m!5119587 () Bool)

(assert (=> b!4434089 m!5119587))

(assert (=> b!4434085 m!5119511))

(assert (=> b!4434085 m!5119573))

(assert (=> b!4434085 m!5119573))

(assert (=> b!4434085 m!5119575))

(assert (=> d!1345436 m!5119569))

(assert (=> b!4434043 d!1345436))

(declare-fun bs!760951 () Bool)

(declare-fun d!1345438 () Bool)

(assert (= bs!760951 (and d!1345438 start!433336)))

(declare-fun lambda!155851 () Int)

(assert (=> bs!760951 (= lambda!155851 lambda!155816)))

(declare-fun lt!1631512 () ListMap!2821)

(declare-fun invariantList!825 (List!49817) Bool)

(assert (=> d!1345438 (invariantList!825 (toList!3578 lt!1631512))))

(declare-fun e!2761016 () ListMap!2821)

(assert (=> d!1345438 (= lt!1631512 e!2761016)))

(declare-fun c!754690 () Bool)

(assert (=> d!1345438 (= c!754690 ((_ is Cons!49694) (toList!3577 lm!1616)))))

(assert (=> d!1345438 (forall!9638 (toList!3577 lm!1616) lambda!155851)))

(assert (=> d!1345438 (= (extractMap!856 (toList!3577 lm!1616)) lt!1631512)))

(declare-fun b!4434114 () Bool)

(assert (=> b!4434114 (= e!2761016 (addToMapMapFromBucket!420 (_2!28074 (h!55399 (toList!3577 lm!1616))) (extractMap!856 (t!356760 (toList!3577 lm!1616)))))))

(declare-fun b!4434115 () Bool)

(assert (=> b!4434115 (= e!2761016 (ListMap!2822 Nil!49693))))

(assert (= (and d!1345438 c!754690) b!4434114))

(assert (= (and d!1345438 (not c!754690)) b!4434115))

(declare-fun m!5119625 () Bool)

(assert (=> d!1345438 m!5119625))

(declare-fun m!5119627 () Bool)

(assert (=> d!1345438 m!5119627))

(assert (=> b!4434114 m!5119503))

(assert (=> b!4434114 m!5119503))

(declare-fun m!5119629 () Bool)

(assert (=> b!4434114 m!5119629))

(assert (=> b!4434043 d!1345438))

(declare-fun d!1345442 () Bool)

(declare-fun e!2761031 () Bool)

(assert (=> d!1345442 e!2761031))

(declare-fun res!1834795 () Bool)

(assert (=> d!1345442 (=> res!1834795 e!2761031)))

(declare-fun lt!1631535 () Bool)

(assert (=> d!1345442 (= res!1834795 (not lt!1631535))))

(declare-fun lt!1631534 () Bool)

(assert (=> d!1345442 (= lt!1631535 lt!1631534)))

(declare-fun lt!1631533 () Unit!83023)

(declare-fun e!2761030 () Unit!83023)

(assert (=> d!1345442 (= lt!1631533 e!2761030)))

(declare-fun c!754693 () Bool)

(assert (=> d!1345442 (= c!754693 lt!1631534)))

(declare-fun containsKey!1187 (List!49818 (_ BitVec 64)) Bool)

(assert (=> d!1345442 (= lt!1631534 (containsKey!1187 (toList!3577 lm!1616) hash!366))))

(assert (=> d!1345442 (= (contains!12232 lm!1616 hash!366) lt!1631535)))

(declare-fun b!4434134 () Bool)

(declare-fun lt!1631536 () Unit!83023)

(assert (=> b!4434134 (= e!2761030 lt!1631536)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!661 (List!49818 (_ BitVec 64)) Unit!83023)

(assert (=> b!4434134 (= lt!1631536 (lemmaContainsKeyImpliesGetValueByKeyDefined!661 (toList!3577 lm!1616) hash!366))))

(declare-fun isDefined!8058 (Option!10765) Bool)

(assert (=> b!4434134 (isDefined!8058 (getValueByKey!751 (toList!3577 lm!1616) hash!366))))

(declare-fun b!4434135 () Bool)

(declare-fun Unit!83052 () Unit!83023)

(assert (=> b!4434135 (= e!2761030 Unit!83052)))

(declare-fun b!4434136 () Bool)

(assert (=> b!4434136 (= e!2761031 (isDefined!8058 (getValueByKey!751 (toList!3577 lm!1616) hash!366)))))

(assert (= (and d!1345442 c!754693) b!4434134))

(assert (= (and d!1345442 (not c!754693)) b!4434135))

(assert (= (and d!1345442 (not res!1834795)) b!4434136))

(declare-fun m!5119649 () Bool)

(assert (=> d!1345442 m!5119649))

(declare-fun m!5119651 () Bool)

(assert (=> b!4434134 m!5119651))

(declare-fun m!5119653 () Bool)

(assert (=> b!4434134 m!5119653))

(assert (=> b!4434134 m!5119653))

(declare-fun m!5119655 () Bool)

(assert (=> b!4434134 m!5119655))

(assert (=> b!4434136 m!5119653))

(assert (=> b!4434136 m!5119653))

(assert (=> b!4434136 m!5119655))

(assert (=> b!4434042 d!1345442))

(declare-fun d!1345452 () Bool)

(declare-fun res!1834796 () Bool)

(declare-fun e!2761032 () Bool)

(assert (=> d!1345452 (=> res!1834796 e!2761032)))

(assert (=> d!1345452 (= res!1834796 ((_ is Nil!49694) (toList!3577 lm!1616)))))

(assert (=> d!1345452 (= (forall!9638 (toList!3577 lm!1616) lambda!155816) e!2761032)))

(declare-fun b!4434139 () Bool)

(declare-fun e!2761033 () Bool)

(assert (=> b!4434139 (= e!2761032 e!2761033)))

(declare-fun res!1834797 () Bool)

(assert (=> b!4434139 (=> (not res!1834797) (not e!2761033))))

(assert (=> b!4434139 (= res!1834797 (dynLambda!20884 lambda!155816 (h!55399 (toList!3577 lm!1616))))))

(declare-fun b!4434140 () Bool)

(assert (=> b!4434140 (= e!2761033 (forall!9638 (t!356760 (toList!3577 lm!1616)) lambda!155816))))

(assert (= (and d!1345452 (not res!1834796)) b!4434139))

(assert (= (and b!4434139 res!1834797) b!4434140))

(declare-fun b_lambda!144271 () Bool)

(assert (=> (not b_lambda!144271) (not b!4434139)))

(declare-fun m!5119657 () Bool)

(assert (=> b!4434139 m!5119657))

(declare-fun m!5119659 () Bool)

(assert (=> b!4434140 m!5119659))

(assert (=> start!433336 d!1345452))

(declare-fun d!1345454 () Bool)

(declare-fun isStrictlySorted!252 (List!49818) Bool)

(assert (=> d!1345454 (= (inv!65246 lm!1616) (isStrictlySorted!252 (toList!3577 lm!1616)))))

(declare-fun bs!760954 () Bool)

(assert (= bs!760954 d!1345454))

(declare-fun m!5119665 () Bool)

(assert (=> bs!760954 m!5119665))

(assert (=> start!433336 d!1345454))

(declare-fun d!1345458 () Bool)

(declare-fun get!16202 (Option!10765) List!49817)

(assert (=> d!1345458 (= (apply!11647 lm!1616 hash!366) (get!16202 (getValueByKey!751 (toList!3577 lm!1616) hash!366)))))

(declare-fun bs!760955 () Bool)

(assert (= bs!760955 d!1345458))

(assert (=> bs!760955 m!5119653))

(assert (=> bs!760955 m!5119653))

(declare-fun m!5119667 () Bool)

(assert (=> bs!760955 m!5119667))

(assert (=> b!4434041 d!1345458))

(declare-fun d!1345460 () Bool)

(declare-fun res!1834812 () Bool)

(declare-fun e!2761046 () Bool)

(assert (=> d!1345460 (=> res!1834812 e!2761046)))

(assert (=> d!1345460 (= res!1834812 (not ((_ is Cons!49693) newBucket!194)))))

(assert (=> d!1345460 (= (noDuplicateKeys!795 newBucket!194) e!2761046)))

(declare-fun b!4434155 () Bool)

(declare-fun e!2761047 () Bool)

(assert (=> b!4434155 (= e!2761046 e!2761047)))

(declare-fun res!1834813 () Bool)

(assert (=> b!4434155 (=> (not res!1834813) (not e!2761047))))

(declare-fun containsKey!1188 (List!49817 K!11060) Bool)

(assert (=> b!4434155 (= res!1834813 (not (containsKey!1188 (t!356759 newBucket!194) (_1!28073 (h!55398 newBucket!194)))))))

(declare-fun b!4434156 () Bool)

(assert (=> b!4434156 (= e!2761047 (noDuplicateKeys!795 (t!356759 newBucket!194)))))

(assert (= (and d!1345460 (not res!1834812)) b!4434155))

(assert (= (and b!4434155 res!1834813) b!4434156))

(declare-fun m!5119669 () Bool)

(assert (=> b!4434155 m!5119669))

(declare-fun m!5119671 () Bool)

(assert (=> b!4434156 m!5119671))

(assert (=> b!4434035 d!1345460))

(assert (=> b!4434034 d!1345458))

(declare-fun b!4434243 () Bool)

(assert (=> b!4434243 true))

(declare-fun bs!760988 () Bool)

(declare-fun b!4434240 () Bool)

(assert (= bs!760988 (and b!4434240 b!4434243)))

(declare-fun lambda!155896 () Int)

(declare-fun lambda!155895 () Int)

(assert (=> bs!760988 (= lambda!155896 lambda!155895)))

(assert (=> b!4434240 true))

(declare-fun lambda!155897 () Int)

(declare-fun lt!1631670 () ListMap!2821)

(assert (=> bs!760988 (= (= lt!1631670 lt!1631401) (= lambda!155897 lambda!155895))))

(assert (=> b!4434240 (= (= lt!1631670 lt!1631401) (= lambda!155897 lambda!155896))))

(assert (=> b!4434240 true))

(declare-fun bs!760989 () Bool)

(declare-fun d!1345462 () Bool)

(assert (= bs!760989 (and d!1345462 b!4434243)))

(declare-fun lt!1631665 () ListMap!2821)

(declare-fun lambda!155898 () Int)

(assert (=> bs!760989 (= (= lt!1631665 lt!1631401) (= lambda!155898 lambda!155895))))

(declare-fun bs!760990 () Bool)

(assert (= bs!760990 (and d!1345462 b!4434240)))

(assert (=> bs!760990 (= (= lt!1631665 lt!1631401) (= lambda!155898 lambda!155896))))

(assert (=> bs!760990 (= (= lt!1631665 lt!1631670) (= lambda!155898 lambda!155897))))

(assert (=> d!1345462 true))

(declare-fun bm!308516 () Bool)

(declare-fun call!308523 () Unit!83023)

(declare-fun lemmaContainsAllItsOwnKeys!193 (ListMap!2821) Unit!83023)

(assert (=> bm!308516 (= call!308523 (lemmaContainsAllItsOwnKeys!193 lt!1631401))))

(declare-fun e!2761098 () ListMap!2821)

(assert (=> b!4434240 (= e!2761098 lt!1631670)))

(declare-fun lt!1631676 () ListMap!2821)

(assert (=> b!4434240 (= lt!1631676 (+!1159 lt!1631401 (h!55398 newBucket!194)))))

(assert (=> b!4434240 (= lt!1631670 (addToMapMapFromBucket!420 (t!356759 newBucket!194) (+!1159 lt!1631401 (h!55398 newBucket!194))))))

(declare-fun lt!1631660 () Unit!83023)

(assert (=> b!4434240 (= lt!1631660 call!308523)))

(declare-fun forall!9640 (List!49817 Int) Bool)

(assert (=> b!4434240 (forall!9640 (toList!3578 lt!1631401) lambda!155896)))

(declare-fun lt!1631662 () Unit!83023)

(assert (=> b!4434240 (= lt!1631662 lt!1631660)))

(assert (=> b!4434240 (forall!9640 (toList!3578 lt!1631676) lambda!155897)))

(declare-fun lt!1631675 () Unit!83023)

(declare-fun Unit!83053 () Unit!83023)

(assert (=> b!4434240 (= lt!1631675 Unit!83053)))

(assert (=> b!4434240 (forall!9640 (t!356759 newBucket!194) lambda!155897)))

(declare-fun lt!1631663 () Unit!83023)

(declare-fun Unit!83054 () Unit!83023)

(assert (=> b!4434240 (= lt!1631663 Unit!83054)))

(declare-fun lt!1631666 () Unit!83023)

(declare-fun Unit!83055 () Unit!83023)

(assert (=> b!4434240 (= lt!1631666 Unit!83055)))

(declare-fun lt!1631657 () Unit!83023)

(declare-fun forallContained!2123 (List!49817 Int tuple2!49558) Unit!83023)

(assert (=> b!4434240 (= lt!1631657 (forallContained!2123 (toList!3578 lt!1631676) lambda!155897 (h!55398 newBucket!194)))))

(assert (=> b!4434240 (contains!12233 lt!1631676 (_1!28073 (h!55398 newBucket!194)))))

(declare-fun lt!1631664 () Unit!83023)

(declare-fun Unit!83056 () Unit!83023)

(assert (=> b!4434240 (= lt!1631664 Unit!83056)))

(assert (=> b!4434240 (contains!12233 lt!1631670 (_1!28073 (h!55398 newBucket!194)))))

(declare-fun lt!1631661 () Unit!83023)

(declare-fun Unit!83057 () Unit!83023)

(assert (=> b!4434240 (= lt!1631661 Unit!83057)))

(assert (=> b!4434240 (forall!9640 newBucket!194 lambda!155897)))

(declare-fun lt!1631672 () Unit!83023)

(declare-fun Unit!83058 () Unit!83023)

(assert (=> b!4434240 (= lt!1631672 Unit!83058)))

(declare-fun call!308521 () Bool)

(assert (=> b!4434240 call!308521))

(declare-fun lt!1631656 () Unit!83023)

(declare-fun Unit!83059 () Unit!83023)

(assert (=> b!4434240 (= lt!1631656 Unit!83059)))

(declare-fun lt!1631671 () Unit!83023)

(declare-fun Unit!83060 () Unit!83023)

(assert (=> b!4434240 (= lt!1631671 Unit!83060)))

(declare-fun lt!1631658 () Unit!83023)

(declare-fun addForallContainsKeyThenBeforeAdding!193 (ListMap!2821 ListMap!2821 K!11060 V!11306) Unit!83023)

(assert (=> b!4434240 (= lt!1631658 (addForallContainsKeyThenBeforeAdding!193 lt!1631401 lt!1631670 (_1!28073 (h!55398 newBucket!194)) (_2!28073 (h!55398 newBucket!194))))))

(assert (=> b!4434240 (forall!9640 (toList!3578 lt!1631401) lambda!155897)))

(declare-fun lt!1631667 () Unit!83023)

(assert (=> b!4434240 (= lt!1631667 lt!1631658)))

(declare-fun call!308522 () Bool)

(assert (=> b!4434240 call!308522))

(declare-fun lt!1631659 () Unit!83023)

(declare-fun Unit!83061 () Unit!83023)

(assert (=> b!4434240 (= lt!1631659 Unit!83061)))

(declare-fun res!1834844 () Bool)

(assert (=> b!4434240 (= res!1834844 (forall!9640 newBucket!194 lambda!155897))))

(declare-fun e!2761099 () Bool)

(assert (=> b!4434240 (=> (not res!1834844) (not e!2761099))))

(assert (=> b!4434240 e!2761099))

(declare-fun lt!1631674 () Unit!83023)

(declare-fun Unit!83062 () Unit!83023)

(assert (=> b!4434240 (= lt!1631674 Unit!83062)))

(declare-fun b!4434241 () Bool)

(declare-fun res!1834843 () Bool)

(declare-fun e!2761100 () Bool)

(assert (=> b!4434241 (=> (not res!1834843) (not e!2761100))))

(assert (=> b!4434241 (= res!1834843 (forall!9640 (toList!3578 lt!1631401) lambda!155898))))

(declare-fun b!4434242 () Bool)

(assert (=> b!4434242 (= e!2761099 (forall!9640 (toList!3578 lt!1631401) lambda!155897))))

(assert (=> d!1345462 e!2761100))

(declare-fun res!1834842 () Bool)

(assert (=> d!1345462 (=> (not res!1834842) (not e!2761100))))

(assert (=> d!1345462 (= res!1834842 (forall!9640 newBucket!194 lambda!155898))))

(assert (=> d!1345462 (= lt!1631665 e!2761098)))

(declare-fun c!754714 () Bool)

(assert (=> d!1345462 (= c!754714 ((_ is Nil!49693) newBucket!194))))

(assert (=> d!1345462 (noDuplicateKeys!795 newBucket!194)))

(assert (=> d!1345462 (= (addToMapMapFromBucket!420 newBucket!194 lt!1631401) lt!1631665)))

(assert (=> b!4434243 (= e!2761098 lt!1631401)))

(declare-fun lt!1631668 () Unit!83023)

(assert (=> b!4434243 (= lt!1631668 call!308523)))

(assert (=> b!4434243 call!308521))

(declare-fun lt!1631669 () Unit!83023)

(assert (=> b!4434243 (= lt!1631669 lt!1631668)))

(assert (=> b!4434243 call!308522))

(declare-fun lt!1631673 () Unit!83023)

(declare-fun Unit!83063 () Unit!83023)

(assert (=> b!4434243 (= lt!1631673 Unit!83063)))

(declare-fun bm!308517 () Bool)

(assert (=> bm!308517 (= call!308522 (forall!9640 (toList!3578 lt!1631401) (ite c!754714 lambda!155895 lambda!155897)))))

(declare-fun bm!308518 () Bool)

(assert (=> bm!308518 (= call!308521 (forall!9640 (ite c!754714 (toList!3578 lt!1631401) (toList!3578 lt!1631676)) (ite c!754714 lambda!155895 lambda!155897)))))

(declare-fun b!4434244 () Bool)

(assert (=> b!4434244 (= e!2761100 (invariantList!825 (toList!3578 lt!1631665)))))

(assert (= (and d!1345462 c!754714) b!4434243))

(assert (= (and d!1345462 (not c!754714)) b!4434240))

(assert (= (and b!4434240 res!1834844) b!4434242))

(assert (= (or b!4434243 b!4434240) bm!308516))

(assert (= (or b!4434243 b!4434240) bm!308517))

(assert (= (or b!4434243 b!4434240) bm!308518))

(assert (= (and d!1345462 res!1834842) b!4434241))

(assert (= (and b!4434241 res!1834843) b!4434244))

(declare-fun m!5119789 () Bool)

(assert (=> bm!308517 m!5119789))

(declare-fun m!5119791 () Bool)

(assert (=> b!4434240 m!5119791))

(declare-fun m!5119793 () Bool)

(assert (=> b!4434240 m!5119793))

(declare-fun m!5119795 () Bool)

(assert (=> b!4434240 m!5119795))

(declare-fun m!5119797 () Bool)

(assert (=> b!4434240 m!5119797))

(declare-fun m!5119799 () Bool)

(assert (=> b!4434240 m!5119799))

(declare-fun m!5119801 () Bool)

(assert (=> b!4434240 m!5119801))

(declare-fun m!5119803 () Bool)

(assert (=> b!4434240 m!5119803))

(declare-fun m!5119805 () Bool)

(assert (=> b!4434240 m!5119805))

(declare-fun m!5119807 () Bool)

(assert (=> b!4434240 m!5119807))

(declare-fun m!5119809 () Bool)

(assert (=> b!4434240 m!5119809))

(assert (=> b!4434240 m!5119791))

(declare-fun m!5119811 () Bool)

(assert (=> b!4434240 m!5119811))

(assert (=> b!4434240 m!5119807))

(assert (=> b!4434242 m!5119811))

(declare-fun m!5119813 () Bool)

(assert (=> b!4434244 m!5119813))

(declare-fun m!5119815 () Bool)

(assert (=> bm!308516 m!5119815))

(declare-fun m!5119817 () Bool)

(assert (=> bm!308518 m!5119817))

(declare-fun m!5119819 () Bool)

(assert (=> b!4434241 m!5119819))

(declare-fun m!5119821 () Bool)

(assert (=> d!1345462 m!5119821))

(assert (=> d!1345462 m!5119533))

(assert (=> b!4434033 d!1345462))

(declare-fun bs!760991 () Bool)

(declare-fun d!1345490 () Bool)

(assert (= bs!760991 (and d!1345490 start!433336)))

(declare-fun lambda!155899 () Int)

(assert (=> bs!760991 (= lambda!155899 lambda!155816)))

(declare-fun bs!760992 () Bool)

(assert (= bs!760992 (and d!1345490 d!1345438)))

(assert (=> bs!760992 (= lambda!155899 lambda!155851)))

(declare-fun lt!1631677 () ListMap!2821)

(assert (=> d!1345490 (invariantList!825 (toList!3578 lt!1631677))))

(declare-fun e!2761101 () ListMap!2821)

(assert (=> d!1345490 (= lt!1631677 e!2761101)))

(declare-fun c!754715 () Bool)

(assert (=> d!1345490 (= c!754715 ((_ is Cons!49694) (toList!3577 lt!1631403)))))

(assert (=> d!1345490 (forall!9638 (toList!3577 lt!1631403) lambda!155899)))

(assert (=> d!1345490 (= (extractMap!856 (toList!3577 lt!1631403)) lt!1631677)))

(declare-fun b!4434247 () Bool)

(assert (=> b!4434247 (= e!2761101 (addToMapMapFromBucket!420 (_2!28074 (h!55399 (toList!3577 lt!1631403))) (extractMap!856 (t!356760 (toList!3577 lt!1631403)))))))

(declare-fun b!4434248 () Bool)

(assert (=> b!4434248 (= e!2761101 (ListMap!2822 Nil!49693))))

(assert (= (and d!1345490 c!754715) b!4434247))

(assert (= (and d!1345490 (not c!754715)) b!4434248))

(declare-fun m!5119823 () Bool)

(assert (=> d!1345490 m!5119823))

(declare-fun m!5119825 () Bool)

(assert (=> d!1345490 m!5119825))

(declare-fun m!5119827 () Bool)

(assert (=> b!4434247 m!5119827))

(assert (=> b!4434247 m!5119827))

(declare-fun m!5119829 () Bool)

(assert (=> b!4434247 m!5119829))

(assert (=> b!4434033 d!1345490))

(declare-fun bs!760993 () Bool)

(declare-fun d!1345492 () Bool)

(assert (= bs!760993 (and d!1345492 start!433336)))

(declare-fun lambda!155900 () Int)

(assert (=> bs!760993 (= lambda!155900 lambda!155816)))

(declare-fun bs!760994 () Bool)

(assert (= bs!760994 (and d!1345492 d!1345438)))

(assert (=> bs!760994 (= lambda!155900 lambda!155851)))

(declare-fun bs!760995 () Bool)

(assert (= bs!760995 (and d!1345492 d!1345490)))

(assert (=> bs!760995 (= lambda!155900 lambda!155899)))

(declare-fun lt!1631678 () ListMap!2821)

(assert (=> d!1345492 (invariantList!825 (toList!3578 lt!1631678))))

(declare-fun e!2761102 () ListMap!2821)

(assert (=> d!1345492 (= lt!1631678 e!2761102)))

(declare-fun c!754716 () Bool)

(assert (=> d!1345492 (= c!754716 ((_ is Cons!49694) (t!356760 (toList!3577 lm!1616))))))

(assert (=> d!1345492 (forall!9638 (t!356760 (toList!3577 lm!1616)) lambda!155900)))

(assert (=> d!1345492 (= (extractMap!856 (t!356760 (toList!3577 lm!1616))) lt!1631678)))

(declare-fun b!4434249 () Bool)

(assert (=> b!4434249 (= e!2761102 (addToMapMapFromBucket!420 (_2!28074 (h!55399 (t!356760 (toList!3577 lm!1616)))) (extractMap!856 (t!356760 (t!356760 (toList!3577 lm!1616))))))))

(declare-fun b!4434250 () Bool)

(assert (=> b!4434250 (= e!2761102 (ListMap!2822 Nil!49693))))

(assert (= (and d!1345492 c!754716) b!4434249))

(assert (= (and d!1345492 (not c!754716)) b!4434250))

(declare-fun m!5119831 () Bool)

(assert (=> d!1345492 m!5119831))

(declare-fun m!5119833 () Bool)

(assert (=> d!1345492 m!5119833))

(declare-fun m!5119835 () Bool)

(assert (=> b!4434249 m!5119835))

(assert (=> b!4434249 m!5119835))

(declare-fun m!5119837 () Bool)

(assert (=> b!4434249 m!5119837))

(assert (=> b!4434033 d!1345492))

(declare-fun d!1345494 () Bool)

(assert (=> d!1345494 (= (tail!7323 (toList!3577 lt!1631403)) (t!356760 (toList!3577 lt!1631403)))))

(assert (=> b!4434048 d!1345494))

(declare-fun bs!760996 () Bool)

(declare-fun b!4434254 () Bool)

(assert (= bs!760996 (and b!4434254 b!4434243)))

(declare-fun lambda!155901 () Int)

(assert (=> bs!760996 (= (= (+!1159 lt!1631401 lt!1631402) lt!1631401) (= lambda!155901 lambda!155895))))

(declare-fun bs!760997 () Bool)

(assert (= bs!760997 (and b!4434254 b!4434240)))

(assert (=> bs!760997 (= (= (+!1159 lt!1631401 lt!1631402) lt!1631401) (= lambda!155901 lambda!155896))))

(assert (=> bs!760997 (= (= (+!1159 lt!1631401 lt!1631402) lt!1631670) (= lambda!155901 lambda!155897))))

(declare-fun bs!760998 () Bool)

(assert (= bs!760998 (and b!4434254 d!1345462)))

(assert (=> bs!760998 (= (= (+!1159 lt!1631401 lt!1631402) lt!1631665) (= lambda!155901 lambda!155898))))

(assert (=> b!4434254 true))

(declare-fun bs!760999 () Bool)

(declare-fun b!4434251 () Bool)

(assert (= bs!760999 (and b!4434251 b!4434243)))

(declare-fun lambda!155902 () Int)

(assert (=> bs!760999 (= (= (+!1159 lt!1631401 lt!1631402) lt!1631401) (= lambda!155902 lambda!155895))))

(declare-fun bs!761000 () Bool)

(assert (= bs!761000 (and b!4434251 b!4434254)))

(assert (=> bs!761000 (= lambda!155902 lambda!155901)))

(declare-fun bs!761001 () Bool)

(assert (= bs!761001 (and b!4434251 b!4434240)))

(assert (=> bs!761001 (= (= (+!1159 lt!1631401 lt!1631402) lt!1631670) (= lambda!155902 lambda!155897))))

(assert (=> bs!761001 (= (= (+!1159 lt!1631401 lt!1631402) lt!1631401) (= lambda!155902 lambda!155896))))

(declare-fun bs!761002 () Bool)

(assert (= bs!761002 (and b!4434251 d!1345462)))

(assert (=> bs!761002 (= (= (+!1159 lt!1631401 lt!1631402) lt!1631665) (= lambda!155902 lambda!155898))))

(assert (=> b!4434251 true))

(declare-fun lt!1631693 () ListMap!2821)

(declare-fun lambda!155903 () Int)

(assert (=> bs!760999 (= (= lt!1631693 lt!1631401) (= lambda!155903 lambda!155895))))

(assert (=> bs!761000 (= (= lt!1631693 (+!1159 lt!1631401 lt!1631402)) (= lambda!155903 lambda!155901))))

(assert (=> bs!761001 (= (= lt!1631693 lt!1631670) (= lambda!155903 lambda!155897))))

(assert (=> b!4434251 (= (= lt!1631693 (+!1159 lt!1631401 lt!1631402)) (= lambda!155903 lambda!155902))))

(assert (=> bs!761001 (= (= lt!1631693 lt!1631401) (= lambda!155903 lambda!155896))))

(assert (=> bs!761002 (= (= lt!1631693 lt!1631665) (= lambda!155903 lambda!155898))))

(assert (=> b!4434251 true))

(declare-fun bs!761003 () Bool)

(declare-fun d!1345496 () Bool)

(assert (= bs!761003 (and d!1345496 b!4434243)))

(declare-fun lambda!155904 () Int)

(declare-fun lt!1631688 () ListMap!2821)

(assert (=> bs!761003 (= (= lt!1631688 lt!1631401) (= lambda!155904 lambda!155895))))

(declare-fun bs!761004 () Bool)

(assert (= bs!761004 (and d!1345496 b!4434254)))

(assert (=> bs!761004 (= (= lt!1631688 (+!1159 lt!1631401 lt!1631402)) (= lambda!155904 lambda!155901))))

(declare-fun bs!761005 () Bool)

(assert (= bs!761005 (and d!1345496 b!4434251)))

(assert (=> bs!761005 (= (= lt!1631688 lt!1631693) (= lambda!155904 lambda!155903))))

(declare-fun bs!761006 () Bool)

(assert (= bs!761006 (and d!1345496 b!4434240)))

(assert (=> bs!761006 (= (= lt!1631688 lt!1631670) (= lambda!155904 lambda!155897))))

(assert (=> bs!761005 (= (= lt!1631688 (+!1159 lt!1631401 lt!1631402)) (= lambda!155904 lambda!155902))))

(assert (=> bs!761006 (= (= lt!1631688 lt!1631401) (= lambda!155904 lambda!155896))))

(declare-fun bs!761007 () Bool)

(assert (= bs!761007 (and d!1345496 d!1345462)))

(assert (=> bs!761007 (= (= lt!1631688 lt!1631665) (= lambda!155904 lambda!155898))))

(assert (=> d!1345496 true))

(declare-fun bm!308519 () Bool)

(declare-fun call!308526 () Unit!83023)

(assert (=> bm!308519 (= call!308526 (lemmaContainsAllItsOwnKeys!193 (+!1159 lt!1631401 lt!1631402)))))

(declare-fun e!2761103 () ListMap!2821)

(assert (=> b!4434251 (= e!2761103 lt!1631693)))

(declare-fun lt!1631699 () ListMap!2821)

(assert (=> b!4434251 (= lt!1631699 (+!1159 (+!1159 lt!1631401 lt!1631402) (h!55398 lt!1631400)))))

(assert (=> b!4434251 (= lt!1631693 (addToMapMapFromBucket!420 (t!356759 lt!1631400) (+!1159 (+!1159 lt!1631401 lt!1631402) (h!55398 lt!1631400))))))

(declare-fun lt!1631683 () Unit!83023)

(assert (=> b!4434251 (= lt!1631683 call!308526)))

(assert (=> b!4434251 (forall!9640 (toList!3578 (+!1159 lt!1631401 lt!1631402)) lambda!155902)))

(declare-fun lt!1631685 () Unit!83023)

(assert (=> b!4434251 (= lt!1631685 lt!1631683)))

(assert (=> b!4434251 (forall!9640 (toList!3578 lt!1631699) lambda!155903)))

(declare-fun lt!1631698 () Unit!83023)

(declare-fun Unit!83064 () Unit!83023)

(assert (=> b!4434251 (= lt!1631698 Unit!83064)))

(assert (=> b!4434251 (forall!9640 (t!356759 lt!1631400) lambda!155903)))

(declare-fun lt!1631686 () Unit!83023)

(declare-fun Unit!83065 () Unit!83023)

(assert (=> b!4434251 (= lt!1631686 Unit!83065)))

(declare-fun lt!1631689 () Unit!83023)

(declare-fun Unit!83066 () Unit!83023)

(assert (=> b!4434251 (= lt!1631689 Unit!83066)))

(declare-fun lt!1631680 () Unit!83023)

(assert (=> b!4434251 (= lt!1631680 (forallContained!2123 (toList!3578 lt!1631699) lambda!155903 (h!55398 lt!1631400)))))

(assert (=> b!4434251 (contains!12233 lt!1631699 (_1!28073 (h!55398 lt!1631400)))))

(declare-fun lt!1631687 () Unit!83023)

(declare-fun Unit!83067 () Unit!83023)

(assert (=> b!4434251 (= lt!1631687 Unit!83067)))

(assert (=> b!4434251 (contains!12233 lt!1631693 (_1!28073 (h!55398 lt!1631400)))))

(declare-fun lt!1631684 () Unit!83023)

(declare-fun Unit!83068 () Unit!83023)

(assert (=> b!4434251 (= lt!1631684 Unit!83068)))

(assert (=> b!4434251 (forall!9640 lt!1631400 lambda!155903)))

(declare-fun lt!1631695 () Unit!83023)

(declare-fun Unit!83069 () Unit!83023)

(assert (=> b!4434251 (= lt!1631695 Unit!83069)))

(declare-fun call!308524 () Bool)

(assert (=> b!4434251 call!308524))

(declare-fun lt!1631679 () Unit!83023)

(declare-fun Unit!83070 () Unit!83023)

(assert (=> b!4434251 (= lt!1631679 Unit!83070)))

(declare-fun lt!1631694 () Unit!83023)

(declare-fun Unit!83071 () Unit!83023)

(assert (=> b!4434251 (= lt!1631694 Unit!83071)))

(declare-fun lt!1631681 () Unit!83023)

(assert (=> b!4434251 (= lt!1631681 (addForallContainsKeyThenBeforeAdding!193 (+!1159 lt!1631401 lt!1631402) lt!1631693 (_1!28073 (h!55398 lt!1631400)) (_2!28073 (h!55398 lt!1631400))))))

(assert (=> b!4434251 (forall!9640 (toList!3578 (+!1159 lt!1631401 lt!1631402)) lambda!155903)))

(declare-fun lt!1631690 () Unit!83023)

(assert (=> b!4434251 (= lt!1631690 lt!1631681)))

(declare-fun call!308525 () Bool)

(assert (=> b!4434251 call!308525))

(declare-fun lt!1631682 () Unit!83023)

(declare-fun Unit!83072 () Unit!83023)

(assert (=> b!4434251 (= lt!1631682 Unit!83072)))

(declare-fun res!1834847 () Bool)

(assert (=> b!4434251 (= res!1834847 (forall!9640 lt!1631400 lambda!155903))))

(declare-fun e!2761104 () Bool)

(assert (=> b!4434251 (=> (not res!1834847) (not e!2761104))))

(assert (=> b!4434251 e!2761104))

(declare-fun lt!1631697 () Unit!83023)

(declare-fun Unit!83073 () Unit!83023)

(assert (=> b!4434251 (= lt!1631697 Unit!83073)))

(declare-fun b!4434252 () Bool)

(declare-fun res!1834846 () Bool)

(declare-fun e!2761105 () Bool)

(assert (=> b!4434252 (=> (not res!1834846) (not e!2761105))))

(assert (=> b!4434252 (= res!1834846 (forall!9640 (toList!3578 (+!1159 lt!1631401 lt!1631402)) lambda!155904))))

(declare-fun b!4434253 () Bool)

(assert (=> b!4434253 (= e!2761104 (forall!9640 (toList!3578 (+!1159 lt!1631401 lt!1631402)) lambda!155903))))

(assert (=> d!1345496 e!2761105))

(declare-fun res!1834845 () Bool)

(assert (=> d!1345496 (=> (not res!1834845) (not e!2761105))))

(assert (=> d!1345496 (= res!1834845 (forall!9640 lt!1631400 lambda!155904))))

(assert (=> d!1345496 (= lt!1631688 e!2761103)))

(declare-fun c!754717 () Bool)

(assert (=> d!1345496 (= c!754717 ((_ is Nil!49693) lt!1631400))))

(assert (=> d!1345496 (noDuplicateKeys!795 lt!1631400)))

(assert (=> d!1345496 (= (addToMapMapFromBucket!420 lt!1631400 (+!1159 lt!1631401 lt!1631402)) lt!1631688)))

(assert (=> b!4434254 (= e!2761103 (+!1159 lt!1631401 lt!1631402))))

(declare-fun lt!1631691 () Unit!83023)

(assert (=> b!4434254 (= lt!1631691 call!308526)))

(assert (=> b!4434254 call!308524))

(declare-fun lt!1631692 () Unit!83023)

(assert (=> b!4434254 (= lt!1631692 lt!1631691)))

(assert (=> b!4434254 call!308525))

(declare-fun lt!1631696 () Unit!83023)

(declare-fun Unit!83074 () Unit!83023)

(assert (=> b!4434254 (= lt!1631696 Unit!83074)))

(declare-fun bm!308520 () Bool)

(assert (=> bm!308520 (= call!308525 (forall!9640 (toList!3578 (+!1159 lt!1631401 lt!1631402)) (ite c!754717 lambda!155901 lambda!155903)))))

(declare-fun bm!308521 () Bool)

(assert (=> bm!308521 (= call!308524 (forall!9640 (ite c!754717 (toList!3578 (+!1159 lt!1631401 lt!1631402)) (toList!3578 lt!1631699)) (ite c!754717 lambda!155901 lambda!155903)))))

(declare-fun b!4434255 () Bool)

(assert (=> b!4434255 (= e!2761105 (invariantList!825 (toList!3578 lt!1631688)))))

(assert (= (and d!1345496 c!754717) b!4434254))

(assert (= (and d!1345496 (not c!754717)) b!4434251))

(assert (= (and b!4434251 res!1834847) b!4434253))

(assert (= (or b!4434254 b!4434251) bm!308519))

(assert (= (or b!4434254 b!4434251) bm!308520))

(assert (= (or b!4434254 b!4434251) bm!308521))

(assert (= (and d!1345496 res!1834845) b!4434252))

(assert (= (and b!4434252 res!1834846) b!4434255))

(declare-fun m!5119839 () Bool)

(assert (=> bm!308520 m!5119839))

(declare-fun m!5119841 () Bool)

(assert (=> b!4434251 m!5119841))

(declare-fun m!5119843 () Bool)

(assert (=> b!4434251 m!5119843))

(declare-fun m!5119845 () Bool)

(assert (=> b!4434251 m!5119845))

(declare-fun m!5119847 () Bool)

(assert (=> b!4434251 m!5119847))

(declare-fun m!5119849 () Bool)

(assert (=> b!4434251 m!5119849))

(declare-fun m!5119851 () Bool)

(assert (=> b!4434251 m!5119851))

(declare-fun m!5119853 () Bool)

(assert (=> b!4434251 m!5119853))

(assert (=> b!4434251 m!5119535))

(declare-fun m!5119855 () Bool)

(assert (=> b!4434251 m!5119855))

(declare-fun m!5119857 () Bool)

(assert (=> b!4434251 m!5119857))

(declare-fun m!5119859 () Bool)

(assert (=> b!4434251 m!5119859))

(assert (=> b!4434251 m!5119535))

(assert (=> b!4434251 m!5119841))

(declare-fun m!5119861 () Bool)

(assert (=> b!4434251 m!5119861))

(assert (=> b!4434251 m!5119857))

(assert (=> b!4434253 m!5119861))

(declare-fun m!5119863 () Bool)

(assert (=> b!4434255 m!5119863))

(assert (=> bm!308519 m!5119535))

(declare-fun m!5119865 () Bool)

(assert (=> bm!308519 m!5119865))

(declare-fun m!5119867 () Bool)

(assert (=> bm!308521 m!5119867))

(declare-fun m!5119869 () Bool)

(assert (=> b!4434252 m!5119869))

(declare-fun m!5119871 () Bool)

(assert (=> d!1345496 m!5119871))

(declare-fun m!5119873 () Bool)

(assert (=> d!1345496 m!5119873))

(assert (=> b!4434037 d!1345496))

(declare-fun d!1345498 () Bool)

(declare-fun e!2761108 () Bool)

(assert (=> d!1345498 e!2761108))

(declare-fun res!1834852 () Bool)

(assert (=> d!1345498 (=> (not res!1834852) (not e!2761108))))

(declare-fun lt!1631708 () ListMap!2821)

(assert (=> d!1345498 (= res!1834852 (contains!12233 lt!1631708 (_1!28073 lt!1631402)))))

(declare-fun lt!1631710 () List!49817)

(assert (=> d!1345498 (= lt!1631708 (ListMap!2822 lt!1631710))))

(declare-fun lt!1631711 () Unit!83023)

(declare-fun lt!1631709 () Unit!83023)

(assert (=> d!1345498 (= lt!1631711 lt!1631709)))

(assert (=> d!1345498 (= (getValueByKey!752 lt!1631710 (_1!28073 lt!1631402)) (Some!10765 (_2!28073 lt!1631402)))))

(declare-fun lemmaContainsTupThenGetReturnValue!485 (List!49817 K!11060 V!11306) Unit!83023)

(assert (=> d!1345498 (= lt!1631709 (lemmaContainsTupThenGetReturnValue!485 lt!1631710 (_1!28073 lt!1631402) (_2!28073 lt!1631402)))))

(declare-fun insertNoDuplicatedKeys!213 (List!49817 K!11060 V!11306) List!49817)

(assert (=> d!1345498 (= lt!1631710 (insertNoDuplicatedKeys!213 (toList!3578 lt!1631401) (_1!28073 lt!1631402) (_2!28073 lt!1631402)))))

(assert (=> d!1345498 (= (+!1159 lt!1631401 lt!1631402) lt!1631708)))

(declare-fun b!4434260 () Bool)

(declare-fun res!1834853 () Bool)

(assert (=> b!4434260 (=> (not res!1834853) (not e!2761108))))

(assert (=> b!4434260 (= res!1834853 (= (getValueByKey!752 (toList!3578 lt!1631708) (_1!28073 lt!1631402)) (Some!10765 (_2!28073 lt!1631402))))))

(declare-fun b!4434261 () Bool)

(declare-fun contains!12239 (List!49817 tuple2!49558) Bool)

(assert (=> b!4434261 (= e!2761108 (contains!12239 (toList!3578 lt!1631708) lt!1631402))))

(assert (= (and d!1345498 res!1834852) b!4434260))

(assert (= (and b!4434260 res!1834853) b!4434261))

(declare-fun m!5119875 () Bool)

(assert (=> d!1345498 m!5119875))

(declare-fun m!5119877 () Bool)

(assert (=> d!1345498 m!5119877))

(declare-fun m!5119879 () Bool)

(assert (=> d!1345498 m!5119879))

(declare-fun m!5119881 () Bool)

(assert (=> d!1345498 m!5119881))

(declare-fun m!5119883 () Bool)

(assert (=> b!4434260 m!5119883))

(declare-fun m!5119885 () Bool)

(assert (=> b!4434261 m!5119885))

(assert (=> b!4434037 d!1345498))

(declare-fun d!1345500 () Bool)

(declare-fun hash!2218 (Hashable!5189 K!11060) (_ BitVec 64))

(assert (=> d!1345500 (= (hash!2216 hashF!1220 key!3717) (hash!2218 hashF!1220 key!3717))))

(declare-fun bs!761008 () Bool)

(assert (= bs!761008 d!1345500))

(declare-fun m!5119887 () Bool)

(assert (=> bs!761008 m!5119887))

(assert (=> b!4434046 d!1345500))

(declare-fun bs!761009 () Bool)

(declare-fun d!1345502 () Bool)

(assert (= bs!761009 (and d!1345502 b!4434243)))

(declare-fun lambda!155907 () Int)

(assert (=> bs!761009 (not (= lambda!155907 lambda!155895))))

(declare-fun bs!761010 () Bool)

(assert (= bs!761010 (and d!1345502 b!4434254)))

(assert (=> bs!761010 (not (= lambda!155907 lambda!155901))))

(declare-fun bs!761011 () Bool)

(assert (= bs!761011 (and d!1345502 b!4434251)))

(assert (=> bs!761011 (not (= lambda!155907 lambda!155903))))

(declare-fun bs!761012 () Bool)

(assert (= bs!761012 (and d!1345502 b!4434240)))

(assert (=> bs!761012 (not (= lambda!155907 lambda!155897))))

(declare-fun bs!761013 () Bool)

(assert (= bs!761013 (and d!1345502 d!1345496)))

(assert (=> bs!761013 (not (= lambda!155907 lambda!155904))))

(assert (=> bs!761011 (not (= lambda!155907 lambda!155902))))

(assert (=> bs!761012 (not (= lambda!155907 lambda!155896))))

(declare-fun bs!761014 () Bool)

(assert (= bs!761014 (and d!1345502 d!1345462)))

(assert (=> bs!761014 (not (= lambda!155907 lambda!155898))))

(assert (=> d!1345502 true))

(assert (=> d!1345502 true))

(assert (=> d!1345502 (= (allKeysSameHash!755 newBucket!194 hash!366 hashF!1220) (forall!9640 newBucket!194 lambda!155907))))

(declare-fun bs!761015 () Bool)

(assert (= bs!761015 d!1345502))

(declare-fun m!5119889 () Bool)

(assert (=> bs!761015 m!5119889))

(assert (=> b!4434040 d!1345502))

(declare-fun d!1345504 () Bool)

(assert (=> d!1345504 (= (head!9260 (toList!3577 lt!1631403)) (h!55399 (toList!3577 lt!1631403)))))

(assert (=> b!4434039 d!1345504))

(assert (=> b!4434038 d!1345452))

(declare-fun bs!761016 () Bool)

(declare-fun d!1345506 () Bool)

(assert (= bs!761016 (and d!1345506 start!433336)))

(declare-fun lambda!155910 () Int)

(assert (=> bs!761016 (not (= lambda!155910 lambda!155816))))

(declare-fun bs!761017 () Bool)

(assert (= bs!761017 (and d!1345506 d!1345438)))

(assert (=> bs!761017 (not (= lambda!155910 lambda!155851))))

(declare-fun bs!761018 () Bool)

(assert (= bs!761018 (and d!1345506 d!1345490)))

(assert (=> bs!761018 (not (= lambda!155910 lambda!155899))))

(declare-fun bs!761019 () Bool)

(assert (= bs!761019 (and d!1345506 d!1345492)))

(assert (=> bs!761019 (not (= lambda!155910 lambda!155900))))

(assert (=> d!1345506 true))

(assert (=> d!1345506 (= (allKeysSameHashInMap!901 lm!1616 hashF!1220) (forall!9638 (toList!3577 lm!1616) lambda!155910))))

(declare-fun bs!761020 () Bool)

(assert (= bs!761020 d!1345506))

(declare-fun m!5119891 () Bool)

(assert (=> bs!761020 m!5119891))

(assert (=> b!4434049 d!1345506))

(declare-fun b!4434272 () Bool)

(declare-fun e!2761111 () Bool)

(declare-fun tp!1333722 () Bool)

(assert (=> b!4434272 (= e!2761111 (and tp_is_empty!26427 tp_is_empty!26425 tp!1333722))))

(assert (=> b!4434047 (= tp!1333710 e!2761111)))

(assert (= (and b!4434047 ((_ is Cons!49693) (t!356759 newBucket!194))) b!4434272))

(declare-fun b!4434277 () Bool)

(declare-fun e!2761114 () Bool)

(declare-fun tp!1333727 () Bool)

(declare-fun tp!1333728 () Bool)

(assert (=> b!4434277 (= e!2761114 (and tp!1333727 tp!1333728))))

(assert (=> b!4434044 (= tp!1333709 e!2761114)))

(assert (= (and b!4434044 ((_ is Cons!49694) (toList!3577 lm!1616))) b!4434277))

(declare-fun b_lambda!144285 () Bool)

(assert (= b_lambda!144267 (or start!433336 b_lambda!144285)))

(declare-fun bs!761021 () Bool)

(declare-fun d!1345508 () Bool)

(assert (= bs!761021 (and d!1345508 start!433336)))

(assert (=> bs!761021 (= (dynLambda!20884 lambda!155816 (h!55399 (toList!3577 lt!1631403))) (noDuplicateKeys!795 (_2!28074 (h!55399 (toList!3577 lt!1631403)))))))

(declare-fun m!5119893 () Bool)

(assert (=> bs!761021 m!5119893))

(assert (=> b!4434054 d!1345508))

(declare-fun b_lambda!144287 () Bool)

(assert (= b_lambda!144271 (or start!433336 b_lambda!144287)))

(declare-fun bs!761022 () Bool)

(declare-fun d!1345510 () Bool)

(assert (= bs!761022 (and d!1345510 start!433336)))

(assert (=> bs!761022 (= (dynLambda!20884 lambda!155816 (h!55399 (toList!3577 lm!1616))) (noDuplicateKeys!795 (_2!28074 (h!55399 (toList!3577 lm!1616)))))))

(declare-fun m!5119895 () Bool)

(assert (=> bs!761022 m!5119895))

(assert (=> b!4434139 d!1345510))

(declare-fun b_lambda!144289 () Bool)

(assert (= b_lambda!144269 (or start!433336 b_lambda!144289)))

(declare-fun bs!761023 () Bool)

(declare-fun d!1345512 () Bool)

(assert (= bs!761023 (and d!1345512 start!433336)))

(assert (=> bs!761023 (= (dynLambda!20884 lambda!155816 (tuple2!49561 hash!366 newBucket!194)) (noDuplicateKeys!795 (_2!28074 (tuple2!49561 hash!366 newBucket!194))))))

(declare-fun m!5119897 () Bool)

(assert (=> bs!761023 m!5119897))

(assert (=> b!4434065 d!1345512))

(check-sat (not b!4434156) (not b_lambda!144285) (not b!4434136) (not b!4434242) (not b!4434087) (not b!4434084) (not b_lambda!144287) (not d!1345454) (not b!4434260) (not bm!308517) (not bm!308520) tp_is_empty!26425 (not bm!308494) (not b!4434277) (not bm!308516) (not b!4434088) (not b!4434241) (not b!4434240) (not b!4434255) (not bm!308521) (not b!4434140) (not b!4434061) (not d!1345500) (not b!4434247) (not b!4434272) (not bm!308519) (not bs!761021) (not d!1345506) tp_is_empty!26427 (not b!4434251) (not b!4434114) (not b!4434090) (not d!1345496) (not b!4434055) (not d!1345502) (not b!4434253) (not b!4434092) (not d!1345462) (not d!1345436) (not bs!761022) (not b!4434085) (not d!1345498) (not b!4434252) (not d!1345458) (not b!4434155) (not bm!308518) (not bs!761023) (not b!4434249) (not d!1345492) (not d!1345434) (not d!1345442) (not b!4434060) (not b!4434261) (not d!1345432) (not d!1345438) (not b!4434089) (not b!4434134) (not d!1345490) (not b!4434244) (not b_lambda!144289))
(check-sat)
