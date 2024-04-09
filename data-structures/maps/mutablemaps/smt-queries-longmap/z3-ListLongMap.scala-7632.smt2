; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96150 () Bool)

(assert start!96150)

(declare-fun b_free!22767 () Bool)

(declare-fun b_next!22767 () Bool)

(assert (=> start!96150 (= b_free!22767 (not b_next!22767))))

(declare-fun tp!80151 () Bool)

(declare-fun b_and!36227 () Bool)

(assert (=> start!96150 (= tp!80151 b_and!36227)))

(declare-fun b!1090573 () Bool)

(declare-fun e!622910 () Bool)

(assert (=> b!1090573 (= e!622910 true)))

(declare-datatypes ((V!40819 0))(
  ( (V!40820 (val!13441 Int)) )
))
(declare-datatypes ((tuple2!17158 0))(
  ( (tuple2!17159 (_1!8589 (_ BitVec 64)) (_2!8589 V!40819)) )
))
(declare-datatypes ((List!23797 0))(
  ( (Nil!23794) (Cons!23793 (h!25002 tuple2!17158) (t!33629 List!23797)) )
))
(declare-datatypes ((ListLongMap!15139 0))(
  ( (ListLongMap!15140 (toList!7585 List!23797)) )
))
(declare-fun lt!486684 () ListLongMap!15139)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun lt!486674 () ListLongMap!15139)

(declare-fun -!863 (ListLongMap!15139 (_ BitVec 64)) ListLongMap!15139)

(assert (=> b!1090573 (= (-!863 lt!486684 k0!904) lt!486674)))

(declare-fun minValue!831 () V!40819)

(declare-fun lt!486678 () ListLongMap!15139)

(declare-datatypes ((Unit!35841 0))(
  ( (Unit!35842) )
))
(declare-fun lt!486683 () Unit!35841)

(declare-fun addRemoveCommutativeForDiffKeys!91 (ListLongMap!15139 (_ BitVec 64) V!40819 (_ BitVec 64)) Unit!35841)

