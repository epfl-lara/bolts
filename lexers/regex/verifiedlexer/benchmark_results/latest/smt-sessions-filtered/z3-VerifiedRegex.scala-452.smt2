; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13246 () Bool)

(assert start!13246)

(declare-fun b!128458 () Bool)

(declare-fun b_free!3953 () Bool)

(declare-fun b_next!3953 () Bool)

(assert (=> b!128458 (= b_free!3953 (not b_next!3953))))

(declare-fun tp!69945 () Bool)

(declare-fun b_and!6083 () Bool)

(assert (=> b!128458 (= tp!69945 b_and!6083)))

(declare-fun b!128464 () Bool)

(declare-fun b_free!3955 () Bool)

(declare-fun b_next!3955 () Bool)

(assert (=> b!128464 (= b_free!3955 (not b_next!3955))))

(declare-fun tp!69946 () Bool)

(declare-fun b_and!6085 () Bool)

(assert (=> b!128464 (= tp!69946 b_and!6085)))

(declare-fun mapNonEmpty!1669 () Bool)

(declare-fun mapRes!1669 () Bool)

(declare-fun tp!69949 () Bool)

(declare-fun tp!69948 () Bool)

(assert (=> mapNonEmpty!1669 (= mapRes!1669 (and tp!69949 tp!69948))))

