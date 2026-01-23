; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!434468 () Bool)

(assert start!434468)

(declare-datatypes ((V!11401 0))(
  ( (V!11402 (val!17195 Int)) )
))
(declare-fun newValue!93 () V!11401)

(declare-datatypes ((K!11155 0))(
  ( (K!11156 (val!17196 Int)) )
))
(declare-fun key!3717 () K!11155)

(declare-fun e!2765000 () Bool)

(declare-datatypes ((tuple2!49710 0))(
  ( (tuple2!49711 (_1!28149 K!11155) (_2!28149 V!11401)) )
))
(declare-datatypes ((List!49911 0))(
  ( (Nil!49787) (Cons!49787 (h!55512 tuple2!49710) (t!356853 List!49911)) )
))
(declare-fun newBucket!194 () List!49911)

(declare-fun lt!1636566 () Bool)

(declare-fun b!4440729 () Bool)

(assert (=> b!4440729 (= e!2765000 (and (not lt!1636566) (= newBucket!194 (Cons!49787 (tuple2!49711 key!3717 newValue!93) Nil!49787))))))

(declare-fun b!4440730 () Bool)

(declare-fun res!1838642 () Bool)

(declare-fun e!2764998 () Bool)

(assert (=> b!4440730 (=> res!1838642 e!2764998)))

(declare-datatypes ((tuple2!49712 0))(
  ( (tuple2!49713 (_1!28150 (_ BitVec 64)) (_2!28150 List!49911)) )
))
(declare-datatypes ((List!49912 0))(
  ( (Nil!49788) (Cons!49788 (h!55513 tuple2!49712) (t!356854 List!49912)) )
))
(declare-datatypes ((ListLongMap!2303 0))(
  ( (ListLongMap!2304 (toList!3653 List!49912)) )
))
(declare-fun lm!1616 () ListLongMap!2303)

(declare-fun hash!366 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4440730 (= res!1838642 (or (and ((_ is Cons!49788) (toList!3653 lm!1616)) (= (_1!28150 (h!55513 (toList!3653 lm!1616))) hash!366)) (not ((_ is Cons!49788) (toList!3653 lm!1616))) (= (_1!28150 (h!55513 (toList!3653 lm!1616))) hash!366)))))

(declare-fun res!1838640 () Bool)

(declare-fun e!2764999 () Bool)

(assert (=> start!434468 (=> (not res!1838640) (not e!2764999))))

(declare-fun lambda!157214 () Int)

(declare-fun forall!9698 (List!49912 Int) Bool)

(assert (=> start!434468 (= res!1838640 (forall!9698 (toList!3653 lm!1616) lambda!157214))))

(assert (=> start!434468 e!2764999))

(declare-fun tp_is_empty!26577 () Bool)

(assert (=> start!434468 tp_is_empty!26577))

(declare-fun tp_is_empty!26579 () Bool)

(assert (=> start!434468 tp_is_empty!26579))

(declare-fun e!2765001 () Bool)

(assert (=> start!434468 e!2765001))

(declare-fun e!2765003 () Bool)

(declare-fun inv!65341 (ListLongMap!2303) Bool)

(assert (=> start!434468 (and (inv!65341 lm!1616) e!2765003)))

(assert (=> start!434468 true))

(declare-fun b!4440731 () Bool)

(declare-fun e!2765002 () Bool)

(assert (=> b!4440731 (= e!2765002 (not e!2764998))))

(declare-fun res!1838639 () Bool)

(assert (=> b!4440731 (=> res!1838639 e!2764998)))

(declare-fun lt!1636567 () ListLongMap!2303)

(assert (=> b!4440731 (= res!1838639 (not (forall!9698 (toList!3653 lt!1636567) lambda!157214)))))

(assert (=> b!4440731 (forall!9698 (toList!3653 lt!1636567) lambda!157214)))

(declare-fun +!1215 (ListLongMap!2303 tuple2!49712) ListLongMap!2303)

