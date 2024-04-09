; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95838 () Bool)

(assert start!95838)

(declare-fun b_free!22455 () Bool)

(declare-fun b_next!22455 () Bool)

(assert (=> start!95838 (= b_free!22455 (not b_next!22455))))

(declare-fun tp!79214 () Bool)

(declare-fun b_and!35603 () Bool)

(assert (=> start!95838 (= tp!79214 b_and!35603)))

(declare-fun mapNonEmpty!41440 () Bool)

(declare-fun mapRes!41440 () Bool)

(declare-fun tp!79215 () Bool)

(declare-fun e!619286 () Bool)

(assert (=> mapNonEmpty!41440 (= mapRes!41440 (and tp!79215 e!619286))))

(declare-datatypes ((V!40403 0))(
  ( (V!40404 (val!13285 Int)) )
))
(declare-datatypes ((ValueCell!12519 0))(
  ( (ValueCellFull!12519 (v!15907 V!40403)) (EmptyCell!12519) )
))
(declare-fun mapRest!41440 () (Array (_ BitVec 32) ValueCell!12519))

(declare-datatypes ((array!69816 0))(
  ( (array!69817 (arr!33578 (Array (_ BitVec 32) ValueCell!12519)) (size!34115 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69816)

(declare-fun mapKey!41440 () (_ BitVec 32))

(declare-fun mapValue!41440 () ValueCell!12519)

(assert (=> mapNonEmpty!41440 (= (arr!33578 _values!874) (store mapRest!41440 mapKey!41440 mapValue!41440))))

(declare-fun b!1083807 () Bool)

(declare-fun res!722599 () Bool)

(declare-fun e!619287 () Bool)

(assert (=> b!1083807 (=> (not res!722599) (not e!619287))))

(declare-datatypes ((array!69818 0))(
  ( (array!69819 (arr!33579 (Array (_ BitVec 32) (_ BitVec 64))) (size!34116 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69818)

(declare-datatypes ((List!23540 0))(
  ( (Nil!23537) (Cons!23536 (h!24745 (_ BitVec 64)) (t!33060 List!23540)) )
))
(declare-fun arrayNoDuplicates!0 (array!69818 (_ BitVec 32) List!23540) Bool)

(assert (=> b!1083807 (= res!722599 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23537))))

(declare-fun res!722600 () Bool)

(assert (=> start!95838 (=> (not res!722600) (not e!619287))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95838 (= res!722600 (validMask!0 mask!1414))))

(assert (=> start!95838 e!619287))

(assert (=> start!95838 tp!79214))

(assert (=> start!95838 true))

(declare-fun tp_is_empty!26457 () Bool)

(assert (=> start!95838 tp_is_empty!26457))

(declare-fun array_inv!25766 (array!69818) Bool)

(assert (=> start!95838 (array_inv!25766 _keys!1070)))

(declare-fun e!619291 () Bool)

(declare-fun array_inv!25767 (array!69816) Bool)

(assert (=> start!95838 (and (array_inv!25767 _values!874) e!619291)))

(declare-fun b!1083808 () Bool)

(declare-fun res!722604 () Bool)

(declare-fun e!619290 () Bool)

(assert (=> b!1083808 (=> (not res!722604) (not e!619290))))

(declare-fun lt!480300 () array!69818)

(assert (=> b!1083808 (= res!722604 (arrayNoDuplicates!0 lt!480300 #b00000000000000000000000000000000 Nil!23537))))

(declare-fun b!1083809 () Bool)

(declare-fun res!722598 () Bool)

(assert (=> b!1083809 (=> (not res!722598) (not e!619287))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1083809 (= res!722598 (= (select (arr!33579 _keys!1070) i!650) k0!904))))

(declare-fun b!1083810 () Bool)

(assert (=> b!1083810 (= e!619286 tp_is_empty!26457)))

(declare-fun b!1083811 () Bool)

(declare-fun res!722601 () Bool)

(assert (=> b!1083811 (=> (not res!722601) (not e!619287))))

(assert (=> b!1083811 (= res!722601 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34116 _keys!1070))))))

(declare-fun b!1083812 () Bool)

(declare-fun e!619288 () Bool)

(assert (=> b!1083812 (= e!619291 (and e!619288 mapRes!41440))))

(declare-fun condMapEmpty!41440 () Bool)

(declare-fun mapDefault!41440 () ValueCell!12519)

(assert (=> b!1083812 (= condMapEmpty!41440 (= (arr!33578 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12519)) mapDefault!41440)))))

(declare-fun b!1083813 () Bool)

(declare-fun res!722606 () Bool)

(assert (=> b!1083813 (=> (not res!722606) (not e!619287))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69818 (_ BitVec 32)) Bool)

(assert (=> b!1083813 (= res!722606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1083814 () Bool)

(assert (=> b!1083814 (= e!619288 tp_is_empty!26457)))

(declare-fun b!1083815 () Bool)

(assert (=> b!1083815 (= e!619287 e!619290)))

(declare-fun res!722602 () Bool)

(assert (=> b!1083815 (=> (not res!722602) (not e!619290))))

(assert (=> b!1083815 (= res!722602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480300 mask!1414))))

(assert (=> b!1083815 (= lt!480300 (array!69819 (store (arr!33579 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34116 _keys!1070)))))

(declare-fun mapIsEmpty!41440 () Bool)

(assert (=> mapIsEmpty!41440 mapRes!41440))

(declare-fun b!1083816 () Bool)

(declare-fun res!722605 () Bool)

(assert (=> b!1083816 (=> (not res!722605) (not e!619287))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1083816 (= res!722605 (and (= (size!34115 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34116 _keys!1070) (size!34115 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1083817 () Bool)

(declare-fun res!722603 () Bool)

(assert (=> b!1083817 (=> (not res!722603) (not e!619287))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1083817 (= res!722603 (validKeyInArray!0 k0!904))))

(declare-fun b!1083818 () Bool)

(assert (=> b!1083818 (= e!619290 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40403)

(declare-datatypes ((tuple2!16900 0))(
  ( (tuple2!16901 (_1!8460 (_ BitVec 64)) (_2!8460 V!40403)) )
))
(declare-datatypes ((List!23541 0))(
  ( (Nil!23538) (Cons!23537 (h!24746 tuple2!16900) (t!33061 List!23541)) )
))
(declare-datatypes ((ListLongMap!14881 0))(
  ( (ListLongMap!14882 (toList!7456 List!23541)) )
))
(declare-fun lt!480296 () ListLongMap!14881)

(declare-fun lt!480299 () array!69816)

(declare-fun zeroValue!831 () V!40403)

(declare-fun getCurrentListMap!4215 (array!69818 array!69816 (_ BitVec 32) (_ BitVec 32) V!40403 V!40403 (_ BitVec 32) Int) ListLongMap!14881)

(assert (=> b!1083818 (= lt!480296 (getCurrentListMap!4215 lt!480300 lt!480299 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480298 () ListLongMap!14881)

(declare-fun lt!480302 () ListLongMap!14881)

(assert (=> b!1083818 (and (= lt!480298 lt!480302) (= lt!480302 lt!480298))))

(declare-fun lt!480295 () ListLongMap!14881)

(declare-fun -!738 (ListLongMap!14881 (_ BitVec 64)) ListLongMap!14881)

(assert (=> b!1083818 (= lt!480302 (-!738 lt!480295 k0!904))))

(declare-datatypes ((Unit!35591 0))(
  ( (Unit!35592) )
))
(declare-fun lt!480297 () Unit!35591)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!21 (array!69818 array!69816 (_ BitVec 32) (_ BitVec 32) V!40403 V!40403 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35591)

(assert (=> b!1083818 (= lt!480297 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!21 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3967 (array!69818 array!69816 (_ BitVec 32) (_ BitVec 32) V!40403 V!40403 (_ BitVec 32) Int) ListLongMap!14881)

(assert (=> b!1083818 (= lt!480298 (getCurrentListMapNoExtraKeys!3967 lt!480300 lt!480299 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2103 (Int (_ BitVec 64)) V!40403)

(assert (=> b!1083818 (= lt!480299 (array!69817 (store (arr!33578 _values!874) i!650 (ValueCellFull!12519 (dynLambda!2103 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34115 _values!874)))))

(assert (=> b!1083818 (= lt!480295 (getCurrentListMapNoExtraKeys!3967 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69818 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1083818 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!480301 () Unit!35591)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69818 (_ BitVec 64) (_ BitVec 32)) Unit!35591)

(assert (=> b!1083818 (= lt!480301 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(assert (= (and start!95838 res!722600) b!1083816))

(assert (= (and b!1083816 res!722605) b!1083813))

(assert (= (and b!1083813 res!722606) b!1083807))

(assert (= (and b!1083807 res!722599) b!1083811))

(assert (= (and b!1083811 res!722601) b!1083817))

(assert (= (and b!1083817 res!722603) b!1083809))

(assert (= (and b!1083809 res!722598) b!1083815))

(assert (= (and b!1083815 res!722602) b!1083808))

(assert (= (and b!1083808 res!722604) b!1083818))

(assert (= (and b!1083812 condMapEmpty!41440) mapIsEmpty!41440))

(assert (= (and b!1083812 (not condMapEmpty!41440)) mapNonEmpty!41440))

(get-info :version)

(assert (= (and mapNonEmpty!41440 ((_ is ValueCellFull!12519) mapValue!41440)) b!1083810))

(assert (= (and b!1083812 ((_ is ValueCellFull!12519) mapDefault!41440)) b!1083814))

(assert (= start!95838 b!1083812))

(declare-fun b_lambda!17155 () Bool)

(assert (=> (not b_lambda!17155) (not b!1083818)))

(declare-fun t!33059 () Bool)

(declare-fun tb!7341 () Bool)

(assert (=> (and start!95838 (= defaultEntry!882 defaultEntry!882) t!33059) tb!7341))

(declare-fun result!15193 () Bool)

(assert (=> tb!7341 (= result!15193 tp_is_empty!26457)))

(assert (=> b!1083818 t!33059))

(declare-fun b_and!35605 () Bool)

(assert (= b_and!35603 (and (=> t!33059 result!15193) b_and!35605)))

(declare-fun m!1001629 () Bool)

(assert (=> b!1083813 m!1001629))

(declare-fun m!1001631 () Bool)

(assert (=> b!1083818 m!1001631))

(declare-fun m!1001633 () Bool)

(assert (=> b!1083818 m!1001633))

(declare-fun m!1001635 () Bool)

(assert (=> b!1083818 m!1001635))

(declare-fun m!1001637 () Bool)

(assert (=> b!1083818 m!1001637))

(declare-fun m!1001639 () Bool)

(assert (=> b!1083818 m!1001639))

(declare-fun m!1001641 () Bool)

(assert (=> b!1083818 m!1001641))

(declare-fun m!1001643 () Bool)

(assert (=> b!1083818 m!1001643))

(declare-fun m!1001645 () Bool)

(assert (=> b!1083818 m!1001645))

(declare-fun m!1001647 () Bool)

(assert (=> b!1083818 m!1001647))

(declare-fun m!1001649 () Bool)

(assert (=> start!95838 m!1001649))

(declare-fun m!1001651 () Bool)

(assert (=> start!95838 m!1001651))

(declare-fun m!1001653 () Bool)

(assert (=> start!95838 m!1001653))

(declare-fun m!1001655 () Bool)

(assert (=> b!1083809 m!1001655))

(declare-fun m!1001657 () Bool)

(assert (=> b!1083808 m!1001657))

(declare-fun m!1001659 () Bool)

(assert (=> mapNonEmpty!41440 m!1001659))

(declare-fun m!1001661 () Bool)

(assert (=> b!1083817 m!1001661))

(declare-fun m!1001663 () Bool)

(assert (=> b!1083815 m!1001663))

(declare-fun m!1001665 () Bool)

(assert (=> b!1083815 m!1001665))

(declare-fun m!1001667 () Bool)

(assert (=> b!1083807 m!1001667))

(check-sat (not mapNonEmpty!41440) (not b!1083813) tp_is_empty!26457 (not b_next!22455) (not b!1083808) (not b!1083807) (not b_lambda!17155) b_and!35605 (not b!1083817) (not b!1083818) (not b!1083815) (not start!95838))
(check-sat b_and!35605 (not b_next!22455))
