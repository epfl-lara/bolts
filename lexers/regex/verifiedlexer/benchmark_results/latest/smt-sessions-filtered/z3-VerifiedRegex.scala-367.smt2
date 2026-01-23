; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11526 () Bool)

(assert start!11526)

(declare-fun b!111873 () Bool)

(declare-fun b_free!3489 () Bool)

(declare-fun b_next!3489 () Bool)

(assert (=> b!111873 (= b_free!3489 (not b_next!3489))))

(declare-fun tp!60610 () Bool)

(declare-fun b_and!5619 () Bool)

(assert (=> b!111873 (= tp!60610 b_and!5619)))

(declare-fun b!111870 () Bool)

(declare-fun b_free!3491 () Bool)

(declare-fun b_next!3491 () Bool)

(assert (=> b!111870 (= b_free!3491 (not b_next!3491))))

(declare-fun tp!60614 () Bool)

(declare-fun b_and!5621 () Bool)

(assert (=> b!111870 (= tp!60614 b_and!5621)))

(declare-fun mapNonEmpty!1246 () Bool)

(declare-fun mapRes!1246 () Bool)

(declare-fun tp!60604 () Bool)

(declare-fun tp!60611 () Bool)

(assert (=> mapNonEmpty!1246 (= mapRes!1246 (and tp!60604 tp!60611))))

(declare-fun mapKey!1246 () (_ BitVec 32))

(declare-datatypes ((C!1820 0))(
  ( (C!1821 (val!636 Int)) )
))
(declare-datatypes ((Regex!449 0))(
  ( (ElementMatch!449 (c!26354 C!1820)) (Concat!833 (regOne!1410 Regex!449) (regTwo!1410 Regex!449)) (EmptyExpr!449) (Star!449 (reg!778 Regex!449)) (EmptyLang!449) (Union!449 (regOne!1411 Regex!449) (regTwo!1411 Regex!449)) )
))
(declare-datatypes ((tuple2!1912 0))(
  ( (tuple2!1913 (_1!1166 Regex!449) (_2!1166 C!1820)) )
))
(declare-datatypes ((tuple2!1914 0))(
  ( (tuple2!1915 (_1!1167 tuple2!1912) (_2!1167 Regex!449)) )
))
(declare-datatypes ((List!1815 0))(
  ( (Nil!1809) (Cons!1809 (h!7206 tuple2!1914) (t!22292 List!1815)) )
))
(declare-fun mapValue!1246 () List!1815)

