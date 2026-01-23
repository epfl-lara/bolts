; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!493010 () Bool)

(assert start!493010)

(declare-fun res!2035503 () Bool)

(declare-fun e!2990794 () Bool)

(assert (=> start!493010 (=> (not res!2035503) (not e!2990794))))

(declare-datatypes ((K!15719 0))(
  ( (K!15720 (val!20881 Int)) )
))
(declare-datatypes ((V!15965 0))(
  ( (V!15966 (val!20882 Int)) )
))
(declare-datatypes ((tuple2!56736 0))(
  ( (tuple2!56737 (_1!31662 K!15719) (_2!31662 V!15965)) )
))
(declare-datatypes ((List!54275 0))(
  ( (Nil!54151) (Cons!54151 (h!60575 tuple2!56736) (t!361725 List!54275)) )
))
(declare-datatypes ((tuple2!56738 0))(
  ( (tuple2!56739 (_1!31663 (_ BitVec 64)) (_2!31663 List!54275)) )
))
(declare-datatypes ((List!54276 0))(
  ( (Nil!54152) (Cons!54152 (h!60576 tuple2!56738) (t!361726 List!54276)) )
))
(declare-datatypes ((ListLongMap!5285 0))(
  ( (ListLongMap!5286 (toList!6863 List!54276)) )
))
(declare-fun lm!2473 () ListLongMap!5285)

(declare-fun lambda!230107 () Int)

(declare-fun forall!12213 (List!54276 Int) Bool)

(assert (=> start!493010 (= res!2035503 (forall!12213 (toList!6863 lm!2473) lambda!230107))))

(assert (=> start!493010 e!2990794))

(declare-fun e!2990796 () Bool)

(declare-fun inv!69745 (ListLongMap!5285) Bool)

(assert (=> start!493010 (and (inv!69745 lm!2473) e!2990796)))

(assert (=> start!493010 true))

(declare-fun tp_is_empty!33449 () Bool)

(assert (=> start!493010 tp_is_empty!33449))

(declare-fun tp_is_empty!33451 () Bool)

(assert (=> start!493010 tp_is_empty!33451))

(declare-fun b!4790042 () Bool)

(declare-datatypes ((Unit!139755 0))(
  ( (Unit!139756) )
))
(declare-fun e!2990793 () Unit!139755)

(declare-fun Unit!139757 () Unit!139755)

(assert (=> b!4790042 (= e!2990793 Unit!139757)))

(declare-fun b!4790043 () Bool)

(declare-fun res!2035506 () Bool)

(declare-fun e!2990795 () Bool)

(assert (=> b!4790043 (=> res!2035506 e!2990795)))

(declare-fun lt!1949713 () ListLongMap!5285)

(declare-datatypes ((Hashable!6892 0))(
  ( (HashableExt!6891 (__x!32915 Int)) )
))
(declare-fun hashF!1559 () Hashable!6892)

(declare-fun allKeysSameHashInMap!2297 (ListLongMap!5285 Hashable!6892) Bool)

(assert (=> b!4790043 (= res!2035506 (not (allKeysSameHashInMap!2297 lt!1949713 hashF!1559)))))

(declare-fun b!4790044 () Bool)

(declare-fun res!2035508 () Bool)

(assert (=> b!4790044 (=> res!2035508 e!2990795)))

(declare-fun key!5896 () K!15719)

(declare-fun containsKeyBiggerList!542 (List!54276 K!15719) Bool)

(assert (=> b!4790044 (= res!2035508 (not (containsKeyBiggerList!542 (toList!6863 lt!1949713) key!5896)))))

(declare-fun b!4790045 () Bool)

(declare-fun res!2035510 () Bool)

(declare-fun e!2990797 () Bool)

(assert (=> b!4790045 (=> res!2035510 e!2990797)))

(declare-fun containsKey!3914 (List!54275 K!15719) Bool)

(assert (=> b!4790045 (= res!2035510 (containsKey!3914 (_2!31663 (h!60576 (toList!6863 lm!2473))) key!5896))))

(declare-fun b!4790046 () Bool)

(declare-fun res!2035504 () Bool)

(assert (=> b!4790046 (=> res!2035504 e!2990797)))

(get-info :version)

(assert (=> b!4790046 (= res!2035504 (not ((_ is Cons!54152) (toList!6863 lm!2473))))))

