; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95994 () Bool)

(assert start!95994)

(declare-fun b_free!22611 () Bool)

(declare-fun b_next!22611 () Bool)

(assert (=> start!95994 (= b_free!22611 (not b_next!22611))))

(declare-fun tp!79683 () Bool)

(declare-fun b_and!35915 () Bool)

(assert (=> start!95994 (= tp!79683 b_and!35915)))

(declare-fun b!1087123 () Bool)

(declare-fun res!725066 () Bool)

(declare-fun e!621039 () Bool)

(assert (=> b!1087123 (=> (not res!725066) (not e!621039))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70120 0))(
  ( (array!70121 (arr!33730 (Array (_ BitVec 32) (_ BitVec 64))) (size!34267 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70120)

(declare-datatypes ((V!40611 0))(
  ( (V!40612 (val!13363 Int)) )
))
(declare-datatypes ((ValueCell!12597 0))(
  ( (ValueCellFull!12597 (v!15985 V!40611)) (EmptyCell!12597) )
))
(declare-datatypes ((array!70122 0))(
  ( (array!70123 (arr!33731 (Array (_ BitVec 32) ValueCell!12597)) (size!34268 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70122)

(assert (=> b!1087123 (= res!725066 (and (= (size!34268 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34267 _keys!1070) (size!34268 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!725058 () Bool)

(assert (=> start!95994 (=> (not res!725058) (not e!621039))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95994 (= res!725058 (validMask!0 mask!1414))))

(assert (=> start!95994 e!621039))

(assert (=> start!95994 tp!79683))

(assert (=> start!95994 true))

(declare-fun tp_is_empty!26613 () Bool)

(assert (=> start!95994 tp_is_empty!26613))

(declare-fun array_inv!25876 (array!70120) Bool)

(assert (=> start!95994 (array_inv!25876 _keys!1070)))

(declare-fun e!621040 () Bool)

(declare-fun array_inv!25877 (array!70122) Bool)

(assert (=> start!95994 (and (array_inv!25877 _values!874) e!621040)))

(declare-fun mapNonEmpty!41674 () Bool)

(declare-fun mapRes!41674 () Bool)

(declare-fun tp!79682 () Bool)

(declare-fun e!621036 () Bool)

(assert (=> mapNonEmpty!41674 (= mapRes!41674 (and tp!79682 e!621036))))

(declare-fun mapKey!41674 () (_ BitVec 32))

(declare-fun mapRest!41674 () (Array (_ BitVec 32) ValueCell!12597))

(declare-fun mapValue!41674 () ValueCell!12597)

(assert (=> mapNonEmpty!41674 (= (arr!33731 _values!874) (store mapRest!41674 mapKey!41674 mapValue!41674))))

(declare-fun b!1087124 () Bool)

(declare-fun e!621038 () Bool)

(declare-fun e!621033 () Bool)

(assert (=> b!1087124 (= e!621038 (not e!621033))))

(declare-fun res!725059 () Bool)

(assert (=> b!1087124 (=> res!725059 e!621033)))

(assert (=> b!1087124 (= res!725059 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40611)

(declare-datatypes ((tuple2!17020 0))(
  ( (tuple2!17021 (_1!8520 (_ BitVec 64)) (_2!8520 V!40611)) )
))
(declare-datatypes ((List!23661 0))(
  ( (Nil!23658) (Cons!23657 (h!24866 tuple2!17020) (t!33337 List!23661)) )
))
(declare-datatypes ((ListLongMap!15001 0))(
  ( (ListLongMap!15002 (toList!7516 List!23661)) )
))
(declare-fun lt!483680 () ListLongMap!15001)

(declare-fun zeroValue!831 () V!40611)

(declare-fun getCurrentListMap!4270 (array!70120 array!70122 (_ BitVec 32) (_ BitVec 32) V!40611 V!40611 (_ BitVec 32) Int) ListLongMap!15001)

(assert (=> b!1087124 (= lt!483680 (getCurrentListMap!4270 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483674 () array!70122)

(declare-fun lt!483683 () ListLongMap!15001)

(declare-fun lt!483670 () array!70120)

(assert (=> b!1087124 (= lt!483683 (getCurrentListMap!4270 lt!483670 lt!483674 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483676 () ListLongMap!15001)

(declare-fun lt!483679 () ListLongMap!15001)

(assert (=> b!1087124 (and (= lt!483676 lt!483679) (= lt!483679 lt!483676))))

(declare-fun lt!483682 () ListLongMap!15001)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun -!797 (ListLongMap!15001 (_ BitVec 64)) ListLongMap!15001)

(assert (=> b!1087124 (= lt!483679 (-!797 lt!483682 k0!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35709 0))(
  ( (Unit!35710) )
))
(declare-fun lt!483675 () Unit!35709)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!76 (array!70120 array!70122 (_ BitVec 32) (_ BitVec 32) V!40611 V!40611 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35709)

(assert (=> b!1087124 (= lt!483675 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!76 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4022 (array!70120 array!70122 (_ BitVec 32) (_ BitVec 32) V!40611 V!40611 (_ BitVec 32) Int) ListLongMap!15001)

(assert (=> b!1087124 (= lt!483676 (getCurrentListMapNoExtraKeys!4022 lt!483670 lt!483674 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2158 (Int (_ BitVec 64)) V!40611)

(assert (=> b!1087124 (= lt!483674 (array!70123 (store (arr!33731 _values!874) i!650 (ValueCellFull!12597 (dynLambda!2158 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34268 _values!874)))))

(assert (=> b!1087124 (= lt!483682 (getCurrentListMapNoExtraKeys!4022 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70120 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1087124 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!483681 () Unit!35709)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70120 (_ BitVec 64) (_ BitVec 32)) Unit!35709)

(assert (=> b!1087124 (= lt!483681 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1087125 () Bool)

(declare-fun res!725062 () Bool)

(assert (=> b!1087125 (=> (not res!725062) (not e!621039))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70120 (_ BitVec 32)) Bool)

(assert (=> b!1087125 (= res!725062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1087126 () Bool)

(declare-fun res!725060 () Bool)

(assert (=> b!1087126 (=> (not res!725060) (not e!621039))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1087126 (= res!725060 (validKeyInArray!0 k0!904))))

(declare-fun b!1087127 () Bool)

(declare-fun res!725065 () Bool)

(assert (=> b!1087127 (=> (not res!725065) (not e!621039))))

(assert (=> b!1087127 (= res!725065 (= (select (arr!33730 _keys!1070) i!650) k0!904))))

(declare-fun b!1087128 () Bool)

(declare-fun e!621034 () Bool)

(assert (=> b!1087128 (= e!621034 (bvsle #b00000000000000000000000000000000 (size!34267 _keys!1070)))))

(declare-fun lt!483686 () ListLongMap!15001)

(declare-fun lt!483685 () tuple2!17020)

(declare-fun lt!483673 () ListLongMap!15001)

(declare-fun +!3243 (ListLongMap!15001 tuple2!17020) ListLongMap!15001)

(assert (=> b!1087128 (= (-!797 lt!483673 k0!904) (+!3243 lt!483686 lt!483685))))

(declare-fun lt!483672 () Unit!35709)

(declare-fun lt!483684 () ListLongMap!15001)

(declare-fun addRemoveCommutativeForDiffKeys!39 (ListLongMap!15001 (_ BitVec 64) V!40611 (_ BitVec 64)) Unit!35709)

(assert (=> b!1087128 (= lt!483672 (addRemoveCommutativeForDiffKeys!39 lt!483684 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1087129 () Bool)

(declare-fun res!725063 () Bool)

(assert (=> b!1087129 (=> (not res!725063) (not e!621038))))

(declare-datatypes ((List!23662 0))(
  ( (Nil!23659) (Cons!23658 (h!24867 (_ BitVec 64)) (t!33338 List!23662)) )
))
(declare-fun arrayNoDuplicates!0 (array!70120 (_ BitVec 32) List!23662) Bool)

(assert (=> b!1087129 (= res!725063 (arrayNoDuplicates!0 lt!483670 #b00000000000000000000000000000000 Nil!23659))))

(declare-fun b!1087130 () Bool)

(declare-fun e!621035 () Bool)

(assert (=> b!1087130 (= e!621040 (and e!621035 mapRes!41674))))

(declare-fun condMapEmpty!41674 () Bool)

(declare-fun mapDefault!41674 () ValueCell!12597)

(assert (=> b!1087130 (= condMapEmpty!41674 (= (arr!33731 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12597)) mapDefault!41674)))))

(declare-fun b!1087131 () Bool)

(assert (=> b!1087131 (= e!621036 tp_is_empty!26613)))

(declare-fun b!1087132 () Bool)

(assert (=> b!1087132 (= e!621033 e!621034)))

(declare-fun res!725064 () Bool)

(assert (=> b!1087132 (=> res!725064 e!621034)))

(assert (=> b!1087132 (= res!725064 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!483671 () ListLongMap!15001)

(assert (=> b!1087132 (= lt!483686 lt!483671)))

(assert (=> b!1087132 (= lt!483686 (-!797 lt!483684 k0!904))))

(declare-fun lt!483677 () Unit!35709)

(assert (=> b!1087132 (= lt!483677 (addRemoveCommutativeForDiffKeys!39 lt!483682 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(assert (=> b!1087132 (= lt!483683 (+!3243 lt!483671 lt!483685))))

(declare-fun lt!483678 () tuple2!17020)

(assert (=> b!1087132 (= lt!483671 (+!3243 lt!483679 lt!483678))))

(assert (=> b!1087132 (= lt!483680 lt!483673)))

(assert (=> b!1087132 (= lt!483673 (+!3243 lt!483684 lt!483685))))

(assert (=> b!1087132 (= lt!483684 (+!3243 lt!483682 lt!483678))))

(assert (=> b!1087132 (= lt!483683 (+!3243 (+!3243 lt!483676 lt!483678) lt!483685))))

(assert (=> b!1087132 (= lt!483685 (tuple2!17021 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1087132 (= lt!483678 (tuple2!17021 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1087133 () Bool)

(assert (=> b!1087133 (= e!621039 e!621038)))

(declare-fun res!725057 () Bool)

(assert (=> b!1087133 (=> (not res!725057) (not e!621038))))

(assert (=> b!1087133 (= res!725057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!483670 mask!1414))))

(assert (=> b!1087133 (= lt!483670 (array!70121 (store (arr!33730 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34267 _keys!1070)))))

(declare-fun b!1087134 () Bool)

(declare-fun res!725056 () Bool)

(assert (=> b!1087134 (=> (not res!725056) (not e!621039))))

(assert (=> b!1087134 (= res!725056 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34267 _keys!1070))))))

(declare-fun b!1087135 () Bool)

(declare-fun res!725061 () Bool)

(assert (=> b!1087135 (=> (not res!725061) (not e!621039))))

(assert (=> b!1087135 (= res!725061 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23659))))

(declare-fun b!1087136 () Bool)

(assert (=> b!1087136 (= e!621035 tp_is_empty!26613)))

(declare-fun mapIsEmpty!41674 () Bool)

(assert (=> mapIsEmpty!41674 mapRes!41674))

(assert (= (and start!95994 res!725058) b!1087123))

(assert (= (and b!1087123 res!725066) b!1087125))

(assert (= (and b!1087125 res!725062) b!1087135))

(assert (= (and b!1087135 res!725061) b!1087134))

(assert (= (and b!1087134 res!725056) b!1087126))

(assert (= (and b!1087126 res!725060) b!1087127))

(assert (= (and b!1087127 res!725065) b!1087133))

(assert (= (and b!1087133 res!725057) b!1087129))

(assert (= (and b!1087129 res!725063) b!1087124))

(assert (= (and b!1087124 (not res!725059)) b!1087132))

(assert (= (and b!1087132 (not res!725064)) b!1087128))

(assert (= (and b!1087130 condMapEmpty!41674) mapIsEmpty!41674))

(assert (= (and b!1087130 (not condMapEmpty!41674)) mapNonEmpty!41674))

(get-info :version)

(assert (= (and mapNonEmpty!41674 ((_ is ValueCellFull!12597) mapValue!41674)) b!1087131))

(assert (= (and b!1087130 ((_ is ValueCellFull!12597) mapDefault!41674)) b!1087136))

(assert (= start!95994 b!1087130))

(declare-fun b_lambda!17311 () Bool)

(assert (=> (not b_lambda!17311) (not b!1087124)))

(declare-fun t!33336 () Bool)

(declare-fun tb!7497 () Bool)

(assert (=> (and start!95994 (= defaultEntry!882 defaultEntry!882) t!33336) tb!7497))

(declare-fun result!15505 () Bool)

(assert (=> tb!7497 (= result!15505 tp_is_empty!26613)))

(assert (=> b!1087124 t!33336))

(declare-fun b_and!35917 () Bool)

(assert (= b_and!35915 (and (=> t!33336 result!15505) b_and!35917)))

(declare-fun m!1006093 () Bool)

(assert (=> mapNonEmpty!41674 m!1006093))

(declare-fun m!1006095 () Bool)

(assert (=> b!1087133 m!1006095))

(declare-fun m!1006097 () Bool)

(assert (=> b!1087133 m!1006097))

(declare-fun m!1006099 () Bool)

(assert (=> b!1087132 m!1006099))

(declare-fun m!1006101 () Bool)

(assert (=> b!1087132 m!1006101))

(declare-fun m!1006103 () Bool)

(assert (=> b!1087132 m!1006103))

(assert (=> b!1087132 m!1006101))

(declare-fun m!1006105 () Bool)

(assert (=> b!1087132 m!1006105))

(declare-fun m!1006107 () Bool)

(assert (=> b!1087132 m!1006107))

(declare-fun m!1006109 () Bool)

(assert (=> b!1087132 m!1006109))

(declare-fun m!1006111 () Bool)

(assert (=> b!1087132 m!1006111))

(declare-fun m!1006113 () Bool)

(assert (=> b!1087132 m!1006113))

(declare-fun m!1006115 () Bool)

(assert (=> b!1087127 m!1006115))

(declare-fun m!1006117 () Bool)

(assert (=> start!95994 m!1006117))

(declare-fun m!1006119 () Bool)

(assert (=> start!95994 m!1006119))

(declare-fun m!1006121 () Bool)

(assert (=> start!95994 m!1006121))

(declare-fun m!1006123 () Bool)

(assert (=> b!1087128 m!1006123))

(declare-fun m!1006125 () Bool)

(assert (=> b!1087128 m!1006125))

(declare-fun m!1006127 () Bool)

(assert (=> b!1087128 m!1006127))

(declare-fun m!1006129 () Bool)

(assert (=> b!1087124 m!1006129))

(declare-fun m!1006131 () Bool)

(assert (=> b!1087124 m!1006131))

(declare-fun m!1006133 () Bool)

(assert (=> b!1087124 m!1006133))

(declare-fun m!1006135 () Bool)

(assert (=> b!1087124 m!1006135))

(declare-fun m!1006137 () Bool)

(assert (=> b!1087124 m!1006137))

(declare-fun m!1006139 () Bool)

(assert (=> b!1087124 m!1006139))

(declare-fun m!1006141 () Bool)

(assert (=> b!1087124 m!1006141))

(declare-fun m!1006143 () Bool)

(assert (=> b!1087124 m!1006143))

(declare-fun m!1006145 () Bool)

(assert (=> b!1087124 m!1006145))

(declare-fun m!1006147 () Bool)

(assert (=> b!1087124 m!1006147))

(declare-fun m!1006149 () Bool)

(assert (=> b!1087125 m!1006149))

(declare-fun m!1006151 () Bool)

(assert (=> b!1087126 m!1006151))

(declare-fun m!1006153 () Bool)

(assert (=> b!1087129 m!1006153))

(declare-fun m!1006155 () Bool)

(assert (=> b!1087135 m!1006155))

(check-sat (not b!1087125) (not b!1087128) (not b!1087126) (not b_next!22611) (not b!1087129) (not b_lambda!17311) (not mapNonEmpty!41674) (not b!1087124) (not b!1087135) (not b!1087133) (not b!1087132) (not start!95994) b_and!35917 tp_is_empty!26613)
(check-sat b_and!35917 (not b_next!22611))
