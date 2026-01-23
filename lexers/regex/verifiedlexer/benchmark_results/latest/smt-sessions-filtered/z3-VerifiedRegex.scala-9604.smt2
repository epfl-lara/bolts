; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!504916 () Bool)

(assert start!504916)

(declare-fun b!4846813 () Bool)

(declare-fun e!3029410 () Bool)

(declare-fun e!3029408 () Bool)

(assert (=> b!4846813 (= e!3029410 e!3029408)))

(declare-fun res!2067795 () Bool)

(assert (=> b!4846813 (=> res!2067795 e!3029408)))

(declare-datatypes ((K!17309 0))(
  ( (K!17310 (val!22153 Int)) )
))
(declare-datatypes ((V!17555 0))(
  ( (V!17556 (val!22154 Int)) )
))
(declare-datatypes ((tuple2!59178 0))(
  ( (tuple2!59179 (_1!32883 K!17309) (_2!32883 V!17555)) )
))
(declare-datatypes ((List!55646 0))(
  ( (Nil!55522) (Cons!55522 (h!61959 tuple2!59178) (t!363142 List!55646)) )
))
(declare-datatypes ((tuple2!59180 0))(
  ( (tuple2!59181 (_1!32884 (_ BitVec 64)) (_2!32884 List!55646)) )
))
(declare-datatypes ((List!55647 0))(
  ( (Nil!55523) (Cons!55523 (h!61960 tuple2!59180) (t!363143 List!55647)) )
))
(declare-datatypes ((ListLongMap!6427 0))(
  ( (ListLongMap!6428 (toList!7842 List!55647)) )
))
(declare-fun lm!2646 () ListLongMap!6427)

(declare-fun key!6445 () K!17309)

(declare-fun containsKey!4664 (List!55646 K!17309) Bool)

(assert (=> b!4846813 (= res!2067795 (containsKey!4664 (_2!32884 (h!61960 (toList!7842 lm!2646))) key!6445))))

(declare-fun apply!13425 (ListLongMap!6427 (_ BitVec 64)) List!55646)

(assert (=> b!4846813 (not (containsKey!4664 (apply!13425 lm!2646 (_1!32884 (h!61960 (toList!7842 lm!2646)))) key!6445))))

(declare-datatypes ((Hashable!7482 0))(
  ( (HashableExt!7481 (__x!33757 Int)) )
))
(declare-fun hashF!1641 () Hashable!7482)

(declare-datatypes ((Unit!145647 0))(
  ( (Unit!145648) )
))
(declare-fun lt!1988340 () Unit!145647)

(declare-fun lemmaNotSameHashThenCannotContainKey!250 (ListLongMap!6427 K!17309 (_ BitVec 64) Hashable!7482) Unit!145647)

(assert (=> b!4846813 (= lt!1988340 (lemmaNotSameHashThenCannotContainKey!250 lm!2646 key!6445 (_1!32884 (h!61960 (toList!7842 lm!2646))) hashF!1641))))

(declare-fun b!4846814 () Bool)

(declare-fun e!3029409 () Bool)

(declare-fun e!3029413 () Bool)

(assert (=> b!4846814 (= e!3029409 e!3029413)))

(declare-fun res!2067794 () Bool)

(assert (=> b!4846814 (=> (not res!2067794) (not e!3029413))))

(declare-fun lt!1988336 () (_ BitVec 64))

(declare-fun contains!19168 (ListLongMap!6427 (_ BitVec 64)) Bool)

(assert (=> b!4846814 (= res!2067794 (contains!19168 lm!2646 lt!1988336))))

(declare-fun hash!5557 (Hashable!7482 K!17309) (_ BitVec 64))

(assert (=> b!4846814 (= lt!1988336 (hash!5557 hashF!1641 key!6445))))

(declare-fun b!4846815 () Bool)

(declare-fun res!2067799 () Bool)

(assert (=> b!4846815 (=> res!2067799 e!3029410)))

(get-info :version)

(assert (=> b!4846815 (= res!2067799 (or (and ((_ is Cons!55523) (toList!7842 lm!2646)) (= (_1!32884 (h!61960 (toList!7842 lm!2646))) lt!1988336)) (not ((_ is Cons!55523) (toList!7842 lm!2646))) (= lt!1988336 (_1!32884 (h!61960 (toList!7842 lm!2646))))))))

(declare-fun b!4846816 () Bool)

(declare-fun res!2067797 () Bool)

(declare-fun e!3029411 () Bool)

(assert (=> b!4846816 (=> res!2067797 e!3029411)))

(declare-fun lt!1988332 () ListLongMap!6427)

(declare-fun lambda!242418 () Int)

(declare-fun forall!12935 (List!55647 Int) Bool)

