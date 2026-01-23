; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11522 () Bool)

(assert start!11522)

(declare-fun b!111794 () Bool)

(declare-fun b_free!3481 () Bool)

(declare-fun b_next!3481 () Bool)

(assert (=> b!111794 (= b_free!3481 (not b_next!3481))))

(declare-fun tp!60529 () Bool)

(declare-fun b_and!5611 () Bool)

(assert (=> b!111794 (= tp!60529 b_and!5611)))

(declare-fun b!111790 () Bool)

(declare-fun b_free!3483 () Bool)

(declare-fun b_next!3483 () Bool)

(assert (=> b!111790 (= b_free!3483 (not b_next!3483))))

(declare-fun tp!60538 () Bool)

(declare-fun b_and!5613 () Bool)

(assert (=> b!111790 (= tp!60538 b_and!5613)))

(declare-fun b!111782 () Bool)

(declare-fun e!62708 () Bool)

(declare-fun e!62702 () Bool)

(assert (=> b!111782 (= e!62708 e!62702)))

(declare-fun b!111783 () Bool)

(declare-fun e!62707 () Bool)

(assert (=> b!111783 (= e!62707 true)))

(declare-fun lt!32618 () Int)

(declare-datatypes ((C!1816 0))(
  ( (C!1817 (val!634 Int)) )
))
(declare-datatypes ((List!1811 0))(
  ( (Nil!1805) (Cons!1805 (h!7202 C!1816) (t!22288 List!1811)) )
))
(declare-fun input!6708 () List!1811)

