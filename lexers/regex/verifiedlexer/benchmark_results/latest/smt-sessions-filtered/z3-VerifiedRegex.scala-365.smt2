; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11518 () Bool)

(assert start!11518)

(declare-fun b!111689 () Bool)

(declare-fun b_free!3473 () Bool)

(declare-fun b_next!3473 () Bool)

(assert (=> b!111689 (= b_free!3473 (not b_next!3473))))

(declare-fun tp!60458 () Bool)

(declare-fun b_and!5603 () Bool)

(assert (=> b!111689 (= tp!60458 b_and!5603)))

(declare-fun b!111693 () Bool)

(declare-fun b_free!3475 () Bool)

(declare-fun b_next!3475 () Bool)

(assert (=> b!111693 (= b_free!3475 (not b_next!3475))))

(declare-fun tp!60451 () Bool)

(declare-fun b_and!5605 () Bool)

(assert (=> b!111693 (= tp!60451 b_and!5605)))

(declare-fun b!111688 () Bool)

(declare-fun e!62639 () Bool)

(declare-fun e!62636 () Bool)

(declare-datatypes ((C!1812 0))(
  ( (C!1813 (val!632 Int)) )
))
(declare-datatypes ((Regex!445 0))(
  ( (ElementMatch!445 (c!26350 C!1812)) (Concat!829 (regOne!1402 Regex!445) (regTwo!1402 Regex!445)) (EmptyExpr!445) (Star!445 (reg!774 Regex!445)) (EmptyLang!445) (Union!445 (regOne!1403 Regex!445) (regTwo!1403 Regex!445)) )
))
(declare-datatypes ((tuple2!1892 0))(
  ( (tuple2!1893 (_1!1156 Regex!445) (_2!1156 C!1812)) )
))
(declare-datatypes ((tuple2!1894 0))(
  ( (tuple2!1895 (_1!1157 tuple2!1892) (_2!1157 Regex!445)) )
))
(declare-datatypes ((List!1807 0))(
  ( (Nil!1801) (Cons!1801 (h!7198 tuple2!1894) (t!22284 List!1807)) )
))
(declare-datatypes ((array!1083 0))(
  ( (array!1084 (arr!506 (Array (_ BitVec 32) (_ BitVec 64))) (size!1563 (_ BitVec 32))) )
))
(declare-datatypes ((array!1085 0))(
  ( (array!1086 (arr!507 (Array (_ BitVec 32) List!1807)) (size!1564 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!622 0))(
  ( (LongMapFixedSize!623 (defaultEntry!650 Int) (mask!1201 (_ BitVec 32)) (extraKeys!557 (_ BitVec 32)) (zeroValue!567 List!1807) (minValue!567 List!1807) (_size!755 (_ BitVec 32)) (_keys!602 array!1083) (_values!589 array!1085) (_vacant!372 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1233 0))(
  ( (Cell!1234 (v!13153 LongMapFixedSize!622)) )
))
(declare-datatypes ((MutLongMap!311 0))(
  ( (LongMap!311 (underlying!821 Cell!1233)) (MutLongMapExt!310 (__x!1858 Int)) )
))
(declare-fun lt!32584 () MutLongMap!311)

(get-info :version)

(assert (=> b!111688 (= e!62639 (and e!62636 ((_ is LongMap!311) lt!32584)))))

(declare-datatypes ((Cell!1235 0))(
  ( (Cell!1236 (v!13154 MutLongMap!311)) )
))
(declare-datatypes ((Hashable!307 0))(
  ( (HashableExt!306 (__x!1859 Int)) )
))
(declare-datatypes ((MutableMap!307 0))(
  ( (MutableMapExt!306 (__x!1860 Int)) (HashMap!307 (underlying!822 Cell!1235) (hashF!2183 Hashable!307) (_size!756 (_ BitVec 32)) (defaultValue!456 Int)) )
))
(declare-datatypes ((Cache!50 0))(
  ( (Cache!51 (cache!758 MutableMap!307)) )
))
(declare-fun cache!464 () Cache!50)

(assert (=> b!111688 (= lt!32584 (v!13154 (underlying!822 (cache!758 cache!464))))))

(declare-fun tp!60457 () Bool)

(declare-fun tp!60450 () Bool)

(declare-fun e!62637 () Bool)

(declare-fun e!62633 () Bool)

(declare-fun array_inv!347 (array!1083) Bool)

(declare-fun array_inv!348 (array!1085) Bool)

(assert (=> b!111689 (= e!62637 (and tp!60458 tp!60450 tp!60457 (array_inv!347 (_keys!602 (v!13153 (underlying!821 (v!13154 (underlying!822 (cache!758 cache!464))))))) (array_inv!348 (_values!589 (v!13153 (underlying!821 (v!13154 (underlying!822 (cache!758 cache!464))))))) e!62633))))

(declare-fun mapIsEmpty!1234 () Bool)

(declare-fun mapRes!1234 () Bool)

(assert (=> mapIsEmpty!1234 mapRes!1234))

(declare-fun b!111691 () Bool)

(declare-fun e!62640 () Bool)

(assert (=> b!111691 (= e!62640 (not true))))

(declare-datatypes ((List!1808 0))(
  ( (Nil!1802) (Cons!1802 (h!7199 C!1812) (t!22285 List!1808)) )
))
(declare-fun lt!32585 () List!1808)

(declare-fun input!6708 () List!1808)

(declare-fun ++!297 (List!1808 List!1808) List!1808)

(assert (=> b!111691 (= lt!32585 (++!297 Nil!1802 input!6708))))

(declare-fun size!1565 (List!1808) Int)

(assert (=> b!111691 (= 0 (size!1565 Nil!1802))))

(declare-datatypes ((Unit!1280 0))(
  ( (Unit!1281) )
))
(declare-fun lt!32583 () Unit!1280)

(declare-fun lemmaSizeTrEqualsSize!1 (List!1808 Int) Unit!1280)

(assert (=> b!111691 (= lt!32583 (lemmaSizeTrEqualsSize!1 Nil!1802 0))))

(declare-fun sizeTr!1 (List!1808 Int) Int)

(assert (=> b!111691 (= (sizeTr!1 input!6708 0) (size!1565 input!6708))))

(declare-fun lt!32582 () Unit!1280)

(assert (=> b!111691 (= lt!32582 (lemmaSizeTrEqualsSize!1 input!6708 0))))

(declare-fun b!111692 () Bool)

(declare-fun res!53733 () Bool)

(assert (=> b!111692 (=> (not res!53733) (not e!62640))))

(declare-fun valid!291 (Cache!50) Bool)

(assert (=> b!111692 (= res!53733 (valid!291 cache!464))))

(declare-fun e!62632 () Bool)

(assert (=> b!111693 (= e!62632 (and e!62639 tp!60451))))

(declare-fun b!111694 () Bool)

(declare-fun e!62634 () Bool)

(assert (=> b!111694 (= e!62634 e!62632)))

(declare-fun b!111695 () Bool)

(declare-fun e!62631 () Bool)

(declare-fun tp!60455 () Bool)

(declare-fun tp!60459 () Bool)

(assert (=> b!111695 (= e!62631 (and tp!60455 tp!60459))))

(declare-fun b!111696 () Bool)

(declare-fun tp!60453 () Bool)

(declare-fun tp!60448 () Bool)

(assert (=> b!111696 (= e!62631 (and tp!60453 tp!60448))))

(declare-fun b!111697 () Bool)

(declare-fun e!62635 () Bool)

(assert (=> b!111697 (= e!62635 e!62637)))

(declare-fun res!53734 () Bool)

(assert (=> start!11518 (=> (not res!53734) (not e!62640))))

(declare-fun r!15516 () Regex!445)

(declare-fun validRegex!63 (Regex!445) Bool)

(assert (=> start!11518 (= res!53734 (validRegex!63 r!15516))))

(assert (=> start!11518 e!62640))

(assert (=> start!11518 e!62631))

(declare-fun inv!2295 (Cache!50) Bool)

(assert (=> start!11518 (and (inv!2295 cache!464) e!62634)))

(declare-fun e!62638 () Bool)

(assert (=> start!11518 e!62638))

(declare-fun b!111690 () Bool)

(declare-fun tp!60456 () Bool)

(assert (=> b!111690 (= e!62633 (and tp!60456 mapRes!1234))))

(declare-fun condMapEmpty!1234 () Bool)

(declare-fun mapDefault!1234 () List!1807)

(assert (=> b!111690 (= condMapEmpty!1234 (= (arr!507 (_values!589 (v!13153 (underlying!821 (v!13154 (underlying!822 (cache!758 cache!464))))))) ((as const (Array (_ BitVec 32) List!1807)) mapDefault!1234)))))

(declare-fun b!111698 () Bool)

(declare-fun tp!60454 () Bool)

(assert (=> b!111698 (= e!62631 tp!60454)))

(declare-fun mapNonEmpty!1234 () Bool)

(declare-fun tp!60460 () Bool)

(declare-fun tp!60449 () Bool)

(assert (=> mapNonEmpty!1234 (= mapRes!1234 (and tp!60460 tp!60449))))

(declare-fun mapKey!1234 () (_ BitVec 32))

(declare-fun mapRest!1234 () (Array (_ BitVec 32) List!1807))

(declare-fun mapValue!1234 () List!1807)

(assert (=> mapNonEmpty!1234 (= (arr!507 (_values!589 (v!13153 (underlying!821 (v!13154 (underlying!822 (cache!758 cache!464))))))) (store mapRest!1234 mapKey!1234 mapValue!1234))))

(declare-fun b!111699 () Bool)

(declare-fun tp_is_empty!945 () Bool)

(assert (=> b!111699 (= e!62631 tp_is_empty!945)))

(declare-fun b!111700 () Bool)

(assert (=> b!111700 (= e!62636 e!62635)))

(declare-fun b!111701 () Bool)

(declare-fun tp!60452 () Bool)

(assert (=> b!111701 (= e!62638 (and tp_is_empty!945 tp!60452))))

(assert (= (and start!11518 res!53734) b!111692))

(assert (= (and b!111692 res!53733) b!111691))

(assert (= (and start!11518 ((_ is ElementMatch!445) r!15516)) b!111699))

(assert (= (and start!11518 ((_ is Concat!829) r!15516)) b!111696))

(assert (= (and start!11518 ((_ is Star!445) r!15516)) b!111698))

(assert (= (and start!11518 ((_ is Union!445) r!15516)) b!111695))

(assert (= (and b!111690 condMapEmpty!1234) mapIsEmpty!1234))

(assert (= (and b!111690 (not condMapEmpty!1234)) mapNonEmpty!1234))

(assert (= b!111689 b!111690))

(assert (= b!111697 b!111689))

(assert (= b!111700 b!111697))

(assert (= (and b!111688 ((_ is LongMap!311) (v!13154 (underlying!822 (cache!758 cache!464))))) b!111700))

(assert (= b!111693 b!111688))

(assert (= (and b!111694 ((_ is HashMap!307) (cache!758 cache!464))) b!111693))

(assert (= start!11518 b!111694))

(assert (= (and start!11518 ((_ is Cons!1802) input!6708)) b!111701))

(declare-fun m!101910 () Bool)

(assert (=> start!11518 m!101910))

(declare-fun m!101912 () Bool)

(assert (=> start!11518 m!101912))

(declare-fun m!101914 () Bool)

(assert (=> b!111689 m!101914))

(declare-fun m!101916 () Bool)

(assert (=> b!111689 m!101916))

(declare-fun m!101918 () Bool)

(assert (=> b!111691 m!101918))

(declare-fun m!101920 () Bool)

(assert (=> b!111691 m!101920))

(declare-fun m!101922 () Bool)

(assert (=> b!111691 m!101922))

(declare-fun m!101924 () Bool)

(assert (=> b!111691 m!101924))

(declare-fun m!101926 () Bool)

(assert (=> b!111691 m!101926))

(declare-fun m!101928 () Bool)

(assert (=> b!111691 m!101928))

(declare-fun m!101930 () Bool)

(assert (=> b!111692 m!101930))

(declare-fun m!101932 () Bool)

(assert (=> mapNonEmpty!1234 m!101932))

(check-sat (not b!111692) (not b!111695) b_and!5603 (not b!111690) (not b_next!3475) (not b!111698) b_and!5605 (not b!111701) (not b_next!3473) (not b!111691) (not b!111696) (not start!11518) (not mapNonEmpty!1234) tp_is_empty!945 (not b!111689))
(check-sat b_and!5605 b_and!5603 (not b_next!3473) (not b_next!3475))
