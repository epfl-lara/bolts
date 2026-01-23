; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!494832 () Bool)

(assert start!494832)

(declare-fun b!4797851 () Bool)

(declare-fun res!2040144 () Bool)

(declare-fun e!2995995 () Bool)

(assert (=> b!4797851 (=> res!2040144 e!2995995)))

(declare-datatypes ((K!15852 0))(
  ( (K!15853 (val!20987 Int)) )
))
(declare-datatypes ((V!16098 0))(
  ( (V!16099 (val!20988 Int)) )
))
(declare-datatypes ((tuple2!56948 0))(
  ( (tuple2!56949 (_1!31768 K!15852) (_2!31768 V!16098)) )
))
(declare-datatypes ((List!54404 0))(
  ( (Nil!54280) (Cons!54280 (h!60712 tuple2!56948) (t!361854 List!54404)) )
))
(declare-datatypes ((tuple2!56950 0))(
  ( (tuple2!56951 (_1!31769 (_ BitVec 64)) (_2!31769 List!54404)) )
))
(declare-datatypes ((List!54405 0))(
  ( (Nil!54281) (Cons!54281 (h!60713 tuple2!56950) (t!361855 List!54405)) )
))
(declare-datatypes ((ListLongMap!5391 0))(
  ( (ListLongMap!5392 (toList!6969 List!54405)) )
))
(declare-fun lm!2473 () ListLongMap!5391)

(declare-fun key!5896 () K!15852)

(declare-fun containsKey!3999 (List!54404 K!15852) Bool)

(assert (=> b!4797851 (= res!2040144 (containsKey!3999 (_2!31769 (h!60713 (toList!6969 lm!2473))) key!5896))))

(declare-fun b!4797853 () Bool)

(declare-fun res!2040142 () Bool)

(assert (=> b!4797853 (=> res!2040142 e!2995995)))

(assert (=> b!4797853 (= res!2040142 (not (is-Cons!54281 (toList!6969 lm!2473))))))

(declare-fun b!4797854 () Bool)

(declare-datatypes ((Unit!140408 0))(
  ( (Unit!140409) )
))
(declare-fun e!2995997 () Unit!140408)

(declare-fun lt!1954629 () Unit!140408)

(assert (=> b!4797854 (= e!2995997 lt!1954629)))

(declare-datatypes ((Hashable!6945 0))(
  ( (HashableExt!6944 (__x!32968 Int)) )
))
(declare-fun hashF!1559 () Hashable!6945)

(declare-fun lt!1954626 () ListLongMap!5391)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!43 (ListLongMap!5391 K!15852 Hashable!6945) Unit!140408)

(assert (=> b!4797854 (= lt!1954629 (lemmaHashNotInLongMapThenNotInGenerated!43 lt!1954626 key!5896 hashF!1559))))

(declare-datatypes ((ListMap!6441 0))(
  ( (ListMap!6442 (toList!6970 List!54404)) )
))
(declare-fun contains!17923 (ListMap!6441 K!15852) Bool)

(declare-fun extractMap!2472 (List!54405) ListMap!6441)

(assert (=> b!4797854 (not (contains!17923 (extractMap!2472 (toList!6969 lt!1954626)) key!5896))))

(declare-fun b!4797855 () Bool)

(declare-fun res!2040139 () Bool)

(declare-fun e!2995994 () Bool)

(assert (=> b!4797855 (=> (not res!2040139) (not e!2995994))))

(declare-fun allKeysSameHashInMap!2350 (ListLongMap!5391 Hashable!6945) Bool)

(assert (=> b!4797855 (= res!2040139 (allKeysSameHashInMap!2350 lm!2473 hashF!1559))))

(declare-fun b!4797856 () Bool)

(assert (=> b!4797856 (= e!2995994 (not e!2995995))))

(declare-fun res!2040141 () Bool)

(assert (=> b!4797856 (=> res!2040141 e!2995995)))

(declare-fun value!3111 () V!16098)

(declare-fun getValue!133 (List!54405 K!15852) V!16098)

