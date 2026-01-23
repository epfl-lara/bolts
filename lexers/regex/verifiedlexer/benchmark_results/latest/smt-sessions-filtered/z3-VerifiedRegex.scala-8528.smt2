; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!447768 () Bool)

(assert start!447768)

(declare-fun b!4521522 () Bool)

(declare-fun e!2817065 () Bool)

(declare-fun e!2817056 () Bool)

(assert (=> b!4521522 (= e!2817065 e!2817056)))

(declare-fun res!1881921 () Bool)

(assert (=> b!4521522 (=> res!1881921 e!2817056)))

(declare-datatypes ((K!12045 0))(
  ( (K!12046 (val!17907 Int)) )
))
(declare-datatypes ((V!12291 0))(
  ( (V!12292 (val!17908 Int)) )
))
(declare-datatypes ((tuple2!51082 0))(
  ( (tuple2!51083 (_1!28835 K!12045) (_2!28835 V!12291)) )
))
(declare-datatypes ((List!50776 0))(
  ( (Nil!50652) (Cons!50652 (h!56507 tuple2!51082) (t!357738 List!50776)) )
))
(declare-datatypes ((tuple2!51084 0))(
  ( (tuple2!51085 (_1!28836 (_ BitVec 64)) (_2!28836 List!50776)) )
))
(declare-datatypes ((List!50777 0))(
  ( (Nil!50653) (Cons!50653 (h!56508 tuple2!51084) (t!357739 List!50777)) )
))
(declare-datatypes ((ListLongMap!2963 0))(
  ( (ListLongMap!2964 (toList!4331 List!50777)) )
))
(declare-fun lt!1698429 () ListLongMap!2963)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun contains!13381 (ListLongMap!2963 (_ BitVec 64)) Bool)

(assert (=> b!4521522 (= res!1881921 (not (contains!13381 lt!1698429 hash!344)))))

(declare-fun lm!1477 () ListLongMap!2963)

(declare-fun tail!7738 (ListLongMap!2963) ListLongMap!2963)

(assert (=> b!4521522 (= lt!1698429 (tail!7738 lm!1477))))

(declare-fun b!4521523 () Bool)

(declare-fun e!2817067 () Bool)

(declare-fun e!2817071 () Bool)

(assert (=> b!4521523 (= e!2817067 e!2817071)))

(declare-fun res!1881933 () Bool)

(assert (=> b!4521523 (=> res!1881933 e!2817071)))

(declare-fun key!3287 () K!12045)

(declare-fun containsKeyBiggerList!142 (List!50777 K!12045) Bool)

(assert (=> b!4521523 (= res!1881933 (not (containsKeyBiggerList!142 (t!357739 (toList!4331 lm!1477)) key!3287)))))

(assert (=> b!4521523 (containsKeyBiggerList!142 (toList!4331 lt!1698429) key!3287)))

(declare-datatypes ((Hashable!5557 0))(
  ( (HashableExt!5556 (__x!31260 Int)) )
))
(declare-fun hashF!1107 () Hashable!5557)

(declare-datatypes ((Unit!95362 0))(
  ( (Unit!95363) )
))
(declare-fun lt!1698443 () Unit!95362)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!78 (ListLongMap!2963 K!12045 Hashable!5557) Unit!95362)

(assert (=> b!4521523 (= lt!1698443 (lemmaInLongMapThenContainsKeyBiggerList!78 lt!1698429 key!3287 hashF!1107))))

(declare-fun b!4521524 () Bool)

(declare-fun e!2817066 () Bool)

(declare-fun e!2817063 () Bool)

(assert (=> b!4521524 (= e!2817066 e!2817063)))

(declare-fun res!1881920 () Bool)

(assert (=> b!4521524 (=> res!1881920 e!2817063)))

(declare-datatypes ((ListMap!3593 0))(
  ( (ListMap!3594 (toList!4332 List!50776)) )
))
(declare-fun lt!1698447 () ListMap!3593)

