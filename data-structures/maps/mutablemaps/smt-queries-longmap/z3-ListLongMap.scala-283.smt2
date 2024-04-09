; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4638 () Bool)

(assert start!4638)

(declare-fun b_free!1287 () Bool)

(declare-fun b_next!1287 () Bool)

(assert (=> start!4638 (= b_free!1287 (not b_next!1287))))

(declare-fun tp!5312 () Bool)

(declare-fun b_and!2123 () Bool)

(assert (=> start!4638 (= tp!5312 b_and!2123)))

(declare-fun b!36287 () Bool)

(declare-fun e!22914 () Bool)

(declare-fun tp_is_empty!1641 () Bool)

(assert (=> b!36287 (= e!22914 tp_is_empty!1641)))

(declare-fun b!36288 () Bool)

(declare-fun e!22913 () Bool)

(assert (=> b!36288 (= e!22913 tp_is_empty!1641)))

(declare-fun mapIsEmpty!2021 () Bool)

(declare-fun mapRes!2021 () Bool)

(assert (=> mapIsEmpty!2021 mapRes!2021))

(declare-fun b!36289 () Bool)

(declare-fun res!21944 () Bool)

(declare-fun e!22916 () Bool)

(assert (=> b!36289 (=> (not res!21944) (not e!22916))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!36289 (= res!21944 (validKeyInArray!0 k0!1304))))

(declare-fun b!36290 () Bool)

(declare-fun res!21945 () Bool)

(assert (=> b!36290 (=> (not res!21945) (not e!22916))))

(declare-datatypes ((array!2495 0))(
  ( (array!2496 (arr!1191 (Array (_ BitVec 32) (_ BitVec 64))) (size!1292 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2495)

(declare-datatypes ((List!966 0))(
  ( (Nil!963) (Cons!962 (h!1530 (_ BitVec 64)) (t!3681 List!966)) )
))
(declare-fun arrayNoDuplicates!0 (array!2495 (_ BitVec 32) List!966) Bool)

(assert (=> b!36290 (= res!21945 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!963))))

(declare-fun b!36291 () Bool)

(assert (=> b!36291 (= e!22916 false)))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!2013 0))(
  ( (V!2014 (val!847 Int)) )
))
(declare-datatypes ((ValueCell!621 0))(
  ( (ValueCellFull!621 (v!1947 V!2013)) (EmptyCell!621) )
))
(declare-datatypes ((array!2497 0))(
  ( (array!2498 (arr!1192 (Array (_ BitVec 32) ValueCell!621)) (size!1293 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2497)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun lt!13453 () Bool)

(declare-fun zeroValue!1443 () V!2013)

(declare-fun minValue!1443 () V!2013)

(declare-datatypes ((tuple2!1360 0))(
  ( (tuple2!1361 (_1!690 (_ BitVec 64)) (_2!690 V!2013)) )
))
(declare-datatypes ((List!967 0))(
  ( (Nil!964) (Cons!963 (h!1531 tuple2!1360) (t!3682 List!967)) )
))
(declare-datatypes ((ListLongMap!941 0))(
  ( (ListLongMap!942 (toList!486 List!967)) )
))
(declare-fun contains!434 (ListLongMap!941 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!307 (array!2495 array!2497 (_ BitVec 32) (_ BitVec 32) V!2013 V!2013 (_ BitVec 32) Int) ListLongMap!941)

(assert (=> b!36291 (= lt!13453 (contains!434 (getCurrentListMap!307 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304))))

(declare-fun res!21946 () Bool)

(assert (=> start!4638 (=> (not res!21946) (not e!22916))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4638 (= res!21946 (validMask!0 mask!2294))))

(assert (=> start!4638 e!22916))

(assert (=> start!4638 true))

(assert (=> start!4638 tp!5312))

(declare-fun e!22917 () Bool)

(declare-fun array_inv!785 (array!2497) Bool)

(assert (=> start!4638 (and (array_inv!785 _values!1501) e!22917)))

(declare-fun array_inv!786 (array!2495) Bool)

(assert (=> start!4638 (array_inv!786 _keys!1833)))

(assert (=> start!4638 tp_is_empty!1641))

(declare-fun b!36292 () Bool)

(declare-fun res!21942 () Bool)

(assert (=> b!36292 (=> (not res!21942) (not e!22916))))

(assert (=> b!36292 (= res!21942 (and (= (size!1293 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1292 _keys!1833) (size!1293 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!36293 () Bool)

(declare-fun res!21943 () Bool)

(assert (=> b!36293 (=> (not res!21943) (not e!22916))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2495 (_ BitVec 32)) Bool)

(assert (=> b!36293 (= res!21943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapNonEmpty!2021 () Bool)

(declare-fun tp!5311 () Bool)

(assert (=> mapNonEmpty!2021 (= mapRes!2021 (and tp!5311 e!22913))))

(declare-fun mapValue!2021 () ValueCell!621)

(declare-fun mapRest!2021 () (Array (_ BitVec 32) ValueCell!621))

(declare-fun mapKey!2021 () (_ BitVec 32))

(assert (=> mapNonEmpty!2021 (= (arr!1192 _values!1501) (store mapRest!2021 mapKey!2021 mapValue!2021))))

(declare-fun b!36294 () Bool)

(assert (=> b!36294 (= e!22917 (and e!22914 mapRes!2021))))

(declare-fun condMapEmpty!2021 () Bool)

(declare-fun mapDefault!2021 () ValueCell!621)

(assert (=> b!36294 (= condMapEmpty!2021 (= (arr!1192 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!621)) mapDefault!2021)))))

(assert (= (and start!4638 res!21946) b!36292))

(assert (= (and b!36292 res!21942) b!36293))

(assert (= (and b!36293 res!21943) b!36290))

(assert (= (and b!36290 res!21945) b!36289))

(assert (= (and b!36289 res!21944) b!36291))

(assert (= (and b!36294 condMapEmpty!2021) mapIsEmpty!2021))

(assert (= (and b!36294 (not condMapEmpty!2021)) mapNonEmpty!2021))

(get-info :version)

(assert (= (and mapNonEmpty!2021 ((_ is ValueCellFull!621) mapValue!2021)) b!36288))

(assert (= (and b!36294 ((_ is ValueCellFull!621) mapDefault!2021)) b!36287))

(assert (= start!4638 b!36294))

(declare-fun m!29261 () Bool)

(assert (=> mapNonEmpty!2021 m!29261))

(declare-fun m!29263 () Bool)

(assert (=> start!4638 m!29263))

(declare-fun m!29265 () Bool)

(assert (=> start!4638 m!29265))

(declare-fun m!29267 () Bool)

(assert (=> start!4638 m!29267))

(declare-fun m!29269 () Bool)

(assert (=> b!36290 m!29269))

(declare-fun m!29271 () Bool)

(assert (=> b!36291 m!29271))

(assert (=> b!36291 m!29271))

(declare-fun m!29273 () Bool)

(assert (=> b!36291 m!29273))

(declare-fun m!29275 () Bool)

(assert (=> b!36289 m!29275))

(declare-fun m!29277 () Bool)

(assert (=> b!36293 m!29277))

(check-sat (not b!36289) b_and!2123 (not b!36290) (not b!36293) (not start!4638) (not b!36291) tp_is_empty!1641 (not b_next!1287) (not mapNonEmpty!2021))
(check-sat b_and!2123 (not b_next!1287))
