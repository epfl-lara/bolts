; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!493014 () Bool)

(assert start!493014)

(declare-fun b!4790120 () Bool)

(declare-datatypes ((Unit!139761 0))(
  ( (Unit!139762) )
))
(declare-fun e!2990834 () Unit!139761)

(declare-fun Unit!139763 () Unit!139761)

(assert (=> b!4790120 (= e!2990834 Unit!139763)))

(declare-fun b!4790121 () Bool)

(declare-fun lt!1949752 () Unit!139761)

(assert (=> b!4790121 (= e!2990834 lt!1949752)))

(declare-datatypes ((Hashable!6894 0))(
  ( (HashableExt!6893 (__x!32917 Int)) )
))
(declare-fun hashF!1559 () Hashable!6894)

(declare-datatypes ((K!15724 0))(
  ( (K!15725 (val!20885 Int)) )
))
(declare-fun key!5896 () K!15724)

(declare-datatypes ((V!15970 0))(
  ( (V!15971 (val!20886 Int)) )
))
(declare-datatypes ((tuple2!56744 0))(
  ( (tuple2!56745 (_1!31666 K!15724) (_2!31666 V!15970)) )
))
(declare-datatypes ((List!54279 0))(
  ( (Nil!54155) (Cons!54155 (h!60579 tuple2!56744) (t!361729 List!54279)) )
))
(declare-datatypes ((tuple2!56746 0))(
  ( (tuple2!56747 (_1!31667 (_ BitVec 64)) (_2!31667 List!54279)) )
))
(declare-datatypes ((List!54280 0))(
  ( (Nil!54156) (Cons!54156 (h!60580 tuple2!56746) (t!361730 List!54280)) )
))
(declare-datatypes ((ListLongMap!5289 0))(
  ( (ListLongMap!5290 (toList!6867 List!54280)) )
))
(declare-fun lt!1949753 () ListLongMap!5289)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!20 (ListLongMap!5289 K!15724 Hashable!6894) Unit!139761)

(assert (=> b!4790121 (= lt!1949752 (lemmaHashNotInLongMapThenNotInGenerated!20 lt!1949753 key!5896 hashF!1559))))

(declare-datatypes ((ListMap!6339 0))(
  ( (ListMap!6340 (toList!6868 List!54279)) )
))
(declare-fun contains!17758 (ListMap!6339 K!15724) Bool)

(declare-fun extractMap!2421 (List!54280) ListMap!6339)

(assert (=> b!4790121 (not (contains!17758 (extractMap!2421 (toList!6867 lt!1949753)) key!5896))))

(declare-fun b!4790122 () Bool)

(declare-fun e!2990833 () Bool)

(declare-fun tp!1357878 () Bool)

(assert (=> b!4790122 (= e!2990833 tp!1357878)))

(declare-fun b!4790123 () Bool)

(declare-fun res!2035570 () Bool)

(declare-fun e!2990829 () Bool)

(assert (=> b!4790123 (=> (not res!2035570) (not e!2990829))))

(declare-fun lm!2473 () ListLongMap!5289)

(declare-fun allKeysSameHashInMap!2299 (ListLongMap!5289 Hashable!6894) Bool)

(assert (=> b!4790123 (= res!2035570 (allKeysSameHashInMap!2299 lm!2473 hashF!1559))))

(declare-fun res!2035563 () Bool)

(assert (=> start!493014 (=> (not res!2035563) (not e!2990829))))

(declare-fun lambda!230117 () Int)

(declare-fun forall!12215 (List!54280 Int) Bool)

(assert (=> start!493014 (= res!2035563 (forall!12215 (toList!6867 lm!2473) lambda!230117))))

(assert (=> start!493014 e!2990829))

(declare-fun inv!69750 (ListLongMap!5289) Bool)

(assert (=> start!493014 (and (inv!69750 lm!2473) e!2990833)))

(assert (=> start!493014 true))

(declare-fun tp_is_empty!33457 () Bool)

(assert (=> start!493014 tp_is_empty!33457))

(declare-fun tp_is_empty!33459 () Bool)

(assert (=> start!493014 tp_is_empty!33459))

(declare-fun b!4790124 () Bool)

(declare-fun res!2035569 () Bool)

(declare-fun e!2990830 () Bool)

