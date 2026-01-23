; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!430002 () Bool)

(assert start!430002)

(declare-fun b!4415623 () Bool)

(declare-fun res!1823742 () Bool)

(declare-fun e!2749602 () Bool)

(assert (=> b!4415623 (=> (not res!1823742) (not e!2749602))))

(declare-datatypes ((V!11046 0))(
  ( (V!11047 (val!16911 Int)) )
))
(declare-datatypes ((K!10800 0))(
  ( (K!10801 (val!16912 Int)) )
))
(declare-datatypes ((tuple2!49142 0))(
  ( (tuple2!49143 (_1!27865 K!10800) (_2!27865 V!11046)) )
))
(declare-datatypes ((List!49565 0))(
  ( (Nil!49441) (Cons!49441 (h!55100 tuple2!49142) (t!356503 List!49565)) )
))
(declare-datatypes ((tuple2!49144 0))(
  ( (tuple2!49145 (_1!27866 (_ BitVec 64)) (_2!27866 List!49565)) )
))
(declare-datatypes ((List!49566 0))(
  ( (Nil!49442) (Cons!49442 (h!55101 tuple2!49144) (t!356504 List!49566)) )
))
(declare-datatypes ((ListLongMap!2019 0))(
  ( (ListLongMap!2020 (toList!3369 List!49566)) )
))
(declare-fun lm!1616 () ListLongMap!2019)

(declare-datatypes ((Hashable!5085 0))(
  ( (HashableExt!5084 (__x!30788 Int)) )
))
(declare-fun hashF!1220 () Hashable!5085)

(declare-fun allKeysSameHashInMap!797 (ListLongMap!2019 Hashable!5085) Bool)

(assert (=> b!4415623 (= res!1823742 (allKeysSameHashInMap!797 lm!1616 hashF!1220))))

(declare-fun key!3717 () K!10800)

(declare-fun newBucket!194 () List!49565)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun b!4415624 () Bool)

(declare-fun e!2749605 () Bool)

(declare-fun newValue!93 () V!11046)

(declare-fun apply!11543 (ListLongMap!2019 (_ BitVec 64)) List!49565)

(assert (=> b!4415624 (= e!2749605 (= newBucket!194 (Cons!49441 (tuple2!49143 key!3717 newValue!93) (apply!11543 lm!1616 hash!366))))))

(declare-fun tp!1332571 () Bool)

(declare-fun b!4415625 () Bool)

(declare-fun e!2749606 () Bool)

(declare-fun tp_is_empty!26011 () Bool)

(declare-fun tp_is_empty!26009 () Bool)

(assert (=> b!4415625 (= e!2749606 (and tp_is_empty!26011 tp_is_empty!26009 tp!1332571))))

(declare-fun b!4415626 () Bool)

(declare-fun e!2749608 () Bool)

(declare-fun e!2749607 () Bool)

(assert (=> b!4415626 (= e!2749608 e!2749607)))

(declare-fun res!1823744 () Bool)

(assert (=> b!4415626 (=> res!1823744 e!2749607)))

(declare-fun lt!1617486 () tuple2!49142)

(declare-fun lt!1617488 () List!49565)

(assert (=> b!4415626 (= res!1823744 (not (= newBucket!194 (Cons!49441 lt!1617486 lt!1617488))))))

(assert (=> b!4415626 (= lt!1617488 (apply!11543 lm!1616 hash!366))))

(assert (=> b!4415626 (= lt!1617486 (tuple2!49143 key!3717 newValue!93))))

(declare-fun b!4415627 () Bool)

(declare-fun res!1823752 () Bool)

(declare-fun e!2749601 () Bool)

(assert (=> b!4415627 (=> res!1823752 e!2749601)))

(declare-fun lt!1617491 () ListLongMap!2019)

(declare-fun lt!1617498 () tuple2!49144)

(declare-fun head!9170 (List!49566) tuple2!49144)

(assert (=> b!4415627 (= res!1823752 (not (= (head!9170 (toList!3369 lt!1617491)) lt!1617498)))))

(declare-fun b!4415628 () Bool)

(declare-fun e!2749599 () Bool)

(assert (=> b!4415628 (= e!2749602 e!2749599)))

(declare-fun res!1823741 () Bool)

(assert (=> b!4415628 (=> (not res!1823741) (not e!2749599))))

(declare-fun e!2749604 () Bool)

