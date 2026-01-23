; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466288 () Bool)

(assert start!466288)

(declare-fun b!4638709 () Bool)

(declare-fun res!1947703 () Bool)

(declare-fun e!2893687 () Bool)

(assert (=> b!4638709 (=> (not res!1947703) (not e!2893687))))

(declare-datatypes ((Hashable!5971 0))(
  ( (HashableExt!5970 (__x!31674 Int)) )
))
(declare-fun hashF!1389 () Hashable!5971)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!13085 0))(
  ( (K!13086 (val!18739 Int)) )
))
(declare-fun key!4968 () K!13085)

(declare-fun hash!3658 (Hashable!5971 K!13085) (_ BitVec 64))

(assert (=> b!4638709 (= res!1947703 (= (hash!3658 hashF!1389 key!4968) hash!414))))

(declare-fun b!4638710 () Bool)

(declare-fun e!2893689 () Bool)

(declare-fun e!2893680 () Bool)

(assert (=> b!4638710 (= e!2893689 e!2893680)))

(declare-fun res!1947696 () Bool)

(assert (=> b!4638710 (=> res!1947696 e!2893680)))

(declare-datatypes ((V!13331 0))(
  ( (V!13332 (val!18740 Int)) )
))
(declare-datatypes ((tuple2!52742 0))(
  ( (tuple2!52743 (_1!29665 K!13085) (_2!29665 V!13331)) )
))
(declare-datatypes ((List!51844 0))(
  ( (Nil!51720) (Cons!51720 (h!57820 tuple2!52742) (t!358924 List!51844)) )
))
(declare-datatypes ((ListMap!4417 0))(
  ( (ListMap!4418 (toList!5093 List!51844)) )
))
(declare-fun lt!1801493 () ListMap!4417)

(declare-fun newBucket!224 () List!51844)

(declare-fun addToMapMapFromBucket!1033 (List!51844 ListMap!4417) ListMap!4417)

(assert (=> b!4638710 (= res!1947696 (not (= lt!1801493 (addToMapMapFromBucket!1033 newBucket!224 (ListMap!4418 Nil!51720)))))))

(declare-fun lt!1801488 () List!51844)

(assert (=> b!4638710 (= lt!1801493 (addToMapMapFromBucket!1033 lt!1801488 (ListMap!4418 Nil!51720)))))

(declare-fun b!4638711 () Bool)

(declare-fun res!1947695 () Bool)

(declare-fun e!2893683 () Bool)

(assert (=> b!4638711 (=> (not res!1947695) (not e!2893683))))

(declare-fun noDuplicateKeys!1574 (List!51844) Bool)

(assert (=> b!4638711 (= res!1947695 (noDuplicateKeys!1574 newBucket!224))))

(declare-fun b!4638712 () Bool)

(declare-fun e!2893690 () Bool)

(assert (=> b!4638712 (= e!2893687 (not e!2893690))))

(declare-fun res!1947689 () Bool)

(assert (=> b!4638712 (=> res!1947689 e!2893690)))

(declare-fun oldBucket!40 () List!51844)

(get-info :version)

(assert (=> b!4638712 (= res!1947689 (or (not ((_ is Cons!51720) oldBucket!40)) (not (= (_1!29665 (h!57820 oldBucket!40)) key!4968))))))

(declare-fun e!2893688 () Bool)

(assert (=> b!4638712 e!2893688))

(declare-fun res!1947699 () Bool)

(assert (=> b!4638712 (=> (not res!1947699) (not e!2893688))))

(declare-fun lt!1801485 () ListMap!4417)

(declare-fun lt!1801489 () ListMap!4417)

(assert (=> b!4638712 (= res!1947699 (= lt!1801489 (addToMapMapFromBucket!1033 oldBucket!40 lt!1801485)))))

(declare-datatypes ((tuple2!52744 0))(
  ( (tuple2!52745 (_1!29666 (_ BitVec 64)) (_2!29666 List!51844)) )
))
(declare-datatypes ((List!51845 0))(
  ( (Nil!51721) (Cons!51721 (h!57821 tuple2!52744) (t!358925 List!51845)) )
))
(declare-fun extractMap!1630 (List!51845) ListMap!4417)

(assert (=> b!4638712 (= lt!1801485 (extractMap!1630 Nil!51721))))

(assert (=> b!4638712 true))

(declare-fun b!4638714 () Bool)

