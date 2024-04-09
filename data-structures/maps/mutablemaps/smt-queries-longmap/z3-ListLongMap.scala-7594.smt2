; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95922 () Bool)

(assert start!95922)

(declare-fun b_free!22539 () Bool)

(declare-fun b_next!22539 () Bool)

(assert (=> start!95922 (= b_free!22539 (not b_next!22539))))

(declare-fun tp!79466 () Bool)

(declare-fun b_and!35771 () Bool)

(assert (=> start!95922 (= tp!79466 b_and!35771)))

(declare-fun b!1085539 () Bool)

(declare-fun res!723868 () Bool)

(declare-fun e!620174 () Bool)

(assert (=> b!1085539 (=> (not res!723868) (not e!620174))))

(declare-datatypes ((array!69982 0))(
  ( (array!69983 (arr!33661 (Array (_ BitVec 32) (_ BitVec 64))) (size!34198 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69982)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69982 (_ BitVec 32)) Bool)

(assert (=> b!1085539 (= res!723868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1085540 () Bool)

(declare-fun res!723871 () Bool)

(assert (=> b!1085540 (=> (not res!723871) (not e!620174))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40515 0))(
  ( (V!40516 (val!13327 Int)) )
))
(declare-datatypes ((ValueCell!12561 0))(
  ( (ValueCellFull!12561 (v!15949 V!40515)) (EmptyCell!12561) )
))
(declare-datatypes ((array!69984 0))(
  ( (array!69985 (arr!33662 (Array (_ BitVec 32) ValueCell!12561)) (size!34199 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69984)

(assert (=> b!1085540 (= res!723871 (and (= (size!34199 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34198 _keys!1070) (size!34199 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1085541 () Bool)

(declare-fun res!723870 () Bool)

(assert (=> b!1085541 (=> (not res!723870) (not e!620174))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1085541 (= res!723870 (= (select (arr!33661 _keys!1070) i!650) k0!904))))

(declare-fun b!1085542 () Bool)

(declare-fun e!620176 () Bool)

(assert (=> b!1085542 (= e!620176 true)))

(declare-datatypes ((tuple2!16968 0))(
  ( (tuple2!16969 (_1!8494 (_ BitVec 64)) (_2!8494 V!40515)) )
))
(declare-datatypes ((List!23608 0))(
  ( (Nil!23605) (Cons!23604 (h!24813 tuple2!16968) (t!33212 List!23608)) )
))
(declare-datatypes ((ListLongMap!14949 0))(
  ( (ListLongMap!14950 (toList!7490 List!23608)) )
))
(declare-fun lt!481846 () ListLongMap!14949)

(declare-fun lt!481844 () ListLongMap!14949)

(declare-fun lt!481849 () tuple2!16968)

(declare-fun -!771 (ListLongMap!14949 (_ BitVec 64)) ListLongMap!14949)

(declare-fun +!3221 (ListLongMap!14949 tuple2!16968) ListLongMap!14949)

(assert (=> b!1085542 (= (-!771 lt!481846 k0!904) (+!3221 lt!481844 lt!481849))))

(declare-datatypes ((Unit!35657 0))(
  ( (Unit!35658) )
))
(declare-fun lt!481842 () Unit!35657)

(declare-fun minValue!831 () V!40515)

(declare-fun lt!481843 () ListLongMap!14949)

(declare-fun addRemoveCommutativeForDiffKeys!17 (ListLongMap!14949 (_ BitVec 64) V!40515 (_ BitVec 64)) Unit!35657)

(assert (=> b!1085542 (= lt!481842 (addRemoveCommutativeForDiffKeys!17 lt!481843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun mapNonEmpty!41566 () Bool)

(declare-fun mapRes!41566 () Bool)

(declare-fun tp!79467 () Bool)

(declare-fun e!620169 () Bool)

(assert (=> mapNonEmpty!41566 (= mapRes!41566 (and tp!79467 e!620169))))

(declare-fun mapKey!41566 () (_ BitVec 32))

(declare-fun mapRest!41566 () (Array (_ BitVec 32) ValueCell!12561))

(declare-fun mapValue!41566 () ValueCell!12561)

(assert (=> mapNonEmpty!41566 (= (arr!33662 _values!874) (store mapRest!41566 mapKey!41566 mapValue!41566))))

(declare-fun b!1085543 () Bool)

(declare-fun res!723869 () Bool)

(declare-fun e!620170 () Bool)

(assert (=> b!1085543 (=> (not res!723869) (not e!620170))))

(declare-fun lt!481848 () array!69982)

(declare-datatypes ((List!23609 0))(
  ( (Nil!23606) (Cons!23605 (h!24814 (_ BitVec 64)) (t!33213 List!23609)) )
))
(declare-fun arrayNoDuplicates!0 (array!69982 (_ BitVec 32) List!23609) Bool)

(assert (=> b!1085543 (= res!723869 (arrayNoDuplicates!0 lt!481848 #b00000000000000000000000000000000 Nil!23606))))

(declare-fun res!723873 () Bool)

(assert (=> start!95922 (=> (not res!723873) (not e!620174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95922 (= res!723873 (validMask!0 mask!1414))))

(assert (=> start!95922 e!620174))

(assert (=> start!95922 tp!79466))

(assert (=> start!95922 true))

(declare-fun tp_is_empty!26541 () Bool)

(assert (=> start!95922 tp_is_empty!26541))

(declare-fun array_inv!25828 (array!69982) Bool)

(assert (=> start!95922 (array_inv!25828 _keys!1070)))

(declare-fun e!620171 () Bool)

(declare-fun array_inv!25829 (array!69984) Bool)

(assert (=> start!95922 (and (array_inv!25829 _values!874) e!620171)))

(declare-fun b!1085544 () Bool)

(declare-fun e!620175 () Bool)

(assert (=> b!1085544 (= e!620175 e!620176)))

(declare-fun res!723878 () Bool)

(assert (=> b!1085544 (=> res!723878 e!620176)))

(assert (=> b!1085544 (= res!723878 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!481839 () ListLongMap!14949)

(assert (=> b!1085544 (= lt!481844 lt!481839)))

(assert (=> b!1085544 (= lt!481844 (-!771 lt!481843 k0!904))))

(declare-fun lt!481845 () ListLongMap!14949)

(declare-fun lt!481836 () Unit!35657)

(declare-fun zeroValue!831 () V!40515)

(assert (=> b!1085544 (= lt!481836 (addRemoveCommutativeForDiffKeys!17 lt!481845 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun lt!481847 () ListLongMap!14949)

(assert (=> b!1085544 (= lt!481847 (+!3221 lt!481839 lt!481849))))

(declare-fun lt!481838 () ListLongMap!14949)

(declare-fun lt!481834 () tuple2!16968)

(assert (=> b!1085544 (= lt!481839 (+!3221 lt!481838 lt!481834))))

(declare-fun lt!481837 () ListLongMap!14949)

(assert (=> b!1085544 (= lt!481837 lt!481846)))

(assert (=> b!1085544 (= lt!481846 (+!3221 lt!481843 lt!481849))))

(assert (=> b!1085544 (= lt!481843 (+!3221 lt!481845 lt!481834))))

(declare-fun lt!481850 () ListLongMap!14949)

(assert (=> b!1085544 (= lt!481847 (+!3221 (+!3221 lt!481850 lt!481834) lt!481849))))

(assert (=> b!1085544 (= lt!481849 (tuple2!16969 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1085544 (= lt!481834 (tuple2!16969 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1085545 () Bool)

(declare-fun res!723875 () Bool)

(assert (=> b!1085545 (=> (not res!723875) (not e!620174))))

(assert (=> b!1085545 (= res!723875 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23606))))

(declare-fun mapIsEmpty!41566 () Bool)

(assert (=> mapIsEmpty!41566 mapRes!41566))

(declare-fun b!1085546 () Bool)

(assert (=> b!1085546 (= e!620169 tp_is_empty!26541)))

(declare-fun b!1085547 () Bool)

(declare-fun e!620173 () Bool)

(assert (=> b!1085547 (= e!620173 tp_is_empty!26541)))

(declare-fun b!1085548 () Bool)

(assert (=> b!1085548 (= e!620171 (and e!620173 mapRes!41566))))

(declare-fun condMapEmpty!41566 () Bool)

(declare-fun mapDefault!41566 () ValueCell!12561)

(assert (=> b!1085548 (= condMapEmpty!41566 (= (arr!33662 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12561)) mapDefault!41566)))))

(declare-fun b!1085549 () Bool)

(assert (=> b!1085549 (= e!620174 e!620170)))

(declare-fun res!723876 () Bool)

(assert (=> b!1085549 (=> (not res!723876) (not e!620170))))

(assert (=> b!1085549 (= res!723876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!481848 mask!1414))))

(assert (=> b!1085549 (= lt!481848 (array!69983 (store (arr!33661 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34198 _keys!1070)))))

(declare-fun b!1085550 () Bool)

(assert (=> b!1085550 (= e!620170 (not e!620175))))

(declare-fun res!723874 () Bool)

(assert (=> b!1085550 (=> res!723874 e!620175)))

(assert (=> b!1085550 (= res!723874 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4245 (array!69982 array!69984 (_ BitVec 32) (_ BitVec 32) V!40515 V!40515 (_ BitVec 32) Int) ListLongMap!14949)

(assert (=> b!1085550 (= lt!481837 (getCurrentListMap!4245 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481835 () array!69984)

(assert (=> b!1085550 (= lt!481847 (getCurrentListMap!4245 lt!481848 lt!481835 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1085550 (and (= lt!481850 lt!481838) (= lt!481838 lt!481850))))

(assert (=> b!1085550 (= lt!481838 (-!771 lt!481845 k0!904))))

(declare-fun lt!481841 () Unit!35657)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!51 (array!69982 array!69984 (_ BitVec 32) (_ BitVec 32) V!40515 V!40515 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35657)

(assert (=> b!1085550 (= lt!481841 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!51 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3997 (array!69982 array!69984 (_ BitVec 32) (_ BitVec 32) V!40515 V!40515 (_ BitVec 32) Int) ListLongMap!14949)

(assert (=> b!1085550 (= lt!481850 (getCurrentListMapNoExtraKeys!3997 lt!481848 lt!481835 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2133 (Int (_ BitVec 64)) V!40515)

(assert (=> b!1085550 (= lt!481835 (array!69985 (store (arr!33662 _values!874) i!650 (ValueCellFull!12561 (dynLambda!2133 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34199 _values!874)))))

(assert (=> b!1085550 (= lt!481845 (getCurrentListMapNoExtraKeys!3997 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69982 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1085550 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!481840 () Unit!35657)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69982 (_ BitVec 64) (_ BitVec 32)) Unit!35657)

(assert (=> b!1085550 (= lt!481840 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1085551 () Bool)

(declare-fun res!723872 () Bool)

(assert (=> b!1085551 (=> (not res!723872) (not e!620174))))

(assert (=> b!1085551 (= res!723872 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34198 _keys!1070))))))

(declare-fun b!1085552 () Bool)

(declare-fun res!723877 () Bool)

(assert (=> b!1085552 (=> (not res!723877) (not e!620174))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1085552 (= res!723877 (validKeyInArray!0 k0!904))))

(assert (= (and start!95922 res!723873) b!1085540))

(assert (= (and b!1085540 res!723871) b!1085539))

(assert (= (and b!1085539 res!723868) b!1085545))

(assert (= (and b!1085545 res!723875) b!1085551))

(assert (= (and b!1085551 res!723872) b!1085552))

(assert (= (and b!1085552 res!723877) b!1085541))

(assert (= (and b!1085541 res!723870) b!1085549))

(assert (= (and b!1085549 res!723876) b!1085543))

(assert (= (and b!1085543 res!723869) b!1085550))

(assert (= (and b!1085550 (not res!723874)) b!1085544))

(assert (= (and b!1085544 (not res!723878)) b!1085542))

(assert (= (and b!1085548 condMapEmpty!41566) mapIsEmpty!41566))

(assert (= (and b!1085548 (not condMapEmpty!41566)) mapNonEmpty!41566))

(get-info :version)

(assert (= (and mapNonEmpty!41566 ((_ is ValueCellFull!12561) mapValue!41566)) b!1085546))

(assert (= (and b!1085548 ((_ is ValueCellFull!12561) mapDefault!41566)) b!1085547))

(assert (= start!95922 b!1085548))

(declare-fun b_lambda!17239 () Bool)

(assert (=> (not b_lambda!17239) (not b!1085550)))

(declare-fun t!33211 () Bool)

(declare-fun tb!7425 () Bool)

(assert (=> (and start!95922 (= defaultEntry!882 defaultEntry!882) t!33211) tb!7425))

(declare-fun result!15361 () Bool)

(assert (=> tb!7425 (= result!15361 tp_is_empty!26541)))

(assert (=> b!1085550 t!33211))

(declare-fun b_and!35773 () Bool)

(assert (= b_and!35771 (and (=> t!33211 result!15361) b_and!35773)))

(declare-fun m!1003789 () Bool)

(assert (=> start!95922 m!1003789))

(declare-fun m!1003791 () Bool)

(assert (=> start!95922 m!1003791))

(declare-fun m!1003793 () Bool)

(assert (=> start!95922 m!1003793))

(declare-fun m!1003795 () Bool)

(assert (=> b!1085549 m!1003795))

(declare-fun m!1003797 () Bool)

(assert (=> b!1085549 m!1003797))

(declare-fun m!1003799 () Bool)

(assert (=> mapNonEmpty!41566 m!1003799))

(declare-fun m!1003801 () Bool)

(assert (=> b!1085545 m!1003801))

(declare-fun m!1003803 () Bool)

(assert (=> b!1085552 m!1003803))

(declare-fun m!1003805 () Bool)

(assert (=> b!1085544 m!1003805))

(declare-fun m!1003807 () Bool)

(assert (=> b!1085544 m!1003807))

(declare-fun m!1003809 () Bool)

(assert (=> b!1085544 m!1003809))

(declare-fun m!1003811 () Bool)

(assert (=> b!1085544 m!1003811))

(declare-fun m!1003813 () Bool)

(assert (=> b!1085544 m!1003813))

(declare-fun m!1003815 () Bool)

(assert (=> b!1085544 m!1003815))

(declare-fun m!1003817 () Bool)

(assert (=> b!1085544 m!1003817))

(assert (=> b!1085544 m!1003805))

(declare-fun m!1003819 () Bool)

(assert (=> b!1085544 m!1003819))

(declare-fun m!1003821 () Bool)

(assert (=> b!1085541 m!1003821))

(declare-fun m!1003823 () Bool)

(assert (=> b!1085543 m!1003823))

(declare-fun m!1003825 () Bool)

(assert (=> b!1085550 m!1003825))

(declare-fun m!1003827 () Bool)

(assert (=> b!1085550 m!1003827))

(declare-fun m!1003829 () Bool)

(assert (=> b!1085550 m!1003829))

(declare-fun m!1003831 () Bool)

(assert (=> b!1085550 m!1003831))

(declare-fun m!1003833 () Bool)

(assert (=> b!1085550 m!1003833))

(declare-fun m!1003835 () Bool)

(assert (=> b!1085550 m!1003835))

(declare-fun m!1003837 () Bool)

(assert (=> b!1085550 m!1003837))

(declare-fun m!1003839 () Bool)

(assert (=> b!1085550 m!1003839))

(declare-fun m!1003841 () Bool)

(assert (=> b!1085550 m!1003841))

(declare-fun m!1003843 () Bool)

(assert (=> b!1085550 m!1003843))

(declare-fun m!1003845 () Bool)

(assert (=> b!1085539 m!1003845))

(declare-fun m!1003847 () Bool)

(assert (=> b!1085542 m!1003847))

(declare-fun m!1003849 () Bool)

(assert (=> b!1085542 m!1003849))

(declare-fun m!1003851 () Bool)

(assert (=> b!1085542 m!1003851))

(check-sat (not b!1085552) (not b_lambda!17239) (not b!1085550) (not b!1085549) (not b!1085539) (not mapNonEmpty!41566) (not b!1085545) b_and!35773 (not b!1085544) (not b!1085543) (not b_next!22539) tp_is_empty!26541 (not b!1085542) (not start!95922))
(check-sat b_and!35773 (not b_next!22539))
