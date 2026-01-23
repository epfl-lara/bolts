; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!465564 () Bool)

(assert start!465564)

(declare-fun b!4634729 () Bool)

(declare-fun e!2891263 () Bool)

(declare-fun e!2891257 () Bool)

(assert (=> b!4634729 (= e!2891263 e!2891257)))

(declare-fun res!1945267 () Bool)

(assert (=> b!4634729 (=> res!1945267 e!2891257)))

(declare-datatypes ((K!13010 0))(
  ( (K!13011 (val!18679 Int)) )
))
(declare-datatypes ((V!13256 0))(
  ( (V!13257 (val!18680 Int)) )
))
(declare-datatypes ((tuple2!52622 0))(
  ( (tuple2!52623 (_1!29605 K!13010) (_2!29605 V!13256)) )
))
(declare-datatypes ((List!51768 0))(
  ( (Nil!51644) (Cons!51644 (h!57728 tuple2!52622) (t!358834 List!51768)) )
))
(declare-fun oldBucket!40 () List!51768)

(declare-fun key!4968 () K!13010)

(declare-fun containsKey!2552 (List!51768 K!13010) Bool)

(assert (=> b!4634729 (= res!1945267 (not (containsKey!2552 (t!358834 oldBucket!40) key!4968)))))

(assert (=> b!4634729 (containsKey!2552 oldBucket!40 key!4968)))

(declare-datatypes ((Unit!114127 0))(
  ( (Unit!114128) )
))
(declare-fun lt!1796694 () Unit!114127)

(declare-datatypes ((Hashable!5941 0))(
  ( (HashableExt!5940 (__x!31644 Int)) )
))
(declare-fun hashF!1389 () Hashable!5941)

(declare-fun lemmaGetPairDefinedThenContainsKey!90 (List!51768 K!13010 Hashable!5941) Unit!114127)