(assert (=> b!4415628 (= res!1823741 e!2749604)))

(declare-fun res!1823750 () Bool)

(assert (=> b!4415628 (=> res!1823750 e!2749604)))

(assert (=> b!4415628 (= res!1823750 e!2749605)))

(declare-fun res!1823743 () Bool)

(assert (=> b!4415628 (=> (not res!1823743) (not e!2749605))))

(declare-fun lt!1617494 () Bool)

(assert (=> b!4415628 (= res!1823743 (not lt!1617494))))

(declare-fun lt!1617493 () Bool)

(assert (=> b!4415628 (= lt!1617494 (not lt!1617493))))

(declare-fun contains!11895 (ListLongMap!2019 (_ BitVec 64)) Bool)

(assert (=> b!4415628 (= lt!1617493 (contains!11895 lm!1616 hash!366))))

(declare-fun b!4415629 () Bool)

(declare-fun e!2749603 () Bool)

(declare-fun tp!1332572 () Bool)

(assert (=> b!4415629 (= e!2749603 tp!1332572)))

(declare-fun b!4415630 () Bool)

(declare-fun res!1823753 () Bool)

(assert (=> b!4415630 (=> (not res!1823753) (not e!2749602))))

(declare-fun hash!2004 (Hashable!5085 K!10800) (_ BitVec 64))

(assert (=> b!4415630 (= res!1823753 (= (hash!2004 hashF!1220 key!3717) hash!366))))

(declare-fun b!4415631 () Bool)

(declare-fun res!1823740 () Bool)

(assert (=> b!4415631 (=> (not res!1823740) (not e!2749602))))

(declare-fun allKeysSameHash!651 (List!49565 (_ BitVec 64) Hashable!5085) Bool)

