; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!498282 () Bool)

(assert start!498282)

(declare-fun b!4815728 () Bool)

(declare-fun e!3008759 () Bool)

(declare-datatypes ((K!16379 0))(
  ( (K!16380 (val!21409 Int)) )
))
(declare-datatypes ((V!16625 0))(
  ( (V!16626 (val!21410 Int)) )
))
(declare-datatypes ((tuple2!57754 0))(
  ( (tuple2!57755 (_1!32171 K!16379) (_2!32171 V!16625)) )
))
(declare-datatypes ((List!54852 0))(
  ( (Nil!54728) (Cons!54728 (h!61160 tuple2!57754) (t!362348 List!54852)) )
))
(declare-datatypes ((tuple2!57756 0))(
  ( (tuple2!57757 (_1!32172 (_ BitVec 64)) (_2!32172 List!54852)) )
))
(declare-datatypes ((List!54853 0))(
  ( (Nil!54729) (Cons!54729 (h!61161 tuple2!57756) (t!362349 List!54853)) )
))
(declare-datatypes ((ListLongMap!5775 0))(
  ( (ListLongMap!5776 (toList!7295 List!54853)) )
))
(declare-fun lm!2251 () ListLongMap!5775)

(declare-fun lambda!234460 () Int)

(declare-fun forall!12462 (List!54853 Int) Bool)

(assert (=> b!4815728 (= e!3008759 (forall!12462 (toList!7295 lm!2251) lambda!234460))))

(declare-fun b!4815729 () Bool)

(declare-fun res!2048533 () Bool)

(declare-fun e!3008761 () Bool)

(assert (=> b!4815729 (=> (not res!2048533) (not e!3008761))))

(declare-fun key!5322 () K!16379)

(declare-datatypes ((ListMap!6709 0))(
  ( (ListMap!6710 (toList!7296 List!54852)) )
))
(declare-fun contains!18533 (ListMap!6709 K!16379) Bool)

(declare-fun extractMap!2606 (List!54853) ListMap!6709)

(assert (=> b!4815729 (= res!2048533 (contains!18533 (extractMap!2606 (toList!7295 lm!2251)) key!5322))))

(declare-fun b!4815730 () Bool)

(assert (=> b!4815730 (= e!3008761 (not e!3008759))))

(declare-fun res!2048534 () Bool)

(assert (=> b!4815730 (=> res!2048534 e!3008759)))

(declare-datatypes ((Option!13408 0))(
  ( (None!13407) (Some!13407 (v!49058 tuple2!57754)) )
))
(declare-fun lt!1966490 () Option!13408)

(declare-fun isDefined!10536 (Option!13408) Bool)

(assert (=> b!4815730 (= res!2048534 (not (isDefined!10536 lt!1966490)))))

(declare-datatypes ((Unit!141908 0))(
  ( (Unit!141909) )
))
(declare-fun lt!1966496 () Unit!141908)

(declare-fun e!3008758 () Unit!141908)

(assert (=> b!4815730 (= lt!1966496 e!3008758)))

(declare-fun c!820768 () Bool)

(declare-fun isEmpty!29578 (Option!13408) Bool)

(assert (=> b!4815730 (= c!820768 (isEmpty!29578 lt!1966490))))

(declare-fun lt!1966489 () List!54852)

(declare-fun getPair!996 (List!54852 K!16379) Option!13408)

(assert (=> b!4815730 (= lt!1966490 (getPair!996 lt!1966489 key!5322))))

(declare-fun lt!1966493 () tuple2!57756)

(declare-fun lt!1966492 () Unit!141908)

(declare-fun forallContained!4324 (List!54853 Int tuple2!57756) Unit!141908)

(assert (=> b!4815730 (= lt!1966492 (forallContained!4324 (toList!7295 lm!2251) lambda!234460 lt!1966493))))

(declare-fun contains!18534 (List!54853 tuple2!57756) Bool)

(assert (=> b!4815730 (contains!18534 (toList!7295 lm!2251) lt!1966493)))

(declare-fun lt!1966491 () (_ BitVec 64))

(assert (=> b!4815730 (= lt!1966493 (tuple2!57757 lt!1966491 lt!1966489))))

(declare-fun lt!1966494 () Unit!141908)

(declare-fun lemmaGetValueImpliesTupleContained!667 (ListLongMap!5775 (_ BitVec 64) List!54852) Unit!141908)

(assert (=> b!4815730 (= lt!1966494 (lemmaGetValueImpliesTupleContained!667 lm!2251 lt!1966491 lt!1966489))))

(declare-fun apply!13261 (ListLongMap!5775 (_ BitVec 64)) List!54852)

(assert (=> b!4815730 (= lt!1966489 (apply!13261 lm!2251 lt!1966491))))

(declare-fun contains!18535 (ListLongMap!5775 (_ BitVec 64)) Bool)

(assert (=> b!4815730 (contains!18535 lm!2251 lt!1966491)))

(declare-datatypes ((Hashable!7156 0))(
  ( (HashableExt!7155 (__x!33431 Int)) )
))
(declare-fun hashF!1486 () Hashable!7156)