(assert (=> b!4797856 (= res!2040141 (not (= (getValue!133 (toList!6969 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!587 (List!54405 K!15852) Bool)

(assert (=> b!4797856 (containsKeyBiggerList!587 (toList!6969 lm!2473) key!5896)))

(declare-fun lt!1954624 () Unit!140408)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!327 (ListLongMap!5391 K!15852 Hashable!6945) Unit!140408)

(assert (=> b!4797856 (= lt!1954624 (lemmaInLongMapThenContainsKeyBiggerList!327 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2995993 () Bool)

(assert (=> b!4797856 e!2995993))

(declare-fun res!2040145 () Bool)

(assert (=> b!4797856 (=> (not res!2040145) (not e!2995993))))

(declare-fun lt!1954627 () (_ BitVec 64))

(declare-fun contains!17924 (ListLongMap!5391 (_ BitVec 64)) Bool)

(assert (=> b!4797856 (= res!2040145 (contains!17924 lm!2473 lt!1954627))))

(declare-fun hash!4994 (Hashable!6945 K!15852) (_ BitVec 64))

(assert (=> b!4797856 (= lt!1954627 (hash!4994 hashF!1559 key!5896))))

(declare-fun lt!1954628 () Unit!140408)

(declare-fun lemmaInGenericMapThenInLongMap!349 (ListLongMap!5391 K!15852 Hashable!6945) Unit!140408)

(assert (=> b!4797856 (= lt!1954628 (lemmaInGenericMapThenInLongMap!349 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4797857 () Bool)

(declare-fun lambda!231762 () Int)

(declare-fun forall!12300 (List!54405 Int) Bool)

(assert (=> b!4797857 (= e!2995995 (forall!12300 (toList!6969 lm!2473) lambda!231762))))

(declare-fun lt!1954625 () Unit!140408)

(assert (=> b!4797857 (= lt!1954625 e!2995997)))

(declare-fun c!817734 () Bool)

(assert (=> b!4797857 (= c!817734 (not (contains!17924 lt!1954626 lt!1954627)))))

(declare-fun tail!9302 (ListLongMap!5391) ListLongMap!5391)

(assert (=> b!4797857 (= lt!1954626 (tail!9302 lm!2473))))

(declare-fun b!4797858 () Bool)

(declare-fun Unit!140410 () Unit!140408)

(assert (=> b!4797858 (= e!2995997 Unit!140410)))

(declare-fun res!2040143 () Bool)

(assert (=> start!494832 (=> (not res!2040143) (not e!2995994))))

(assert (=> start!494832 (= res!2040143 (forall!12300 (toList!6969 lm!2473) lambda!231762))))

(assert (=> start!494832 e!2995994))

(declare-fun e!2995996 () Bool)

(declare-fun inv!69879 (ListLongMap!5391) Bool)

(assert (=> start!494832 (and (inv!69879 lm!2473) e!2995996)))

(assert (=> start!494832 true))

(declare-fun tp_is_empty!33641 () Bool)

(assert (=> start!494832 tp_is_empty!33641))

(declare-fun tp_is_empty!33643 () Bool)

(assert (=> start!494832 tp_is_empty!33643))

(declare-fun b!4797852 () Bool)

(declare-datatypes ((Option!13149 0))(
  ( (None!13148) (Some!13148 (v!48461 tuple2!56948)) )
))
(declare-fun isDefined!10290 (Option!13149) Bool)

(declare-fun getPair!917 (List!54404 K!15852) Option!13149)

(declare-fun apply!13018 (ListLongMap!5391 (_ BitVec 64)) List!54404)

(assert (=> b!4797852 (= e!2995993 (isDefined!10290 (getPair!917 (apply!13018 lm!2473 lt!1954627) key!5896)))))

(declare-fun b!4797859 () Bool)

(declare-fun res!2040140 () Bool)

(assert (=> b!4797859 (=> (not res!2040140) (not e!2995994))))

(assert (=> b!4797859 (= res!2040140 (contains!17923 (extractMap!2472 (toList!6969 lm!2473)) key!5896))))

(declare-fun b!4797860 () Bool)

(declare-fun tp!1358245 () Bool)

(assert (=> b!4797860 (= e!2995996 tp!1358245)))

(assert (= (and start!494832 res!2040143) b!4797855))

(assert (= (and b!4797855 res!2040139) b!4797859))

(assert (= (and b!4797859 res!2040140) b!4797856))

(assert (= (and b!4797856 res!2040145) b!4797852))

(assert (= (and b!4797856 (not res!2040141)) b!4797853))

(assert (= (and b!4797853 (not res!2040142)) b!4797851))

(assert (= (and b!4797851 (not res!2040144)) b!4797857))

(assert (= (and b!4797857 c!817734) b!4797854))

(assert (= (and b!4797857 (not c!817734)) b!4797858))

(assert (= start!494832 b!4797860))

(declare-fun m!5780434 () Bool)

(assert (=> b!4797857 m!5780434))

(declare-fun m!5780436 () Bool)

(assert (=> b!4797857 m!5780436))

(declare-fun m!5780438 () Bool)

(assert (=> b!4797857 m!5780438))

(declare-fun m!5780440 () Bool)

(assert (=> b!4797854 m!5780440))

(declare-fun m!5780442 () Bool)

(assert (=> b!4797854 m!5780442))

(assert (=> b!4797854 m!5780442))

(declare-fun m!5780444 () Bool)

(assert (=> b!4797854 m!5780444))

(declare-fun m!5780446 () Bool)

(assert (=> b!4797851 m!5780446))

(declare-fun m!5780448 () Bool)

(assert (=> b!4797852 m!5780448))

(assert (=> b!4797852 m!5780448))

(declare-fun m!5780450 () Bool)

(assert (=> b!4797852 m!5780450))

(assert (=> b!4797852 m!5780450))

(declare-fun m!5780452 () Bool)

(assert (=> b!4797852 m!5780452))

(declare-fun m!5780454 () Bool)

(assert (=> b!4797859 m!5780454))

(assert (=> b!4797859 m!5780454))

(declare-fun m!5780456 () Bool)

(assert (=> b!4797859 m!5780456))

(assert (=> start!494832 m!5780434))

(declare-fun m!5780458 () Bool)

(assert (=> start!494832 m!5780458))

(declare-fun m!5780460 () Bool)

(assert (=> b!4797856 m!5780460))

(declare-fun m!5780462 () Bool)

(assert (=> b!4797856 m!5780462))

(declare-fun m!5780464 () Bool)

(assert (=> b!4797856 m!5780464))

(declare-fun m!5780466 () Bool)

(assert (=> b!4797856 m!5780466))

(declare-fun m!5780468 () Bool)

(assert (=> b!4797856 m!5780468))

(declare-fun m!5780470 () Bool)

(assert (=> b!4797856 m!5780470))

(declare-fun m!5780472 () Bool)

(assert (=> b!4797855 m!5780472))

(push 1)

(assert (not b!4797852))

(assert tp_is_empty!33643)

(assert (not b!4797851))

(assert (not b!4797856))

(assert (not b!4797860))

(assert (not start!494832))

(assert (not b!4797855))

(assert (not b!4797859))

(assert tp_is_empty!33641)

(assert (not b!4797857))

(assert (not b!4797854))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

