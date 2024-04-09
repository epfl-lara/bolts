; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95976 () Bool)

(assert start!95976)

(declare-fun b_free!22593 () Bool)

(declare-fun b_next!22593 () Bool)

(assert (=> start!95976 (= b_free!22593 (not b_next!22593))))

(declare-fun tp!79629 () Bool)

(declare-fun b_and!35879 () Bool)

(assert (=> start!95976 (= tp!79629 b_and!35879)))

(declare-fun b!1086727 () Bool)

(declare-fun res!724764 () Bool)

(declare-fun e!620819 () Bool)

(assert (=> b!1086727 (=> (not res!724764) (not e!620819))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70086 0))(
  ( (array!70087 (arr!33713 (Array (_ BitVec 32) (_ BitVec 64))) (size!34250 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70086)

(assert (=> b!1086727 (= res!724764 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34250 _keys!1070))))))

(declare-fun b!1086728 () Bool)

(declare-fun e!620822 () Bool)

(assert (=> b!1086728 (= e!620822 true)))

(declare-fun k0!904 () (_ BitVec 64))

(declare-datatypes ((V!40587 0))(
  ( (V!40588 (val!13354 Int)) )
))
(declare-datatypes ((tuple2!17008 0))(
  ( (tuple2!17009 (_1!8514 (_ BitVec 64)) (_2!8514 V!40587)) )
))
(declare-datatypes ((List!23648 0))(
  ( (Nil!23645) (Cons!23644 (h!24853 tuple2!17008) (t!33306 List!23648)) )
))
(declare-datatypes ((ListLongMap!14989 0))(
  ( (ListLongMap!14990 (toList!7510 List!23648)) )
))
(declare-fun lt!483211 () ListLongMap!14989)

(declare-fun lt!483221 () ListLongMap!14989)

(declare-fun lt!483222 () tuple2!17008)

(declare-fun -!791 (ListLongMap!14989 (_ BitVec 64)) ListLongMap!14989)

(declare-fun +!3238 (ListLongMap!14989 tuple2!17008) ListLongMap!14989)

(assert (=> b!1086728 (= (-!791 lt!483211 k0!904) (+!3238 lt!483221 lt!483222))))

(declare-datatypes ((Unit!35697 0))(
  ( (Unit!35698) )
))
(declare-fun lt!483214 () Unit!35697)

(declare-fun minValue!831 () V!40587)

(declare-fun lt!483215 () ListLongMap!14989)

(declare-fun addRemoveCommutativeForDiffKeys!34 (ListLongMap!14989 (_ BitVec 64) V!40587 (_ BitVec 64)) Unit!35697)