(declare-fun b!4790047 () Bool)

(declare-fun lt!1949712 () Unit!139755)

(assert (=> b!4790047 (= e!2990793 lt!1949712)))

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!18 (ListLongMap!5285 K!15719 Hashable!6892) Unit!139755)

(assert (=> b!4790047 (= lt!1949712 (lemmaHashNotInLongMapThenNotInGenerated!18 lt!1949713 key!5896 hashF!1559))))

(declare-datatypes ((ListMap!6335 0))(
  ( (ListMap!6336 (toList!6864 List!54275)) )
))
(declare-fun contains!17754 (ListMap!6335 K!15719) Bool)

(declare-fun extractMap!2419 (List!54276) ListMap!6335)

(assert (=> b!4790047 (not (contains!17754 (extractMap!2419 (toList!6863 lt!1949713)) key!5896))))

(declare-fun b!4790048 () Bool)

(declare-fun res!2035505 () Bool)

(assert (=> b!4790048 (=> (not res!2035505) (not e!2990794))))

(assert (=> b!4790048 (= res!2035505 (contains!17754 (extractMap!2419 (toList!6863 lm!2473)) key!5896))))

(declare-fun b!4790049 () Bool)

(assert (=> b!4790049 (= e!2990794 (not e!2990797))))

(declare-fun res!2035507 () Bool)

(assert (=> b!4790049 (=> res!2035507 e!2990797)))

(declare-fun value!3111 () V!15965)

(declare-fun getValue!88 (List!54276 K!15719) V!15965)

(assert (=> b!4790049 (= res!2035507 (not (= (getValue!88 (toList!6863 lm!2473) key!5896) value!3111)))))

(assert (=> b!4790049 (containsKeyBiggerList!542 (toList!6863 lm!2473) key!5896)))

(declare-fun lt!1949716 () Unit!139755)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!282 (ListLongMap!5285 K!15719 Hashable!6892) Unit!139755)

