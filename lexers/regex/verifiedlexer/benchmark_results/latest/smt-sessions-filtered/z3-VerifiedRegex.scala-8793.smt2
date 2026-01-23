; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!471084 () Bool)

(assert start!471084)

(declare-fun tp_is_empty!30047 () Bool)

(declare-fun e!2914635 () Bool)

(declare-fun tp_is_empty!30045 () Bool)

(declare-fun tp!1343779 () Bool)

(declare-fun b!4670604 () Bool)

(assert (=> b!4670604 (= e!2914635 (and tp_is_empty!30045 tp_is_empty!30047 tp!1343779))))

(declare-fun res!1966102 () Bool)

(declare-fun e!2914633 () Bool)

(assert (=> start!471084 (=> (not res!1966102) (not e!2914633))))

(declare-datatypes ((K!13370 0))(
  ( (K!13371 (val!18967 Int)) )
))
(declare-datatypes ((V!13616 0))(
  ( (V!13617 (val!18968 Int)) )
))
(declare-datatypes ((tuple2!53198 0))(
  ( (tuple2!53199 (_1!29893 K!13370) (_2!29893 V!13616)) )
))
(declare-datatypes ((List!52152 0))(
  ( (Nil!52028) (Cons!52028 (h!58208 tuple2!53198) (t!359290 List!52152)) )
))
(declare-fun oldBucket!40 () List!52152)

(declare-fun noDuplicateKeys!1688 (List!52152) Bool)

(assert (=> start!471084 (= res!1966102 (noDuplicateKeys!1688 oldBucket!40))))

(assert (=> start!471084 e!2914633))

(assert (=> start!471084 true))

(declare-fun e!2914632 () Bool)

(assert (=> start!471084 e!2914632))

(assert (=> start!471084 tp_is_empty!30045))

(assert (=> start!471084 e!2914635))

(declare-fun b!4670605 () Bool)

(declare-fun e!2914636 () Bool)

(assert (=> b!4670605 (= e!2914633 e!2914636)))

(declare-fun res!1966103 () Bool)

(assert (=> b!4670605 (=> (not res!1966103) (not e!2914636))))

(declare-datatypes ((ListMap!4645 0))(
  ( (ListMap!4646 (toList!5300 List!52152)) )
))
(declare-fun lt!1832768 () ListMap!4645)

(declare-fun key!4968 () K!13370)

(declare-fun contains!15237 (ListMap!4645 K!13370) Bool)