(declare-datatypes ((array!1099 0))(
  ( (array!1100 (arr!514 (Array (_ BitVec 32) (_ BitVec 64))) (size!1575 (_ BitVec 32))) )
))
(declare-datatypes ((array!1101 0))(
  ( (array!1102 (arr!515 (Array (_ BitVec 32) List!1815)) (size!1576 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!630 0))(
  ( (LongMapFixedSize!631 (defaultEntry!654 Int) (mask!1207 (_ BitVec 32)) (extraKeys!561 (_ BitVec 32)) (zeroValue!571 List!1815) (minValue!571 List!1815) (_size!763 (_ BitVec 32)) (_keys!606 array!1099) (_values!593 array!1101) (_vacant!376 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1249 0))(
  ( (Cell!1250 (v!13161 LongMapFixedSize!630)) )
))
(declare-datatypes ((MutLongMap!315 0))(
  ( (LongMap!315 (underlying!829 Cell!1249)) (MutLongMapExt!314 (__x!1870 Int)) )
))
(declare-datatypes ((Cell!1251 0))(
  ( (Cell!1252 (v!13162 MutLongMap!315)) )
))
(declare-datatypes ((Hashable!311 0))(
  ( (HashableExt!310 (__x!1871 Int)) )
))
(declare-datatypes ((MutableMap!311 0))(
  ( (MutableMapExt!310 (__x!1872 Int)) (HashMap!311 (underlying!830 Cell!1251) (hashF!2187 Hashable!311) (_size!764 (_ BitVec 32)) (defaultValue!460 Int)) )
))
(declare-datatypes ((Cache!58 0))(
  ( (Cache!59 (cache!762 MutableMap!311)) )
))
(declare-fun cache!464 () Cache!58)

(declare-fun mapRest!1246 () (Array (_ BitVec 32) List!1815))

(assert (=> mapNonEmpty!1246 (= (arr!515 (_values!593 (v!13161 (underlying!829 (v!13162 (underlying!830 (cache!762 cache!464))))))) (store mapRest!1246 mapKey!1246 mapValue!1246))))

(declare-fun b!111868 () Bool)

(declare-fun e!62771 () Bool)

(declare-fun tp!60615 () Bool)

(assert (=> b!111868 (= e!62771 (and tp!60615 mapRes!1246))))

(declare-fun condMapEmpty!1246 () Bool)

(declare-fun mapDefault!1246 () List!1815)

(assert (=> b!111868 (= condMapEmpty!1246 (= (arr!515 (_values!593 (v!13161 (underlying!829 (v!13162 (underlying!830 (cache!762 cache!464))))))) ((as const (Array (_ BitVec 32) List!1815)) mapDefault!1246)))))

(declare-fun b!111869 () Bool)

(declare-fun e!62777 () Bool)

(declare-fun e!62779 () Bool)

(assert (=> b!111869 (= e!62777 e!62779)))

(declare-fun tp!60605 () Bool)

(declare-fun tp!60612 () Bool)

(declare-fun array_inv!355 (array!1099) Bool)

(declare-fun array_inv!356 (array!1101) Bool)

(assert (=> b!111870 (= e!62779 (and tp!60614 tp!60605 tp!60612 (array_inv!355 (_keys!606 (v!13161 (underlying!829 (v!13162 (underlying!830 (cache!762 cache!464))))))) (array_inv!356 (_values!593 (v!13161 (underlying!829 (v!13162 (underlying!830 (cache!762 cache!464))))))) e!62771))))

(declare-fun b!111871 () Bool)

(declare-fun e!62773 () Bool)

(declare-fun tp_is_empty!953 () Bool)

(assert (=> b!111871 (= e!62773 tp_is_empty!953)))

(declare-fun mapIsEmpty!1246 () Bool)

(assert (=> mapIsEmpty!1246 mapRes!1246))

(declare-fun b!111872 () Bool)

(declare-fun res!53769 () Bool)

(declare-fun e!62776 () Bool)

(assert (=> b!111872 (=> (not res!53769) (not e!62776))))

(declare-fun valid!294 (Cache!58) Bool)

(assert (=> b!111872 (= res!53769 (valid!294 cache!464))))

(declare-fun e!62775 () Bool)

(declare-fun e!62772 () Bool)

(assert (=> b!111873 (= e!62775 (and e!62772 tp!60610))))

(declare-fun b!111874 () Bool)

(declare-fun tp!60616 () Bool)

(declare-fun tp!60606 () Bool)

(assert (=> b!111874 (= e!62773 (and tp!60616 tp!60606))))

(declare-fun b!111875 () Bool)

(declare-fun e!62778 () Bool)

(declare-fun lt!32638 () MutLongMap!315)

(get-info :version)

(assert (=> b!111875 (= e!62772 (and e!62778 ((_ is LongMap!315) lt!32638)))))

(assert (=> b!111875 (= lt!32638 (v!13162 (underlying!830 (cache!762 cache!464))))))

(declare-fun b!111876 () Bool)

(assert (=> b!111876 (= e!62776 (not true))))

(declare-datatypes ((List!1816 0))(
  ( (Nil!1810) (Cons!1810 (h!7207 C!1820) (t!22293 List!1816)) )
))
(declare-fun size!1577 (List!1816) Int)

(assert (=> b!111876 (= 0 (size!1577 Nil!1810))))

(declare-datatypes ((Unit!1288 0))(
  ( (Unit!1289) )
))
(declare-fun lt!32639 () Unit!1288)

(declare-fun lemmaSizeTrEqualsSize!5 (List!1816 Int) Unit!1288)

(assert (=> b!111876 (= lt!32639 (lemmaSizeTrEqualsSize!5 Nil!1810 0))))

(declare-fun input!6708 () List!1816)

(declare-fun sizeTr!5 (List!1816 Int) Int)

(assert (=> b!111876 (= (sizeTr!5 input!6708 0) (size!1577 input!6708))))

(declare-fun lt!32637 () Unit!1288)

(assert (=> b!111876 (= lt!32637 (lemmaSizeTrEqualsSize!5 input!6708 0))))

(declare-fun b!111877 () Bool)

(declare-fun tp!60609 () Bool)

(assert (=> b!111877 (= e!62773 tp!60609)))

(declare-fun res!53770 () Bool)

(assert (=> start!11526 (=> (not res!53770) (not e!62776))))

(declare-fun r!15516 () Regex!449)

(declare-fun validRegex!66 (Regex!449) Bool)

(assert (=> start!11526 (= res!53770 (validRegex!66 r!15516))))

(assert (=> start!11526 e!62776))

(assert (=> start!11526 e!62773))

(declare-fun e!62774 () Bool)

(declare-fun inv!2304 (Cache!58) Bool)

(assert (=> start!11526 (and (inv!2304 cache!464) e!62774)))

(declare-fun e!62770 () Bool)

(assert (=> start!11526 e!62770))

(declare-fun b!111878 () Bool)

(declare-fun tp!60613 () Bool)

(assert (=> b!111878 (= e!62770 (and tp_is_empty!953 tp!60613))))

(declare-fun b!111879 () Bool)

(assert (=> b!111879 (= e!62774 e!62775)))

(declare-fun b!111880 () Bool)

(declare-fun tp!60607 () Bool)

(declare-fun tp!60608 () Bool)

(assert (=> b!111880 (= e!62773 (and tp!60607 tp!60608))))

(declare-fun b!111881 () Bool)

(assert (=> b!111881 (= e!62778 e!62777)))

(assert (= (and start!11526 res!53770) b!111872))

(assert (= (and b!111872 res!53769) b!111876))

(assert (= (and start!11526 ((_ is ElementMatch!449) r!15516)) b!111871))

(assert (= (and start!11526 ((_ is Concat!833) r!15516)) b!111874))

(assert (= (and start!11526 ((_ is Star!449) r!15516)) b!111877))

(assert (= (and start!11526 ((_ is Union!449) r!15516)) b!111880))

(assert (= (and b!111868 condMapEmpty!1246) mapIsEmpty!1246))

(assert (= (and b!111868 (not condMapEmpty!1246)) mapNonEmpty!1246))

(assert (= b!111870 b!111868))

(assert (= b!111869 b!111870))

(assert (= b!111881 b!111869))

(assert (= (and b!111875 ((_ is LongMap!315) (v!13162 (underlying!830 (cache!762 cache!464))))) b!111881))

(assert (= b!111873 b!111875))

(assert (= (and b!111879 ((_ is HashMap!311) (cache!762 cache!464))) b!111873))

(assert (= start!11526 b!111879))

(assert (= (and start!11526 ((_ is Cons!1810) input!6708)) b!111878))

(declare-fun m!102012 () Bool)

(assert (=> b!111870 m!102012))

(declare-fun m!102014 () Bool)

(assert (=> b!111870 m!102014))

(declare-fun m!102016 () Bool)

(assert (=> mapNonEmpty!1246 m!102016))

(declare-fun m!102018 () Bool)

(assert (=> b!111872 m!102018))

(declare-fun m!102020 () Bool)

(assert (=> b!111876 m!102020))

(declare-fun m!102022 () Bool)

(assert (=> b!111876 m!102022))

(declare-fun m!102024 () Bool)

(assert (=> b!111876 m!102024))

(declare-fun m!102026 () Bool)

(assert (=> b!111876 m!102026))

(declare-fun m!102028 () Bool)

(assert (=> b!111876 m!102028))

(declare-fun m!102030 () Bool)

(assert (=> start!11526 m!102030))

(declare-fun m!102032 () Bool)

(assert (=> start!11526 m!102032))

(check-sat b_and!5621 (not b!111872) (not b_next!3489) (not mapNonEmpty!1246) (not b_next!3491) (not b!111870) b_and!5619 (not b!111878) (not start!11526) (not b!111874) tp_is_empty!953 (not b!111880) (not b!111868) (not b!111877) (not b!111876))
(check-sat b_and!5619 b_and!5621 (not b_next!3491) (not b_next!3489))
