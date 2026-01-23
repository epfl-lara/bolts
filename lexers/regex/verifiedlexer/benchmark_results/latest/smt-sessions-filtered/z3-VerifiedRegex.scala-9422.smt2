; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!498298 () Bool)

(assert start!498298)

(declare-fun b!4815885 () Bool)

(declare-fun res!2048618 () Bool)

(declare-fun e!3008842 () Bool)

(assert (=> b!4815885 (=> (not res!2048618) (not e!3008842))))

(declare-datatypes ((K!16399 0))(
  ( (K!16400 (val!21425 Int)) )
))
(declare-datatypes ((V!16645 0))(
  ( (V!16646 (val!21426 Int)) )
))
(declare-datatypes ((tuple2!57786 0))(
  ( (tuple2!57787 (_1!32187 K!16399) (_2!32187 V!16645)) )
))
(declare-datatypes ((List!54868 0))(
  ( (Nil!54744) (Cons!54744 (h!61176 tuple2!57786) (t!362364 List!54868)) )
))
(declare-datatypes ((tuple2!57788 0))(
  ( (tuple2!57789 (_1!32188 (_ BitVec 64)) (_2!32188 List!54868)) )
))
(declare-datatypes ((List!54869 0))(
  ( (Nil!54745) (Cons!54745 (h!61177 tuple2!57788) (t!362365 List!54869)) )
))
(declare-datatypes ((ListLongMap!5791 0))(
  ( (ListLongMap!5792 (toList!7311 List!54869)) )
))
(declare-fun lm!2251 () ListLongMap!5791)

(declare-fun key!5322 () K!16399)

(declare-datatypes ((ListMap!6725 0))(
  ( (ListMap!6726 (toList!7312 List!54868)) )
))
(declare-fun contains!18557 (ListMap!6725 K!16399) Bool)

(declare-fun extractMap!2614 (List!54869) ListMap!6725)

(assert (=> b!4815885 (= res!2048618 (contains!18557 (extractMap!2614 (toList!7311 lm!2251)) key!5322))))

(declare-fun b!4815886 () Bool)

(declare-fun res!2048620 () Bool)

(assert (=> b!4815886 (=> (not res!2048620) (not e!3008842))))

(declare-datatypes ((Hashable!7164 0))(
  ( (HashableExt!7163 (__x!33439 Int)) )
))
(declare-fun hashF!1486 () Hashable!7164)

(declare-fun allKeysSameHashInMap!2480 (ListLongMap!5791 Hashable!7164) Bool)

(assert (=> b!4815886 (= res!2048620 (allKeysSameHashInMap!2480 lm!2251 hashF!1486))))

(declare-fun b!4815887 () Bool)

(declare-datatypes ((Unit!141940 0))(
  ( (Unit!141941) )
))
(declare-fun e!3008845 () Unit!141940)

(declare-fun Unit!141942 () Unit!141940)

(assert (=> b!4815887 (= e!3008845 Unit!141942)))

(declare-fun lt!1966699 () Unit!141940)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!436 (ListLongMap!5791 K!16399 Hashable!7164) Unit!141940)

(assert (=> b!4815887 (= lt!1966699 (lemmaNotInItsHashBucketThenNotInMap!436 lm!2251 key!5322 hashF!1486))))

(assert (=> b!4815887 false))

(declare-fun b!4815888 () Bool)

(declare-fun e!3008843 () Bool)

(declare-fun tp!1361873 () Bool)

(assert (=> b!4815888 (= e!3008843 tp!1361873)))

(declare-fun res!2048621 () Bool)

(assert (=> start!498298 (=> (not res!2048621) (not e!3008842))))

(declare-fun lambda!234508 () Int)

(declare-fun forall!12470 (List!54869 Int) Bool)

(assert (=> start!498298 (= res!2048621 (forall!12470 (toList!7311 lm!2251) lambda!234508))))

(assert (=> start!498298 e!3008842))

(declare-fun inv!70299 (ListLongMap!5791) Bool)

(assert (=> start!498298 (and (inv!70299 lm!2251) e!3008843)))

(assert (=> start!498298 true))

(declare-fun tp_is_empty!34201 () Bool)

(assert (=> start!498298 tp_is_empty!34201))

(declare-fun b!4815889 () Bool)

(declare-fun Unit!141943 () Unit!141940)

(assert (=> b!4815889 (= e!3008845 Unit!141943)))

(declare-fun b!4815890 () Bool)

(declare-fun e!3008844 () Bool)

(assert (=> b!4815890 (= e!3008844 true)))

(declare-fun lt!1966702 () tuple2!57788)

(declare-fun lt!1966700 () Unit!141940)

(declare-fun forallContained!4332 (List!54869 Int tuple2!57788) Unit!141940)

(assert (=> b!4815890 (= lt!1966700 (forallContained!4332 (toList!7311 lm!2251) lambda!234508 lt!1966702))))

(declare-fun b!4815891 () Bool)

(assert (=> b!4815891 (= e!3008842 (not e!3008844))))

(declare-fun res!2048619 () Bool)