(assert (=> b!4790124 (=> res!2035569 e!2990830)))

(get-info :version)

(assert (=> b!4790124 (= res!2035569 (not ((_ is Cons!54156) (toList!6867 lm!2473))))))

(declare-fun b!4790125 () Bool)

(declare-fun res!2035564 () Bool)

(declare-fun e!2990831 () Bool)

(assert (=> b!4790125 (=> res!2035564 e!2990831)))

(assert (=> b!4790125 (= res!2035564 (not (allKeysSameHashInMap!2299 lt!1949753 hashF!1559)))))

(declare-fun b!4790126 () Bool)

(declare-fun lt!1949748 () (_ BitVec 64))

(declare-fun e!2990832 () Bool)

(declare-datatypes ((Option!13053 0))(
  ( (None!13052) (Some!13052 (v!48327 tuple2!56744)) )
))
(declare-fun isDefined!10195 (Option!13053) Bool)

(declare-fun getPair!866 (List!54279 K!15724) Option!13053)

(declare-fun apply!12955 (ListLongMap!5289 (_ BitVec 64)) List!54279)

(assert (=> b!4790126 (= e!2990832 (isDefined!10195 (getPair!866 (apply!12955 lm!2473 lt!1949748) key!5896)))))

(declare-fun b!4790127 () Bool)

(assert (=> b!4790127 (= e!2990831 true)))

(declare-fun b!4790128 () Bool)

(declare-fun res!2035561 () Bool)

(assert (=> b!4790128 (=> (not res!2035561) (not e!2990829))))

(assert (=> b!4790128 (= res!2035561 (contains!17758 (extractMap!2421 (toList!6867 lm!2473)) key!5896))))

(declare-fun b!4790129 () Bool)

(declare-fun res!2035562 () Bool)

(assert (=> b!4790129 (=> res!2035562 e!2990831)))

(declare-fun containsKeyBiggerList!544 (List!54280 K!15724) Bool)

(assert (=> b!4790129 (= res!2035562 (not (containsKeyBiggerList!544 (toList!6867 lt!1949753) key!5896)))))

(declare-fun b!4790130 () Bool)

(assert (=> b!4790130 (= e!2990830 e!2990831)))

(declare-fun res!2035568 () Bool)

(assert (=> b!4790130 (=> res!2035568 e!2990831)))

(assert (=> b!4790130 (= res!2035568 (not (forall!12215 (toList!6867 lt!1949753) lambda!230117)))))

(declare-fun lt!1949750 () Unit!139761)

(assert (=> b!4790130 (= lt!1949750 e!2990834)))

(declare-fun c!816443 () Bool)

(declare-fun contains!17759 (ListLongMap!5289 (_ BitVec 64)) Bool)

(assert (=> b!4790130 (= c!816443 (not (contains!17759 lt!1949753 lt!1949748)))))

(declare-fun tail!9245 (ListLongMap!5289) ListLongMap!5289)

(assert (=> b!4790130 (= lt!1949753 (tail!9245 lm!2473))))

(declare-fun b!4790131 () Bool)

(declare-fun res!2035566 () Bool)

(assert (=> b!4790131 (=> res!2035566 e!2990830)))

(declare-fun containsKey!3916 (List!54279 K!15724) Bool)

(assert (=> b!4790131 (= res!2035566 (containsKey!3916 (_2!31667 (h!60580 (toList!6867 lm!2473))) key!5896))))

(declare-fun b!4790132 () Bool)

(assert (=> b!4790132 (= e!2990829 (not e!2990830))))

(declare-fun res!2035567 () Bool)

(assert (=> b!4790132 (=> res!2035567 e!2990830)))

(declare-fun value!3111 () V!15970)

(declare-fun getValue!90 (List!54280 K!15724) V!15970)

(assert (=> b!4790132 (= res!2035567 (not (= (getValue!90 (toList!6867 lm!2473) key!5896) value!3111)))))

(assert (=> b!4790132 (containsKeyBiggerList!544 (toList!6867 lm!2473) key!5896)))

(declare-fun lt!1949751 () Unit!139761)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!284 (ListLongMap!5289 K!15724 Hashable!6894) Unit!139761)