(declare-fun lt!1698427 () ListMap!3593)

(declare-fun eq!619 (ListMap!3593 ListMap!3593) Bool)

(assert (=> b!4521524 (= res!1881920 (not (eq!619 lt!1698447 lt!1698427)))))

(declare-fun lt!1698434 () tuple2!51084)

(declare-fun lt!1698425 () ListMap!3593)

(declare-fun addToMapMapFromBucket!689 (List!50776 ListMap!3593) ListMap!3593)

(assert (=> b!4521524 (= lt!1698427 (addToMapMapFromBucket!689 (_2!28836 lt!1698434) lt!1698425))))

(declare-fun lt!1698435 () ListLongMap!2963)

(declare-fun extractMap!1218 (List!50777) ListMap!3593)

(assert (=> b!4521524 (= lt!1698447 (extractMap!1218 (toList!4331 lt!1698435)))))

(declare-fun b!4521525 () Bool)

(declare-fun e!2817069 () Bool)

(declare-fun e!2817068 () Bool)

(assert (=> b!4521525 (= e!2817069 e!2817068)))

(declare-fun res!1881915 () Bool)

(assert (=> b!4521525 (=> res!1881915 e!2817068)))

(declare-fun lt!1698448 () ListMap!3593)

(declare-fun lt!1698428 () ListMap!3593)

(assert (=> b!4521525 (= res!1881915 (not (eq!619 lt!1698448 lt!1698428)))))

(declare-fun +!1542 (ListLongMap!2963 tuple2!51084) ListLongMap!2963)

(assert (=> b!4521525 (= lt!1698448 (extractMap!1218 (toList!4331 (+!1542 lt!1698429 lt!1698434))))))

(declare-fun head!9416 (ListLongMap!2963) tuple2!51084)

(assert (=> b!4521525 (= lt!1698434 (head!9416 lm!1477))))

(declare-fun lt!1698441 () ListMap!3593)

(assert (=> b!4521525 (eq!619 lt!1698425 lt!1698441)))

(declare-fun lt!1698445 () ListMap!3593)

(declare-fun -!388 (ListMap!3593 K!12045) ListMap!3593)

(assert (=> b!4521525 (= lt!1698441 (-!388 lt!1698445 key!3287))))

(declare-fun lt!1698450 () ListLongMap!2963)

(assert (=> b!4521525 (= lt!1698425 (extractMap!1218 (toList!4331 lt!1698450)))))

(declare-fun lt!1698433 () tuple2!51084)

(assert (=> b!4521525 (= lt!1698450 (+!1542 lt!1698429 lt!1698433))))

(declare-fun newBucket!178 () List!50776)

(assert (=> b!4521525 (= lt!1698433 (tuple2!51085 hash!344 newBucket!178))))

(declare-fun lt!1698424 () Unit!95362)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!147 (ListLongMap!2963 (_ BitVec 64) List!50776 K!12045 Hashable!5557) Unit!95362)

