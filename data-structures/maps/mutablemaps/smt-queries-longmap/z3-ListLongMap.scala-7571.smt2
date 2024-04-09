; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95784 () Bool)

(assert start!95784)

(declare-fun b_free!22401 () Bool)

(declare-fun b_next!22401 () Bool)

(assert (=> start!95784 (= b_free!22401 (not b_next!22401))))

(declare-fun tp!79053 () Bool)

(declare-fun b_and!35495 () Bool)

(assert (=> start!95784 (= tp!79053 b_and!35495)))

(declare-fun b!1082781 () Bool)

(declare-fun e!618805 () Bool)

(declare-fun e!618800 () Bool)

(declare-fun mapRes!41359 () Bool)

(assert (=> b!1082781 (= e!618805 (and e!618800 mapRes!41359))))

(declare-fun condMapEmpty!41359 () Bool)

(declare-datatypes ((V!40331 0))(
  ( (V!40332 (val!13258 Int)) )
))
(declare-datatypes ((ValueCell!12492 0))(
  ( (ValueCellFull!12492 (v!15880 V!40331)) (EmptyCell!12492) )
))
(declare-datatypes ((array!69708 0))(
  ( (array!69709 (arr!33524 (Array (_ BitVec 32) ValueCell!12492)) (size!34061 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69708)

(declare-fun mapDefault!41359 () ValueCell!12492)

(assert (=> b!1082781 (= condMapEmpty!41359 (= (arr!33524 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12492)) mapDefault!41359)))))

(declare-fun res!721873 () Bool)

(declare-fun e!618802 () Bool)

(assert (=> start!95784 (=> (not res!721873) (not e!618802))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95784 (= res!721873 (validMask!0 mask!1414))))

(assert (=> start!95784 e!618802))

(assert (=> start!95784 tp!79053))

(assert (=> start!95784 true))

(declare-fun tp_is_empty!26403 () Bool)

(assert (=> start!95784 tp_is_empty!26403))

(declare-datatypes ((array!69710 0))(
  ( (array!69711 (arr!33525 (Array (_ BitVec 32) (_ BitVec 64))) (size!34062 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69710)

(declare-fun array_inv!25736 (array!69710) Bool)

(assert (=> start!95784 (array_inv!25736 _keys!1070)))

(declare-fun array_inv!25737 (array!69708) Bool)

(assert (=> start!95784 (and (array_inv!25737 _values!874) e!618805)))

(declare-fun b!1082782 () Bool)

(declare-fun e!618803 () Bool)

(assert (=> b!1082782 (= e!618803 tp_is_empty!26403)))

(declare-fun b!1082783 () Bool)

(declare-fun res!721870 () Bool)

(assert (=> b!1082783 (=> (not res!721870) (not e!618802))))

(declare-datatypes ((List!23499 0))(
  ( (Nil!23496) (Cons!23495 (h!24704 (_ BitVec 64)) (t!32965 List!23499)) )
))
(declare-fun arrayNoDuplicates!0 (array!69710 (_ BitVec 32) List!23499) Bool)

(assert (=> b!1082783 (= res!721870 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23496))))

(declare-fun b!1082784 () Bool)

(assert (=> b!1082784 (= e!618800 tp_is_empty!26403)))

(declare-fun b!1082785 () Bool)

(declare-fun res!721871 () Bool)

(assert (=> b!1082785 (=> (not res!721871) (not e!618802))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1082785 (= res!721871 (validKeyInArray!0 k0!904))))

(declare-fun b!1082786 () Bool)

(declare-fun res!721875 () Bool)

(assert (=> b!1082786 (=> (not res!721875) (not e!618802))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1082786 (= res!721875 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34062 _keys!1070))))))

(declare-fun b!1082787 () Bool)

(declare-fun res!721876 () Bool)

(assert (=> b!1082787 (=> (not res!721876) (not e!618802))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1082787 (= res!721876 (and (= (size!34061 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34062 _keys!1070) (size!34061 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!41359 () Bool)

(declare-fun tp!79052 () Bool)

(assert (=> mapNonEmpty!41359 (= mapRes!41359 (and tp!79052 e!618803))))

(declare-fun mapValue!41359 () ValueCell!12492)

(declare-fun mapRest!41359 () (Array (_ BitVec 32) ValueCell!12492))

(declare-fun mapKey!41359 () (_ BitVec 32))

(assert (=> mapNonEmpty!41359 (= (arr!33524 _values!874) (store mapRest!41359 mapKey!41359 mapValue!41359))))

(declare-fun b!1082788 () Bool)

(declare-fun res!721874 () Bool)

(declare-fun e!618804 () Bool)

(assert (=> b!1082788 (=> (not res!721874) (not e!618804))))

(declare-fun lt!479764 () array!69710)

(assert (=> b!1082788 (= res!721874 (arrayNoDuplicates!0 lt!479764 #b00000000000000000000000000000000 Nil!23496))))

(declare-fun b!1082789 () Bool)

(declare-fun res!721877 () Bool)

(assert (=> b!1082789 (=> (not res!721877) (not e!618802))))

(assert (=> b!1082789 (= res!721877 (= (select (arr!33525 _keys!1070) i!650) k0!904))))

(declare-fun b!1082790 () Bool)

(assert (=> b!1082790 (= e!618804 (not true))))

(declare-datatypes ((tuple2!16864 0))(
  ( (tuple2!16865 (_1!8442 (_ BitVec 64)) (_2!8442 V!40331)) )
))
(declare-datatypes ((List!23500 0))(
  ( (Nil!23497) (Cons!23496 (h!24705 tuple2!16864) (t!32966 List!23500)) )
))
(declare-datatypes ((ListLongMap!14845 0))(
  ( (ListLongMap!14846 (toList!7438 List!23500)) )
))
(declare-fun lt!479763 () ListLongMap!14845)

(declare-fun lt!479768 () ListLongMap!14845)

(assert (=> b!1082790 (and (= lt!479763 lt!479768) (= lt!479768 lt!479763))))

(declare-fun lt!479765 () ListLongMap!14845)

(declare-fun -!720 (ListLongMap!14845 (_ BitVec 64)) ListLongMap!14845)

(assert (=> b!1082790 (= lt!479768 (-!720 lt!479765 k0!904))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40331)

(declare-datatypes ((Unit!35555 0))(
  ( (Unit!35556) )
))
(declare-fun lt!479766 () Unit!35555)

(declare-fun zeroValue!831 () V!40331)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!3 (array!69710 array!69708 (_ BitVec 32) (_ BitVec 32) V!40331 V!40331 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35555)

(assert (=> b!1082790 (= lt!479766 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!3 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3949 (array!69710 array!69708 (_ BitVec 32) (_ BitVec 32) V!40331 V!40331 (_ BitVec 32) Int) ListLongMap!14845)

(declare-fun dynLambda!2085 (Int (_ BitVec 64)) V!40331)

(assert (=> b!1082790 (= lt!479763 (getCurrentListMapNoExtraKeys!3949 lt!479764 (array!69709 (store (arr!33524 _values!874) i!650 (ValueCellFull!12492 (dynLambda!2085 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34061 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1082790 (= lt!479765 (getCurrentListMapNoExtraKeys!3949 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69710 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1082790 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!479767 () Unit!35555)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69710 (_ BitVec 64) (_ BitVec 32)) Unit!35555)

(assert (=> b!1082790 (= lt!479767 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1082791 () Bool)

(declare-fun res!721869 () Bool)

(assert (=> b!1082791 (=> (not res!721869) (not e!618802))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69710 (_ BitVec 32)) Bool)

(assert (=> b!1082791 (= res!721869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!41359 () Bool)

(assert (=> mapIsEmpty!41359 mapRes!41359))

(declare-fun b!1082792 () Bool)

(assert (=> b!1082792 (= e!618802 e!618804)))

(declare-fun res!721872 () Bool)

(assert (=> b!1082792 (=> (not res!721872) (not e!618804))))

(assert (=> b!1082792 (= res!721872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479764 mask!1414))))

(assert (=> b!1082792 (= lt!479764 (array!69711 (store (arr!33525 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34062 _keys!1070)))))

(assert (= (and start!95784 res!721873) b!1082787))

(assert (= (and b!1082787 res!721876) b!1082791))

(assert (= (and b!1082791 res!721869) b!1082783))

(assert (= (and b!1082783 res!721870) b!1082786))

(assert (= (and b!1082786 res!721875) b!1082785))

(assert (= (and b!1082785 res!721871) b!1082789))

(assert (= (and b!1082789 res!721877) b!1082792))

(assert (= (and b!1082792 res!721872) b!1082788))

(assert (= (and b!1082788 res!721874) b!1082790))

(assert (= (and b!1082781 condMapEmpty!41359) mapIsEmpty!41359))

(assert (= (and b!1082781 (not condMapEmpty!41359)) mapNonEmpty!41359))

(get-info :version)

(assert (= (and mapNonEmpty!41359 ((_ is ValueCellFull!12492) mapValue!41359)) b!1082782))

(assert (= (and b!1082781 ((_ is ValueCellFull!12492) mapDefault!41359)) b!1082784))

(assert (= start!95784 b!1082781))

(declare-fun b_lambda!17101 () Bool)

(assert (=> (not b_lambda!17101) (not b!1082790)))

(declare-fun t!32964 () Bool)

(declare-fun tb!7287 () Bool)

(assert (=> (and start!95784 (= defaultEntry!882 defaultEntry!882) t!32964) tb!7287))

(declare-fun result!15085 () Bool)

(assert (=> tb!7287 (= result!15085 tp_is_empty!26403)))

(assert (=> b!1082790 t!32964))

(declare-fun b_and!35497 () Bool)

(assert (= b_and!35495 (and (=> t!32964 result!15085) b_and!35497)))

(declare-fun m!1000589 () Bool)

(assert (=> b!1082789 m!1000589))

(declare-fun m!1000591 () Bool)

(assert (=> b!1082792 m!1000591))

(declare-fun m!1000593 () Bool)

(assert (=> b!1082792 m!1000593))

(declare-fun m!1000595 () Bool)

(assert (=> b!1082788 m!1000595))

(declare-fun m!1000597 () Bool)

(assert (=> b!1082783 m!1000597))

(declare-fun m!1000599 () Bool)

(assert (=> b!1082790 m!1000599))

(declare-fun m!1000601 () Bool)

(assert (=> b!1082790 m!1000601))

(declare-fun m!1000603 () Bool)

(assert (=> b!1082790 m!1000603))

(declare-fun m!1000605 () Bool)

(assert (=> b!1082790 m!1000605))

(declare-fun m!1000607 () Bool)

(assert (=> b!1082790 m!1000607))

(declare-fun m!1000609 () Bool)

(assert (=> b!1082790 m!1000609))

(declare-fun m!1000611 () Bool)

(assert (=> b!1082790 m!1000611))

(declare-fun m!1000613 () Bool)

(assert (=> b!1082790 m!1000613))

(declare-fun m!1000615 () Bool)

(assert (=> b!1082791 m!1000615))

(declare-fun m!1000617 () Bool)

(assert (=> start!95784 m!1000617))

(declare-fun m!1000619 () Bool)

(assert (=> start!95784 m!1000619))

(declare-fun m!1000621 () Bool)

(assert (=> start!95784 m!1000621))

(declare-fun m!1000623 () Bool)

(assert (=> mapNonEmpty!41359 m!1000623))

(declare-fun m!1000625 () Bool)

(assert (=> b!1082785 m!1000625))

(check-sat (not mapNonEmpty!41359) (not b_lambda!17101) (not b!1082788) (not b!1082790) (not start!95784) tp_is_empty!26403 (not b!1082785) (not b!1082792) (not b!1082783) (not b_next!22401) (not b!1082791) b_and!35497)
(check-sat b_and!35497 (not b_next!22401))