(declare-fun hash!5228 (Hashable!7156 K!16379) (_ BitVec 64))

(assert (=> b!4815730 (= lt!1966491 (hash!5228 hashF!1486 key!5322))))

(declare-fun lt!1966495 () Unit!141908)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1094 (ListLongMap!5775 K!16379 Hashable!7156) Unit!141908)

(assert (=> b!4815730 (= lt!1966495 (lemmaInGenMapThenLongMapContainsHash!1094 lm!2251 key!5322 hashF!1486))))

(declare-fun b!4815732 () Bool)

(declare-fun e!3008760 () Bool)

(declare-fun tp!1361849 () Bool)

(assert (=> b!4815732 (= e!3008760 tp!1361849)))

(declare-fun b!4815733 () Bool)

(declare-fun Unit!141910 () Unit!141908)

(assert (=> b!4815733 (= e!3008758 Unit!141910)))

(declare-fun lt!1966488 () Unit!141908)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!428 (ListLongMap!5775 K!16379 Hashable!7156) Unit!141908)

(assert (=> b!4815733 (= lt!1966488 (lemmaNotInItsHashBucketThenNotInMap!428 lm!2251 key!5322 hashF!1486))))

(assert (=> b!4815733 false))

(declare-fun b!4815734 () Bool)

(declare-fun res!2048536 () Bool)

(assert (=> b!4815734 (=> (not res!2048536) (not e!3008761))))

(declare-fun allKeysSameHashInMap!2472 (ListLongMap!5775 Hashable!7156) Bool)

(assert (=> b!4815734 (= res!2048536 (allKeysSameHashInMap!2472 lm!2251 hashF!1486))))

(declare-fun b!4815735 () Bool)

(declare-fun res!2048535 () Bool)

(assert (=> b!4815735 (=> res!2048535 e!3008759)))

(assert (=> b!4815735 (= res!2048535 (not (forall!12462 (toList!7295 lm!2251) lambda!234460)))))

(declare-fun b!4815731 () Bool)

(declare-fun Unit!141911 () Unit!141908)

(assert (=> b!4815731 (= e!3008758 Unit!141911)))

(declare-fun res!2048537 () Bool)

(assert (=> start!498282 (=> (not res!2048537) (not e!3008761))))

(assert (=> start!498282 (= res!2048537 (forall!12462 (toList!7295 lm!2251) lambda!234460))))

(assert (=> start!498282 e!3008761))

(declare-fun inv!70279 (ListLongMap!5775) Bool)

(assert (=> start!498282 (and (inv!70279 lm!2251) e!3008760)))

(assert (=> start!498282 true))

(declare-fun tp_is_empty!34185 () Bool)

(assert (=> start!498282 tp_is_empty!34185))

(assert (= (and start!498282 res!2048537) b!4815734))

(assert (= (and b!4815734 res!2048536) b!4815729))

(assert (= (and b!4815729 res!2048533) b!4815730))

(assert (= (and b!4815730 c!820768) b!4815733))

(assert (= (and b!4815730 (not c!820768)) b!4815731))

(assert (= (and b!4815730 (not res!2048534)) b!4815735))

(assert (= (and b!4815735 (not res!2048535)) b!4815728))

(assert (= start!498282 b!4815732))

(declare-fun m!5801894 () Bool)

(assert (=> start!498282 m!5801894))

(declare-fun m!5801896 () Bool)

(assert (=> start!498282 m!5801896))

(declare-fun m!5801898 () Bool)

(assert (=> b!4815729 m!5801898))

(assert (=> b!4815729 m!5801898))

(declare-fun m!5801900 () Bool)

(assert (=> b!4815729 m!5801900))

(declare-fun m!5801902 () Bool)

(assert (=> b!4815730 m!5801902))

(declare-fun m!5801904 () Bool)

(assert (=> b!4815730 m!5801904))

(declare-fun m!5801906 () Bool)

(assert (=> b!4815730 m!5801906))

(declare-fun m!5801908 () Bool)

(assert (=> b!4815730 m!5801908))

(declare-fun m!5801910 () Bool)

(assert (=> b!4815730 m!5801910))

(declare-fun m!5801912 () Bool)

(assert (=> b!4815730 m!5801912))

(declare-fun m!5801914 () Bool)

(assert (=> b!4815730 m!5801914))

(declare-fun m!5801916 () Bool)

(assert (=> b!4815730 m!5801916))

(declare-fun m!5801918 () Bool)

(assert (=> b!4815730 m!5801918))

(declare-fun m!5801920 () Bool)

(assert (=> b!4815730 m!5801920))

(declare-fun m!5801922 () Bool)

(assert (=> b!4815733 m!5801922))

(assert (=> b!4815728 m!5801894))

(declare-fun m!5801924 () Bool)

(assert (=> b!4815734 m!5801924))

(assert (=> b!4815735 m!5801894))

(check-sat (not b!4815728) (not start!498282) (not b!4815734) tp_is_empty!34185 (not b!4815735) (not b!4815730) (not b!4815733) (not b!4815732) (not b!4815729))
(check-sat)