(assert (=> b!1086728 (= lt!483214 (addRemoveCommutativeForDiffKeys!34 lt!483215 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1086729 () Bool)

(declare-fun e!620821 () Bool)

(assert (=> b!1086729 (= e!620821 e!620822)))

(declare-fun res!724763 () Bool)

(assert (=> b!1086729 (=> res!724763 e!620822)))

(assert (=> b!1086729 (= res!724763 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!483213 () ListLongMap!14989)

(assert (=> b!1086729 (= lt!483221 lt!483213)))

(assert (=> b!1086729 (= lt!483221 (-!791 lt!483215 k0!904))))

(declare-fun lt!483227 () ListLongMap!14989)

(declare-fun lt!483220 () Unit!35697)

(declare-fun zeroValue!831 () V!40587)

(assert (=> b!1086729 (= lt!483220 (addRemoveCommutativeForDiffKeys!34 lt!483227 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun lt!483224 () ListLongMap!14989)

(assert (=> b!1086729 (= lt!483224 (+!3238 lt!483213 lt!483222))))

(declare-fun lt!483216 () ListLongMap!14989)

(declare-fun lt!483225 () tuple2!17008)

(assert (=> b!1086729 (= lt!483213 (+!3238 lt!483216 lt!483225))))

(declare-fun lt!483217 () ListLongMap!14989)

(assert (=> b!1086729 (= lt!483217 lt!483211)))

(assert (=> b!1086729 (= lt!483211 (+!3238 lt!483215 lt!483222))))

(assert (=> b!1086729 (= lt!483215 (+!3238 lt!483227 lt!483225))))

(declare-fun lt!483226 () ListLongMap!14989)

(assert (=> b!1086729 (= lt!483224 (+!3238 (+!3238 lt!483226 lt!483225) lt!483222))))

(assert (=> b!1086729 (= lt!483222 (tuple2!17009 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1086729 (= lt!483225 (tuple2!17009 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1086730 () Bool)

(declare-fun e!620818 () Bool)

(declare-fun e!620824 () Bool)

(declare-fun mapRes!41647 () Bool)

(assert (=> b!1086730 (= e!620818 (and e!620824 mapRes!41647))))

(declare-fun condMapEmpty!41647 () Bool)

(declare-datatypes ((ValueCell!12588 0))(
  ( (ValueCellFull!12588 (v!15976 V!40587)) (EmptyCell!12588) )
))
(declare-datatypes ((array!70088 0))(
  ( (array!70089 (arr!33714 (Array (_ BitVec 32) ValueCell!12588)) (size!34251 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70088)

(declare-fun mapDefault!41647 () ValueCell!12588)

(assert (=> b!1086730 (= condMapEmpty!41647 (= (arr!33714 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12588)) mapDefault!41647)))))

(declare-fun b!1086731 () Bool)

(declare-fun res!724767 () Bool)

(assert (=> b!1086731 (=> (not res!724767) (not e!620819))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70086 (_ BitVec 32)) Bool)

(assert (=> b!1086731 (= res!724767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1086732 () Bool)

(declare-fun res!724759 () Bool)

(assert (=> b!1086732 (=> (not res!724759) (not e!620819))))

(assert (=> b!1086732 (= res!724759 (= (select (arr!33713 _keys!1070) i!650) k0!904))))

(declare-fun b!1086733 () Bool)

(declare-fun e!620820 () Bool)

(assert (=> b!1086733 (= e!620819 e!620820)))

(declare-fun res!724765 () Bool)

(assert (=> b!1086733 (=> (not res!724765) (not e!620820))))

(declare-fun lt!483212 () array!70086)

(assert (=> b!1086733 (= res!724765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!483212 mask!1414))))

(assert (=> b!1086733 (= lt!483212 (array!70087 (store (arr!33713 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34250 _keys!1070)))))

(declare-fun mapIsEmpty!41647 () Bool)

(assert (=> mapIsEmpty!41647 mapRes!41647))

(declare-fun mapNonEmpty!41647 () Bool)

(declare-fun tp!79628 () Bool)

(declare-fun e!620823 () Bool)

(assert (=> mapNonEmpty!41647 (= mapRes!41647 (and tp!79628 e!620823))))

(declare-fun mapKey!41647 () (_ BitVec 32))

(declare-fun mapValue!41647 () ValueCell!12588)

(declare-fun mapRest!41647 () (Array (_ BitVec 32) ValueCell!12588))

(assert (=> mapNonEmpty!41647 (= (arr!33714 _values!874) (store mapRest!41647 mapKey!41647 mapValue!41647))))

(declare-fun b!1086735 () Bool)

(declare-fun res!724769 () Bool)

(assert (=> b!1086735 (=> (not res!724769) (not e!620820))))

(declare-datatypes ((List!23649 0))(
  ( (Nil!23646) (Cons!23645 (h!24854 (_ BitVec 64)) (t!33307 List!23649)) )
))
(declare-fun arrayNoDuplicates!0 (array!70086 (_ BitVec 32) List!23649) Bool)

(assert (=> b!1086735 (= res!724769 (arrayNoDuplicates!0 lt!483212 #b00000000000000000000000000000000 Nil!23646))))

(declare-fun b!1086736 () Bool)

(declare-fun tp_is_empty!26595 () Bool)

(assert (=> b!1086736 (= e!620824 tp_is_empty!26595)))

(declare-fun b!1086737 () Bool)

(assert (=> b!1086737 (= e!620823 tp_is_empty!26595)))

(declare-fun b!1086738 () Bool)

(declare-fun res!724766 () Bool)

(assert (=> b!1086738 (=> (not res!724766) (not e!620819))))

(assert (=> b!1086738 (= res!724766 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23646))))

(declare-fun b!1086739 () Bool)

(declare-fun res!724760 () Bool)

(assert (=> b!1086739 (=> (not res!724760) (not e!620819))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1086739 (= res!724760 (and (= (size!34251 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34250 _keys!1070) (size!34251 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1086740 () Bool)

(assert (=> b!1086740 (= e!620820 (not e!620821))))

(declare-fun res!724768 () Bool)

(assert (=> b!1086740 (=> res!724768 e!620821)))

(assert (=> b!1086740 (= res!724768 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4264 (array!70086 array!70088 (_ BitVec 32) (_ BitVec 32) V!40587 V!40587 (_ BitVec 32) Int) ListLongMap!14989)

(assert (=> b!1086740 (= lt!483217 (getCurrentListMap!4264 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483223 () array!70088)

(assert (=> b!1086740 (= lt!483224 (getCurrentListMap!4264 lt!483212 lt!483223 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1086740 (and (= lt!483226 lt!483216) (= lt!483216 lt!483226))))

(assert (=> b!1086740 (= lt!483216 (-!791 lt!483227 k0!904))))

(declare-fun lt!483218 () Unit!35697)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!70 (array!70086 array!70088 (_ BitVec 32) (_ BitVec 32) V!40587 V!40587 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35697)

(assert (=> b!1086740 (= lt!483218 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!70 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4016 (array!70086 array!70088 (_ BitVec 32) (_ BitVec 32) V!40587 V!40587 (_ BitVec 32) Int) ListLongMap!14989)

(assert (=> b!1086740 (= lt!483226 (getCurrentListMapNoExtraKeys!4016 lt!483212 lt!483223 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2152 (Int (_ BitVec 64)) V!40587)

(assert (=> b!1086740 (= lt!483223 (array!70089 (store (arr!33714 _values!874) i!650 (ValueCellFull!12588 (dynLambda!2152 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34251 _values!874)))))

(assert (=> b!1086740 (= lt!483227 (getCurrentListMapNoExtraKeys!4016 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70086 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1086740 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!483219 () Unit!35697)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70086 (_ BitVec 64) (_ BitVec 32)) Unit!35697)

(assert (=> b!1086740 (= lt!483219 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun res!724761 () Bool)

(assert (=> start!95976 (=> (not res!724761) (not e!620819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95976 (= res!724761 (validMask!0 mask!1414))))

(assert (=> start!95976 e!620819))

(assert (=> start!95976 tp!79629))

(assert (=> start!95976 true))

(assert (=> start!95976 tp_is_empty!26595))

(declare-fun array_inv!25862 (array!70086) Bool)

(assert (=> start!95976 (array_inv!25862 _keys!1070)))

(declare-fun array_inv!25863 (array!70088) Bool)

(assert (=> start!95976 (and (array_inv!25863 _values!874) e!620818)))

(declare-fun b!1086734 () Bool)

(declare-fun res!724762 () Bool)

(assert (=> b!1086734 (=> (not res!724762) (not e!620819))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1086734 (= res!724762 (validKeyInArray!0 k0!904))))

(assert (= (and start!95976 res!724761) b!1086739))

(assert (= (and b!1086739 res!724760) b!1086731))

(assert (= (and b!1086731 res!724767) b!1086738))

(assert (= (and b!1086738 res!724766) b!1086727))

(assert (= (and b!1086727 res!724764) b!1086734))

(assert (= (and b!1086734 res!724762) b!1086732))

(assert (= (and b!1086732 res!724759) b!1086733))

(assert (= (and b!1086733 res!724765) b!1086735))

(assert (= (and b!1086735 res!724769) b!1086740))

(assert (= (and b!1086740 (not res!724768)) b!1086729))

(assert (= (and b!1086729 (not res!724763)) b!1086728))

(assert (= (and b!1086730 condMapEmpty!41647) mapIsEmpty!41647))

(assert (= (and b!1086730 (not condMapEmpty!41647)) mapNonEmpty!41647))

(get-info :version)

(assert (= (and mapNonEmpty!41647 ((_ is ValueCellFull!12588) mapValue!41647)) b!1086737))

(assert (= (and b!1086730 ((_ is ValueCellFull!12588) mapDefault!41647)) b!1086736))

(assert (= start!95976 b!1086730))

(declare-fun b_lambda!17293 () Bool)

(assert (=> (not b_lambda!17293) (not b!1086740)))

(declare-fun t!33305 () Bool)

(declare-fun tb!7479 () Bool)

(assert (=> (and start!95976 (= defaultEntry!882 defaultEntry!882) t!33305) tb!7479))

(declare-fun result!15469 () Bool)

(assert (=> tb!7479 (= result!15469 tp_is_empty!26595)))

(assert (=> b!1086740 t!33305))

(declare-fun b_and!35881 () Bool)

(assert (= b_and!35879 (and (=> t!33305 result!15469) b_and!35881)))

(declare-fun m!1005517 () Bool)

(assert (=> b!1086728 m!1005517))

(declare-fun m!1005519 () Bool)

(assert (=> b!1086728 m!1005519))

(declare-fun m!1005521 () Bool)

(assert (=> b!1086728 m!1005521))

(declare-fun m!1005523 () Bool)

(assert (=> start!95976 m!1005523))

(declare-fun m!1005525 () Bool)

(assert (=> start!95976 m!1005525))

(declare-fun m!1005527 () Bool)

(assert (=> start!95976 m!1005527))

(declare-fun m!1005529 () Bool)

(assert (=> b!1086732 m!1005529))

(declare-fun m!1005531 () Bool)

(assert (=> mapNonEmpty!41647 m!1005531))

(declare-fun m!1005533 () Bool)

(assert (=> b!1086729 m!1005533))

(declare-fun m!1005535 () Bool)

(assert (=> b!1086729 m!1005535))

(declare-fun m!1005537 () Bool)

(assert (=> b!1086729 m!1005537))

(declare-fun m!1005539 () Bool)

(assert (=> b!1086729 m!1005539))

(declare-fun m!1005541 () Bool)

(assert (=> b!1086729 m!1005541))

(declare-fun m!1005543 () Bool)

(assert (=> b!1086729 m!1005543))

(declare-fun m!1005545 () Bool)

(assert (=> b!1086729 m!1005545))

(declare-fun m!1005547 () Bool)

(assert (=> b!1086729 m!1005547))

(assert (=> b!1086729 m!1005537))

(declare-fun m!1005549 () Bool)

(assert (=> b!1086738 m!1005549))

(declare-fun m!1005551 () Bool)

(assert (=> b!1086740 m!1005551))

(declare-fun m!1005553 () Bool)

(assert (=> b!1086740 m!1005553))

(declare-fun m!1005555 () Bool)

(assert (=> b!1086740 m!1005555))

(declare-fun m!1005557 () Bool)

(assert (=> b!1086740 m!1005557))

(declare-fun m!1005559 () Bool)

(assert (=> b!1086740 m!1005559))

(declare-fun m!1005561 () Bool)

(assert (=> b!1086740 m!1005561))

(declare-fun m!1005563 () Bool)

(assert (=> b!1086740 m!1005563))

(declare-fun m!1005565 () Bool)

(assert (=> b!1086740 m!1005565))

(declare-fun m!1005567 () Bool)

(assert (=> b!1086740 m!1005567))

(declare-fun m!1005569 () Bool)

(assert (=> b!1086740 m!1005569))

(declare-fun m!1005571 () Bool)

(assert (=> b!1086735 m!1005571))

(declare-fun m!1005573 () Bool)

(assert (=> b!1086733 m!1005573))

(declare-fun m!1005575 () Bool)

(assert (=> b!1086733 m!1005575))

(declare-fun m!1005577 () Bool)

(assert (=> b!1086731 m!1005577))

(declare-fun m!1005579 () Bool)

(assert (=> b!1086734 m!1005579))

(check-sat (not start!95976) (not b!1086735) (not mapNonEmpty!41647) (not b!1086734) (not b!1086738) (not b!1086729) b_and!35881 (not b_lambda!17293) (not b!1086740) tp_is_empty!26595 (not b!1086733) (not b!1086731) (not b!1086728) (not b_next!22593))
(check-sat b_and!35881 (not b_next!22593))
