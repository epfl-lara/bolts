; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437012 () Bool)

(assert start!437012)

(declare-fun b!4458040 () Bool)

(declare-fun res!1848339 () Bool)

(declare-fun e!2776000 () Bool)

(assert (=> b!4458040 (=> (not res!1848339) (not e!2776000))))

(declare-datatypes ((K!11475 0))(
  ( (K!11476 (val!17451 Int)) )
))
(declare-datatypes ((V!11721 0))(
  ( (V!11722 (val!17452 Int)) )
))
(declare-datatypes ((tuple2!50222 0))(
  ( (tuple2!50223 (_1!28405 K!11475) (_2!28405 V!11721)) )
))
(declare-datatypes ((List!50212 0))(
  ( (Nil!50088) (Cons!50088 (h!55833 tuple2!50222) (t!357162 List!50212)) )
))
(declare-datatypes ((tuple2!50224 0))(
  ( (tuple2!50225 (_1!28406 (_ BitVec 64)) (_2!28406 List!50212)) )
))
(declare-datatypes ((List!50213 0))(
  ( (Nil!50089) (Cons!50089 (h!55834 tuple2!50224) (t!357163 List!50213)) )
))
(declare-datatypes ((ListLongMap!2559 0))(
  ( (ListLongMap!2560 (toList!3903 List!50213)) )
))
(declare-fun lm!1853 () ListLongMap!2559)

(declare-datatypes ((Hashable!5355 0))(
  ( (HashableExt!5354 (__x!31058 Int)) )
))
(declare-fun hashF!1313 () Hashable!5355)

(declare-fun allKeysSameHashInMap!1067 (ListLongMap!2559 Hashable!5355) Bool)

(assert (=> b!4458040 (= res!1848339 (allKeysSameHashInMap!1067 lm!1853 hashF!1313))))

(declare-fun tp!1335324 () Bool)

(declare-fun b!4458041 () Bool)

(declare-fun tp_is_empty!27015 () Bool)

(declare-fun tp_is_empty!27013 () Bool)

(declare-fun e!2776001 () Bool)

(assert (=> b!4458041 (= e!2776001 (and tp_is_empty!27013 tp_is_empty!27015 tp!1335324))))

(declare-fun res!1848338 () Bool)

(assert (=> start!437012 (=> (not res!1848338) (not e!2776000))))

(declare-fun lambda!160879 () Int)

(declare-fun forall!9879 (List!50213 Int) Bool)

(assert (=> start!437012 (= res!1848338 (forall!9879 (toList!3903 lm!1853) lambda!160879))))

(assert (=> start!437012 e!2776000))

(declare-fun e!2775999 () Bool)

(declare-fun inv!65661 (ListLongMap!2559) Bool)

(assert (=> start!437012 (and (inv!65661 lm!1853) e!2775999)))

(assert (=> start!437012 true))

(assert (=> start!437012 e!2776001))

(assert (=> start!437012 tp_is_empty!27013))

(declare-fun b!4458042 () Bool)

(declare-fun res!1848336 () Bool)

(assert (=> b!4458042 (=> (not res!1848336) (not e!2776000))))

(declare-fun key!4412 () K!11475)

(declare-datatypes ((ListMap!3141 0))(
  ( (ListMap!3142 (toList!3904 List!50212)) )
))
(declare-fun contains!12603 (ListMap!3141 K!11475) Bool)

(declare-fun extractMap!1016 (List!50213) ListMap!3141)

(assert (=> b!4458042 (= res!1848336 (contains!12603 (extractMap!1016 (toList!3903 lm!1853)) key!4412))))

(declare-fun b!4458043 () Bool)

(assert (=> b!4458043 (= e!2776000 false)))

(declare-fun b!4458044 () Bool)

(declare-fun res!1848337 () Bool)

(assert (=> b!4458044 (=> (not res!1848337) (not e!2776000))))

(declare-fun l!12858 () List!50212)

(declare-fun noDuplicateKeys!948 (List!50212) Bool)

(assert (=> b!4458044 (= res!1848337 (noDuplicateKeys!948 l!12858))))

(declare-fun b!4458045 () Bool)

(declare-fun tp!1335325 () Bool)

(assert (=> b!4458045 (= e!2775999 tp!1335325)))

(assert (= (and start!437012 res!1848338) b!4458040))

(assert (= (and b!4458040 res!1848339) b!4458044))

(assert (= (and b!4458044 res!1848337) b!4458042))

(assert (= (and b!4458042 res!1848336) b!4458043))

(assert (= start!437012 b!4458045))

(get-info :version)

(assert (= (and start!437012 ((_ is Cons!50088) l!12858)) b!4458041))

(declare-fun m!5160717 () Bool)

(assert (=> b!4458040 m!5160717))

(declare-fun m!5160719 () Bool)

(assert (=> start!437012 m!5160719))

(declare-fun m!5160721 () Bool)

(assert (=> start!437012 m!5160721))

(declare-fun m!5160723 () Bool)

(assert (=> b!4458042 m!5160723))

(assert (=> b!4458042 m!5160723))

(declare-fun m!5160725 () Bool)

(assert (=> b!4458042 m!5160725))

(declare-fun m!5160727 () Bool)

(assert (=> b!4458044 m!5160727))

(check-sat (not b!4458040) (not b!4458044) (not start!437012) (not b!4458042) tp_is_empty!27015 (not b!4458045) tp_is_empty!27013 (not b!4458041))
(check-sat)
