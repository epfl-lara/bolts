; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!457970 () Bool)

(assert start!457970)

(declare-fun b!4593681 () Bool)

(declare-fun res!1920853 () Bool)

(declare-fun e!2865190 () Bool)

(assert (=> b!4593681 (=> (not res!1920853) (not e!2865190))))

(declare-datatypes ((Hashable!5698 0))(
  ( (HashableExt!5697 (__x!31401 Int)) )
))
(declare-fun hashF!1107 () Hashable!5698)

(declare-fun hash!344 () (_ BitVec 64))

(declare-datatypes ((K!12398 0))(
  ( (K!12399 (val!18189 Int)) )
))
(declare-datatypes ((V!12644 0))(
  ( (V!12645 (val!18190 Int)) )
))
(declare-datatypes ((tuple2!51646 0))(
  ( (tuple2!51647 (_1!29117 K!12398) (_2!29117 V!12644)) )
))
(declare-datatypes ((List!51154 0))(
  ( (Nil!51030) (Cons!51030 (h!56984 tuple2!51646) (t!358148 List!51154)) )
))
(declare-fun newBucket!178 () List!51154)

(declare-fun allKeysSameHash!1155 (List!51154 (_ BitVec 64) Hashable!5698) Bool)

(assert (=> b!4593681 (= res!1920853 (allKeysSameHash!1155 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4593682 () Bool)

(declare-fun e!2865194 () Bool)

(assert (=> b!4593682 (= e!2865194 e!2865190)))

(declare-fun res!1920855 () Bool)

(assert (=> b!4593682 (=> (not res!1920855) (not e!2865190))))

(declare-fun lt!1754807 () (_ BitVec 64))

(assert (=> b!4593682 (= res!1920855 (= lt!1754807 hash!344))))

(declare-fun key!3287 () K!12398)

(declare-fun hash!3178 (Hashable!5698 K!12398) (_ BitVec 64))

(assert (=> b!4593682 (= lt!1754807 (hash!3178 hashF!1107 key!3287))))

(declare-fun b!4593683 () Bool)

(declare-datatypes ((Unit!107644 0))(
  ( (Unit!107645) )
))
(declare-fun e!2865195 () Unit!107644)

(declare-fun Unit!107646 () Unit!107644)

(assert (=> b!4593683 (= e!2865195 Unit!107646)))

(declare-fun lt!1754814 () Unit!107644)

(declare-datatypes ((tuple2!51648 0))(
  ( (tuple2!51649 (_1!29118 (_ BitVec 64)) (_2!29118 List!51154)) )
))
(declare-datatypes ((List!51155 0))(
  ( (Nil!51031) (Cons!51031 (h!56985 tuple2!51648) (t!358149 List!51155)) )
))
(declare-datatypes ((ListLongMap!3245 0))(
  ( (ListLongMap!3246 (toList!4613 List!51155)) )
))
(declare-fun lm!1477 () ListLongMap!3245)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!269 (ListLongMap!3245 K!12398 Hashable!5698) Unit!107644)

(assert (=> b!4593683 (= lt!1754814 (lemmaNotInItsHashBucketThenNotInMap!269 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4593683 false))

(declare-fun b!4593684 () Bool)

(declare-fun res!1920852 () Bool)

(declare-fun e!2865192 () Bool)

(assert (=> b!4593684 (=> res!1920852 e!2865192)))

(declare-fun lt!1754805 () List!51155)

(declare-fun lambda!185325 () Int)

(declare-fun forall!10563 (List!51155 Int) Bool)

(assert (=> b!4593684 (= res!1920852 (not (forall!10563 lt!1754805 lambda!185325)))))

(declare-fun b!4593685 () Bool)

(declare-fun e!2865189 () Bool)

(declare-fun e!2865193 () Bool)

(assert (=> b!4593685 (= e!2865189 e!2865193)))

(declare-fun res!1920857 () Bool)

(assert (=> b!4593685 (=> res!1920857 e!2865193)))

(declare-fun lt!1754813 () Bool)

(assert (=> b!4593685 (= res!1920857 lt!1754813)))

(declare-fun lt!1754812 () Unit!107644)

(assert (=> b!4593685 (= lt!1754812 e!2865195)))

(declare-fun c!786681 () Bool)

(assert (=> b!4593685 (= c!786681 lt!1754813)))

(declare-fun containsKey!2115 (List!51154 K!12398) Bool)

(assert (=> b!4593685 (= lt!1754813 (not (containsKey!2115 (_2!29118 (h!56985 (toList!4613 lm!1477))) key!3287)))))

(declare-fun b!4593686 () Bool)

(assert (=> b!4593686 (= e!2865190 (not e!2865189))))

(declare-fun res!1920849 () Bool)

(assert (=> b!4593686 (=> res!1920849 e!2865189)))

(declare-fun lt!1754804 () List!51154)

(declare-fun removePairForKey!924 (List!51154 K!12398) List!51154)

(assert (=> b!4593686 (= res!1920849 (not (= newBucket!178 (removePairForKey!924 lt!1754804 key!3287))))))

(declare-fun lt!1754806 () Unit!107644)

(declare-fun lt!1754808 () tuple2!51648)

(declare-fun forallContained!2820 (List!51155 Int tuple2!51648) Unit!107644)

(assert (=> b!4593686 (= lt!1754806 (forallContained!2820 (toList!4613 lm!1477) lambda!185325 lt!1754808))))

(declare-fun contains!13956 (List!51155 tuple2!51648) Bool)

(assert (=> b!4593686 (contains!13956 (toList!4613 lm!1477) lt!1754808)))

(assert (=> b!4593686 (= lt!1754808 (tuple2!51649 hash!344 lt!1754804))))

(declare-fun lt!1754809 () Unit!107644)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!809 (List!51155 (_ BitVec 64) List!51154) Unit!107644)

(assert (=> b!4593686 (= lt!1754809 (lemmaGetValueByKeyImpliesContainsTuple!809 (toList!4613 lm!1477) hash!344 lt!1754804))))

(declare-fun apply!12036 (ListLongMap!3245 (_ BitVec 64)) List!51154)

(assert (=> b!4593686 (= lt!1754804 (apply!12036 lm!1477 hash!344))))

(declare-fun contains!13957 (ListLongMap!3245 (_ BitVec 64)) Bool)

(assert (=> b!4593686 (contains!13957 lm!1477 lt!1754807)))

(declare-fun lt!1754811 () Unit!107644)

(declare-fun lemmaInGenMapThenLongMapContainsHash!373 (ListLongMap!3245 K!12398 Hashable!5698) Unit!107644)

(assert (=> b!4593686 (= lt!1754811 (lemmaInGenMapThenLongMapContainsHash!373 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4593687 () Bool)

(assert (=> b!4593687 (= e!2865192 true)))

(declare-fun lt!1754810 () Bool)

(declare-fun allKeysSameHashInMap!1410 (ListLongMap!3245 Hashable!5698) Bool)

(assert (=> b!4593687 (= lt!1754810 (allKeysSameHashInMap!1410 (ListLongMap!3246 lt!1754805) hashF!1107))))

(declare-fun b!4593688 () Bool)

(declare-fun Unit!107647 () Unit!107644)

(assert (=> b!4593688 (= e!2865195 Unit!107647)))

(declare-fun b!4593690 () Bool)

(declare-fun res!1920850 () Bool)

(assert (=> b!4593690 (=> res!1920850 e!2865189)))

(declare-fun noDuplicateKeys!1299 (List!51154) Bool)

(assert (=> b!4593690 (= res!1920850 (not (noDuplicateKeys!1299 newBucket!178)))))

(declare-fun tp_is_empty!28491 () Bool)

(declare-fun tp_is_empty!28489 () Bool)

(declare-fun tp!1340189 () Bool)

(declare-fun e!2865196 () Bool)

(declare-fun b!4593691 () Bool)

(assert (=> b!4593691 (= e!2865196 (and tp_is_empty!28489 tp_is_empty!28491 tp!1340189))))

(declare-fun b!4593692 () Bool)

(declare-fun res!1920856 () Bool)

(assert (=> b!4593692 (=> (not res!1920856) (not e!2865194))))

(assert (=> b!4593692 (= res!1920856 (allKeysSameHashInMap!1410 lm!1477 hashF!1107))))

(declare-fun b!4593693 () Bool)

(declare-fun e!2865191 () Bool)

(declare-fun tp!1340188 () Bool)

(assert (=> b!4593693 (= e!2865191 tp!1340188)))

(declare-fun b!4593694 () Bool)

(declare-fun res!1920851 () Bool)

(assert (=> b!4593694 (=> (not res!1920851) (not e!2865194))))

(declare-datatypes ((ListMap!3875 0))(
  ( (ListMap!3876 (toList!4614 List!51154)) )
))
(declare-fun contains!13958 (ListMap!3875 K!12398) Bool)

(declare-fun extractMap!1359 (List!51155) ListMap!3875)

(assert (=> b!4593694 (= res!1920851 (contains!13958 (extractMap!1359 (toList!4613 lm!1477)) key!3287))))

(declare-fun b!4593695 () Bool)

(assert (=> b!4593695 (= e!2865193 e!2865192)))

(declare-fun res!1920847 () Bool)

(assert (=> b!4593695 (=> res!1920847 e!2865192)))

(declare-fun containsKeyBiggerList!255 (List!51155 K!12398) Bool)

(assert (=> b!4593695 (= res!1920847 (not (containsKeyBiggerList!255 lt!1754805 key!3287)))))

(assert (=> b!4593695 (= lt!1754805 (Cons!51031 (h!56985 (toList!4613 lm!1477)) Nil!51031))))

(declare-fun res!1920848 () Bool)

(assert (=> start!457970 (=> (not res!1920848) (not e!2865194))))

(assert (=> start!457970 (= res!1920848 (forall!10563 (toList!4613 lm!1477) lambda!185325))))

(assert (=> start!457970 e!2865194))

(assert (=> start!457970 true))

(declare-fun inv!66583 (ListLongMap!3245) Bool)

(assert (=> start!457970 (and (inv!66583 lm!1477) e!2865191)))

(assert (=> start!457970 tp_is_empty!28489))

(assert (=> start!457970 e!2865196))

(declare-fun b!4593689 () Bool)

(declare-fun res!1920854 () Bool)

(assert (=> b!4593689 (=> res!1920854 e!2865189)))

(assert (=> b!4593689 (= res!1920854 (or (is-Nil!51031 (toList!4613 lm!1477)) (not (= (_1!29118 (h!56985 (toList!4613 lm!1477))) hash!344))))))

(assert (= (and start!457970 res!1920848) b!4593692))

(assert (= (and b!4593692 res!1920856) b!4593694))

(assert (= (and b!4593694 res!1920851) b!4593682))

(assert (= (and b!4593682 res!1920855) b!4593681))

(assert (= (and b!4593681 res!1920853) b!4593686))

(assert (= (and b!4593686 (not res!1920849)) b!4593690))

(assert (= (and b!4593690 (not res!1920850)) b!4593689))

(assert (= (and b!4593689 (not res!1920854)) b!4593685))

(assert (= (and b!4593685 c!786681) b!4593683))

(assert (= (and b!4593685 (not c!786681)) b!4593688))

(assert (= (and b!4593685 (not res!1920857)) b!4593695))

(assert (= (and b!4593695 (not res!1920847)) b!4593684))

(assert (= (and b!4593684 (not res!1920852)) b!4593687))

(assert (= start!457970 b!4593693))

(assert (= (and start!457970 (is-Cons!51030 newBucket!178)) b!4593691))

(declare-fun m!5417615 () Bool)

(assert (=> b!4593684 m!5417615))

(declare-fun m!5417617 () Bool)

(assert (=> b!4593690 m!5417617))

(declare-fun m!5417619 () Bool)

(assert (=> b!4593686 m!5417619))

(declare-fun m!5417621 () Bool)

(assert (=> b!4593686 m!5417621))

(declare-fun m!5417623 () Bool)

(assert (=> b!4593686 m!5417623))

(declare-fun m!5417625 () Bool)

(assert (=> b!4593686 m!5417625))

(declare-fun m!5417627 () Bool)

(assert (=> b!4593686 m!5417627))

(declare-fun m!5417629 () Bool)

(assert (=> b!4593686 m!5417629))

(declare-fun m!5417631 () Bool)

(assert (=> b!4593686 m!5417631))

(declare-fun m!5417633 () Bool)

(assert (=> b!4593694 m!5417633))

(assert (=> b!4593694 m!5417633))

(declare-fun m!5417635 () Bool)

(assert (=> b!4593694 m!5417635))

(declare-fun m!5417637 () Bool)

(assert (=> b!4593683 m!5417637))

(declare-fun m!5417639 () Bool)

(assert (=> b!4593682 m!5417639))

(declare-fun m!5417641 () Bool)

(assert (=> start!457970 m!5417641))

(declare-fun m!5417643 () Bool)

(assert (=> start!457970 m!5417643))

(declare-fun m!5417645 () Bool)

(assert (=> b!4593685 m!5417645))

(declare-fun m!5417647 () Bool)

(assert (=> b!4593681 m!5417647))

(declare-fun m!5417649 () Bool)

(assert (=> b!4593692 m!5417649))

(declare-fun m!5417651 () Bool)

(assert (=> b!4593695 m!5417651))

(declare-fun m!5417653 () Bool)

(assert (=> b!4593687 m!5417653))

(push 1)

(assert (not b!4593683))

(assert tp_is_empty!28491)

(assert (not start!457970))

(assert (not b!4593693))

(assert (not b!4593695))

(assert (not b!4593685))

(assert (not b!4593684))

(assert (not b!4593690))

(assert (not b!4593692))

(assert (not b!4593687))

(assert tp_is_empty!28489)

(assert (not b!4593686))

(assert (not b!4593681))

(assert (not b!4593694))

(assert (not b!4593691))

(assert (not b!4593682))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