(declare-fun res!1947693 () Bool)

(declare-fun e!2893684 () Bool)

(assert (=> b!4638714 (=> res!1947693 e!2893684)))

(declare-fun containsKey!2594 (List!51844 K!13085) Bool)

(assert (=> b!4638714 (= res!1947693 (containsKey!2594 lt!1801488 key!4968))))

(declare-fun b!4638715 () Bool)

(declare-fun tp!1342715 () Bool)

(declare-fun tp_is_empty!29589 () Bool)

(declare-fun tp_is_empty!29591 () Bool)

(declare-fun e!2893682 () Bool)

(assert (=> b!4638715 (= e!2893682 (and tp_is_empty!29589 tp_is_empty!29591 tp!1342715))))

(declare-fun tp!1342714 () Bool)

(declare-fun e!2893681 () Bool)

(declare-fun b!4638716 () Bool)

(assert (=> b!4638716 (= e!2893681 (and tp_is_empty!29589 tp_is_empty!29591 tp!1342714))))

(declare-fun b!4638717 () Bool)

(declare-fun e!2893686 () Bool)

(assert (=> b!4638717 (= e!2893690 e!2893686)))

(declare-fun res!1947698 () Bool)

(assert (=> b!4638717 (=> res!1947698 e!2893686)))

(assert (=> b!4638717 (= res!1947698 (not (= lt!1801488 newBucket!224)))))

(declare-fun tail!8201 (List!51844) List!51844)

(assert (=> b!4638717 (= lt!1801488 (tail!8201 oldBucket!40))))

(declare-fun b!4638718 () Bool)

(assert (=> b!4638718 (= e!2893680 e!2893684)))

(declare-fun res!1947701 () Bool)

(assert (=> b!4638718 (=> res!1947701 e!2893684)))

(declare-fun lt!1801490 () ListMap!4417)

(declare-fun eq!875 (ListMap!4417 ListMap!4417) Bool)

(assert (=> b!4638718 (= res!1947701 (not (eq!875 lt!1801490 (addToMapMapFromBucket!1033 oldBucket!40 (ListMap!4418 Nil!51720)))))))

(declare-fun +!1928 (ListMap!4417 tuple2!52742) ListMap!4417)

(assert (=> b!4638718 (= lt!1801490 (+!1928 lt!1801493 (h!57820 oldBucket!40)))))

(declare-fun lt!1801492 () tuple2!52742)

(assert (=> b!4638718 (eq!875 (addToMapMapFromBucket!1033 (Cons!51720 lt!1801492 lt!1801488) (ListMap!4418 Nil!51720)) (+!1928 lt!1801493 lt!1801492))))

(declare-datatypes ((Unit!115011 0))(
  ( (Unit!115012) )
))
(declare-fun lt!1801483 () Unit!115011)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!126 (tuple2!52742 List!51844 ListMap!4417) Unit!115011)

(assert (=> b!4638718 (= lt!1801483 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!126 lt!1801492 lt!1801488 (ListMap!4418 Nil!51720)))))

(declare-fun head!9694 (List!51844) tuple2!52742)

(assert (=> b!4638718 (= lt!1801492 (head!9694 oldBucket!40))))

(declare-fun b!4638719 () Bool)

(assert (=> b!4638719 (= e!2893688 (= lt!1801485 (ListMap!4418 Nil!51720)))))

(declare-fun b!4638720 () Bool)

(declare-fun res!1947691 () Bool)

(assert (=> b!4638720 (=> (not res!1947691) (not e!2893683))))

(declare-fun removePairForKey!1197 (List!51844 K!13085) List!51844)

