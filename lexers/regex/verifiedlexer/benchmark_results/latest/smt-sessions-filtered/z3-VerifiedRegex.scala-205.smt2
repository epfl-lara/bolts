; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3278 () Bool)

(assert start!3278)

(declare-fun b!47691 () Bool)

(declare-fun b_free!1301 () Bool)

(declare-fun b_next!1301 () Bool)

(assert (=> b!47691 (= b_free!1301 (not b_next!1301))))

(declare-fun tp!32217 () Bool)

(declare-fun b_and!1337 () Bool)

(assert (=> b!47691 (= tp!32217 b_and!1337)))

(declare-fun b!47693 () Bool)

(declare-fun b_free!1303 () Bool)

(declare-fun b_next!1303 () Bool)

(assert (=> b!47693 (= b_free!1303 (not b_next!1303))))

(declare-fun tp!32216 () Bool)

(declare-fun b_and!1339 () Bool)

(assert (=> b!47693 (= tp!32216 b_and!1339)))

(declare-datatypes ((K!558 0))(
  ( (K!559 (val!244 Int)) )
))
(declare-datatypes ((V!612 0))(
  ( (V!613 (val!245 Int)) )
))
(declare-datatypes ((tuple2!1006 0))(
  ( (tuple2!1007 (_1!708 K!558) (_2!708 V!612)) )
))
(declare-datatypes ((List!809 0))(
  ( (Nil!807) (Cons!807 (h!6203 tuple2!1006) (t!17010 List!809)) )
))
(declare-datatypes ((array!952 0))(
  ( (array!953 (arr!448 (Array (_ BitVec 32) List!809)) (size!789 (_ BitVec 32))) )
))
(declare-datatypes ((array!954 0))(
  ( (array!955 (arr!449 (Array (_ BitVec 32) (_ BitVec 64))) (size!790 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!562 0))(
  ( (LongMapFixedSize!563 (defaultEntry!620 Int) (mask!1011 (_ BitVec 32)) (extraKeys!527 (_ BitVec 32)) (zeroValue!537 List!809) (minValue!537 List!809) (_size!695 (_ BitVec 32)) (_keys!572 array!954) (_values!559 array!952) (_vacant!342 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1113 0))(
  ( (Cell!1114 (v!12559 LongMapFixedSize!562)) )
))
(declare-datatypes ((MutLongMap!281 0))(
  ( (LongMap!281 (underlying!757 Cell!1113)) (MutLongMapExt!280 (__x!1356 Int)) )
))
(declare-datatypes ((Cell!1115 0))(
  ( (Cell!1116 (v!12560 MutLongMap!281)) )
))
(declare-datatypes ((Hashable!277 0))(
  ( (HashableExt!276 (__x!1357 Int)) )
))
(declare-datatypes ((MutableMap!277 0))(
  ( (MutableMapExt!276 (__x!1358 Int)) (HashMap!277 (underlying!758 Cell!1115) (hashF!2146 Hashable!277) (_size!696 (_ BitVec 32)) (defaultValue!426 Int)) )
))
(declare-fun thiss!42687 () MutableMap!277)

(declare-fun tp!32215 () Bool)

(declare-fun tp!32212 () Bool)

(declare-fun e!27563 () Bool)

(declare-fun e!27558 () Bool)

(declare-fun array_inv!303 (array!954) Bool)

(declare-fun array_inv!304 (array!952) Bool)

(assert (=> b!47691 (= e!27558 (and tp!32217 tp!32212 tp!32215 (array_inv!303 (_keys!572 (v!12559 (underlying!757 (v!12560 (underlying!758 thiss!42687)))))) (array_inv!304 (_values!559 (v!12559 (underlying!757 (v!12560 (underlying!758 thiss!42687)))))) e!27563))))

(declare-fun res!31915 () Bool)

(declare-fun e!27561 () Bool)

(assert (=> start!3278 (=> (not res!31915) (not e!27561))))

(get-info :version)

(assert (=> start!3278 (= res!31915 ((_ is HashMap!277) thiss!42687))))

(assert (=> start!3278 e!27561))

(declare-fun e!27562 () Bool)

(assert (=> start!3278 e!27562))

(declare-fun b!47692 () Bool)

(assert (=> b!47692 (= e!27561 false)))

(declare-fun lt!6735 () Bool)

(declare-fun valid!256 (MutableMap!277) Bool)

(assert (=> b!47692 (= lt!6735 (valid!256 thiss!42687))))

(declare-fun e!27564 () Bool)

(assert (=> b!47693 (= e!27562 (and e!27564 tp!32216))))

(declare-fun b!47694 () Bool)

(declare-fun e!27560 () Bool)

(assert (=> b!47694 (= e!27560 e!27558)))

(declare-fun mapIsEmpty!1111 () Bool)

(declare-fun mapRes!1111 () Bool)

(assert (=> mapIsEmpty!1111 mapRes!1111))

(declare-fun b!47695 () Bool)

(declare-fun tp!32213 () Bool)

(assert (=> b!47695 (= e!27563 (and tp!32213 mapRes!1111))))

(declare-fun condMapEmpty!1111 () Bool)

(declare-fun mapDefault!1111 () List!809)

(assert (=> b!47695 (= condMapEmpty!1111 (= (arr!448 (_values!559 (v!12559 (underlying!757 (v!12560 (underlying!758 thiss!42687)))))) ((as const (Array (_ BitVec 32) List!809)) mapDefault!1111)))))

(declare-fun mapNonEmpty!1111 () Bool)

(declare-fun tp!32211 () Bool)

(declare-fun tp!32214 () Bool)

(assert (=> mapNonEmpty!1111 (= mapRes!1111 (and tp!32211 tp!32214))))

(declare-fun mapKey!1111 () (_ BitVec 32))

(declare-fun mapValue!1111 () List!809)

(declare-fun mapRest!1111 () (Array (_ BitVec 32) List!809))

(assert (=> mapNonEmpty!1111 (= (arr!448 (_values!559 (v!12559 (underlying!757 (v!12560 (underlying!758 thiss!42687)))))) (store mapRest!1111 mapKey!1111 mapValue!1111))))

(declare-fun b!47696 () Bool)

(declare-fun e!27559 () Bool)

(assert (=> b!47696 (= e!27559 e!27560)))

(declare-fun b!47697 () Bool)

(declare-fun lt!6736 () MutLongMap!281)

(assert (=> b!47697 (= e!27564 (and e!27559 ((_ is LongMap!281) lt!6736)))))

(assert (=> b!47697 (= lt!6736 (v!12560 (underlying!758 thiss!42687)))))

(assert (= (and start!3278 res!31915) b!47692))

(assert (= (and b!47695 condMapEmpty!1111) mapIsEmpty!1111))

(assert (= (and b!47695 (not condMapEmpty!1111)) mapNonEmpty!1111))

(assert (= b!47691 b!47695))

(assert (= b!47694 b!47691))

(assert (= b!47696 b!47694))

(assert (= (and b!47697 ((_ is LongMap!281) (v!12560 (underlying!758 thiss!42687)))) b!47696))

(assert (= b!47693 b!47697))

(assert (= (and start!3278 ((_ is HashMap!277) thiss!42687)) b!47693))

(declare-fun m!21760 () Bool)

(assert (=> b!47691 m!21760))

(declare-fun m!21762 () Bool)

(assert (=> b!47691 m!21762))

(declare-fun m!21764 () Bool)

(assert (=> b!47692 m!21764))

(declare-fun m!21766 () Bool)

(assert (=> mapNonEmpty!1111 m!21766))

(check-sat (not mapNonEmpty!1111) (not b!47691) (not b!47695) (not b_next!1301) b_and!1339 b_and!1337 (not b_next!1303) (not b!47692))
(check-sat b_and!1339 b_and!1337 (not b_next!1301) (not b_next!1303))