(declare-datatypes ((Hashable!427 0))(
  ( (HashableExt!426 (__x!2228 Int)) )
))
(declare-datatypes ((K!857 0))(
  ( (K!858 (val!797 Int)) )
))
(declare-datatypes ((V!911 0))(
  ( (V!912 (val!798 Int)) )
))
(declare-datatypes ((tuple2!2404 0))(
  ( (tuple2!2405 (_1!1412 K!857) (_2!1412 V!911)) )
))
(declare-datatypes ((List!2127 0))(
  ( (Nil!2121) (Cons!2121 (h!7518 tuple2!2404) (t!22703 List!2127)) )
))
(declare-datatypes ((array!1611 0))(
  ( (array!1612 (arr!746 (Array (_ BitVec 32) List!2127)) (size!1940 (_ BitVec 32))) )
))
(declare-datatypes ((array!1613 0))(
  ( (array!1614 (arr!747 (Array (_ BitVec 32) (_ BitVec 64))) (size!1941 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!862 0))(
  ( (LongMapFixedSize!863 (defaultEntry!770 Int) (mask!1408 (_ BitVec 32)) (extraKeys!677 (_ BitVec 32)) (zeroValue!687 List!2127) (minValue!687 List!2127) (_size!995 (_ BitVec 32)) (_keys!722 array!1613) (_values!709 array!1611) (_vacant!492 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1713 0))(
  ( (Cell!1714 (v!13453 LongMapFixedSize!862)) )
))
(declare-datatypes ((MutLongMap!431 0))(
  ( (LongMap!431 (underlying!1061 Cell!1713)) (MutLongMapExt!430 (__x!2229 Int)) )
))
(declare-datatypes ((Cell!1715 0))(
  ( (Cell!1716 (v!13454 MutLongMap!431)) )
))
(declare-datatypes ((MutableMap!427 0))(
  ( (MutableMapExt!426 (__x!2230 Int)) (HashMap!427 (underlying!1062 Cell!1715) (hashF!2303 Hashable!427) (_size!996 (_ BitVec 32)) (defaultValue!576 Int)) )
))
(declare-fun thiss!41914 () MutableMap!427)

(declare-fun mapRest!1669 () (Array (_ BitVec 32) List!2127))

(declare-fun mapKey!1669 () (_ BitVec 32))

(declare-fun mapValue!1669 () List!2127)

(assert (=> mapNonEmpty!1669 (= (arr!746 (_values!709 (v!13453 (underlying!1061 (v!13454 (underlying!1062 thiss!41914)))))) (store mapRest!1669 mapKey!1669 mapValue!1669))))

(declare-fun b!128457 () Bool)

(declare-fun e!73843 () Bool)

(assert (=> b!128457 (= e!73843 false)))

(declare-fun lt!38420 () Bool)

(declare-fun isEmpty!850 (MutLongMap!431) Bool)

(assert (=> b!128457 (= lt!38420 (isEmpty!850 (v!13454 (underlying!1062 thiss!41914))))))

(declare-fun e!73837 () Bool)

(declare-fun tp!69947 () Bool)

(declare-fun e!73838 () Bool)

(declare-fun tp!69951 () Bool)

(declare-fun array_inv!539 (array!1613) Bool)

(declare-fun array_inv!540 (array!1611) Bool)

(assert (=> b!128458 (= e!73837 (and tp!69945 tp!69951 tp!69947 (array_inv!539 (_keys!722 (v!13453 (underlying!1061 (v!13454 (underlying!1062 thiss!41914)))))) (array_inv!540 (_values!709 (v!13453 (underlying!1061 (v!13454 (underlying!1062 thiss!41914)))))) e!73838))))

(declare-fun b!128460 () Bool)

(declare-fun res!59217 () Bool)

(assert (=> b!128460 (=> (not res!59217) (not e!73843))))

(declare-fun valid!387 (MutableMap!427) Bool)

(assert (=> b!128460 (= res!59217 (valid!387 thiss!41914))))

(declare-fun b!128461 () Bool)

(declare-fun e!73842 () Bool)

(declare-fun e!73839 () Bool)

(declare-fun lt!38421 () MutLongMap!431)

(get-info :version)

(assert (=> b!128461 (= e!73842 (and e!73839 ((_ is LongMap!431) lt!38421)))))

(assert (=> b!128461 (= lt!38421 (v!13454 (underlying!1062 thiss!41914)))))

(declare-fun mapIsEmpty!1669 () Bool)

(assert (=> mapIsEmpty!1669 mapRes!1669))

(declare-fun b!128462 () Bool)

(declare-fun e!73841 () Bool)

(assert (=> b!128462 (= e!73839 e!73841)))

(declare-fun res!59218 () Bool)

(assert (=> start!13246 (=> (not res!59218) (not e!73843))))

(assert (=> start!13246 (= res!59218 ((_ is HashMap!427) thiss!41914))))

(assert (=> start!13246 e!73843))

(declare-fun e!73836 () Bool)

(assert (=> start!13246 e!73836))

(declare-fun b!128459 () Bool)

(declare-fun tp!69950 () Bool)

(assert (=> b!128459 (= e!73838 (and tp!69950 mapRes!1669))))

(declare-fun condMapEmpty!1669 () Bool)

(declare-fun mapDefault!1669 () List!2127)

(assert (=> b!128459 (= condMapEmpty!1669 (= (arr!746 (_values!709 (v!13453 (underlying!1061 (v!13454 (underlying!1062 thiss!41914)))))) ((as const (Array (_ BitVec 32) List!2127)) mapDefault!1669)))))

(declare-fun b!128463 () Bool)

(assert (=> b!128463 (= e!73841 e!73837)))

(assert (=> b!128464 (= e!73836 (and e!73842 tp!69946))))

(assert (= (and start!13246 res!59218) b!128460))

(assert (= (and b!128460 res!59217) b!128457))

(assert (= (and b!128459 condMapEmpty!1669) mapIsEmpty!1669))

(assert (= (and b!128459 (not condMapEmpty!1669)) mapNonEmpty!1669))

(assert (= b!128458 b!128459))

(assert (= b!128463 b!128458))

(assert (= b!128462 b!128463))

(assert (= (and b!128461 ((_ is LongMap!431) (v!13454 (underlying!1062 thiss!41914)))) b!128462))

(assert (= b!128464 b!128461))

(assert (= (and start!13246 ((_ is HashMap!427) thiss!41914)) b!128464))

(declare-fun m!113139 () Bool)

(assert (=> mapNonEmpty!1669 m!113139))

(declare-fun m!113141 () Bool)

(assert (=> b!128457 m!113141))

(declare-fun m!113143 () Bool)

(assert (=> b!128458 m!113143))

(declare-fun m!113145 () Bool)

(assert (=> b!128458 m!113145))

(declare-fun m!113147 () Bool)

(assert (=> b!128460 m!113147))

(check-sat (not b!128460) (not b!128459) (not b!128458) (not mapNonEmpty!1669) b_and!6083 (not b_next!3953) (not b_next!3955) (not b!128457) b_and!6085)
(check-sat b_and!6085 b_and!6083 (not b_next!3955) (not b_next!3953))
