; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!494842 () Bool)

(assert start!494842)

(declare-fun b!4798006 () Bool)

(declare-fun e!2996074 () Bool)

(declare-fun lt!1954719 () Bool)

(assert (=> b!4798006 (= e!2996074 lt!1954719)))

(declare-fun b!4798007 () Bool)

(declare-fun res!2040255 () Bool)

(declare-fun e!2996076 () Bool)

(assert (=> b!4798007 (=> (not res!2040255) (not e!2996076))))

(declare-datatypes ((K!15864 0))(
  ( (K!15865 (val!20997 Int)) )
))
(declare-datatypes ((V!16110 0))(
  ( (V!16111 (val!20998 Int)) )
))
(declare-datatypes ((tuple2!56968 0))(
  ( (tuple2!56969 (_1!31778 K!15864) (_2!31778 V!16110)) )
))
(declare-datatypes ((List!54414 0))(
  ( (Nil!54290) (Cons!54290 (h!60722 tuple2!56968) (t!361864 List!54414)) )
))
(declare-datatypes ((tuple2!56970 0))(
  ( (tuple2!56971 (_1!31779 (_ BitVec 64)) (_2!31779 List!54414)) )
))
(declare-datatypes ((List!54415 0))(
  ( (Nil!54291) (Cons!54291 (h!60723 tuple2!56970) (t!361865 List!54415)) )
))
(declare-datatypes ((ListLongMap!5401 0))(
  ( (ListLongMap!5402 (toList!6979 List!54415)) )
))
(declare-fun lm!2473 () ListLongMap!5401)

(declare-datatypes ((Hashable!6950 0))(
  ( (HashableExt!6949 (__x!32973 Int)) )
))
(declare-fun hashF!1559 () Hashable!6950)

(declare-fun allKeysSameHashInMap!2355 (ListLongMap!5401 Hashable!6950) Bool)

(assert (=> b!4798007 (= res!2040255 (allKeysSameHashInMap!2355 lm!2473 hashF!1559))))

(declare-fun b!4798008 () Bool)

(declare-fun e!2996078 () Bool)

(declare-fun tp!1358260 () Bool)

(assert (=> b!4798008 (= e!2996078 tp!1358260)))

(declare-fun b!4798009 () Bool)

(declare-fun e!2996075 () Bool)

(assert (=> b!4798009 (= e!2996075 e!2996074)))

(declare-fun res!2040256 () Bool)

(assert (=> b!4798009 (=> res!2040256 e!2996074)))

(declare-fun lambda!231783 () Int)

(declare-fun forall!12305 (List!54415 Int) Bool)

(assert (=> b!4798009 (= res!2040256 (not (forall!12305 (toList!6979 lm!2473) lambda!231783)))))

(declare-datatypes ((Unit!140423 0))(
  ( (Unit!140424) )
))
(declare-fun lt!1954722 () Unit!140423)

(declare-fun e!2996077 () Unit!140423)

(assert (=> b!4798009 (= lt!1954722 e!2996077)))

(declare-fun c!817749 () Bool)

(declare-fun lt!1954720 () ListLongMap!5401)

(declare-fun lt!1954725 () (_ BitVec 64))

(declare-fun contains!17933 (ListLongMap!5401 (_ BitVec 64)) Bool)

(assert (=> b!4798009 (= c!817749 (not (contains!17933 lt!1954720 lt!1954725)))))

(declare-fun tail!9307 (ListLongMap!5401) ListLongMap!5401)

(assert (=> b!4798009 (= lt!1954720 (tail!9307 lm!2473))))

(declare-fun b!4798010 () Bool)

(assert (=> b!4798010 (= e!2996076 (not e!2996075))))

(declare-fun res!2040249 () Bool)

(assert (=> b!4798010 (=> res!2040249 e!2996075)))

(declare-fun value!3111 () V!16110)

(declare-fun key!5896 () K!15864)

(declare-fun getValue!138 (List!54415 K!15864) V!16110)

