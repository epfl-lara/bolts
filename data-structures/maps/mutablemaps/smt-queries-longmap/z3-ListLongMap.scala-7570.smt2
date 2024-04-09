; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95778 () Bool)

(assert start!95778)

(declare-fun b_free!22395 () Bool)

(declare-fun b_next!22395 () Bool)

(assert (=> start!95778 (= b_free!22395 (not b_next!22395))))

(declare-fun tp!79034 () Bool)

(declare-fun b_and!35483 () Bool)

(assert (=> start!95778 (= tp!79034 b_and!35483)))

(declare-fun b!1082667 () Bool)

(declare-fun e!618750 () Bool)

(declare-fun e!618748 () Bool)

(assert (=> b!1082667 (= e!618750 e!618748)))

(declare-fun res!721788 () Bool)

(assert (=> b!1082667 (=> (not res!721788) (not e!618748))))

(declare-datatypes ((array!69696 0))(
  ( (array!69697 (arr!33518 (Array (_ BitVec 32) (_ BitVec 64))) (size!34055 (_ BitVec 32))) )
))
(declare-fun lt!479709 () array!69696)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69696 (_ BitVec 32)) Bool)

(assert (=> b!1082667 (= res!721788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479709 mask!1414))))

(declare-fun _keys!1070 () array!69696)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1082667 (= lt!479709 (array!69697 (store (arr!33518 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34055 _keys!1070)))))

(declare-fun b!1082668 () Bool)

(declare-fun res!721793 () Bool)

(assert (=> b!1082668 (=> (not res!721793) (not e!618750))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1082668 (= res!721793 (validKeyInArray!0 k0!904))))

(declare-fun mapIsEmpty!41350 () Bool)

(declare-fun mapRes!41350 () Bool)

(assert (=> mapIsEmpty!41350 mapRes!41350))

(declare-fun b!1082669 () Bool)

(declare-fun e!618746 () Bool)

(declare-fun tp_is_empty!26397 () Bool)

(assert (=> b!1082669 (= e!618746 tp_is_empty!26397)))

(declare-fun b!1082670 () Bool)

(declare-fun res!721794 () Bool)

