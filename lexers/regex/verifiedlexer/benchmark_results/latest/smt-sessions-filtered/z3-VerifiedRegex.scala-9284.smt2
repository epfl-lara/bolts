; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!492822 () Bool)

(assert start!492822)

(declare-fun b!4789219 () Bool)

(declare-fun res!2035042 () Bool)

(declare-fun e!2990260 () Bool)

(assert (=> b!4789219 (=> res!2035042 e!2990260)))

(declare-datatypes ((K!15709 0))(
  ( (K!15710 (val!20873 Int)) )
))
(declare-datatypes ((V!15955 0))(
  ( (V!15956 (val!20874 Int)) )
))
(declare-datatypes ((tuple2!56720 0))(
  ( (tuple2!56721 (_1!31654 K!15709) (_2!31654 V!15955)) )
))
(declare-datatypes ((List!54265 0))(
  ( (Nil!54141) (Cons!54141 (h!60565 tuple2!56720) (t!361715 List!54265)) )
))
(declare-datatypes ((tuple2!56722 0))(
  ( (tuple2!56723 (_1!31655 (_ BitVec 64)) (_2!31655 List!54265)) )
))
(declare-datatypes ((List!54266 0))(
  ( (Nil!54142) (Cons!54142 (h!60566 tuple2!56722) (t!361716 List!54266)) )
))
(declare-datatypes ((ListLongMap!5277 0))(
  ( (ListLongMap!5278 (toList!6855 List!54266)) )
))
(declare-fun lm!2473 () ListLongMap!5277)

(declare-fun key!5896 () K!15709)

(declare-fun containsKey!3906 (List!54265 K!15709) Bool)

(assert (=> b!4789219 (= res!2035042 (containsKey!3906 (_2!31655 (h!60566 (toList!6855 lm!2473))) key!5896))))

(declare-fun b!4789220 () Bool)

(declare-fun e!2990262 () Bool)

(assert (=> b!4789220 (= e!2990260 e!2990262)))

(declare-fun res!2035043 () Bool)

(assert (=> b!4789220 (=> res!2035043 e!2990262)))

(declare-fun lambda!229931 () Int)

(declare-fun forall!12205 (List!54266 Int) Bool)

(assert (=> b!4789220 (= res!2035043 (not (forall!12205 (toList!6855 lm!2473) lambda!229931)))))

(declare-datatypes ((Unit!139685 0))(
  ( (Unit!139686) )
))
(declare-fun lt!1949212 () Unit!139685)

(declare-fun e!2990261 () Unit!139685)

(assert (=> b!4789220 (= lt!1949212 e!2990261)))

(declare-fun c!816283 () Bool)

(declare-fun lt!1949213 () ListLongMap!5277)

(declare-fun lt!1949216 () (_ BitVec 64))

(declare-fun contains!17741 (ListLongMap!5277 (_ BitVec 64)) Bool)

(assert (=> b!4789220 (= c!816283 (not (contains!17741 lt!1949213 lt!1949216)))))

(declare-fun tail!9237 (ListLongMap!5277) ListLongMap!5277)

(assert (=> b!4789220 (= lt!1949213 (tail!9237 lm!2473))))

(declare-fun b!4789221 () Bool)

(declare-fun res!2035036 () Bool)

(assert (=> b!4789221 (=> res!2035036 e!2990262)))

(declare-fun lt!1949209 () Bool)

(assert (=> b!4789221 (= res!2035036 lt!1949209)))

(declare-fun b!4789222 () Bool)

(declare-fun res!2035046 () Bool)

(declare-fun e!2990264 () Bool)

(assert (=> b!4789222 (=> (not res!2035046) (not e!2990264))))

(declare-datatypes ((Hashable!6888 0))(
  ( (HashableExt!6887 (__x!32911 Int)) )
))
(declare-fun hashF!1559 () Hashable!6888)

(declare-fun allKeysSameHashInMap!2293 (ListLongMap!5277 Hashable!6888) Bool)

(assert (=> b!4789222 (= res!2035046 (allKeysSameHashInMap!2293 lm!2473 hashF!1559))))

(declare-fun res!2035037 () Bool)

(assert (=> start!492822 (=> (not res!2035037) (not e!2990264))))

(assert (=> start!492822 (= res!2035037 (forall!12205 (toList!6855 lm!2473) lambda!229931))))

(assert (=> start!492822 e!2990264))

(declare-fun e!2990265 () Bool)

(declare-fun inv!69735 (ListLongMap!5277) Bool)

(assert (=> start!492822 (and (inv!69735 lm!2473) e!2990265)))

(assert (=> start!492822 true))

(declare-fun tp_is_empty!33433 () Bool)

(assert (=> start!492822 tp_is_empty!33433))

(declare-fun tp_is_empty!33435 () Bool)

(assert (=> start!492822 tp_is_empty!33435))

(declare-fun b!4789223 () Bool)

(declare-fun res!2035039 () Bool)

(assert (=> b!4789223 (=> (not res!2035039) (not e!2990264))))

