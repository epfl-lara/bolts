; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11552 () Bool)

(assert start!11552)

(declare-fun b!112158 () Bool)

(declare-fun b_free!3505 () Bool)

(declare-fun b_next!3505 () Bool)

(assert (=> b!112158 (= b_free!3505 (not b_next!3505))))

(declare-fun tp!60843 () Bool)

(declare-fun b_and!5635 () Bool)

(assert (=> b!112158 (= tp!60843 b_and!5635)))

(declare-fun b!112157 () Bool)

(declare-fun b_free!3507 () Bool)

(declare-fun b_next!3507 () Bool)

(assert (=> b!112157 (= b_free!3507 (not b_next!3507))))

(declare-fun tp!60844 () Bool)

(declare-fun b_and!5637 () Bool)

(assert (=> b!112157 (= tp!60844 b_and!5637)))

(declare-fun mapIsEmpty!1261 () Bool)

(declare-fun mapRes!1261 () Bool)

(assert (=> mapIsEmpty!1261 mapRes!1261))

(declare-fun b!112148 () Bool)

(declare-fun e!62975 () Bool)

(declare-fun e!62970 () Bool)

(assert (=> b!112148 (= e!62975 (not e!62970))))

(declare-fun res!53824 () Bool)

(assert (=> b!112148 (=> res!53824 e!62970)))

(declare-datatypes ((C!1828 0))(
  ( (C!1829 (val!640 Int)) )
))
(declare-datatypes ((List!1823 0))(
  ( (Nil!1817) (Cons!1817 (h!7214 C!1828) (t!22300 List!1823)) )
))
(declare-fun input!6708 () List!1823)

(declare-fun ++!303 (List!1823 List!1823) List!1823)

(assert (=> b!112148 (= res!53824 (not (= (++!303 Nil!1817 input!6708) input!6708)))))

(declare-fun lt!32689 () Int)

(assert (=> b!112148 (= 0 lt!32689)))

(declare-fun size!1587 (List!1823) Int)

(assert (=> b!112148 (= lt!32689 (size!1587 Nil!1817))))

(declare-datatypes ((Unit!1296 0))(
  ( (Unit!1297) )
))
(declare-fun lt!32690 () Unit!1296)

(declare-fun lemmaSizeTrEqualsSize!9 (List!1823 Int) Unit!1296)

(assert (=> b!112148 (= lt!32690 (lemmaSizeTrEqualsSize!9 Nil!1817 0))))

(declare-fun sizeTr!9 (List!1823 Int) Int)

(assert (=> b!112148 (= (sizeTr!9 input!6708 0) (size!1587 input!6708))))

(declare-fun lt!32691 () Unit!1296)

(assert (=> b!112148 (= lt!32691 (lemmaSizeTrEqualsSize!9 input!6708 0))))

(declare-fun b!112150 () Bool)

(assert (=> b!112150 (= e!62970 (= 0 lt!32689))))

(declare-fun b!112151 () Bool)

(declare-fun e!62971 () Bool)

(declare-fun tp!60848 () Bool)

(assert (=> b!112151 (= e!62971 (and tp!60848 mapRes!1261))))

(declare-fun condMapEmpty!1261 () Bool)

