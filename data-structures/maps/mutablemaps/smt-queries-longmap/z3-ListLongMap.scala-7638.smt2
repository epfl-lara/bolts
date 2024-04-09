; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96186 () Bool)

(assert start!96186)

(declare-fun b_free!22803 () Bool)

(declare-fun b_next!22803 () Bool)

(assert (=> start!96186 (= b_free!22803 (not b_next!22803))))

(declare-fun tp!80258 () Bool)

(declare-fun b_and!36299 () Bool)

(assert (=> start!96186 (= tp!80258 b_and!36299)))

(declare-fun b!1091366 () Bool)

(declare-fun e!623340 () Bool)

(declare-fun e!623344 () Bool)

(assert (=> b!1091366 (= e!623340 (not e!623344))))

(declare-fun res!728250 () Bool)

(assert (=> b!1091366 (=> res!728250 e!623344)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1091366 (= res!728250 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40867 0))(
  ( (V!40868 (val!13459 Int)) )
))
(declare-fun minValue!831 () V!40867)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!17190 0))(
  ( (tuple2!17191 (_1!8605 (_ BitVec 64)) (_2!8605 V!40867)) )
))
(declare-datatypes ((List!23829 0))(
  ( (Nil!23826) (Cons!23825 (h!25034 tuple2!17190) (t!33697 List!23829)) )
))
(declare-datatypes ((ListLongMap!15171 0))(
  ( (ListLongMap!15172 (toList!7601 List!23829)) )
))
(declare-fun lt!487385 () ListLongMap!15171)

(declare-fun zeroValue!831 () V!40867)