(assert (=> b!4790132 (= lt!1949751 (lemmaInLongMapThenContainsKeyBiggerList!284 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4790132 e!2990832))

(declare-fun res!2035565 () Bool)

(assert (=> b!4790132 (=> (not res!2035565) (not e!2990832))))

(assert (=> b!4790132 (= res!2035565 (contains!17759 lm!2473 lt!1949748))))

(declare-fun hash!4922 (Hashable!6894 K!15724) (_ BitVec 64))

(assert (=> b!4790132 (= lt!1949748 (hash!4922 hashF!1559 key!5896))))

(declare-fun lt!1949749 () Unit!139761)

(declare-fun lemmaInGenericMapThenInLongMap!298 (ListLongMap!5289 K!15724 Hashable!6894) Unit!139761)

(assert (=> b!4790132 (= lt!1949749 (lemmaInGenericMapThenInLongMap!298 lm!2473 key!5896 hashF!1559))))

(assert (= (and start!493014 res!2035563) b!4790123))

(assert (= (and b!4790123 res!2035570) b!4790128))

(assert (= (and b!4790128 res!2035561) b!4790132))

(assert (= (and b!4790132 res!2035565) b!4790126))

(assert (= (and b!4790132 (not res!2035567)) b!4790124))

(assert (= (and b!4790124 (not res!2035569)) b!4790131))

(assert (= (and b!4790131 (not res!2035566)) b!4790130))

(assert (= (and b!4790130 c!816443) b!4790121))

(assert (= (and b!4790130 (not c!816443)) b!4790120))

(assert (= (and b!4790130 (not res!2035568)) b!4790125))

(assert (= (and b!4790125 (not res!2035564)) b!4790129))

(assert (= (and b!4790129 (not res!2035562)) b!4790127))

(assert (= start!493014 b!4790122))

(declare-fun m!5770032 () Bool)

(assert (=> b!4790128 m!5770032))

(assert (=> b!4790128 m!5770032))

(declare-fun m!5770034 () Bool)

(assert (=> b!4790128 m!5770034))

(declare-fun m!5770036 () Bool)

(assert (=> b!4790129 m!5770036))

(declare-fun m!5770038 () Bool)

(assert (=> b!4790121 m!5770038))

(declare-fun m!5770040 () Bool)

(assert (=> b!4790121 m!5770040))

(assert (=> b!4790121 m!5770040))

(declare-fun m!5770042 () Bool)

(assert (=> b!4790121 m!5770042))

(declare-fun m!5770044 () Bool)

(assert (=> b!4790131 m!5770044))

(declare-fun m!5770046 () Bool)

(assert (=> b!4790123 m!5770046))

(declare-fun m!5770048 () Bool)

(assert (=> b!4790132 m!5770048))

(declare-fun m!5770050 () Bool)

(assert (=> b!4790132 m!5770050))

(declare-fun m!5770052 () Bool)

(assert (=> b!4790132 m!5770052))

(declare-fun m!5770054 () Bool)

(assert (=> b!4790132 m!5770054))

(declare-fun m!5770056 () Bool)

(assert (=> b!4790132 m!5770056))

(declare-fun m!5770058 () Bool)

(assert (=> b!4790132 m!5770058))

(declare-fun m!5770060 () Bool)

(assert (=> b!4790130 m!5770060))

(declare-fun m!5770062 () Bool)

(assert (=> b!4790130 m!5770062))

(declare-fun m!5770064 () Bool)

(assert (=> b!4790130 m!5770064))

(declare-fun m!5770066 () Bool)

(assert (=> start!493014 m!5770066))

(declare-fun m!5770068 () Bool)

(assert (=> start!493014 m!5770068))

(declare-fun m!5770070 () Bool)

(assert (=> b!4790126 m!5770070))

(assert (=> b!4790126 m!5770070))

(declare-fun m!5770072 () Bool)

(assert (=> b!4790126 m!5770072))

(assert (=> b!4790126 m!5770072))

(declare-fun m!5770074 () Bool)

(assert (=> b!4790126 m!5770074))

(declare-fun m!5770076 () Bool)

(assert (=> b!4790125 m!5770076))

(check-sat (not b!4790125) (not b!4790121) tp_is_empty!33459 tp_is_empty!33457 (not b!4790130) (not b!4790131) (not b!4790132) (not b!4790129) (not b!4790122) (not start!493014) (not b!4790123) (not b!4790128) (not b!4790126))
(check-sat)