(assert (=> b!4521525 (= lt!1698424 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!147 lt!1698429 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun res!1881932 () Bool)

(declare-fun e!2817061 () Bool)

(assert (=> start!447768 (=> (not res!1881932) (not e!2817061))))

(declare-fun lambda!172629 () Int)

(declare-fun forall!10269 (List!50777 Int) Bool)

(assert (=> start!447768 (= res!1881932 (forall!10269 (toList!4331 lm!1477) lambda!172629))))

(assert (=> start!447768 e!2817061))

(assert (=> start!447768 true))

(declare-fun e!2817057 () Bool)

(declare-fun inv!66229 (ListLongMap!2963) Bool)

(assert (=> start!447768 (and (inv!66229 lm!1477) e!2817057)))

(declare-fun tp_is_empty!27925 () Bool)

(assert (=> start!447768 tp_is_empty!27925))

(declare-fun e!2817058 () Bool)

(assert (=> start!447768 e!2817058))

(declare-fun b!4521526 () Bool)

(declare-fun e!2817062 () Unit!95362)

(declare-fun Unit!95364 () Unit!95362)

(assert (=> b!4521526 (= e!2817062 Unit!95364)))

(declare-fun b!4521527 () Bool)

(assert (=> b!4521527 (= e!2817056 e!2817067)))

(declare-fun res!1881925 () Bool)

(assert (=> b!4521527 (=> res!1881925 e!2817067)))

(declare-fun lt!1698436 () Bool)

(assert (=> b!4521527 (= res!1881925 lt!1698436)))

(declare-fun lt!1698430 () Unit!95362)

(assert (=> b!4521527 (= lt!1698430 e!2817062)))

(declare-fun c!771719 () Bool)

(assert (=> b!4521527 (= c!771719 lt!1698436)))

(declare-fun lt!1698438 () List!50776)

(declare-fun containsKey!1786 (List!50776 K!12045) Bool)

(assert (=> b!4521527 (= lt!1698436 (not (containsKey!1786 lt!1698438 key!3287)))))

(declare-fun b!4521528 () Bool)

(declare-fun e!2817059 () Bool)

(declare-fun e!2817064 () Bool)

(assert (=> b!4521528 (= e!2817059 e!2817064)))

(declare-fun res!1881928 () Bool)

(assert (=> b!4521528 (=> (not res!1881928) (not e!2817064))))

(declare-fun lt!1698432 () (_ BitVec 64))

(assert (=> b!4521528 (= res!1881928 (= lt!1698432 hash!344))))

(declare-fun hash!2815 (Hashable!5557 K!12045) (_ BitVec 64))

(assert (=> b!4521528 (= lt!1698432 (hash!2815 hashF!1107 key!3287))))

(declare-fun b!4521529 () Bool)

(declare-fun res!1881918 () Bool)

(assert (=> b!4521529 (=> res!1881918 e!2817068)))

(assert (=> b!4521529 (= res!1881918 (not (eq!619 lt!1698428 lt!1698448)))))

(declare-fun b!4521530 () Bool)

(declare-fun e!2817060 () Bool)

(assert (=> b!4521530 (= e!2817060 true)))

(assert (=> b!4521530 (not (= hash!344 (_1!28836 lt!1698434)))))

(declare-fun b!4521531 () Bool)

(declare-fun res!1881917 () Bool)

(assert (=> b!4521531 (=> res!1881917 e!2817056)))

(declare-fun apply!11899 (ListLongMap!2963 (_ BitVec 64)) List!50776)

(assert (=> b!4521531 (= res!1881917 (not (= (apply!11899 lt!1698429 hash!344) lt!1698438)))))

(declare-fun b!4521532 () Bool)

(assert (=> b!4521532 (= e!2817061 e!2817059)))

(declare-fun res!1881916 () Bool)

(assert (=> b!4521532 (=> (not res!1881916) (not e!2817059))))

(declare-fun contains!13382 (ListMap!3593 K!12045) Bool)

(assert (=> b!4521532 (= res!1881916 (contains!13382 lt!1698428 key!3287))))

(assert (=> b!4521532 (= lt!1698428 (extractMap!1218 (toList!4331 lm!1477)))))

(declare-fun b!4521533 () Bool)

(declare-fun res!1881924 () Bool)

(assert (=> b!4521533 (=> res!1881924 e!2817060)))

(assert (=> b!4521533 (= res!1881924 (not (containsKey!1786 (_2!28836 lt!1698434) key!3287)))))

(declare-fun b!4521534 () Bool)

(declare-fun res!1881913 () Bool)

(assert (=> b!4521534 (=> res!1881913 e!2817065)))

(get-info :version)

(assert (=> b!4521534 (= res!1881913 (or ((_ is Nil!50653) (toList!4331 lm!1477)) (= (_1!28836 (h!56508 (toList!4331 lm!1477))) hash!344)))))

(declare-fun b!4521535 () Bool)

(declare-fun tp!1338119 () Bool)

(declare-fun tp_is_empty!27927 () Bool)

(assert (=> b!4521535 (= e!2817058 (and tp_is_empty!27925 tp_is_empty!27927 tp!1338119))))

(declare-fun b!4521536 () Bool)

(declare-fun e!2817070 () Bool)

(assert (=> b!4521536 (= e!2817070 e!2817060)))

(declare-fun res!1881926 () Bool)

(assert (=> b!4521536 (=> res!1881926 e!2817060)))

(declare-fun noDuplicateKeys!1162 (List!50776) Bool)

(assert (=> b!4521536 (= res!1881926 (not (noDuplicateKeys!1162 (_2!28836 lt!1698434))))))

(declare-fun lt!1698431 () Unit!95362)

(declare-fun forallContained!2521 (List!50777 Int tuple2!51084) Unit!95362)

(assert (=> b!4521536 (= lt!1698431 (forallContained!2521 (toList!4331 lm!1477) lambda!172629 (h!56508 (toList!4331 lm!1477))))))

(declare-fun b!4521537 () Bool)

(declare-fun res!1881922 () Bool)

(assert (=> b!4521537 (=> res!1881922 e!2817068)))

(assert (=> b!4521537 (= res!1881922 (bvsge (_1!28836 lt!1698434) hash!344))))

(declare-fun b!4521538 () Bool)

(declare-fun res!1881934 () Bool)

(assert (=> b!4521538 (=> (not res!1881934) (not e!2817064))))

(declare-fun allKeysSameHash!1016 (List!50776 (_ BitVec 64) Hashable!5557) Bool)

(assert (=> b!4521538 (= res!1881934 (allKeysSameHash!1016 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4521539 () Bool)

(assert (=> b!4521539 (= e!2817068 e!2817066)))

(declare-fun res!1881929 () Bool)

(assert (=> b!4521539 (=> res!1881929 e!2817066)))

(assert (=> b!4521539 (= res!1881929 (not (= lt!1698435 (+!1542 lm!1477 lt!1698433))))))

(assert (=> b!4521539 (= lt!1698435 (+!1542 lt!1698450 lt!1698434))))

(declare-fun b!4521540 () Bool)

(declare-fun Unit!95365 () Unit!95362)

(assert (=> b!4521540 (= e!2817062 Unit!95365)))

(declare-fun lt!1698449 () Unit!95362)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!150 (ListLongMap!2963 K!12045 Hashable!5557) Unit!95362)

(assert (=> b!4521540 (= lt!1698449 (lemmaNotInItsHashBucketThenNotInMap!150 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4521540 false))

(declare-fun b!4521541 () Bool)

(declare-fun res!1881931 () Bool)

(assert (=> b!4521541 (=> (not res!1881931) (not e!2817061))))

(declare-fun allKeysSameHashInMap!1269 (ListLongMap!2963 Hashable!5557) Bool)

(assert (=> b!4521541 (= res!1881931 (allKeysSameHashInMap!1269 lm!1477 hashF!1107))))

(declare-fun b!4521542 () Bool)

(assert (=> b!4521542 (= e!2817071 e!2817069)))

(declare-fun res!1881912 () Bool)

(assert (=> b!4521542 (=> res!1881912 e!2817069)))

(assert (=> b!4521542 (= res!1881912 (not (contains!13382 (extractMap!1218 (t!357739 (toList!4331 lm!1477))) key!3287)))))

(assert (=> b!4521542 (contains!13382 lt!1698445 key!3287)))

(assert (=> b!4521542 (= lt!1698445 (extractMap!1218 (toList!4331 lt!1698429)))))

(declare-fun lt!1698444 () Unit!95362)

(declare-fun lemmaListContainsThenExtractedMapContains!132 (ListLongMap!2963 K!12045 Hashable!5557) Unit!95362)

(assert (=> b!4521542 (= lt!1698444 (lemmaListContainsThenExtractedMapContains!132 lt!1698429 key!3287 hashF!1107))))

(declare-fun b!4521543 () Bool)

(declare-fun res!1881930 () Bool)

(assert (=> b!4521543 (=> res!1881930 e!2817065)))

(assert (=> b!4521543 (= res!1881930 (not (noDuplicateKeys!1162 newBucket!178)))))

(declare-fun b!4521544 () Bool)

(declare-fun tp!1338118 () Bool)

(assert (=> b!4521544 (= e!2817057 tp!1338118)))

(declare-fun b!4521545 () Bool)

(declare-fun res!1881914 () Bool)

(assert (=> b!4521545 (=> res!1881914 e!2817056)))

(declare-fun lt!1698440 () tuple2!51084)

(declare-fun contains!13383 (List!50777 tuple2!51084) Bool)

(assert (=> b!4521545 (= res!1881914 (not (contains!13383 (t!357739 (toList!4331 lm!1477)) lt!1698440)))))

(declare-fun b!4521546 () Bool)

(declare-fun res!1881927 () Bool)

(assert (=> b!4521546 (=> res!1881927 e!2817066)))

(assert (=> b!4521546 (= res!1881927 (not (= (head!9416 lt!1698435) lt!1698434)))))

(declare-fun b!4521547 () Bool)

(assert (=> b!4521547 (= e!2817063 e!2817070)))

(declare-fun res!1881919 () Bool)

(assert (=> b!4521547 (=> res!1881919 e!2817070)))

(declare-fun lt!1698437 () ListMap!3593)

(assert (=> b!4521547 (= res!1881919 (not (eq!619 lt!1698447 lt!1698437)))))

(assert (=> b!4521547 (eq!619 lt!1698427 lt!1698437)))

(assert (=> b!4521547 (= lt!1698437 (addToMapMapFromBucket!689 (_2!28836 lt!1698434) lt!1698441))))

(declare-fun lt!1698446 () Unit!95362)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!38 (ListMap!3593 ListMap!3593 List!50776) Unit!95362)

(assert (=> b!4521547 (= lt!1698446 (lemmaAddToMapFromBucketPreservesEquivalence!38 lt!1698425 lt!1698441 (_2!28836 lt!1698434)))))

(declare-fun b!4521548 () Bool)

(assert (=> b!4521548 (= e!2817064 (not e!2817065))))

(declare-fun res!1881923 () Bool)

(assert (=> b!4521548 (=> res!1881923 e!2817065)))

(declare-fun removePairForKey!789 (List!50776 K!12045) List!50776)

(assert (=> b!4521548 (= res!1881923 (not (= newBucket!178 (removePairForKey!789 lt!1698438 key!3287))))))

(declare-fun lt!1698426 () Unit!95362)

(assert (=> b!4521548 (= lt!1698426 (forallContained!2521 (toList!4331 lm!1477) lambda!172629 lt!1698440))))

(assert (=> b!4521548 (contains!13383 (toList!4331 lm!1477) lt!1698440)))

(assert (=> b!4521548 (= lt!1698440 (tuple2!51085 hash!344 lt!1698438))))

(declare-fun lt!1698442 () Unit!95362)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!674 (List!50777 (_ BitVec 64) List!50776) Unit!95362)

(assert (=> b!4521548 (= lt!1698442 (lemmaGetValueByKeyImpliesContainsTuple!674 (toList!4331 lm!1477) hash!344 lt!1698438))))

(assert (=> b!4521548 (= lt!1698438 (apply!11899 lm!1477 hash!344))))

(assert (=> b!4521548 (contains!13381 lm!1477 lt!1698432)))

(declare-fun lt!1698439 () Unit!95362)

(declare-fun lemmaInGenMapThenLongMapContainsHash!236 (ListLongMap!2963 K!12045 Hashable!5557) Unit!95362)

(assert (=> b!4521548 (= lt!1698439 (lemmaInGenMapThenLongMapContainsHash!236 lm!1477 key!3287 hashF!1107))))

(assert (= (and start!447768 res!1881932) b!4521541))

(assert (= (and b!4521541 res!1881931) b!4521532))

(assert (= (and b!4521532 res!1881916) b!4521528))

(assert (= (and b!4521528 res!1881928) b!4521538))

(assert (= (and b!4521538 res!1881934) b!4521548))

(assert (= (and b!4521548 (not res!1881923)) b!4521543))

(assert (= (and b!4521543 (not res!1881930)) b!4521534))

(assert (= (and b!4521534 (not res!1881913)) b!4521522))

(assert (= (and b!4521522 (not res!1881921)) b!4521531))

(assert (= (and b!4521531 (not res!1881917)) b!4521545))

(assert (= (and b!4521545 (not res!1881914)) b!4521527))

(assert (= (and b!4521527 c!771719) b!4521540))

(assert (= (and b!4521527 (not c!771719)) b!4521526))

(assert (= (and b!4521527 (not res!1881925)) b!4521523))

(assert (= (and b!4521523 (not res!1881933)) b!4521542))

(assert (= (and b!4521542 (not res!1881912)) b!4521525))

(assert (= (and b!4521525 (not res!1881915)) b!4521529))

(assert (= (and b!4521529 (not res!1881918)) b!4521537))

(assert (= (and b!4521537 (not res!1881922)) b!4521539))

(assert (= (and b!4521539 (not res!1881929)) b!4521546))

(assert (= (and b!4521546 (not res!1881927)) b!4521524))

(assert (= (and b!4521524 (not res!1881920)) b!4521547))

(assert (= (and b!4521547 (not res!1881919)) b!4521536))

(assert (= (and b!4521536 (not res!1881926)) b!4521533))

(assert (= (and b!4521533 (not res!1881924)) b!4521530))

(assert (= start!447768 b!4521544))

(assert (= (and start!447768 ((_ is Cons!50652) newBucket!178)) b!4521535))

(declare-fun m!5270887 () Bool)

(assert (=> b!4521525 m!5270887))

(declare-fun m!5270889 () Bool)

(assert (=> b!4521525 m!5270889))

(declare-fun m!5270891 () Bool)

(assert (=> b!4521525 m!5270891))

(declare-fun m!5270893 () Bool)

(assert (=> b!4521525 m!5270893))

(declare-fun m!5270895 () Bool)

(assert (=> b!4521525 m!5270895))

(declare-fun m!5270897 () Bool)

(assert (=> b!4521525 m!5270897))

(declare-fun m!5270899 () Bool)

(assert (=> b!4521525 m!5270899))

(declare-fun m!5270901 () Bool)

(assert (=> b!4521525 m!5270901))

(declare-fun m!5270903 () Bool)

(assert (=> b!4521525 m!5270903))

(declare-fun m!5270905 () Bool)

(assert (=> b!4521536 m!5270905))

(declare-fun m!5270907 () Bool)

(assert (=> b!4521536 m!5270907))

(declare-fun m!5270909 () Bool)

(assert (=> b!4521523 m!5270909))

(declare-fun m!5270911 () Bool)

(assert (=> b!4521523 m!5270911))

(declare-fun m!5270913 () Bool)

(assert (=> b!4521523 m!5270913))

(declare-fun m!5270915 () Bool)

(assert (=> b!4521531 m!5270915))

(declare-fun m!5270917 () Bool)

(assert (=> b!4521548 m!5270917))

(declare-fun m!5270919 () Bool)

(assert (=> b!4521548 m!5270919))

(declare-fun m!5270921 () Bool)

(assert (=> b!4521548 m!5270921))

(declare-fun m!5270923 () Bool)

(assert (=> b!4521548 m!5270923))

(declare-fun m!5270925 () Bool)

(assert (=> b!4521548 m!5270925))

(declare-fun m!5270927 () Bool)

(assert (=> b!4521548 m!5270927))

(declare-fun m!5270929 () Bool)

(assert (=> b!4521548 m!5270929))

(declare-fun m!5270931 () Bool)

(assert (=> b!4521533 m!5270931))

(declare-fun m!5270933 () Bool)

(assert (=> start!447768 m!5270933))

(declare-fun m!5270935 () Bool)

(assert (=> start!447768 m!5270935))

(declare-fun m!5270937 () Bool)

(assert (=> b!4521541 m!5270937))

(declare-fun m!5270939 () Bool)

(assert (=> b!4521539 m!5270939))

(declare-fun m!5270941 () Bool)

(assert (=> b!4521539 m!5270941))

(declare-fun m!5270943 () Bool)

(assert (=> b!4521540 m!5270943))

(declare-fun m!5270945 () Bool)

(assert (=> b!4521532 m!5270945))

(declare-fun m!5270947 () Bool)

(assert (=> b!4521532 m!5270947))

(declare-fun m!5270949 () Bool)

(assert (=> b!4521547 m!5270949))

(declare-fun m!5270951 () Bool)

(assert (=> b!4521547 m!5270951))

(declare-fun m!5270953 () Bool)

(assert (=> b!4521547 m!5270953))

(declare-fun m!5270955 () Bool)

(assert (=> b!4521547 m!5270955))

(declare-fun m!5270957 () Bool)

(assert (=> b!4521528 m!5270957))

(declare-fun m!5270959 () Bool)

(assert (=> b!4521543 m!5270959))

(declare-fun m!5270961 () Bool)

(assert (=> b!4521538 m!5270961))

(declare-fun m!5270963 () Bool)

(assert (=> b!4521522 m!5270963))

(declare-fun m!5270965 () Bool)

(assert (=> b!4521522 m!5270965))

(declare-fun m!5270967 () Bool)

(assert (=> b!4521542 m!5270967))

(declare-fun m!5270969 () Bool)

(assert (=> b!4521542 m!5270969))

(declare-fun m!5270971 () Bool)

(assert (=> b!4521542 m!5270971))

(assert (=> b!4521542 m!5270969))

(declare-fun m!5270973 () Bool)

(assert (=> b!4521542 m!5270973))

(declare-fun m!5270975 () Bool)

(assert (=> b!4521542 m!5270975))

(declare-fun m!5270977 () Bool)

(assert (=> b!4521527 m!5270977))

(declare-fun m!5270979 () Bool)

(assert (=> b!4521546 m!5270979))

(declare-fun m!5270981 () Bool)

(assert (=> b!4521545 m!5270981))

(declare-fun m!5270983 () Bool)

(assert (=> b!4521529 m!5270983))

(declare-fun m!5270985 () Bool)

(assert (=> b!4521524 m!5270985))

(declare-fun m!5270987 () Bool)

(assert (=> b!4521524 m!5270987))

(declare-fun m!5270989 () Bool)

(assert (=> b!4521524 m!5270989))

(check-sat (not b!4521532) (not b!4521541) (not b!4521528) (not b!4521536) (not b!4521545) (not b!4521540) (not b!4521542) (not b!4521522) (not b!4521523) (not start!447768) (not b!4521538) (not b!4521533) (not b!4521544) (not b!4521543) (not b!4521531) (not b!4521539) (not b!4521529) (not b!4521535) tp_is_empty!27927 (not b!4521524) (not b!4521548) (not b!4521547) (not b!4521525) (not b!4521527) tp_is_empty!27925 (not b!4521546))
(check-sat)