(declare-datatypes ((ListMap!6327 0))(
  ( (ListMap!6328 (toList!6856 List!54265)) )
))
(declare-fun contains!17742 (ListMap!6327 K!15709) Bool)

(declare-fun extractMap!2415 (List!54266) ListMap!6327)

(assert (=> b!4789223 (= res!2035039 (contains!17742 (extractMap!2415 (toList!6855 lm!2473)) key!5896))))

(declare-fun b!4789224 () Bool)

(declare-fun e!2990263 () Bool)

(assert (=> b!4789224 (= e!2990263 true)))

(declare-fun lt!1949214 () Unit!139685)

(declare-fun lt!1949206 () tuple2!56722)

(declare-fun forallContained!4143 (List!54266 Int tuple2!56722) Unit!139685)

(assert (=> b!4789224 (= lt!1949214 (forallContained!4143 (toList!6855 lm!2473) lambda!229931 lt!1949206))))

(declare-fun e!2990266 () Bool)

(declare-fun b!4789225 () Bool)

(declare-datatypes ((Option!13043 0))(
  ( (None!13042) (Some!13042 (v!48313 tuple2!56720)) )
))
(declare-fun isDefined!10185 (Option!13043) Bool)

(declare-fun getPair!860 (List!54265 K!15709) Option!13043)

(declare-fun apply!12949 (ListLongMap!5277 (_ BitVec 64)) List!54265)

(assert (=> b!4789225 (= e!2990266 (isDefined!10185 (getPair!860 (apply!12949 lm!2473 lt!1949216) key!5896)))))

(declare-fun b!4789226 () Bool)

(assert (=> b!4789226 (= e!2990264 (not e!2990260))))

(declare-fun res!2035040 () Bool)

(assert (=> b!4789226 (=> res!2035040 e!2990260)))

(declare-fun value!3111 () V!15955)

(declare-fun getValue!84 (List!54266 K!15709) V!15955)