(assert (=> b!4670605 (= res!1966103 (contains!15237 lt!1832768 key!4968))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((tuple2!53200 0))(
  ( (tuple2!53201 (_1!29894 (_ BitVec 64)) (_2!29894 List!52152)) )
))
(declare-datatypes ((List!52153 0))(
  ( (Nil!52029) (Cons!52029 (h!58209 tuple2!53200) (t!359291 List!52153)) )
))
(declare-fun extractMap!1744 (List!52153) ListMap!4645)

(assert (=> b!4670605 (= lt!1832768 (extractMap!1744 (Cons!52029 (tuple2!53201 hash!414 oldBucket!40) Nil!52029)))))

(declare-fun b!4670606 () Bool)

(declare-fun tp!1343778 () Bool)

(assert (=> b!4670606 (= e!2914632 (and tp_is_empty!30045 tp_is_empty!30047 tp!1343778))))

(declare-fun b!4670607 () Bool)

(declare-fun res!1966110 () Bool)

(assert (=> b!4670607 (=> (not res!1966110) (not e!2914636))))

(declare-datatypes ((Hashable!6085 0))(
  ( (HashableExt!6084 (__x!31788 Int)) )
))
(declare-fun hashF!1389 () Hashable!6085)

(declare-fun newBucket!224 () List!52152)

(declare-fun allKeysSameHash!1542 (List!52152 (_ BitVec 64) Hashable!6085) Bool)

(assert (=> b!4670607 (= res!1966110 (allKeysSameHash!1542 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4670608 () Bool)

(declare-fun res!1966105 () Bool)

(assert (=> b!4670608 (=> (not res!1966105) (not e!2914633))))

(assert (=> b!4670608 (= res!1966105 (allKeysSameHash!1542 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4670609 () Bool)

(declare-fun res!1966104 () Bool)

(assert (=> b!4670609 (=> (not res!1966104) (not e!2914636))))

(declare-fun hash!3865 (Hashable!6085 K!13370) (_ BitVec 64))

(assert (=> b!4670609 (= res!1966104 (= (hash!3865 hashF!1389 key!4968) hash!414))))

(declare-fun b!4670610 () Bool)

(declare-fun e!2914631 () Bool)

(assert (=> b!4670610 (= e!2914636 (not e!2914631))))

(declare-fun res!1966106 () Bool)

(assert (=> b!4670610 (=> res!1966106 e!2914631)))

(get-info :version)

(assert (=> b!4670610 (= res!1966106 (or (and ((_ is Cons!52028) oldBucket!40) (= (_1!29893 (h!58208 oldBucket!40)) key!4968)) (and ((_ is Cons!52028) oldBucket!40) (not (= (_1!29893 (h!58208 oldBucket!40)) key!4968))) ((_ is Nil!52028) oldBucket!40)))))

(declare-fun e!2914634 () Bool)

(assert (=> b!4670610 e!2914634))

(declare-fun res!1966109 () Bool)

(assert (=> b!4670610 (=> (not res!1966109) (not e!2914634))))

(declare-fun lt!1832769 () ListMap!4645)

(declare-fun addToMapMapFromBucket!1145 (List!52152 ListMap!4645) ListMap!4645)

(assert (=> b!4670610 (= res!1966109 (= lt!1832768 (addToMapMapFromBucket!1145 oldBucket!40 lt!1832769)))))

(assert (=> b!4670610 (= lt!1832769 (extractMap!1744 Nil!52029))))

(assert (=> b!4670610 true))

(declare-fun b!4670611 () Bool)

(declare-fun res!1966107 () Bool)

(assert (=> b!4670611 (=> (not res!1966107) (not e!2914633))))

(declare-fun removePairForKey!1311 (List!52152 K!13370) List!52152)

(assert (=> b!4670611 (= res!1966107 (= (removePairForKey!1311 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4670612 () Bool)

(assert (=> b!4670612 (= e!2914634 (= lt!1832769 (ListMap!4646 Nil!52028)))))

(declare-fun b!4670613 () Bool)

(declare-fun res!1966108 () Bool)

(assert (=> b!4670613 (=> (not res!1966108) (not e!2914633))))

(assert (=> b!4670613 (= res!1966108 (noDuplicateKeys!1688 newBucket!224))))

(declare-fun b!4670614 () Bool)

(declare-fun eq!939 (ListMap!4645 ListMap!4645) Bool)

(declare-fun -!624 (ListMap!4645 K!13370) ListMap!4645)

(assert (=> b!4670614 (= e!2914631 (eq!939 (extractMap!1744 (Cons!52029 (tuple2!53201 hash!414 newBucket!224) Nil!52029)) (-!624 lt!1832768 key!4968)))))

(assert (= (and start!471084 res!1966102) b!4670613))

(assert (= (and b!4670613 res!1966108) b!4670611))

(assert (= (and b!4670611 res!1966107) b!4670608))

(assert (= (and b!4670608 res!1966105) b!4670605))

(assert (= (and b!4670605 res!1966103) b!4670609))

(assert (= (and b!4670609 res!1966104) b!4670607))

(assert (= (and b!4670607 res!1966110) b!4670610))

(assert (= (and b!4670610 res!1966109) b!4670612))

(assert (= (and b!4670610 (not res!1966106)) b!4670614))

(assert (= (and start!471084 ((_ is Cons!52028) oldBucket!40)) b!4670606))

(assert (= (and start!471084 ((_ is Cons!52028) newBucket!224)) b!4670604))

(declare-fun m!5563925 () Bool)

(assert (=> b!4670607 m!5563925))

(declare-fun m!5563927 () Bool)

(assert (=> b!4670611 m!5563927))

(declare-fun m!5563929 () Bool)

(assert (=> b!4670605 m!5563929))

(declare-fun m!5563931 () Bool)

(assert (=> b!4670605 m!5563931))

(declare-fun m!5563933 () Bool)

(assert (=> start!471084 m!5563933))

(declare-fun m!5563935 () Bool)

(assert (=> b!4670610 m!5563935))

(declare-fun m!5563937 () Bool)

(assert (=> b!4670610 m!5563937))

(declare-fun m!5563939 () Bool)

(assert (=> b!4670613 m!5563939))

(declare-fun m!5563941 () Bool)

(assert (=> b!4670614 m!5563941))

(declare-fun m!5563943 () Bool)

(assert (=> b!4670614 m!5563943))

(assert (=> b!4670614 m!5563941))

(assert (=> b!4670614 m!5563943))

(declare-fun m!5563945 () Bool)

(assert (=> b!4670614 m!5563945))

(declare-fun m!5563947 () Bool)

(assert (=> b!4670608 m!5563947))

(declare-fun m!5563949 () Bool)

(assert (=> b!4670609 m!5563949))

(check-sat tp_is_empty!30047 (not b!4670605) (not b!4670609) (not start!471084) tp_is_empty!30045 (not b!4670608) (not b!4670604) (not b!4670610) (not b!4670611) (not b!4670613) (not b!4670606) (not b!4670607) (not b!4670614))
(check-sat)