(assert (=> b!4798010 (= res!2040249 (not (= (getValue!138 (toList!6979 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!592 (List!54415 K!15864) Bool)

(assert (=> b!4798010 (containsKeyBiggerList!592 (toList!6979 lm!2473) key!5896)))

(declare-fun lt!1954723 () Unit!140423)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!332 (ListLongMap!5401 K!15864 Hashable!6950) Unit!140423)

(assert (=> b!4798010 (= lt!1954723 (lemmaInLongMapThenContainsKeyBiggerList!332 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2996073 () Bool)

(assert (=> b!4798010 e!2996073))

(declare-fun res!2040251 () Bool)

(assert (=> b!4798010 (=> (not res!2040251) (not e!2996073))))

(assert (=> b!4798010 (= res!2040251 lt!1954719)))

(assert (=> b!4798010 (= lt!1954719 (contains!17933 lm!2473 lt!1954725))))

(declare-fun hash!4999 (Hashable!6950 K!15864) (_ BitVec 64))

(assert (=> b!4798010 (= lt!1954725 (hash!4999 hashF!1559 key!5896))))

(declare-fun lt!1954724 () Unit!140423)

(declare-fun lemmaInGenericMapThenInLongMap!354 (ListLongMap!5401 K!15864 Hashable!6950) Unit!140423)

(assert (=> b!4798010 (= lt!1954724 (lemmaInGenericMapThenInLongMap!354 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4798011 () Bool)

(declare-fun res!2040254 () Bool)

(assert (=> b!4798011 (=> res!2040254 e!2996075)))

(declare-fun containsKey!4004 (List!54414 K!15864) Bool)

(assert (=> b!4798011 (= res!2040254 (containsKey!4004 (_2!31779 (h!60723 (toList!6979 lm!2473))) key!5896))))

(declare-fun b!4798012 () Bool)

(declare-datatypes ((Option!13154 0))(
  ( (None!13153) (Some!13153 (v!48466 tuple2!56968)) )
))
(declare-fun isDefined!10295 (Option!13154) Bool)

(declare-fun getPair!922 (List!54414 K!15864) Option!13154)

(declare-fun apply!13023 (ListLongMap!5401 (_ BitVec 64)) List!54414)

(assert (=> b!4798012 (= e!2996073 (isDefined!10295 (getPair!922 (apply!13023 lm!2473 lt!1954725) key!5896)))))

(declare-fun b!4798013 () Bool)

(declare-fun Unit!140425 () Unit!140423)

(assert (=> b!4798013 (= e!2996077 Unit!140425)))

(declare-fun b!4798014 () Bool)

(declare-fun res!2040252 () Bool)

(assert (=> b!4798014 (=> (not res!2040252) (not e!2996076))))

(declare-datatypes ((ListMap!6451 0))(
  ( (ListMap!6452 (toList!6980 List!54414)) )
))
(declare-fun contains!17934 (ListMap!6451 K!15864) Bool)

(declare-fun extractMap!2477 (List!54415) ListMap!6451)

(assert (=> b!4798014 (= res!2040252 (contains!17934 (extractMap!2477 (toList!6979 lm!2473)) key!5896))))

(declare-fun b!4798015 () Bool)

(declare-fun res!2040253 () Bool)

(assert (=> b!4798015 (=> res!2040253 e!2996075)))

(get-info :version)

(assert (=> b!4798015 (= res!2040253 (not ((_ is Cons!54291) (toList!6979 lm!2473))))))

(declare-fun b!4798016 () Bool)

(declare-fun lt!1954721 () Unit!140423)

(assert (=> b!4798016 (= e!2996077 lt!1954721)))

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!48 (ListLongMap!5401 K!15864 Hashable!6950) Unit!140423)

(assert (=> b!4798016 (= lt!1954721 (lemmaHashNotInLongMapThenNotInGenerated!48 lt!1954720 key!5896 hashF!1559))))

(assert (=> b!4798016 (not (contains!17934 (extractMap!2477 (toList!6979 lt!1954720)) key!5896))))

(declare-fun res!2040250 () Bool)

(assert (=> start!494842 (=> (not res!2040250) (not e!2996076))))

(assert (=> start!494842 (= res!2040250 (forall!12305 (toList!6979 lm!2473) lambda!231783))))

(assert (=> start!494842 e!2996076))

(declare-fun inv!69890 (ListLongMap!5401) Bool)

(assert (=> start!494842 (and (inv!69890 lm!2473) e!2996078)))

(assert (=> start!494842 true))

(declare-fun tp_is_empty!33661 () Bool)

(assert (=> start!494842 tp_is_empty!33661))

(declare-fun tp_is_empty!33663 () Bool)

(assert (=> start!494842 tp_is_empty!33663))

(assert (= (and start!494842 res!2040250) b!4798007))

(assert (= (and b!4798007 res!2040255) b!4798014))

(assert (= (and b!4798014 res!2040252) b!4798010))

(assert (= (and b!4798010 res!2040251) b!4798012))

(assert (= (and b!4798010 (not res!2040249)) b!4798015))

(assert (= (and b!4798015 (not res!2040253)) b!4798011))

(assert (= (and b!4798011 (not res!2040254)) b!4798009))

(assert (= (and b!4798009 c!817749) b!4798016))

(assert (= (and b!4798009 (not c!817749)) b!4798013))

(assert (= (and b!4798009 (not res!2040256)) b!4798006))

(assert (= start!494842 b!4798008))

(declare-fun m!5780634 () Bool)

(assert (=> b!4798009 m!5780634))

(declare-fun m!5780636 () Bool)

(assert (=> b!4798009 m!5780636))

(declare-fun m!5780638 () Bool)

(assert (=> b!4798009 m!5780638))

(declare-fun m!5780640 () Bool)

(assert (=> b!4798007 m!5780640))

(declare-fun m!5780642 () Bool)

(assert (=> b!4798016 m!5780642))

(declare-fun m!5780644 () Bool)

(assert (=> b!4798016 m!5780644))

(assert (=> b!4798016 m!5780644))

(declare-fun m!5780646 () Bool)

(assert (=> b!4798016 m!5780646))

(declare-fun m!5780648 () Bool)

(assert (=> b!4798014 m!5780648))

(assert (=> b!4798014 m!5780648))

(declare-fun m!5780650 () Bool)

(assert (=> b!4798014 m!5780650))

(declare-fun m!5780652 () Bool)

(assert (=> b!4798010 m!5780652))

(declare-fun m!5780654 () Bool)

(assert (=> b!4798010 m!5780654))

(declare-fun m!5780656 () Bool)

(assert (=> b!4798010 m!5780656))

(declare-fun m!5780658 () Bool)

(assert (=> b!4798010 m!5780658))

(declare-fun m!5780660 () Bool)

(assert (=> b!4798010 m!5780660))

(declare-fun m!5780662 () Bool)

(assert (=> b!4798010 m!5780662))

(declare-fun m!5780664 () Bool)

(assert (=> b!4798012 m!5780664))

(assert (=> b!4798012 m!5780664))

(declare-fun m!5780666 () Bool)

(assert (=> b!4798012 m!5780666))

(assert (=> b!4798012 m!5780666))

(declare-fun m!5780668 () Bool)

(assert (=> b!4798012 m!5780668))

(declare-fun m!5780670 () Bool)

(assert (=> b!4798011 m!5780670))

(assert (=> start!494842 m!5780634))

(declare-fun m!5780672 () Bool)

(assert (=> start!494842 m!5780672))

(check-sat (not start!494842) tp_is_empty!33663 (not b!4798012) (not b!4798007) (not b!4798014) (not b!4798009) tp_is_empty!33661 (not b!4798010) (not b!4798016) (not b!4798008) (not b!4798011))
(check-sat)
