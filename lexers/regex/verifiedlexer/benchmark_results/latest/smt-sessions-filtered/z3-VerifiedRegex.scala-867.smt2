; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46350 () Bool)

(assert start!46350)

(declare-fun b!512146 () Bool)

(declare-fun b_free!13263 () Bool)

(declare-fun b_next!13263 () Bool)

(assert (=> b!512146 (= b_free!13263 (not b_next!13263))))

(declare-fun tp!159193 () Bool)

(declare-fun b_and!50683 () Bool)

(assert (=> b!512146 (= tp!159193 b_and!50683)))

(declare-fun b!512141 () Bool)

(declare-fun e!305968 () Bool)

(assert (=> b!512141 (= e!305968 false)))

(declare-datatypes ((V!1362 0))(
  ( (V!1363 (val!1678 Int)) )
))
(declare-fun lt!212171 () V!1362)

(declare-datatypes ((array!1747 0))(
  ( (array!1748 (arr!806 (Array (_ BitVec 32) (_ BitVec 64))) (size!3740 (_ BitVec 32))) )
))
(declare-datatypes ((array!1749 0))(
  ( (array!1750 (arr!807 (Array (_ BitVec 32) V!1362)) (size!3741 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!922 0))(
  ( (LongMapFixedSize!923 (defaultEntry!808 Int) (mask!1853 (_ BitVec 32)) (extraKeys!707 (_ BitVec 32)) (zeroValue!717 V!1362) (minValue!717 V!1362) (_size!1038 (_ BitVec 32)) (_keys!752 array!1747) (_values!739 array!1749) (_vacant!522 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1799 0))(
  ( (Cell!1800 (v!15638 LongMapFixedSize!922)) )
))
(declare-datatypes ((MutLongMap!461 0))(
  ( (LongMap!461 (underlying!1108 Cell!1799)) (MutLongMapExt!460 (__x!3288 Int)) )
))
(declare-fun thiss!47442 () MutLongMap!461)

(declare-fun key!7052 () (_ BitVec 64))

(declare-fun choose!3646 (MutLongMap!461 (_ BitVec 64)) V!1362)

(assert (=> b!512141 (= lt!212171 (choose!3646 thiss!47442 key!7052))))

(declare-fun b!512142 () Bool)

(declare-fun e!305967 () Bool)

(declare-fun e!305963 () Bool)

(assert (=> b!512142 (= e!305967 e!305963)))

(declare-fun res!217338 () Bool)

(assert (=> start!46350 (=> (not res!217338) (not e!305968))))

(get-info :version)

(assert (=> start!46350 (= res!217338 ((_ is MutLongMapExt!460) thiss!47442))))

(assert (=> start!46350 e!305968))

(assert (=> start!46350 e!305967))

(assert (=> start!46350 true))

(declare-fun b!512143 () Bool)

(declare-fun e!305966 () Bool)

(declare-fun tp_is_empty!2459 () Bool)

(declare-fun mapRes!1784 () Bool)

(assert (=> b!512143 (= e!305966 (and tp_is_empty!2459 mapRes!1784))))

(declare-fun condMapEmpty!1784 () Bool)

(declare-fun mapDefault!1784 () V!1362)

(assert (=> b!512143 (= condMapEmpty!1784 (= (arr!807 (_values!739 (v!15638 (underlying!1108 thiss!47442)))) ((as const (Array (_ BitVec 32) V!1362)) mapDefault!1784)))))

(declare-fun mapIsEmpty!1784 () Bool)

(assert (=> mapIsEmpty!1784 mapRes!1784))

(declare-fun b!512144 () Bool)

(declare-fun res!217339 () Bool)

(assert (=> b!512144 (=> (not res!217339) (not e!305968))))

(declare-fun valid!415 (MutLongMap!461) Bool)

(assert (=> b!512144 (= res!217339 (valid!415 thiss!47442))))

(declare-fun b!512145 () Bool)

(declare-fun e!305964 () Bool)

(assert (=> b!512145 (= e!305963 e!305964)))

(declare-fun array_inv!579 (array!1747) Bool)

(declare-fun array_inv!580 (array!1749) Bool)

(assert (=> b!512146 (= e!305964 (and tp!159193 tp_is_empty!2459 (array_inv!579 (_keys!752 (v!15638 (underlying!1108 thiss!47442)))) (array_inv!580 (_values!739 (v!15638 (underlying!1108 thiss!47442)))) e!305966))))

(declare-fun mapNonEmpty!1784 () Bool)

(declare-fun tp!159192 () Bool)

(assert (=> mapNonEmpty!1784 (= mapRes!1784 (and tp!159192 tp_is_empty!2459))))

(declare-fun mapValue!1784 () V!1362)

(declare-fun mapRest!1784 () (Array (_ BitVec 32) V!1362))

(declare-fun mapKey!1784 () (_ BitVec 32))

(assert (=> mapNonEmpty!1784 (= (arr!807 (_values!739 (v!15638 (underlying!1108 thiss!47442)))) (store mapRest!1784 mapKey!1784 mapValue!1784))))

(assert (= (and start!46350 res!217338) b!512144))

(assert (= (and b!512144 res!217339) b!512141))

(assert (= (and b!512143 condMapEmpty!1784) mapIsEmpty!1784))

(assert (= (and b!512143 (not condMapEmpty!1784)) mapNonEmpty!1784))

(assert (= b!512146 b!512143))

(assert (= b!512145 b!512146))

(assert (= b!512142 b!512145))

(assert (= (and start!46350 ((_ is LongMap!461) thiss!47442)) b!512142))

(declare-fun m!758957 () Bool)

(assert (=> b!512141 m!758957))

(declare-fun m!758959 () Bool)

(assert (=> b!512144 m!758959))

(declare-fun m!758961 () Bool)

(assert (=> b!512146 m!758961))

(declare-fun m!758963 () Bool)

(assert (=> b!512146 m!758963))

(declare-fun m!758965 () Bool)

(assert (=> mapNonEmpty!1784 m!758965))

(check-sat (not b!512141) (not mapNonEmpty!1784) (not b!512146) (not b_next!13263) tp_is_empty!2459 b_and!50683 (not b!512144))
(check-sat b_and!50683 (not b_next!13263))
