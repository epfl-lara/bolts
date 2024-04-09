; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108446 () Bool)

(assert start!108446)

(declare-fun b_free!27957 () Bool)

(declare-fun b_next!27957 () Bool)

(assert (=> start!108446 (= b_free!27957 (not b_next!27957))))

(declare-fun tp!98981 () Bool)

(declare-fun b_and!46027 () Bool)

(assert (=> start!108446 (= tp!98981 b_and!46027)))

(declare-fun b!1279390 () Bool)

(declare-fun e!731018 () Bool)

(declare-fun tp_is_empty!33597 () Bool)

(assert (=> b!1279390 (= e!731018 tp_is_empty!33597)))

(declare-fun b!1279391 () Bool)

(declare-fun e!731020 () Bool)

(assert (=> b!1279391 (= e!731020 tp_is_empty!33597)))

(declare-fun b!1279392 () Bool)

(declare-fun res!849962 () Bool)

(declare-fun e!731016 () Bool)

(assert (=> b!1279392 (=> (not res!849962) (not e!731016))))

(declare-datatypes ((array!84229 0))(
  ( (array!84230 (arr!40614 (Array (_ BitVec 32) (_ BitVec 64))) (size!41165 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84229)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84229 (_ BitVec 32)) Bool)

(assert (=> b!1279392 (= res!849962 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!51947 () Bool)

(declare-fun mapRes!51947 () Bool)

(assert (=> mapIsEmpty!51947 mapRes!51947))

(declare-fun b!1279394 () Bool)

(assert (=> b!1279394 (= e!731016 false)))

(declare-datatypes ((V!49899 0))(
  ( (V!49900 (val!16873 Int)) )
))
(declare-fun minValue!1387 () V!49899)

(declare-fun zeroValue!1387 () V!49899)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!575953 () Bool)

(declare-datatypes ((ValueCell!15900 0))(
  ( (ValueCellFull!15900 (v!19471 V!49899)) (EmptyCell!15900) )
))
(declare-datatypes ((array!84231 0))(
  ( (array!84232 (arr!40615 (Array (_ BitVec 32) ValueCell!15900)) (size!41166 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84231)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21738 0))(
  ( (tuple2!21739 (_1!10879 (_ BitVec 64)) (_2!10879 V!49899)) )
))
(declare-datatypes ((List!28948 0))(
  ( (Nil!28945) (Cons!28944 (h!30153 tuple2!21738) (t!42495 List!28948)) )
))
(declare-datatypes ((ListLongMap!19407 0))(
  ( (ListLongMap!19408 (toList!9719 List!28948)) )
))
(declare-fun contains!7772 (ListLongMap!19407 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4739 (array!84229 array!84231 (_ BitVec 32) (_ BitVec 32) V!49899 V!49899 (_ BitVec 32) Int) ListLongMap!19407)

(assert (=> b!1279394 (= lt!575953 (contains!7772 (getCurrentListMap!4739 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1279395 () Bool)

(declare-fun res!849960 () Bool)

(assert (=> b!1279395 (=> (not res!849960) (not e!731016))))

(assert (=> b!1279395 (= res!849960 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41165 _keys!1741))))))

(declare-fun mapNonEmpty!51947 () Bool)

(declare-fun tp!98982 () Bool)

(assert (=> mapNonEmpty!51947 (= mapRes!51947 (and tp!98982 e!731018))))

(declare-fun mapValue!51947 () ValueCell!15900)

(declare-fun mapRest!51947 () (Array (_ BitVec 32) ValueCell!15900))

(declare-fun mapKey!51947 () (_ BitVec 32))

(assert (=> mapNonEmpty!51947 (= (arr!40615 _values!1445) (store mapRest!51947 mapKey!51947 mapValue!51947))))

(declare-fun res!849958 () Bool)

(assert (=> start!108446 (=> (not res!849958) (not e!731016))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108446 (= res!849958 (validMask!0 mask!2175))))

(assert (=> start!108446 e!731016))

(assert (=> start!108446 tp_is_empty!33597))

(assert (=> start!108446 true))

(declare-fun e!731019 () Bool)

(declare-fun array_inv!30811 (array!84231) Bool)

(assert (=> start!108446 (and (array_inv!30811 _values!1445) e!731019)))

(declare-fun array_inv!30812 (array!84229) Bool)

(assert (=> start!108446 (array_inv!30812 _keys!1741)))

(assert (=> start!108446 tp!98981))

(declare-fun b!1279393 () Bool)

(declare-fun res!849961 () Bool)

(assert (=> b!1279393 (=> (not res!849961) (not e!731016))))

(declare-datatypes ((List!28949 0))(
  ( (Nil!28946) (Cons!28945 (h!30154 (_ BitVec 64)) (t!42496 List!28949)) )
))
(declare-fun arrayNoDuplicates!0 (array!84229 (_ BitVec 32) List!28949) Bool)

(assert (=> b!1279393 (= res!849961 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28946))))

(declare-fun b!1279396 () Bool)

(declare-fun res!849959 () Bool)

(assert (=> b!1279396 (=> (not res!849959) (not e!731016))))

(assert (=> b!1279396 (= res!849959 (and (= (size!41166 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41165 _keys!1741) (size!41166 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1279397 () Bool)

(assert (=> b!1279397 (= e!731019 (and e!731020 mapRes!51947))))

(declare-fun condMapEmpty!51947 () Bool)

(declare-fun mapDefault!51947 () ValueCell!15900)

(assert (=> b!1279397 (= condMapEmpty!51947 (= (arr!40615 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15900)) mapDefault!51947)))))

(assert (= (and start!108446 res!849958) b!1279396))

(assert (= (and b!1279396 res!849959) b!1279392))

(assert (= (and b!1279392 res!849962) b!1279393))

(assert (= (and b!1279393 res!849961) b!1279395))

(assert (= (and b!1279395 res!849960) b!1279394))

(assert (= (and b!1279397 condMapEmpty!51947) mapIsEmpty!51947))

(assert (= (and b!1279397 (not condMapEmpty!51947)) mapNonEmpty!51947))

(get-info :version)

(assert (= (and mapNonEmpty!51947 ((_ is ValueCellFull!15900) mapValue!51947)) b!1279390))

(assert (= (and b!1279397 ((_ is ValueCellFull!15900) mapDefault!51947)) b!1279391))

(assert (= start!108446 b!1279397))

(declare-fun m!1174383 () Bool)

(assert (=> start!108446 m!1174383))

(declare-fun m!1174385 () Bool)

(assert (=> start!108446 m!1174385))

(declare-fun m!1174387 () Bool)

(assert (=> start!108446 m!1174387))

(declare-fun m!1174389 () Bool)

(assert (=> b!1279394 m!1174389))

(assert (=> b!1279394 m!1174389))

(declare-fun m!1174391 () Bool)

(assert (=> b!1279394 m!1174391))

(declare-fun m!1174393 () Bool)

(assert (=> mapNonEmpty!51947 m!1174393))

(declare-fun m!1174395 () Bool)

(assert (=> b!1279392 m!1174395))

(declare-fun m!1174397 () Bool)

(assert (=> b!1279393 m!1174397))

(check-sat (not b!1279394) (not b!1279392) (not start!108446) (not b!1279393) (not b_next!27957) tp_is_empty!33597 b_and!46027 (not mapNonEmpty!51947))
(check-sat b_and!46027 (not b_next!27957))