(assert (=> b!4846816 (= res!2067797 (not (forall!12935 (toList!7842 lt!1988332) lambda!242418)))))

(declare-fun b!4846817 () Bool)

(assert (=> b!4846817 (= e!3029413 (not e!3029410))))

(declare-fun res!2067793 () Bool)

(assert (=> b!4846817 (=> res!2067793 e!3029410)))

(declare-fun lt!1988338 () List!55646)

(declare-datatypes ((Option!13644 0))(
  ( (None!13643) (Some!13643 (v!49393 tuple2!59178)) )
))
(declare-fun isDefined!10736 (Option!13644) Bool)

(declare-fun getPair!1072 (List!55646 K!17309) Option!13644)

(assert (=> b!4846817 (= res!2067793 (not (isDefined!10736 (getPair!1072 lt!1988338 key!6445))))))

(declare-fun lt!1988331 () Unit!145647)

(declare-fun lt!1988339 () tuple2!59180)

(declare-fun forallContained!4523 (List!55647 Int tuple2!59180) Unit!145647)

(assert (=> b!4846817 (= lt!1988331 (forallContained!4523 (toList!7842 lm!2646) lambda!242418 lt!1988339))))

(declare-fun contains!19169 (List!55647 tuple2!59180) Bool)

(assert (=> b!4846817 (contains!19169 (toList!7842 lm!2646) lt!1988339)))

(assert (=> b!4846817 (= lt!1988339 (tuple2!59181 lt!1988336 lt!1988338))))

(declare-fun lt!1988337 () Unit!145647)

(declare-fun lemmaGetValueImpliesTupleContained!749 (ListLongMap!6427 (_ BitVec 64) List!55646) Unit!145647)

(assert (=> b!4846817 (= lt!1988337 (lemmaGetValueImpliesTupleContained!749 lm!2646 lt!1988336 lt!1988338))))

(assert (=> b!4846817 (= lt!1988338 (apply!13425 lm!2646 lt!1988336))))

(declare-fun b!4846818 () Bool)

(declare-fun res!2067796 () Bool)

(declare-fun e!3029412 () Bool)

(assert (=> b!4846818 (=> res!2067796 e!3029412)))

(assert (=> b!4846818 (= res!2067796 (not (contains!19168 lt!1988332 lt!1988336)))))

(declare-fun b!4846819 () Bool)

(declare-fun res!2067800 () Bool)

(assert (=> b!4846819 (=> res!2067800 e!3029412)))

(declare-fun allKeysSameHashInMap!2798 (ListLongMap!6427 Hashable!7482) Bool)

(assert (=> b!4846819 (= res!2067800 (not (allKeysSameHashInMap!2798 lt!1988332 hashF!1641)))))

(declare-fun b!4846820 () Bool)

(assert (=> b!4846820 (= e!3029411 true)))

(declare-fun lt!1988335 () tuple2!59180)

(declare-fun lt!1988333 () Unit!145647)

(assert (=> b!4846820 (= lt!1988333 (forallContained!4523 (toList!7842 lt!1988332) lambda!242418 lt!1988335))))

(declare-fun res!2067792 () Bool)

(assert (=> start!504916 (=> (not res!2067792) (not e!3029409))))

(assert (=> start!504916 (= res!2067792 (forall!12935 (toList!7842 lm!2646) lambda!242418))))

(assert (=> start!504916 e!3029409))

(declare-fun e!3029414 () Bool)

(declare-fun inv!71195 (ListLongMap!6427) Bool)

(assert (=> start!504916 (and (inv!71195 lm!2646) e!3029414)))

(assert (=> start!504916 true))

(declare-fun tp_is_empty!35143 () Bool)

(assert (=> start!504916 tp_is_empty!35143))

(declare-fun b!4846821 () Bool)

(declare-fun tp!1364512 () Bool)

(assert (=> b!4846821 (= e!3029414 tp!1364512)))

(declare-fun b!4846822 () Bool)

(assert (=> b!4846822 (= e!3029408 e!3029412)))

(declare-fun res!2067798 () Bool)

(assert (=> b!4846822 (=> res!2067798 e!3029412)))

(assert (=> b!4846822 (= res!2067798 (not (forall!12935 (toList!7842 lt!1988332) lambda!242418)))))

(declare-fun tail!9528 (ListLongMap!6427) ListLongMap!6427)

(assert (=> b!4846822 (= lt!1988332 (tail!9528 lm!2646))))

(declare-fun b!4846823 () Bool)

(declare-fun res!2067790 () Bool)

(assert (=> b!4846823 (=> (not res!2067790) (not e!3029409))))

(assert (=> b!4846823 (= res!2067790 (allKeysSameHashInMap!2798 lm!2646 hashF!1641))))

(declare-fun b!4846824 () Bool)

(assert (=> b!4846824 (= e!3029412 e!3029411)))