(assert (=> b!4815891 (=> res!2048619 e!3008844)))

(declare-datatypes ((Option!13416 0))(
  ( (None!13415) (Some!13415 (v!49066 tuple2!57786)) )
))
(declare-fun lt!1966697 () Option!13416)

(declare-fun isDefined!10540 (Option!13416) Bool)

(assert (=> b!4815891 (= res!2048619 (not (isDefined!10540 lt!1966697)))))

(declare-fun lt!1966704 () Unit!141940)

(assert (=> b!4815891 (= lt!1966704 e!3008845)))

(declare-fun c!820792 () Bool)

(declare-fun isEmpty!29586 (Option!13416) Bool)

(assert (=> b!4815891 (= c!820792 (isEmpty!29586 lt!1966697))))

(declare-fun lt!1966706 () List!54868)

(declare-fun getPair!1004 (List!54868 K!16399) Option!13416)

(assert (=> b!4815891 (= lt!1966697 (getPair!1004 lt!1966706 key!5322))))

(declare-fun lt!1966705 () Unit!141940)

(assert (=> b!4815891 (= lt!1966705 (forallContained!4332 (toList!7311 lm!2251) lambda!234508 lt!1966702))))

(declare-fun contains!18558 (List!54869 tuple2!57788) Bool)

(assert (=> b!4815891 (contains!18558 (toList!7311 lm!2251) lt!1966702)))

(declare-fun lt!1966701 () (_ BitVec 64))

(assert (=> b!4815891 (= lt!1966702 (tuple2!57789 lt!1966701 lt!1966706))))

(declare-fun lt!1966703 () Unit!141940)

(declare-fun lemmaGetValueImpliesTupleContained!675 (ListLongMap!5791 (_ BitVec 64) List!54868) Unit!141940)

(assert (=> b!4815891 (= lt!1966703 (lemmaGetValueImpliesTupleContained!675 lm!2251 lt!1966701 lt!1966706))))

(declare-fun apply!13269 (ListLongMap!5791 (_ BitVec 64)) List!54868)

(assert (=> b!4815891 (= lt!1966706 (apply!13269 lm!2251 lt!1966701))))

(declare-fun contains!18559 (ListLongMap!5791 (_ BitVec 64)) Bool)

(assert (=> b!4815891 (contains!18559 lm!2251 lt!1966701)))

(declare-fun hash!5236 (Hashable!7164 K!16399) (_ BitVec 64))

(assert (=> b!4815891 (= lt!1966701 (hash!5236 hashF!1486 key!5322))))

(declare-fun lt!1966698 () Unit!141940)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1102 (ListLongMap!5791 K!16399 Hashable!7164) Unit!141940)

(assert (=> b!4815891 (= lt!1966698 (lemmaInGenMapThenLongMapContainsHash!1102 lm!2251 key!5322 hashF!1486))))

(assert (= (and start!498298 res!2048621) b!4815886))

(assert (= (and b!4815886 res!2048620) b!4815885))

(assert (= (and b!4815885 res!2048618) b!4815891))

(assert (= (and b!4815891 c!820792) b!4815887))

(assert (= (and b!4815891 (not c!820792)) b!4815889))

(assert (= (and b!4815891 (not res!2048619)) b!4815890))

(assert (= start!498298 b!4815888))

(declare-fun m!5802142 () Bool)

(assert (=> b!4815885 m!5802142))

(assert (=> b!4815885 m!5802142))

(declare-fun m!5802144 () Bool)

(assert (=> b!4815885 m!5802144))

(declare-fun m!5802146 () Bool)

(assert (=> b!4815890 m!5802146))

(declare-fun m!5802148 () Bool)

(assert (=> b!4815886 m!5802148))

(declare-fun m!5802150 () Bool)

(assert (=> b!4815891 m!5802150))

(declare-fun m!5802152 () Bool)

(assert (=> b!4815891 m!5802152))

(declare-fun m!5802154 () Bool)

(assert (=> b!4815891 m!5802154))

(declare-fun m!5802156 () Bool)

(assert (=> b!4815891 m!5802156))

(declare-fun m!5802158 () Bool)

(assert (=> b!4815891 m!5802158))

(declare-fun m!5802160 () Bool)

(assert (=> b!4815891 m!5802160))

(declare-fun m!5802162 () Bool)

(assert (=> b!4815891 m!5802162))

(declare-fun m!5802164 () Bool)

(assert (=> b!4815891 m!5802164))

(assert (=> b!4815891 m!5802146))

(declare-fun m!5802166 () Bool)

(assert (=> b!4815891 m!5802166))

(declare-fun m!5802168 () Bool)

(assert (=> start!498298 m!5802168))

(declare-fun m!5802170 () Bool)

(assert (=> start!498298 m!5802170))

(declare-fun m!5802172 () Bool)

(assert (=> b!4815887 m!5802172))

(check-sat tp_is_empty!34201 (not b!4815885) (not start!498298) (not b!4815890) (not b!4815888) (not b!4815891) (not b!4815886) (not b!4815887))
(check-sat)