(assert (=> b!4415631 (= res!1823740 (allKeysSameHash!651 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4415632 () Bool)

(declare-fun res!1823749 () Bool)

(assert (=> b!4415632 (=> (not res!1823749) (not e!2749599))))

(declare-fun lambda!151846 () Int)

(declare-fun forall!9472 (List!49566 Int) Bool)

(assert (=> b!4415632 (= res!1823749 (forall!9472 (toList!3369 lm!1616) lambda!151846))))

(declare-fun res!1823748 () Bool)

(assert (=> start!430002 (=> (not res!1823748) (not e!2749602))))

(assert (=> start!430002 (= res!1823748 (forall!9472 (toList!3369 lm!1616) lambda!151846))))

(assert (=> start!430002 e!2749602))

(assert (=> start!430002 tp_is_empty!26009))

(assert (=> start!430002 tp_is_empty!26011))

(assert (=> start!430002 e!2749606))

(declare-fun inv!64986 (ListLongMap!2019) Bool)

(assert (=> start!430002 (and (inv!64986 lm!1616) e!2749603)))

(assert (=> start!430002 true))

(declare-fun b!4415633 () Bool)

(assert (=> b!4415633 (= e!2749601 e!2749608)))

(declare-fun res!1823746 () Bool)

(assert (=> b!4415633 (=> res!1823746 e!2749608)))

(declare-datatypes ((ListMap!2613 0))(
  ( (ListMap!2614 (toList!3370 List!49565)) )
))
(declare-fun lt!1617487 () ListMap!2613)

(declare-fun lt!1617497 () ListMap!2613)

(assert (=> b!4415633 (= res!1823746 (not (= lt!1617487 lt!1617497)))))

(declare-fun lt!1617495 () ListMap!2613)

(declare-fun addToMapMapFromBucket!345 (List!49565 ListMap!2613) ListMap!2613)

(assert (=> b!4415633 (= lt!1617497 (addToMapMapFromBucket!345 newBucket!194 lt!1617495))))

(declare-fun extractMap!752 (List!49566) ListMap!2613)

(assert (=> b!4415633 (= lt!1617487 (extractMap!752 (toList!3369 lt!1617491)))))

(assert (=> b!4415633 (= lt!1617495 (extractMap!752 (t!356504 (toList!3369 lm!1616))))))

(declare-fun b!4415634 () Bool)

(declare-fun res!1823747 () Bool)

(assert (=> b!4415634 (=> (not res!1823747) (not e!2749599))))

(declare-fun noDuplicateKeys!691 (List!49565) Bool)

(assert (=> b!4415634 (= res!1823747 (noDuplicateKeys!691 newBucket!194))))

(declare-fun b!4415635 () Bool)

(declare-fun res!1823738 () Bool)

(assert (=> b!4415635 (=> (not res!1823738) (not e!2749602))))

(declare-fun contains!11896 (ListMap!2613 K!10800) Bool)

(assert (=> b!4415635 (= res!1823738 (not (contains!11896 (extractMap!752 (toList!3369 lm!1616)) key!3717)))))

(declare-fun b!4415636 () Bool)

(declare-fun res!1823751 () Bool)

(assert (=> b!4415636 (=> res!1823751 e!2749601)))

(get-info :version)

(assert (=> b!4415636 (= res!1823751 (or (not ((_ is Cons!49442) (toList!3369 lm!1616))) (not (= (_1!27866 (h!55101 (toList!3369 lm!1616))) hash!366)) lt!1617494))))

(declare-fun b!4415637 () Bool)

(assert (=> b!4415637 (= e!2749604 (and (not lt!1617493) (= newBucket!194 (Cons!49441 (tuple2!49143 key!3717 newValue!93) Nil!49441))))))

(declare-fun b!4415638 () Bool)

(declare-fun res!1823737 () Bool)

(assert (=> b!4415638 (=> res!1823737 e!2749601)))

(declare-fun tail!7179 (List!49566) List!49566)

(assert (=> b!4415638 (= res!1823737 (not (= (tail!7179 (toList!3369 lt!1617491)) (t!356504 (toList!3369 lm!1616)))))))

(declare-fun b!4415639 () Bool)

(declare-fun e!2749600 () Bool)

(assert (=> b!4415639 (= e!2749600 true)))

(declare-fun lt!1617490 () Bool)

(declare-fun lt!1617496 () ListMap!2613)

(declare-fun eq!367 (ListMap!2613 ListMap!2613) Bool)

(assert (=> b!4415639 (= lt!1617490 (eq!367 lt!1617497 lt!1617496))))

(declare-fun lt!1617489 () ListMap!2613)

(assert (=> b!4415639 (eq!367 lt!1617489 lt!1617496)))

(declare-fun +!982 (ListMap!2613 tuple2!49142) ListMap!2613)

(assert (=> b!4415639 (= lt!1617496 (+!982 (addToMapMapFromBucket!345 lt!1617488 lt!1617495) lt!1617486))))

(declare-datatypes ((Unit!80823 0))(
  ( (Unit!80824) )
))
(declare-fun lt!1617499 () Unit!80823)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!162 (ListMap!2613 K!10800 V!11046 List!49565) Unit!80823)

(assert (=> b!4415639 (= lt!1617499 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!162 lt!1617495 key!3717 newValue!93 lt!1617488))))

(declare-fun b!4415640 () Bool)

(assert (=> b!4415640 (= e!2749599 (not e!2749601))))

(declare-fun res!1823739 () Bool)

(assert (=> b!4415640 (=> res!1823739 e!2749601)))

(assert (=> b!4415640 (= res!1823739 (not (forall!9472 (toList!3369 lt!1617491) lambda!151846)))))

(assert (=> b!4415640 (forall!9472 (toList!3369 lt!1617491) lambda!151846)))

(declare-fun +!983 (ListLongMap!2019 tuple2!49144) ListLongMap!2019)

(assert (=> b!4415640 (= lt!1617491 (+!983 lm!1616 lt!1617498))))

(assert (=> b!4415640 (= lt!1617498 (tuple2!49145 hash!366 newBucket!194))))

(declare-fun lt!1617492 () Unit!80823)

(declare-fun addValidProp!335 (ListLongMap!2019 Int (_ BitVec 64) List!49565) Unit!80823)

(assert (=> b!4415640 (= lt!1617492 (addValidProp!335 lm!1616 lambda!151846 hash!366 newBucket!194))))

(declare-fun b!4415641 () Bool)

(assert (=> b!4415641 (= e!2749607 e!2749600)))

(declare-fun res!1823745 () Bool)

(assert (=> b!4415641 (=> res!1823745 e!2749600)))

(assert (=> b!4415641 (= res!1823745 (not (= lt!1617497 lt!1617489)))))

(assert (=> b!4415641 (= lt!1617489 (addToMapMapFromBucket!345 lt!1617488 (+!982 lt!1617495 lt!1617486)))))

(assert (= (and start!430002 res!1823748) b!4415623))

(assert (= (and b!4415623 res!1823742) b!4415630))

(assert (= (and b!4415630 res!1823753) b!4415631))

(assert (= (and b!4415631 res!1823740) b!4415635))

(assert (= (and b!4415635 res!1823738) b!4415628))

(assert (= (and b!4415628 res!1823743) b!4415624))

(assert (= (and b!4415628 (not res!1823750)) b!4415637))

(assert (= (and b!4415628 res!1823741) b!4415634))

(assert (= (and b!4415634 res!1823747) b!4415632))

(assert (= (and b!4415632 res!1823749) b!4415640))

(assert (= (and b!4415640 (not res!1823739)) b!4415636))

(assert (= (and b!4415636 (not res!1823751)) b!4415627))

(assert (= (and b!4415627 (not res!1823752)) b!4415638))

(assert (= (and b!4415638 (not res!1823737)) b!4415633))

(assert (= (and b!4415633 (not res!1823746)) b!4415626))

(assert (= (and b!4415626 (not res!1823744)) b!4415641))

(assert (= (and b!4415641 (not res!1823745)) b!4415639))

(assert (= (and start!430002 ((_ is Cons!49441) newBucket!194)) b!4415625))

(assert (= start!430002 b!4415629))

(declare-fun m!5091697 () Bool)

(assert (=> b!4415638 m!5091697))

(declare-fun m!5091699 () Bool)

(assert (=> b!4415641 m!5091699))

(assert (=> b!4415641 m!5091699))

(declare-fun m!5091701 () Bool)

(assert (=> b!4415641 m!5091701))

(declare-fun m!5091703 () Bool)

(assert (=> b!4415631 m!5091703))

(declare-fun m!5091705 () Bool)

(assert (=> b!4415623 m!5091705))

(declare-fun m!5091707 () Bool)

(assert (=> b!4415634 m!5091707))

(declare-fun m!5091709 () Bool)

(assert (=> b!4415630 m!5091709))

(declare-fun m!5091711 () Bool)

(assert (=> b!4415635 m!5091711))

(assert (=> b!4415635 m!5091711))

(declare-fun m!5091713 () Bool)

(assert (=> b!4415635 m!5091713))

(declare-fun m!5091715 () Bool)

(assert (=> b!4415628 m!5091715))

(declare-fun m!5091717 () Bool)

(assert (=> b!4415640 m!5091717))

(assert (=> b!4415640 m!5091717))

(declare-fun m!5091719 () Bool)

(assert (=> b!4415640 m!5091719))

(declare-fun m!5091721 () Bool)

(assert (=> b!4415640 m!5091721))

(declare-fun m!5091723 () Bool)

(assert (=> b!4415633 m!5091723))

(declare-fun m!5091725 () Bool)

(assert (=> b!4415633 m!5091725))

(declare-fun m!5091727 () Bool)

(assert (=> b!4415633 m!5091727))

(declare-fun m!5091729 () Bool)

(assert (=> start!430002 m!5091729))

(declare-fun m!5091731 () Bool)

(assert (=> start!430002 m!5091731))

(declare-fun m!5091733 () Bool)

(assert (=> b!4415624 m!5091733))

(declare-fun m!5091735 () Bool)

(assert (=> b!4415639 m!5091735))

(declare-fun m!5091737 () Bool)

(assert (=> b!4415639 m!5091737))

(declare-fun m!5091739 () Bool)

(assert (=> b!4415639 m!5091739))

(declare-fun m!5091741 () Bool)

(assert (=> b!4415639 m!5091741))

(assert (=> b!4415639 m!5091739))

(declare-fun m!5091743 () Bool)

(assert (=> b!4415639 m!5091743))

(declare-fun m!5091745 () Bool)

(assert (=> b!4415627 m!5091745))

(assert (=> b!4415632 m!5091729))

(assert (=> b!4415626 m!5091733))

(check-sat (not b!4415641) (not b!4415629) (not start!430002) (not b!4415628) (not b!4415633) (not b!4415640) (not b!4415626) (not b!4415625) (not b!4415627) (not b!4415635) (not b!4415638) (not b!4415634) tp_is_empty!26011 tp_is_empty!26009 (not b!4415632) (not b!4415623) (not b!4415624) (not b!4415630) (not b!4415639) (not b!4415631))
(check-sat)