(declare-fun res!2067791 () Bool)

(assert (=> b!4846824 (=> res!2067791 e!3029411)))

(declare-fun lt!1988334 () List!55646)

(assert (=> b!4846824 (= res!2067791 (not (isDefined!10736 (getPair!1072 lt!1988334 key!6445))))))

(declare-fun lt!1988330 () Unit!145647)

(assert (=> b!4846824 (= lt!1988330 (forallContained!4523 (toList!7842 lt!1988332) lambda!242418 lt!1988335))))

(assert (=> b!4846824 (contains!19169 (toList!7842 lt!1988332) lt!1988335)))

(assert (=> b!4846824 (= lt!1988335 (tuple2!59181 lt!1988336 lt!1988334))))

(declare-fun lt!1988329 () Unit!145647)

(assert (=> b!4846824 (= lt!1988329 (lemmaGetValueImpliesTupleContained!749 lt!1988332 lt!1988336 lt!1988334))))

(assert (=> b!4846824 (= lt!1988334 (apply!13425 lt!1988332 lt!1988336))))

(assert (= (and start!504916 res!2067792) b!4846823))

(assert (= (and b!4846823 res!2067790) b!4846814))

(assert (= (and b!4846814 res!2067794) b!4846817))

(assert (= (and b!4846817 (not res!2067793)) b!4846815))

(assert (= (and b!4846815 (not res!2067799)) b!4846813))

(assert (= (and b!4846813 (not res!2067795)) b!4846822))

(assert (= (and b!4846822 (not res!2067798)) b!4846819))

(assert (= (and b!4846819 (not res!2067800)) b!4846818))

(assert (= (and b!4846818 (not res!2067796)) b!4846824))

(assert (= (and b!4846824 (not res!2067791)) b!4846816))

(assert (= (and b!4846816 (not res!2067797)) b!4846820))

(assert (= start!504916 b!4846821))

(declare-fun m!5844808 () Bool)

(assert (=> b!4846817 m!5844808))

(declare-fun m!5844810 () Bool)

(assert (=> b!4846817 m!5844810))

(declare-fun m!5844812 () Bool)

(assert (=> b!4846817 m!5844812))

(declare-fun m!5844814 () Bool)

(assert (=> b!4846817 m!5844814))

(assert (=> b!4846817 m!5844808))

(declare-fun m!5844816 () Bool)

(assert (=> b!4846817 m!5844816))

(declare-fun m!5844818 () Bool)

(assert (=> b!4846817 m!5844818))

(declare-fun m!5844820 () Bool)

(assert (=> b!4846820 m!5844820))

(declare-fun m!5844822 () Bool)

(assert (=> b!4846824 m!5844822))

(declare-fun m!5844824 () Bool)

(assert (=> b!4846824 m!5844824))

(declare-fun m!5844826 () Bool)

(assert (=> b!4846824 m!5844826))

(assert (=> b!4846824 m!5844820))

(declare-fun m!5844828 () Bool)

(assert (=> b!4846824 m!5844828))

(declare-fun m!5844830 () Bool)

(assert (=> b!4846824 m!5844830))

(assert (=> b!4846824 m!5844822))

(declare-fun m!5844832 () Bool)

(assert (=> b!4846822 m!5844832))

(declare-fun m!5844834 () Bool)

(assert (=> b!4846822 m!5844834))

(declare-fun m!5844836 () Bool)

(assert (=> b!4846813 m!5844836))

(declare-fun m!5844838 () Bool)

(assert (=> b!4846813 m!5844838))

(assert (=> b!4846813 m!5844838))

(declare-fun m!5844840 () Bool)

(assert (=> b!4846813 m!5844840))

(declare-fun m!5844842 () Bool)

(assert (=> b!4846813 m!5844842))

(declare-fun m!5844844 () Bool)

(assert (=> start!504916 m!5844844))

(declare-fun m!5844846 () Bool)

(assert (=> start!504916 m!5844846))

(assert (=> b!4846816 m!5844832))

(declare-fun m!5844848 () Bool)

(assert (=> b!4846819 m!5844848))

(declare-fun m!5844850 () Bool)

(assert (=> b!4846814 m!5844850))

(declare-fun m!5844852 () Bool)

(assert (=> b!4846814 m!5844852))

(declare-fun m!5844854 () Bool)

(assert (=> b!4846823 m!5844854))

(declare-fun m!5844856 () Bool)

(assert (=> b!4846818 m!5844856))

(check-sat (not b!4846824) tp_is_empty!35143 (not b!4846814) (not b!4846818) (not b!4846813) (not b!4846823) (not b!4846820) (not b!4846821) (not b!4846817) (not b!4846822) (not b!4846819) (not b!4846816) (not start!504916))
(check-sat)