(assert (=> b!4634729 (= lt!1796694 (lemmaGetPairDefinedThenContainsKey!90 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1796689 () List!51768)

(declare-datatypes ((Option!11694 0))(
  ( (None!11693) (Some!11693 (v!45887 tuple2!52622)) )
))
(declare-fun isDefined!8959 (Option!11694) Bool)

(declare-fun getPair!336 (List!51768 K!13010) Option!11694)

(assert (=> b!4634729 (isDefined!8959 (getPair!336 lt!1796689 key!4968))))

(declare-datatypes ((tuple2!52624 0))(
  ( (tuple2!52625 (_1!29606 (_ BitVec 64)) (_2!29606 List!51768)) )
))
(declare-datatypes ((List!51769 0))(
  ( (Nil!51645) (Cons!51645 (h!57729 tuple2!52624) (t!358835 List!51769)) )
))
(declare-fun lt!1796687 () List!51769)

(declare-fun lt!1796699 () tuple2!52624)

(declare-fun lt!1796685 () Unit!114127)

(declare-fun lambda!194634 () Int)

(declare-fun forallContained!3122 (List!51769 Int tuple2!52624) Unit!114127)

(assert (=> b!4634729 (= lt!1796685 (forallContained!3122 lt!1796687 lambda!194634 lt!1796699))))

(declare-fun contains!14759 (List!51769 tuple2!52624) Bool)

(assert (=> b!4634729 (contains!14759 lt!1796687 lt!1796699)))

(declare-fun lt!1796706 () (_ BitVec 64))

(assert (=> b!4634729 (= lt!1796699 (tuple2!52625 lt!1796706 lt!1796689))))

(declare-datatypes ((ListLongMap!3643 0))(
  ( (ListLongMap!3644 (toList!5053 List!51769)) )
))
(declare-fun lt!1796686 () ListLongMap!3643)

(declare-fun lt!1796691 () Unit!114127)

(declare-fun lemmaGetValueImpliesTupleContained!141 (ListLongMap!3643 (_ BitVec 64) List!51768) Unit!114127)

(assert (=> b!4634729 (= lt!1796691 (lemmaGetValueImpliesTupleContained!141 lt!1796686 lt!1796706 lt!1796689))))

(declare-fun apply!12209 (ListLongMap!3643 (_ BitVec 64)) List!51768)

(assert (=> b!4634729 (= lt!1796689 (apply!12209 lt!1796686 lt!1796706))))

(declare-fun contains!14760 (ListLongMap!3643 (_ BitVec 64)) Bool)

(assert (=> b!4634729 (contains!14760 lt!1796686 lt!1796706)))

(declare-fun lt!1796678 () Unit!114127)

(declare-fun lemmaInGenMapThenLongMapContainsHash!542 (ListLongMap!3643 K!13010 Hashable!5941) Unit!114127)

(assert (=> b!4634729 (= lt!1796678 (lemmaInGenMapThenLongMapContainsHash!542 lt!1796686 key!4968 hashF!1389))))

(declare-fun lt!1796676 () Unit!114127)

(declare-fun lemmaInGenMapThenGetPairDefined!132 (ListLongMap!3643 K!13010 Hashable!5941) Unit!114127)

(assert (=> b!4634729 (= lt!1796676 (lemmaInGenMapThenGetPairDefined!132 lt!1796686 key!4968 hashF!1389))))

(assert (=> b!4634729 (= lt!1796686 (ListLongMap!3644 lt!1796687))))

(declare-fun b!4634730 () Bool)

(declare-fun res!1945259 () Bool)

(declare-fun e!2891254 () Bool)

(assert (=> b!4634730 (=> res!1945259 e!2891254)))

(declare-datatypes ((ListMap!4357 0))(
  ( (ListMap!4358 (toList!5054 List!51768)) )
))
(declare-fun lt!1796682 () ListMap!4357)

(declare-fun lt!1796700 () ListMap!4357)

(declare-fun eq!859 (ListMap!4357 ListMap!4357) Bool)

(declare-fun +!1910 (ListMap!4357 tuple2!52622) ListMap!4357)

(assert (=> b!4634730 (= res!1945259 (not (eq!859 lt!1796700 (+!1910 lt!1796682 (h!57728 oldBucket!40)))))))

(declare-fun tp_is_empty!29471 () Bool)

(declare-fun b!4634731 () Bool)

(declare-fun tp!1342471 () Bool)

(declare-fun e!2891253 () Bool)

(declare-fun tp_is_empty!29469 () Bool)

(assert (=> b!4634731 (= e!2891253 (and tp_is_empty!29469 tp_is_empty!29471 tp!1342471))))

(declare-fun b!4634732 () Bool)

(declare-fun e!2891264 () Bool)

(declare-fun e!2891259 () Bool)

(assert (=> b!4634732 (= e!2891264 e!2891259)))

(declare-fun res!1945265 () Bool)

(assert (=> b!4634732 (=> (not res!1945265) (not e!2891259))))

(declare-fun hash!414 () (_ BitVec 64))

(assert (=> b!4634732 (= res!1945265 (= lt!1796706 hash!414))))

(declare-fun hash!3604 (Hashable!5941 K!13010) (_ BitVec 64))

(assert (=> b!4634732 (= lt!1796706 (hash!3604 hashF!1389 key!4968))))

(declare-fun b!4634733 () Bool)

(declare-fun e!2891265 () Bool)

(assert (=> b!4634733 (= e!2891265 e!2891264)))

(declare-fun res!1945252 () Bool)

(assert (=> b!4634733 (=> (not res!1945252) (not e!2891264))))

(declare-fun lt!1796684 () ListMap!4357)

(declare-fun contains!14761 (ListMap!4357 K!13010) Bool)

(assert (=> b!4634733 (= res!1945252 (contains!14761 lt!1796684 key!4968))))

(declare-fun extractMap!1600 (List!51769) ListMap!4357)

(assert (=> b!4634733 (= lt!1796684 (extractMap!1600 lt!1796687))))

(assert (=> b!4634733 (= lt!1796687 (Cons!51645 (tuple2!52625 hash!414 oldBucket!40) Nil!51645))))

(declare-fun b!4634734 () Bool)

(declare-fun e!2891255 () Bool)

(assert (=> b!4634734 (= e!2891255 e!2891254)))

(declare-fun res!1945262 () Bool)

(assert (=> b!4634734 (=> res!1945262 e!2891254)))

(declare-fun lt!1796705 () ListMap!4357)

(declare-fun lt!1796692 () ListMap!4357)

(assert (=> b!4634734 (= res!1945262 (not (eq!859 lt!1796705 lt!1796692)))))

(declare-fun lt!1796679 () ListMap!4357)

(assert (=> b!4634734 (eq!859 lt!1796679 lt!1796705)))

(declare-fun -!584 (ListMap!4357 K!13010) ListMap!4357)

(assert (=> b!4634734 (= lt!1796705 (-!584 lt!1796684 key!4968))))

(declare-fun lt!1796703 () ListMap!4357)

(declare-fun lt!1796680 () Unit!114127)

(declare-fun lemmaRemovePreservesEq!40 (ListMap!4357 ListMap!4357 K!13010) Unit!114127)

(assert (=> b!4634734 (= lt!1796680 (lemmaRemovePreservesEq!40 lt!1796703 lt!1796684 key!4968))))

(declare-fun b!4634735 () Bool)

(declare-fun e!2891261 () Bool)

(declare-fun e!2891262 () Bool)

(assert (=> b!4634735 (= e!2891261 e!2891262)))

(declare-fun res!1945261 () Bool)

(assert (=> b!4634735 (=> res!1945261 e!2891262)))

(declare-fun lt!1796674 () tuple2!52622)

(assert (=> b!4634735 (= res!1945261 (not (eq!859 lt!1796700 (+!1910 lt!1796682 lt!1796674))))))

(declare-fun lt!1796690 () List!51768)

(assert (=> b!4634735 (= lt!1796682 (extractMap!1600 (Cons!51645 (tuple2!52625 hash!414 lt!1796690) Nil!51645)))))

(declare-fun lt!1796681 () List!51769)

(assert (=> b!4634735 (= lt!1796700 (extractMap!1600 lt!1796681))))

(declare-fun newBucket!224 () List!51768)

(assert (=> b!4634735 (= lt!1796681 (Cons!51645 (tuple2!52625 hash!414 newBucket!224) Nil!51645))))

(declare-fun b!4634737 () Bool)

(declare-fun tp!1342470 () Bool)

(declare-fun e!2891266 () Bool)

(assert (=> b!4634737 (= e!2891266 (and tp_is_empty!29469 tp_is_empty!29471 tp!1342470))))

(declare-fun b!4634738 () Bool)

(declare-fun res!1945257 () Bool)

(assert (=> b!4634738 (=> (not res!1945257) (not e!2891265))))

(declare-fun removePairForKey!1167 (List!51768 K!13010) List!51768)

(assert (=> b!4634738 (= res!1945257 (= (removePairForKey!1167 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4634739 () Bool)

(assert (=> b!4634739 (= e!2891259 (not e!2891263))))

(declare-fun res!1945254 () Bool)

(assert (=> b!4634739 (=> res!1945254 e!2891263)))

(get-info :version)

(assert (=> b!4634739 (= res!1945254 (or (and ((_ is Cons!51644) oldBucket!40) (= (_1!29605 (h!57728 oldBucket!40)) key!4968)) (not ((_ is Cons!51644) oldBucket!40)) (= (_1!29605 (h!57728 oldBucket!40)) key!4968)))))

(declare-fun e!2891260 () Bool)

(assert (=> b!4634739 e!2891260))

(declare-fun res!1945250 () Bool)

(assert (=> b!4634739 (=> (not res!1945250) (not e!2891260))))

(declare-fun lt!1796698 () ListMap!4357)

(declare-fun addToMapMapFromBucket!1005 (List!51768 ListMap!4357) ListMap!4357)

(assert (=> b!4634739 (= res!1945250 (= lt!1796684 (addToMapMapFromBucket!1005 oldBucket!40 lt!1796698)))))

(assert (=> b!4634739 (= lt!1796698 (extractMap!1600 Nil!51645))))

(assert (=> b!4634739 true))

(declare-fun b!4634740 () Bool)

(declare-fun res!1945249 () Bool)

(assert (=> b!4634740 (=> (not res!1945249) (not e!2891265))))

(declare-fun allKeysSameHash!1398 (List!51768 (_ BitVec 64) Hashable!5941) Bool)

(assert (=> b!4634740 (= res!1945249 (allKeysSameHash!1398 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4634741 () Bool)

(assert (=> b!4634741 (= e!2891260 (= lt!1796698 (ListMap!4358 Nil!51644)))))

(declare-fun b!4634742 () Bool)

(declare-fun e!2891256 () Bool)

(declare-fun forall!10890 (List!51769 Int) Bool)

(assert (=> b!4634742 (= e!2891256 (forall!10890 lt!1796681 lambda!194634))))

(declare-fun b!4634743 () Bool)

(declare-fun res!1945256 () Bool)

(assert (=> b!4634743 (=> res!1945256 e!2891254)))

(assert (=> b!4634743 (= res!1945256 (not (= lt!1796674 (h!57728 oldBucket!40))))))

(declare-fun b!4634744 () Bool)

(declare-fun res!1945268 () Bool)

(assert (=> b!4634744 (=> res!1945268 e!2891256)))

(assert (=> b!4634744 (= res!1945268 (not (eq!859 lt!1796684 lt!1796703)))))

(declare-fun b!4634745 () Bool)

(assert (=> b!4634745 (= e!2891254 e!2891256)))

(declare-fun res!1945263 () Bool)

(assert (=> b!4634745 (=> res!1945263 e!2891256)))

(assert (=> b!4634745 (= res!1945263 (not (eq!859 lt!1796700 lt!1796692)))))

(declare-fun lt!1796677 () ListMap!4357)

(assert (=> b!4634745 (eq!859 lt!1796677 (+!1910 lt!1796682 (h!57728 oldBucket!40)))))

(declare-fun lt!1796683 () ListMap!4357)

(declare-fun lt!1796695 () Unit!114127)

(declare-fun lemmaAddToEqMapsPreservesEq!56 (ListMap!4357 ListMap!4357 K!13010 V!13256) Unit!114127)

(assert (=> b!4634745 (= lt!1796695 (lemmaAddToEqMapsPreservesEq!56 lt!1796683 lt!1796682 (_1!29605 (h!57728 oldBucket!40)) (_2!29605 (h!57728 oldBucket!40))))))

(declare-fun b!4634746 () Bool)

(declare-fun res!1945255 () Bool)

(assert (=> b!4634746 (=> (not res!1945255) (not e!2891265))))

(declare-fun noDuplicateKeys!1544 (List!51768) Bool)

(assert (=> b!4634746 (= res!1945255 (noDuplicateKeys!1544 newBucket!224))))

(declare-fun b!4634747 () Bool)

(declare-fun e!2891258 () Bool)

(assert (=> b!4634747 (= e!2891258 e!2891261)))

(declare-fun res!1945253 () Bool)

(assert (=> b!4634747 (=> res!1945253 e!2891261)))

(declare-fun lt!1796704 () List!51768)

(assert (=> b!4634747 (= res!1945253 (not (eq!859 lt!1796684 (+!1910 (extractMap!1600 (Cons!51645 (tuple2!52625 hash!414 lt!1796704) Nil!51645)) (h!57728 oldBucket!40)))))))

(assert (=> b!4634747 (eq!859 (addToMapMapFromBucket!1005 (Cons!51644 lt!1796674 lt!1796690) (ListMap!4358 Nil!51644)) (+!1910 (addToMapMapFromBucket!1005 lt!1796690 (ListMap!4358 Nil!51644)) lt!1796674))))

(declare-fun lt!1796688 () Unit!114127)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!110 (tuple2!52622 List!51768 ListMap!4357) Unit!114127)

(assert (=> b!4634747 (= lt!1796688 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!110 lt!1796674 lt!1796690 (ListMap!4358 Nil!51644)))))

(declare-fun head!9678 (List!51768) tuple2!52622)

(assert (=> b!4634747 (= lt!1796674 (head!9678 newBucket!224))))

(declare-fun lt!1796701 () tuple2!52622)

(assert (=> b!4634747 (eq!859 (addToMapMapFromBucket!1005 (Cons!51644 lt!1796701 lt!1796704) (ListMap!4358 Nil!51644)) (+!1910 (addToMapMapFromBucket!1005 lt!1796704 (ListMap!4358 Nil!51644)) lt!1796701))))

(declare-fun lt!1796697 () Unit!114127)

(assert (=> b!4634747 (= lt!1796697 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!110 lt!1796701 lt!1796704 (ListMap!4358 Nil!51644)))))

(assert (=> b!4634747 (= lt!1796701 (head!9678 oldBucket!40))))

(declare-fun lt!1796707 () ListMap!4357)

(assert (=> b!4634747 (contains!14761 lt!1796707 key!4968)))

(declare-fun lt!1796702 () List!51769)

(assert (=> b!4634747 (= lt!1796707 (extractMap!1600 lt!1796702))))

(declare-fun lt!1796673 () Unit!114127)

(declare-fun lemmaListContainsThenExtractedMapContains!362 (ListLongMap!3643 K!13010 Hashable!5941) Unit!114127)

(assert (=> b!4634747 (= lt!1796673 (lemmaListContainsThenExtractedMapContains!362 (ListLongMap!3644 lt!1796702) key!4968 hashF!1389))))

(assert (=> b!4634747 (= lt!1796702 (Cons!51645 (tuple2!52625 hash!414 (t!358834 oldBucket!40)) Nil!51645))))

(declare-fun b!4634748 () Bool)

(assert (=> b!4634748 (= e!2891262 e!2891255)))

(declare-fun res!1945260 () Bool)

(assert (=> b!4634748 (=> res!1945260 e!2891255)))

(assert (=> b!4634748 (= res!1945260 (not (= lt!1796679 lt!1796692)))))

(assert (=> b!4634748 (= lt!1796692 (+!1910 lt!1796683 (h!57728 oldBucket!40)))))

(assert (=> b!4634748 (= lt!1796679 (-!584 lt!1796703 key!4968))))

(assert (=> b!4634748 (= lt!1796703 (+!1910 lt!1796707 (h!57728 oldBucket!40)))))

(declare-fun lt!1796675 () ListMap!4357)

(assert (=> b!4634748 (= lt!1796675 lt!1796677)))

(assert (=> b!4634748 (= lt!1796677 (+!1910 lt!1796683 (h!57728 oldBucket!40)))))

(assert (=> b!4634748 (= lt!1796675 (-!584 (+!1910 lt!1796707 (h!57728 oldBucket!40)) key!4968))))

(declare-fun lt!1796693 () Unit!114127)

(declare-fun addRemoveCommutativeForDiffKeys!39 (ListMap!4357 K!13010 V!13256 K!13010) Unit!114127)

(assert (=> b!4634748 (= lt!1796693 (addRemoveCommutativeForDiffKeys!39 lt!1796707 (_1!29605 (h!57728 oldBucket!40)) (_2!29605 (h!57728 oldBucket!40)) key!4968))))

(assert (=> b!4634748 (eq!859 lt!1796682 lt!1796683)))

(assert (=> b!4634748 (= lt!1796683 (-!584 lt!1796707 key!4968))))

(declare-fun lt!1796696 () Unit!114127)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!146 ((_ BitVec 64) List!51768 List!51768 K!13010 Hashable!5941) Unit!114127)

(assert (=> b!4634748 (= lt!1796696 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!146 hash!414 (t!358834 oldBucket!40) lt!1796690 key!4968 hashF!1389))))

(declare-fun b!4634749 () Bool)

(declare-fun res!1945266 () Bool)

(assert (=> b!4634749 (=> res!1945266 e!2891258)))

(assert (=> b!4634749 (= res!1945266 (not (= (removePairForKey!1167 (t!358834 oldBucket!40) key!4968) lt!1796690)))))

(declare-fun b!4634750 () Bool)

(declare-fun res!1945264 () Bool)

(assert (=> b!4634750 (=> (not res!1945264) (not e!2891259))))

(assert (=> b!4634750 (= res!1945264 (allKeysSameHash!1398 newBucket!224 hash!414 hashF!1389))))

(declare-fun res!1945258 () Bool)

(assert (=> start!465564 (=> (not res!1945258) (not e!2891265))))

(assert (=> start!465564 (= res!1945258 (noDuplicateKeys!1544 oldBucket!40))))

(assert (=> start!465564 e!2891265))

(assert (=> start!465564 true))

(assert (=> start!465564 e!2891266))

(assert (=> start!465564 tp_is_empty!29469))

(assert (=> start!465564 e!2891253))

(declare-fun b!4634736 () Bool)

(assert (=> b!4634736 (= e!2891257 e!2891258)))

(declare-fun res!1945251 () Bool)

(assert (=> b!4634736 (=> res!1945251 e!2891258)))

(assert (=> b!4634736 (= res!1945251 (not (= (removePairForKey!1167 lt!1796704 key!4968) lt!1796690)))))

(declare-fun tail!8179 (List!51768) List!51768)

(assert (=> b!4634736 (= lt!1796690 (tail!8179 newBucket!224))))

(assert (=> b!4634736 (= lt!1796704 (tail!8179 oldBucket!40))))

(assert (= (and start!465564 res!1945258) b!4634746))

(assert (= (and b!4634746 res!1945255) b!4634738))

(assert (= (and b!4634738 res!1945257) b!4634740))

(assert (= (and b!4634740 res!1945249) b!4634733))

(assert (= (and b!4634733 res!1945252) b!4634732))

(assert (= (and b!4634732 res!1945265) b!4634750))

(assert (= (and b!4634750 res!1945264) b!4634739))

(assert (= (and b!4634739 res!1945250) b!4634741))

(assert (= (and b!4634739 (not res!1945254)) b!4634729))

(assert (= (and b!4634729 (not res!1945267)) b!4634736))

(assert (= (and b!4634736 (not res!1945251)) b!4634749))

(assert (= (and b!4634749 (not res!1945266)) b!4634747))

(assert (= (and b!4634747 (not res!1945253)) b!4634735))

(assert (= (and b!4634735 (not res!1945261)) b!4634748))

(assert (= (and b!4634748 (not res!1945260)) b!4634734))

(assert (= (and b!4634734 (not res!1945262)) b!4634743))

(assert (= (and b!4634743 (not res!1945256)) b!4634730))

(assert (= (and b!4634730 (not res!1945259)) b!4634745))

(assert (= (and b!4634745 (not res!1945263)) b!4634744))

(assert (= (and b!4634744 (not res!1945268)) b!4634742))

(assert (= (and start!465564 ((_ is Cons!51644) oldBucket!40)) b!4634737))

(assert (= (and start!465564 ((_ is Cons!51644) newBucket!224)) b!4634731))

(declare-fun m!5489447 () Bool)

(assert (=> b!4634730 m!5489447))

(assert (=> b!4634730 m!5489447))

(declare-fun m!5489449 () Bool)

(assert (=> b!4634730 m!5489449))

(declare-fun m!5489451 () Bool)

(assert (=> b!4634749 m!5489451))

(declare-fun m!5489453 () Bool)

(assert (=> b!4634729 m!5489453))

(declare-fun m!5489455 () Bool)

(assert (=> b!4634729 m!5489455))

(declare-fun m!5489457 () Bool)

(assert (=> b!4634729 m!5489457))

(declare-fun m!5489459 () Bool)

(assert (=> b!4634729 m!5489459))

(declare-fun m!5489461 () Bool)

(assert (=> b!4634729 m!5489461))

(declare-fun m!5489463 () Bool)

(assert (=> b!4634729 m!5489463))

(declare-fun m!5489465 () Bool)

(assert (=> b!4634729 m!5489465))

(declare-fun m!5489467 () Bool)

(assert (=> b!4634729 m!5489467))

(declare-fun m!5489469 () Bool)

(assert (=> b!4634729 m!5489469))

(assert (=> b!4634729 m!5489469))

(declare-fun m!5489471 () Bool)

(assert (=> b!4634729 m!5489471))

(declare-fun m!5489473 () Bool)

(assert (=> b!4634729 m!5489473))

(declare-fun m!5489475 () Bool)

(assert (=> b!4634729 m!5489475))

(declare-fun m!5489477 () Bool)

(assert (=> b!4634732 m!5489477))

(declare-fun m!5489479 () Bool)

(assert (=> b!4634734 m!5489479))

(declare-fun m!5489481 () Bool)

(assert (=> b!4634734 m!5489481))

(declare-fun m!5489483 () Bool)

(assert (=> b!4634734 m!5489483))

(declare-fun m!5489485 () Bool)

(assert (=> b!4634734 m!5489485))

(declare-fun m!5489487 () Bool)

(assert (=> b!4634736 m!5489487))

(declare-fun m!5489489 () Bool)

(assert (=> b!4634736 m!5489489))

(declare-fun m!5489491 () Bool)

(assert (=> b!4634736 m!5489491))

(declare-fun m!5489493 () Bool)

(assert (=> b!4634746 m!5489493))

(declare-fun m!5489495 () Bool)

(assert (=> b!4634740 m!5489495))

(declare-fun m!5489497 () Bool)

(assert (=> b!4634742 m!5489497))

(declare-fun m!5489499 () Bool)

(assert (=> b!4634739 m!5489499))

(declare-fun m!5489501 () Bool)

(assert (=> b!4634739 m!5489501))

(declare-fun m!5489503 () Bool)

(assert (=> start!465564 m!5489503))

(declare-fun m!5489505 () Bool)

(assert (=> b!4634735 m!5489505))

(assert (=> b!4634735 m!5489505))

(declare-fun m!5489507 () Bool)

(assert (=> b!4634735 m!5489507))

(declare-fun m!5489509 () Bool)

(assert (=> b!4634735 m!5489509))

(declare-fun m!5489511 () Bool)

(assert (=> b!4634735 m!5489511))

(declare-fun m!5489513 () Bool)

(assert (=> b!4634745 m!5489513))

(assert (=> b!4634745 m!5489447))

(assert (=> b!4634745 m!5489447))

(declare-fun m!5489515 () Bool)

(assert (=> b!4634745 m!5489515))

(declare-fun m!5489517 () Bool)

(assert (=> b!4634745 m!5489517))

(declare-fun m!5489519 () Bool)

(assert (=> b!4634744 m!5489519))

(declare-fun m!5489521 () Bool)

(assert (=> b!4634747 m!5489521))

(declare-fun m!5489523 () Bool)

(assert (=> b!4634747 m!5489523))

(declare-fun m!5489525 () Bool)

(assert (=> b!4634747 m!5489525))

(declare-fun m!5489527 () Bool)

(assert (=> b!4634747 m!5489527))

(declare-fun m!5489529 () Bool)

(assert (=> b!4634747 m!5489529))

(declare-fun m!5489531 () Bool)

(assert (=> b!4634747 m!5489531))

(declare-fun m!5489533 () Bool)

(assert (=> b!4634747 m!5489533))

(declare-fun m!5489535 () Bool)

(assert (=> b!4634747 m!5489535))

(declare-fun m!5489537 () Bool)

(assert (=> b!4634747 m!5489537))

(assert (=> b!4634747 m!5489535))

(declare-fun m!5489539 () Bool)

(assert (=> b!4634747 m!5489539))

(declare-fun m!5489541 () Bool)

(assert (=> b!4634747 m!5489541))

(declare-fun m!5489543 () Bool)

(assert (=> b!4634747 m!5489543))

(declare-fun m!5489545 () Bool)

(assert (=> b!4634747 m!5489545))

(declare-fun m!5489547 () Bool)

(assert (=> b!4634747 m!5489547))

(assert (=> b!4634747 m!5489539))

(assert (=> b!4634747 m!5489537))

(declare-fun m!5489549 () Bool)

(assert (=> b!4634747 m!5489549))

(assert (=> b!4634747 m!5489543))

(declare-fun m!5489551 () Bool)

(assert (=> b!4634747 m!5489551))

(assert (=> b!4634747 m!5489521))

(assert (=> b!4634747 m!5489527))

(declare-fun m!5489553 () Bool)

(assert (=> b!4634747 m!5489553))

(assert (=> b!4634747 m!5489531))

(assert (=> b!4634747 m!5489545))

(declare-fun m!5489555 () Bool)

(assert (=> b!4634747 m!5489555))

(declare-fun m!5489557 () Bool)

(assert (=> b!4634748 m!5489557))

(declare-fun m!5489559 () Bool)

(assert (=> b!4634748 m!5489559))

(declare-fun m!5489561 () Bool)

(assert (=> b!4634748 m!5489561))

(declare-fun m!5489563 () Bool)

(assert (=> b!4634748 m!5489563))

(declare-fun m!5489565 () Bool)

(assert (=> b!4634748 m!5489565))

(assert (=> b!4634748 m!5489559))

(declare-fun m!5489567 () Bool)

(assert (=> b!4634748 m!5489567))

(declare-fun m!5489569 () Bool)

(assert (=> b!4634748 m!5489569))

(declare-fun m!5489571 () Bool)

(assert (=> b!4634748 m!5489571))

(declare-fun m!5489573 () Bool)

(assert (=> b!4634733 m!5489573))

(declare-fun m!5489575 () Bool)

(assert (=> b!4634733 m!5489575))

(declare-fun m!5489577 () Bool)

(assert (=> b!4634738 m!5489577))

(declare-fun m!5489579 () Bool)

(assert (=> b!4634750 m!5489579))

(check-sat (not b!4634733) (not b!4634746) (not b!4634738) (not b!4634742) (not b!4634739) (not b!4634747) (not b!4634745) (not b!4634737) (not b!4634734) (not b!4634750) tp_is_empty!29469 (not b!4634732) (not b!4634731) (not start!465564) (not b!4634735) (not b!4634729) tp_is_empty!29471 (not b!4634748) (not b!4634740) (not b!4634730) (not b!4634749) (not b!4634736) (not b!4634744))
(check-sat)
(get-model)

(declare-fun d!1461138 () Bool)

(declare-fun lt!1796710 () List!51768)

(assert (=> d!1461138 (not (containsKey!2552 lt!1796710 key!4968))))

(declare-fun e!2891272 () List!51768)

(assert (=> d!1461138 (= lt!1796710 e!2891272)))

(declare-fun c!793272 () Bool)

(assert (=> d!1461138 (= c!793272 (and ((_ is Cons!51644) (t!358834 oldBucket!40)) (= (_1!29605 (h!57728 (t!358834 oldBucket!40))) key!4968)))))

(assert (=> d!1461138 (noDuplicateKeys!1544 (t!358834 oldBucket!40))))

(assert (=> d!1461138 (= (removePairForKey!1167 (t!358834 oldBucket!40) key!4968) lt!1796710)))

(declare-fun b!4634760 () Bool)

(declare-fun e!2891271 () List!51768)

(assert (=> b!4634760 (= e!2891272 e!2891271)))

(declare-fun c!793271 () Bool)

(assert (=> b!4634760 (= c!793271 ((_ is Cons!51644) (t!358834 oldBucket!40)))))

(declare-fun b!4634761 () Bool)

(assert (=> b!4634761 (= e!2891271 (Cons!51644 (h!57728 (t!358834 oldBucket!40)) (removePairForKey!1167 (t!358834 (t!358834 oldBucket!40)) key!4968)))))

(declare-fun b!4634762 () Bool)

(assert (=> b!4634762 (= e!2891271 Nil!51644)))

(declare-fun b!4634759 () Bool)

(assert (=> b!4634759 (= e!2891272 (t!358834 (t!358834 oldBucket!40)))))

(assert (= (and d!1461138 c!793272) b!4634759))

(assert (= (and d!1461138 (not c!793272)) b!4634760))

(assert (= (and b!4634760 c!793271) b!4634761))

(assert (= (and b!4634760 (not c!793271)) b!4634762))

(declare-fun m!5489581 () Bool)

(assert (=> d!1461138 m!5489581))

(declare-fun m!5489583 () Bool)

(assert (=> d!1461138 m!5489583))

(declare-fun m!5489585 () Bool)

(assert (=> b!4634761 m!5489585))

(assert (=> b!4634749 d!1461138))

(declare-fun d!1461140 () Bool)

(declare-fun lt!1796711 () List!51768)

(assert (=> d!1461140 (not (containsKey!2552 lt!1796711 key!4968))))

(declare-fun e!2891274 () List!51768)

(assert (=> d!1461140 (= lt!1796711 e!2891274)))

(declare-fun c!793274 () Bool)

(assert (=> d!1461140 (= c!793274 (and ((_ is Cons!51644) oldBucket!40) (= (_1!29605 (h!57728 oldBucket!40)) key!4968)))))

(assert (=> d!1461140 (noDuplicateKeys!1544 oldBucket!40)))

(assert (=> d!1461140 (= (removePairForKey!1167 oldBucket!40 key!4968) lt!1796711)))

(declare-fun b!4634764 () Bool)

(declare-fun e!2891273 () List!51768)

(assert (=> b!4634764 (= e!2891274 e!2891273)))

(declare-fun c!793273 () Bool)

(assert (=> b!4634764 (= c!793273 ((_ is Cons!51644) oldBucket!40))))

(declare-fun b!4634765 () Bool)

(assert (=> b!4634765 (= e!2891273 (Cons!51644 (h!57728 oldBucket!40) (removePairForKey!1167 (t!358834 oldBucket!40) key!4968)))))

(declare-fun b!4634766 () Bool)

(assert (=> b!4634766 (= e!2891273 Nil!51644)))

(declare-fun b!4634763 () Bool)

(assert (=> b!4634763 (= e!2891274 (t!358834 oldBucket!40))))

(assert (= (and d!1461140 c!793274) b!4634763))

(assert (= (and d!1461140 (not c!793274)) b!4634764))

(assert (= (and b!4634764 c!793273) b!4634765))

(assert (= (and b!4634764 (not c!793273)) b!4634766))

(declare-fun m!5489587 () Bool)

(assert (=> d!1461140 m!5489587))

(assert (=> d!1461140 m!5489503))

(assert (=> b!4634765 m!5489451))

(assert (=> b!4634738 d!1461140))

(declare-fun d!1461142 () Bool)

(assert (=> d!1461142 (eq!859 (extractMap!1600 (Cons!51645 (tuple2!52625 hash!414 lt!1796690) Nil!51645)) (-!584 (extractMap!1600 (Cons!51645 (tuple2!52625 hash!414 (t!358834 oldBucket!40)) Nil!51645)) key!4968))))

(declare-fun lt!1796714 () Unit!114127)

(declare-fun choose!31634 ((_ BitVec 64) List!51768 List!51768 K!13010 Hashable!5941) Unit!114127)

(assert (=> d!1461142 (= lt!1796714 (choose!31634 hash!414 (t!358834 oldBucket!40) lt!1796690 key!4968 hashF!1389))))

(assert (=> d!1461142 (noDuplicateKeys!1544 (t!358834 oldBucket!40))))

(assert (=> d!1461142 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!146 hash!414 (t!358834 oldBucket!40) lt!1796690 key!4968 hashF!1389) lt!1796714)))

(declare-fun bs!1030092 () Bool)

(assert (= bs!1030092 d!1461142))

(declare-fun m!5489593 () Bool)

(assert (=> bs!1030092 m!5489593))

(assert (=> bs!1030092 m!5489509))

(declare-fun m!5489595 () Bool)

(assert (=> bs!1030092 m!5489595))

(declare-fun m!5489597 () Bool)

(assert (=> bs!1030092 m!5489597))

(assert (=> bs!1030092 m!5489583))

(assert (=> bs!1030092 m!5489509))

(assert (=> bs!1030092 m!5489597))

(declare-fun m!5489599 () Bool)

(assert (=> bs!1030092 m!5489599))

(assert (=> bs!1030092 m!5489595))

(assert (=> b!4634748 d!1461142))

(declare-fun d!1461148 () Bool)

(declare-fun e!2891294 () Bool)

(assert (=> d!1461148 e!2891294))

(declare-fun res!1945279 () Bool)

(assert (=> d!1461148 (=> (not res!1945279) (not e!2891294))))

(declare-fun lt!1796723 () ListMap!4357)

(assert (=> d!1461148 (= res!1945279 (not (contains!14761 lt!1796723 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!286 (List!51768 K!13010) List!51768)

(assert (=> d!1461148 (= lt!1796723 (ListMap!4358 (removePresrvNoDuplicatedKeys!286 (toList!5054 lt!1796703) key!4968)))))

(assert (=> d!1461148 (= (-!584 lt!1796703 key!4968) lt!1796723)))

(declare-fun b!4634799 () Bool)

(declare-datatypes ((List!51770 0))(
  ( (Nil!51646) (Cons!51646 (h!57732 K!13010) (t!358838 List!51770)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8897 (List!51770) (InoxSet K!13010))

(declare-fun keys!18225 (ListMap!4357) List!51770)

(assert (=> b!4634799 (= e!2891294 (= ((_ map and) (content!8897 (keys!18225 lt!1796703)) ((_ map not) (store ((as const (Array K!13010 Bool)) false) key!4968 true))) (content!8897 (keys!18225 lt!1796723))))))

(assert (= (and d!1461148 res!1945279) b!4634799))

(declare-fun m!5489617 () Bool)

(assert (=> d!1461148 m!5489617))

(declare-fun m!5489619 () Bool)

(assert (=> d!1461148 m!5489619))

(declare-fun m!5489621 () Bool)

(assert (=> b!4634799 m!5489621))

(declare-fun m!5489623 () Bool)

(assert (=> b!4634799 m!5489623))

(declare-fun m!5489625 () Bool)

(assert (=> b!4634799 m!5489625))

(declare-fun m!5489627 () Bool)

(assert (=> b!4634799 m!5489627))

(assert (=> b!4634799 m!5489621))

(assert (=> b!4634799 m!5489627))

(declare-fun m!5489629 () Bool)

(assert (=> b!4634799 m!5489629))

(assert (=> b!4634748 d!1461148))

(declare-fun d!1461158 () Bool)

(declare-fun e!2891300 () Bool)

(assert (=> d!1461158 e!2891300))

(declare-fun res!1945290 () Bool)

(assert (=> d!1461158 (=> (not res!1945290) (not e!2891300))))

(declare-fun lt!1796747 () ListMap!4357)

(assert (=> d!1461158 (= res!1945290 (contains!14761 lt!1796747 (_1!29605 (h!57728 oldBucket!40))))))

(declare-fun lt!1796745 () List!51768)

(assert (=> d!1461158 (= lt!1796747 (ListMap!4358 lt!1796745))))

(declare-fun lt!1796744 () Unit!114127)

(declare-fun lt!1796746 () Unit!114127)

(assert (=> d!1461158 (= lt!1796744 lt!1796746)))

(declare-datatypes ((Option!11696 0))(
  ( (None!11695) (Some!11695 (v!45893 V!13256)) )
))
(declare-fun getValueByKey!1518 (List!51768 K!13010) Option!11696)

(assert (=> d!1461158 (= (getValueByKey!1518 lt!1796745 (_1!29605 (h!57728 oldBucket!40))) (Some!11695 (_2!29605 (h!57728 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!882 (List!51768 K!13010 V!13256) Unit!114127)

(assert (=> d!1461158 (= lt!1796746 (lemmaContainsTupThenGetReturnValue!882 lt!1796745 (_1!29605 (h!57728 oldBucket!40)) (_2!29605 (h!57728 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!390 (List!51768 K!13010 V!13256) List!51768)

(assert (=> d!1461158 (= lt!1796745 (insertNoDuplicatedKeys!390 (toList!5054 lt!1796707) (_1!29605 (h!57728 oldBucket!40)) (_2!29605 (h!57728 oldBucket!40))))))

(assert (=> d!1461158 (= (+!1910 lt!1796707 (h!57728 oldBucket!40)) lt!1796747)))

(declare-fun b!4634810 () Bool)

(declare-fun res!1945291 () Bool)

(assert (=> b!4634810 (=> (not res!1945291) (not e!2891300))))

(assert (=> b!4634810 (= res!1945291 (= (getValueByKey!1518 (toList!5054 lt!1796747) (_1!29605 (h!57728 oldBucket!40))) (Some!11695 (_2!29605 (h!57728 oldBucket!40)))))))

(declare-fun b!4634811 () Bool)

(declare-fun contains!14763 (List!51768 tuple2!52622) Bool)

(assert (=> b!4634811 (= e!2891300 (contains!14763 (toList!5054 lt!1796747) (h!57728 oldBucket!40)))))

(assert (= (and d!1461158 res!1945290) b!4634810))

(assert (= (and b!4634810 res!1945291) b!4634811))

(declare-fun m!5489643 () Bool)

(assert (=> d!1461158 m!5489643))

(declare-fun m!5489645 () Bool)

(assert (=> d!1461158 m!5489645))

(declare-fun m!5489647 () Bool)

(assert (=> d!1461158 m!5489647))

(declare-fun m!5489649 () Bool)

(assert (=> d!1461158 m!5489649))

(declare-fun m!5489651 () Bool)

(assert (=> b!4634810 m!5489651))

(declare-fun m!5489653 () Bool)

(assert (=> b!4634811 m!5489653))

(assert (=> b!4634748 d!1461158))

(declare-fun d!1461162 () Bool)

(declare-fun e!2891301 () Bool)

(assert (=> d!1461162 e!2891301))

(declare-fun res!1945292 () Bool)

(assert (=> d!1461162 (=> (not res!1945292) (not e!2891301))))

(declare-fun lt!1796751 () ListMap!4357)

(assert (=> d!1461162 (= res!1945292 (contains!14761 lt!1796751 (_1!29605 (h!57728 oldBucket!40))))))

(declare-fun lt!1796749 () List!51768)

(assert (=> d!1461162 (= lt!1796751 (ListMap!4358 lt!1796749))))

(declare-fun lt!1796748 () Unit!114127)

(declare-fun lt!1796750 () Unit!114127)

(assert (=> d!1461162 (= lt!1796748 lt!1796750)))

(assert (=> d!1461162 (= (getValueByKey!1518 lt!1796749 (_1!29605 (h!57728 oldBucket!40))) (Some!11695 (_2!29605 (h!57728 oldBucket!40))))))

(assert (=> d!1461162 (= lt!1796750 (lemmaContainsTupThenGetReturnValue!882 lt!1796749 (_1!29605 (h!57728 oldBucket!40)) (_2!29605 (h!57728 oldBucket!40))))))

(assert (=> d!1461162 (= lt!1796749 (insertNoDuplicatedKeys!390 (toList!5054 lt!1796683) (_1!29605 (h!57728 oldBucket!40)) (_2!29605 (h!57728 oldBucket!40))))))

(assert (=> d!1461162 (= (+!1910 lt!1796683 (h!57728 oldBucket!40)) lt!1796751)))

(declare-fun b!4634812 () Bool)

(declare-fun res!1945293 () Bool)

(assert (=> b!4634812 (=> (not res!1945293) (not e!2891301))))

(assert (=> b!4634812 (= res!1945293 (= (getValueByKey!1518 (toList!5054 lt!1796751) (_1!29605 (h!57728 oldBucket!40))) (Some!11695 (_2!29605 (h!57728 oldBucket!40)))))))

(declare-fun b!4634813 () Bool)

(assert (=> b!4634813 (= e!2891301 (contains!14763 (toList!5054 lt!1796751) (h!57728 oldBucket!40)))))

(assert (= (and d!1461162 res!1945292) b!4634812))

(assert (= (and b!4634812 res!1945293) b!4634813))

(declare-fun m!5489655 () Bool)

(assert (=> d!1461162 m!5489655))

(declare-fun m!5489657 () Bool)

(assert (=> d!1461162 m!5489657))

(declare-fun m!5489659 () Bool)

(assert (=> d!1461162 m!5489659))

(declare-fun m!5489661 () Bool)

(assert (=> d!1461162 m!5489661))

(declare-fun m!5489663 () Bool)

(assert (=> b!4634812 m!5489663))

(declare-fun m!5489665 () Bool)

(assert (=> b!4634813 m!5489665))

(assert (=> b!4634748 d!1461162))

(declare-fun d!1461164 () Bool)

(declare-fun content!8898 (List!51768) (InoxSet tuple2!52622))

(assert (=> d!1461164 (= (eq!859 lt!1796682 lt!1796683) (= (content!8898 (toList!5054 lt!1796682)) (content!8898 (toList!5054 lt!1796683))))))

(declare-fun bs!1030095 () Bool)

(assert (= bs!1030095 d!1461164))

(declare-fun m!5489667 () Bool)

(assert (=> bs!1030095 m!5489667))

(declare-fun m!5489669 () Bool)

(assert (=> bs!1030095 m!5489669))

(assert (=> b!4634748 d!1461164))

(declare-fun d!1461166 () Bool)

(declare-fun e!2891302 () Bool)

(assert (=> d!1461166 e!2891302))

(declare-fun res!1945294 () Bool)

(assert (=> d!1461166 (=> (not res!1945294) (not e!2891302))))

(declare-fun lt!1796752 () ListMap!4357)

(assert (=> d!1461166 (= res!1945294 (not (contains!14761 lt!1796752 key!4968)))))

(assert (=> d!1461166 (= lt!1796752 (ListMap!4358 (removePresrvNoDuplicatedKeys!286 (toList!5054 (+!1910 lt!1796707 (h!57728 oldBucket!40))) key!4968)))))

(assert (=> d!1461166 (= (-!584 (+!1910 lt!1796707 (h!57728 oldBucket!40)) key!4968) lt!1796752)))

(declare-fun b!4634814 () Bool)

(assert (=> b!4634814 (= e!2891302 (= ((_ map and) (content!8897 (keys!18225 (+!1910 lt!1796707 (h!57728 oldBucket!40)))) ((_ map not) (store ((as const (Array K!13010 Bool)) false) key!4968 true))) (content!8897 (keys!18225 lt!1796752))))))

(assert (= (and d!1461166 res!1945294) b!4634814))

(declare-fun m!5489671 () Bool)

(assert (=> d!1461166 m!5489671))

(declare-fun m!5489673 () Bool)

(assert (=> d!1461166 m!5489673))

(declare-fun m!5489675 () Bool)

(assert (=> b!4634814 m!5489675))

(declare-fun m!5489677 () Bool)

(assert (=> b!4634814 m!5489677))

(assert (=> b!4634814 m!5489625))

(declare-fun m!5489679 () Bool)

(assert (=> b!4634814 m!5489679))

(assert (=> b!4634814 m!5489559))

(assert (=> b!4634814 m!5489675))

(assert (=> b!4634814 m!5489679))

(declare-fun m!5489681 () Bool)

(assert (=> b!4634814 m!5489681))

(assert (=> b!4634748 d!1461166))

(declare-fun d!1461168 () Bool)

(declare-fun e!2891303 () Bool)

(assert (=> d!1461168 e!2891303))

(declare-fun res!1945295 () Bool)

(assert (=> d!1461168 (=> (not res!1945295) (not e!2891303))))

(declare-fun lt!1796753 () ListMap!4357)

(assert (=> d!1461168 (= res!1945295 (not (contains!14761 lt!1796753 key!4968)))))

(assert (=> d!1461168 (= lt!1796753 (ListMap!4358 (removePresrvNoDuplicatedKeys!286 (toList!5054 lt!1796707) key!4968)))))

(assert (=> d!1461168 (= (-!584 lt!1796707 key!4968) lt!1796753)))

(declare-fun b!4634815 () Bool)

(assert (=> b!4634815 (= e!2891303 (= ((_ map and) (content!8897 (keys!18225 lt!1796707)) ((_ map not) (store ((as const (Array K!13010 Bool)) false) key!4968 true))) (content!8897 (keys!18225 lt!1796753))))))

(assert (= (and d!1461168 res!1945295) b!4634815))

(declare-fun m!5489683 () Bool)

(assert (=> d!1461168 m!5489683))

(declare-fun m!5489685 () Bool)

(assert (=> d!1461168 m!5489685))

(declare-fun m!5489687 () Bool)

(assert (=> b!4634815 m!5489687))

(declare-fun m!5489689 () Bool)

(assert (=> b!4634815 m!5489689))

(assert (=> b!4634815 m!5489625))

(declare-fun m!5489691 () Bool)

(assert (=> b!4634815 m!5489691))

(assert (=> b!4634815 m!5489687))

(assert (=> b!4634815 m!5489691))

(declare-fun m!5489693 () Bool)

(assert (=> b!4634815 m!5489693))

(assert (=> b!4634748 d!1461168))

(declare-fun d!1461170 () Bool)

(assert (=> d!1461170 (= (-!584 (+!1910 lt!1796707 (tuple2!52623 (_1!29605 (h!57728 oldBucket!40)) (_2!29605 (h!57728 oldBucket!40)))) key!4968) (+!1910 (-!584 lt!1796707 key!4968) (tuple2!52623 (_1!29605 (h!57728 oldBucket!40)) (_2!29605 (h!57728 oldBucket!40)))))))

(declare-fun lt!1796756 () Unit!114127)

(declare-fun choose!31635 (ListMap!4357 K!13010 V!13256 K!13010) Unit!114127)

(assert (=> d!1461170 (= lt!1796756 (choose!31635 lt!1796707 (_1!29605 (h!57728 oldBucket!40)) (_2!29605 (h!57728 oldBucket!40)) key!4968))))

(assert (=> d!1461170 (not (= (_1!29605 (h!57728 oldBucket!40)) key!4968))))

(assert (=> d!1461170 (= (addRemoveCommutativeForDiffKeys!39 lt!1796707 (_1!29605 (h!57728 oldBucket!40)) (_2!29605 (h!57728 oldBucket!40)) key!4968) lt!1796756)))

(declare-fun bs!1030096 () Bool)

(assert (= bs!1030096 d!1461170))

(declare-fun m!5489695 () Bool)

(assert (=> bs!1030096 m!5489695))

(declare-fun m!5489697 () Bool)

(assert (=> bs!1030096 m!5489697))

(assert (=> bs!1030096 m!5489565))

(declare-fun m!5489699 () Bool)

(assert (=> bs!1030096 m!5489699))

(assert (=> bs!1030096 m!5489695))

(declare-fun m!5489701 () Bool)

(assert (=> bs!1030096 m!5489701))

(assert (=> bs!1030096 m!5489565))

(assert (=> b!4634748 d!1461170))

(declare-fun d!1461172 () Bool)

(declare-fun e!2891304 () Bool)

(assert (=> d!1461172 e!2891304))

(declare-fun res!1945296 () Bool)

(assert (=> d!1461172 (=> (not res!1945296) (not e!2891304))))

(declare-fun lt!1796760 () ListMap!4357)

(assert (=> d!1461172 (= res!1945296 (contains!14761 lt!1796760 (_1!29605 lt!1796701)))))

(declare-fun lt!1796758 () List!51768)

(assert (=> d!1461172 (= lt!1796760 (ListMap!4358 lt!1796758))))

(declare-fun lt!1796757 () Unit!114127)

(declare-fun lt!1796759 () Unit!114127)

(assert (=> d!1461172 (= lt!1796757 lt!1796759)))

(assert (=> d!1461172 (= (getValueByKey!1518 lt!1796758 (_1!29605 lt!1796701)) (Some!11695 (_2!29605 lt!1796701)))))

(assert (=> d!1461172 (= lt!1796759 (lemmaContainsTupThenGetReturnValue!882 lt!1796758 (_1!29605 lt!1796701) (_2!29605 lt!1796701)))))

(assert (=> d!1461172 (= lt!1796758 (insertNoDuplicatedKeys!390 (toList!5054 (addToMapMapFromBucket!1005 lt!1796704 (ListMap!4358 Nil!51644))) (_1!29605 lt!1796701) (_2!29605 lt!1796701)))))

(assert (=> d!1461172 (= (+!1910 (addToMapMapFromBucket!1005 lt!1796704 (ListMap!4358 Nil!51644)) lt!1796701) lt!1796760)))

(declare-fun b!4634816 () Bool)

(declare-fun res!1945297 () Bool)

(assert (=> b!4634816 (=> (not res!1945297) (not e!2891304))))

(assert (=> b!4634816 (= res!1945297 (= (getValueByKey!1518 (toList!5054 lt!1796760) (_1!29605 lt!1796701)) (Some!11695 (_2!29605 lt!1796701))))))

(declare-fun b!4634817 () Bool)

(assert (=> b!4634817 (= e!2891304 (contains!14763 (toList!5054 lt!1796760) lt!1796701))))

(assert (= (and d!1461172 res!1945296) b!4634816))

(assert (= (and b!4634816 res!1945297) b!4634817))

(declare-fun m!5489703 () Bool)

(assert (=> d!1461172 m!5489703))

(declare-fun m!5489705 () Bool)

(assert (=> d!1461172 m!5489705))

(declare-fun m!5489707 () Bool)

(assert (=> d!1461172 m!5489707))

(declare-fun m!5489709 () Bool)

(assert (=> d!1461172 m!5489709))

(declare-fun m!5489711 () Bool)

(assert (=> b!4634816 m!5489711))

(declare-fun m!5489713 () Bool)

(assert (=> b!4634817 m!5489713))

(assert (=> b!4634747 d!1461172))

(declare-fun d!1461174 () Bool)

(declare-fun e!2891305 () Bool)

(assert (=> d!1461174 e!2891305))

(declare-fun res!1945298 () Bool)

(assert (=> d!1461174 (=> (not res!1945298) (not e!2891305))))

(declare-fun lt!1796764 () ListMap!4357)

(assert (=> d!1461174 (= res!1945298 (contains!14761 lt!1796764 (_1!29605 (h!57728 oldBucket!40))))))

(declare-fun lt!1796762 () List!51768)

(assert (=> d!1461174 (= lt!1796764 (ListMap!4358 lt!1796762))))

(declare-fun lt!1796761 () Unit!114127)

(declare-fun lt!1796763 () Unit!114127)

(assert (=> d!1461174 (= lt!1796761 lt!1796763)))

(assert (=> d!1461174 (= (getValueByKey!1518 lt!1796762 (_1!29605 (h!57728 oldBucket!40))) (Some!11695 (_2!29605 (h!57728 oldBucket!40))))))

(assert (=> d!1461174 (= lt!1796763 (lemmaContainsTupThenGetReturnValue!882 lt!1796762 (_1!29605 (h!57728 oldBucket!40)) (_2!29605 (h!57728 oldBucket!40))))))

(assert (=> d!1461174 (= lt!1796762 (insertNoDuplicatedKeys!390 (toList!5054 (extractMap!1600 (Cons!51645 (tuple2!52625 hash!414 lt!1796704) Nil!51645))) (_1!29605 (h!57728 oldBucket!40)) (_2!29605 (h!57728 oldBucket!40))))))

(assert (=> d!1461174 (= (+!1910 (extractMap!1600 (Cons!51645 (tuple2!52625 hash!414 lt!1796704) Nil!51645)) (h!57728 oldBucket!40)) lt!1796764)))

(declare-fun b!4634818 () Bool)

(declare-fun res!1945299 () Bool)

(assert (=> b!4634818 (=> (not res!1945299) (not e!2891305))))

(assert (=> b!4634818 (= res!1945299 (= (getValueByKey!1518 (toList!5054 lt!1796764) (_1!29605 (h!57728 oldBucket!40))) (Some!11695 (_2!29605 (h!57728 oldBucket!40)))))))

(declare-fun b!4634819 () Bool)

(assert (=> b!4634819 (= e!2891305 (contains!14763 (toList!5054 lt!1796764) (h!57728 oldBucket!40)))))

(assert (= (and d!1461174 res!1945298) b!4634818))

(assert (= (and b!4634818 res!1945299) b!4634819))

(declare-fun m!5489715 () Bool)

(assert (=> d!1461174 m!5489715))

(declare-fun m!5489717 () Bool)

(assert (=> d!1461174 m!5489717))

(declare-fun m!5489719 () Bool)

(assert (=> d!1461174 m!5489719))

(declare-fun m!5489721 () Bool)

(assert (=> d!1461174 m!5489721))

(declare-fun m!5489723 () Bool)

(assert (=> b!4634818 m!5489723))

(declare-fun m!5489725 () Bool)

(assert (=> b!4634819 m!5489725))

(assert (=> b!4634747 d!1461174))

(declare-fun d!1461176 () Bool)

(assert (=> d!1461176 (eq!859 (addToMapMapFromBucket!1005 (Cons!51644 lt!1796674 lt!1796690) (ListMap!4358 Nil!51644)) (+!1910 (addToMapMapFromBucket!1005 lt!1796690 (ListMap!4358 Nil!51644)) lt!1796674))))

(declare-fun lt!1796767 () Unit!114127)

(declare-fun choose!31636 (tuple2!52622 List!51768 ListMap!4357) Unit!114127)

(assert (=> d!1461176 (= lt!1796767 (choose!31636 lt!1796674 lt!1796690 (ListMap!4358 Nil!51644)))))

(assert (=> d!1461176 (noDuplicateKeys!1544 lt!1796690)))

(assert (=> d!1461176 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!110 lt!1796674 lt!1796690 (ListMap!4358 Nil!51644)) lt!1796767)))

(declare-fun bs!1030097 () Bool)

(assert (= bs!1030097 d!1461176))

(declare-fun m!5489727 () Bool)

(assert (=> bs!1030097 m!5489727))

(assert (=> bs!1030097 m!5489531))

(assert (=> bs!1030097 m!5489531))

(assert (=> bs!1030097 m!5489545))

(declare-fun m!5489729 () Bool)

(assert (=> bs!1030097 m!5489729))

(assert (=> bs!1030097 m!5489543))

(assert (=> bs!1030097 m!5489543))

(assert (=> bs!1030097 m!5489545))

(assert (=> bs!1030097 m!5489547))

(assert (=> b!4634747 d!1461176))

(declare-fun b!4634855 () Bool)

(declare-fun e!2891330 () List!51770)

(assert (=> b!4634855 (= e!2891330 (keys!18225 lt!1796707))))

(declare-fun b!4634856 () Bool)

(declare-fun e!2891332 () Unit!114127)

(declare-fun lt!1796847 () Unit!114127)

(assert (=> b!4634856 (= e!2891332 lt!1796847)))

(declare-fun lt!1796852 () Unit!114127)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1420 (List!51768 K!13010) Unit!114127)

(assert (=> b!4634856 (= lt!1796852 (lemmaContainsKeyImpliesGetValueByKeyDefined!1420 (toList!5054 lt!1796707) key!4968))))

(declare-fun isDefined!8961 (Option!11696) Bool)

(assert (=> b!4634856 (isDefined!8961 (getValueByKey!1518 (toList!5054 lt!1796707) key!4968))))

(declare-fun lt!1796849 () Unit!114127)

(assert (=> b!4634856 (= lt!1796849 lt!1796852)))

(declare-fun lemmaInListThenGetKeysListContains!684 (List!51768 K!13010) Unit!114127)

(assert (=> b!4634856 (= lt!1796847 (lemmaInListThenGetKeysListContains!684 (toList!5054 lt!1796707) key!4968))))

(declare-fun call!323463 () Bool)

(assert (=> b!4634856 call!323463))

(declare-fun b!4634857 () Bool)

(declare-fun e!2891328 () Bool)

(declare-fun e!2891331 () Bool)

(assert (=> b!4634857 (= e!2891328 e!2891331)))

(declare-fun res!1945317 () Bool)

(assert (=> b!4634857 (=> (not res!1945317) (not e!2891331))))

(assert (=> b!4634857 (= res!1945317 (isDefined!8961 (getValueByKey!1518 (toList!5054 lt!1796707) key!4968)))))

(declare-fun d!1461178 () Bool)

(assert (=> d!1461178 e!2891328))

(declare-fun res!1945316 () Bool)

(assert (=> d!1461178 (=> res!1945316 e!2891328)))

(declare-fun e!2891327 () Bool)

(assert (=> d!1461178 (= res!1945316 e!2891327)))

(declare-fun res!1945315 () Bool)

(assert (=> d!1461178 (=> (not res!1945315) (not e!2891327))))

(declare-fun lt!1796854 () Bool)

(assert (=> d!1461178 (= res!1945315 (not lt!1796854))))

(declare-fun lt!1796848 () Bool)

(assert (=> d!1461178 (= lt!1796854 lt!1796848)))

(declare-fun lt!1796853 () Unit!114127)

(assert (=> d!1461178 (= lt!1796853 e!2891332)))

(declare-fun c!793295 () Bool)

(assert (=> d!1461178 (= c!793295 lt!1796848)))

(declare-fun containsKey!2554 (List!51768 K!13010) Bool)

(assert (=> d!1461178 (= lt!1796848 (containsKey!2554 (toList!5054 lt!1796707) key!4968))))

(assert (=> d!1461178 (= (contains!14761 lt!1796707 key!4968) lt!1796854)))

(declare-fun b!4634858 () Bool)

(declare-fun e!2891329 () Unit!114127)

(assert (=> b!4634858 (= e!2891332 e!2891329)))

(declare-fun c!793293 () Bool)

(assert (=> b!4634858 (= c!793293 call!323463)))

(declare-fun b!4634859 () Bool)

(assert (=> b!4634859 false))

(declare-fun lt!1796851 () Unit!114127)

(declare-fun lt!1796850 () Unit!114127)

(assert (=> b!4634859 (= lt!1796851 lt!1796850)))

(assert (=> b!4634859 (containsKey!2554 (toList!5054 lt!1796707) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!688 (List!51768 K!13010) Unit!114127)

(assert (=> b!4634859 (= lt!1796850 (lemmaInGetKeysListThenContainsKey!688 (toList!5054 lt!1796707) key!4968))))

(declare-fun Unit!114153 () Unit!114127)

(assert (=> b!4634859 (= e!2891329 Unit!114153)))

(declare-fun b!4634860 () Bool)

(declare-fun Unit!114154 () Unit!114127)

(assert (=> b!4634860 (= e!2891329 Unit!114154)))

(declare-fun bm!323458 () Bool)

(declare-fun contains!14765 (List!51770 K!13010) Bool)

(assert (=> bm!323458 (= call!323463 (contains!14765 e!2891330 key!4968))))

(declare-fun c!793294 () Bool)

(assert (=> bm!323458 (= c!793294 c!793295)))

(declare-fun b!4634861 () Bool)

(declare-fun getKeysList!689 (List!51768) List!51770)

(assert (=> b!4634861 (= e!2891330 (getKeysList!689 (toList!5054 lt!1796707)))))

(declare-fun b!4634862 () Bool)

(assert (=> b!4634862 (= e!2891327 (not (contains!14765 (keys!18225 lt!1796707) key!4968)))))

(declare-fun b!4634863 () Bool)

(assert (=> b!4634863 (= e!2891331 (contains!14765 (keys!18225 lt!1796707) key!4968))))

(assert (= (and d!1461178 c!793295) b!4634856))

(assert (= (and d!1461178 (not c!793295)) b!4634858))

(assert (= (and b!4634858 c!793293) b!4634859))

(assert (= (and b!4634858 (not c!793293)) b!4634860))

(assert (= (or b!4634856 b!4634858) bm!323458))

(assert (= (and bm!323458 c!793294) b!4634861))

(assert (= (and bm!323458 (not c!793294)) b!4634855))

(assert (= (and d!1461178 res!1945315) b!4634862))

(assert (= (and d!1461178 (not res!1945316)) b!4634857))

(assert (= (and b!4634857 res!1945317) b!4634863))

(declare-fun m!5489731 () Bool)

(assert (=> b!4634859 m!5489731))

(declare-fun m!5489733 () Bool)

(assert (=> b!4634859 m!5489733))

(declare-fun m!5489735 () Bool)

(assert (=> bm!323458 m!5489735))

(assert (=> b!4634863 m!5489687))

(assert (=> b!4634863 m!5489687))

(declare-fun m!5489737 () Bool)

(assert (=> b!4634863 m!5489737))

(declare-fun m!5489739 () Bool)

(assert (=> b!4634857 m!5489739))

(assert (=> b!4634857 m!5489739))

(declare-fun m!5489741 () Bool)

(assert (=> b!4634857 m!5489741))

(assert (=> d!1461178 m!5489731))

(declare-fun m!5489743 () Bool)

(assert (=> b!4634861 m!5489743))

(assert (=> b!4634862 m!5489687))

(assert (=> b!4634862 m!5489687))

(assert (=> b!4634862 m!5489737))

(declare-fun m!5489745 () Bool)

(assert (=> b!4634856 m!5489745))

(assert (=> b!4634856 m!5489739))

(assert (=> b!4634856 m!5489739))

(assert (=> b!4634856 m!5489741))

(declare-fun m!5489747 () Bool)

(assert (=> b!4634856 m!5489747))

(assert (=> b!4634855 m!5489687))

(assert (=> b!4634747 d!1461178))

(declare-fun d!1461180 () Bool)

(assert (=> d!1461180 (= (head!9678 newBucket!224) (h!57728 newBucket!224))))

(assert (=> b!4634747 d!1461180))

(declare-fun bs!1030120 () Bool)

(declare-fun d!1461182 () Bool)

(assert (= bs!1030120 (and d!1461182 b!4634729)))

(declare-fun lambda!194682 () Int)

(assert (=> bs!1030120 (= lambda!194682 lambda!194634)))

(declare-fun lt!1796890 () ListMap!4357)

(declare-fun invariantList!1238 (List!51768) Bool)

(assert (=> d!1461182 (invariantList!1238 (toList!5054 lt!1796890))))

(declare-fun e!2891341 () ListMap!4357)

(assert (=> d!1461182 (= lt!1796890 e!2891341)))

(declare-fun c!793300 () Bool)

(assert (=> d!1461182 (= c!793300 ((_ is Cons!51645) (Cons!51645 (tuple2!52625 hash!414 lt!1796704) Nil!51645)))))

(assert (=> d!1461182 (forall!10890 (Cons!51645 (tuple2!52625 hash!414 lt!1796704) Nil!51645) lambda!194682)))

(assert (=> d!1461182 (= (extractMap!1600 (Cons!51645 (tuple2!52625 hash!414 lt!1796704) Nil!51645)) lt!1796890)))

(declare-fun b!4634879 () Bool)

(assert (=> b!4634879 (= e!2891341 (addToMapMapFromBucket!1005 (_2!29606 (h!57729 (Cons!51645 (tuple2!52625 hash!414 lt!1796704) Nil!51645))) (extractMap!1600 (t!358835 (Cons!51645 (tuple2!52625 hash!414 lt!1796704) Nil!51645)))))))

(declare-fun b!4634880 () Bool)

(assert (=> b!4634880 (= e!2891341 (ListMap!4358 Nil!51644))))

(assert (= (and d!1461182 c!793300) b!4634879))

(assert (= (and d!1461182 (not c!793300)) b!4634880))

(declare-fun m!5489829 () Bool)

(assert (=> d!1461182 m!5489829))

(declare-fun m!5489831 () Bool)

(assert (=> d!1461182 m!5489831))

(declare-fun m!5489833 () Bool)

(assert (=> b!4634879 m!5489833))

(assert (=> b!4634879 m!5489833))

(declare-fun m!5489835 () Bool)

(assert (=> b!4634879 m!5489835))

(assert (=> b!4634747 d!1461182))

(declare-fun bs!1030127 () Bool)

(declare-fun d!1461196 () Bool)

(assert (= bs!1030127 (and d!1461196 b!4634729)))

(declare-fun lambda!194686 () Int)

(assert (=> bs!1030127 (= lambda!194686 lambda!194634)))

(declare-fun bs!1030128 () Bool)

(assert (= bs!1030128 (and d!1461196 d!1461182)))

(assert (=> bs!1030128 (= lambda!194686 lambda!194682)))

(assert (=> d!1461196 (contains!14761 (extractMap!1600 (toList!5053 (ListLongMap!3644 lt!1796702))) key!4968)))

(declare-fun lt!1796893 () Unit!114127)

(declare-fun choose!31637 (ListLongMap!3643 K!13010 Hashable!5941) Unit!114127)

(assert (=> d!1461196 (= lt!1796893 (choose!31637 (ListLongMap!3644 lt!1796702) key!4968 hashF!1389))))

(assert (=> d!1461196 (forall!10890 (toList!5053 (ListLongMap!3644 lt!1796702)) lambda!194686)))

(assert (=> d!1461196 (= (lemmaListContainsThenExtractedMapContains!362 (ListLongMap!3644 lt!1796702) key!4968 hashF!1389) lt!1796893)))

(declare-fun bs!1030129 () Bool)

(assert (= bs!1030129 d!1461196))

(declare-fun m!5489871 () Bool)

(assert (=> bs!1030129 m!5489871))

(assert (=> bs!1030129 m!5489871))

(declare-fun m!5489873 () Bool)

(assert (=> bs!1030129 m!5489873))

(declare-fun m!5489875 () Bool)

(assert (=> bs!1030129 m!5489875))

(declare-fun m!5489877 () Bool)

(assert (=> bs!1030129 m!5489877))

(assert (=> b!4634747 d!1461196))

(declare-fun d!1461200 () Bool)

(assert (=> d!1461200 (eq!859 (addToMapMapFromBucket!1005 (Cons!51644 lt!1796701 lt!1796704) (ListMap!4358 Nil!51644)) (+!1910 (addToMapMapFromBucket!1005 lt!1796704 (ListMap!4358 Nil!51644)) lt!1796701))))

(declare-fun lt!1796894 () Unit!114127)

(assert (=> d!1461200 (= lt!1796894 (choose!31636 lt!1796701 lt!1796704 (ListMap!4358 Nil!51644)))))

(assert (=> d!1461200 (noDuplicateKeys!1544 lt!1796704)))

(assert (=> d!1461200 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!110 lt!1796701 lt!1796704 (ListMap!4358 Nil!51644)) lt!1796894)))

(declare-fun bs!1030130 () Bool)

(assert (= bs!1030130 d!1461200))

(declare-fun m!5489879 () Bool)

(assert (=> bs!1030130 m!5489879))

(assert (=> bs!1030130 m!5489535))

(assert (=> bs!1030130 m!5489535))

(assert (=> bs!1030130 m!5489537))

(declare-fun m!5489881 () Bool)

(assert (=> bs!1030130 m!5489881))

(assert (=> bs!1030130 m!5489539))

(assert (=> bs!1030130 m!5489539))

(assert (=> bs!1030130 m!5489537))

(assert (=> bs!1030130 m!5489549))

(assert (=> b!4634747 d!1461200))

(declare-fun b!4634958 () Bool)

(assert (=> b!4634958 true))

(declare-fun bs!1030257 () Bool)

(declare-fun b!4634961 () Bool)

(assert (= bs!1030257 (and b!4634961 b!4634958)))

(declare-fun lambda!194731 () Int)

(declare-fun lambda!194730 () Int)

(assert (=> bs!1030257 (= lambda!194731 lambda!194730)))

(assert (=> b!4634961 true))

(declare-fun lt!1797050 () ListMap!4357)

(declare-fun lambda!194732 () Int)

(assert (=> bs!1030257 (= (= lt!1797050 (ListMap!4358 Nil!51644)) (= lambda!194732 lambda!194730))))

(assert (=> b!4634961 (= (= lt!1797050 (ListMap!4358 Nil!51644)) (= lambda!194732 lambda!194731))))

(assert (=> b!4634961 true))

(declare-fun bs!1030258 () Bool)

(declare-fun d!1461202 () Bool)

(assert (= bs!1030258 (and d!1461202 b!4634958)))

(declare-fun lt!1797048 () ListMap!4357)

(declare-fun lambda!194733 () Int)

(assert (=> bs!1030258 (= (= lt!1797048 (ListMap!4358 Nil!51644)) (= lambda!194733 lambda!194730))))

(declare-fun bs!1030259 () Bool)

(assert (= bs!1030259 (and d!1461202 b!4634961)))

(assert (=> bs!1030259 (= (= lt!1797048 (ListMap!4358 Nil!51644)) (= lambda!194733 lambda!194731))))

(assert (=> bs!1030259 (= (= lt!1797048 lt!1797050) (= lambda!194733 lambda!194732))))

(assert (=> d!1461202 true))

(declare-fun b!4634957 () Bool)

(declare-fun e!2891396 () Bool)

(declare-fun forall!10892 (List!51768 Int) Bool)

(assert (=> b!4634957 (= e!2891396 (forall!10892 (toList!5054 (ListMap!4358 Nil!51644)) lambda!194732))))

(declare-fun e!2891394 () ListMap!4357)

(assert (=> b!4634958 (= e!2891394 (ListMap!4358 Nil!51644))))

(declare-fun lt!1797066 () Unit!114127)

(declare-fun call!323485 () Unit!114127)

(assert (=> b!4634958 (= lt!1797066 call!323485)))

(declare-fun call!323487 () Bool)

(assert (=> b!4634958 call!323487))

(declare-fun lt!1797065 () Unit!114127)

(assert (=> b!4634958 (= lt!1797065 lt!1797066)))

(declare-fun call!323486 () Bool)

(assert (=> b!4634958 call!323486))

(declare-fun lt!1797067 () Unit!114127)

(declare-fun Unit!114162 () Unit!114127)

(assert (=> b!4634958 (= lt!1797067 Unit!114162)))

(declare-fun e!2891395 () Bool)

(assert (=> d!1461202 e!2891395))

(declare-fun res!1945367 () Bool)

(assert (=> d!1461202 (=> (not res!1945367) (not e!2891395))))

(assert (=> d!1461202 (= res!1945367 (forall!10892 (Cons!51644 lt!1796674 lt!1796690) lambda!194733))))

(assert (=> d!1461202 (= lt!1797048 e!2891394)))

(declare-fun c!793318 () Bool)

(assert (=> d!1461202 (= c!793318 ((_ is Nil!51644) (Cons!51644 lt!1796674 lt!1796690)))))

(assert (=> d!1461202 (noDuplicateKeys!1544 (Cons!51644 lt!1796674 lt!1796690))))

(assert (=> d!1461202 (= (addToMapMapFromBucket!1005 (Cons!51644 lt!1796674 lt!1796690) (ListMap!4358 Nil!51644)) lt!1797048)))

(declare-fun b!4634959 () Bool)

(assert (=> b!4634959 (= e!2891395 (invariantList!1238 (toList!5054 lt!1797048)))))

(declare-fun b!4634960 () Bool)

(declare-fun res!1945366 () Bool)

(assert (=> b!4634960 (=> (not res!1945366) (not e!2891395))))

(assert (=> b!4634960 (= res!1945366 (forall!10892 (toList!5054 (ListMap!4358 Nil!51644)) lambda!194733))))

(declare-fun bm!323480 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!540 (ListMap!4357) Unit!114127)

(assert (=> bm!323480 (= call!323485 (lemmaContainsAllItsOwnKeys!540 (ListMap!4358 Nil!51644)))))

(assert (=> b!4634961 (= e!2891394 lt!1797050)))

(declare-fun lt!1797054 () ListMap!4357)

(assert (=> b!4634961 (= lt!1797054 (+!1910 (ListMap!4358 Nil!51644) (h!57728 (Cons!51644 lt!1796674 lt!1796690))))))

(assert (=> b!4634961 (= lt!1797050 (addToMapMapFromBucket!1005 (t!358834 (Cons!51644 lt!1796674 lt!1796690)) (+!1910 (ListMap!4358 Nil!51644) (h!57728 (Cons!51644 lt!1796674 lt!1796690)))))))

(declare-fun lt!1797056 () Unit!114127)

(assert (=> b!4634961 (= lt!1797056 call!323485)))

(assert (=> b!4634961 (forall!10892 (toList!5054 (ListMap!4358 Nil!51644)) lambda!194731)))

(declare-fun lt!1797047 () Unit!114127)

(assert (=> b!4634961 (= lt!1797047 lt!1797056)))

(assert (=> b!4634961 call!323486))

(declare-fun lt!1797064 () Unit!114127)

(declare-fun Unit!114167 () Unit!114127)

(assert (=> b!4634961 (= lt!1797064 Unit!114167)))

(assert (=> b!4634961 (forall!10892 (t!358834 (Cons!51644 lt!1796674 lt!1796690)) lambda!194732)))

(declare-fun lt!1797053 () Unit!114127)

(declare-fun Unit!114168 () Unit!114127)

(assert (=> b!4634961 (= lt!1797053 Unit!114168)))

(declare-fun lt!1797059 () Unit!114127)

(declare-fun Unit!114169 () Unit!114127)

(assert (=> b!4634961 (= lt!1797059 Unit!114169)))

(declare-fun lt!1797058 () Unit!114127)

(declare-fun forallContained!3124 (List!51768 Int tuple2!52622) Unit!114127)

(assert (=> b!4634961 (= lt!1797058 (forallContained!3124 (toList!5054 lt!1797054) lambda!194732 (h!57728 (Cons!51644 lt!1796674 lt!1796690))))))

(assert (=> b!4634961 (contains!14761 lt!1797054 (_1!29605 (h!57728 (Cons!51644 lt!1796674 lt!1796690))))))

(declare-fun lt!1797060 () Unit!114127)

(declare-fun Unit!114170 () Unit!114127)

(assert (=> b!4634961 (= lt!1797060 Unit!114170)))

(assert (=> b!4634961 (contains!14761 lt!1797050 (_1!29605 (h!57728 (Cons!51644 lt!1796674 lt!1796690))))))

(declare-fun lt!1797052 () Unit!114127)

(declare-fun Unit!114171 () Unit!114127)

(assert (=> b!4634961 (= lt!1797052 Unit!114171)))

(assert (=> b!4634961 (forall!10892 (Cons!51644 lt!1796674 lt!1796690) lambda!194732)))

(declare-fun lt!1797049 () Unit!114127)

(declare-fun Unit!114172 () Unit!114127)

(assert (=> b!4634961 (= lt!1797049 Unit!114172)))

(assert (=> b!4634961 (forall!10892 (toList!5054 lt!1797054) lambda!194732)))

(declare-fun lt!1797061 () Unit!114127)

(declare-fun Unit!114173 () Unit!114127)

(assert (=> b!4634961 (= lt!1797061 Unit!114173)))

(declare-fun lt!1797063 () Unit!114127)

(declare-fun Unit!114174 () Unit!114127)

(assert (=> b!4634961 (= lt!1797063 Unit!114174)))

(declare-fun lt!1797062 () Unit!114127)

(declare-fun addForallContainsKeyThenBeforeAdding!539 (ListMap!4357 ListMap!4357 K!13010 V!13256) Unit!114127)

(assert (=> b!4634961 (= lt!1797062 (addForallContainsKeyThenBeforeAdding!539 (ListMap!4358 Nil!51644) lt!1797050 (_1!29605 (h!57728 (Cons!51644 lt!1796674 lt!1796690))) (_2!29605 (h!57728 (Cons!51644 lt!1796674 lt!1796690)))))))

(assert (=> b!4634961 (forall!10892 (toList!5054 (ListMap!4358 Nil!51644)) lambda!194732)))

(declare-fun lt!1797051 () Unit!114127)

(assert (=> b!4634961 (= lt!1797051 lt!1797062)))

(assert (=> b!4634961 (forall!10892 (toList!5054 (ListMap!4358 Nil!51644)) lambda!194732)))

(declare-fun lt!1797057 () Unit!114127)

(declare-fun Unit!114175 () Unit!114127)

(assert (=> b!4634961 (= lt!1797057 Unit!114175)))

(declare-fun res!1945368 () Bool)

(assert (=> b!4634961 (= res!1945368 call!323487)))

(assert (=> b!4634961 (=> (not res!1945368) (not e!2891396))))

(assert (=> b!4634961 e!2891396))

(declare-fun lt!1797055 () Unit!114127)

(declare-fun Unit!114176 () Unit!114127)

(assert (=> b!4634961 (= lt!1797055 Unit!114176)))

(declare-fun bm!323481 () Bool)

(assert (=> bm!323481 (= call!323486 (forall!10892 (ite c!793318 (toList!5054 (ListMap!4358 Nil!51644)) (toList!5054 lt!1797054)) (ite c!793318 lambda!194730 lambda!194732)))))

(declare-fun bm!323482 () Bool)

(assert (=> bm!323482 (= call!323487 (forall!10892 (ite c!793318 (toList!5054 (ListMap!4358 Nil!51644)) (Cons!51644 lt!1796674 lt!1796690)) (ite c!793318 lambda!194730 lambda!194732)))))

(assert (= (and d!1461202 c!793318) b!4634958))

(assert (= (and d!1461202 (not c!793318)) b!4634961))

(assert (= (and b!4634961 res!1945368) b!4634957))

(assert (= (or b!4634958 b!4634961) bm!323480))

(assert (= (or b!4634958 b!4634961) bm!323481))

(assert (= (or b!4634958 b!4634961) bm!323482))

(assert (= (and d!1461202 res!1945367) b!4634960))

(assert (= (and b!4634960 res!1945366) b!4634959))

(declare-fun m!5490099 () Bool)

(assert (=> d!1461202 m!5490099))

(declare-fun m!5490101 () Bool)

(assert (=> d!1461202 m!5490101))

(declare-fun m!5490103 () Bool)

(assert (=> bm!323482 m!5490103))

(declare-fun m!5490105 () Bool)

(assert (=> bm!323481 m!5490105))

(declare-fun m!5490107 () Bool)

(assert (=> bm!323480 m!5490107))

(declare-fun m!5490109 () Bool)

(assert (=> b!4634960 m!5490109))

(declare-fun m!5490111 () Bool)

(assert (=> b!4634959 m!5490111))

(declare-fun m!5490113 () Bool)

(assert (=> b!4634961 m!5490113))

(declare-fun m!5490115 () Bool)

(assert (=> b!4634961 m!5490115))

(declare-fun m!5490117 () Bool)

(assert (=> b!4634961 m!5490117))

(declare-fun m!5490119 () Bool)

(assert (=> b!4634961 m!5490119))

(declare-fun m!5490121 () Bool)

(assert (=> b!4634961 m!5490121))

(declare-fun m!5490123 () Bool)

(assert (=> b!4634961 m!5490123))

(declare-fun m!5490125 () Bool)

(assert (=> b!4634961 m!5490125))

(declare-fun m!5490127 () Bool)

(assert (=> b!4634961 m!5490127))

(assert (=> b!4634961 m!5490123))

(declare-fun m!5490129 () Bool)

(assert (=> b!4634961 m!5490129))

(declare-fun m!5490131 () Bool)

(assert (=> b!4634961 m!5490131))

(assert (=> b!4634961 m!5490125))

(declare-fun m!5490133 () Bool)

(assert (=> b!4634961 m!5490133))

(assert (=> b!4634957 m!5490125))

(assert (=> b!4634747 d!1461202))

(declare-fun d!1461254 () Bool)

(assert (=> d!1461254 (= (eq!859 lt!1796684 (+!1910 (extractMap!1600 (Cons!51645 (tuple2!52625 hash!414 lt!1796704) Nil!51645)) (h!57728 oldBucket!40))) (= (content!8898 (toList!5054 lt!1796684)) (content!8898 (toList!5054 (+!1910 (extractMap!1600 (Cons!51645 (tuple2!52625 hash!414 lt!1796704) Nil!51645)) (h!57728 oldBucket!40))))))))

(declare-fun bs!1030260 () Bool)

(assert (= bs!1030260 d!1461254))

(declare-fun m!5490135 () Bool)

(assert (=> bs!1030260 m!5490135))

(declare-fun m!5490137 () Bool)

(assert (=> bs!1030260 m!5490137))

(assert (=> b!4634747 d!1461254))

(declare-fun d!1461256 () Bool)

(assert (=> d!1461256 (= (eq!859 (addToMapMapFromBucket!1005 (Cons!51644 lt!1796701 lt!1796704) (ListMap!4358 Nil!51644)) (+!1910 (addToMapMapFromBucket!1005 lt!1796704 (ListMap!4358 Nil!51644)) lt!1796701)) (= (content!8898 (toList!5054 (addToMapMapFromBucket!1005 (Cons!51644 lt!1796701 lt!1796704) (ListMap!4358 Nil!51644)))) (content!8898 (toList!5054 (+!1910 (addToMapMapFromBucket!1005 lt!1796704 (ListMap!4358 Nil!51644)) lt!1796701)))))))

(declare-fun bs!1030261 () Bool)

(assert (= bs!1030261 d!1461256))

(declare-fun m!5490139 () Bool)

(assert (=> bs!1030261 m!5490139))

(declare-fun m!5490141 () Bool)

(assert (=> bs!1030261 m!5490141))

(assert (=> b!4634747 d!1461256))

(declare-fun bs!1030262 () Bool)

(declare-fun b!4634965 () Bool)

(assert (= bs!1030262 (and b!4634965 b!4634958)))

(declare-fun lambda!194734 () Int)

(assert (=> bs!1030262 (= lambda!194734 lambda!194730)))

(declare-fun bs!1030263 () Bool)

(assert (= bs!1030263 (and b!4634965 b!4634961)))

(assert (=> bs!1030263 (= lambda!194734 lambda!194731)))

(assert (=> bs!1030263 (= (= (ListMap!4358 Nil!51644) lt!1797050) (= lambda!194734 lambda!194732))))

(declare-fun bs!1030264 () Bool)

(assert (= bs!1030264 (and b!4634965 d!1461202)))

(assert (=> bs!1030264 (= (= (ListMap!4358 Nil!51644) lt!1797048) (= lambda!194734 lambda!194733))))

(assert (=> b!4634965 true))

(declare-fun bs!1030265 () Bool)

(declare-fun b!4634968 () Bool)

(assert (= bs!1030265 (and b!4634968 b!4634961)))

(declare-fun lambda!194735 () Int)

(assert (=> bs!1030265 (= (= (ListMap!4358 Nil!51644) lt!1797050) (= lambda!194735 lambda!194732))))

(declare-fun bs!1030266 () Bool)

(assert (= bs!1030266 (and b!4634968 d!1461202)))

(assert (=> bs!1030266 (= (= (ListMap!4358 Nil!51644) lt!1797048) (= lambda!194735 lambda!194733))))

(declare-fun bs!1030267 () Bool)

(assert (= bs!1030267 (and b!4634968 b!4634965)))

(assert (=> bs!1030267 (= lambda!194735 lambda!194734)))

(assert (=> bs!1030265 (= lambda!194735 lambda!194731)))

(declare-fun bs!1030268 () Bool)

(assert (= bs!1030268 (and b!4634968 b!4634958)))

(assert (=> bs!1030268 (= lambda!194735 lambda!194730)))

(assert (=> b!4634968 true))

(declare-fun lambda!194737 () Int)

(declare-fun lt!1797071 () ListMap!4357)

(assert (=> bs!1030265 (= (= lt!1797071 lt!1797050) (= lambda!194737 lambda!194732))))

(assert (=> bs!1030266 (= (= lt!1797071 lt!1797048) (= lambda!194737 lambda!194733))))

(assert (=> bs!1030267 (= (= lt!1797071 (ListMap!4358 Nil!51644)) (= lambda!194737 lambda!194734))))

(assert (=> b!4634968 (= (= lt!1797071 (ListMap!4358 Nil!51644)) (= lambda!194737 lambda!194735))))

(assert (=> bs!1030265 (= (= lt!1797071 (ListMap!4358 Nil!51644)) (= lambda!194737 lambda!194731))))

(assert (=> bs!1030268 (= (= lt!1797071 (ListMap!4358 Nil!51644)) (= lambda!194737 lambda!194730))))

(assert (=> b!4634968 true))

(declare-fun bs!1030269 () Bool)

(declare-fun d!1461258 () Bool)

(assert (= bs!1030269 (and d!1461258 b!4634961)))

(declare-fun lt!1797069 () ListMap!4357)

(declare-fun lambda!194741 () Int)

(assert (=> bs!1030269 (= (= lt!1797069 lt!1797050) (= lambda!194741 lambda!194732))))

(declare-fun bs!1030270 () Bool)

(assert (= bs!1030270 (and d!1461258 d!1461202)))

(assert (=> bs!1030270 (= (= lt!1797069 lt!1797048) (= lambda!194741 lambda!194733))))

(declare-fun bs!1030271 () Bool)

(assert (= bs!1030271 (and d!1461258 b!4634965)))

(assert (=> bs!1030271 (= (= lt!1797069 (ListMap!4358 Nil!51644)) (= lambda!194741 lambda!194734))))

(declare-fun bs!1030272 () Bool)

(assert (= bs!1030272 (and d!1461258 b!4634968)))

(assert (=> bs!1030272 (= (= lt!1797069 lt!1797071) (= lambda!194741 lambda!194737))))

(assert (=> bs!1030272 (= (= lt!1797069 (ListMap!4358 Nil!51644)) (= lambda!194741 lambda!194735))))

(assert (=> bs!1030269 (= (= lt!1797069 (ListMap!4358 Nil!51644)) (= lambda!194741 lambda!194731))))

(declare-fun bs!1030273 () Bool)

(assert (= bs!1030273 (and d!1461258 b!4634958)))

(assert (=> bs!1030273 (= (= lt!1797069 (ListMap!4358 Nil!51644)) (= lambda!194741 lambda!194730))))

(assert (=> d!1461258 true))

(declare-fun b!4634964 () Bool)

(declare-fun e!2891399 () Bool)

(assert (=> b!4634964 (= e!2891399 (forall!10892 (toList!5054 (ListMap!4358 Nil!51644)) lambda!194737))))

(declare-fun e!2891397 () ListMap!4357)

(assert (=> b!4634965 (= e!2891397 (ListMap!4358 Nil!51644))))

(declare-fun lt!1797087 () Unit!114127)

(declare-fun call!323488 () Unit!114127)

(assert (=> b!4634965 (= lt!1797087 call!323488)))

(declare-fun call!323490 () Bool)

(assert (=> b!4634965 call!323490))

(declare-fun lt!1797086 () Unit!114127)

(assert (=> b!4634965 (= lt!1797086 lt!1797087)))

(declare-fun call!323489 () Bool)

(assert (=> b!4634965 call!323489))

(declare-fun lt!1797088 () Unit!114127)

(declare-fun Unit!114177 () Unit!114127)

(assert (=> b!4634965 (= lt!1797088 Unit!114177)))

(declare-fun e!2891398 () Bool)

(assert (=> d!1461258 e!2891398))

(declare-fun res!1945370 () Bool)

(assert (=> d!1461258 (=> (not res!1945370) (not e!2891398))))

(assert (=> d!1461258 (= res!1945370 (forall!10892 (Cons!51644 lt!1796701 lt!1796704) lambda!194741))))

(assert (=> d!1461258 (= lt!1797069 e!2891397)))

(declare-fun c!793319 () Bool)

(assert (=> d!1461258 (= c!793319 ((_ is Nil!51644) (Cons!51644 lt!1796701 lt!1796704)))))

(assert (=> d!1461258 (noDuplicateKeys!1544 (Cons!51644 lt!1796701 lt!1796704))))

(assert (=> d!1461258 (= (addToMapMapFromBucket!1005 (Cons!51644 lt!1796701 lt!1796704) (ListMap!4358 Nil!51644)) lt!1797069)))

(declare-fun b!4634966 () Bool)

(assert (=> b!4634966 (= e!2891398 (invariantList!1238 (toList!5054 lt!1797069)))))

(declare-fun b!4634967 () Bool)

(declare-fun res!1945369 () Bool)

(assert (=> b!4634967 (=> (not res!1945369) (not e!2891398))))

(assert (=> b!4634967 (= res!1945369 (forall!10892 (toList!5054 (ListMap!4358 Nil!51644)) lambda!194741))))

(declare-fun bm!323483 () Bool)

(assert (=> bm!323483 (= call!323488 (lemmaContainsAllItsOwnKeys!540 (ListMap!4358 Nil!51644)))))

(assert (=> b!4634968 (= e!2891397 lt!1797071)))

(declare-fun lt!1797075 () ListMap!4357)

(assert (=> b!4634968 (= lt!1797075 (+!1910 (ListMap!4358 Nil!51644) (h!57728 (Cons!51644 lt!1796701 lt!1796704))))))

(assert (=> b!4634968 (= lt!1797071 (addToMapMapFromBucket!1005 (t!358834 (Cons!51644 lt!1796701 lt!1796704)) (+!1910 (ListMap!4358 Nil!51644) (h!57728 (Cons!51644 lt!1796701 lt!1796704)))))))

(declare-fun lt!1797077 () Unit!114127)

(assert (=> b!4634968 (= lt!1797077 call!323488)))

(assert (=> b!4634968 (forall!10892 (toList!5054 (ListMap!4358 Nil!51644)) lambda!194735)))

(declare-fun lt!1797068 () Unit!114127)

(assert (=> b!4634968 (= lt!1797068 lt!1797077)))

(assert (=> b!4634968 call!323489))

(declare-fun lt!1797085 () Unit!114127)

(declare-fun Unit!114178 () Unit!114127)

(assert (=> b!4634968 (= lt!1797085 Unit!114178)))

(assert (=> b!4634968 (forall!10892 (t!358834 (Cons!51644 lt!1796701 lt!1796704)) lambda!194737)))

(declare-fun lt!1797074 () Unit!114127)

(declare-fun Unit!114179 () Unit!114127)

(assert (=> b!4634968 (= lt!1797074 Unit!114179)))

(declare-fun lt!1797080 () Unit!114127)

(declare-fun Unit!114180 () Unit!114127)

(assert (=> b!4634968 (= lt!1797080 Unit!114180)))

(declare-fun lt!1797079 () Unit!114127)

(assert (=> b!4634968 (= lt!1797079 (forallContained!3124 (toList!5054 lt!1797075) lambda!194737 (h!57728 (Cons!51644 lt!1796701 lt!1796704))))))

(assert (=> b!4634968 (contains!14761 lt!1797075 (_1!29605 (h!57728 (Cons!51644 lt!1796701 lt!1796704))))))

(declare-fun lt!1797081 () Unit!114127)

(declare-fun Unit!114181 () Unit!114127)

(assert (=> b!4634968 (= lt!1797081 Unit!114181)))

(assert (=> b!4634968 (contains!14761 lt!1797071 (_1!29605 (h!57728 (Cons!51644 lt!1796701 lt!1796704))))))

(declare-fun lt!1797073 () Unit!114127)

(declare-fun Unit!114182 () Unit!114127)

(assert (=> b!4634968 (= lt!1797073 Unit!114182)))

(assert (=> b!4634968 (forall!10892 (Cons!51644 lt!1796701 lt!1796704) lambda!194737)))

(declare-fun lt!1797070 () Unit!114127)

(declare-fun Unit!114183 () Unit!114127)

(assert (=> b!4634968 (= lt!1797070 Unit!114183)))

(assert (=> b!4634968 (forall!10892 (toList!5054 lt!1797075) lambda!194737)))

(declare-fun lt!1797082 () Unit!114127)

(declare-fun Unit!114184 () Unit!114127)

(assert (=> b!4634968 (= lt!1797082 Unit!114184)))

(declare-fun lt!1797084 () Unit!114127)

(declare-fun Unit!114185 () Unit!114127)

(assert (=> b!4634968 (= lt!1797084 Unit!114185)))

(declare-fun lt!1797083 () Unit!114127)

(assert (=> b!4634968 (= lt!1797083 (addForallContainsKeyThenBeforeAdding!539 (ListMap!4358 Nil!51644) lt!1797071 (_1!29605 (h!57728 (Cons!51644 lt!1796701 lt!1796704))) (_2!29605 (h!57728 (Cons!51644 lt!1796701 lt!1796704)))))))

(assert (=> b!4634968 (forall!10892 (toList!5054 (ListMap!4358 Nil!51644)) lambda!194737)))

(declare-fun lt!1797072 () Unit!114127)

(assert (=> b!4634968 (= lt!1797072 lt!1797083)))

(assert (=> b!4634968 (forall!10892 (toList!5054 (ListMap!4358 Nil!51644)) lambda!194737)))

(declare-fun lt!1797078 () Unit!114127)

(declare-fun Unit!114186 () Unit!114127)

(assert (=> b!4634968 (= lt!1797078 Unit!114186)))

(declare-fun res!1945371 () Bool)

(assert (=> b!4634968 (= res!1945371 call!323490)))

(assert (=> b!4634968 (=> (not res!1945371) (not e!2891399))))

(assert (=> b!4634968 e!2891399))

(declare-fun lt!1797076 () Unit!114127)

(declare-fun Unit!114187 () Unit!114127)

(assert (=> b!4634968 (= lt!1797076 Unit!114187)))

(declare-fun bm!323484 () Bool)

(assert (=> bm!323484 (= call!323489 (forall!10892 (ite c!793319 (toList!5054 (ListMap!4358 Nil!51644)) (toList!5054 lt!1797075)) (ite c!793319 lambda!194734 lambda!194737)))))

(declare-fun bm!323485 () Bool)

(assert (=> bm!323485 (= call!323490 (forall!10892 (ite c!793319 (toList!5054 (ListMap!4358 Nil!51644)) (Cons!51644 lt!1796701 lt!1796704)) (ite c!793319 lambda!194734 lambda!194737)))))

(assert (= (and d!1461258 c!793319) b!4634965))

(assert (= (and d!1461258 (not c!793319)) b!4634968))

(assert (= (and b!4634968 res!1945371) b!4634964))

(assert (= (or b!4634965 b!4634968) bm!323483))

(assert (= (or b!4634965 b!4634968) bm!323484))

(assert (= (or b!4634965 b!4634968) bm!323485))

(assert (= (and d!1461258 res!1945370) b!4634967))

(assert (= (and b!4634967 res!1945369) b!4634966))

(declare-fun m!5490143 () Bool)

(assert (=> d!1461258 m!5490143))

(declare-fun m!5490145 () Bool)

(assert (=> d!1461258 m!5490145))

(declare-fun m!5490147 () Bool)

(assert (=> bm!323485 m!5490147))

(declare-fun m!5490149 () Bool)

(assert (=> bm!323484 m!5490149))

(assert (=> bm!323483 m!5490107))

(declare-fun m!5490151 () Bool)

(assert (=> b!4634967 m!5490151))

(declare-fun m!5490153 () Bool)

(assert (=> b!4634966 m!5490153))

(declare-fun m!5490155 () Bool)

(assert (=> b!4634968 m!5490155))

(declare-fun m!5490157 () Bool)

(assert (=> b!4634968 m!5490157))

(declare-fun m!5490159 () Bool)

(assert (=> b!4634968 m!5490159))

(declare-fun m!5490161 () Bool)

(assert (=> b!4634968 m!5490161))

(declare-fun m!5490163 () Bool)

(assert (=> b!4634968 m!5490163))

(declare-fun m!5490165 () Bool)

(assert (=> b!4634968 m!5490165))

(declare-fun m!5490167 () Bool)

(assert (=> b!4634968 m!5490167))

(declare-fun m!5490169 () Bool)

(assert (=> b!4634968 m!5490169))

(assert (=> b!4634968 m!5490165))

(declare-fun m!5490171 () Bool)

(assert (=> b!4634968 m!5490171))

(declare-fun m!5490173 () Bool)

(assert (=> b!4634968 m!5490173))

(assert (=> b!4634968 m!5490167))

(declare-fun m!5490175 () Bool)

(assert (=> b!4634968 m!5490175))

(assert (=> b!4634964 m!5490167))

(assert (=> b!4634747 d!1461258))

(declare-fun d!1461260 () Bool)

(assert (=> d!1461260 (= (eq!859 (addToMapMapFromBucket!1005 (Cons!51644 lt!1796674 lt!1796690) (ListMap!4358 Nil!51644)) (+!1910 (addToMapMapFromBucket!1005 lt!1796690 (ListMap!4358 Nil!51644)) lt!1796674)) (= (content!8898 (toList!5054 (addToMapMapFromBucket!1005 (Cons!51644 lt!1796674 lt!1796690) (ListMap!4358 Nil!51644)))) (content!8898 (toList!5054 (+!1910 (addToMapMapFromBucket!1005 lt!1796690 (ListMap!4358 Nil!51644)) lt!1796674)))))))

(declare-fun bs!1030274 () Bool)

(assert (= bs!1030274 d!1461260))

(declare-fun m!5490177 () Bool)

(assert (=> bs!1030274 m!5490177))

(declare-fun m!5490179 () Bool)

(assert (=> bs!1030274 m!5490179))

(assert (=> b!4634747 d!1461260))

(declare-fun d!1461262 () Bool)

(assert (=> d!1461262 (= (head!9678 oldBucket!40) (h!57728 oldBucket!40))))

(assert (=> b!4634747 d!1461262))

(declare-fun bs!1030275 () Bool)

(declare-fun d!1461264 () Bool)

(assert (= bs!1030275 (and d!1461264 b!4634729)))

(declare-fun lambda!194744 () Int)

(assert (=> bs!1030275 (= lambda!194744 lambda!194634)))

(declare-fun bs!1030276 () Bool)

(assert (= bs!1030276 (and d!1461264 d!1461182)))

(assert (=> bs!1030276 (= lambda!194744 lambda!194682)))

(declare-fun bs!1030277 () Bool)

(assert (= bs!1030277 (and d!1461264 d!1461196)))

(assert (=> bs!1030277 (= lambda!194744 lambda!194686)))

(declare-fun lt!1797105 () ListMap!4357)

(assert (=> d!1461264 (invariantList!1238 (toList!5054 lt!1797105))))

(declare-fun e!2891404 () ListMap!4357)

(assert (=> d!1461264 (= lt!1797105 e!2891404)))

(declare-fun c!793320 () Bool)

(assert (=> d!1461264 (= c!793320 ((_ is Cons!51645) lt!1796702))))

(assert (=> d!1461264 (forall!10890 lt!1796702 lambda!194744)))

(assert (=> d!1461264 (= (extractMap!1600 lt!1796702) lt!1797105)))

(declare-fun b!4634977 () Bool)

(assert (=> b!4634977 (= e!2891404 (addToMapMapFromBucket!1005 (_2!29606 (h!57729 lt!1796702)) (extractMap!1600 (t!358835 lt!1796702))))))

(declare-fun b!4634978 () Bool)

(assert (=> b!4634978 (= e!2891404 (ListMap!4358 Nil!51644))))

(assert (= (and d!1461264 c!793320) b!4634977))

(assert (= (and d!1461264 (not c!793320)) b!4634978))

(declare-fun m!5490181 () Bool)

(assert (=> d!1461264 m!5490181))

(declare-fun m!5490183 () Bool)

(assert (=> d!1461264 m!5490183))

(declare-fun m!5490185 () Bool)

(assert (=> b!4634977 m!5490185))

(assert (=> b!4634977 m!5490185))

(declare-fun m!5490187 () Bool)

(assert (=> b!4634977 m!5490187))

(assert (=> b!4634747 d!1461264))

(declare-fun d!1461266 () Bool)

(declare-fun e!2891405 () Bool)

(assert (=> d!1461266 e!2891405))

(declare-fun res!1945380 () Bool)

(assert (=> d!1461266 (=> (not res!1945380) (not e!2891405))))

(declare-fun lt!1797109 () ListMap!4357)

(assert (=> d!1461266 (= res!1945380 (contains!14761 lt!1797109 (_1!29605 lt!1796674)))))

(declare-fun lt!1797107 () List!51768)

(assert (=> d!1461266 (= lt!1797109 (ListMap!4358 lt!1797107))))

(declare-fun lt!1797106 () Unit!114127)

(declare-fun lt!1797108 () Unit!114127)

(assert (=> d!1461266 (= lt!1797106 lt!1797108)))

(assert (=> d!1461266 (= (getValueByKey!1518 lt!1797107 (_1!29605 lt!1796674)) (Some!11695 (_2!29605 lt!1796674)))))

(assert (=> d!1461266 (= lt!1797108 (lemmaContainsTupThenGetReturnValue!882 lt!1797107 (_1!29605 lt!1796674) (_2!29605 lt!1796674)))))

(assert (=> d!1461266 (= lt!1797107 (insertNoDuplicatedKeys!390 (toList!5054 (addToMapMapFromBucket!1005 lt!1796690 (ListMap!4358 Nil!51644))) (_1!29605 lt!1796674) (_2!29605 lt!1796674)))))

(assert (=> d!1461266 (= (+!1910 (addToMapMapFromBucket!1005 lt!1796690 (ListMap!4358 Nil!51644)) lt!1796674) lt!1797109)))

(declare-fun b!4634979 () Bool)

(declare-fun res!1945381 () Bool)

(assert (=> b!4634979 (=> (not res!1945381) (not e!2891405))))

(assert (=> b!4634979 (= res!1945381 (= (getValueByKey!1518 (toList!5054 lt!1797109) (_1!29605 lt!1796674)) (Some!11695 (_2!29605 lt!1796674))))))

(declare-fun b!4634980 () Bool)

(assert (=> b!4634980 (= e!2891405 (contains!14763 (toList!5054 lt!1797109) lt!1796674))))

(assert (= (and d!1461266 res!1945380) b!4634979))

(assert (= (and b!4634979 res!1945381) b!4634980))

(declare-fun m!5490189 () Bool)

(assert (=> d!1461266 m!5490189))

(declare-fun m!5490191 () Bool)

(assert (=> d!1461266 m!5490191))

(declare-fun m!5490193 () Bool)

(assert (=> d!1461266 m!5490193))

(declare-fun m!5490195 () Bool)

(assert (=> d!1461266 m!5490195))

(declare-fun m!5490197 () Bool)

(assert (=> b!4634979 m!5490197))

(declare-fun m!5490199 () Bool)

(assert (=> b!4634980 m!5490199))

(assert (=> b!4634747 d!1461266))

(declare-fun bs!1030284 () Bool)

(declare-fun b!4634986 () Bool)

(assert (= bs!1030284 (and b!4634986 b!4634961)))

(declare-fun lambda!194746 () Int)

(assert (=> bs!1030284 (= (= (ListMap!4358 Nil!51644) lt!1797050) (= lambda!194746 lambda!194732))))

(declare-fun bs!1030286 () Bool)

(assert (= bs!1030286 (and b!4634986 d!1461202)))

(assert (=> bs!1030286 (= (= (ListMap!4358 Nil!51644) lt!1797048) (= lambda!194746 lambda!194733))))

(declare-fun bs!1030287 () Bool)

(assert (= bs!1030287 (and b!4634986 b!4634965)))

(assert (=> bs!1030287 (= lambda!194746 lambda!194734)))

(declare-fun bs!1030288 () Bool)

(assert (= bs!1030288 (and b!4634986 b!4634968)))

(assert (=> bs!1030288 (= (= (ListMap!4358 Nil!51644) lt!1797071) (= lambda!194746 lambda!194737))))

(assert (=> bs!1030288 (= lambda!194746 lambda!194735)))

(declare-fun bs!1030289 () Bool)

(assert (= bs!1030289 (and b!4634986 b!4634958)))

(assert (=> bs!1030289 (= lambda!194746 lambda!194730)))

(declare-fun bs!1030290 () Bool)

(assert (= bs!1030290 (and b!4634986 d!1461258)))

(assert (=> bs!1030290 (= (= (ListMap!4358 Nil!51644) lt!1797069) (= lambda!194746 lambda!194741))))

(assert (=> bs!1030284 (= lambda!194746 lambda!194731)))

(assert (=> b!4634986 true))

(declare-fun bs!1030291 () Bool)

(declare-fun b!4634989 () Bool)

(assert (= bs!1030291 (and b!4634989 b!4634961)))

(declare-fun lambda!194747 () Int)

(assert (=> bs!1030291 (= (= (ListMap!4358 Nil!51644) lt!1797050) (= lambda!194747 lambda!194732))))

(declare-fun bs!1030292 () Bool)

(assert (= bs!1030292 (and b!4634989 d!1461202)))

(assert (=> bs!1030292 (= (= (ListMap!4358 Nil!51644) lt!1797048) (= lambda!194747 lambda!194733))))

(declare-fun bs!1030293 () Bool)

(assert (= bs!1030293 (and b!4634989 b!4634965)))

(assert (=> bs!1030293 (= lambda!194747 lambda!194734)))

(declare-fun bs!1030294 () Bool)

(assert (= bs!1030294 (and b!4634989 b!4634986)))

(assert (=> bs!1030294 (= lambda!194747 lambda!194746)))

(declare-fun bs!1030295 () Bool)

(assert (= bs!1030295 (and b!4634989 b!4634968)))

(assert (=> bs!1030295 (= (= (ListMap!4358 Nil!51644) lt!1797071) (= lambda!194747 lambda!194737))))

(assert (=> bs!1030295 (= lambda!194747 lambda!194735)))

(declare-fun bs!1030296 () Bool)

(assert (= bs!1030296 (and b!4634989 b!4634958)))

(assert (=> bs!1030296 (= lambda!194747 lambda!194730)))

(declare-fun bs!1030297 () Bool)

(assert (= bs!1030297 (and b!4634989 d!1461258)))

(assert (=> bs!1030297 (= (= (ListMap!4358 Nil!51644) lt!1797069) (= lambda!194747 lambda!194741))))

(assert (=> bs!1030291 (= lambda!194747 lambda!194731)))

(assert (=> b!4634989 true))

(declare-fun lt!1797121 () ListMap!4357)

(declare-fun lambda!194748 () Int)

(assert (=> bs!1030291 (= (= lt!1797121 lt!1797050) (= lambda!194748 lambda!194732))))

(assert (=> bs!1030292 (= (= lt!1797121 lt!1797048) (= lambda!194748 lambda!194733))))

(assert (=> bs!1030293 (= (= lt!1797121 (ListMap!4358 Nil!51644)) (= lambda!194748 lambda!194734))))

(assert (=> bs!1030294 (= (= lt!1797121 (ListMap!4358 Nil!51644)) (= lambda!194748 lambda!194746))))

(assert (=> bs!1030295 (= (= lt!1797121 lt!1797071) (= lambda!194748 lambda!194737))))

(assert (=> bs!1030295 (= (= lt!1797121 (ListMap!4358 Nil!51644)) (= lambda!194748 lambda!194735))))

(assert (=> b!4634989 (= (= lt!1797121 (ListMap!4358 Nil!51644)) (= lambda!194748 lambda!194747))))

(assert (=> bs!1030296 (= (= lt!1797121 (ListMap!4358 Nil!51644)) (= lambda!194748 lambda!194730))))

(assert (=> bs!1030297 (= (= lt!1797121 lt!1797069) (= lambda!194748 lambda!194741))))

(assert (=> bs!1030291 (= (= lt!1797121 (ListMap!4358 Nil!51644)) (= lambda!194748 lambda!194731))))

(assert (=> b!4634989 true))

(declare-fun bs!1030299 () Bool)

(declare-fun d!1461268 () Bool)

(assert (= bs!1030299 (and d!1461268 b!4634961)))

(declare-fun lt!1797119 () ListMap!4357)

(declare-fun lambda!194749 () Int)

(assert (=> bs!1030299 (= (= lt!1797119 lt!1797050) (= lambda!194749 lambda!194732))))

(declare-fun bs!1030300 () Bool)

(assert (= bs!1030300 (and d!1461268 d!1461202)))

(assert (=> bs!1030300 (= (= lt!1797119 lt!1797048) (= lambda!194749 lambda!194733))))

(declare-fun bs!1030301 () Bool)

(assert (= bs!1030301 (and d!1461268 b!4634965)))

(assert (=> bs!1030301 (= (= lt!1797119 (ListMap!4358 Nil!51644)) (= lambda!194749 lambda!194734))))

(declare-fun bs!1030302 () Bool)

(assert (= bs!1030302 (and d!1461268 b!4634986)))

(assert (=> bs!1030302 (= (= lt!1797119 (ListMap!4358 Nil!51644)) (= lambda!194749 lambda!194746))))

(declare-fun bs!1030303 () Bool)

(assert (= bs!1030303 (and d!1461268 b!4634968)))

(assert (=> bs!1030303 (= (= lt!1797119 (ListMap!4358 Nil!51644)) (= lambda!194749 lambda!194735))))

(declare-fun bs!1030304 () Bool)

(assert (= bs!1030304 (and d!1461268 b!4634989)))

(assert (=> bs!1030304 (= (= lt!1797119 (ListMap!4358 Nil!51644)) (= lambda!194749 lambda!194747))))

(declare-fun bs!1030305 () Bool)

(assert (= bs!1030305 (and d!1461268 b!4634958)))

(assert (=> bs!1030305 (= (= lt!1797119 (ListMap!4358 Nil!51644)) (= lambda!194749 lambda!194730))))

(assert (=> bs!1030304 (= (= lt!1797119 lt!1797121) (= lambda!194749 lambda!194748))))

(assert (=> bs!1030303 (= (= lt!1797119 lt!1797071) (= lambda!194749 lambda!194737))))

(declare-fun bs!1030306 () Bool)

(assert (= bs!1030306 (and d!1461268 d!1461258)))

(assert (=> bs!1030306 (= (= lt!1797119 lt!1797069) (= lambda!194749 lambda!194741))))

(assert (=> bs!1030299 (= (= lt!1797119 (ListMap!4358 Nil!51644)) (= lambda!194749 lambda!194731))))

(assert (=> d!1461268 true))

(declare-fun b!4634985 () Bool)

(declare-fun e!2891410 () Bool)

(assert (=> b!4634985 (= e!2891410 (forall!10892 (toList!5054 (ListMap!4358 Nil!51644)) lambda!194748))))

(declare-fun e!2891408 () ListMap!4357)

(assert (=> b!4634986 (= e!2891408 (ListMap!4358 Nil!51644))))

(declare-fun lt!1797137 () Unit!114127)

(declare-fun call!323491 () Unit!114127)

(assert (=> b!4634986 (= lt!1797137 call!323491)))

(declare-fun call!323493 () Bool)

(assert (=> b!4634986 call!323493))

(declare-fun lt!1797136 () Unit!114127)

(assert (=> b!4634986 (= lt!1797136 lt!1797137)))

(declare-fun call!323492 () Bool)

(assert (=> b!4634986 call!323492))

(declare-fun lt!1797138 () Unit!114127)

(declare-fun Unit!114199 () Unit!114127)

(assert (=> b!4634986 (= lt!1797138 Unit!114199)))

(declare-fun e!2891409 () Bool)

(assert (=> d!1461268 e!2891409))

(declare-fun res!1945387 () Bool)

(assert (=> d!1461268 (=> (not res!1945387) (not e!2891409))))

(assert (=> d!1461268 (= res!1945387 (forall!10892 lt!1796690 lambda!194749))))

(assert (=> d!1461268 (= lt!1797119 e!2891408)))

(declare-fun c!793321 () Bool)

(assert (=> d!1461268 (= c!793321 ((_ is Nil!51644) lt!1796690))))

(assert (=> d!1461268 (noDuplicateKeys!1544 lt!1796690)))

(assert (=> d!1461268 (= (addToMapMapFromBucket!1005 lt!1796690 (ListMap!4358 Nil!51644)) lt!1797119)))

(declare-fun b!4634987 () Bool)

(assert (=> b!4634987 (= e!2891409 (invariantList!1238 (toList!5054 lt!1797119)))))

(declare-fun b!4634988 () Bool)

(declare-fun res!1945386 () Bool)

(assert (=> b!4634988 (=> (not res!1945386) (not e!2891409))))

(assert (=> b!4634988 (= res!1945386 (forall!10892 (toList!5054 (ListMap!4358 Nil!51644)) lambda!194749))))

(declare-fun bm!323486 () Bool)

(assert (=> bm!323486 (= call!323491 (lemmaContainsAllItsOwnKeys!540 (ListMap!4358 Nil!51644)))))

(assert (=> b!4634989 (= e!2891408 lt!1797121)))

(declare-fun lt!1797125 () ListMap!4357)

(assert (=> b!4634989 (= lt!1797125 (+!1910 (ListMap!4358 Nil!51644) (h!57728 lt!1796690)))))

(assert (=> b!4634989 (= lt!1797121 (addToMapMapFromBucket!1005 (t!358834 lt!1796690) (+!1910 (ListMap!4358 Nil!51644) (h!57728 lt!1796690))))))

(declare-fun lt!1797127 () Unit!114127)

(assert (=> b!4634989 (= lt!1797127 call!323491)))

(assert (=> b!4634989 (forall!10892 (toList!5054 (ListMap!4358 Nil!51644)) lambda!194747)))

(declare-fun lt!1797118 () Unit!114127)

(assert (=> b!4634989 (= lt!1797118 lt!1797127)))

(assert (=> b!4634989 call!323492))

(declare-fun lt!1797135 () Unit!114127)

(declare-fun Unit!114200 () Unit!114127)

(assert (=> b!4634989 (= lt!1797135 Unit!114200)))

(assert (=> b!4634989 (forall!10892 (t!358834 lt!1796690) lambda!194748)))

(declare-fun lt!1797124 () Unit!114127)

(declare-fun Unit!114201 () Unit!114127)

(assert (=> b!4634989 (= lt!1797124 Unit!114201)))

(declare-fun lt!1797130 () Unit!114127)

(declare-fun Unit!114202 () Unit!114127)

(assert (=> b!4634989 (= lt!1797130 Unit!114202)))

(declare-fun lt!1797129 () Unit!114127)

(assert (=> b!4634989 (= lt!1797129 (forallContained!3124 (toList!5054 lt!1797125) lambda!194748 (h!57728 lt!1796690)))))

(assert (=> b!4634989 (contains!14761 lt!1797125 (_1!29605 (h!57728 lt!1796690)))))

(declare-fun lt!1797131 () Unit!114127)

(declare-fun Unit!114203 () Unit!114127)

(assert (=> b!4634989 (= lt!1797131 Unit!114203)))

(assert (=> b!4634989 (contains!14761 lt!1797121 (_1!29605 (h!57728 lt!1796690)))))

(declare-fun lt!1797123 () Unit!114127)

(declare-fun Unit!114204 () Unit!114127)

(assert (=> b!4634989 (= lt!1797123 Unit!114204)))

(assert (=> b!4634989 (forall!10892 lt!1796690 lambda!194748)))

(declare-fun lt!1797120 () Unit!114127)

(declare-fun Unit!114205 () Unit!114127)

(assert (=> b!4634989 (= lt!1797120 Unit!114205)))

(assert (=> b!4634989 (forall!10892 (toList!5054 lt!1797125) lambda!194748)))

(declare-fun lt!1797132 () Unit!114127)

(declare-fun Unit!114206 () Unit!114127)

(assert (=> b!4634989 (= lt!1797132 Unit!114206)))

(declare-fun lt!1797134 () Unit!114127)

(declare-fun Unit!114207 () Unit!114127)

(assert (=> b!4634989 (= lt!1797134 Unit!114207)))

(declare-fun lt!1797133 () Unit!114127)

(assert (=> b!4634989 (= lt!1797133 (addForallContainsKeyThenBeforeAdding!539 (ListMap!4358 Nil!51644) lt!1797121 (_1!29605 (h!57728 lt!1796690)) (_2!29605 (h!57728 lt!1796690))))))

(assert (=> b!4634989 (forall!10892 (toList!5054 (ListMap!4358 Nil!51644)) lambda!194748)))

(declare-fun lt!1797122 () Unit!114127)

(assert (=> b!4634989 (= lt!1797122 lt!1797133)))

(assert (=> b!4634989 (forall!10892 (toList!5054 (ListMap!4358 Nil!51644)) lambda!194748)))

(declare-fun lt!1797128 () Unit!114127)

(declare-fun Unit!114208 () Unit!114127)

(assert (=> b!4634989 (= lt!1797128 Unit!114208)))

(declare-fun res!1945388 () Bool)

(assert (=> b!4634989 (= res!1945388 call!323493)))

(assert (=> b!4634989 (=> (not res!1945388) (not e!2891410))))

(assert (=> b!4634989 e!2891410))

(declare-fun lt!1797126 () Unit!114127)

(declare-fun Unit!114209 () Unit!114127)

(assert (=> b!4634989 (= lt!1797126 Unit!114209)))

(declare-fun bm!323487 () Bool)

(assert (=> bm!323487 (= call!323492 (forall!10892 (ite c!793321 (toList!5054 (ListMap!4358 Nil!51644)) (toList!5054 lt!1797125)) (ite c!793321 lambda!194746 lambda!194748)))))

(declare-fun bm!323488 () Bool)

(assert (=> bm!323488 (= call!323493 (forall!10892 (ite c!793321 (toList!5054 (ListMap!4358 Nil!51644)) lt!1796690) (ite c!793321 lambda!194746 lambda!194748)))))

(assert (= (and d!1461268 c!793321) b!4634986))

(assert (= (and d!1461268 (not c!793321)) b!4634989))

(assert (= (and b!4634989 res!1945388) b!4634985))

(assert (= (or b!4634986 b!4634989) bm!323486))

(assert (= (or b!4634986 b!4634989) bm!323487))

(assert (= (or b!4634986 b!4634989) bm!323488))

(assert (= (and d!1461268 res!1945387) b!4634988))

(assert (= (and b!4634988 res!1945386) b!4634987))

(declare-fun m!5490233 () Bool)

(assert (=> d!1461268 m!5490233))

(assert (=> d!1461268 m!5489729))

(declare-fun m!5490235 () Bool)

(assert (=> bm!323488 m!5490235))

(declare-fun m!5490237 () Bool)

(assert (=> bm!323487 m!5490237))

(assert (=> bm!323486 m!5490107))

(declare-fun m!5490239 () Bool)

(assert (=> b!4634988 m!5490239))

(declare-fun m!5490241 () Bool)

(assert (=> b!4634987 m!5490241))

(declare-fun m!5490243 () Bool)

(assert (=> b!4634989 m!5490243))

(declare-fun m!5490245 () Bool)

(assert (=> b!4634989 m!5490245))

(declare-fun m!5490247 () Bool)

(assert (=> b!4634989 m!5490247))

(declare-fun m!5490249 () Bool)

(assert (=> b!4634989 m!5490249))

(declare-fun m!5490251 () Bool)

(assert (=> b!4634989 m!5490251))

(declare-fun m!5490253 () Bool)

(assert (=> b!4634989 m!5490253))

(declare-fun m!5490255 () Bool)

(assert (=> b!4634989 m!5490255))

(declare-fun m!5490257 () Bool)

(assert (=> b!4634989 m!5490257))

(assert (=> b!4634989 m!5490253))

(declare-fun m!5490259 () Bool)

(assert (=> b!4634989 m!5490259))

(declare-fun m!5490261 () Bool)

(assert (=> b!4634989 m!5490261))

(assert (=> b!4634989 m!5490255))

(declare-fun m!5490263 () Bool)

(assert (=> b!4634989 m!5490263))

(assert (=> b!4634985 m!5490255))

(assert (=> b!4634747 d!1461268))

(declare-fun bs!1030307 () Bool)

(declare-fun b!4634991 () Bool)

(assert (= bs!1030307 (and b!4634991 b!4634961)))

(declare-fun lambda!194752 () Int)

(assert (=> bs!1030307 (= (= (ListMap!4358 Nil!51644) lt!1797050) (= lambda!194752 lambda!194732))))

(declare-fun bs!1030308 () Bool)

(assert (= bs!1030308 (and b!4634991 d!1461202)))

(assert (=> bs!1030308 (= (= (ListMap!4358 Nil!51644) lt!1797048) (= lambda!194752 lambda!194733))))

(declare-fun bs!1030309 () Bool)

(assert (= bs!1030309 (and b!4634991 b!4634965)))

(assert (=> bs!1030309 (= lambda!194752 lambda!194734)))

(declare-fun bs!1030310 () Bool)

(assert (= bs!1030310 (and b!4634991 b!4634968)))

(assert (=> bs!1030310 (= lambda!194752 lambda!194735)))

(declare-fun bs!1030311 () Bool)

(assert (= bs!1030311 (and b!4634991 b!4634989)))

(assert (=> bs!1030311 (= lambda!194752 lambda!194747)))

(declare-fun bs!1030312 () Bool)

(assert (= bs!1030312 (and b!4634991 b!4634958)))

(assert (=> bs!1030312 (= lambda!194752 lambda!194730)))

(declare-fun bs!1030313 () Bool)

(assert (= bs!1030313 (and b!4634991 b!4634986)))

(assert (=> bs!1030313 (= lambda!194752 lambda!194746)))

(declare-fun bs!1030314 () Bool)

(assert (= bs!1030314 (and b!4634991 d!1461268)))

(assert (=> bs!1030314 (= (= (ListMap!4358 Nil!51644) lt!1797119) (= lambda!194752 lambda!194749))))

(assert (=> bs!1030311 (= (= (ListMap!4358 Nil!51644) lt!1797121) (= lambda!194752 lambda!194748))))

(assert (=> bs!1030310 (= (= (ListMap!4358 Nil!51644) lt!1797071) (= lambda!194752 lambda!194737))))

(declare-fun bs!1030318 () Bool)

(assert (= bs!1030318 (and b!4634991 d!1461258)))

(assert (=> bs!1030318 (= (= (ListMap!4358 Nil!51644) lt!1797069) (= lambda!194752 lambda!194741))))

(assert (=> bs!1030307 (= lambda!194752 lambda!194731)))

(assert (=> b!4634991 true))

(declare-fun bs!1030324 () Bool)

(declare-fun b!4634994 () Bool)

(assert (= bs!1030324 (and b!4634994 b!4634961)))

(declare-fun lambda!194754 () Int)

(assert (=> bs!1030324 (= (= (ListMap!4358 Nil!51644) lt!1797050) (= lambda!194754 lambda!194732))))

(declare-fun bs!1030325 () Bool)

(assert (= bs!1030325 (and b!4634994 d!1461202)))

(assert (=> bs!1030325 (= (= (ListMap!4358 Nil!51644) lt!1797048) (= lambda!194754 lambda!194733))))

(declare-fun bs!1030327 () Bool)

(assert (= bs!1030327 (and b!4634994 b!4634965)))

(assert (=> bs!1030327 (= lambda!194754 lambda!194734)))

(declare-fun bs!1030328 () Bool)

(assert (= bs!1030328 (and b!4634994 b!4634991)))

(assert (=> bs!1030328 (= lambda!194754 lambda!194752)))

(declare-fun bs!1030329 () Bool)

(assert (= bs!1030329 (and b!4634994 b!4634968)))

(assert (=> bs!1030329 (= lambda!194754 lambda!194735)))

(declare-fun bs!1030330 () Bool)

(assert (= bs!1030330 (and b!4634994 b!4634989)))

(assert (=> bs!1030330 (= lambda!194754 lambda!194747)))

(declare-fun bs!1030331 () Bool)

(assert (= bs!1030331 (and b!4634994 b!4634958)))

(assert (=> bs!1030331 (= lambda!194754 lambda!194730)))

(declare-fun bs!1030332 () Bool)

(assert (= bs!1030332 (and b!4634994 b!4634986)))

(assert (=> bs!1030332 (= lambda!194754 lambda!194746)))

(declare-fun bs!1030333 () Bool)

(assert (= bs!1030333 (and b!4634994 d!1461268)))

(assert (=> bs!1030333 (= (= (ListMap!4358 Nil!51644) lt!1797119) (= lambda!194754 lambda!194749))))

(assert (=> bs!1030330 (= (= (ListMap!4358 Nil!51644) lt!1797121) (= lambda!194754 lambda!194748))))

(assert (=> bs!1030329 (= (= (ListMap!4358 Nil!51644) lt!1797071) (= lambda!194754 lambda!194737))))

(declare-fun bs!1030334 () Bool)

(assert (= bs!1030334 (and b!4634994 d!1461258)))

(assert (=> bs!1030334 (= (= (ListMap!4358 Nil!51644) lt!1797069) (= lambda!194754 lambda!194741))))

(assert (=> bs!1030324 (= lambda!194754 lambda!194731)))

(assert (=> b!4634994 true))

(declare-fun lt!1797142 () ListMap!4357)

(declare-fun lambda!194755 () Int)

(assert (=> bs!1030324 (= (= lt!1797142 lt!1797050) (= lambda!194755 lambda!194732))))

(assert (=> bs!1030325 (= (= lt!1797142 lt!1797048) (= lambda!194755 lambda!194733))))

(assert (=> bs!1030327 (= (= lt!1797142 (ListMap!4358 Nil!51644)) (= lambda!194755 lambda!194734))))

(assert (=> bs!1030328 (= (= lt!1797142 (ListMap!4358 Nil!51644)) (= lambda!194755 lambda!194752))))

(assert (=> bs!1030329 (= (= lt!1797142 (ListMap!4358 Nil!51644)) (= lambda!194755 lambda!194735))))

(assert (=> bs!1030330 (= (= lt!1797142 (ListMap!4358 Nil!51644)) (= lambda!194755 lambda!194747))))

(assert (=> bs!1030331 (= (= lt!1797142 (ListMap!4358 Nil!51644)) (= lambda!194755 lambda!194730))))

(assert (=> bs!1030332 (= (= lt!1797142 (ListMap!4358 Nil!51644)) (= lambda!194755 lambda!194746))))

(assert (=> bs!1030333 (= (= lt!1797142 lt!1797119) (= lambda!194755 lambda!194749))))

(assert (=> bs!1030330 (= (= lt!1797142 lt!1797121) (= lambda!194755 lambda!194748))))

(assert (=> b!4634994 (= (= lt!1797142 (ListMap!4358 Nil!51644)) (= lambda!194755 lambda!194754))))

(assert (=> bs!1030329 (= (= lt!1797142 lt!1797071) (= lambda!194755 lambda!194737))))

(assert (=> bs!1030334 (= (= lt!1797142 lt!1797069) (= lambda!194755 lambda!194741))))

(assert (=> bs!1030324 (= (= lt!1797142 (ListMap!4358 Nil!51644)) (= lambda!194755 lambda!194731))))

(assert (=> b!4634994 true))

(declare-fun bs!1030335 () Bool)

(declare-fun d!1461274 () Bool)

(assert (= bs!1030335 (and d!1461274 b!4634961)))

(declare-fun lambda!194756 () Int)

(declare-fun lt!1797140 () ListMap!4357)

(assert (=> bs!1030335 (= (= lt!1797140 lt!1797050) (= lambda!194756 lambda!194732))))

(declare-fun bs!1030336 () Bool)

(assert (= bs!1030336 (and d!1461274 d!1461202)))

(assert (=> bs!1030336 (= (= lt!1797140 lt!1797048) (= lambda!194756 lambda!194733))))

(declare-fun bs!1030337 () Bool)

(assert (= bs!1030337 (and d!1461274 b!4634965)))

(assert (=> bs!1030337 (= (= lt!1797140 (ListMap!4358 Nil!51644)) (= lambda!194756 lambda!194734))))

(declare-fun bs!1030338 () Bool)

(assert (= bs!1030338 (and d!1461274 b!4634991)))

(assert (=> bs!1030338 (= (= lt!1797140 (ListMap!4358 Nil!51644)) (= lambda!194756 lambda!194752))))

(declare-fun bs!1030339 () Bool)

(assert (= bs!1030339 (and d!1461274 b!4634968)))

(assert (=> bs!1030339 (= (= lt!1797140 (ListMap!4358 Nil!51644)) (= lambda!194756 lambda!194735))))

(declare-fun bs!1030340 () Bool)

(assert (= bs!1030340 (and d!1461274 b!4634958)))

(assert (=> bs!1030340 (= (= lt!1797140 (ListMap!4358 Nil!51644)) (= lambda!194756 lambda!194730))))

(declare-fun bs!1030341 () Bool)

(assert (= bs!1030341 (and d!1461274 b!4634986)))

(assert (=> bs!1030341 (= (= lt!1797140 (ListMap!4358 Nil!51644)) (= lambda!194756 lambda!194746))))

(declare-fun bs!1030342 () Bool)

(assert (= bs!1030342 (and d!1461274 d!1461268)))

(assert (=> bs!1030342 (= (= lt!1797140 lt!1797119) (= lambda!194756 lambda!194749))))

(declare-fun bs!1030343 () Bool)

(assert (= bs!1030343 (and d!1461274 b!4634989)))

(assert (=> bs!1030343 (= (= lt!1797140 lt!1797121) (= lambda!194756 lambda!194748))))

(declare-fun bs!1030344 () Bool)

(assert (= bs!1030344 (and d!1461274 b!4634994)))

(assert (=> bs!1030344 (= (= lt!1797140 (ListMap!4358 Nil!51644)) (= lambda!194756 lambda!194754))))

(assert (=> bs!1030339 (= (= lt!1797140 lt!1797071) (= lambda!194756 lambda!194737))))

(declare-fun bs!1030345 () Bool)

(assert (= bs!1030345 (and d!1461274 d!1461258)))

(assert (=> bs!1030345 (= (= lt!1797140 lt!1797069) (= lambda!194756 lambda!194741))))

(assert (=> bs!1030335 (= (= lt!1797140 (ListMap!4358 Nil!51644)) (= lambda!194756 lambda!194731))))

(assert (=> bs!1030344 (= (= lt!1797140 lt!1797142) (= lambda!194756 lambda!194755))))

(assert (=> bs!1030343 (= (= lt!1797140 (ListMap!4358 Nil!51644)) (= lambda!194756 lambda!194747))))

(assert (=> d!1461274 true))

(declare-fun b!4634990 () Bool)

(declare-fun e!2891413 () Bool)

(assert (=> b!4634990 (= e!2891413 (forall!10892 (toList!5054 (ListMap!4358 Nil!51644)) lambda!194755))))

(declare-fun e!2891411 () ListMap!4357)

(assert (=> b!4634991 (= e!2891411 (ListMap!4358 Nil!51644))))

(declare-fun lt!1797158 () Unit!114127)

(declare-fun call!323494 () Unit!114127)

(assert (=> b!4634991 (= lt!1797158 call!323494)))

(declare-fun call!323496 () Bool)

(assert (=> b!4634991 call!323496))

(declare-fun lt!1797157 () Unit!114127)

(assert (=> b!4634991 (= lt!1797157 lt!1797158)))

(declare-fun call!323495 () Bool)

(assert (=> b!4634991 call!323495))

(declare-fun lt!1797159 () Unit!114127)

(declare-fun Unit!114221 () Unit!114127)

(assert (=> b!4634991 (= lt!1797159 Unit!114221)))

(declare-fun e!2891412 () Bool)

(assert (=> d!1461274 e!2891412))

(declare-fun res!1945390 () Bool)

(assert (=> d!1461274 (=> (not res!1945390) (not e!2891412))))

(assert (=> d!1461274 (= res!1945390 (forall!10892 lt!1796704 lambda!194756))))

(assert (=> d!1461274 (= lt!1797140 e!2891411)))

(declare-fun c!793322 () Bool)

(assert (=> d!1461274 (= c!793322 ((_ is Nil!51644) lt!1796704))))

(assert (=> d!1461274 (noDuplicateKeys!1544 lt!1796704)))

(assert (=> d!1461274 (= (addToMapMapFromBucket!1005 lt!1796704 (ListMap!4358 Nil!51644)) lt!1797140)))

(declare-fun b!4634992 () Bool)

(assert (=> b!4634992 (= e!2891412 (invariantList!1238 (toList!5054 lt!1797140)))))

(declare-fun b!4634993 () Bool)

(declare-fun res!1945389 () Bool)

(assert (=> b!4634993 (=> (not res!1945389) (not e!2891412))))

(assert (=> b!4634993 (= res!1945389 (forall!10892 (toList!5054 (ListMap!4358 Nil!51644)) lambda!194756))))

(declare-fun bm!323489 () Bool)

(assert (=> bm!323489 (= call!323494 (lemmaContainsAllItsOwnKeys!540 (ListMap!4358 Nil!51644)))))

(assert (=> b!4634994 (= e!2891411 lt!1797142)))

(declare-fun lt!1797146 () ListMap!4357)

(assert (=> b!4634994 (= lt!1797146 (+!1910 (ListMap!4358 Nil!51644) (h!57728 lt!1796704)))))

(assert (=> b!4634994 (= lt!1797142 (addToMapMapFromBucket!1005 (t!358834 lt!1796704) (+!1910 (ListMap!4358 Nil!51644) (h!57728 lt!1796704))))))

(declare-fun lt!1797148 () Unit!114127)

(assert (=> b!4634994 (= lt!1797148 call!323494)))

(assert (=> b!4634994 (forall!10892 (toList!5054 (ListMap!4358 Nil!51644)) lambda!194754)))

(declare-fun lt!1797139 () Unit!114127)

(assert (=> b!4634994 (= lt!1797139 lt!1797148)))

(assert (=> b!4634994 call!323495))

(declare-fun lt!1797156 () Unit!114127)

(declare-fun Unit!114222 () Unit!114127)

(assert (=> b!4634994 (= lt!1797156 Unit!114222)))

(assert (=> b!4634994 (forall!10892 (t!358834 lt!1796704) lambda!194755)))

(declare-fun lt!1797145 () Unit!114127)

(declare-fun Unit!114223 () Unit!114127)

(assert (=> b!4634994 (= lt!1797145 Unit!114223)))

(declare-fun lt!1797151 () Unit!114127)

(declare-fun Unit!114224 () Unit!114127)

(assert (=> b!4634994 (= lt!1797151 Unit!114224)))

(declare-fun lt!1797150 () Unit!114127)

(assert (=> b!4634994 (= lt!1797150 (forallContained!3124 (toList!5054 lt!1797146) lambda!194755 (h!57728 lt!1796704)))))

(assert (=> b!4634994 (contains!14761 lt!1797146 (_1!29605 (h!57728 lt!1796704)))))

(declare-fun lt!1797152 () Unit!114127)

(declare-fun Unit!114225 () Unit!114127)

(assert (=> b!4634994 (= lt!1797152 Unit!114225)))

(assert (=> b!4634994 (contains!14761 lt!1797142 (_1!29605 (h!57728 lt!1796704)))))

(declare-fun lt!1797144 () Unit!114127)

(declare-fun Unit!114226 () Unit!114127)

(assert (=> b!4634994 (= lt!1797144 Unit!114226)))

(assert (=> b!4634994 (forall!10892 lt!1796704 lambda!194755)))

(declare-fun lt!1797141 () Unit!114127)

(declare-fun Unit!114227 () Unit!114127)

(assert (=> b!4634994 (= lt!1797141 Unit!114227)))

(assert (=> b!4634994 (forall!10892 (toList!5054 lt!1797146) lambda!194755)))

(declare-fun lt!1797153 () Unit!114127)

(declare-fun Unit!114228 () Unit!114127)

(assert (=> b!4634994 (= lt!1797153 Unit!114228)))

(declare-fun lt!1797155 () Unit!114127)

(declare-fun Unit!114229 () Unit!114127)

(assert (=> b!4634994 (= lt!1797155 Unit!114229)))

(declare-fun lt!1797154 () Unit!114127)

(assert (=> b!4634994 (= lt!1797154 (addForallContainsKeyThenBeforeAdding!539 (ListMap!4358 Nil!51644) lt!1797142 (_1!29605 (h!57728 lt!1796704)) (_2!29605 (h!57728 lt!1796704))))))

(assert (=> b!4634994 (forall!10892 (toList!5054 (ListMap!4358 Nil!51644)) lambda!194755)))

(declare-fun lt!1797143 () Unit!114127)

(assert (=> b!4634994 (= lt!1797143 lt!1797154)))

(assert (=> b!4634994 (forall!10892 (toList!5054 (ListMap!4358 Nil!51644)) lambda!194755)))

(declare-fun lt!1797149 () Unit!114127)

(declare-fun Unit!114230 () Unit!114127)

(assert (=> b!4634994 (= lt!1797149 Unit!114230)))

(declare-fun res!1945391 () Bool)

(assert (=> b!4634994 (= res!1945391 call!323496)))

(assert (=> b!4634994 (=> (not res!1945391) (not e!2891413))))

(assert (=> b!4634994 e!2891413))

(declare-fun lt!1797147 () Unit!114127)

(declare-fun Unit!114231 () Unit!114127)

(assert (=> b!4634994 (= lt!1797147 Unit!114231)))

(declare-fun bm!323490 () Bool)

(assert (=> bm!323490 (= call!323495 (forall!10892 (ite c!793322 (toList!5054 (ListMap!4358 Nil!51644)) (toList!5054 lt!1797146)) (ite c!793322 lambda!194752 lambda!194755)))))

(declare-fun bm!323491 () Bool)

(assert (=> bm!323491 (= call!323496 (forall!10892 (ite c!793322 (toList!5054 (ListMap!4358 Nil!51644)) lt!1796704) (ite c!793322 lambda!194752 lambda!194755)))))

(assert (= (and d!1461274 c!793322) b!4634991))

(assert (= (and d!1461274 (not c!793322)) b!4634994))

(assert (= (and b!4634994 res!1945391) b!4634990))

(assert (= (or b!4634991 b!4634994) bm!323489))

(assert (= (or b!4634991 b!4634994) bm!323490))

(assert (= (or b!4634991 b!4634994) bm!323491))

(assert (= (and d!1461274 res!1945390) b!4634993))

(assert (= (and b!4634993 res!1945389) b!4634992))

(declare-fun m!5490275 () Bool)

(assert (=> d!1461274 m!5490275))

(assert (=> d!1461274 m!5489881))

(declare-fun m!5490277 () Bool)

(assert (=> bm!323491 m!5490277))

(declare-fun m!5490279 () Bool)

(assert (=> bm!323490 m!5490279))

(assert (=> bm!323489 m!5490107))

(declare-fun m!5490281 () Bool)

(assert (=> b!4634993 m!5490281))

(declare-fun m!5490283 () Bool)

(assert (=> b!4634992 m!5490283))

(declare-fun m!5490285 () Bool)

(assert (=> b!4634994 m!5490285))

(declare-fun m!5490287 () Bool)

(assert (=> b!4634994 m!5490287))

(declare-fun m!5490289 () Bool)

(assert (=> b!4634994 m!5490289))

(declare-fun m!5490291 () Bool)

(assert (=> b!4634994 m!5490291))

(declare-fun m!5490293 () Bool)

(assert (=> b!4634994 m!5490293))

(declare-fun m!5490295 () Bool)

(assert (=> b!4634994 m!5490295))

(declare-fun m!5490297 () Bool)

(assert (=> b!4634994 m!5490297))

(declare-fun m!5490299 () Bool)

(assert (=> b!4634994 m!5490299))

(assert (=> b!4634994 m!5490295))

(declare-fun m!5490301 () Bool)

(assert (=> b!4634994 m!5490301))

(declare-fun m!5490303 () Bool)

(assert (=> b!4634994 m!5490303))

(assert (=> b!4634994 m!5490297))

(declare-fun m!5490305 () Bool)

(assert (=> b!4634994 m!5490305))

(assert (=> b!4634990 m!5490297))

(assert (=> b!4634747 d!1461274))

(declare-fun d!1461280 () Bool)

(assert (=> d!1461280 (= (eq!859 lt!1796700 (+!1910 lt!1796682 (h!57728 oldBucket!40))) (= (content!8898 (toList!5054 lt!1796700)) (content!8898 (toList!5054 (+!1910 lt!1796682 (h!57728 oldBucket!40))))))))

(declare-fun bs!1030346 () Bool)

(assert (= bs!1030346 d!1461280))

(declare-fun m!5490307 () Bool)

(assert (=> bs!1030346 m!5490307))

(declare-fun m!5490309 () Bool)

(assert (=> bs!1030346 m!5490309))

(assert (=> b!4634730 d!1461280))

(declare-fun d!1461282 () Bool)

(declare-fun e!2891417 () Bool)

(assert (=> d!1461282 e!2891417))

(declare-fun res!1945395 () Bool)

(assert (=> d!1461282 (=> (not res!1945395) (not e!2891417))))

(declare-fun lt!1797169 () ListMap!4357)

(assert (=> d!1461282 (= res!1945395 (contains!14761 lt!1797169 (_1!29605 (h!57728 oldBucket!40))))))

(declare-fun lt!1797167 () List!51768)

(assert (=> d!1461282 (= lt!1797169 (ListMap!4358 lt!1797167))))

(declare-fun lt!1797166 () Unit!114127)

(declare-fun lt!1797168 () Unit!114127)

(assert (=> d!1461282 (= lt!1797166 lt!1797168)))

(assert (=> d!1461282 (= (getValueByKey!1518 lt!1797167 (_1!29605 (h!57728 oldBucket!40))) (Some!11695 (_2!29605 (h!57728 oldBucket!40))))))

(assert (=> d!1461282 (= lt!1797168 (lemmaContainsTupThenGetReturnValue!882 lt!1797167 (_1!29605 (h!57728 oldBucket!40)) (_2!29605 (h!57728 oldBucket!40))))))

(assert (=> d!1461282 (= lt!1797167 (insertNoDuplicatedKeys!390 (toList!5054 lt!1796682) (_1!29605 (h!57728 oldBucket!40)) (_2!29605 (h!57728 oldBucket!40))))))

(assert (=> d!1461282 (= (+!1910 lt!1796682 (h!57728 oldBucket!40)) lt!1797169)))

(declare-fun b!4634998 () Bool)

(declare-fun res!1945396 () Bool)

(assert (=> b!4634998 (=> (not res!1945396) (not e!2891417))))

(assert (=> b!4634998 (= res!1945396 (= (getValueByKey!1518 (toList!5054 lt!1797169) (_1!29605 (h!57728 oldBucket!40))) (Some!11695 (_2!29605 (h!57728 oldBucket!40)))))))

(declare-fun b!4634999 () Bool)

(assert (=> b!4634999 (= e!2891417 (contains!14763 (toList!5054 lt!1797169) (h!57728 oldBucket!40)))))

(assert (= (and d!1461282 res!1945395) b!4634998))

(assert (= (and b!4634998 res!1945396) b!4634999))

(declare-fun m!5490311 () Bool)

(assert (=> d!1461282 m!5490311))

(declare-fun m!5490313 () Bool)

(assert (=> d!1461282 m!5490313))

(declare-fun m!5490315 () Bool)

(assert (=> d!1461282 m!5490315))

(declare-fun m!5490317 () Bool)

(assert (=> d!1461282 m!5490317))

(declare-fun m!5490319 () Bool)

(assert (=> b!4634998 m!5490319))

(declare-fun m!5490321 () Bool)

(assert (=> b!4634999 m!5490321))

(assert (=> b!4634730 d!1461282))

(declare-fun bs!1030347 () Bool)

(declare-fun d!1461284 () Bool)

(assert (= bs!1030347 (and d!1461284 b!4634961)))

(declare-fun lambda!194759 () Int)

(assert (=> bs!1030347 (not (= lambda!194759 lambda!194732))))

(declare-fun bs!1030348 () Bool)

(assert (= bs!1030348 (and d!1461284 d!1461202)))

(assert (=> bs!1030348 (not (= lambda!194759 lambda!194733))))

(declare-fun bs!1030349 () Bool)

(assert (= bs!1030349 (and d!1461284 b!4634965)))

(assert (=> bs!1030349 (not (= lambda!194759 lambda!194734))))

(declare-fun bs!1030350 () Bool)

(assert (= bs!1030350 (and d!1461284 b!4634991)))

(assert (=> bs!1030350 (not (= lambda!194759 lambda!194752))))

(declare-fun bs!1030351 () Bool)

(assert (= bs!1030351 (and d!1461284 b!4634968)))

(assert (=> bs!1030351 (not (= lambda!194759 lambda!194735))))

(declare-fun bs!1030352 () Bool)

(assert (= bs!1030352 (and d!1461284 b!4634958)))

(assert (=> bs!1030352 (not (= lambda!194759 lambda!194730))))

(declare-fun bs!1030353 () Bool)

(assert (= bs!1030353 (and d!1461284 d!1461274)))

(assert (=> bs!1030353 (not (= lambda!194759 lambda!194756))))

(declare-fun bs!1030354 () Bool)

(assert (= bs!1030354 (and d!1461284 b!4634986)))

(assert (=> bs!1030354 (not (= lambda!194759 lambda!194746))))

(declare-fun bs!1030355 () Bool)

(assert (= bs!1030355 (and d!1461284 d!1461268)))

(assert (=> bs!1030355 (not (= lambda!194759 lambda!194749))))

(declare-fun bs!1030356 () Bool)

(assert (= bs!1030356 (and d!1461284 b!4634989)))

(assert (=> bs!1030356 (not (= lambda!194759 lambda!194748))))

(declare-fun bs!1030357 () Bool)

(assert (= bs!1030357 (and d!1461284 b!4634994)))

(assert (=> bs!1030357 (not (= lambda!194759 lambda!194754))))

(assert (=> bs!1030351 (not (= lambda!194759 lambda!194737))))

(declare-fun bs!1030358 () Bool)

(assert (= bs!1030358 (and d!1461284 d!1461258)))

(assert (=> bs!1030358 (not (= lambda!194759 lambda!194741))))

(assert (=> bs!1030347 (not (= lambda!194759 lambda!194731))))

(assert (=> bs!1030357 (not (= lambda!194759 lambda!194755))))

(assert (=> bs!1030356 (not (= lambda!194759 lambda!194747))))

(assert (=> d!1461284 true))

(assert (=> d!1461284 true))

(assert (=> d!1461284 (= (allKeysSameHash!1398 oldBucket!40 hash!414 hashF!1389) (forall!10892 oldBucket!40 lambda!194759))))

(declare-fun bs!1030359 () Bool)

(assert (= bs!1030359 d!1461284))

(declare-fun m!5490329 () Bool)

(assert (=> bs!1030359 m!5490329))

(assert (=> b!4634740 d!1461284))

(declare-fun bs!1030392 () Bool)

(declare-fun d!1461288 () Bool)

(assert (= bs!1030392 (and d!1461288 b!4634729)))

(declare-fun lambda!194768 () Int)

(assert (=> bs!1030392 (= lambda!194768 lambda!194634)))

(declare-fun bs!1030393 () Bool)

(assert (= bs!1030393 (and d!1461288 d!1461182)))

(assert (=> bs!1030393 (= lambda!194768 lambda!194682)))

(declare-fun bs!1030394 () Bool)

(assert (= bs!1030394 (and d!1461288 d!1461196)))

(assert (=> bs!1030394 (= lambda!194768 lambda!194686)))

(declare-fun bs!1030395 () Bool)

(assert (= bs!1030395 (and d!1461288 d!1461264)))

(assert (=> bs!1030395 (= lambda!194768 lambda!194744)))

(declare-fun e!2891462 () Bool)

(declare-fun b!4635071 () Bool)

(assert (=> b!4635071 (= e!2891462 (isDefined!8959 (getPair!336 (apply!12209 lt!1796686 (hash!3604 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1797230 () Unit!114127)

(assert (=> b!4635071 (= lt!1797230 (forallContained!3122 (toList!5053 lt!1796686) lambda!194768 (tuple2!52625 (hash!3604 hashF!1389 key!4968) (apply!12209 lt!1796686 (hash!3604 hashF!1389 key!4968)))))))

(declare-fun lt!1797231 () Unit!114127)

(declare-fun lt!1797234 () Unit!114127)

(assert (=> b!4635071 (= lt!1797231 lt!1797234)))

(declare-fun lt!1797235 () (_ BitVec 64))

(declare-fun lt!1797232 () List!51768)

(assert (=> b!4635071 (contains!14759 (toList!5053 lt!1796686) (tuple2!52625 lt!1797235 lt!1797232))))

(assert (=> b!4635071 (= lt!1797234 (lemmaGetValueImpliesTupleContained!141 lt!1796686 lt!1797235 lt!1797232))))

(declare-fun e!2891461 () Bool)

(assert (=> b!4635071 e!2891461))

(declare-fun res!1945439 () Bool)

(assert (=> b!4635071 (=> (not res!1945439) (not e!2891461))))

(assert (=> b!4635071 (= res!1945439 (contains!14760 lt!1796686 lt!1797235))))

(assert (=> b!4635071 (= lt!1797232 (apply!12209 lt!1796686 (hash!3604 hashF!1389 key!4968)))))

(assert (=> b!4635071 (= lt!1797235 (hash!3604 hashF!1389 key!4968))))

(declare-fun lt!1797229 () Unit!114127)

(declare-fun lt!1797233 () Unit!114127)

(assert (=> b!4635071 (= lt!1797229 lt!1797233)))

(assert (=> b!4635071 (contains!14760 lt!1796686 (hash!3604 hashF!1389 key!4968))))

(assert (=> b!4635071 (= lt!1797233 (lemmaInGenMapThenLongMapContainsHash!542 lt!1796686 key!4968 hashF!1389))))

(declare-fun b!4635070 () Bool)

(declare-fun res!1945437 () Bool)

(assert (=> b!4635070 (=> (not res!1945437) (not e!2891462))))

(assert (=> b!4635070 (= res!1945437 (contains!14761 (extractMap!1600 (toList!5053 lt!1796686)) key!4968))))

(declare-fun b!4635072 () Bool)

(declare-datatypes ((Option!11697 0))(
  ( (None!11696) (Some!11696 (v!45894 List!51768)) )
))
(declare-fun getValueByKey!1519 (List!51769 (_ BitVec 64)) Option!11697)

(assert (=> b!4635072 (= e!2891461 (= (getValueByKey!1519 (toList!5053 lt!1796686) lt!1797235) (Some!11696 lt!1797232)))))

(declare-fun b!4635069 () Bool)

(declare-fun res!1945436 () Bool)

(assert (=> b!4635069 (=> (not res!1945436) (not e!2891462))))

(declare-fun allKeysSameHashInMap!1563 (ListLongMap!3643 Hashable!5941) Bool)

(assert (=> b!4635069 (= res!1945436 (allKeysSameHashInMap!1563 lt!1796686 hashF!1389))))

(assert (=> d!1461288 e!2891462))

(declare-fun res!1945438 () Bool)

(assert (=> d!1461288 (=> (not res!1945438) (not e!2891462))))

(assert (=> d!1461288 (= res!1945438 (forall!10890 (toList!5053 lt!1796686) lambda!194768))))

(declare-fun lt!1797228 () Unit!114127)

(declare-fun choose!31641 (ListLongMap!3643 K!13010 Hashable!5941) Unit!114127)

(assert (=> d!1461288 (= lt!1797228 (choose!31641 lt!1796686 key!4968 hashF!1389))))

(assert (=> d!1461288 (forall!10890 (toList!5053 lt!1796686) lambda!194768)))

(assert (=> d!1461288 (= (lemmaInGenMapThenGetPairDefined!132 lt!1796686 key!4968 hashF!1389) lt!1797228)))

(assert (= (and d!1461288 res!1945438) b!4635069))

(assert (= (and b!4635069 res!1945436) b!4635070))

(assert (= (and b!4635070 res!1945437) b!4635071))

(assert (= (and b!4635071 res!1945439) b!4635072))

(declare-fun m!5490437 () Bool)

(assert (=> b!4635071 m!5490437))

(assert (=> b!4635071 m!5489477))

(assert (=> b!4635071 m!5489477))

(declare-fun m!5490439 () Bool)

(assert (=> b!4635071 m!5490439))

(declare-fun m!5490441 () Bool)

(assert (=> b!4635071 m!5490441))

(declare-fun m!5490443 () Bool)

(assert (=> b!4635071 m!5490443))

(declare-fun m!5490445 () Bool)

(assert (=> b!4635071 m!5490445))

(assert (=> b!4635071 m!5489461))

(assert (=> b!4635071 m!5489477))

(declare-fun m!5490447 () Bool)

(assert (=> b!4635071 m!5490447))

(assert (=> b!4635071 m!5490447))

(assert (=> b!4635071 m!5490441))

(declare-fun m!5490449 () Bool)

(assert (=> b!4635071 m!5490449))

(declare-fun m!5490451 () Bool)

(assert (=> b!4635071 m!5490451))

(declare-fun m!5490453 () Bool)

(assert (=> d!1461288 m!5490453))

(declare-fun m!5490455 () Bool)

(assert (=> d!1461288 m!5490455))

(assert (=> d!1461288 m!5490453))

(declare-fun m!5490457 () Bool)

(assert (=> b!4635070 m!5490457))

(assert (=> b!4635070 m!5490457))

(declare-fun m!5490459 () Bool)

(assert (=> b!4635070 m!5490459))

(declare-fun m!5490461 () Bool)

(assert (=> b!4635069 m!5490461))

(declare-fun m!5490463 () Bool)

(assert (=> b!4635072 m!5490463))

(assert (=> b!4634729 d!1461288))

(declare-fun d!1461320 () Bool)

(declare-fun dynLambda!21532 (Int tuple2!52624) Bool)

(assert (=> d!1461320 (dynLambda!21532 lambda!194634 lt!1796699)))

(declare-fun lt!1797238 () Unit!114127)

(declare-fun choose!31643 (List!51769 Int tuple2!52624) Unit!114127)

(assert (=> d!1461320 (= lt!1797238 (choose!31643 lt!1796687 lambda!194634 lt!1796699))))

(declare-fun e!2891465 () Bool)

(assert (=> d!1461320 e!2891465))

(declare-fun res!1945442 () Bool)

(assert (=> d!1461320 (=> (not res!1945442) (not e!2891465))))

(assert (=> d!1461320 (= res!1945442 (forall!10890 lt!1796687 lambda!194634))))

(assert (=> d!1461320 (= (forallContained!3122 lt!1796687 lambda!194634 lt!1796699) lt!1797238)))

(declare-fun b!4635075 () Bool)

(assert (=> b!4635075 (= e!2891465 (contains!14759 lt!1796687 lt!1796699))))

(assert (= (and d!1461320 res!1945442) b!4635075))

(declare-fun b_lambda!170977 () Bool)

(assert (=> (not b_lambda!170977) (not d!1461320)))

(declare-fun m!5490465 () Bool)

(assert (=> d!1461320 m!5490465))

(declare-fun m!5490467 () Bool)

(assert (=> d!1461320 m!5490467))

(declare-fun m!5490469 () Bool)

(assert (=> d!1461320 m!5490469))

(assert (=> b!4635075 m!5489465))

(assert (=> b!4634729 d!1461320))

(declare-fun d!1461322 () Bool)

(assert (=> d!1461322 (containsKey!2552 oldBucket!40 key!4968)))

(declare-fun lt!1797241 () Unit!114127)

(declare-fun choose!31644 (List!51768 K!13010 Hashable!5941) Unit!114127)

(assert (=> d!1461322 (= lt!1797241 (choose!31644 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1461322 (noDuplicateKeys!1544 oldBucket!40)))

(assert (=> d!1461322 (= (lemmaGetPairDefinedThenContainsKey!90 oldBucket!40 key!4968 hashF!1389) lt!1797241)))

(declare-fun bs!1030396 () Bool)

(assert (= bs!1030396 d!1461322))

(assert (=> bs!1030396 m!5489459))

(declare-fun m!5490471 () Bool)

(assert (=> bs!1030396 m!5490471))

(assert (=> bs!1030396 m!5489503))

(assert (=> b!4634729 d!1461322))

(declare-fun d!1461324 () Bool)

(declare-fun res!1945447 () Bool)

(declare-fun e!2891470 () Bool)

(assert (=> d!1461324 (=> res!1945447 e!2891470)))

(assert (=> d!1461324 (= res!1945447 (and ((_ is Cons!51644) (t!358834 oldBucket!40)) (= (_1!29605 (h!57728 (t!358834 oldBucket!40))) key!4968)))))

(assert (=> d!1461324 (= (containsKey!2552 (t!358834 oldBucket!40) key!4968) e!2891470)))

(declare-fun b!4635080 () Bool)

(declare-fun e!2891471 () Bool)

(assert (=> b!4635080 (= e!2891470 e!2891471)))

(declare-fun res!1945448 () Bool)

(assert (=> b!4635080 (=> (not res!1945448) (not e!2891471))))

(assert (=> b!4635080 (= res!1945448 ((_ is Cons!51644) (t!358834 oldBucket!40)))))

(declare-fun b!4635081 () Bool)

(assert (=> b!4635081 (= e!2891471 (containsKey!2552 (t!358834 (t!358834 oldBucket!40)) key!4968))))

(assert (= (and d!1461324 (not res!1945447)) b!4635080))

(assert (= (and b!4635080 res!1945448) b!4635081))

(declare-fun m!5490473 () Bool)

(assert (=> b!4635081 m!5490473))

(assert (=> b!4634729 d!1461324))

(declare-fun d!1461326 () Bool)

(assert (=> d!1461326 (contains!14759 (toList!5053 lt!1796686) (tuple2!52625 lt!1796706 lt!1796689))))

(declare-fun lt!1797254 () Unit!114127)

(declare-fun choose!31645 (ListLongMap!3643 (_ BitVec 64) List!51768) Unit!114127)

(assert (=> d!1461326 (= lt!1797254 (choose!31645 lt!1796686 lt!1796706 lt!1796689))))

(assert (=> d!1461326 (contains!14760 lt!1796686 lt!1796706)))

(assert (=> d!1461326 (= (lemmaGetValueImpliesTupleContained!141 lt!1796686 lt!1796706 lt!1796689) lt!1797254)))

(declare-fun bs!1030399 () Bool)

(assert (= bs!1030399 d!1461326))

(declare-fun m!5490527 () Bool)

(assert (=> bs!1030399 m!5490527))

(declare-fun m!5490529 () Bool)

(assert (=> bs!1030399 m!5490529))

(assert (=> bs!1030399 m!5489453))

(assert (=> b!4634729 d!1461326))

(declare-fun d!1461340 () Bool)

(declare-fun res!1945453 () Bool)

(declare-fun e!2891477 () Bool)

(assert (=> d!1461340 (=> res!1945453 e!2891477)))

(assert (=> d!1461340 (= res!1945453 (and ((_ is Cons!51644) oldBucket!40) (= (_1!29605 (h!57728 oldBucket!40)) key!4968)))))

(assert (=> d!1461340 (= (containsKey!2552 oldBucket!40 key!4968) e!2891477)))

(declare-fun b!4635091 () Bool)

(declare-fun e!2891478 () Bool)

(assert (=> b!4635091 (= e!2891477 e!2891478)))

(declare-fun res!1945454 () Bool)

(assert (=> b!4635091 (=> (not res!1945454) (not e!2891478))))

(assert (=> b!4635091 (= res!1945454 ((_ is Cons!51644) oldBucket!40))))

(declare-fun b!4635092 () Bool)

(assert (=> b!4635092 (= e!2891478 (containsKey!2552 (t!358834 oldBucket!40) key!4968))))

(assert (= (and d!1461340 (not res!1945453)) b!4635091))

(assert (= (and b!4635091 res!1945454) b!4635092))

(assert (=> b!4635092 m!5489473))

(assert (=> b!4634729 d!1461340))

(declare-fun d!1461346 () Bool)

(declare-fun e!2891489 () Bool)

(assert (=> d!1461346 e!2891489))

(declare-fun res!1945457 () Bool)

(assert (=> d!1461346 (=> res!1945457 e!2891489)))

(declare-fun lt!1797265 () Bool)

(assert (=> d!1461346 (= res!1945457 (not lt!1797265))))

(declare-fun lt!1797267 () Bool)

(assert (=> d!1461346 (= lt!1797265 lt!1797267)))

(declare-fun lt!1797266 () Unit!114127)

(declare-fun e!2891490 () Unit!114127)

(assert (=> d!1461346 (= lt!1797266 e!2891490)))

(declare-fun c!793342 () Bool)

(assert (=> d!1461346 (= c!793342 lt!1797267)))

(declare-fun containsKey!2555 (List!51769 (_ BitVec 64)) Bool)

(assert (=> d!1461346 (= lt!1797267 (containsKey!2555 (toList!5053 lt!1796686) lt!1796706))))

(assert (=> d!1461346 (= (contains!14760 lt!1796686 lt!1796706) lt!1797265)))

(declare-fun b!4635109 () Bool)

(declare-fun lt!1797264 () Unit!114127)

(assert (=> b!4635109 (= e!2891490 lt!1797264)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1421 (List!51769 (_ BitVec 64)) Unit!114127)

(assert (=> b!4635109 (= lt!1797264 (lemmaContainsKeyImpliesGetValueByKeyDefined!1421 (toList!5053 lt!1796686) lt!1796706))))

(declare-fun isDefined!8962 (Option!11697) Bool)

(assert (=> b!4635109 (isDefined!8962 (getValueByKey!1519 (toList!5053 lt!1796686) lt!1796706))))

(declare-fun b!4635110 () Bool)

(declare-fun Unit!114232 () Unit!114127)

(assert (=> b!4635110 (= e!2891490 Unit!114232)))

(declare-fun b!4635111 () Bool)

(assert (=> b!4635111 (= e!2891489 (isDefined!8962 (getValueByKey!1519 (toList!5053 lt!1796686) lt!1796706)))))

(assert (= (and d!1461346 c!793342) b!4635109))

(assert (= (and d!1461346 (not c!793342)) b!4635110))

(assert (= (and d!1461346 (not res!1945457)) b!4635111))

(declare-fun m!5490539 () Bool)

(assert (=> d!1461346 m!5490539))

(declare-fun m!5490541 () Bool)

(assert (=> b!4635109 m!5490541))

(declare-fun m!5490543 () Bool)

(assert (=> b!4635109 m!5490543))

(assert (=> b!4635109 m!5490543))

(declare-fun m!5490545 () Bool)

(assert (=> b!4635109 m!5490545))

(assert (=> b!4635111 m!5490543))

(assert (=> b!4635111 m!5490543))

(assert (=> b!4635111 m!5490545))

(assert (=> b!4634729 d!1461346))

(declare-fun b!4635128 () Bool)

(declare-fun e!2891505 () Option!11694)

(assert (=> b!4635128 (= e!2891505 (Some!11693 (h!57728 lt!1796689)))))

(declare-fun d!1461352 () Bool)

(declare-fun e!2891501 () Bool)

(assert (=> d!1461352 e!2891501))

(declare-fun res!1945469 () Bool)

(assert (=> d!1461352 (=> res!1945469 e!2891501)))

(declare-fun e!2891503 () Bool)

(assert (=> d!1461352 (= res!1945469 e!2891503)))

(declare-fun res!1945467 () Bool)

(assert (=> d!1461352 (=> (not res!1945467) (not e!2891503))))

(declare-fun lt!1797270 () Option!11694)

(declare-fun isEmpty!28964 (Option!11694) Bool)

(assert (=> d!1461352 (= res!1945467 (isEmpty!28964 lt!1797270))))

(assert (=> d!1461352 (= lt!1797270 e!2891505)))

(declare-fun c!793348 () Bool)

(assert (=> d!1461352 (= c!793348 (and ((_ is Cons!51644) lt!1796689) (= (_1!29605 (h!57728 lt!1796689)) key!4968)))))

(assert (=> d!1461352 (noDuplicateKeys!1544 lt!1796689)))

(assert (=> d!1461352 (= (getPair!336 lt!1796689 key!4968) lt!1797270)))

(declare-fun b!4635129 () Bool)

(declare-fun res!1945468 () Bool)

(declare-fun e!2891504 () Bool)

(assert (=> b!4635129 (=> (not res!1945468) (not e!2891504))))

(declare-fun get!17163 (Option!11694) tuple2!52622)

(assert (=> b!4635129 (= res!1945468 (= (_1!29605 (get!17163 lt!1797270)) key!4968))))

(declare-fun b!4635130 () Bool)

(declare-fun e!2891502 () Option!11694)

(assert (=> b!4635130 (= e!2891502 None!11693)))

(declare-fun b!4635131 () Bool)

(assert (=> b!4635131 (= e!2891502 (getPair!336 (t!358834 lt!1796689) key!4968))))

(declare-fun b!4635132 () Bool)

(assert (=> b!4635132 (= e!2891505 e!2891502)))

(declare-fun c!793347 () Bool)

(assert (=> b!4635132 (= c!793347 ((_ is Cons!51644) lt!1796689))))

(declare-fun b!4635133 () Bool)

(assert (=> b!4635133 (= e!2891504 (contains!14763 lt!1796689 (get!17163 lt!1797270)))))

(declare-fun b!4635134 () Bool)

(assert (=> b!4635134 (= e!2891501 e!2891504)))

(declare-fun res!1945466 () Bool)

(assert (=> b!4635134 (=> (not res!1945466) (not e!2891504))))

(assert (=> b!4635134 (= res!1945466 (isDefined!8959 lt!1797270))))

(declare-fun b!4635135 () Bool)

(assert (=> b!4635135 (= e!2891503 (not (containsKey!2552 lt!1796689 key!4968)))))

(assert (= (and d!1461352 c!793348) b!4635128))

(assert (= (and d!1461352 (not c!793348)) b!4635132))

(assert (= (and b!4635132 c!793347) b!4635131))

(assert (= (and b!4635132 (not c!793347)) b!4635130))

(assert (= (and d!1461352 res!1945467) b!4635135))

(assert (= (and d!1461352 (not res!1945469)) b!4635134))

(assert (= (and b!4635134 res!1945466) b!4635129))

(assert (= (and b!4635129 res!1945468) b!4635133))

(declare-fun m!5490547 () Bool)

(assert (=> b!4635131 m!5490547))

(declare-fun m!5490549 () Bool)

(assert (=> b!4635135 m!5490549))

(declare-fun m!5490551 () Bool)

(assert (=> b!4635134 m!5490551))

(declare-fun m!5490553 () Bool)

(assert (=> d!1461352 m!5490553))

(declare-fun m!5490555 () Bool)

(assert (=> d!1461352 m!5490555))

(declare-fun m!5490557 () Bool)

(assert (=> b!4635133 m!5490557))

(assert (=> b!4635133 m!5490557))

(declare-fun m!5490559 () Bool)

(assert (=> b!4635133 m!5490559))

(assert (=> b!4635129 m!5490557))

(assert (=> b!4634729 d!1461352))

(declare-fun d!1461354 () Bool)

(declare-fun lt!1797273 () Bool)

(declare-fun content!8900 (List!51769) (InoxSet tuple2!52624))

(assert (=> d!1461354 (= lt!1797273 (select (content!8900 lt!1796687) lt!1796699))))

(declare-fun e!2891511 () Bool)

(assert (=> d!1461354 (= lt!1797273 e!2891511)))

(declare-fun res!1945474 () Bool)

(assert (=> d!1461354 (=> (not res!1945474) (not e!2891511))))

(assert (=> d!1461354 (= res!1945474 ((_ is Cons!51645) lt!1796687))))

(assert (=> d!1461354 (= (contains!14759 lt!1796687 lt!1796699) lt!1797273)))

(declare-fun b!4635140 () Bool)

(declare-fun e!2891510 () Bool)

(assert (=> b!4635140 (= e!2891511 e!2891510)))

(declare-fun res!1945475 () Bool)

(assert (=> b!4635140 (=> res!1945475 e!2891510)))

(assert (=> b!4635140 (= res!1945475 (= (h!57729 lt!1796687) lt!1796699))))

(declare-fun b!4635141 () Bool)

(assert (=> b!4635141 (= e!2891510 (contains!14759 (t!358835 lt!1796687) lt!1796699))))

(assert (= (and d!1461354 res!1945474) b!4635140))

(assert (= (and b!4635140 (not res!1945475)) b!4635141))

(declare-fun m!5490561 () Bool)

(assert (=> d!1461354 m!5490561))

(declare-fun m!5490563 () Bool)

(assert (=> d!1461354 m!5490563))

(declare-fun m!5490565 () Bool)

(assert (=> b!4635141 m!5490565))

(assert (=> b!4634729 d!1461354))

(declare-fun bs!1030402 () Bool)

(declare-fun d!1461356 () Bool)

(assert (= bs!1030402 (and d!1461356 d!1461264)))

(declare-fun lambda!194771 () Int)

(assert (=> bs!1030402 (= lambda!194771 lambda!194744)))

(declare-fun bs!1030403 () Bool)

(assert (= bs!1030403 (and d!1461356 d!1461196)))

(assert (=> bs!1030403 (= lambda!194771 lambda!194686)))

(declare-fun bs!1030404 () Bool)

(assert (= bs!1030404 (and d!1461356 d!1461182)))

(assert (=> bs!1030404 (= lambda!194771 lambda!194682)))

(declare-fun bs!1030405 () Bool)

(assert (= bs!1030405 (and d!1461356 b!4634729)))

(assert (=> bs!1030405 (= lambda!194771 lambda!194634)))

(declare-fun bs!1030406 () Bool)

(assert (= bs!1030406 (and d!1461356 d!1461288)))

(assert (=> bs!1030406 (= lambda!194771 lambda!194768)))

(assert (=> d!1461356 (contains!14760 lt!1796686 (hash!3604 hashF!1389 key!4968))))

(declare-fun lt!1797276 () Unit!114127)

(declare-fun choose!31649 (ListLongMap!3643 K!13010 Hashable!5941) Unit!114127)

(assert (=> d!1461356 (= lt!1797276 (choose!31649 lt!1796686 key!4968 hashF!1389))))

(assert (=> d!1461356 (forall!10890 (toList!5053 lt!1796686) lambda!194771)))

(assert (=> d!1461356 (= (lemmaInGenMapThenLongMapContainsHash!542 lt!1796686 key!4968 hashF!1389) lt!1797276)))

(declare-fun bs!1030407 () Bool)

(assert (= bs!1030407 d!1461356))

(assert (=> bs!1030407 m!5489477))

(assert (=> bs!1030407 m!5489477))

(assert (=> bs!1030407 m!5490439))

(declare-fun m!5490567 () Bool)

(assert (=> bs!1030407 m!5490567))

(declare-fun m!5490569 () Bool)

(assert (=> bs!1030407 m!5490569))

(assert (=> b!4634729 d!1461356))

(declare-fun d!1461358 () Bool)

(declare-fun get!17165 (Option!11697) List!51768)

(assert (=> d!1461358 (= (apply!12209 lt!1796686 lt!1796706) (get!17165 (getValueByKey!1519 (toList!5053 lt!1796686) lt!1796706)))))

(declare-fun bs!1030408 () Bool)

(assert (= bs!1030408 d!1461358))

(assert (=> bs!1030408 m!5490543))

(assert (=> bs!1030408 m!5490543))

(declare-fun m!5490571 () Bool)

(assert (=> bs!1030408 m!5490571))

(assert (=> b!4634729 d!1461358))

(declare-fun d!1461360 () Bool)

(assert (=> d!1461360 (= (isDefined!8959 (getPair!336 lt!1796689 key!4968)) (not (isEmpty!28964 (getPair!336 lt!1796689 key!4968))))))

(declare-fun bs!1030409 () Bool)

(assert (= bs!1030409 d!1461360))

(assert (=> bs!1030409 m!5489469))

(declare-fun m!5490573 () Bool)

(assert (=> bs!1030409 m!5490573))

(assert (=> b!4634729 d!1461360))

(declare-fun bs!1030410 () Bool)

(declare-fun d!1461362 () Bool)

(assert (= bs!1030410 (and d!1461362 b!4634961)))

(declare-fun lambda!194772 () Int)

(assert (=> bs!1030410 (not (= lambda!194772 lambda!194732))))

(declare-fun bs!1030411 () Bool)

(assert (= bs!1030411 (and d!1461362 d!1461202)))

(assert (=> bs!1030411 (not (= lambda!194772 lambda!194733))))

(declare-fun bs!1030412 () Bool)

(assert (= bs!1030412 (and d!1461362 b!4634965)))

(assert (=> bs!1030412 (not (= lambda!194772 lambda!194734))))

(declare-fun bs!1030413 () Bool)

(assert (= bs!1030413 (and d!1461362 b!4634991)))

(assert (=> bs!1030413 (not (= lambda!194772 lambda!194752))))

(declare-fun bs!1030414 () Bool)

(assert (= bs!1030414 (and d!1461362 b!4634968)))

(assert (=> bs!1030414 (not (= lambda!194772 lambda!194735))))

(declare-fun bs!1030415 () Bool)

(assert (= bs!1030415 (and d!1461362 d!1461274)))

(assert (=> bs!1030415 (not (= lambda!194772 lambda!194756))))

(declare-fun bs!1030416 () Bool)

(assert (= bs!1030416 (and d!1461362 b!4634986)))

(assert (=> bs!1030416 (not (= lambda!194772 lambda!194746))))

(declare-fun bs!1030417 () Bool)

(assert (= bs!1030417 (and d!1461362 d!1461268)))

(assert (=> bs!1030417 (not (= lambda!194772 lambda!194749))))

(declare-fun bs!1030418 () Bool)

(assert (= bs!1030418 (and d!1461362 b!4634989)))

(assert (=> bs!1030418 (not (= lambda!194772 lambda!194748))))

(declare-fun bs!1030419 () Bool)

(assert (= bs!1030419 (and d!1461362 b!4634994)))

(assert (=> bs!1030419 (not (= lambda!194772 lambda!194754))))

(assert (=> bs!1030414 (not (= lambda!194772 lambda!194737))))

(declare-fun bs!1030420 () Bool)

(assert (= bs!1030420 (and d!1461362 d!1461258)))

(assert (=> bs!1030420 (not (= lambda!194772 lambda!194741))))

(assert (=> bs!1030410 (not (= lambda!194772 lambda!194731))))

(assert (=> bs!1030419 (not (= lambda!194772 lambda!194755))))

(assert (=> bs!1030418 (not (= lambda!194772 lambda!194747))))

(declare-fun bs!1030421 () Bool)

(assert (= bs!1030421 (and d!1461362 b!4634958)))

(assert (=> bs!1030421 (not (= lambda!194772 lambda!194730))))

(declare-fun bs!1030422 () Bool)

(assert (= bs!1030422 (and d!1461362 d!1461284)))

(assert (=> bs!1030422 (= lambda!194772 lambda!194759)))

(assert (=> d!1461362 true))

(assert (=> d!1461362 true))

(assert (=> d!1461362 (= (allKeysSameHash!1398 newBucket!224 hash!414 hashF!1389) (forall!10892 newBucket!224 lambda!194772))))

(declare-fun bs!1030423 () Bool)

(assert (= bs!1030423 d!1461362))

(declare-fun m!5490575 () Bool)

(assert (=> bs!1030423 m!5490575))

(assert (=> b!4634750 d!1461362))

(declare-fun bs!1030424 () Bool)

(declare-fun b!4635143 () Bool)

(assert (= bs!1030424 (and b!4635143 b!4634961)))

(declare-fun lambda!194773 () Int)

(assert (=> bs!1030424 (= (= lt!1796698 lt!1797050) (= lambda!194773 lambda!194732))))

(declare-fun bs!1030425 () Bool)

(assert (= bs!1030425 (and b!4635143 d!1461362)))

(assert (=> bs!1030425 (not (= lambda!194773 lambda!194772))))

(declare-fun bs!1030426 () Bool)

(assert (= bs!1030426 (and b!4635143 d!1461202)))

(assert (=> bs!1030426 (= (= lt!1796698 lt!1797048) (= lambda!194773 lambda!194733))))

(declare-fun bs!1030427 () Bool)

(assert (= bs!1030427 (and b!4635143 b!4634965)))

(assert (=> bs!1030427 (= (= lt!1796698 (ListMap!4358 Nil!51644)) (= lambda!194773 lambda!194734))))

(declare-fun bs!1030428 () Bool)

(assert (= bs!1030428 (and b!4635143 b!4634991)))

(assert (=> bs!1030428 (= (= lt!1796698 (ListMap!4358 Nil!51644)) (= lambda!194773 lambda!194752))))

(declare-fun bs!1030429 () Bool)

(assert (= bs!1030429 (and b!4635143 b!4634968)))

(assert (=> bs!1030429 (= (= lt!1796698 (ListMap!4358 Nil!51644)) (= lambda!194773 lambda!194735))))

(declare-fun bs!1030430 () Bool)

(assert (= bs!1030430 (and b!4635143 d!1461274)))

(assert (=> bs!1030430 (= (= lt!1796698 lt!1797140) (= lambda!194773 lambda!194756))))

(declare-fun bs!1030431 () Bool)

(assert (= bs!1030431 (and b!4635143 b!4634986)))

(assert (=> bs!1030431 (= (= lt!1796698 (ListMap!4358 Nil!51644)) (= lambda!194773 lambda!194746))))

(declare-fun bs!1030432 () Bool)

(assert (= bs!1030432 (and b!4635143 d!1461268)))

(assert (=> bs!1030432 (= (= lt!1796698 lt!1797119) (= lambda!194773 lambda!194749))))

(declare-fun bs!1030433 () Bool)

(assert (= bs!1030433 (and b!4635143 b!4634989)))

(assert (=> bs!1030433 (= (= lt!1796698 lt!1797121) (= lambda!194773 lambda!194748))))

(declare-fun bs!1030434 () Bool)

(assert (= bs!1030434 (and b!4635143 b!4634994)))

(assert (=> bs!1030434 (= (= lt!1796698 (ListMap!4358 Nil!51644)) (= lambda!194773 lambda!194754))))

(assert (=> bs!1030429 (= (= lt!1796698 lt!1797071) (= lambda!194773 lambda!194737))))

(declare-fun bs!1030435 () Bool)

(assert (= bs!1030435 (and b!4635143 d!1461258)))

(assert (=> bs!1030435 (= (= lt!1796698 lt!1797069) (= lambda!194773 lambda!194741))))

(assert (=> bs!1030424 (= (= lt!1796698 (ListMap!4358 Nil!51644)) (= lambda!194773 lambda!194731))))

(assert (=> bs!1030434 (= (= lt!1796698 lt!1797142) (= lambda!194773 lambda!194755))))

(assert (=> bs!1030433 (= (= lt!1796698 (ListMap!4358 Nil!51644)) (= lambda!194773 lambda!194747))))

(declare-fun bs!1030436 () Bool)

(assert (= bs!1030436 (and b!4635143 b!4634958)))

(assert (=> bs!1030436 (= (= lt!1796698 (ListMap!4358 Nil!51644)) (= lambda!194773 lambda!194730))))

(declare-fun bs!1030437 () Bool)

(assert (= bs!1030437 (and b!4635143 d!1461284)))

(assert (=> bs!1030437 (not (= lambda!194773 lambda!194759))))

(assert (=> b!4635143 true))

(declare-fun bs!1030438 () Bool)

(declare-fun b!4635146 () Bool)

(assert (= bs!1030438 (and b!4635146 b!4634961)))

(declare-fun lambda!194774 () Int)

(assert (=> bs!1030438 (= (= lt!1796698 lt!1797050) (= lambda!194774 lambda!194732))))

(declare-fun bs!1030439 () Bool)

(assert (= bs!1030439 (and b!4635146 d!1461362)))

(assert (=> bs!1030439 (not (= lambda!194774 lambda!194772))))

(declare-fun bs!1030440 () Bool)

(assert (= bs!1030440 (and b!4635146 d!1461202)))

(assert (=> bs!1030440 (= (= lt!1796698 lt!1797048) (= lambda!194774 lambda!194733))))

(declare-fun bs!1030441 () Bool)

(assert (= bs!1030441 (and b!4635146 b!4634965)))

(assert (=> bs!1030441 (= (= lt!1796698 (ListMap!4358 Nil!51644)) (= lambda!194774 lambda!194734))))

(declare-fun bs!1030442 () Bool)

(assert (= bs!1030442 (and b!4635146 b!4634991)))

(assert (=> bs!1030442 (= (= lt!1796698 (ListMap!4358 Nil!51644)) (= lambda!194774 lambda!194752))))

(declare-fun bs!1030443 () Bool)

(assert (= bs!1030443 (and b!4635146 b!4634968)))

(assert (=> bs!1030443 (= (= lt!1796698 (ListMap!4358 Nil!51644)) (= lambda!194774 lambda!194735))))

(declare-fun bs!1030444 () Bool)

(assert (= bs!1030444 (and b!4635146 b!4635143)))

(assert (=> bs!1030444 (= lambda!194774 lambda!194773)))

(declare-fun bs!1030445 () Bool)

(assert (= bs!1030445 (and b!4635146 d!1461274)))

(assert (=> bs!1030445 (= (= lt!1796698 lt!1797140) (= lambda!194774 lambda!194756))))

(declare-fun bs!1030446 () Bool)

(assert (= bs!1030446 (and b!4635146 b!4634986)))

(assert (=> bs!1030446 (= (= lt!1796698 (ListMap!4358 Nil!51644)) (= lambda!194774 lambda!194746))))

(declare-fun bs!1030447 () Bool)

(assert (= bs!1030447 (and b!4635146 d!1461268)))

(assert (=> bs!1030447 (= (= lt!1796698 lt!1797119) (= lambda!194774 lambda!194749))))

(declare-fun bs!1030448 () Bool)

(assert (= bs!1030448 (and b!4635146 b!4634989)))

(assert (=> bs!1030448 (= (= lt!1796698 lt!1797121) (= lambda!194774 lambda!194748))))

(declare-fun bs!1030449 () Bool)

(assert (= bs!1030449 (and b!4635146 b!4634994)))

(assert (=> bs!1030449 (= (= lt!1796698 (ListMap!4358 Nil!51644)) (= lambda!194774 lambda!194754))))

(assert (=> bs!1030443 (= (= lt!1796698 lt!1797071) (= lambda!194774 lambda!194737))))

(declare-fun bs!1030450 () Bool)

(assert (= bs!1030450 (and b!4635146 d!1461258)))

(assert (=> bs!1030450 (= (= lt!1796698 lt!1797069) (= lambda!194774 lambda!194741))))

(assert (=> bs!1030438 (= (= lt!1796698 (ListMap!4358 Nil!51644)) (= lambda!194774 lambda!194731))))

(assert (=> bs!1030449 (= (= lt!1796698 lt!1797142) (= lambda!194774 lambda!194755))))

(assert (=> bs!1030448 (= (= lt!1796698 (ListMap!4358 Nil!51644)) (= lambda!194774 lambda!194747))))

(declare-fun bs!1030451 () Bool)

(assert (= bs!1030451 (and b!4635146 b!4634958)))

(assert (=> bs!1030451 (= (= lt!1796698 (ListMap!4358 Nil!51644)) (= lambda!194774 lambda!194730))))

(declare-fun bs!1030452 () Bool)

(assert (= bs!1030452 (and b!4635146 d!1461284)))

(assert (=> bs!1030452 (not (= lambda!194774 lambda!194759))))

(assert (=> b!4635146 true))

(declare-fun lambda!194775 () Int)

(declare-fun lt!1797280 () ListMap!4357)

(assert (=> bs!1030438 (= (= lt!1797280 lt!1797050) (= lambda!194775 lambda!194732))))

(assert (=> bs!1030439 (not (= lambda!194775 lambda!194772))))

(assert (=> bs!1030440 (= (= lt!1797280 lt!1797048) (= lambda!194775 lambda!194733))))

(assert (=> bs!1030441 (= (= lt!1797280 (ListMap!4358 Nil!51644)) (= lambda!194775 lambda!194734))))

(assert (=> bs!1030442 (= (= lt!1797280 (ListMap!4358 Nil!51644)) (= lambda!194775 lambda!194752))))

(assert (=> bs!1030443 (= (= lt!1797280 (ListMap!4358 Nil!51644)) (= lambda!194775 lambda!194735))))

(assert (=> b!4635146 (= (= lt!1797280 lt!1796698) (= lambda!194775 lambda!194774))))

(assert (=> bs!1030444 (= (= lt!1797280 lt!1796698) (= lambda!194775 lambda!194773))))

(assert (=> bs!1030445 (= (= lt!1797280 lt!1797140) (= lambda!194775 lambda!194756))))

(assert (=> bs!1030446 (= (= lt!1797280 (ListMap!4358 Nil!51644)) (= lambda!194775 lambda!194746))))

(assert (=> bs!1030447 (= (= lt!1797280 lt!1797119) (= lambda!194775 lambda!194749))))

(assert (=> bs!1030448 (= (= lt!1797280 lt!1797121) (= lambda!194775 lambda!194748))))

(assert (=> bs!1030449 (= (= lt!1797280 (ListMap!4358 Nil!51644)) (= lambda!194775 lambda!194754))))

(assert (=> bs!1030443 (= (= lt!1797280 lt!1797071) (= lambda!194775 lambda!194737))))

(assert (=> bs!1030450 (= (= lt!1797280 lt!1797069) (= lambda!194775 lambda!194741))))

(assert (=> bs!1030438 (= (= lt!1797280 (ListMap!4358 Nil!51644)) (= lambda!194775 lambda!194731))))

(assert (=> bs!1030449 (= (= lt!1797280 lt!1797142) (= lambda!194775 lambda!194755))))

(assert (=> bs!1030448 (= (= lt!1797280 (ListMap!4358 Nil!51644)) (= lambda!194775 lambda!194747))))

(assert (=> bs!1030451 (= (= lt!1797280 (ListMap!4358 Nil!51644)) (= lambda!194775 lambda!194730))))

(assert (=> bs!1030452 (not (= lambda!194775 lambda!194759))))

(assert (=> b!4635146 true))

(declare-fun bs!1030453 () Bool)

(declare-fun d!1461364 () Bool)

(assert (= bs!1030453 (and d!1461364 b!4634961)))

(declare-fun lambda!194776 () Int)

(declare-fun lt!1797278 () ListMap!4357)

(assert (=> bs!1030453 (= (= lt!1797278 lt!1797050) (= lambda!194776 lambda!194732))))

(declare-fun bs!1030454 () Bool)

(assert (= bs!1030454 (and d!1461364 d!1461362)))

(assert (=> bs!1030454 (not (= lambda!194776 lambda!194772))))

(declare-fun bs!1030455 () Bool)

(assert (= bs!1030455 (and d!1461364 d!1461202)))

(assert (=> bs!1030455 (= (= lt!1797278 lt!1797048) (= lambda!194776 lambda!194733))))

(declare-fun bs!1030456 () Bool)

(assert (= bs!1030456 (and d!1461364 b!4634965)))

(assert (=> bs!1030456 (= (= lt!1797278 (ListMap!4358 Nil!51644)) (= lambda!194776 lambda!194734))))

(declare-fun bs!1030457 () Bool)

(assert (= bs!1030457 (and d!1461364 b!4634991)))

(assert (=> bs!1030457 (= (= lt!1797278 (ListMap!4358 Nil!51644)) (= lambda!194776 lambda!194752))))

(declare-fun bs!1030458 () Bool)

(assert (= bs!1030458 (and d!1461364 b!4634968)))

(assert (=> bs!1030458 (= (= lt!1797278 (ListMap!4358 Nil!51644)) (= lambda!194776 lambda!194735))))

(declare-fun bs!1030459 () Bool)

(assert (= bs!1030459 (and d!1461364 b!4635146)))

(assert (=> bs!1030459 (= (= lt!1797278 lt!1796698) (= lambda!194776 lambda!194774))))

(declare-fun bs!1030460 () Bool)

(assert (= bs!1030460 (and d!1461364 b!4635143)))

(assert (=> bs!1030460 (= (= lt!1797278 lt!1796698) (= lambda!194776 lambda!194773))))

(declare-fun bs!1030461 () Bool)

(assert (= bs!1030461 (and d!1461364 d!1461274)))

(assert (=> bs!1030461 (= (= lt!1797278 lt!1797140) (= lambda!194776 lambda!194756))))

(declare-fun bs!1030462 () Bool)

(assert (= bs!1030462 (and d!1461364 b!4634986)))

(assert (=> bs!1030462 (= (= lt!1797278 (ListMap!4358 Nil!51644)) (= lambda!194776 lambda!194746))))

(declare-fun bs!1030463 () Bool)

(assert (= bs!1030463 (and d!1461364 d!1461268)))

(assert (=> bs!1030463 (= (= lt!1797278 lt!1797119) (= lambda!194776 lambda!194749))))

(declare-fun bs!1030464 () Bool)

(assert (= bs!1030464 (and d!1461364 b!4634989)))

(assert (=> bs!1030464 (= (= lt!1797278 lt!1797121) (= lambda!194776 lambda!194748))))

(declare-fun bs!1030465 () Bool)

(assert (= bs!1030465 (and d!1461364 b!4634994)))

(assert (=> bs!1030465 (= (= lt!1797278 (ListMap!4358 Nil!51644)) (= lambda!194776 lambda!194754))))

(assert (=> bs!1030458 (= (= lt!1797278 lt!1797071) (= lambda!194776 lambda!194737))))

(declare-fun bs!1030466 () Bool)

(assert (= bs!1030466 (and d!1461364 d!1461258)))

(assert (=> bs!1030466 (= (= lt!1797278 lt!1797069) (= lambda!194776 lambda!194741))))

(assert (=> bs!1030453 (= (= lt!1797278 (ListMap!4358 Nil!51644)) (= lambda!194776 lambda!194731))))

(assert (=> bs!1030465 (= (= lt!1797278 lt!1797142) (= lambda!194776 lambda!194755))))

(assert (=> bs!1030459 (= (= lt!1797278 lt!1797280) (= lambda!194776 lambda!194775))))

(assert (=> bs!1030464 (= (= lt!1797278 (ListMap!4358 Nil!51644)) (= lambda!194776 lambda!194747))))

(declare-fun bs!1030467 () Bool)

(assert (= bs!1030467 (and d!1461364 b!4634958)))

(assert (=> bs!1030467 (= (= lt!1797278 (ListMap!4358 Nil!51644)) (= lambda!194776 lambda!194730))))

(declare-fun bs!1030468 () Bool)

(assert (= bs!1030468 (and d!1461364 d!1461284)))

(assert (=> bs!1030468 (not (= lambda!194776 lambda!194759))))

(assert (=> d!1461364 true))

(declare-fun b!4635142 () Bool)

(declare-fun e!2891514 () Bool)

(assert (=> b!4635142 (= e!2891514 (forall!10892 (toList!5054 lt!1796698) lambda!194775))))

(declare-fun e!2891512 () ListMap!4357)

(assert (=> b!4635143 (= e!2891512 lt!1796698)))

(declare-fun lt!1797296 () Unit!114127)

(declare-fun call!323498 () Unit!114127)

(assert (=> b!4635143 (= lt!1797296 call!323498)))

(declare-fun call!323500 () Bool)

(assert (=> b!4635143 call!323500))

(declare-fun lt!1797295 () Unit!114127)

(assert (=> b!4635143 (= lt!1797295 lt!1797296)))

(declare-fun call!323499 () Bool)

(assert (=> b!4635143 call!323499))

(declare-fun lt!1797297 () Unit!114127)

(declare-fun Unit!114236 () Unit!114127)

(assert (=> b!4635143 (= lt!1797297 Unit!114236)))

(declare-fun e!2891513 () Bool)

(assert (=> d!1461364 e!2891513))

(declare-fun res!1945477 () Bool)

(assert (=> d!1461364 (=> (not res!1945477) (not e!2891513))))

(assert (=> d!1461364 (= res!1945477 (forall!10892 oldBucket!40 lambda!194776))))

(assert (=> d!1461364 (= lt!1797278 e!2891512)))

(declare-fun c!793349 () Bool)

(assert (=> d!1461364 (= c!793349 ((_ is Nil!51644) oldBucket!40))))

(assert (=> d!1461364 (noDuplicateKeys!1544 oldBucket!40)))

(assert (=> d!1461364 (= (addToMapMapFromBucket!1005 oldBucket!40 lt!1796698) lt!1797278)))

(declare-fun b!4635144 () Bool)

(assert (=> b!4635144 (= e!2891513 (invariantList!1238 (toList!5054 lt!1797278)))))

(declare-fun b!4635145 () Bool)

(declare-fun res!1945476 () Bool)

(assert (=> b!4635145 (=> (not res!1945476) (not e!2891513))))

(assert (=> b!4635145 (= res!1945476 (forall!10892 (toList!5054 lt!1796698) lambda!194776))))

(declare-fun bm!323493 () Bool)

(assert (=> bm!323493 (= call!323498 (lemmaContainsAllItsOwnKeys!540 lt!1796698))))

(assert (=> b!4635146 (= e!2891512 lt!1797280)))

(declare-fun lt!1797284 () ListMap!4357)

(assert (=> b!4635146 (= lt!1797284 (+!1910 lt!1796698 (h!57728 oldBucket!40)))))

(assert (=> b!4635146 (= lt!1797280 (addToMapMapFromBucket!1005 (t!358834 oldBucket!40) (+!1910 lt!1796698 (h!57728 oldBucket!40))))))

(declare-fun lt!1797286 () Unit!114127)

(assert (=> b!4635146 (= lt!1797286 call!323498)))

(assert (=> b!4635146 (forall!10892 (toList!5054 lt!1796698) lambda!194774)))

(declare-fun lt!1797277 () Unit!114127)

(assert (=> b!4635146 (= lt!1797277 lt!1797286)))

(assert (=> b!4635146 call!323499))

(declare-fun lt!1797294 () Unit!114127)

(declare-fun Unit!114237 () Unit!114127)

(assert (=> b!4635146 (= lt!1797294 Unit!114237)))

(assert (=> b!4635146 (forall!10892 (t!358834 oldBucket!40) lambda!194775)))

(declare-fun lt!1797283 () Unit!114127)

(declare-fun Unit!114238 () Unit!114127)

(assert (=> b!4635146 (= lt!1797283 Unit!114238)))

(declare-fun lt!1797289 () Unit!114127)

(declare-fun Unit!114239 () Unit!114127)

(assert (=> b!4635146 (= lt!1797289 Unit!114239)))

(declare-fun lt!1797288 () Unit!114127)

(assert (=> b!4635146 (= lt!1797288 (forallContained!3124 (toList!5054 lt!1797284) lambda!194775 (h!57728 oldBucket!40)))))

(assert (=> b!4635146 (contains!14761 lt!1797284 (_1!29605 (h!57728 oldBucket!40)))))

(declare-fun lt!1797290 () Unit!114127)

(declare-fun Unit!114240 () Unit!114127)

(assert (=> b!4635146 (= lt!1797290 Unit!114240)))

(assert (=> b!4635146 (contains!14761 lt!1797280 (_1!29605 (h!57728 oldBucket!40)))))

(declare-fun lt!1797282 () Unit!114127)

(declare-fun Unit!114241 () Unit!114127)

(assert (=> b!4635146 (= lt!1797282 Unit!114241)))

(assert (=> b!4635146 (forall!10892 oldBucket!40 lambda!194775)))

(declare-fun lt!1797279 () Unit!114127)

(declare-fun Unit!114242 () Unit!114127)

(assert (=> b!4635146 (= lt!1797279 Unit!114242)))

(assert (=> b!4635146 (forall!10892 (toList!5054 lt!1797284) lambda!194775)))

(declare-fun lt!1797291 () Unit!114127)

(declare-fun Unit!114243 () Unit!114127)

(assert (=> b!4635146 (= lt!1797291 Unit!114243)))

(declare-fun lt!1797293 () Unit!114127)

(declare-fun Unit!114244 () Unit!114127)

(assert (=> b!4635146 (= lt!1797293 Unit!114244)))

(declare-fun lt!1797292 () Unit!114127)

(assert (=> b!4635146 (= lt!1797292 (addForallContainsKeyThenBeforeAdding!539 lt!1796698 lt!1797280 (_1!29605 (h!57728 oldBucket!40)) (_2!29605 (h!57728 oldBucket!40))))))

(assert (=> b!4635146 (forall!10892 (toList!5054 lt!1796698) lambda!194775)))

(declare-fun lt!1797281 () Unit!114127)

(assert (=> b!4635146 (= lt!1797281 lt!1797292)))

(assert (=> b!4635146 (forall!10892 (toList!5054 lt!1796698) lambda!194775)))

(declare-fun lt!1797287 () Unit!114127)

(declare-fun Unit!114245 () Unit!114127)

(assert (=> b!4635146 (= lt!1797287 Unit!114245)))

(declare-fun res!1945478 () Bool)

(assert (=> b!4635146 (= res!1945478 call!323500)))

(assert (=> b!4635146 (=> (not res!1945478) (not e!2891514))))

(assert (=> b!4635146 e!2891514))

(declare-fun lt!1797285 () Unit!114127)

(declare-fun Unit!114246 () Unit!114127)

(assert (=> b!4635146 (= lt!1797285 Unit!114246)))

(declare-fun bm!323494 () Bool)

(assert (=> bm!323494 (= call!323499 (forall!10892 (ite c!793349 (toList!5054 lt!1796698) (toList!5054 lt!1797284)) (ite c!793349 lambda!194773 lambda!194775)))))

(declare-fun bm!323495 () Bool)

(assert (=> bm!323495 (= call!323500 (forall!10892 (ite c!793349 (toList!5054 lt!1796698) oldBucket!40) (ite c!793349 lambda!194773 lambda!194775)))))

(assert (= (and d!1461364 c!793349) b!4635143))

(assert (= (and d!1461364 (not c!793349)) b!4635146))

(assert (= (and b!4635146 res!1945478) b!4635142))

(assert (= (or b!4635143 b!4635146) bm!323493))

(assert (= (or b!4635143 b!4635146) bm!323494))

(assert (= (or b!4635143 b!4635146) bm!323495))

(assert (= (and d!1461364 res!1945477) b!4635145))

(assert (= (and b!4635145 res!1945476) b!4635144))

(declare-fun m!5490577 () Bool)

(assert (=> d!1461364 m!5490577))

(assert (=> d!1461364 m!5489503))

(declare-fun m!5490579 () Bool)

(assert (=> bm!323495 m!5490579))

(declare-fun m!5490581 () Bool)

(assert (=> bm!323494 m!5490581))

(declare-fun m!5490583 () Bool)

(assert (=> bm!323493 m!5490583))

(declare-fun m!5490585 () Bool)

(assert (=> b!4635145 m!5490585))

(declare-fun m!5490587 () Bool)

(assert (=> b!4635144 m!5490587))

(declare-fun m!5490589 () Bool)

(assert (=> b!4635146 m!5490589))

(declare-fun m!5490591 () Bool)

(assert (=> b!4635146 m!5490591))

(declare-fun m!5490593 () Bool)

(assert (=> b!4635146 m!5490593))

(declare-fun m!5490595 () Bool)

(assert (=> b!4635146 m!5490595))

(declare-fun m!5490597 () Bool)

(assert (=> b!4635146 m!5490597))

(declare-fun m!5490599 () Bool)

(assert (=> b!4635146 m!5490599))

(declare-fun m!5490601 () Bool)

(assert (=> b!4635146 m!5490601))

(declare-fun m!5490603 () Bool)

(assert (=> b!4635146 m!5490603))

(assert (=> b!4635146 m!5490599))

(declare-fun m!5490605 () Bool)

(assert (=> b!4635146 m!5490605))

(declare-fun m!5490607 () Bool)

(assert (=> b!4635146 m!5490607))

(assert (=> b!4635146 m!5490601))

(declare-fun m!5490609 () Bool)

(assert (=> b!4635146 m!5490609))

(assert (=> b!4635142 m!5490601))

(assert (=> b!4634739 d!1461364))

(declare-fun bs!1030469 () Bool)

(declare-fun d!1461366 () Bool)

(assert (= bs!1030469 (and d!1461366 d!1461264)))

(declare-fun lambda!194777 () Int)

(assert (=> bs!1030469 (= lambda!194777 lambda!194744)))

(declare-fun bs!1030470 () Bool)

(assert (= bs!1030470 (and d!1461366 d!1461196)))

(assert (=> bs!1030470 (= lambda!194777 lambda!194686)))

(declare-fun bs!1030471 () Bool)

(assert (= bs!1030471 (and d!1461366 d!1461356)))

(assert (=> bs!1030471 (= lambda!194777 lambda!194771)))

(declare-fun bs!1030472 () Bool)

(assert (= bs!1030472 (and d!1461366 d!1461182)))

(assert (=> bs!1030472 (= lambda!194777 lambda!194682)))

(declare-fun bs!1030473 () Bool)

(assert (= bs!1030473 (and d!1461366 b!4634729)))

(assert (=> bs!1030473 (= lambda!194777 lambda!194634)))

(declare-fun bs!1030474 () Bool)

(assert (= bs!1030474 (and d!1461366 d!1461288)))

(assert (=> bs!1030474 (= lambda!194777 lambda!194768)))

(declare-fun lt!1797298 () ListMap!4357)

(assert (=> d!1461366 (invariantList!1238 (toList!5054 lt!1797298))))

(declare-fun e!2891515 () ListMap!4357)

(assert (=> d!1461366 (= lt!1797298 e!2891515)))

(declare-fun c!793350 () Bool)

(assert (=> d!1461366 (= c!793350 ((_ is Cons!51645) Nil!51645))))

(assert (=> d!1461366 (forall!10890 Nil!51645 lambda!194777)))

(assert (=> d!1461366 (= (extractMap!1600 Nil!51645) lt!1797298)))

(declare-fun b!4635147 () Bool)

(assert (=> b!4635147 (= e!2891515 (addToMapMapFromBucket!1005 (_2!29606 (h!57729 Nil!51645)) (extractMap!1600 (t!358835 Nil!51645))))))

(declare-fun b!4635148 () Bool)

(assert (=> b!4635148 (= e!2891515 (ListMap!4358 Nil!51644))))

(assert (= (and d!1461366 c!793350) b!4635147))

(assert (= (and d!1461366 (not c!793350)) b!4635148))

(declare-fun m!5490611 () Bool)

(assert (=> d!1461366 m!5490611))

(declare-fun m!5490613 () Bool)

(assert (=> d!1461366 m!5490613))

(declare-fun m!5490615 () Bool)

(assert (=> b!4635147 m!5490615))

(assert (=> b!4635147 m!5490615))

(declare-fun m!5490617 () Bool)

(assert (=> b!4635147 m!5490617))

(assert (=> b!4634739 d!1461366))

(declare-fun d!1461368 () Bool)

(assert (=> d!1461368 (= (eq!859 lt!1796684 lt!1796703) (= (content!8898 (toList!5054 lt!1796684)) (content!8898 (toList!5054 lt!1796703))))))

(declare-fun bs!1030475 () Bool)

(assert (= bs!1030475 d!1461368))

(assert (=> bs!1030475 m!5490135))

(declare-fun m!5490619 () Bool)

(assert (=> bs!1030475 m!5490619))

(assert (=> b!4634744 d!1461368))

(declare-fun b!4635149 () Bool)

(declare-fun e!2891519 () List!51770)

(assert (=> b!4635149 (= e!2891519 (keys!18225 lt!1796684))))

(declare-fun b!4635150 () Bool)

(declare-fun e!2891521 () Unit!114127)

(declare-fun lt!1797299 () Unit!114127)

(assert (=> b!4635150 (= e!2891521 lt!1797299)))

(declare-fun lt!1797304 () Unit!114127)

(assert (=> b!4635150 (= lt!1797304 (lemmaContainsKeyImpliesGetValueByKeyDefined!1420 (toList!5054 lt!1796684) key!4968))))

(assert (=> b!4635150 (isDefined!8961 (getValueByKey!1518 (toList!5054 lt!1796684) key!4968))))

(declare-fun lt!1797301 () Unit!114127)

(assert (=> b!4635150 (= lt!1797301 lt!1797304)))

(assert (=> b!4635150 (= lt!1797299 (lemmaInListThenGetKeysListContains!684 (toList!5054 lt!1796684) key!4968))))

(declare-fun call!323501 () Bool)

(assert (=> b!4635150 call!323501))

(declare-fun b!4635151 () Bool)

(declare-fun e!2891517 () Bool)

(declare-fun e!2891520 () Bool)

(assert (=> b!4635151 (= e!2891517 e!2891520)))

(declare-fun res!1945481 () Bool)

(assert (=> b!4635151 (=> (not res!1945481) (not e!2891520))))

(assert (=> b!4635151 (= res!1945481 (isDefined!8961 (getValueByKey!1518 (toList!5054 lt!1796684) key!4968)))))

(declare-fun d!1461370 () Bool)

(assert (=> d!1461370 e!2891517))

(declare-fun res!1945480 () Bool)

(assert (=> d!1461370 (=> res!1945480 e!2891517)))

(declare-fun e!2891516 () Bool)

(assert (=> d!1461370 (= res!1945480 e!2891516)))

(declare-fun res!1945479 () Bool)

(assert (=> d!1461370 (=> (not res!1945479) (not e!2891516))))

(declare-fun lt!1797306 () Bool)

(assert (=> d!1461370 (= res!1945479 (not lt!1797306))))

(declare-fun lt!1797300 () Bool)

(assert (=> d!1461370 (= lt!1797306 lt!1797300)))

(declare-fun lt!1797305 () Unit!114127)

(assert (=> d!1461370 (= lt!1797305 e!2891521)))

(declare-fun c!793353 () Bool)

(assert (=> d!1461370 (= c!793353 lt!1797300)))

(assert (=> d!1461370 (= lt!1797300 (containsKey!2554 (toList!5054 lt!1796684) key!4968))))

(assert (=> d!1461370 (= (contains!14761 lt!1796684 key!4968) lt!1797306)))

(declare-fun b!4635152 () Bool)

(declare-fun e!2891518 () Unit!114127)

(assert (=> b!4635152 (= e!2891521 e!2891518)))

(declare-fun c!793351 () Bool)

(assert (=> b!4635152 (= c!793351 call!323501)))

(declare-fun b!4635153 () Bool)

(assert (=> b!4635153 false))

(declare-fun lt!1797303 () Unit!114127)

(declare-fun lt!1797302 () Unit!114127)

(assert (=> b!4635153 (= lt!1797303 lt!1797302)))

(assert (=> b!4635153 (containsKey!2554 (toList!5054 lt!1796684) key!4968)))

(assert (=> b!4635153 (= lt!1797302 (lemmaInGetKeysListThenContainsKey!688 (toList!5054 lt!1796684) key!4968))))

(declare-fun Unit!114247 () Unit!114127)

(assert (=> b!4635153 (= e!2891518 Unit!114247)))

(declare-fun b!4635154 () Bool)

(declare-fun Unit!114248 () Unit!114127)

(assert (=> b!4635154 (= e!2891518 Unit!114248)))

(declare-fun bm!323496 () Bool)

(assert (=> bm!323496 (= call!323501 (contains!14765 e!2891519 key!4968))))

(declare-fun c!793352 () Bool)

(assert (=> bm!323496 (= c!793352 c!793353)))

(declare-fun b!4635155 () Bool)

(assert (=> b!4635155 (= e!2891519 (getKeysList!689 (toList!5054 lt!1796684)))))

(declare-fun b!4635156 () Bool)

(assert (=> b!4635156 (= e!2891516 (not (contains!14765 (keys!18225 lt!1796684) key!4968)))))

(declare-fun b!4635157 () Bool)

(assert (=> b!4635157 (= e!2891520 (contains!14765 (keys!18225 lt!1796684) key!4968))))

(assert (= (and d!1461370 c!793353) b!4635150))

(assert (= (and d!1461370 (not c!793353)) b!4635152))

(assert (= (and b!4635152 c!793351) b!4635153))

(assert (= (and b!4635152 (not c!793351)) b!4635154))

(assert (= (or b!4635150 b!4635152) bm!323496))

(assert (= (and bm!323496 c!793352) b!4635155))

(assert (= (and bm!323496 (not c!793352)) b!4635149))

(assert (= (and d!1461370 res!1945479) b!4635156))

(assert (= (and d!1461370 (not res!1945480)) b!4635151))

(assert (= (and b!4635151 res!1945481) b!4635157))

(declare-fun m!5490621 () Bool)

(assert (=> b!4635153 m!5490621))

(declare-fun m!5490623 () Bool)

(assert (=> b!4635153 m!5490623))

(declare-fun m!5490625 () Bool)

(assert (=> bm!323496 m!5490625))

(declare-fun m!5490627 () Bool)

(assert (=> b!4635157 m!5490627))

(assert (=> b!4635157 m!5490627))

(declare-fun m!5490629 () Bool)

(assert (=> b!4635157 m!5490629))

(declare-fun m!5490631 () Bool)

(assert (=> b!4635151 m!5490631))

(assert (=> b!4635151 m!5490631))

(declare-fun m!5490633 () Bool)

(assert (=> b!4635151 m!5490633))

(assert (=> d!1461370 m!5490621))

(declare-fun m!5490635 () Bool)

(assert (=> b!4635155 m!5490635))

(assert (=> b!4635156 m!5490627))

(assert (=> b!4635156 m!5490627))

(assert (=> b!4635156 m!5490629))

(declare-fun m!5490637 () Bool)

(assert (=> b!4635150 m!5490637))

(assert (=> b!4635150 m!5490631))

(assert (=> b!4635150 m!5490631))

(assert (=> b!4635150 m!5490633))

(declare-fun m!5490639 () Bool)

(assert (=> b!4635150 m!5490639))

(assert (=> b!4635149 m!5490627))

(assert (=> b!4634733 d!1461370))

(declare-fun bs!1030476 () Bool)

(declare-fun d!1461372 () Bool)

(assert (= bs!1030476 (and d!1461372 d!1461264)))

(declare-fun lambda!194778 () Int)

(assert (=> bs!1030476 (= lambda!194778 lambda!194744)))

(declare-fun bs!1030477 () Bool)

(assert (= bs!1030477 (and d!1461372 d!1461196)))

(assert (=> bs!1030477 (= lambda!194778 lambda!194686)))

(declare-fun bs!1030478 () Bool)

(assert (= bs!1030478 (and d!1461372 d!1461366)))

(assert (=> bs!1030478 (= lambda!194778 lambda!194777)))

(declare-fun bs!1030479 () Bool)

(assert (= bs!1030479 (and d!1461372 d!1461356)))

(assert (=> bs!1030479 (= lambda!194778 lambda!194771)))

(declare-fun bs!1030480 () Bool)

(assert (= bs!1030480 (and d!1461372 d!1461182)))

(assert (=> bs!1030480 (= lambda!194778 lambda!194682)))

(declare-fun bs!1030481 () Bool)

(assert (= bs!1030481 (and d!1461372 b!4634729)))

(assert (=> bs!1030481 (= lambda!194778 lambda!194634)))

(declare-fun bs!1030482 () Bool)

(assert (= bs!1030482 (and d!1461372 d!1461288)))

(assert (=> bs!1030482 (= lambda!194778 lambda!194768)))

(declare-fun lt!1797307 () ListMap!4357)

(assert (=> d!1461372 (invariantList!1238 (toList!5054 lt!1797307))))

(declare-fun e!2891522 () ListMap!4357)

(assert (=> d!1461372 (= lt!1797307 e!2891522)))

(declare-fun c!793354 () Bool)

(assert (=> d!1461372 (= c!793354 ((_ is Cons!51645) lt!1796687))))

(assert (=> d!1461372 (forall!10890 lt!1796687 lambda!194778)))

(assert (=> d!1461372 (= (extractMap!1600 lt!1796687) lt!1797307)))

(declare-fun b!4635158 () Bool)

(assert (=> b!4635158 (= e!2891522 (addToMapMapFromBucket!1005 (_2!29606 (h!57729 lt!1796687)) (extractMap!1600 (t!358835 lt!1796687))))))

(declare-fun b!4635159 () Bool)

(assert (=> b!4635159 (= e!2891522 (ListMap!4358 Nil!51644))))

(assert (= (and d!1461372 c!793354) b!4635158))

(assert (= (and d!1461372 (not c!793354)) b!4635159))

(declare-fun m!5490641 () Bool)

(assert (=> d!1461372 m!5490641))

(declare-fun m!5490643 () Bool)

(assert (=> d!1461372 m!5490643))

(declare-fun m!5490645 () Bool)

(assert (=> b!4635158 m!5490645))

(assert (=> b!4635158 m!5490645))

(declare-fun m!5490647 () Bool)

(assert (=> b!4635158 m!5490647))

(assert (=> b!4634733 d!1461372))

(declare-fun d!1461374 () Bool)

(declare-fun hash!3608 (Hashable!5941 K!13010) (_ BitVec 64))

(assert (=> d!1461374 (= (hash!3604 hashF!1389 key!4968) (hash!3608 hashF!1389 key!4968))))

(declare-fun bs!1030483 () Bool)

(assert (= bs!1030483 d!1461374))

(declare-fun m!5490649 () Bool)

(assert (=> bs!1030483 m!5490649))

(assert (=> b!4634732 d!1461374))

(declare-fun d!1461376 () Bool)

(declare-fun res!1945486 () Bool)

(declare-fun e!2891527 () Bool)

(assert (=> d!1461376 (=> res!1945486 e!2891527)))

(assert (=> d!1461376 (= res!1945486 ((_ is Nil!51645) lt!1796681))))

(assert (=> d!1461376 (= (forall!10890 lt!1796681 lambda!194634) e!2891527)))

(declare-fun b!4635164 () Bool)

(declare-fun e!2891528 () Bool)

(assert (=> b!4635164 (= e!2891527 e!2891528)))

(declare-fun res!1945487 () Bool)

(assert (=> b!4635164 (=> (not res!1945487) (not e!2891528))))

(assert (=> b!4635164 (= res!1945487 (dynLambda!21532 lambda!194634 (h!57729 lt!1796681)))))

(declare-fun b!4635165 () Bool)

(assert (=> b!4635165 (= e!2891528 (forall!10890 (t!358835 lt!1796681) lambda!194634))))

(assert (= (and d!1461376 (not res!1945486)) b!4635164))

(assert (= (and b!4635164 res!1945487) b!4635165))

(declare-fun b_lambda!170983 () Bool)

(assert (=> (not b_lambda!170983) (not b!4635164)))

(declare-fun m!5490651 () Bool)

(assert (=> b!4635164 m!5490651))

(declare-fun m!5490653 () Bool)

(assert (=> b!4635165 m!5490653))

(assert (=> b!4634742 d!1461376))

(declare-fun d!1461378 () Bool)

(declare-fun res!1945492 () Bool)

(declare-fun e!2891533 () Bool)

(assert (=> d!1461378 (=> res!1945492 e!2891533)))

(assert (=> d!1461378 (= res!1945492 (not ((_ is Cons!51644) oldBucket!40)))))

(assert (=> d!1461378 (= (noDuplicateKeys!1544 oldBucket!40) e!2891533)))

(declare-fun b!4635170 () Bool)

(declare-fun e!2891534 () Bool)

(assert (=> b!4635170 (= e!2891533 e!2891534)))

(declare-fun res!1945493 () Bool)

(assert (=> b!4635170 (=> (not res!1945493) (not e!2891534))))

(assert (=> b!4635170 (= res!1945493 (not (containsKey!2552 (t!358834 oldBucket!40) (_1!29605 (h!57728 oldBucket!40)))))))

(declare-fun b!4635171 () Bool)

(assert (=> b!4635171 (= e!2891534 (noDuplicateKeys!1544 (t!358834 oldBucket!40)))))

(assert (= (and d!1461378 (not res!1945492)) b!4635170))

(assert (= (and b!4635170 res!1945493) b!4635171))

(declare-fun m!5490655 () Bool)

(assert (=> b!4635170 m!5490655))

(assert (=> b!4635171 m!5489583))

(assert (=> start!465564 d!1461378))

(declare-fun d!1461380 () Bool)

(declare-fun lt!1797308 () List!51768)

(assert (=> d!1461380 (not (containsKey!2552 lt!1797308 key!4968))))

(declare-fun e!2891536 () List!51768)

(assert (=> d!1461380 (= lt!1797308 e!2891536)))

(declare-fun c!793356 () Bool)

(assert (=> d!1461380 (= c!793356 (and ((_ is Cons!51644) lt!1796704) (= (_1!29605 (h!57728 lt!1796704)) key!4968)))))

(assert (=> d!1461380 (noDuplicateKeys!1544 lt!1796704)))

(assert (=> d!1461380 (= (removePairForKey!1167 lt!1796704 key!4968) lt!1797308)))

(declare-fun b!4635173 () Bool)

(declare-fun e!2891535 () List!51768)

(assert (=> b!4635173 (= e!2891536 e!2891535)))

(declare-fun c!793355 () Bool)

(assert (=> b!4635173 (= c!793355 ((_ is Cons!51644) lt!1796704))))

(declare-fun b!4635174 () Bool)

(assert (=> b!4635174 (= e!2891535 (Cons!51644 (h!57728 lt!1796704) (removePairForKey!1167 (t!358834 lt!1796704) key!4968)))))

(declare-fun b!4635175 () Bool)

(assert (=> b!4635175 (= e!2891535 Nil!51644)))

(declare-fun b!4635172 () Bool)

(assert (=> b!4635172 (= e!2891536 (t!358834 lt!1796704))))

(assert (= (and d!1461380 c!793356) b!4635172))

(assert (= (and d!1461380 (not c!793356)) b!4635173))

(assert (= (and b!4635173 c!793355) b!4635174))

(assert (= (and b!4635173 (not c!793355)) b!4635175))

(declare-fun m!5490657 () Bool)

(assert (=> d!1461380 m!5490657))

(assert (=> d!1461380 m!5489881))

(declare-fun m!5490659 () Bool)

(assert (=> b!4635174 m!5490659))

(assert (=> b!4634736 d!1461380))

(declare-fun d!1461382 () Bool)

(assert (=> d!1461382 (= (tail!8179 newBucket!224) (t!358834 newBucket!224))))

(assert (=> b!4634736 d!1461382))

(declare-fun d!1461384 () Bool)

(assert (=> d!1461384 (= (tail!8179 oldBucket!40) (t!358834 oldBucket!40))))

(assert (=> b!4634736 d!1461384))

(declare-fun d!1461386 () Bool)

(declare-fun res!1945494 () Bool)

(declare-fun e!2891537 () Bool)

(assert (=> d!1461386 (=> res!1945494 e!2891537)))

(assert (=> d!1461386 (= res!1945494 (not ((_ is Cons!51644) newBucket!224)))))

(assert (=> d!1461386 (= (noDuplicateKeys!1544 newBucket!224) e!2891537)))

(declare-fun b!4635176 () Bool)

(declare-fun e!2891538 () Bool)

(assert (=> b!4635176 (= e!2891537 e!2891538)))

(declare-fun res!1945495 () Bool)

(assert (=> b!4635176 (=> (not res!1945495) (not e!2891538))))

(assert (=> b!4635176 (= res!1945495 (not (containsKey!2552 (t!358834 newBucket!224) (_1!29605 (h!57728 newBucket!224)))))))

(declare-fun b!4635177 () Bool)

(assert (=> b!4635177 (= e!2891538 (noDuplicateKeys!1544 (t!358834 newBucket!224)))))

(assert (= (and d!1461386 (not res!1945494)) b!4635176))

(assert (= (and b!4635176 res!1945495) b!4635177))

(declare-fun m!5490661 () Bool)

(assert (=> b!4635176 m!5490661))

(declare-fun m!5490663 () Bool)

(assert (=> b!4635177 m!5490663))

(assert (=> b!4634746 d!1461386))

(declare-fun d!1461388 () Bool)

(assert (=> d!1461388 (= (eq!859 lt!1796700 (+!1910 lt!1796682 lt!1796674)) (= (content!8898 (toList!5054 lt!1796700)) (content!8898 (toList!5054 (+!1910 lt!1796682 lt!1796674)))))))

(declare-fun bs!1030484 () Bool)

(assert (= bs!1030484 d!1461388))

(assert (=> bs!1030484 m!5490307))

(declare-fun m!5490665 () Bool)

(assert (=> bs!1030484 m!5490665))

(assert (=> b!4634735 d!1461388))

(declare-fun d!1461390 () Bool)

(declare-fun e!2891539 () Bool)

(assert (=> d!1461390 e!2891539))

(declare-fun res!1945496 () Bool)

(assert (=> d!1461390 (=> (not res!1945496) (not e!2891539))))

(declare-fun lt!1797312 () ListMap!4357)

(assert (=> d!1461390 (= res!1945496 (contains!14761 lt!1797312 (_1!29605 lt!1796674)))))

(declare-fun lt!1797310 () List!51768)

(assert (=> d!1461390 (= lt!1797312 (ListMap!4358 lt!1797310))))

(declare-fun lt!1797309 () Unit!114127)

(declare-fun lt!1797311 () Unit!114127)

(assert (=> d!1461390 (= lt!1797309 lt!1797311)))

(assert (=> d!1461390 (= (getValueByKey!1518 lt!1797310 (_1!29605 lt!1796674)) (Some!11695 (_2!29605 lt!1796674)))))

(assert (=> d!1461390 (= lt!1797311 (lemmaContainsTupThenGetReturnValue!882 lt!1797310 (_1!29605 lt!1796674) (_2!29605 lt!1796674)))))

(assert (=> d!1461390 (= lt!1797310 (insertNoDuplicatedKeys!390 (toList!5054 lt!1796682) (_1!29605 lt!1796674) (_2!29605 lt!1796674)))))

(assert (=> d!1461390 (= (+!1910 lt!1796682 lt!1796674) lt!1797312)))

(declare-fun b!4635178 () Bool)

(declare-fun res!1945497 () Bool)

(assert (=> b!4635178 (=> (not res!1945497) (not e!2891539))))

(assert (=> b!4635178 (= res!1945497 (= (getValueByKey!1518 (toList!5054 lt!1797312) (_1!29605 lt!1796674)) (Some!11695 (_2!29605 lt!1796674))))))

(declare-fun b!4635179 () Bool)

(assert (=> b!4635179 (= e!2891539 (contains!14763 (toList!5054 lt!1797312) lt!1796674))))

(assert (= (and d!1461390 res!1945496) b!4635178))

(assert (= (and b!4635178 res!1945497) b!4635179))

(declare-fun m!5490667 () Bool)

(assert (=> d!1461390 m!5490667))

(declare-fun m!5490669 () Bool)

(assert (=> d!1461390 m!5490669))

(declare-fun m!5490671 () Bool)

(assert (=> d!1461390 m!5490671))

(declare-fun m!5490673 () Bool)

(assert (=> d!1461390 m!5490673))

(declare-fun m!5490675 () Bool)

(assert (=> b!4635178 m!5490675))

(declare-fun m!5490677 () Bool)

(assert (=> b!4635179 m!5490677))

(assert (=> b!4634735 d!1461390))

(declare-fun bs!1030485 () Bool)

(declare-fun d!1461392 () Bool)

(assert (= bs!1030485 (and d!1461392 d!1461264)))

(declare-fun lambda!194779 () Int)

(assert (=> bs!1030485 (= lambda!194779 lambda!194744)))

(declare-fun bs!1030486 () Bool)

(assert (= bs!1030486 (and d!1461392 d!1461196)))

(assert (=> bs!1030486 (= lambda!194779 lambda!194686)))

(declare-fun bs!1030487 () Bool)

(assert (= bs!1030487 (and d!1461392 d!1461372)))

(assert (=> bs!1030487 (= lambda!194779 lambda!194778)))

(declare-fun bs!1030488 () Bool)

(assert (= bs!1030488 (and d!1461392 d!1461366)))

(assert (=> bs!1030488 (= lambda!194779 lambda!194777)))

(declare-fun bs!1030489 () Bool)

(assert (= bs!1030489 (and d!1461392 d!1461356)))

(assert (=> bs!1030489 (= lambda!194779 lambda!194771)))

(declare-fun bs!1030490 () Bool)

(assert (= bs!1030490 (and d!1461392 d!1461182)))

(assert (=> bs!1030490 (= lambda!194779 lambda!194682)))

(declare-fun bs!1030491 () Bool)

(assert (= bs!1030491 (and d!1461392 b!4634729)))

(assert (=> bs!1030491 (= lambda!194779 lambda!194634)))

(declare-fun bs!1030492 () Bool)

(assert (= bs!1030492 (and d!1461392 d!1461288)))

(assert (=> bs!1030492 (= lambda!194779 lambda!194768)))

(declare-fun lt!1797313 () ListMap!4357)

(assert (=> d!1461392 (invariantList!1238 (toList!5054 lt!1797313))))

(declare-fun e!2891540 () ListMap!4357)

(assert (=> d!1461392 (= lt!1797313 e!2891540)))

(declare-fun c!793357 () Bool)

(assert (=> d!1461392 (= c!793357 ((_ is Cons!51645) (Cons!51645 (tuple2!52625 hash!414 lt!1796690) Nil!51645)))))

(assert (=> d!1461392 (forall!10890 (Cons!51645 (tuple2!52625 hash!414 lt!1796690) Nil!51645) lambda!194779)))

(assert (=> d!1461392 (= (extractMap!1600 (Cons!51645 (tuple2!52625 hash!414 lt!1796690) Nil!51645)) lt!1797313)))

(declare-fun b!4635180 () Bool)

(assert (=> b!4635180 (= e!2891540 (addToMapMapFromBucket!1005 (_2!29606 (h!57729 (Cons!51645 (tuple2!52625 hash!414 lt!1796690) Nil!51645))) (extractMap!1600 (t!358835 (Cons!51645 (tuple2!52625 hash!414 lt!1796690) Nil!51645)))))))

(declare-fun b!4635181 () Bool)

(assert (=> b!4635181 (= e!2891540 (ListMap!4358 Nil!51644))))

(assert (= (and d!1461392 c!793357) b!4635180))

(assert (= (and d!1461392 (not c!793357)) b!4635181))

(declare-fun m!5490679 () Bool)

(assert (=> d!1461392 m!5490679))

(declare-fun m!5490681 () Bool)

(assert (=> d!1461392 m!5490681))

(declare-fun m!5490683 () Bool)

(assert (=> b!4635180 m!5490683))

(assert (=> b!4635180 m!5490683))

(declare-fun m!5490685 () Bool)

(assert (=> b!4635180 m!5490685))

(assert (=> b!4634735 d!1461392))

(declare-fun bs!1030493 () Bool)

(declare-fun d!1461394 () Bool)

(assert (= bs!1030493 (and d!1461394 d!1461196)))

(declare-fun lambda!194780 () Int)

(assert (=> bs!1030493 (= lambda!194780 lambda!194686)))

(declare-fun bs!1030494 () Bool)

(assert (= bs!1030494 (and d!1461394 d!1461372)))

(assert (=> bs!1030494 (= lambda!194780 lambda!194778)))

(declare-fun bs!1030495 () Bool)

(assert (= bs!1030495 (and d!1461394 d!1461366)))

(assert (=> bs!1030495 (= lambda!194780 lambda!194777)))

(declare-fun bs!1030496 () Bool)

(assert (= bs!1030496 (and d!1461394 d!1461356)))

(assert (=> bs!1030496 (= lambda!194780 lambda!194771)))

(declare-fun bs!1030497 () Bool)

(assert (= bs!1030497 (and d!1461394 d!1461182)))

(assert (=> bs!1030497 (= lambda!194780 lambda!194682)))

(declare-fun bs!1030498 () Bool)

(assert (= bs!1030498 (and d!1461394 b!4634729)))

(assert (=> bs!1030498 (= lambda!194780 lambda!194634)))

(declare-fun bs!1030499 () Bool)

(assert (= bs!1030499 (and d!1461394 d!1461288)))

(assert (=> bs!1030499 (= lambda!194780 lambda!194768)))

(declare-fun bs!1030500 () Bool)

(assert (= bs!1030500 (and d!1461394 d!1461264)))

(assert (=> bs!1030500 (= lambda!194780 lambda!194744)))

(declare-fun bs!1030501 () Bool)

(assert (= bs!1030501 (and d!1461394 d!1461392)))

(assert (=> bs!1030501 (= lambda!194780 lambda!194779)))

(declare-fun lt!1797314 () ListMap!4357)

(assert (=> d!1461394 (invariantList!1238 (toList!5054 lt!1797314))))

(declare-fun e!2891541 () ListMap!4357)

(assert (=> d!1461394 (= lt!1797314 e!2891541)))

(declare-fun c!793358 () Bool)

(assert (=> d!1461394 (= c!793358 ((_ is Cons!51645) lt!1796681))))

(assert (=> d!1461394 (forall!10890 lt!1796681 lambda!194780)))

(assert (=> d!1461394 (= (extractMap!1600 lt!1796681) lt!1797314)))

(declare-fun b!4635182 () Bool)

(assert (=> b!4635182 (= e!2891541 (addToMapMapFromBucket!1005 (_2!29606 (h!57729 lt!1796681)) (extractMap!1600 (t!358835 lt!1796681))))))

(declare-fun b!4635183 () Bool)

(assert (=> b!4635183 (= e!2891541 (ListMap!4358 Nil!51644))))

(assert (= (and d!1461394 c!793358) b!4635182))

(assert (= (and d!1461394 (not c!793358)) b!4635183))

(declare-fun m!5490687 () Bool)

(assert (=> d!1461394 m!5490687))

(declare-fun m!5490689 () Bool)

(assert (=> d!1461394 m!5490689))

(declare-fun m!5490691 () Bool)

(assert (=> b!4635182 m!5490691))

(assert (=> b!4635182 m!5490691))

(declare-fun m!5490693 () Bool)

(assert (=> b!4635182 m!5490693))

(assert (=> b!4634735 d!1461394))

(declare-fun d!1461396 () Bool)

(assert (=> d!1461396 (= (eq!859 lt!1796700 lt!1796692) (= (content!8898 (toList!5054 lt!1796700)) (content!8898 (toList!5054 lt!1796692))))))

(declare-fun bs!1030502 () Bool)

(assert (= bs!1030502 d!1461396))

(assert (=> bs!1030502 m!5490307))

(declare-fun m!5490695 () Bool)

(assert (=> bs!1030502 m!5490695))

(assert (=> b!4634745 d!1461396))

(declare-fun d!1461398 () Bool)

(assert (=> d!1461398 (= (eq!859 lt!1796677 (+!1910 lt!1796682 (h!57728 oldBucket!40))) (= (content!8898 (toList!5054 lt!1796677)) (content!8898 (toList!5054 (+!1910 lt!1796682 (h!57728 oldBucket!40))))))))

(declare-fun bs!1030503 () Bool)

(assert (= bs!1030503 d!1461398))

(declare-fun m!5490697 () Bool)

(assert (=> bs!1030503 m!5490697))

(assert (=> bs!1030503 m!5490309))

(assert (=> b!4634745 d!1461398))

(assert (=> b!4634745 d!1461282))

(declare-fun d!1461400 () Bool)

(assert (=> d!1461400 (eq!859 (+!1910 lt!1796683 (tuple2!52623 (_1!29605 (h!57728 oldBucket!40)) (_2!29605 (h!57728 oldBucket!40)))) (+!1910 lt!1796682 (tuple2!52623 (_1!29605 (h!57728 oldBucket!40)) (_2!29605 (h!57728 oldBucket!40)))))))

(declare-fun lt!1797317 () Unit!114127)

(declare-fun choose!31653 (ListMap!4357 ListMap!4357 K!13010 V!13256) Unit!114127)

(assert (=> d!1461400 (= lt!1797317 (choose!31653 lt!1796683 lt!1796682 (_1!29605 (h!57728 oldBucket!40)) (_2!29605 (h!57728 oldBucket!40))))))

(assert (=> d!1461400 (eq!859 lt!1796683 lt!1796682)))

(assert (=> d!1461400 (= (lemmaAddToEqMapsPreservesEq!56 lt!1796683 lt!1796682 (_1!29605 (h!57728 oldBucket!40)) (_2!29605 (h!57728 oldBucket!40))) lt!1797317)))

(declare-fun bs!1030504 () Bool)

(assert (= bs!1030504 d!1461400))

(declare-fun m!5490699 () Bool)

(assert (=> bs!1030504 m!5490699))

(declare-fun m!5490701 () Bool)

(assert (=> bs!1030504 m!5490701))

(declare-fun m!5490703 () Bool)

(assert (=> bs!1030504 m!5490703))

(declare-fun m!5490705 () Bool)

(assert (=> bs!1030504 m!5490705))

(assert (=> bs!1030504 m!5490705))

(assert (=> bs!1030504 m!5490701))

(declare-fun m!5490707 () Bool)

(assert (=> bs!1030504 m!5490707))

(assert (=> b!4634745 d!1461400))

(declare-fun d!1461402 () Bool)

(assert (=> d!1461402 (= (eq!859 lt!1796705 lt!1796692) (= (content!8898 (toList!5054 lt!1796705)) (content!8898 (toList!5054 lt!1796692))))))

(declare-fun bs!1030505 () Bool)

(assert (= bs!1030505 d!1461402))

(declare-fun m!5490709 () Bool)

(assert (=> bs!1030505 m!5490709))

(assert (=> bs!1030505 m!5490695))

(assert (=> b!4634734 d!1461402))

(declare-fun d!1461404 () Bool)

(assert (=> d!1461404 (= (eq!859 lt!1796679 lt!1796705) (= (content!8898 (toList!5054 lt!1796679)) (content!8898 (toList!5054 lt!1796705))))))

(declare-fun bs!1030506 () Bool)

(assert (= bs!1030506 d!1461404))

(declare-fun m!5490711 () Bool)

(assert (=> bs!1030506 m!5490711))

(assert (=> bs!1030506 m!5490709))

(assert (=> b!4634734 d!1461404))

(declare-fun d!1461406 () Bool)

(declare-fun e!2891542 () Bool)

(assert (=> d!1461406 e!2891542))

(declare-fun res!1945498 () Bool)

(assert (=> d!1461406 (=> (not res!1945498) (not e!2891542))))

(declare-fun lt!1797318 () ListMap!4357)

(assert (=> d!1461406 (= res!1945498 (not (contains!14761 lt!1797318 key!4968)))))

(assert (=> d!1461406 (= lt!1797318 (ListMap!4358 (removePresrvNoDuplicatedKeys!286 (toList!5054 lt!1796684) key!4968)))))

(assert (=> d!1461406 (= (-!584 lt!1796684 key!4968) lt!1797318)))

(declare-fun b!4635184 () Bool)

(assert (=> b!4635184 (= e!2891542 (= ((_ map and) (content!8897 (keys!18225 lt!1796684)) ((_ map not) (store ((as const (Array K!13010 Bool)) false) key!4968 true))) (content!8897 (keys!18225 lt!1797318))))))

(assert (= (and d!1461406 res!1945498) b!4635184))

(declare-fun m!5490713 () Bool)

(assert (=> d!1461406 m!5490713))

(declare-fun m!5490715 () Bool)

(assert (=> d!1461406 m!5490715))

(assert (=> b!4635184 m!5490627))

(declare-fun m!5490717 () Bool)

(assert (=> b!4635184 m!5490717))

(assert (=> b!4635184 m!5489625))

(declare-fun m!5490719 () Bool)

(assert (=> b!4635184 m!5490719))

(assert (=> b!4635184 m!5490627))

(assert (=> b!4635184 m!5490719))

(declare-fun m!5490721 () Bool)

(assert (=> b!4635184 m!5490721))

(assert (=> b!4634734 d!1461406))

(declare-fun d!1461408 () Bool)

(assert (=> d!1461408 (eq!859 (-!584 lt!1796703 key!4968) (-!584 lt!1796684 key!4968))))

(declare-fun lt!1797321 () Unit!114127)

(declare-fun choose!31654 (ListMap!4357 ListMap!4357 K!13010) Unit!114127)

(assert (=> d!1461408 (= lt!1797321 (choose!31654 lt!1796703 lt!1796684 key!4968))))

(assert (=> d!1461408 (eq!859 lt!1796703 lt!1796684)))

(assert (=> d!1461408 (= (lemmaRemovePreservesEq!40 lt!1796703 lt!1796684 key!4968) lt!1797321)))

(declare-fun bs!1030507 () Bool)

(assert (= bs!1030507 d!1461408))

(declare-fun m!5490723 () Bool)

(assert (=> bs!1030507 m!5490723))

(assert (=> bs!1030507 m!5489483))

(declare-fun m!5490725 () Bool)

(assert (=> bs!1030507 m!5490725))

(assert (=> bs!1030507 m!5489571))

(assert (=> bs!1030507 m!5489483))

(declare-fun m!5490727 () Bool)

(assert (=> bs!1030507 m!5490727))

(assert (=> bs!1030507 m!5489571))

(assert (=> b!4634734 d!1461408))

(declare-fun e!2891545 () Bool)

(declare-fun b!4635189 () Bool)

(declare-fun tp!1342478 () Bool)

(assert (=> b!4635189 (= e!2891545 (and tp_is_empty!29469 tp_is_empty!29471 tp!1342478))))

(assert (=> b!4634737 (= tp!1342470 e!2891545)))

(assert (= (and b!4634737 ((_ is Cons!51644) (t!358834 oldBucket!40))) b!4635189))

(declare-fun e!2891546 () Bool)

(declare-fun b!4635190 () Bool)

(declare-fun tp!1342479 () Bool)

(assert (=> b!4635190 (= e!2891546 (and tp_is_empty!29469 tp_is_empty!29471 tp!1342479))))

(assert (=> b!4634731 (= tp!1342471 e!2891546)))

(assert (= (and b!4634731 ((_ is Cons!51644) (t!358834 newBucket!224))) b!4635190))

(declare-fun b_lambda!170985 () Bool)

(assert (= b_lambda!170983 (or b!4634729 b_lambda!170985)))

(declare-fun bs!1030508 () Bool)

(declare-fun d!1461410 () Bool)

(assert (= bs!1030508 (and d!1461410 b!4634729)))

(assert (=> bs!1030508 (= (dynLambda!21532 lambda!194634 (h!57729 lt!1796681)) (noDuplicateKeys!1544 (_2!29606 (h!57729 lt!1796681))))))

(declare-fun m!5490729 () Bool)

(assert (=> bs!1030508 m!5490729))

(assert (=> b!4635164 d!1461410))

(declare-fun b_lambda!170987 () Bool)

(assert (= b_lambda!170977 (or b!4634729 b_lambda!170987)))

(declare-fun bs!1030509 () Bool)

(declare-fun d!1461412 () Bool)

(assert (= bs!1030509 (and d!1461412 b!4634729)))

(assert (=> bs!1030509 (= (dynLambda!21532 lambda!194634 lt!1796699) (noDuplicateKeys!1544 (_2!29606 lt!1796699)))))

(declare-fun m!5490731 () Bool)

(assert (=> bs!1030509 m!5490731))

(assert (=> d!1461320 d!1461412))

(check-sat (not b!4634961) (not b!4635146) (not b!4634988) (not b!4634967) (not bm!323483) (not b!4634861) (not d!1461168) (not b!4635147) (not b!4635142) (not d!1461284) (not d!1461274) (not d!1461326) (not bm!323484) (not d!1461170) (not b!4635134) (not d!1461138) (not b!4634855) (not b!4634979) (not d!1461400) (not b!4634862) (not b!4635180) (not d!1461268) (not b!4635150) (not b!4635171) (not b!4635071) (not d!1461254) (not bm!323493) (not d!1461406) (not b!4634990) (not b!4634994) (not b!4635092) (not b!4634810) (not b!4634964) (not b!4634814) (not b!4634813) (not d!1461282) (not d!1461280) (not d!1461266) (not bs!1030509) (not b!4635141) (not b!4635156) (not b!4635177) (not b!4634811) (not b!4634993) (not b!4634817) (not b!4635184) (not b!4635179) (not d!1461260) (not d!1461394) (not b!4635145) tp_is_empty!29471 (not bm!323495) (not d!1461362) (not b_lambda!170985) (not d!1461196) (not b!4635081) (not b!4634957) (not d!1461368) (not bm!323482) (not d!1461404) (not b!4634799) (not b_lambda!170987) (not b!4634819) (not d!1461354) (not d!1461366) (not b!4635070) (not bm!323489) (not d!1461322) (not b!4634761) (not bm!323458) (not b!4635133) (not b!4635072) (not b!4634998) (not b!4635109) (not d!1461402) (not d!1461356) (not bs!1030508) (not b!4634999) (not b!4635111) (not d!1461370) (not b!4635144) (not b!4635075) (not d!1461148) (not d!1461372) (not b!4635155) (not b!4634879) (not d!1461174) (not d!1461396) (not d!1461256) (not b!4635170) (not b!4634985) (not d!1461140) (not b!4634977) (not b!4635165) (not b!4635176) (not b!4634815) (not b!4634816) (not b!4634966) (not b!4635151) (not d!1461142) (not d!1461158) (not d!1461390) (not d!1461360) (not b!4635178) (not d!1461182) (not b!4635182) (not b!4635189) (not b!4635069) (not b!4634959) (not d!1461346) (not d!1461258) (not d!1461408) (not b!4634989) (not bm!323488) (not b!4635153) (not bm!323480) (not b!4635158) (not d!1461374) (not b!4635135) (not b!4635129) (not d!1461288) tp_is_empty!29469 (not d!1461202) (not d!1461264) (not d!1461164) (not b!4634857) (not d!1461364) (not bm!323494) (not b!4635174) (not bm!323486) (not b!4635190) (not d!1461166) (not d!1461358) (not d!1461320) (not d!1461178) (not bm!323490) (not bm!323487) (not b!4634856) (not d!1461172) (not b!4634960) (not d!1461380) (not bm!323481) (not d!1461176) (not d!1461388) (not b!4634968) (not d!1461392) (not b!4635149) (not b!4634812) (not b!4634992) (not b!4634818) (not b!4634987) (not b!4635131) (not d!1461352) (not b!4634859) (not d!1461398) (not bm!323485) (not d!1461162) (not b!4634863) (not bm!323496) (not b!4634765) (not d!1461200) (not bm!323491) (not b!4635157) (not b!4634980))
(check-sat)