(declare-datatypes ((Regex!453 0))(
  ( (ElementMatch!453 (c!26374 C!1828)) (Concat!837 (regOne!1418 Regex!453) (regTwo!1418 Regex!453)) (EmptyExpr!453) (Star!453 (reg!782 Regex!453)) (EmptyLang!453) (Union!453 (regOne!1419 Regex!453) (regTwo!1419 Regex!453)) )
))
(declare-datatypes ((tuple2!1928 0))(
  ( (tuple2!1929 (_1!1174 Regex!453) (_2!1174 C!1828)) )
))
(declare-datatypes ((tuple2!1930 0))(
  ( (tuple2!1931 (_1!1175 tuple2!1928) (_2!1175 Regex!453)) )
))
(declare-datatypes ((List!1824 0))(
  ( (Nil!1818) (Cons!1818 (h!7215 tuple2!1930) (t!22301 List!1824)) )
))
(declare-datatypes ((array!1117 0))(
  ( (array!1118 (arr!522 (Array (_ BitVec 32) (_ BitVec 64))) (size!1588 (_ BitVec 32))) )
))
(declare-datatypes ((array!1119 0))(
  ( (array!1120 (arr!523 (Array (_ BitVec 32) List!1824)) (size!1589 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!638 0))(
  ( (LongMapFixedSize!639 (defaultEntry!658 Int) (mask!1213 (_ BitVec 32)) (extraKeys!565 (_ BitVec 32)) (zeroValue!575 List!1824) (minValue!575 List!1824) (_size!771 (_ BitVec 32)) (_keys!610 array!1117) (_values!597 array!1119) (_vacant!380 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1265 0))(
  ( (Cell!1266 (v!13169 LongMapFixedSize!638)) )
))
(declare-datatypes ((MutLongMap!319 0))(
  ( (LongMap!319 (underlying!837 Cell!1265)) (MutLongMapExt!318 (__x!1882 Int)) )
))
(declare-datatypes ((Cell!1267 0))(
  ( (Cell!1268 (v!13170 MutLongMap!319)) )
))
(declare-datatypes ((Hashable!315 0))(
  ( (HashableExt!314 (__x!1883 Int)) )
))
(declare-datatypes ((MutableMap!315 0))(
  ( (MutableMapExt!314 (__x!1884 Int)) (HashMap!315 (underlying!838 Cell!1267) (hashF!2191 Hashable!315) (_size!772 (_ BitVec 32)) (defaultValue!464 Int)) )
))
(declare-datatypes ((Cache!66 0))(
  ( (Cache!67 (cache!766 MutableMap!315)) )
))
(declare-fun cache!464 () Cache!66)

(declare-fun mapDefault!1261 () List!1824)

(assert (=> b!112151 (= condMapEmpty!1261 (= (arr!523 (_values!597 (v!13169 (underlying!837 (v!13170 (underlying!838 (cache!766 cache!464))))))) ((as const (Array (_ BitVec 32) List!1824)) mapDefault!1261)))))

(declare-fun b!112152 () Bool)

(declare-fun e!62976 () Bool)

(declare-fun e!62974 () Bool)

(assert (=> b!112152 (= e!62976 e!62974)))

(declare-fun b!112153 () Bool)

(declare-fun e!62967 () Bool)

(declare-fun tp!60840 () Bool)

(declare-fun tp!60837 () Bool)

(assert (=> b!112153 (= e!62967 (and tp!60840 tp!60837))))

(declare-fun b!112154 () Bool)

(declare-fun e!62972 () Bool)

(declare-fun lt!32692 () MutLongMap!319)

(get-info :version)

(assert (=> b!112154 (= e!62972 (and e!62976 ((_ is LongMap!319) lt!32692)))))

(assert (=> b!112154 (= lt!32692 (v!13170 (underlying!838 (cache!766 cache!464))))))

(declare-fun res!53822 () Bool)

(assert (=> start!11552 (=> (not res!53822) (not e!62975))))

(declare-fun r!15516 () Regex!453)

(declare-fun validRegex!70 (Regex!453) Bool)

(assert (=> start!11552 (= res!53822 (validRegex!70 r!15516))))

(assert (=> start!11552 e!62975))

(assert (=> start!11552 e!62967))

(declare-fun e!62969 () Bool)

(declare-fun inv!2314 (Cache!66) Bool)

(assert (=> start!11552 (and (inv!2314 cache!464) e!62969)))

(declare-fun e!62965 () Bool)

(assert (=> start!11552 e!62965))

(declare-fun b!112149 () Bool)

(declare-fun tp!60841 () Bool)

(assert (=> b!112149 (= e!62967 tp!60841)))

(declare-fun b!112155 () Bool)

(declare-fun res!53823 () Bool)

(assert (=> b!112155 (=> (not res!53823) (not e!62975))))

(declare-fun valid!298 (Cache!66) Bool)

(assert (=> b!112155 (= res!53823 (valid!298 cache!464))))

(declare-fun b!112156 () Bool)

(declare-fun tp_is_empty!961 () Bool)

(declare-fun tp!60838 () Bool)

(assert (=> b!112156 (= e!62965 (and tp_is_empty!961 tp!60838))))

(declare-fun mapNonEmpty!1261 () Bool)

(declare-fun tp!60849 () Bool)

(declare-fun tp!60842 () Bool)

(assert (=> mapNonEmpty!1261 (= mapRes!1261 (and tp!60849 tp!60842))))

(declare-fun mapValue!1261 () List!1824)

(declare-fun mapRest!1261 () (Array (_ BitVec 32) List!1824))

(declare-fun mapKey!1261 () (_ BitVec 32))

(assert (=> mapNonEmpty!1261 (= (arr!523 (_values!597 (v!13169 (underlying!837 (v!13170 (underlying!838 (cache!766 cache!464))))))) (store mapRest!1261 mapKey!1261 mapValue!1261))))

(declare-fun tp!60839 () Bool)

(declare-fun tp!60847 () Bool)

(declare-fun e!62968 () Bool)

(declare-fun array_inv!363 (array!1117) Bool)

(declare-fun array_inv!364 (array!1119) Bool)

(assert (=> b!112157 (= e!62968 (and tp!60844 tp!60839 tp!60847 (array_inv!363 (_keys!610 (v!13169 (underlying!837 (v!13170 (underlying!838 (cache!766 cache!464))))))) (array_inv!364 (_values!597 (v!13169 (underlying!837 (v!13170 (underlying!838 (cache!766 cache!464))))))) e!62971))))

(declare-fun e!62973 () Bool)

(assert (=> b!112158 (= e!62973 (and e!62972 tp!60843))))

(declare-fun b!112159 () Bool)

(assert (=> b!112159 (= e!62969 e!62973)))

(declare-fun b!112160 () Bool)

(assert (=> b!112160 (= e!62967 tp_is_empty!961)))

(declare-fun b!112161 () Bool)

(assert (=> b!112161 (= e!62974 e!62968)))

(declare-fun b!112162 () Bool)

(declare-fun tp!60845 () Bool)

(declare-fun tp!60846 () Bool)

(assert (=> b!112162 (= e!62967 (and tp!60845 tp!60846))))

(assert (= (and start!11552 res!53822) b!112155))

(assert (= (and b!112155 res!53823) b!112148))

(assert (= (and b!112148 (not res!53824)) b!112150))

(assert (= (and start!11552 ((_ is ElementMatch!453) r!15516)) b!112160))

(assert (= (and start!11552 ((_ is Concat!837) r!15516)) b!112162))

(assert (= (and start!11552 ((_ is Star!453) r!15516)) b!112149))

(assert (= (and start!11552 ((_ is Union!453) r!15516)) b!112153))

(assert (= (and b!112151 condMapEmpty!1261) mapIsEmpty!1261))

(assert (= (and b!112151 (not condMapEmpty!1261)) mapNonEmpty!1261))

(assert (= b!112157 b!112151))

(assert (= b!112161 b!112157))

(assert (= b!112152 b!112161))

(assert (= (and b!112154 ((_ is LongMap!319) (v!13170 (underlying!838 (cache!766 cache!464))))) b!112152))

(assert (= b!112158 b!112154))

(assert (= (and b!112159 ((_ is HashMap!315) (cache!766 cache!464))) b!112158))

(assert (= start!11552 b!112159))

(assert (= (and start!11552 ((_ is Cons!1817) input!6708)) b!112156))

(declare-fun m!102138 () Bool)

(assert (=> b!112148 m!102138))

(declare-fun m!102140 () Bool)

(assert (=> b!112148 m!102140))

(declare-fun m!102142 () Bool)

(assert (=> b!112148 m!102142))

(declare-fun m!102144 () Bool)

(assert (=> b!112148 m!102144))

(declare-fun m!102146 () Bool)

(assert (=> b!112148 m!102146))

(declare-fun m!102148 () Bool)

(assert (=> b!112148 m!102148))

(declare-fun m!102150 () Bool)

(assert (=> start!11552 m!102150))

(declare-fun m!102152 () Bool)

(assert (=> start!11552 m!102152))

(declare-fun m!102154 () Bool)

(assert (=> b!112155 m!102154))

(declare-fun m!102156 () Bool)

(assert (=> b!112157 m!102156))

(declare-fun m!102158 () Bool)

(assert (=> b!112157 m!102158))

(declare-fun m!102160 () Bool)

(assert (=> mapNonEmpty!1261 m!102160))

(check-sat b_and!5637 (not b!112162) (not b!112148) b_and!5635 (not b!112155) (not b_next!3507) (not b!112156) (not mapNonEmpty!1261) (not b_next!3505) (not b!112153) tp_is_empty!961 (not b!112149) (not b!112157) (not start!11552) (not b!112151))
(check-sat b_and!5635 b_and!5637 (not b_next!3507) (not b_next!3505))
