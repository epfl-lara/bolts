; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95952 () Bool)

(assert start!95952)

(declare-fun b_free!22569 () Bool)

(declare-fun b_next!22569 () Bool)

(assert (=> start!95952 (= b_free!22569 (not b_next!22569))))

(declare-fun tp!79556 () Bool)

(declare-fun b_and!35831 () Bool)

(assert (=> start!95952 (= tp!79556 b_and!35831)))

(declare-fun b!1086199 () Bool)

(declare-fun res!724366 () Bool)

(declare-fun e!620534 () Bool)

(assert (=> b!1086199 (=> (not res!724366) (not e!620534))))

(declare-datatypes ((array!70038 0))(
  ( (array!70039 (arr!33689 (Array (_ BitVec 32) (_ BitVec 64))) (size!34226 (_ BitVec 32))) )
))
(declare-fun lt!482599 () array!70038)

(declare-datatypes ((List!23628 0))(
  ( (Nil!23625) (Cons!23624 (h!24833 (_ BitVec 64)) (t!33262 List!23628)) )
))
(declare-fun arrayNoDuplicates!0 (array!70038 (_ BitVec 32) List!23628) Bool)

(assert (=> b!1086199 (= res!724366 (arrayNoDuplicates!0 lt!482599 #b00000000000000000000000000000000 Nil!23625))))

(declare-fun b!1086200 () Bool)

(declare-fun res!724369 () Bool)

(declare-fun e!620532 () Bool)

(assert (=> b!1086200 (=> (not res!724369) (not e!620532))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1086200 (= res!724369 (validKeyInArray!0 k0!904))))

(declare-fun b!1086201 () Bool)

(assert (=> b!1086201 (= e!620532 e!620534)))

(declare-fun res!724363 () Bool)

(assert (=> b!1086201 (=> (not res!724363) (not e!620534))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70038 (_ BitVec 32)) Bool)

(assert (=> b!1086201 (= res!724363 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!482599 mask!1414))))

(declare-fun _keys!1070 () array!70038)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1086201 (= lt!482599 (array!70039 (store (arr!33689 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34226 _keys!1070)))))

(declare-fun b!1086203 () Bool)

(declare-fun res!724370 () Bool)

(assert (=> b!1086203 (=> (not res!724370) (not e!620532))))

(assert (=> b!1086203 (= res!724370 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23625))))

(declare-fun b!1086204 () Bool)

(declare-fun e!620531 () Bool)

(declare-fun tp_is_empty!26571 () Bool)

(assert (=> b!1086204 (= e!620531 tp_is_empty!26571)))

(declare-fun b!1086205 () Bool)

(declare-fun res!724371 () Bool)

(assert (=> b!1086205 (=> (not res!724371) (not e!620532))))

(assert (=> b!1086205 (= res!724371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1086206 () Bool)

(declare-fun e!620533 () Bool)

(declare-fun e!620535 () Bool)

(assert (=> b!1086206 (= e!620533 e!620535)))

(declare-fun res!724367 () Bool)

(assert (=> b!1086206 (=> res!724367 e!620535)))

(assert (=> b!1086206 (= res!724367 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((V!40555 0))(
  ( (V!40556 (val!13342 Int)) )
))
(declare-datatypes ((tuple2!16988 0))(
  ( (tuple2!16989 (_1!8504 (_ BitVec 64)) (_2!8504 V!40555)) )
))
(declare-datatypes ((List!23629 0))(
  ( (Nil!23626) (Cons!23625 (h!24834 tuple2!16988) (t!33263 List!23629)) )
))
(declare-datatypes ((ListLongMap!14969 0))(
  ( (ListLongMap!14970 (toList!7500 List!23629)) )
))
(declare-fun lt!482610 () ListLongMap!14969)

(declare-fun lt!482609 () ListLongMap!14969)

(assert (=> b!1086206 (= lt!482610 lt!482609)))

(declare-fun lt!482611 () ListLongMap!14969)

(declare-fun -!781 (ListLongMap!14969 (_ BitVec 64)) ListLongMap!14969)

(assert (=> b!1086206 (= lt!482610 (-!781 lt!482611 k0!904))))

(declare-fun lt!482603 () ListLongMap!14969)

(declare-fun zeroValue!831 () V!40555)

(declare-datatypes ((Unit!35677 0))(
  ( (Unit!35678) )
))
(declare-fun lt!482615 () Unit!35677)

(declare-fun addRemoveCommutativeForDiffKeys!25 (ListLongMap!14969 (_ BitVec 64) V!40555 (_ BitVec 64)) Unit!35677)

(assert (=> b!1086206 (= lt!482615 (addRemoveCommutativeForDiffKeys!25 lt!482603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun lt!482601 () ListLongMap!14969)

(declare-fun lt!482606 () tuple2!16988)

(declare-fun +!3229 (ListLongMap!14969 tuple2!16988) ListLongMap!14969)

(assert (=> b!1086206 (= lt!482601 (+!3229 lt!482609 lt!482606))))

(declare-fun lt!482607 () ListLongMap!14969)

(declare-fun lt!482613 () tuple2!16988)

(assert (=> b!1086206 (= lt!482609 (+!3229 lt!482607 lt!482613))))

(declare-fun lt!482604 () ListLongMap!14969)

(declare-fun lt!482614 () ListLongMap!14969)

(assert (=> b!1086206 (= lt!482604 lt!482614)))

(assert (=> b!1086206 (= lt!482614 (+!3229 lt!482611 lt!482606))))

(assert (=> b!1086206 (= lt!482611 (+!3229 lt!482603 lt!482613))))

(declare-fun lt!482602 () ListLongMap!14969)

(assert (=> b!1086206 (= lt!482601 (+!3229 (+!3229 lt!482602 lt!482613) lt!482606))))

(declare-fun minValue!831 () V!40555)

(assert (=> b!1086206 (= lt!482606 (tuple2!16989 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1086206 (= lt!482613 (tuple2!16989 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1086207 () Bool)

(declare-fun res!724364 () Bool)

(assert (=> b!1086207 (=> (not res!724364) (not e!620532))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12576 0))(
  ( (ValueCellFull!12576 (v!15964 V!40555)) (EmptyCell!12576) )
))
(declare-datatypes ((array!70040 0))(
  ( (array!70041 (arr!33690 (Array (_ BitVec 32) ValueCell!12576)) (size!34227 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70040)

(assert (=> b!1086207 (= res!724364 (and (= (size!34227 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34226 _keys!1070) (size!34227 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1086208 () Bool)

(declare-fun res!724372 () Bool)

(assert (=> b!1086208 (=> (not res!724372) (not e!620532))))

(assert (=> b!1086208 (= res!724372 (= (select (arr!33689 _keys!1070) i!650) k0!904))))

(declare-fun mapIsEmpty!41611 () Bool)

(declare-fun mapRes!41611 () Bool)

(assert (=> mapIsEmpty!41611 mapRes!41611))

(declare-fun b!1086209 () Bool)

(assert (=> b!1086209 (= e!620535 true)))

(assert (=> b!1086209 (= (-!781 lt!482614 k0!904) (+!3229 lt!482610 lt!482606))))

(declare-fun lt!482605 () Unit!35677)

(assert (=> b!1086209 (= lt!482605 (addRemoveCommutativeForDiffKeys!25 lt!482611 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1086202 () Bool)

(declare-fun res!724373 () Bool)

(assert (=> b!1086202 (=> (not res!724373) (not e!620532))))

(assert (=> b!1086202 (= res!724373 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34226 _keys!1070))))))

(declare-fun res!724368 () Bool)

(assert (=> start!95952 (=> (not res!724368) (not e!620532))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95952 (= res!724368 (validMask!0 mask!1414))))

(assert (=> start!95952 e!620532))

(assert (=> start!95952 tp!79556))

(assert (=> start!95952 true))

(assert (=> start!95952 tp_is_empty!26571))

(declare-fun array_inv!25848 (array!70038) Bool)

(assert (=> start!95952 (array_inv!25848 _keys!1070)))

(declare-fun e!620529 () Bool)

(declare-fun array_inv!25849 (array!70040) Bool)

(assert (=> start!95952 (and (array_inv!25849 _values!874) e!620529)))

(declare-fun b!1086210 () Bool)

(declare-fun e!620530 () Bool)

(assert (=> b!1086210 (= e!620530 tp_is_empty!26571)))

(declare-fun mapNonEmpty!41611 () Bool)

(declare-fun tp!79557 () Bool)

(assert (=> mapNonEmpty!41611 (= mapRes!41611 (and tp!79557 e!620530))))

(declare-fun mapRest!41611 () (Array (_ BitVec 32) ValueCell!12576))

(declare-fun mapValue!41611 () ValueCell!12576)

(declare-fun mapKey!41611 () (_ BitVec 32))

(assert (=> mapNonEmpty!41611 (= (arr!33690 _values!874) (store mapRest!41611 mapKey!41611 mapValue!41611))))

(declare-fun b!1086211 () Bool)

(assert (=> b!1086211 (= e!620534 (not e!620533))))

(declare-fun res!724365 () Bool)

(assert (=> b!1086211 (=> res!724365 e!620533)))

(assert (=> b!1086211 (= res!724365 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4255 (array!70038 array!70040 (_ BitVec 32) (_ BitVec 32) V!40555 V!40555 (_ BitVec 32) Int) ListLongMap!14969)

(assert (=> b!1086211 (= lt!482604 (getCurrentListMap!4255 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!482608 () array!70040)

(assert (=> b!1086211 (= lt!482601 (getCurrentListMap!4255 lt!482599 lt!482608 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1086211 (and (= lt!482602 lt!482607) (= lt!482607 lt!482602))))

(assert (=> b!1086211 (= lt!482607 (-!781 lt!482603 k0!904))))

(declare-fun lt!482600 () Unit!35677)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!61 (array!70038 array!70040 (_ BitVec 32) (_ BitVec 32) V!40555 V!40555 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35677)

(assert (=> b!1086211 (= lt!482600 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!61 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4007 (array!70038 array!70040 (_ BitVec 32) (_ BitVec 32) V!40555 V!40555 (_ BitVec 32) Int) ListLongMap!14969)

(assert (=> b!1086211 (= lt!482602 (getCurrentListMapNoExtraKeys!4007 lt!482599 lt!482608 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2143 (Int (_ BitVec 64)) V!40555)

(assert (=> b!1086211 (= lt!482608 (array!70041 (store (arr!33690 _values!874) i!650 (ValueCellFull!12576 (dynLambda!2143 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34227 _values!874)))))

(assert (=> b!1086211 (= lt!482603 (getCurrentListMapNoExtraKeys!4007 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70038 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1086211 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!482612 () Unit!35677)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70038 (_ BitVec 64) (_ BitVec 32)) Unit!35677)

(assert (=> b!1086211 (= lt!482612 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1086212 () Bool)

(assert (=> b!1086212 (= e!620529 (and e!620531 mapRes!41611))))

(declare-fun condMapEmpty!41611 () Bool)

(declare-fun mapDefault!41611 () ValueCell!12576)

(assert (=> b!1086212 (= condMapEmpty!41611 (= (arr!33690 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12576)) mapDefault!41611)))))

(assert (= (and start!95952 res!724368) b!1086207))

(assert (= (and b!1086207 res!724364) b!1086205))

(assert (= (and b!1086205 res!724371) b!1086203))

(assert (= (and b!1086203 res!724370) b!1086202))

(assert (= (and b!1086202 res!724373) b!1086200))

(assert (= (and b!1086200 res!724369) b!1086208))

(assert (= (and b!1086208 res!724372) b!1086201))

(assert (= (and b!1086201 res!724363) b!1086199))

(assert (= (and b!1086199 res!724366) b!1086211))

(assert (= (and b!1086211 (not res!724365)) b!1086206))

(assert (= (and b!1086206 (not res!724367)) b!1086209))

(assert (= (and b!1086212 condMapEmpty!41611) mapIsEmpty!41611))

(assert (= (and b!1086212 (not condMapEmpty!41611)) mapNonEmpty!41611))

(get-info :version)

(assert (= (and mapNonEmpty!41611 ((_ is ValueCellFull!12576) mapValue!41611)) b!1086210))

(assert (= (and b!1086212 ((_ is ValueCellFull!12576) mapDefault!41611)) b!1086204))

(assert (= start!95952 b!1086212))

(declare-fun b_lambda!17269 () Bool)

(assert (=> (not b_lambda!17269) (not b!1086211)))

(declare-fun t!33261 () Bool)

(declare-fun tb!7455 () Bool)

(assert (=> (and start!95952 (= defaultEntry!882 defaultEntry!882) t!33261) tb!7455))

(declare-fun result!15421 () Bool)

(assert (=> tb!7455 (= result!15421 tp_is_empty!26571)))

(assert (=> b!1086211 t!33261))

(declare-fun b_and!35833 () Bool)

(assert (= b_and!35831 (and (=> t!33261 result!15421) b_and!35833)))

(declare-fun m!1004749 () Bool)

(assert (=> b!1086209 m!1004749))

(declare-fun m!1004751 () Bool)

(assert (=> b!1086209 m!1004751))

(declare-fun m!1004753 () Bool)

(assert (=> b!1086209 m!1004753))

(declare-fun m!1004755 () Bool)

(assert (=> b!1086208 m!1004755))

(declare-fun m!1004757 () Bool)

(assert (=> b!1086200 m!1004757))

(declare-fun m!1004759 () Bool)

(assert (=> b!1086211 m!1004759))

(declare-fun m!1004761 () Bool)

(assert (=> b!1086211 m!1004761))

(declare-fun m!1004763 () Bool)

(assert (=> b!1086211 m!1004763))

(declare-fun m!1004765 () Bool)

(assert (=> b!1086211 m!1004765))

(declare-fun m!1004767 () Bool)

(assert (=> b!1086211 m!1004767))

(declare-fun m!1004769 () Bool)

(assert (=> b!1086211 m!1004769))

(declare-fun m!1004771 () Bool)

(assert (=> b!1086211 m!1004771))

(declare-fun m!1004773 () Bool)

(assert (=> b!1086211 m!1004773))

(declare-fun m!1004775 () Bool)

(assert (=> b!1086211 m!1004775))

(declare-fun m!1004777 () Bool)

(assert (=> b!1086211 m!1004777))

(declare-fun m!1004779 () Bool)

(assert (=> start!95952 m!1004779))

(declare-fun m!1004781 () Bool)

(assert (=> start!95952 m!1004781))

(declare-fun m!1004783 () Bool)

(assert (=> start!95952 m!1004783))

(declare-fun m!1004785 () Bool)

(assert (=> mapNonEmpty!41611 m!1004785))

(declare-fun m!1004787 () Bool)

(assert (=> b!1086201 m!1004787))

(declare-fun m!1004789 () Bool)

(assert (=> b!1086201 m!1004789))

(declare-fun m!1004791 () Bool)

(assert (=> b!1086199 m!1004791))

(declare-fun m!1004793 () Bool)

(assert (=> b!1086203 m!1004793))

(declare-fun m!1004795 () Bool)

(assert (=> b!1086205 m!1004795))

(declare-fun m!1004797 () Bool)

(assert (=> b!1086206 m!1004797))

(declare-fun m!1004799 () Bool)

(assert (=> b!1086206 m!1004799))

(declare-fun m!1004801 () Bool)

(assert (=> b!1086206 m!1004801))

(declare-fun m!1004803 () Bool)

(assert (=> b!1086206 m!1004803))

(declare-fun m!1004805 () Bool)

(assert (=> b!1086206 m!1004805))

(declare-fun m!1004807 () Bool)

(assert (=> b!1086206 m!1004807))

(declare-fun m!1004809 () Bool)

(assert (=> b!1086206 m!1004809))

(assert (=> b!1086206 m!1004797))

(declare-fun m!1004811 () Bool)

(assert (=> b!1086206 m!1004811))

(check-sat (not b_next!22569) (not mapNonEmpty!41611) (not b!1086211) (not b!1086200) (not start!95952) (not b!1086209) (not b!1086206) (not b!1086199) (not b!1086203) b_and!35833 tp_is_empty!26571 (not b!1086201) (not b_lambda!17269) (not b!1086205))
(check-sat b_and!35833 (not b_next!22569))