(declare-datatypes ((array!70494 0))(
  ( (array!70495 (arr!33917 (Array (_ BitVec 32) (_ BitVec 64))) (size!34454 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70494)

(declare-datatypes ((ValueCell!12693 0))(
  ( (ValueCellFull!12693 (v!16081 V!40867)) (EmptyCell!12693) )
))
(declare-datatypes ((array!70496 0))(
  ( (array!70497 (arr!33918 (Array (_ BitVec 32) ValueCell!12693)) (size!34455 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70496)

(declare-fun getCurrentListMap!4337 (array!70494 array!70496 (_ BitVec 32) (_ BitVec 32) V!40867 V!40867 (_ BitVec 32) Int) ListLongMap!15171)

(assert (=> b!1091366 (= lt!487385 (getCurrentListMap!4337 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487379 () array!70494)

(declare-fun lt!487386 () ListLongMap!15171)

(declare-fun lt!487380 () array!70496)

(assert (=> b!1091366 (= lt!487386 (getCurrentListMap!4337 lt!487379 lt!487380 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487381 () ListLongMap!15171)

(declare-fun lt!487377 () ListLongMap!15171)

(assert (=> b!1091366 (and (= lt!487381 lt!487377) (= lt!487377 lt!487381))))

(declare-fun lt!487378 () ListLongMap!15171)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun -!878 (ListLongMap!15171 (_ BitVec 64)) ListLongMap!15171)

(assert (=> b!1091366 (= lt!487377 (-!878 lt!487378 k0!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35871 0))(
  ( (Unit!35872) )
))
(declare-fun lt!487387 () Unit!35871)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!143 (array!70494 array!70496 (_ BitVec 32) (_ BitVec 32) V!40867 V!40867 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35871)

(assert (=> b!1091366 (= lt!487387 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!143 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4089 (array!70494 array!70496 (_ BitVec 32) (_ BitVec 32) V!40867 V!40867 (_ BitVec 32) Int) ListLongMap!15171)

(assert (=> b!1091366 (= lt!487381 (getCurrentListMapNoExtraKeys!4089 lt!487379 lt!487380 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2225 (Int (_ BitVec 64)) V!40867)

(assert (=> b!1091366 (= lt!487380 (array!70497 (store (arr!33918 _values!874) i!650 (ValueCellFull!12693 (dynLambda!2225 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34455 _values!874)))))

(assert (=> b!1091366 (= lt!487378 (getCurrentListMapNoExtraKeys!4089 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70494 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1091366 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!487383 () Unit!35871)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70494 (_ BitVec 64) (_ BitVec 32)) Unit!35871)

(assert (=> b!1091366 (= lt!487383 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1091367 () Bool)

(declare-fun res!728251 () Bool)

(declare-fun e!623337 () Bool)

(assert (=> b!1091367 (=> (not res!728251) (not e!623337))))

(declare-datatypes ((List!23830 0))(
  ( (Nil!23827) (Cons!23826 (h!25035 (_ BitVec 64)) (t!33698 List!23830)) )
))
(declare-fun arrayNoDuplicates!0 (array!70494 (_ BitVec 32) List!23830) Bool)

(assert (=> b!1091367 (= res!728251 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23827))))

(declare-fun mapNonEmpty!41962 () Bool)

(declare-fun mapRes!41962 () Bool)

(declare-fun tp!80259 () Bool)

(declare-fun e!623339 () Bool)

(assert (=> mapNonEmpty!41962 (= mapRes!41962 (and tp!80259 e!623339))))

(declare-fun mapRest!41962 () (Array (_ BitVec 32) ValueCell!12693))

(declare-fun mapValue!41962 () ValueCell!12693)

(declare-fun mapKey!41962 () (_ BitVec 32))

(assert (=> mapNonEmpty!41962 (= (arr!33918 _values!874) (store mapRest!41962 mapKey!41962 mapValue!41962))))

(declare-fun b!1091368 () Bool)

(declare-fun e!623343 () Bool)

(assert (=> b!1091368 (= e!623343 true)))

(declare-fun lt!487388 () ListLongMap!15171)

(declare-fun lt!487376 () ListLongMap!15171)

(assert (=> b!1091368 (= (-!878 lt!487388 k0!904) lt!487376)))

(declare-fun lt!487384 () Unit!35871)

(declare-fun addRemoveCommutativeForDiffKeys!106 (ListLongMap!15171 (_ BitVec 64) V!40867 (_ BitVec 64)) Unit!35871)

(assert (=> b!1091368 (= lt!487384 (addRemoveCommutativeForDiffKeys!106 lt!487378 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1091369 () Bool)

(assert (=> b!1091369 (= e!623337 e!623340)))

(declare-fun res!728242 () Bool)

(assert (=> b!1091369 (=> (not res!728242) (not e!623340))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70494 (_ BitVec 32)) Bool)

(assert (=> b!1091369 (= res!728242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!487379 mask!1414))))

(assert (=> b!1091369 (= lt!487379 (array!70495 (store (arr!33917 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34454 _keys!1070)))))

(declare-fun mapIsEmpty!41962 () Bool)

(assert (=> mapIsEmpty!41962 mapRes!41962))

(declare-fun b!1091370 () Bool)

(declare-fun e!623341 () Bool)

(declare-fun tp_is_empty!26805 () Bool)

(assert (=> b!1091370 (= e!623341 tp_is_empty!26805)))

(declare-fun b!1091371 () Bool)

(declare-fun res!728252 () Bool)

(assert (=> b!1091371 (=> (not res!728252) (not e!623337))))

(assert (=> b!1091371 (= res!728252 (= (select (arr!33917 _keys!1070) i!650) k0!904))))

(declare-fun b!1091365 () Bool)

(assert (=> b!1091365 (= e!623344 e!623343)))

(declare-fun res!728244 () Bool)

(assert (=> b!1091365 (=> res!728244 e!623343)))

(assert (=> b!1091365 (= res!728244 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(assert (=> b!1091365 (= lt!487385 lt!487388)))

(declare-fun lt!487382 () tuple2!17190)

(declare-fun +!3307 (ListLongMap!15171 tuple2!17190) ListLongMap!15171)

(assert (=> b!1091365 (= lt!487388 (+!3307 lt!487378 lt!487382))))

(assert (=> b!1091365 (= lt!487386 lt!487376)))

(assert (=> b!1091365 (= lt!487376 (+!3307 lt!487377 lt!487382))))

(assert (=> b!1091365 (= lt!487386 (+!3307 lt!487381 lt!487382))))

(assert (=> b!1091365 (= lt!487382 (tuple2!17191 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun res!728245 () Bool)

(assert (=> start!96186 (=> (not res!728245) (not e!623337))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96186 (= res!728245 (validMask!0 mask!1414))))

(assert (=> start!96186 e!623337))

(assert (=> start!96186 tp!80258))

(assert (=> start!96186 true))

(assert (=> start!96186 tp_is_empty!26805))

(declare-fun array_inv!26010 (array!70494) Bool)

(assert (=> start!96186 (array_inv!26010 _keys!1070)))

(declare-fun e!623338 () Bool)

(declare-fun array_inv!26011 (array!70496) Bool)

(assert (=> start!96186 (and (array_inv!26011 _values!874) e!623338)))

(declare-fun b!1091372 () Bool)

(assert (=> b!1091372 (= e!623339 tp_is_empty!26805)))

(declare-fun b!1091373 () Bool)

(declare-fun res!728243 () Bool)

(assert (=> b!1091373 (=> (not res!728243) (not e!623340))))

(assert (=> b!1091373 (= res!728243 (arrayNoDuplicates!0 lt!487379 #b00000000000000000000000000000000 Nil!23827))))

(declare-fun b!1091374 () Bool)

(declare-fun res!728246 () Bool)

(assert (=> b!1091374 (=> (not res!728246) (not e!623337))))

(assert (=> b!1091374 (= res!728246 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34454 _keys!1070))))))

(declare-fun b!1091375 () Bool)

(assert (=> b!1091375 (= e!623338 (and e!623341 mapRes!41962))))

(declare-fun condMapEmpty!41962 () Bool)

(declare-fun mapDefault!41962 () ValueCell!12693)

(assert (=> b!1091375 (= condMapEmpty!41962 (= (arr!33918 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12693)) mapDefault!41962)))))

(declare-fun b!1091376 () Bool)

(declare-fun res!728247 () Bool)

(assert (=> b!1091376 (=> (not res!728247) (not e!623337))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1091376 (= res!728247 (validKeyInArray!0 k0!904))))

(declare-fun b!1091377 () Bool)

(declare-fun res!728248 () Bool)

(assert (=> b!1091377 (=> (not res!728248) (not e!623337))))

(assert (=> b!1091377 (= res!728248 (and (= (size!34455 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34454 _keys!1070) (size!34455 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1091378 () Bool)

(declare-fun res!728249 () Bool)

(assert (=> b!1091378 (=> (not res!728249) (not e!623337))))

(assert (=> b!1091378 (= res!728249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(assert (= (and start!96186 res!728245) b!1091377))

(assert (= (and b!1091377 res!728248) b!1091378))

(assert (= (and b!1091378 res!728249) b!1091367))

(assert (= (and b!1091367 res!728251) b!1091374))

(assert (= (and b!1091374 res!728246) b!1091376))

(assert (= (and b!1091376 res!728247) b!1091371))

(assert (= (and b!1091371 res!728252) b!1091369))

(assert (= (and b!1091369 res!728242) b!1091373))

(assert (= (and b!1091373 res!728243) b!1091366))

(assert (= (and b!1091366 (not res!728250)) b!1091365))

(assert (= (and b!1091365 (not res!728244)) b!1091368))

(assert (= (and b!1091375 condMapEmpty!41962) mapIsEmpty!41962))

(assert (= (and b!1091375 (not condMapEmpty!41962)) mapNonEmpty!41962))

(get-info :version)

(assert (= (and mapNonEmpty!41962 ((_ is ValueCellFull!12693) mapValue!41962)) b!1091372))

(assert (= (and b!1091375 ((_ is ValueCellFull!12693) mapDefault!41962)) b!1091370))

(assert (= start!96186 b!1091375))

(declare-fun b_lambda!17503 () Bool)

(assert (=> (not b_lambda!17503) (not b!1091366)))

(declare-fun t!33696 () Bool)

(declare-fun tb!7689 () Bool)

(assert (=> (and start!96186 (= defaultEntry!882 defaultEntry!882) t!33696) tb!7689))

(declare-fun result!15889 () Bool)

(assert (=> tb!7689 (= result!15889 tp_is_empty!26805)))

(assert (=> b!1091366 t!33696))

(declare-fun b_and!36301 () Bool)

(assert (= b_and!36299 (and (=> t!33696 result!15889) b_and!36301)))

(declare-fun m!1011085 () Bool)

(assert (=> b!1091378 m!1011085))

(declare-fun m!1011087 () Bool)

(assert (=> b!1091369 m!1011087))

(declare-fun m!1011089 () Bool)

(assert (=> b!1091369 m!1011089))

(declare-fun m!1011091 () Bool)

(assert (=> start!96186 m!1011091))

(declare-fun m!1011093 () Bool)

(assert (=> start!96186 m!1011093))

(declare-fun m!1011095 () Bool)

(assert (=> start!96186 m!1011095))

(declare-fun m!1011097 () Bool)

(assert (=> b!1091371 m!1011097))

(declare-fun m!1011099 () Bool)

(assert (=> b!1091366 m!1011099))

(declare-fun m!1011101 () Bool)

(assert (=> b!1091366 m!1011101))

(declare-fun m!1011103 () Bool)

(assert (=> b!1091366 m!1011103))

(declare-fun m!1011105 () Bool)

(assert (=> b!1091366 m!1011105))

(declare-fun m!1011107 () Bool)

(assert (=> b!1091366 m!1011107))

(declare-fun m!1011109 () Bool)

(assert (=> b!1091366 m!1011109))

(declare-fun m!1011111 () Bool)

(assert (=> b!1091366 m!1011111))

(declare-fun m!1011113 () Bool)

(assert (=> b!1091366 m!1011113))

(declare-fun m!1011115 () Bool)

(assert (=> b!1091366 m!1011115))

(declare-fun m!1011117 () Bool)

(assert (=> b!1091366 m!1011117))

(declare-fun m!1011119 () Bool)

(assert (=> b!1091367 m!1011119))

(declare-fun m!1011121 () Bool)

(assert (=> mapNonEmpty!41962 m!1011121))

(declare-fun m!1011123 () Bool)

(assert (=> b!1091365 m!1011123))

(declare-fun m!1011125 () Bool)

(assert (=> b!1091365 m!1011125))

(declare-fun m!1011127 () Bool)

(assert (=> b!1091365 m!1011127))

(declare-fun m!1011129 () Bool)

(assert (=> b!1091376 m!1011129))

(declare-fun m!1011131 () Bool)

(assert (=> b!1091368 m!1011131))

(declare-fun m!1011133 () Bool)

(assert (=> b!1091368 m!1011133))

(declare-fun m!1011135 () Bool)

(assert (=> b!1091373 m!1011135))

(check-sat (not b_next!22803) b_and!36301 (not mapNonEmpty!41962) (not b!1091365) (not start!96186) (not b!1091373) tp_is_empty!26805 (not b!1091369) (not b!1091378) (not b!1091367) (not b!1091368) (not b!1091376) (not b!1091366) (not b_lambda!17503))
(check-sat b_and!36301 (not b_next!22803))