(assert (=> b!4789226 (= res!2035040 (not (= (getValue!84 (toList!6855 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!538 (List!54266 K!15709) Bool)

(assert (=> b!4789226 (containsKeyBiggerList!538 (toList!6855 lm!2473) key!5896)))

(declare-fun lt!1949207 () Unit!139685)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!278 (ListLongMap!5277 K!15709 Hashable!6888) Unit!139685)

(assert (=> b!4789226 (= lt!1949207 (lemmaInLongMapThenContainsKeyBiggerList!278 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4789226 e!2990266))

(declare-fun res!2035044 () Bool)

(assert (=> b!4789226 (=> (not res!2035044) (not e!2990266))))

(assert (=> b!4789226 (= res!2035044 (not lt!1949209))))

(assert (=> b!4789226 (= lt!1949209 (not (contains!17741 lm!2473 lt!1949216)))))

(declare-fun hash!4914 (Hashable!6888 K!15709) (_ BitVec 64))

(assert (=> b!4789226 (= lt!1949216 (hash!4914 hashF!1559 key!5896))))

(declare-fun lt!1949215 () Unit!139685)

(declare-fun lemmaInGenericMapThenInLongMap!292 (ListLongMap!5277 K!15709 Hashable!6888) Unit!139685)

(assert (=> b!4789226 (= lt!1949215 (lemmaInGenericMapThenInLongMap!292 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4789227 () Bool)

(declare-fun tp!1357838 () Bool)

(assert (=> b!4789227 (= e!2990265 tp!1357838)))

(declare-fun b!4789228 () Bool)

(assert (=> b!4789228 (= e!2990262 e!2990263)))

(declare-fun res!2035045 () Bool)

(assert (=> b!4789228 (=> res!2035045 e!2990263)))

(declare-fun lt!1949217 () List!54265)

(assert (=> b!4789228 (= res!2035045 (not (isDefined!10185 (getPair!860 lt!1949217 key!5896))))))

(declare-fun lt!1949208 () Unit!139685)

(assert (=> b!4789228 (= lt!1949208 (forallContained!4143 (toList!6855 lm!2473) lambda!229931 lt!1949206))))

(declare-fun contains!17743 (List!54266 tuple2!56722) Bool)

(assert (=> b!4789228 (contains!17743 (toList!6855 lm!2473) lt!1949206)))

(assert (=> b!4789228 (= lt!1949206 (tuple2!56723 lt!1949216 lt!1949217))))

(declare-fun lt!1949211 () Unit!139685)

(declare-fun lemmaGetValueImpliesTupleContained!637 (ListLongMap!5277 (_ BitVec 64) List!54265) Unit!139685)

(assert (=> b!4789228 (= lt!1949211 (lemmaGetValueImpliesTupleContained!637 lm!2473 lt!1949216 lt!1949217))))

(assert (=> b!4789228 (= lt!1949217 (apply!12949 lm!2473 lt!1949216))))

(declare-fun b!4789229 () Bool)

(declare-fun res!2035038 () Bool)

(assert (=> b!4789229 (=> res!2035038 e!2990263)))

(assert (=> b!4789229 (= res!2035038 (not (forall!12205 (toList!6855 lm!2473) lambda!229931)))))

(declare-fun b!4789230 () Bool)

(declare-fun res!2035041 () Bool)

(assert (=> b!4789230 (=> res!2035041 e!2990260)))

(get-info :version)

(assert (=> b!4789230 (= res!2035041 (not ((_ is Cons!54142) (toList!6855 lm!2473))))))

(declare-fun b!4789231 () Bool)

(declare-fun lt!1949210 () Unit!139685)

(assert (=> b!4789231 (= e!2990261 lt!1949210)))

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!14 (ListLongMap!5277 K!15709 Hashable!6888) Unit!139685)

(assert (=> b!4789231 (= lt!1949210 (lemmaHashNotInLongMapThenNotInGenerated!14 lt!1949213 key!5896 hashF!1559))))

(assert (=> b!4789231 (not (contains!17742 (extractMap!2415 (toList!6855 lt!1949213)) key!5896))))

(declare-fun b!4789232 () Bool)

(declare-fun Unit!139687 () Unit!139685)

(assert (=> b!4789232 (= e!2990261 Unit!139687)))

(assert (= (and start!492822 res!2035037) b!4789222))

(assert (= (and b!4789222 res!2035046) b!4789223))

(assert (= (and b!4789223 res!2035039) b!4789226))

(assert (= (and b!4789226 res!2035044) b!4789225))

(assert (= (and b!4789226 (not res!2035040)) b!4789230))

(assert (= (and b!4789230 (not res!2035041)) b!4789219))

(assert (= (and b!4789219 (not res!2035042)) b!4789220))

(assert (= (and b!4789220 c!816283) b!4789231))

(assert (= (and b!4789220 (not c!816283)) b!4789232))

(assert (= (and b!4789220 (not res!2035043)) b!4789221))

(assert (= (and b!4789221 (not res!2035036)) b!4789228))

(assert (= (and b!4789228 (not res!2035045)) b!4789229))

(assert (= (and b!4789229 (not res!2035038)) b!4789224))

(assert (= start!492822 b!4789227))

(declare-fun m!5768792 () Bool)

(assert (=> b!4789219 m!5768792))

(declare-fun m!5768794 () Bool)

(assert (=> b!4789220 m!5768794))

(declare-fun m!5768796 () Bool)

(assert (=> b!4789220 m!5768796))

(declare-fun m!5768798 () Bool)

(assert (=> b!4789220 m!5768798))

(declare-fun m!5768800 () Bool)

(assert (=> b!4789223 m!5768800))

(assert (=> b!4789223 m!5768800))

(declare-fun m!5768802 () Bool)

(assert (=> b!4789223 m!5768802))

(assert (=> start!492822 m!5768794))

(declare-fun m!5768804 () Bool)

(assert (=> start!492822 m!5768804))

(declare-fun m!5768806 () Bool)

(assert (=> b!4789231 m!5768806))

(declare-fun m!5768808 () Bool)

(assert (=> b!4789231 m!5768808))

(assert (=> b!4789231 m!5768808))

(declare-fun m!5768810 () Bool)

(assert (=> b!4789231 m!5768810))

(declare-fun m!5768812 () Bool)

(assert (=> b!4789228 m!5768812))

(declare-fun m!5768814 () Bool)

(assert (=> b!4789228 m!5768814))

(declare-fun m!5768816 () Bool)

(assert (=> b!4789228 m!5768816))

(declare-fun m!5768818 () Bool)

(assert (=> b!4789228 m!5768818))

(assert (=> b!4789228 m!5768814))

(declare-fun m!5768820 () Bool)

(assert (=> b!4789228 m!5768820))

(declare-fun m!5768822 () Bool)

(assert (=> b!4789228 m!5768822))

(assert (=> b!4789229 m!5768794))

(assert (=> b!4789225 m!5768822))

(assert (=> b!4789225 m!5768822))

(declare-fun m!5768824 () Bool)

(assert (=> b!4789225 m!5768824))

(assert (=> b!4789225 m!5768824))

(declare-fun m!5768826 () Bool)

(assert (=> b!4789225 m!5768826))

(declare-fun m!5768828 () Bool)

(assert (=> b!4789226 m!5768828))

(declare-fun m!5768830 () Bool)

(assert (=> b!4789226 m!5768830))

(declare-fun m!5768832 () Bool)

(assert (=> b!4789226 m!5768832))

(declare-fun m!5768834 () Bool)

(assert (=> b!4789226 m!5768834))

(declare-fun m!5768836 () Bool)

(assert (=> b!4789226 m!5768836))

(declare-fun m!5768838 () Bool)

(assert (=> b!4789226 m!5768838))

(assert (=> b!4789224 m!5768818))

(declare-fun m!5768840 () Bool)

(assert (=> b!4789222 m!5768840))

(check-sat (not b!4789225) (not b!4789231) (not b!4789229) (not b!4789226) (not b!4789228) (not b!4789227) tp_is_empty!33435 (not b!4789224) (not b!4789223) (not start!492822) (not b!4789222) (not b!4789220) (not b!4789219) tp_is_empty!33433)
(check-sat)