(assert (=> b!1090573 (= lt!486683 (addRemoveCommutativeForDiffKeys!91 lt!486678 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1090574 () Bool)

(declare-fun res!727657 () Bool)

(declare-fun e!622906 () Bool)

(assert (=> b!1090574 (=> (not res!727657) (not e!622906))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70426 0))(
  ( (array!70427 (arr!33883 (Array (_ BitVec 32) (_ BitVec 64))) (size!34420 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70426)

(declare-datatypes ((ValueCell!12675 0))(
  ( (ValueCellFull!12675 (v!16063 V!40819)) (EmptyCell!12675) )
))
(declare-datatypes ((array!70428 0))(
  ( (array!70429 (arr!33884 (Array (_ BitVec 32) ValueCell!12675)) (size!34421 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70428)

(assert (=> b!1090574 (= res!727657 (and (= (size!34421 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34420 _keys!1070) (size!34421 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1090575 () Bool)

(declare-fun e!622912 () Bool)

(declare-fun tp_is_empty!26769 () Bool)

(assert (=> b!1090575 (= e!622912 tp_is_empty!26769)))

(declare-fun b!1090576 () Bool)

(declare-fun res!727651 () Bool)

(assert (=> b!1090576 (=> (not res!727651) (not e!622906))))

(declare-datatypes ((List!23798 0))(
  ( (Nil!23795) (Cons!23794 (h!25003 (_ BitVec 64)) (t!33630 List!23798)) )
))
(declare-fun arrayNoDuplicates!0 (array!70426 (_ BitVec 32) List!23798) Bool)

(assert (=> b!1090576 (= res!727651 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23795))))

(declare-fun mapIsEmpty!41908 () Bool)

(declare-fun mapRes!41908 () Bool)

(assert (=> mapIsEmpty!41908 mapRes!41908))

(declare-fun b!1090577 () Bool)

(declare-fun e!622905 () Bool)

(assert (=> b!1090577 (= e!622905 e!622910)))

(declare-fun res!727656 () Bool)

(assert (=> b!1090577 (=> res!727656 e!622910)))

(assert (=> b!1090577 (= res!727656 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!486679 () ListLongMap!15139)

(assert (=> b!1090577 (= lt!486679 lt!486684)))

(declare-fun lt!486685 () tuple2!17158)

(declare-fun +!3294 (ListLongMap!15139 tuple2!17158) ListLongMap!15139)

(assert (=> b!1090577 (= lt!486684 (+!3294 lt!486678 lt!486685))))

(declare-fun lt!486675 () ListLongMap!15139)

(assert (=> b!1090577 (= lt!486675 lt!486674)))

(declare-fun lt!486677 () ListLongMap!15139)

(assert (=> b!1090577 (= lt!486674 (+!3294 lt!486677 lt!486685))))

(declare-fun lt!486682 () ListLongMap!15139)

(assert (=> b!1090577 (= lt!486675 (+!3294 lt!486682 lt!486685))))

(assert (=> b!1090577 (= lt!486685 (tuple2!17159 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun res!727648 () Bool)

(assert (=> start!96150 (=> (not res!727648) (not e!622906))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96150 (= res!727648 (validMask!0 mask!1414))))

(assert (=> start!96150 e!622906))

(assert (=> start!96150 tp!80151))

(assert (=> start!96150 true))

(assert (=> start!96150 tp_is_empty!26769))

(declare-fun array_inv!25982 (array!70426) Bool)

(assert (=> start!96150 (array_inv!25982 _keys!1070)))

(declare-fun e!622908 () Bool)

(declare-fun array_inv!25983 (array!70428) Bool)

(assert (=> start!96150 (and (array_inv!25983 _values!874) e!622908)))

(declare-fun b!1090578 () Bool)

(declare-fun res!727658 () Bool)

(assert (=> b!1090578 (=> (not res!727658) (not e!622906))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1090578 (= res!727658 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34420 _keys!1070))))))

(declare-fun b!1090579 () Bool)

(declare-fun res!727652 () Bool)

(assert (=> b!1090579 (=> (not res!727652) (not e!622906))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70426 (_ BitVec 32)) Bool)

(assert (=> b!1090579 (= res!727652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!41908 () Bool)

(declare-fun tp!80150 () Bool)

(assert (=> mapNonEmpty!41908 (= mapRes!41908 (and tp!80150 e!622912))))

(declare-fun mapRest!41908 () (Array (_ BitVec 32) ValueCell!12675))

(declare-fun mapValue!41908 () ValueCell!12675)

(declare-fun mapKey!41908 () (_ BitVec 32))

(assert (=> mapNonEmpty!41908 (= (arr!33884 _values!874) (store mapRest!41908 mapKey!41908 mapValue!41908))))

(declare-fun b!1090580 () Bool)

(declare-fun res!727650 () Bool)

(declare-fun e!622911 () Bool)

(assert (=> b!1090580 (=> (not res!727650) (not e!622911))))

(declare-fun lt!486686 () array!70426)

(assert (=> b!1090580 (= res!727650 (arrayNoDuplicates!0 lt!486686 #b00000000000000000000000000000000 Nil!23795))))

(declare-fun b!1090581 () Bool)

(assert (=> b!1090581 (= e!622911 (not e!622905))))

(declare-fun res!727654 () Bool)

(assert (=> b!1090581 (=> res!727654 e!622905)))

(assert (=> b!1090581 (= res!727654 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!40819)

(declare-fun getCurrentListMap!4326 (array!70426 array!70428 (_ BitVec 32) (_ BitVec 32) V!40819 V!40819 (_ BitVec 32) Int) ListLongMap!15139)

(assert (=> b!1090581 (= lt!486679 (getCurrentListMap!4326 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486676 () array!70428)

(assert (=> b!1090581 (= lt!486675 (getCurrentListMap!4326 lt!486686 lt!486676 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1090581 (and (= lt!486682 lt!486677) (= lt!486677 lt!486682))))

(assert (=> b!1090581 (= lt!486677 (-!863 lt!486678 k0!904))))

(declare-fun lt!486680 () Unit!35841)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!132 (array!70426 array!70428 (_ BitVec 32) (_ BitVec 32) V!40819 V!40819 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35841)

(assert (=> b!1090581 (= lt!486680 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!132 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4078 (array!70426 array!70428 (_ BitVec 32) (_ BitVec 32) V!40819 V!40819 (_ BitVec 32) Int) ListLongMap!15139)

(assert (=> b!1090581 (= lt!486682 (getCurrentListMapNoExtraKeys!4078 lt!486686 lt!486676 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2214 (Int (_ BitVec 64)) V!40819)

(assert (=> b!1090581 (= lt!486676 (array!70429 (store (arr!33884 _values!874) i!650 (ValueCellFull!12675 (dynLambda!2214 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34421 _values!874)))))

(assert (=> b!1090581 (= lt!486678 (getCurrentListMapNoExtraKeys!4078 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70426 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1090581 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!486681 () Unit!35841)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70426 (_ BitVec 64) (_ BitVec 32)) Unit!35841)

(assert (=> b!1090581 (= lt!486681 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1090582 () Bool)

(declare-fun e!622907 () Bool)

(assert (=> b!1090582 (= e!622907 tp_is_empty!26769)))

(declare-fun b!1090583 () Bool)

(declare-fun res!727655 () Bool)

(assert (=> b!1090583 (=> (not res!727655) (not e!622906))))

(assert (=> b!1090583 (= res!727655 (= (select (arr!33883 _keys!1070) i!650) k0!904))))

(declare-fun b!1090584 () Bool)

(declare-fun res!727649 () Bool)

(assert (=> b!1090584 (=> (not res!727649) (not e!622906))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1090584 (= res!727649 (validKeyInArray!0 k0!904))))

(declare-fun b!1090585 () Bool)

(assert (=> b!1090585 (= e!622906 e!622911)))

(declare-fun res!727653 () Bool)

(assert (=> b!1090585 (=> (not res!727653) (not e!622911))))

(assert (=> b!1090585 (= res!727653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486686 mask!1414))))

(assert (=> b!1090585 (= lt!486686 (array!70427 (store (arr!33883 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34420 _keys!1070)))))

(declare-fun b!1090586 () Bool)

(assert (=> b!1090586 (= e!622908 (and e!622907 mapRes!41908))))

(declare-fun condMapEmpty!41908 () Bool)

(declare-fun mapDefault!41908 () ValueCell!12675)

(assert (=> b!1090586 (= condMapEmpty!41908 (= (arr!33884 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12675)) mapDefault!41908)))))

(assert (= (and start!96150 res!727648) b!1090574))

(assert (= (and b!1090574 res!727657) b!1090579))

(assert (= (and b!1090579 res!727652) b!1090576))

(assert (= (and b!1090576 res!727651) b!1090578))

(assert (= (and b!1090578 res!727658) b!1090584))

(assert (= (and b!1090584 res!727649) b!1090583))

(assert (= (and b!1090583 res!727655) b!1090585))

(assert (= (and b!1090585 res!727653) b!1090580))

(assert (= (and b!1090580 res!727650) b!1090581))

(assert (= (and b!1090581 (not res!727654)) b!1090577))

(assert (= (and b!1090577 (not res!727656)) b!1090573))

(assert (= (and b!1090586 condMapEmpty!41908) mapIsEmpty!41908))

(assert (= (and b!1090586 (not condMapEmpty!41908)) mapNonEmpty!41908))

(get-info :version)

(assert (= (and mapNonEmpty!41908 ((_ is ValueCellFull!12675) mapValue!41908)) b!1090575))

(assert (= (and b!1090586 ((_ is ValueCellFull!12675) mapDefault!41908)) b!1090582))

(assert (= start!96150 b!1090586))

(declare-fun b_lambda!17467 () Bool)

(assert (=> (not b_lambda!17467) (not b!1090581)))

(declare-fun t!33628 () Bool)

(declare-fun tb!7653 () Bool)

(assert (=> (and start!96150 (= defaultEntry!882 defaultEntry!882) t!33628) tb!7653))

(declare-fun result!15817 () Bool)

(assert (=> tb!7653 (= result!15817 tp_is_empty!26769)))

(assert (=> b!1090581 t!33628))

(declare-fun b_and!36229 () Bool)

(assert (= b_and!36227 (and (=> t!33628 result!15817) b_and!36229)))

(declare-fun m!1010149 () Bool)

(assert (=> b!1090579 m!1010149))

(declare-fun m!1010151 () Bool)

(assert (=> b!1090580 m!1010151))

(declare-fun m!1010153 () Bool)

(assert (=> b!1090581 m!1010153))

(declare-fun m!1010155 () Bool)

(assert (=> b!1090581 m!1010155))

(declare-fun m!1010157 () Bool)

(assert (=> b!1090581 m!1010157))

(declare-fun m!1010159 () Bool)

(assert (=> b!1090581 m!1010159))

(declare-fun m!1010161 () Bool)

(assert (=> b!1090581 m!1010161))

(declare-fun m!1010163 () Bool)

(assert (=> b!1090581 m!1010163))

(declare-fun m!1010165 () Bool)

(assert (=> b!1090581 m!1010165))

(declare-fun m!1010167 () Bool)

(assert (=> b!1090581 m!1010167))

(declare-fun m!1010169 () Bool)

(assert (=> b!1090581 m!1010169))

(declare-fun m!1010171 () Bool)

(assert (=> b!1090581 m!1010171))

(declare-fun m!1010173 () Bool)

(assert (=> b!1090573 m!1010173))

(declare-fun m!1010175 () Bool)

(assert (=> b!1090573 m!1010175))

(declare-fun m!1010177 () Bool)

(assert (=> b!1090583 m!1010177))

(declare-fun m!1010179 () Bool)

(assert (=> b!1090577 m!1010179))

(declare-fun m!1010181 () Bool)

(assert (=> b!1090577 m!1010181))

(declare-fun m!1010183 () Bool)

(assert (=> b!1090577 m!1010183))

(declare-fun m!1010185 () Bool)

(assert (=> mapNonEmpty!41908 m!1010185))

(declare-fun m!1010187 () Bool)

(assert (=> b!1090585 m!1010187))

(declare-fun m!1010189 () Bool)

(assert (=> b!1090585 m!1010189))

(declare-fun m!1010191 () Bool)

(assert (=> b!1090576 m!1010191))

(declare-fun m!1010193 () Bool)

(assert (=> b!1090584 m!1010193))

(declare-fun m!1010195 () Bool)

(assert (=> start!96150 m!1010195))

(declare-fun m!1010197 () Bool)

(assert (=> start!96150 m!1010197))

(declare-fun m!1010199 () Bool)

(assert (=> start!96150 m!1010199))

(check-sat (not b!1090581) (not b!1090579) (not b!1090577) b_and!36229 (not b!1090573) tp_is_empty!26769 (not start!96150) (not b!1090580) (not b!1090576) (not b_next!22767) (not b!1090585) (not b_lambda!17467) (not mapNonEmpty!41908) (not b!1090584))
(check-sat b_and!36229 (not b_next!22767))