(assert (=> b!4638720 (= res!1947691 (= (removePairForKey!1197 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4638721 () Bool)

(declare-fun res!1947690 () Bool)

(assert (=> b!4638721 (=> res!1947690 e!2893684)))

(declare-fun lt!1801487 () ListMap!4417)

(assert (=> b!4638721 (= res!1947690 (not (= lt!1801493 lt!1801487)))))

(declare-fun b!4638722 () Bool)

(declare-fun res!1947694 () Bool)

(assert (=> b!4638722 (=> (not res!1947694) (not e!2893687))))

(declare-fun allKeysSameHash!1428 (List!51844 (_ BitVec 64) Hashable!5971) Bool)

(assert (=> b!4638722 (= res!1947694 (allKeysSameHash!1428 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4638723 () Bool)

(declare-fun res!1947700 () Bool)

(assert (=> b!4638723 (=> (not res!1947700) (not e!2893683))))

(assert (=> b!4638723 (= res!1947700 (allKeysSameHash!1428 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4638724 () Bool)

(declare-fun e!2893685 () Bool)

(declare-fun -!592 (ListMap!4417 K!13085) ListMap!4417)

(assert (=> b!4638724 (= e!2893685 (= (-!592 lt!1801490 key!4968) lt!1801493))))

(assert (=> b!4638724 (= (-!592 (+!1928 lt!1801493 (tuple2!52743 key!4968 (_2!29665 (h!57820 oldBucket!40)))) key!4968) lt!1801493)))

(declare-fun lt!1801491 () Unit!115011)

(declare-fun addThenRemoveForNewKeyIsSame!23 (ListMap!4417 K!13085 V!13331) Unit!115011)

(assert (=> b!4638724 (= lt!1801491 (addThenRemoveForNewKeyIsSame!23 lt!1801493 key!4968 (_2!29665 (h!57820 oldBucket!40))))))

(declare-fun b!4638725 () Bool)

(assert (=> b!4638725 (= e!2893686 e!2893689)))

(declare-fun res!1947697 () Bool)

(assert (=> b!4638725 (=> res!1947697 e!2893689)))

(assert (=> b!4638725 (= res!1947697 (not (= lt!1801487 (extractMap!1630 (Cons!51721 (tuple2!52745 hash!414 newBucket!224) Nil!51721)))))))

(declare-fun lt!1801484 () List!51845)

(assert (=> b!4638725 (= lt!1801487 (extractMap!1630 lt!1801484))))

(assert (=> b!4638725 (= lt!1801484 (Cons!51721 (tuple2!52745 hash!414 lt!1801488) Nil!51721))))

(declare-fun b!4638726 () Bool)

(assert (=> b!4638726 (= e!2893684 e!2893685)))

(declare-fun res!1947704 () Bool)

(assert (=> b!4638726 (=> res!1947704 e!2893685)))

(declare-fun contains!14833 (ListMap!4417 K!13085) Bool)

(assert (=> b!4638726 (= res!1947704 (contains!14833 lt!1801493 key!4968))))

(assert (=> b!4638726 (not (contains!14833 lt!1801487 key!4968))))

(declare-fun lt!1801486 () Unit!115011)

(declare-datatypes ((ListLongMap!3663 0))(
  ( (ListLongMap!3664 (toList!5094 List!51845)) )
))
(declare-fun lemmaNotInItsHashBucketThenNotInMap!366 (ListLongMap!3663 K!13085 Hashable!5971) Unit!115011)

(assert (=> b!4638726 (= lt!1801486 (lemmaNotInItsHashBucketThenNotInMap!366 (ListLongMap!3664 lt!1801484) key!4968 hashF!1389))))

(declare-fun res!1947702 () Bool)

(assert (=> start!466288 (=> (not res!1947702) (not e!2893683))))

(assert (=> start!466288 (= res!1947702 (noDuplicateKeys!1574 oldBucket!40))))

(assert (=> start!466288 e!2893683))

(assert (=> start!466288 true))

(assert (=> start!466288 e!2893681))

(assert (=> start!466288 tp_is_empty!29589))

(assert (=> start!466288 e!2893682))

(declare-fun b!4638713 () Bool)

(assert (=> b!4638713 (= e!2893683 e!2893687)))

(declare-fun res!1947692 () Bool)

(assert (=> b!4638713 (=> (not res!1947692) (not e!2893687))))

(assert (=> b!4638713 (= res!1947692 (contains!14833 lt!1801489 key!4968))))

(assert (=> b!4638713 (= lt!1801489 (extractMap!1630 (Cons!51721 (tuple2!52745 hash!414 oldBucket!40) Nil!51721)))))

(assert (= (and start!466288 res!1947702) b!4638711))

(assert (= (and b!4638711 res!1947695) b!4638720))

(assert (= (and b!4638720 res!1947691) b!4638723))

(assert (= (and b!4638723 res!1947700) b!4638713))

(assert (= (and b!4638713 res!1947692) b!4638709))

(assert (= (and b!4638709 res!1947703) b!4638722))

(assert (= (and b!4638722 res!1947694) b!4638712))

(assert (= (and b!4638712 res!1947699) b!4638719))

(assert (= (and b!4638712 (not res!1947689)) b!4638717))

(assert (= (and b!4638717 (not res!1947698)) b!4638725))

(assert (= (and b!4638725 (not res!1947697)) b!4638710))

(assert (= (and b!4638710 (not res!1947696)) b!4638718))

(assert (= (and b!4638718 (not res!1947701)) b!4638714))

(assert (= (and b!4638714 (not res!1947693)) b!4638721))

(assert (= (and b!4638721 (not res!1947690)) b!4638726))

(assert (= (and b!4638726 (not res!1947704)) b!4638724))

(assert (= (and start!466288 ((_ is Cons!51720) oldBucket!40)) b!4638716))

(assert (= (and start!466288 ((_ is Cons!51720) newBucket!224)) b!4638715))

(declare-fun m!5497547 () Bool)

(assert (=> b!4638724 m!5497547))

(declare-fun m!5497549 () Bool)

(assert (=> b!4638724 m!5497549))

(assert (=> b!4638724 m!5497549))

(declare-fun m!5497551 () Bool)

(assert (=> b!4638724 m!5497551))

(declare-fun m!5497553 () Bool)

(assert (=> b!4638724 m!5497553))

(declare-fun m!5497555 () Bool)

(assert (=> b!4638709 m!5497555))

(declare-fun m!5497557 () Bool)

(assert (=> b!4638725 m!5497557))

(declare-fun m!5497559 () Bool)

(assert (=> b!4638725 m!5497559))

(declare-fun m!5497561 () Bool)

(assert (=> start!466288 m!5497561))

(declare-fun m!5497563 () Bool)

(assert (=> b!4638712 m!5497563))

(declare-fun m!5497565 () Bool)

(assert (=> b!4638712 m!5497565))

(declare-fun m!5497567 () Bool)

(assert (=> b!4638717 m!5497567))

(declare-fun m!5497569 () Bool)

(assert (=> b!4638720 m!5497569))

(declare-fun m!5497571 () Bool)

(assert (=> b!4638714 m!5497571))

(declare-fun m!5497573 () Bool)

(assert (=> b!4638726 m!5497573))

(declare-fun m!5497575 () Bool)

(assert (=> b!4638726 m!5497575))

(declare-fun m!5497577 () Bool)

(assert (=> b!4638726 m!5497577))

(declare-fun m!5497579 () Bool)

(assert (=> b!4638711 m!5497579))

(declare-fun m!5497581 () Bool)

(assert (=> b!4638723 m!5497581))

(declare-fun m!5497583 () Bool)

(assert (=> b!4638713 m!5497583))

(declare-fun m!5497585 () Bool)

(assert (=> b!4638713 m!5497585))

(declare-fun m!5497587 () Bool)

(assert (=> b!4638722 m!5497587))

(declare-fun m!5497589 () Bool)

(assert (=> b!4638710 m!5497589))

(declare-fun m!5497591 () Bool)

(assert (=> b!4638710 m!5497591))

(declare-fun m!5497593 () Bool)

(assert (=> b!4638718 m!5497593))

(declare-fun m!5497595 () Bool)

(assert (=> b!4638718 m!5497595))

(declare-fun m!5497597 () Bool)

(assert (=> b!4638718 m!5497597))

(declare-fun m!5497599 () Bool)

(assert (=> b!4638718 m!5497599))

(declare-fun m!5497601 () Bool)

(assert (=> b!4638718 m!5497601))

(assert (=> b!4638718 m!5497593))

(assert (=> b!4638718 m!5497601))

(declare-fun m!5497603 () Bool)

(assert (=> b!4638718 m!5497603))

(declare-fun m!5497605 () Bool)

(assert (=> b!4638718 m!5497605))

(declare-fun m!5497607 () Bool)

(assert (=> b!4638718 m!5497607))

(assert (=> b!4638718 m!5497603))

(check-sat (not b!4638718) (not b!4638720) (not start!466288) (not b!4638713) (not b!4638709) (not b!4638710) (not b!4638726) (not b!4638722) (not b!4638724) (not b!4638717) (not b!4638723) (not b!4638711) (not b!4638712) tp_is_empty!29589 (not b!4638715) (not b!4638725) tp_is_empty!29591 (not b!4638716) (not b!4638714))
(check-sat)