(assert (=> b!4440731 (= lt!1636567 (+!1215 lm!1616 (tuple2!49713 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!83881 0))(
  ( (Unit!83882) )
))
(declare-fun lt!1636568 () Unit!83881)

(declare-fun addValidProp!471 (ListLongMap!2303 Int (_ BitVec 64) List!49911) Unit!83881)

(assert (=> b!4440731 (= lt!1636568 (addValidProp!471 lm!1616 lambda!157214 hash!366 newBucket!194))))

(declare-fun b!4440732 () Bool)

(declare-fun res!1838635 () Bool)

(assert (=> b!4440732 (=> (not res!1838635) (not e!2764999))))

(declare-datatypes ((Hashable!5227 0))(
  ( (HashableExt!5226 (__x!30930 Int)) )
))
(declare-fun hashF!1220 () Hashable!5227)

(declare-fun hash!2286 (Hashable!5227 K!11155) (_ BitVec 64))

(assert (=> b!4440732 (= res!1838635 (= (hash!2286 hashF!1220 key!3717) hash!366))))

(declare-fun b!4440733 () Bool)

(assert (=> b!4440733 (= e!2764998 true)))

(assert (=> b!4440733 false))

(declare-fun lt!1636569 () Unit!83881)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!70 (ListLongMap!2303 K!11155 Hashable!5227) Unit!83881)

(assert (=> b!4440733 (= lt!1636569 (lemmaExtractTailMapContainsThenExtractMapDoes!70 lm!1616 key!3717 hashF!1220))))

(declare-fun b!4440734 () Bool)

(declare-fun res!1838638 () Bool)

(assert (=> b!4440734 (=> (not res!1838638) (not e!2764999))))

(declare-datatypes ((ListMap!2897 0))(
  ( (ListMap!2898 (toList!3654 List!49911)) )
))
(declare-fun contains!12357 (ListMap!2897 K!11155) Bool)

(declare-fun extractMap!894 (List!49912) ListMap!2897)

(assert (=> b!4440734 (= res!1838638 (not (contains!12357 (extractMap!894 (toList!3653 lm!1616)) key!3717)))))

(declare-fun b!4440735 () Bool)

(declare-fun e!2765004 () Bool)

(declare-fun apply!11685 (ListLongMap!2303 (_ BitVec 64)) List!49911)

(assert (=> b!4440735 (= e!2765004 (= newBucket!194 (Cons!49787 (tuple2!49711 key!3717 newValue!93) (apply!11685 lm!1616 hash!366))))))

(declare-fun b!4440736 () Bool)

(declare-fun res!1838644 () Bool)

(assert (=> b!4440736 (=> (not res!1838644) (not e!2764999))))

(declare-fun allKeysSameHashInMap!939 (ListLongMap!2303 Hashable!5227) Bool)

(assert (=> b!4440736 (= res!1838644 (allKeysSameHashInMap!939 lm!1616 hashF!1220))))

(declare-fun b!4440737 () Bool)

(assert (=> b!4440737 (= e!2764999 e!2765002)))

(declare-fun res!1838645 () Bool)

(assert (=> b!4440737 (=> (not res!1838645) (not e!2765002))))

(assert (=> b!4440737 (= res!1838645 e!2765000)))

(declare-fun res!1838637 () Bool)

(assert (=> b!4440737 (=> res!1838637 e!2765000)))

(assert (=> b!4440737 (= res!1838637 e!2765004)))

(declare-fun res!1838647 () Bool)

(assert (=> b!4440737 (=> (not res!1838647) (not e!2765004))))

(assert (=> b!4440737 (= res!1838647 lt!1636566)))

(declare-fun contains!12358 (ListLongMap!2303 (_ BitVec 64)) Bool)

(assert (=> b!4440737 (= lt!1636566 (contains!12358 lm!1616 hash!366))))

(declare-fun b!4440738 () Bool)

(declare-fun res!1838641 () Bool)

(assert (=> b!4440738 (=> res!1838641 e!2764998)))

(declare-fun tail!7367 (List!49912) List!49912)

(assert (=> b!4440738 (= res!1838641 (not (contains!12357 (extractMap!894 (tail!7367 (toList!3653 lm!1616))) key!3717)))))

(declare-fun tp!1334141 () Bool)

(declare-fun b!4440739 () Bool)

(assert (=> b!4440739 (= e!2765001 (and tp_is_empty!26579 tp_is_empty!26577 tp!1334141))))

(declare-fun b!4440740 () Bool)

(declare-fun tp!1334142 () Bool)

(assert (=> b!4440740 (= e!2765003 tp!1334142)))

(declare-fun b!4440741 () Bool)

(declare-fun res!1838636 () Bool)

(assert (=> b!4440741 (=> (not res!1838636) (not e!2765002))))

(assert (=> b!4440741 (= res!1838636 (forall!9698 (toList!3653 lm!1616) lambda!157214))))

(declare-fun b!4440742 () Bool)

(declare-fun res!1838646 () Bool)

(assert (=> b!4440742 (=> (not res!1838646) (not e!2764999))))

(declare-fun allKeysSameHash!793 (List!49911 (_ BitVec 64) Hashable!5227) Bool)

(assert (=> b!4440742 (= res!1838646 (allKeysSameHash!793 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4440743 () Bool)

(declare-fun res!1838643 () Bool)

(assert (=> b!4440743 (=> (not res!1838643) (not e!2765002))))

(declare-fun noDuplicateKeys!833 (List!49911) Bool)

(assert (=> b!4440743 (= res!1838643 (noDuplicateKeys!833 newBucket!194))))

(assert (= (and start!434468 res!1838640) b!4440736))

(assert (= (and b!4440736 res!1838644) b!4440732))

(assert (= (and b!4440732 res!1838635) b!4440742))

(assert (= (and b!4440742 res!1838646) b!4440734))

(assert (= (and b!4440734 res!1838638) b!4440737))

(assert (= (and b!4440737 res!1838647) b!4440735))

(assert (= (and b!4440737 (not res!1838637)) b!4440729))

(assert (= (and b!4440737 res!1838645) b!4440743))

(assert (= (and b!4440743 res!1838643) b!4440741))

(assert (= (and b!4440741 res!1838636) b!4440731))

(assert (= (and b!4440731 (not res!1838639)) b!4440730))

(assert (= (and b!4440730 (not res!1838642)) b!4440738))

(assert (= (and b!4440738 (not res!1838641)) b!4440733))

(assert (= (and start!434468 ((_ is Cons!49787) newBucket!194)) b!4440739))

(assert (= start!434468 b!4440740))

(declare-fun m!5129325 () Bool)

(assert (=> b!4440731 m!5129325))

(assert (=> b!4440731 m!5129325))

(declare-fun m!5129327 () Bool)

(assert (=> b!4440731 m!5129327))

(declare-fun m!5129329 () Bool)

(assert (=> b!4440731 m!5129329))

(declare-fun m!5129331 () Bool)

(assert (=> b!4440738 m!5129331))

(assert (=> b!4440738 m!5129331))

(declare-fun m!5129333 () Bool)

(assert (=> b!4440738 m!5129333))

(assert (=> b!4440738 m!5129333))

(declare-fun m!5129335 () Bool)

(assert (=> b!4440738 m!5129335))

(declare-fun m!5129337 () Bool)

(assert (=> b!4440736 m!5129337))

(declare-fun m!5129339 () Bool)

(assert (=> b!4440735 m!5129339))

(declare-fun m!5129341 () Bool)

(assert (=> b!4440733 m!5129341))

(declare-fun m!5129343 () Bool)

(assert (=> b!4440741 m!5129343))

(declare-fun m!5129345 () Bool)

(assert (=> b!4440742 m!5129345))

(assert (=> start!434468 m!5129343))

(declare-fun m!5129347 () Bool)

(assert (=> start!434468 m!5129347))

(declare-fun m!5129349 () Bool)

(assert (=> b!4440743 m!5129349))

(declare-fun m!5129351 () Bool)

(assert (=> b!4440737 m!5129351))

(declare-fun m!5129353 () Bool)

(assert (=> b!4440734 m!5129353))

(assert (=> b!4440734 m!5129353))

(declare-fun m!5129355 () Bool)

(assert (=> b!4440734 m!5129355))

(declare-fun m!5129357 () Bool)

(assert (=> b!4440732 m!5129357))

(check-sat (not b!4440731) (not b!4440741) (not b!4440743) (not b!4440736) (not b!4440738) (not b!4440734) (not b!4440739) (not b!4440733) (not start!434468) (not b!4440732) tp_is_empty!26579 (not b!4440742) (not b!4440735) (not b!4440737) tp_is_empty!26577 (not b!4440740))
(check-sat)
