; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13250 () Bool)

(assert start!13250)

(declare-fun b!128497 () Bool)

(declare-fun b_free!3959 () Bool)

(declare-fun b_next!3959 () Bool)

(assert (=> b!128497 (= b_free!3959 (not b_next!3959))))

(declare-fun tp!69963 () Bool)

(declare-fun b_and!6089 () Bool)

(assert (=> b!128497 (= tp!69963 b_and!6089)))

(declare-fun b!128496 () Bool)

(declare-fun e!73875 () Bool)

(declare-fun e!73876 () Bool)

(assert (=> b!128496 (= e!73875 e!73876)))

(declare-fun tp_is_empty!1273 () Bool)

(declare-fun e!73874 () Bool)

(declare-fun e!73877 () Bool)

(declare-datatypes ((V!916 0))(
  ( (V!917 (val!800 Int)) )
))
(declare-datatypes ((array!1619 0))(
  ( (array!1620 (arr!750 (Array (_ BitVec 32) V!916)) (size!1944 (_ BitVec 32))) )
))
(declare-datatypes ((array!1621 0))(
  ( (array!1622 (arr!751 (Array (_ BitVec 32) (_ BitVec 64))) (size!1945 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!866 0))(
  ( (LongMapFixedSize!867 (defaultEntry!772 Int) (mask!1411 (_ BitVec 32)) (extraKeys!679 (_ BitVec 32)) (zeroValue!689 V!916) (minValue!689 V!916) (_size!998 (_ BitVec 32)) (_keys!724 array!1621) (_values!711 array!1619) (_vacant!494 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1719 0))(
  ( (Cell!1720 (v!13456 LongMapFixedSize!866)) )
))
(declare-datatypes ((MutLongMap!433 0))(
  ( (LongMap!433 (underlying!1064 Cell!1719)) (MutLongMapExt!432 (__x!2232 Int)) )
))
(declare-fun thiss!47465 () MutLongMap!433)

(declare-fun array_inv!543 (array!1621) Bool)

(declare-fun array_inv!544 (array!1619) Bool)

(assert (=> b!128497 (= e!73877 (and tp!69963 tp_is_empty!1273 (array_inv!543 (_keys!724 (v!13456 (underlying!1064 thiss!47465)))) (array_inv!544 (_values!711 (v!13456 (underlying!1064 thiss!47465)))) e!73874))))

(declare-fun b!128498 () Bool)

(declare-fun e!73879 () Bool)

(assert (=> b!128498 (= e!73879 false)))

(declare-fun lt!38427 () V!916)

(declare-fun key!7065 () (_ BitVec 64))

(declare-fun apply!281 (MutLongMap!433 (_ BitVec 64)) V!916)

(assert (=> b!128498 (= lt!38427 (apply!281 thiss!47465 key!7065))))

(declare-fun mapIsEmpty!1675 () Bool)

(declare-fun mapRes!1675 () Bool)

(assert (=> mapIsEmpty!1675 mapRes!1675))

(declare-fun res!59229 () Bool)

(assert (=> start!13250 (=> (not res!59229) (not e!73879))))

(declare-fun valid!389 (MutLongMap!433) Bool)

(assert (=> start!13250 (= res!59229 (valid!389 thiss!47465))))

(assert (=> start!13250 e!73879))

(assert (=> start!13250 e!73875))

(assert (=> start!13250 true))

(declare-fun b!128495 () Bool)

(assert (=> b!128495 (= e!73874 (and tp_is_empty!1273 mapRes!1675))))

(declare-fun condMapEmpty!1675 () Bool)

(declare-fun mapDefault!1675 () V!916)

(assert (=> b!128495 (= condMapEmpty!1675 (= (arr!750 (_values!711 (v!13456 (underlying!1064 thiss!47465)))) ((as const (Array (_ BitVec 32) V!916)) mapDefault!1675)))))

(declare-fun b!128499 () Bool)

(assert (=> b!128499 (= e!73876 e!73877)))

(declare-fun b!128500 () Bool)

(declare-fun res!59230 () Bool)

(assert (=> b!128500 (=> (not res!59230) (not e!73879))))

(get-info :version)

(assert (=> b!128500 (= res!59230 ((_ is LongMap!433) thiss!47465))))

(declare-fun mapNonEmpty!1675 () Bool)

(declare-fun tp!69962 () Bool)

(assert (=> mapNonEmpty!1675 (= mapRes!1675 (and tp!69962 tp_is_empty!1273))))

(declare-fun mapKey!1675 () (_ BitVec 32))

(declare-fun mapRest!1675 () (Array (_ BitVec 32) V!916))

(declare-fun mapValue!1675 () V!916)

(assert (=> mapNonEmpty!1675 (= (arr!750 (_values!711 (v!13456 (underlying!1064 thiss!47465)))) (store mapRest!1675 mapKey!1675 mapValue!1675))))

(assert (= (and start!13250 res!59229) b!128500))

(assert (= (and b!128500 res!59230) b!128498))

(assert (= (and b!128495 condMapEmpty!1675) mapIsEmpty!1675))

(assert (= (and b!128495 (not condMapEmpty!1675)) mapNonEmpty!1675))

(assert (= b!128497 b!128495))

(assert (= b!128499 b!128497))

(assert (= b!128496 b!128499))

(assert (= (and start!13250 ((_ is LongMap!433) thiss!47465)) b!128496))

(declare-fun m!113159 () Bool)

(assert (=> b!128497 m!113159))

(declare-fun m!113161 () Bool)

(assert (=> b!128497 m!113161))

(declare-fun m!113163 () Bool)

(assert (=> b!128498 m!113163))

(declare-fun m!113165 () Bool)

(assert (=> start!13250 m!113165))

(declare-fun m!113167 () Bool)

(assert (=> mapNonEmpty!1675 m!113167))

(check-sat tp_is_empty!1273 (not b_next!3959) b_and!6089 (not start!13250) (not b!128497) (not b!128498) (not mapNonEmpty!1675))
(check-sat b_and!6089 (not b_next!3959))
