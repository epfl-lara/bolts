; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95934 () Bool)

(assert start!95934)

(declare-fun b_free!22551 () Bool)

(declare-fun b_next!22551 () Bool)

(assert (=> start!95934 (= b_free!22551 (not b_next!22551))))

(declare-fun tp!79503 () Bool)

(declare-fun b_and!35795 () Bool)

(assert (=> start!95934 (= tp!79503 b_and!35795)))

(declare-fun mapNonEmpty!41584 () Bool)

(declare-fun mapRes!41584 () Bool)

(declare-fun tp!79502 () Bool)

(declare-fun e!620317 () Bool)

(assert (=> mapNonEmpty!41584 (= mapRes!41584 (and tp!79502 e!620317))))

(declare-datatypes ((V!40531 0))(
  ( (V!40532 (val!13333 Int)) )
))
(declare-datatypes ((ValueCell!12567 0))(
  ( (ValueCellFull!12567 (v!15955 V!40531)) (EmptyCell!12567) )
))
(declare-fun mapValue!41584 () ValueCell!12567)

(declare-fun mapKey!41584 () (_ BitVec 32))

(declare-fun mapRest!41584 () (Array (_ BitVec 32) ValueCell!12567))

(declare-datatypes ((array!70004 0))(
  ( (array!70005 (arr!33672 (Array (_ BitVec 32) ValueCell!12567)) (size!34209 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70004)

(assert (=> mapNonEmpty!41584 (= (arr!33672 _values!874) (store mapRest!41584 mapKey!41584 mapValue!41584))))

(declare-fun b!1085803 () Bool)

(declare-fun res!724066 () Bool)

(declare-fun e!620313 () Bool)

(assert (=> b!1085803 (=> (not res!724066) (not e!620313))))

(declare-datatypes ((array!70006 0))(
  ( (array!70007 (arr!33673 (Array (_ BitVec 32) (_ BitVec 64))) (size!34210 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70006)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70006 (_ BitVec 32)) Bool)

(assert (=> b!1085803 (= res!724066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1085804 () Bool)

(declare-fun e!620319 () Bool)

(declare-fun e!620314 () Bool)

(assert (=> b!1085804 (= e!620319 e!620314)))

(declare-fun res!724071 () Bool)

(assert (=> b!1085804 (=> res!724071 e!620314)))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1085804 (= res!724071 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((tuple2!16978 0))(
  ( (tuple2!16979 (_1!8499 (_ BitVec 64)) (_2!8499 V!40531)) )
))
(declare-datatypes ((List!23617 0))(
  ( (Nil!23614) (Cons!23613 (h!24822 tuple2!16978) (t!33233 List!23617)) )
))
(declare-datatypes ((ListLongMap!14959 0))(
  ( (ListLongMap!14960 (toList!7495 List!23617)) )
))
(declare-fun lt!482145 () ListLongMap!14959)

(declare-fun lt!482149 () ListLongMap!14959)

(assert (=> b!1085804 (= lt!482145 lt!482149)))

(declare-fun lt!482154 () ListLongMap!14959)

(declare-fun -!776 (ListLongMap!14959 (_ BitVec 64)) ListLongMap!14959)

(assert (=> b!1085804 (= lt!482145 (-!776 lt!482154 k0!904))))

(declare-fun zeroValue!831 () V!40531)

(declare-datatypes ((Unit!35667 0))(
  ( (Unit!35668) )
))
(declare-fun lt!482142 () Unit!35667)

(declare-fun lt!482155 () ListLongMap!14959)

(declare-fun addRemoveCommutativeForDiffKeys!20 (ListLongMap!14959 (_ BitVec 64) V!40531 (_ BitVec 64)) Unit!35667)

(assert (=> b!1085804 (= lt!482142 (addRemoveCommutativeForDiffKeys!20 lt!482155 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun lt!482152 () ListLongMap!14959)

(declare-fun lt!482147 () tuple2!16978)

(declare-fun +!3224 (ListLongMap!14959 tuple2!16978) ListLongMap!14959)

(assert (=> b!1085804 (= lt!482152 (+!3224 lt!482149 lt!482147))))

(declare-fun lt!482153 () ListLongMap!14959)

(declare-fun lt!482156 () tuple2!16978)

(assert (=> b!1085804 (= lt!482149 (+!3224 lt!482153 lt!482156))))

(declare-fun lt!482140 () ListLongMap!14959)

(declare-fun lt!482143 () ListLongMap!14959)

(assert (=> b!1085804 (= lt!482140 lt!482143)))

(assert (=> b!1085804 (= lt!482143 (+!3224 lt!482154 lt!482147))))

(assert (=> b!1085804 (= lt!482154 (+!3224 lt!482155 lt!482156))))

(declare-fun lt!482144 () ListLongMap!14959)

(assert (=> b!1085804 (= lt!482152 (+!3224 (+!3224 lt!482144 lt!482156) lt!482147))))

(declare-fun minValue!831 () V!40531)

(assert (=> b!1085804 (= lt!482147 (tuple2!16979 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1085804 (= lt!482156 (tuple2!16979 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1085805 () Bool)

(declare-fun e!620318 () Bool)

(assert (=> b!1085805 (= e!620318 (not e!620319))))

(declare-fun res!724075 () Bool)

(assert (=> b!1085805 (=> res!724075 e!620319)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1085805 (= res!724075 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4250 (array!70006 array!70004 (_ BitVec 32) (_ BitVec 32) V!40531 V!40531 (_ BitVec 32) Int) ListLongMap!14959)

(assert (=> b!1085805 (= lt!482140 (getCurrentListMap!4250 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!482150 () array!70004)

(declare-fun lt!482151 () array!70006)

(assert (=> b!1085805 (= lt!482152 (getCurrentListMap!4250 lt!482151 lt!482150 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1085805 (and (= lt!482144 lt!482153) (= lt!482153 lt!482144))))

(assert (=> b!1085805 (= lt!482153 (-!776 lt!482155 k0!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lt!482146 () Unit!35667)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!56 (array!70006 array!70004 (_ BitVec 32) (_ BitVec 32) V!40531 V!40531 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35667)

(assert (=> b!1085805 (= lt!482146 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!56 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4002 (array!70006 array!70004 (_ BitVec 32) (_ BitVec 32) V!40531 V!40531 (_ BitVec 32) Int) ListLongMap!14959)

(assert (=> b!1085805 (= lt!482144 (getCurrentListMapNoExtraKeys!4002 lt!482151 lt!482150 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2138 (Int (_ BitVec 64)) V!40531)

(assert (=> b!1085805 (= lt!482150 (array!70005 (store (arr!33672 _values!874) i!650 (ValueCellFull!12567 (dynLambda!2138 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34209 _values!874)))))

(assert (=> b!1085805 (= lt!482155 (getCurrentListMapNoExtraKeys!4002 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70006 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1085805 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!482148 () Unit!35667)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70006 (_ BitVec 64) (_ BitVec 32)) Unit!35667)

(assert (=> b!1085805 (= lt!482148 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1085806 () Bool)

(declare-fun res!724073 () Bool)

(assert (=> b!1085806 (=> (not res!724073) (not e!620313))))

(assert (=> b!1085806 (= res!724073 (= (select (arr!33673 _keys!1070) i!650) k0!904))))

(declare-fun mapIsEmpty!41584 () Bool)

(assert (=> mapIsEmpty!41584 mapRes!41584))

(declare-fun b!1085807 () Bool)

(assert (=> b!1085807 (= e!620314 true)))

(assert (=> b!1085807 (= (-!776 lt!482143 k0!904) (+!3224 lt!482145 lt!482147))))

(declare-fun lt!482141 () Unit!35667)

(assert (=> b!1085807 (= lt!482141 (addRemoveCommutativeForDiffKeys!20 lt!482154 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1085809 () Bool)

(declare-fun res!724070 () Bool)

(assert (=> b!1085809 (=> (not res!724070) (not e!620313))))

(declare-datatypes ((List!23618 0))(
  ( (Nil!23615) (Cons!23614 (h!24823 (_ BitVec 64)) (t!33234 List!23618)) )
))
(declare-fun arrayNoDuplicates!0 (array!70006 (_ BitVec 32) List!23618) Bool)

(assert (=> b!1085809 (= res!724070 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23615))))

(declare-fun b!1085810 () Bool)

(declare-fun res!724072 () Bool)

(assert (=> b!1085810 (=> (not res!724072) (not e!620313))))

(assert (=> b!1085810 (= res!724072 (and (= (size!34209 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34210 _keys!1070) (size!34209 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1085811 () Bool)

(declare-fun e!620315 () Bool)

(declare-fun e!620320 () Bool)

(assert (=> b!1085811 (= e!620315 (and e!620320 mapRes!41584))))

(declare-fun condMapEmpty!41584 () Bool)

(declare-fun mapDefault!41584 () ValueCell!12567)

(assert (=> b!1085811 (= condMapEmpty!41584 (= (arr!33672 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12567)) mapDefault!41584)))))

(declare-fun b!1085812 () Bool)

(declare-fun res!724074 () Bool)

(assert (=> b!1085812 (=> (not res!724074) (not e!620313))))

(assert (=> b!1085812 (= res!724074 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34210 _keys!1070))))))

(declare-fun b!1085813 () Bool)

(declare-fun res!724067 () Bool)

(assert (=> b!1085813 (=> (not res!724067) (not e!620313))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1085813 (= res!724067 (validKeyInArray!0 k0!904))))

(declare-fun b!1085814 () Bool)

(declare-fun tp_is_empty!26553 () Bool)

(assert (=> b!1085814 (= e!620317 tp_is_empty!26553)))

(declare-fun b!1085815 () Bool)

(assert (=> b!1085815 (= e!620313 e!620318)))

(declare-fun res!724076 () Bool)

(assert (=> b!1085815 (=> (not res!724076) (not e!620318))))

(assert (=> b!1085815 (= res!724076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!482151 mask!1414))))

(assert (=> b!1085815 (= lt!482151 (array!70007 (store (arr!33673 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34210 _keys!1070)))))

(declare-fun b!1085816 () Bool)

(declare-fun res!724069 () Bool)

(assert (=> b!1085816 (=> (not res!724069) (not e!620318))))

(assert (=> b!1085816 (= res!724069 (arrayNoDuplicates!0 lt!482151 #b00000000000000000000000000000000 Nil!23615))))

(declare-fun res!724068 () Bool)

(assert (=> start!95934 (=> (not res!724068) (not e!620313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95934 (= res!724068 (validMask!0 mask!1414))))

(assert (=> start!95934 e!620313))

(assert (=> start!95934 tp!79503))

(assert (=> start!95934 true))

(assert (=> start!95934 tp_is_empty!26553))

(declare-fun array_inv!25834 (array!70006) Bool)

(assert (=> start!95934 (array_inv!25834 _keys!1070)))

(declare-fun array_inv!25835 (array!70004) Bool)

(assert (=> start!95934 (and (array_inv!25835 _values!874) e!620315)))

(declare-fun b!1085808 () Bool)

(assert (=> b!1085808 (= e!620320 tp_is_empty!26553)))

(assert (= (and start!95934 res!724068) b!1085810))

(assert (= (and b!1085810 res!724072) b!1085803))

(assert (= (and b!1085803 res!724066) b!1085809))

(assert (= (and b!1085809 res!724070) b!1085812))

(assert (= (and b!1085812 res!724074) b!1085813))

(assert (= (and b!1085813 res!724067) b!1085806))

(assert (= (and b!1085806 res!724073) b!1085815))

(assert (= (and b!1085815 res!724076) b!1085816))

(assert (= (and b!1085816 res!724069) b!1085805))

(assert (= (and b!1085805 (not res!724075)) b!1085804))

(assert (= (and b!1085804 (not res!724071)) b!1085807))

(assert (= (and b!1085811 condMapEmpty!41584) mapIsEmpty!41584))

(assert (= (and b!1085811 (not condMapEmpty!41584)) mapNonEmpty!41584))

(get-info :version)

(assert (= (and mapNonEmpty!41584 ((_ is ValueCellFull!12567) mapValue!41584)) b!1085814))

(assert (= (and b!1085811 ((_ is ValueCellFull!12567) mapDefault!41584)) b!1085808))

(assert (= start!95934 b!1085811))

(declare-fun b_lambda!17251 () Bool)

(assert (=> (not b_lambda!17251) (not b!1085805)))

(declare-fun t!33232 () Bool)

(declare-fun tb!7437 () Bool)

(assert (=> (and start!95934 (= defaultEntry!882 defaultEntry!882) t!33232) tb!7437))

(declare-fun result!15385 () Bool)

(assert (=> tb!7437 (= result!15385 tp_is_empty!26553)))

(assert (=> b!1085805 t!33232))

(declare-fun b_and!35797 () Bool)

(assert (= b_and!35795 (and (=> t!33232 result!15385) b_and!35797)))

(declare-fun m!1004173 () Bool)

(assert (=> b!1085803 m!1004173))

(declare-fun m!1004175 () Bool)

(assert (=> b!1085806 m!1004175))

(declare-fun m!1004177 () Bool)

(assert (=> b!1085816 m!1004177))

(declare-fun m!1004179 () Bool)

(assert (=> b!1085809 m!1004179))

(declare-fun m!1004181 () Bool)

(assert (=> mapNonEmpty!41584 m!1004181))

(declare-fun m!1004183 () Bool)

(assert (=> b!1085815 m!1004183))

(declare-fun m!1004185 () Bool)

(assert (=> b!1085815 m!1004185))

(declare-fun m!1004187 () Bool)

(assert (=> start!95934 m!1004187))

(declare-fun m!1004189 () Bool)

(assert (=> start!95934 m!1004189))

(declare-fun m!1004191 () Bool)

(assert (=> start!95934 m!1004191))

(declare-fun m!1004193 () Bool)

(assert (=> b!1085807 m!1004193))

(declare-fun m!1004195 () Bool)

(assert (=> b!1085807 m!1004195))

(declare-fun m!1004197 () Bool)

(assert (=> b!1085807 m!1004197))

(declare-fun m!1004199 () Bool)

(assert (=> b!1085813 m!1004199))

(declare-fun m!1004201 () Bool)

(assert (=> b!1085805 m!1004201))

(declare-fun m!1004203 () Bool)

(assert (=> b!1085805 m!1004203))

(declare-fun m!1004205 () Bool)

(assert (=> b!1085805 m!1004205))

(declare-fun m!1004207 () Bool)

(assert (=> b!1085805 m!1004207))

(declare-fun m!1004209 () Bool)

(assert (=> b!1085805 m!1004209))

(declare-fun m!1004211 () Bool)

(assert (=> b!1085805 m!1004211))

(declare-fun m!1004213 () Bool)

(assert (=> b!1085805 m!1004213))

(declare-fun m!1004215 () Bool)

(assert (=> b!1085805 m!1004215))

(declare-fun m!1004217 () Bool)

(assert (=> b!1085805 m!1004217))

(declare-fun m!1004219 () Bool)

(assert (=> b!1085805 m!1004219))

(declare-fun m!1004221 () Bool)

(assert (=> b!1085804 m!1004221))

(declare-fun m!1004223 () Bool)

(assert (=> b!1085804 m!1004223))

(declare-fun m!1004225 () Bool)

(assert (=> b!1085804 m!1004225))

(declare-fun m!1004227 () Bool)

(assert (=> b!1085804 m!1004227))

(assert (=> b!1085804 m!1004227))

(declare-fun m!1004229 () Bool)

(assert (=> b!1085804 m!1004229))

(declare-fun m!1004231 () Bool)

(assert (=> b!1085804 m!1004231))

(declare-fun m!1004233 () Bool)

(assert (=> b!1085804 m!1004233))

(declare-fun m!1004235 () Bool)

(assert (=> b!1085804 m!1004235))

(check-sat (not b!1085805) (not b_lambda!17251) (not b!1085803) (not b!1085809) (not b!1085813) (not start!95934) (not b!1085804) (not b!1085815) tp_is_empty!26553 (not b!1085807) (not mapNonEmpty!41584) (not b!1085816) b_and!35797 (not b_next!22551))
(check-sat b_and!35797 (not b_next!22551))