(declare-datatypes ((Regex!447 0))(
  ( (ElementMatch!447 (c!26352 C!1816)) (Concat!831 (regOne!1406 Regex!447) (regTwo!1406 Regex!447)) (EmptyExpr!447) (Star!447 (reg!776 Regex!447)) (EmptyLang!447) (Union!447 (regOne!1407 Regex!447) (regTwo!1407 Regex!447)) )
))
(declare-datatypes ((tuple2!1902 0))(
  ( (tuple2!1903 (_1!1161 Regex!447) (_2!1161 C!1816)) )
))
(declare-datatypes ((tuple2!1904 0))(
  ( (tuple2!1905 (_1!1162 tuple2!1902) (_2!1162 Regex!447)) )
))
(declare-datatypes ((List!1812 0))(
  ( (Nil!1806) (Cons!1806 (h!7203 tuple2!1904) (t!22289 List!1812)) )
))
(declare-datatypes ((array!1091 0))(
  ( (array!1092 (arr!510 (Array (_ BitVec 32) (_ BitVec 64))) (size!1569 (_ BitVec 32))) )
))
(declare-datatypes ((array!1093 0))(
  ( (array!1094 (arr!511 (Array (_ BitVec 32) List!1812)) (size!1570 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!626 0))(
  ( (LongMapFixedSize!627 (defaultEntry!652 Int) (mask!1204 (_ BitVec 32)) (extraKeys!559 (_ BitVec 32)) (zeroValue!569 List!1812) (minValue!569 List!1812) (_size!759 (_ BitVec 32)) (_keys!604 array!1091) (_values!591 array!1093) (_vacant!374 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1241 0))(
  ( (Cell!1242 (v!13157 LongMapFixedSize!626)) )
))
(declare-datatypes ((MutLongMap!313 0))(
  ( (LongMap!313 (underlying!825 Cell!1241)) (MutLongMapExt!312 (__x!1864 Int)) )
))
(declare-datatypes ((Cell!1243 0))(
  ( (Cell!1244 (v!13158 MutLongMap!313)) )
))
(declare-datatypes ((Hashable!309 0))(
  ( (HashableExt!308 (__x!1865 Int)) )
))
(declare-datatypes ((MutableMap!309 0))(
  ( (MutableMapExt!308 (__x!1866 Int)) (HashMap!309 (underlying!826 Cell!1243) (hashF!2185 Hashable!309) (_size!760 (_ BitVec 32)) (defaultValue!458 Int)) )
))
(declare-datatypes ((Cache!54 0))(
  ( (Cache!55 (cache!760 MutableMap!309)) )
))
(declare-fun cache!464 () Cache!54)

(declare-fun r!15516 () Regex!447)

(declare-datatypes ((tuple2!1906 0))(
  ( (tuple2!1907 (_1!1163 List!1811) (_2!1163 List!1811)) )
))
(declare-fun findLongestMatchInnerMem!2 (Regex!447 List!1811 Int List!1811 List!1811 Int Cache!54) tuple2!1906)

(declare-fun findLongestMatchInner!35 (Regex!447 List!1811 Int List!1811 List!1811 Int) tuple2!1906)

(assert (=> b!111783 (= (findLongestMatchInnerMem!2 r!15516 Nil!1805 0 input!6708 input!6708 lt!32618 cache!464) (findLongestMatchInner!35 r!15516 Nil!1805 0 input!6708 input!6708 lt!32618))))

(declare-fun b!111784 () Bool)

(declare-fun e!62711 () Bool)

(declare-fun tp!60526 () Bool)

(declare-fun tp!60533 () Bool)

(assert (=> b!111784 (= e!62711 (and tp!60526 tp!60533))))

(declare-fun b!111785 () Bool)

(declare-fun tp!60527 () Bool)

(declare-fun tp!60531 () Bool)

(assert (=> b!111785 (= e!62711 (and tp!60527 tp!60531))))

(declare-fun b!111786 () Bool)

(declare-fun tp_is_empty!949 () Bool)

(assert (=> b!111786 (= e!62711 tp_is_empty!949)))

(declare-fun mapIsEmpty!1240 () Bool)

(declare-fun mapRes!1240 () Bool)

(assert (=> mapIsEmpty!1240 mapRes!1240))

(declare-fun b!111787 () Bool)

(declare-fun e!62703 () Bool)

(declare-fun tp!60530 () Bool)

(assert (=> b!111787 (= e!62703 (and tp!60530 mapRes!1240))))

(declare-fun condMapEmpty!1240 () Bool)

(declare-fun mapDefault!1240 () List!1812)

(assert (=> b!111787 (= condMapEmpty!1240 (= (arr!511 (_values!591 (v!13157 (underlying!825 (v!13158 (underlying!826 (cache!760 cache!464))))))) ((as const (Array (_ BitVec 32) List!1812)) mapDefault!1240)))))

(declare-fun b!111788 () Bool)

(declare-fun e!62706 () Bool)

(declare-fun e!62710 () Bool)

(declare-fun lt!32616 () MutLongMap!313)

(get-info :version)

(assert (=> b!111788 (= e!62706 (and e!62710 ((_ is LongMap!313) lt!32616)))))

(assert (=> b!111788 (= lt!32616 (v!13158 (underlying!826 (cache!760 cache!464))))))

(declare-fun res!53755 () Bool)

(declare-fun e!62705 () Bool)

(assert (=> start!11522 (=> (not res!53755) (not e!62705))))

(declare-fun validRegex!65 (Regex!447) Bool)

(assert (=> start!11522 (= res!53755 (validRegex!65 r!15516))))

(assert (=> start!11522 e!62705))

(assert (=> start!11522 e!62711))

(declare-fun inv!2300 (Cache!54) Bool)

(assert (=> start!11522 (and (inv!2300 cache!464) e!62708)))

(declare-fun e!62713 () Bool)

(assert (=> start!11522 e!62713))

(declare-fun b!111789 () Bool)

(assert (=> b!111789 (= e!62705 (not e!62707))))

(declare-fun res!53758 () Bool)

(assert (=> b!111789 (=> res!53758 e!62707)))

(declare-fun ++!299 (List!1811 List!1811) List!1811)

(assert (=> b!111789 (= res!53758 (not (= (++!299 Nil!1805 input!6708) input!6708)))))

(declare-fun sizeTr!3 (List!1811 Int) Int)

(assert (=> b!111789 (= lt!32618 (sizeTr!3 input!6708 0))))

(declare-fun lt!32619 () Int)

(assert (=> b!111789 (= 0 lt!32619)))

(declare-fun size!1571 (List!1811) Int)

(assert (=> b!111789 (= lt!32619 (size!1571 Nil!1805))))

(declare-datatypes ((Unit!1284 0))(
  ( (Unit!1285) )
))
(declare-fun lt!32620 () Unit!1284)

(declare-fun lemmaSizeTrEqualsSize!3 (List!1811 Int) Unit!1284)

(assert (=> b!111789 (= lt!32620 (lemmaSizeTrEqualsSize!3 Nil!1805 0))))

(declare-fun lt!32617 () Int)

(assert (=> b!111789 (= (sizeTr!3 input!6708 0) lt!32617)))

(assert (=> b!111789 (= lt!32617 (size!1571 input!6708))))

(declare-fun lt!32621 () Unit!1284)

(assert (=> b!111789 (= lt!32621 (lemmaSizeTrEqualsSize!3 input!6708 0))))

(declare-fun tp!60534 () Bool)

(declare-fun tp!60532 () Bool)

(declare-fun e!62709 () Bool)

(declare-fun array_inv!351 (array!1091) Bool)

(declare-fun array_inv!352 (array!1093) Bool)

(assert (=> b!111790 (= e!62709 (and tp!60538 tp!60534 tp!60532 (array_inv!351 (_keys!604 (v!13157 (underlying!825 (v!13158 (underlying!826 (cache!760 cache!464))))))) (array_inv!352 (_values!591 (v!13157 (underlying!825 (v!13158 (underlying!826 (cache!760 cache!464))))))) e!62703))))

(declare-fun b!111791 () Bool)

(declare-fun e!62704 () Bool)

(assert (=> b!111791 (= e!62704 e!62709)))

(declare-fun b!111792 () Bool)

(declare-fun tp!60536 () Bool)

(assert (=> b!111792 (= e!62711 tp!60536)))

(declare-fun b!111793 () Bool)

(declare-fun res!53757 () Bool)

(assert (=> b!111793 (=> (not res!53757) (not e!62705))))

(declare-fun valid!293 (Cache!54) Bool)

(assert (=> b!111793 (= res!53757 (valid!293 cache!464))))

(assert (=> b!111794 (= e!62702 (and e!62706 tp!60529))))

(declare-fun b!111795 () Bool)

(assert (=> b!111795 (= e!62710 e!62704)))

(declare-fun b!111796 () Bool)

(declare-fun tp!60528 () Bool)

(assert (=> b!111796 (= e!62713 (and tp_is_empty!949 tp!60528))))

(declare-fun mapNonEmpty!1240 () Bool)

(declare-fun tp!60535 () Bool)

(declare-fun tp!60537 () Bool)

(assert (=> mapNonEmpty!1240 (= mapRes!1240 (and tp!60535 tp!60537))))

(declare-fun mapRest!1240 () (Array (_ BitVec 32) List!1812))

(declare-fun mapValue!1240 () List!1812)

(declare-fun mapKey!1240 () (_ BitVec 32))

(assert (=> mapNonEmpty!1240 (= (arr!511 (_values!591 (v!13157 (underlying!825 (v!13158 (underlying!826 (cache!760 cache!464))))))) (store mapRest!1240 mapKey!1240 mapValue!1240))))

(declare-fun b!111797 () Bool)

(declare-fun res!53756 () Bool)

(assert (=> b!111797 (=> res!53756 e!62707)))

(assert (=> b!111797 (= res!53756 (or (not (= 0 lt!32619)) (not (= lt!32618 lt!32617))))))

(assert (= (and start!11522 res!53755) b!111793))

(assert (= (and b!111793 res!53757) b!111789))

(assert (= (and b!111789 (not res!53758)) b!111797))

(assert (= (and b!111797 (not res!53756)) b!111783))

(assert (= (and start!11522 ((_ is ElementMatch!447) r!15516)) b!111786))

(assert (= (and start!11522 ((_ is Concat!831) r!15516)) b!111785))

(assert (= (and start!11522 ((_ is Star!447) r!15516)) b!111792))

(assert (= (and start!11522 ((_ is Union!447) r!15516)) b!111784))

(assert (= (and b!111787 condMapEmpty!1240) mapIsEmpty!1240))

(assert (= (and b!111787 (not condMapEmpty!1240)) mapNonEmpty!1240))

(assert (= b!111790 b!111787))

(assert (= b!111791 b!111790))

(assert (= b!111795 b!111791))

(assert (= (and b!111788 ((_ is LongMap!313) (v!13158 (underlying!826 (cache!760 cache!464))))) b!111795))

(assert (= b!111794 b!111788))

(assert (= (and b!111782 ((_ is HashMap!309) (cache!760 cache!464))) b!111794))

(assert (= start!11522 b!111782))

(assert (= (and start!11522 ((_ is Cons!1805) input!6708)) b!111796))

(declare-fun m!101962 () Bool)

(assert (=> b!111793 m!101962))

(declare-fun m!101964 () Bool)

(assert (=> b!111789 m!101964))

(declare-fun m!101966 () Bool)

(assert (=> b!111789 m!101966))

(declare-fun m!101968 () Bool)

(assert (=> b!111789 m!101968))

(declare-fun m!101970 () Bool)

(assert (=> b!111789 m!101970))

(declare-fun m!101972 () Bool)

(assert (=> b!111789 m!101972))

(declare-fun m!101974 () Bool)

(assert (=> b!111789 m!101974))

(declare-fun m!101976 () Bool)

(assert (=> mapNonEmpty!1240 m!101976))

(declare-fun m!101978 () Bool)

(assert (=> start!11522 m!101978))

(declare-fun m!101980 () Bool)

(assert (=> start!11522 m!101980))

(declare-fun m!101982 () Bool)

(assert (=> b!111783 m!101982))

(declare-fun m!101984 () Bool)

(assert (=> b!111783 m!101984))

(declare-fun m!101986 () Bool)

(assert (=> b!111790 m!101986))

(declare-fun m!101988 () Bool)

(assert (=> b!111790 m!101988))

(check-sat (not b!111789) (not b!111783) (not mapNonEmpty!1240) (not b_next!3483) tp_is_empty!949 (not b!111793) (not b!111785) (not b!111784) (not b!111792) (not b!111796) (not b!111787) b_and!5611 (not b_next!3481) b_and!5613 (not start!11522) (not b!111790))
(check-sat b_and!5611 b_and!5613 (not b_next!3483) (not b_next!3481))
