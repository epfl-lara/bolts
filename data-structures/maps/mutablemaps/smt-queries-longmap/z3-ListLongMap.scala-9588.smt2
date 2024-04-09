; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113428 () Bool)

(assert start!113428)

(declare-fun b_free!31443 () Bool)

(declare-fun b_next!31443 () Bool)

(assert (=> start!113428 (= b_free!31443 (not b_next!31443))))

(declare-fun tp!110134 () Bool)

(declare-fun b_and!50741 () Bool)

(assert (=> start!113428 (= tp!110134 b_and!50741)))

(declare-fun mapNonEmpty!57871 () Bool)

(declare-fun mapRes!57871 () Bool)

(declare-fun tp!110135 () Bool)

(declare-fun e!765857 () Bool)

(assert (=> mapNonEmpty!57871 (= mapRes!57871 (and tp!110135 e!765857))))

(declare-fun mapKey!57871 () (_ BitVec 32))

(declare-datatypes ((V!55027 0))(
  ( (V!55028 (val!18796 Int)) )
))
(declare-datatypes ((ValueCell!17823 0))(
  ( (ValueCellFull!17823 (v!21442 V!55027)) (EmptyCell!17823) )
))
(declare-fun mapValue!57871 () ValueCell!17823)

(declare-datatypes ((array!91683 0))(
  ( (array!91684 (arr!44293 (Array (_ BitVec 32) ValueCell!17823)) (size!44844 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91683)

(declare-fun mapRest!57871 () (Array (_ BitVec 32) ValueCell!17823))

(assert (=> mapNonEmpty!57871 (= (arr!44293 _values!1303) (store mapRest!57871 mapKey!57871 mapValue!57871))))

(declare-fun mapIsEmpty!57871 () Bool)

(assert (=> mapIsEmpty!57871 mapRes!57871))

(declare-fun b!1345958 () Bool)

(declare-fun e!765853 () Bool)

(declare-fun e!765856 () Bool)

(assert (=> b!1345958 (= e!765853 (and e!765856 mapRes!57871))))

(declare-fun condMapEmpty!57871 () Bool)

(declare-fun mapDefault!57871 () ValueCell!17823)

(assert (=> b!1345958 (= condMapEmpty!57871 (= (arr!44293 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17823)) mapDefault!57871)))))

(declare-fun b!1345959 () Bool)

(declare-fun res!893207 () Bool)

(declare-fun e!765855 () Bool)

(assert (=> b!1345959 (=> (not res!893207) (not e!765855))))

(declare-datatypes ((array!91685 0))(
  ( (array!91686 (arr!44294 (Array (_ BitVec 32) (_ BitVec 64))) (size!44845 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91685)

(declare-datatypes ((List!31541 0))(
  ( (Nil!31538) (Cons!31537 (h!32746 (_ BitVec 64)) (t!46138 List!31541)) )
))
(declare-fun arrayNoDuplicates!0 (array!91685 (_ BitVec 32) List!31541) Bool)

(assert (=> b!1345959 (= res!893207 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31538))))

(declare-fun b!1345960 () Bool)

(declare-fun tp_is_empty!37443 () Bool)

(assert (=> b!1345960 (= e!765857 tp_is_empty!37443)))

(declare-fun b!1345961 () Bool)

(declare-fun res!893210 () Bool)

(assert (=> b!1345961 (=> (not res!893210) (not e!765855))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91685 (_ BitVec 32)) Bool)

(assert (=> b!1345961 (= res!893210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1345962 () Bool)

(assert (=> b!1345962 (= e!765855 false)))

(declare-fun minValue!1245 () V!55027)

(declare-fun zeroValue!1245 () V!55027)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun lt!595399 () Bool)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24370 0))(
  ( (tuple2!24371 (_1!12195 (_ BitVec 64)) (_2!12195 V!55027)) )
))
(declare-datatypes ((List!31542 0))(
  ( (Nil!31539) (Cons!31538 (h!32747 tuple2!24370) (t!46139 List!31542)) )
))
(declare-datatypes ((ListLongMap!22039 0))(
  ( (ListLongMap!22040 (toList!11035 List!31542)) )
))
(declare-fun contains!9147 (ListLongMap!22039 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5926 (array!91685 array!91683 (_ BitVec 32) (_ BitVec 32) V!55027 V!55027 (_ BitVec 32) Int) ListLongMap!22039)

(assert (=> b!1345962 (= lt!595399 (contains!9147 (getCurrentListMap!5926 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1345963 () Bool)

(declare-fun res!893208 () Bool)

(assert (=> b!1345963 (=> (not res!893208) (not e!765855))))

(assert (=> b!1345963 (= res!893208 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44845 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1345964 () Bool)

(assert (=> b!1345964 (= e!765856 tp_is_empty!37443)))

(declare-fun res!893209 () Bool)

(assert (=> start!113428 (=> (not res!893209) (not e!765855))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113428 (= res!893209 (validMask!0 mask!1977))))

(assert (=> start!113428 e!765855))

(assert (=> start!113428 tp_is_empty!37443))

(assert (=> start!113428 true))

(declare-fun array_inv!33291 (array!91685) Bool)

(assert (=> start!113428 (array_inv!33291 _keys!1571)))

(declare-fun array_inv!33292 (array!91683) Bool)

(assert (=> start!113428 (and (array_inv!33292 _values!1303) e!765853)))

(assert (=> start!113428 tp!110134))

(declare-fun b!1345957 () Bool)

(declare-fun res!893206 () Bool)

(assert (=> b!1345957 (=> (not res!893206) (not e!765855))))

(assert (=> b!1345957 (= res!893206 (and (= (size!44844 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44845 _keys!1571) (size!44844 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(assert (= (and start!113428 res!893209) b!1345957))

(assert (= (and b!1345957 res!893206) b!1345961))

(assert (= (and b!1345961 res!893210) b!1345959))

(assert (= (and b!1345959 res!893207) b!1345963))

(assert (= (and b!1345963 res!893208) b!1345962))

(assert (= (and b!1345958 condMapEmpty!57871) mapIsEmpty!57871))

(assert (= (and b!1345958 (not condMapEmpty!57871)) mapNonEmpty!57871))

(get-info :version)

(assert (= (and mapNonEmpty!57871 ((_ is ValueCellFull!17823) mapValue!57871)) b!1345960))

(assert (= (and b!1345958 ((_ is ValueCellFull!17823) mapDefault!57871)) b!1345964))

(assert (= start!113428 b!1345958))

(declare-fun m!1233275 () Bool)

(assert (=> start!113428 m!1233275))

(declare-fun m!1233277 () Bool)

(assert (=> start!113428 m!1233277))

(declare-fun m!1233279 () Bool)

(assert (=> start!113428 m!1233279))

(declare-fun m!1233281 () Bool)

(assert (=> b!1345959 m!1233281))

(declare-fun m!1233283 () Bool)

(assert (=> b!1345961 m!1233283))

(declare-fun m!1233285 () Bool)

(assert (=> b!1345962 m!1233285))

(assert (=> b!1345962 m!1233285))

(declare-fun m!1233287 () Bool)

(assert (=> b!1345962 m!1233287))

(declare-fun m!1233289 () Bool)

(assert (=> mapNonEmpty!57871 m!1233289))

(check-sat b_and!50741 (not b!1345959) (not b!1345961) (not start!113428) (not mapNonEmpty!57871) (not b!1345962) (not b_next!31443) tp_is_empty!37443)
(check-sat b_and!50741 (not b_next!31443))