(assert (=> b!4790049 (= lt!1949716 (lemmaInLongMapThenContainsKeyBiggerList!282 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2990798 () Bool)

(assert (=> b!4790049 e!2990798))

(declare-fun res!2035501 () Bool)

(assert (=> b!4790049 (=> (not res!2035501) (not e!2990798))))

(declare-fun lt!1949714 () (_ BitVec 64))

(declare-fun contains!17755 (ListLongMap!5285 (_ BitVec 64)) Bool)

(assert (=> b!4790049 (= res!2035501 (contains!17755 lm!2473 lt!1949714))))

(declare-fun hash!4920 (Hashable!6892 K!15719) (_ BitVec 64))

(assert (=> b!4790049 (= lt!1949714 (hash!4920 hashF!1559 key!5896))))

(declare-fun lt!1949717 () Unit!139755)

(declare-fun lemmaInGenericMapThenInLongMap!296 (ListLongMap!5285 K!15719 Hashable!6892) Unit!139755)

(assert (=> b!4790049 (= lt!1949717 (lemmaInGenericMapThenInLongMap!296 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4790050 () Bool)

(assert (=> b!4790050 (= e!2990797 e!2990795)))

(declare-fun res!2035502 () Bool)

(assert (=> b!4790050 (=> res!2035502 e!2990795)))

(assert (=> b!4790050 (= res!2035502 (not (forall!12213 (toList!6863 lt!1949713) lambda!230107)))))

(declare-fun lt!1949715 () Unit!139755)

(assert (=> b!4790050 (= lt!1949715 e!2990793)))

(declare-fun c!816437 () Bool)

(assert (=> b!4790050 (= c!816437 (not (contains!17755 lt!1949713 lt!1949714)))))

(declare-fun tail!9243 (ListLongMap!5285) ListLongMap!5285)

(assert (=> b!4790050 (= lt!1949713 (tail!9243 lm!2473))))

(declare-fun b!4790051 () Bool)

(declare-fun tp!1357872 () Bool)

(assert (=> b!4790051 (= e!2990796 tp!1357872)))

(declare-fun b!4790052 () Bool)

(declare-fun res!2035509 () Bool)

(assert (=> b!4790052 (=> (not res!2035509) (not e!2990794))))

(assert (=> b!4790052 (= res!2035509 (allKeysSameHashInMap!2297 lm!2473 hashF!1559))))

(declare-fun b!4790053 () Bool)

(assert (=> b!4790053 (= e!2990795 (forall!12213 (toList!6863 lt!1949713) lambda!230107))))

(declare-fun b!4790054 () Bool)

(declare-datatypes ((Option!13051 0))(
  ( (None!13050) (Some!13050 (v!48325 tuple2!56736)) )
))
(declare-fun isDefined!10193 (Option!13051) Bool)

(declare-fun getPair!864 (List!54275 K!15719) Option!13051)

(declare-fun apply!12953 (ListLongMap!5285 (_ BitVec 64)) List!54275)

(assert (=> b!4790054 (= e!2990798 (isDefined!10193 (getPair!864 (apply!12953 lm!2473 lt!1949714) key!5896)))))

(assert (= (and start!493010 res!2035503) b!4790052))

(assert (= (and b!4790052 res!2035509) b!4790048))

(assert (= (and b!4790048 res!2035505) b!4790049))

(assert (= (and b!4790049 res!2035501) b!4790054))

(assert (= (and b!4790049 (not res!2035507)) b!4790046))

(assert (= (and b!4790046 (not res!2035504)) b!4790045))

(assert (= (and b!4790045 (not res!2035510)) b!4790050))

(assert (= (and b!4790050 c!816437) b!4790047))

(assert (= (and b!4790050 (not c!816437)) b!4790042))

(assert (= (and b!4790050 (not res!2035502)) b!4790043))

(assert (= (and b!4790043 (not res!2035506)) b!4790044))

(assert (= (and b!4790044 (not res!2035508)) b!4790053))

(assert (= start!493010 b!4790051))

(declare-fun m!5769940 () Bool)

(assert (=> b!4790047 m!5769940))

(declare-fun m!5769942 () Bool)

(assert (=> b!4790047 m!5769942))

(assert (=> b!4790047 m!5769942))

(declare-fun m!5769944 () Bool)

(assert (=> b!4790047 m!5769944))

(declare-fun m!5769946 () Bool)

(assert (=> b!4790048 m!5769946))

(assert (=> b!4790048 m!5769946))

(declare-fun m!5769948 () Bool)

(assert (=> b!4790048 m!5769948))

(declare-fun m!5769950 () Bool)

(assert (=> b!4790049 m!5769950))

(declare-fun m!5769952 () Bool)

(assert (=> b!4790049 m!5769952))

(declare-fun m!5769954 () Bool)

(assert (=> b!4790049 m!5769954))

(declare-fun m!5769956 () Bool)

(assert (=> b!4790049 m!5769956))

(declare-fun m!5769958 () Bool)

(assert (=> b!4790049 m!5769958))

(declare-fun m!5769960 () Bool)

(assert (=> b!4790049 m!5769960))

(declare-fun m!5769962 () Bool)

(assert (=> b!4790054 m!5769962))

(assert (=> b!4790054 m!5769962))

(declare-fun m!5769964 () Bool)

(assert (=> b!4790054 m!5769964))

(assert (=> b!4790054 m!5769964))

(declare-fun m!5769966 () Bool)

(assert (=> b!4790054 m!5769966))

(declare-fun m!5769968 () Bool)

(assert (=> b!4790045 m!5769968))

(declare-fun m!5769970 () Bool)

(assert (=> b!4790050 m!5769970))

(declare-fun m!5769972 () Bool)

(assert (=> b!4790050 m!5769972))

(declare-fun m!5769974 () Bool)

(assert (=> b!4790050 m!5769974))

(assert (=> b!4790053 m!5769970))

(declare-fun m!5769976 () Bool)

(assert (=> b!4790043 m!5769976))

(declare-fun m!5769978 () Bool)

(assert (=> start!493010 m!5769978))

(declare-fun m!5769980 () Bool)

(assert (=> start!493010 m!5769980))

(declare-fun m!5769982 () Bool)

(assert (=> b!4790052 m!5769982))

(declare-fun m!5769984 () Bool)

(assert (=> b!4790044 m!5769984))

(check-sat (not b!4790044) (not b!4790048) (not b!4790043) tp_is_empty!33451 (not start!493010) (not b!4790047) (not b!4790054) tp_is_empty!33449 (not b!4790053) (not b!4790045) (not b!4790049) (not b!4790052) (not b!4790050) (not b!4790051))
(check-sat)