(assert (=> b!1082670 (=> (not res!721794) (not e!618750))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40323 0))(
  ( (V!40324 (val!13255 Int)) )
))
(declare-datatypes ((ValueCell!12489 0))(
  ( (ValueCellFull!12489 (v!15877 V!40323)) (EmptyCell!12489) )
))
(declare-datatypes ((array!69698 0))(
  ( (array!69699 (arr!33519 (Array (_ BitVec 32) ValueCell!12489)) (size!34056 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69698)

(assert (=> b!1082670 (= res!721794 (and (= (size!34056 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34055 _keys!1070) (size!34056 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1082671 () Bool)

(assert (=> b!1082671 (= e!618748 (not true))))

(declare-datatypes ((tuple2!16862 0))(
  ( (tuple2!16863 (_1!8441 (_ BitVec 64)) (_2!8441 V!40323)) )
))
(declare-datatypes ((List!23496 0))(
  ( (Nil!23493) (Cons!23492 (h!24701 tuple2!16862) (t!32956 List!23496)) )
))
(declare-datatypes ((ListLongMap!14843 0))(
  ( (ListLongMap!14844 (toList!7437 List!23496)) )
))
(declare-fun lt!479711 () ListLongMap!14843)

(declare-fun lt!479713 () ListLongMap!14843)

(assert (=> b!1082671 (and (= lt!479711 lt!479713) (= lt!479713 lt!479711))))

(declare-fun lt!479712 () ListLongMap!14843)

(declare-fun -!719 (ListLongMap!14843 (_ BitVec 64)) ListLongMap!14843)

(assert (=> b!1082671 (= lt!479713 (-!719 lt!479712 k0!904))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40323)

(declare-fun zeroValue!831 () V!40323)

(declare-datatypes ((Unit!35553 0))(
  ( (Unit!35554) )
))
(declare-fun lt!479710 () Unit!35553)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!2 (array!69696 array!69698 (_ BitVec 32) (_ BitVec 32) V!40323 V!40323 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35553)

(assert (=> b!1082671 (= lt!479710 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!2 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3948 (array!69696 array!69698 (_ BitVec 32) (_ BitVec 32) V!40323 V!40323 (_ BitVec 32) Int) ListLongMap!14843)

(declare-fun dynLambda!2084 (Int (_ BitVec 64)) V!40323)

(assert (=> b!1082671 (= lt!479711 (getCurrentListMapNoExtraKeys!3948 lt!479709 (array!69699 (store (arr!33519 _values!874) i!650 (ValueCellFull!12489 (dynLambda!2084 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34056 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1082671 (= lt!479712 (getCurrentListMapNoExtraKeys!3948 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69696 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1082671 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!479714 () Unit!35553)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69696 (_ BitVec 64) (_ BitVec 32)) Unit!35553)

(assert (=> b!1082671 (= lt!479714 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1082672 () Bool)

(declare-fun res!721796 () Bool)

(assert (=> b!1082672 (=> (not res!721796) (not e!618748))))

(declare-datatypes ((List!23497 0))(
  ( (Nil!23494) (Cons!23493 (h!24702 (_ BitVec 64)) (t!32957 List!23497)) )
))
(declare-fun arrayNoDuplicates!0 (array!69696 (_ BitVec 32) List!23497) Bool)

(assert (=> b!1082672 (= res!721796 (arrayNoDuplicates!0 lt!479709 #b00000000000000000000000000000000 Nil!23494))))

(declare-fun res!721790 () Bool)

(assert (=> start!95778 (=> (not res!721790) (not e!618750))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95778 (= res!721790 (validMask!0 mask!1414))))

(assert (=> start!95778 e!618750))

(assert (=> start!95778 tp!79034))

(assert (=> start!95778 true))

(assert (=> start!95778 tp_is_empty!26397))

(declare-fun array_inv!25732 (array!69696) Bool)

(assert (=> start!95778 (array_inv!25732 _keys!1070)))

(declare-fun e!618749 () Bool)

(declare-fun array_inv!25733 (array!69698) Bool)

(assert (=> start!95778 (and (array_inv!25733 _values!874) e!618749)))

(declare-fun b!1082673 () Bool)

(declare-fun res!721791 () Bool)

(assert (=> b!1082673 (=> (not res!721791) (not e!618750))))

(assert (=> b!1082673 (= res!721791 (= (select (arr!33518 _keys!1070) i!650) k0!904))))

(declare-fun mapNonEmpty!41350 () Bool)

(declare-fun tp!79035 () Bool)

(declare-fun e!618751 () Bool)

(assert (=> mapNonEmpty!41350 (= mapRes!41350 (and tp!79035 e!618751))))

(declare-fun mapKey!41350 () (_ BitVec 32))

(declare-fun mapRest!41350 () (Array (_ BitVec 32) ValueCell!12489))

(declare-fun mapValue!41350 () ValueCell!12489)

(assert (=> mapNonEmpty!41350 (= (arr!33519 _values!874) (store mapRest!41350 mapKey!41350 mapValue!41350))))

(declare-fun b!1082674 () Bool)

(declare-fun res!721795 () Bool)

(assert (=> b!1082674 (=> (not res!721795) (not e!618750))))

(assert (=> b!1082674 (= res!721795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1082675 () Bool)

(assert (=> b!1082675 (= e!618749 (and e!618746 mapRes!41350))))

(declare-fun condMapEmpty!41350 () Bool)

(declare-fun mapDefault!41350 () ValueCell!12489)

(assert (=> b!1082675 (= condMapEmpty!41350 (= (arr!33519 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12489)) mapDefault!41350)))))

(declare-fun b!1082676 () Bool)

(declare-fun res!721789 () Bool)

(assert (=> b!1082676 (=> (not res!721789) (not e!618750))))

(assert (=> b!1082676 (= res!721789 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23494))))

(declare-fun b!1082677 () Bool)

(declare-fun res!721792 () Bool)

(assert (=> b!1082677 (=> (not res!721792) (not e!618750))))

(assert (=> b!1082677 (= res!721792 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34055 _keys!1070))))))

(declare-fun b!1082678 () Bool)

(assert (=> b!1082678 (= e!618751 tp_is_empty!26397)))

(assert (= (and start!95778 res!721790) b!1082670))

(assert (= (and b!1082670 res!721794) b!1082674))

(assert (= (and b!1082674 res!721795) b!1082676))

(assert (= (and b!1082676 res!721789) b!1082677))

(assert (= (and b!1082677 res!721792) b!1082668))

(assert (= (and b!1082668 res!721793) b!1082673))

(assert (= (and b!1082673 res!721791) b!1082667))

(assert (= (and b!1082667 res!721788) b!1082672))

(assert (= (and b!1082672 res!721796) b!1082671))

(assert (= (and b!1082675 condMapEmpty!41350) mapIsEmpty!41350))

(assert (= (and b!1082675 (not condMapEmpty!41350)) mapNonEmpty!41350))

(get-info :version)

(assert (= (and mapNonEmpty!41350 ((_ is ValueCellFull!12489) mapValue!41350)) b!1082678))

(assert (= (and b!1082675 ((_ is ValueCellFull!12489) mapDefault!41350)) b!1082669))

(assert (= start!95778 b!1082675))

(declare-fun b_lambda!17095 () Bool)

(assert (=> (not b_lambda!17095) (not b!1082671)))

(declare-fun t!32955 () Bool)

(declare-fun tb!7281 () Bool)

(assert (=> (and start!95778 (= defaultEntry!882 defaultEntry!882) t!32955) tb!7281))

(declare-fun result!15073 () Bool)

(assert (=> tb!7281 (= result!15073 tp_is_empty!26397)))

(assert (=> b!1082671 t!32955))

(declare-fun b_and!35485 () Bool)

(assert (= b_and!35483 (and (=> t!32955 result!15073) b_and!35485)))

(declare-fun m!1000475 () Bool)

(assert (=> b!1082671 m!1000475))

(declare-fun m!1000477 () Bool)

(assert (=> b!1082671 m!1000477))

(declare-fun m!1000479 () Bool)

(assert (=> b!1082671 m!1000479))

(declare-fun m!1000481 () Bool)

(assert (=> b!1082671 m!1000481))

(declare-fun m!1000483 () Bool)

(assert (=> b!1082671 m!1000483))

(declare-fun m!1000485 () Bool)

(assert (=> b!1082671 m!1000485))

(declare-fun m!1000487 () Bool)

(assert (=> b!1082671 m!1000487))

(declare-fun m!1000489 () Bool)

(assert (=> b!1082671 m!1000489))

(declare-fun m!1000491 () Bool)

(assert (=> b!1082667 m!1000491))

(declare-fun m!1000493 () Bool)

(assert (=> b!1082667 m!1000493))

(declare-fun m!1000495 () Bool)

(assert (=> b!1082674 m!1000495))

(declare-fun m!1000497 () Bool)

(assert (=> start!95778 m!1000497))

(declare-fun m!1000499 () Bool)

(assert (=> start!95778 m!1000499))

(declare-fun m!1000501 () Bool)

(assert (=> start!95778 m!1000501))

(declare-fun m!1000503 () Bool)

(assert (=> b!1082673 m!1000503))

(declare-fun m!1000505 () Bool)

(assert (=> b!1082668 m!1000505))

(declare-fun m!1000507 () Bool)

(assert (=> b!1082676 m!1000507))

(declare-fun m!1000509 () Bool)

(assert (=> b!1082672 m!1000509))

(declare-fun m!1000511 () Bool)

(assert (=> mapNonEmpty!41350 m!1000511))

(check-sat (not b!1082674) (not mapNonEmpty!41350) (not b!1082672) (not b!1082668) (not b!1082667) (not start!95778) tp_is_empty!26397 b_and!35485 (not b_next!22395) (not b_lambda!17095) (not b!1082671) (not b!1082676))
(check-sat b_and!35485 (not b_next!22395))
