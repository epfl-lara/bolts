; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39902 () Bool)

(assert start!39902)

(declare-fun b_free!10161 () Bool)

(declare-fun b_next!10161 () Bool)

(assert (=> start!39902 (= b_free!10161 (not b_next!10161))))

(declare-fun tp!36011 () Bool)

(declare-fun b_and!17999 () Bool)

(assert (=> start!39902 (= tp!36011 b_and!17999)))

(declare-fun b!431997 () Bool)

(declare-fun e!255574 () Bool)

(declare-fun e!255573 () Bool)

(declare-fun mapRes!18591 () Bool)

(assert (=> b!431997 (= e!255574 (and e!255573 mapRes!18591))))

(declare-fun condMapEmpty!18591 () Bool)

(declare-datatypes ((V!16189 0))(
  ( (V!16190 (val!5701 Int)) )
))
(declare-datatypes ((ValueCell!5313 0))(
  ( (ValueCellFull!5313 (v!7944 V!16189)) (EmptyCell!5313) )
))
(declare-datatypes ((array!26439 0))(
  ( (array!26440 (arr!12666 (Array (_ BitVec 32) ValueCell!5313)) (size!13018 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26439)

(declare-fun mapDefault!18591 () ValueCell!5313)

(assert (=> b!431997 (= condMapEmpty!18591 (= (arr!12666 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5313)) mapDefault!18591)))))

(declare-fun b!431998 () Bool)

(declare-fun res!254153 () Bool)

(declare-fun e!255569 () Bool)

(assert (=> b!431998 (=> (not res!254153) (not e!255569))))

(declare-datatypes ((array!26441 0))(
  ( (array!26442 (arr!12667 (Array (_ BitVec 32) (_ BitVec 64))) (size!13019 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26441)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26441 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!431998 (= res!254153 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!431999 () Bool)

(declare-fun e!255565 () Bool)

(declare-fun e!255571 () Bool)

(assert (=> b!431999 (= e!255565 (not e!255571))))

(declare-fun res!254160 () Bool)

(assert (=> b!431999 (=> res!254160 e!255571)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!431999 (= res!254160 (not (validKeyInArray!0 (select (arr!12667 _keys!709) from!863))))))

(declare-datatypes ((tuple2!7458 0))(
  ( (tuple2!7459 (_1!3739 (_ BitVec 64)) (_2!3739 V!16189)) )
))
(declare-datatypes ((List!7511 0))(
  ( (Nil!7508) (Cons!7507 (h!8363 tuple2!7458) (t!13129 List!7511)) )
))
(declare-datatypes ((ListLongMap!6385 0))(
  ( (ListLongMap!6386 (toList!3208 List!7511)) )
))
(declare-fun lt!198094 () ListLongMap!6385)

(declare-fun lt!198090 () ListLongMap!6385)

(assert (=> b!431999 (= lt!198094 lt!198090)))

(declare-fun lt!198095 () ListLongMap!6385)

(declare-fun lt!198091 () tuple2!7458)

(declare-fun +!1354 (ListLongMap!6385 tuple2!7458) ListLongMap!6385)

(assert (=> b!431999 (= lt!198090 (+!1354 lt!198095 lt!198091))))

(declare-fun minValue!515 () V!16189)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!198089 () array!26441)

(declare-fun zeroValue!515 () V!16189)

(declare-fun lt!198100 () array!26439)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1401 (array!26441 array!26439 (_ BitVec 32) (_ BitVec 32) V!16189 V!16189 (_ BitVec 32) Int) ListLongMap!6385)

(assert (=> b!431999 (= lt!198094 (getCurrentListMapNoExtraKeys!1401 lt!198089 lt!198100 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!16189)

(assert (=> b!431999 (= lt!198091 (tuple2!7459 k0!794 v!412))))

(assert (=> b!431999 (= lt!198095 (getCurrentListMapNoExtraKeys!1401 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12717 0))(
  ( (Unit!12718) )
))
(declare-fun lt!198099 () Unit!12717)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!545 (array!26441 array!26439 (_ BitVec 32) (_ BitVec 32) V!16189 V!16189 (_ BitVec 32) (_ BitVec 64) V!16189 (_ BitVec 32) Int) Unit!12717)

(assert (=> b!431999 (= lt!198099 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!545 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!18591 () Bool)

(declare-fun tp!36012 () Bool)

(declare-fun e!255568 () Bool)

(assert (=> mapNonEmpty!18591 (= mapRes!18591 (and tp!36012 e!255568))))

(declare-fun mapRest!18591 () (Array (_ BitVec 32) ValueCell!5313))

(declare-fun mapKey!18591 () (_ BitVec 32))

(declare-fun mapValue!18591 () ValueCell!5313)

(assert (=> mapNonEmpty!18591 (= (arr!12666 _values!549) (store mapRest!18591 mapKey!18591 mapValue!18591))))

(declare-fun res!254154 () Bool)

(assert (=> start!39902 (=> (not res!254154) (not e!255569))))

(assert (=> start!39902 (= res!254154 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13019 _keys!709))))))

(assert (=> start!39902 e!255569))

(declare-fun tp_is_empty!11313 () Bool)

(assert (=> start!39902 tp_is_empty!11313))

(assert (=> start!39902 tp!36011))

(assert (=> start!39902 true))

(declare-fun array_inv!9212 (array!26439) Bool)

(assert (=> start!39902 (and (array_inv!9212 _values!549) e!255574)))

(declare-fun array_inv!9213 (array!26441) Bool)

(assert (=> start!39902 (array_inv!9213 _keys!709)))

(declare-fun b!432000 () Bool)

(declare-fun e!255570 () Unit!12717)

(declare-fun Unit!12719 () Unit!12717)

(assert (=> b!432000 (= e!255570 Unit!12719)))

(declare-fun b!432001 () Bool)

(declare-fun res!254155 () Bool)

(assert (=> b!432001 (=> (not res!254155) (not e!255569))))

(assert (=> b!432001 (= res!254155 (and (= (size!13018 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13019 _keys!709) (size!13018 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!432002 () Bool)

(declare-fun res!254157 () Bool)

(assert (=> b!432002 (=> (not res!254157) (not e!255569))))

(assert (=> b!432002 (= res!254157 (or (= (select (arr!12667 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12667 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!432003 () Bool)

(declare-fun res!254148 () Bool)

(assert (=> b!432003 (=> (not res!254148) (not e!255569))))

(assert (=> b!432003 (= res!254148 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13019 _keys!709))))))

(declare-fun b!432004 () Bool)

(declare-fun e!255572 () Bool)

(assert (=> b!432004 (= e!255571 e!255572)))

(declare-fun res!254152 () Bool)

(assert (=> b!432004 (=> res!254152 e!255572)))

(assert (=> b!432004 (= res!254152 (= k0!794 (select (arr!12667 _keys!709) from!863)))))

(assert (=> b!432004 (not (= (select (arr!12667 _keys!709) from!863) k0!794))))

(declare-fun lt!198098 () Unit!12717)

(assert (=> b!432004 (= lt!198098 e!255570)))

(declare-fun c!55502 () Bool)

(assert (=> b!432004 (= c!55502 (= (select (arr!12667 _keys!709) from!863) k0!794))))

(declare-fun lt!198096 () ListLongMap!6385)

(declare-fun lt!198101 () ListLongMap!6385)

(assert (=> b!432004 (= lt!198096 lt!198101)))

(declare-fun lt!198093 () tuple2!7458)

(assert (=> b!432004 (= lt!198101 (+!1354 lt!198090 lt!198093))))

(declare-fun lt!198088 () V!16189)

(assert (=> b!432004 (= lt!198093 (tuple2!7459 (select (arr!12667 _keys!709) from!863) lt!198088))))

(declare-fun get!6300 (ValueCell!5313 V!16189) V!16189)

(declare-fun dynLambda!793 (Int (_ BitVec 64)) V!16189)

(assert (=> b!432004 (= lt!198088 (get!6300 (select (arr!12666 _values!549) from!863) (dynLambda!793 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!432005 () Bool)

(declare-fun res!254159 () Bool)

(assert (=> b!432005 (=> (not res!254159) (not e!255569))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26441 (_ BitVec 32)) Bool)

(assert (=> b!432005 (= res!254159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!432006 () Bool)

(declare-fun res!254158 () Bool)

(assert (=> b!432006 (=> (not res!254158) (not e!255569))))

(assert (=> b!432006 (= res!254158 (validKeyInArray!0 k0!794))))

(declare-fun b!432007 () Bool)

(declare-fun res!254151 () Bool)

(declare-fun e!255567 () Bool)

(assert (=> b!432007 (=> (not res!254151) (not e!255567))))

(assert (=> b!432007 (= res!254151 (bvsle from!863 i!563))))

(declare-fun b!432008 () Bool)

(assert (=> b!432008 (= e!255573 tp_is_empty!11313)))

(declare-fun b!432009 () Bool)

(declare-fun res!254147 () Bool)

(assert (=> b!432009 (=> (not res!254147) (not e!255569))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!432009 (= res!254147 (validMask!0 mask!1025))))

(declare-fun b!432010 () Bool)

(declare-fun res!254150 () Bool)

(assert (=> b!432010 (=> (not res!254150) (not e!255567))))

(declare-datatypes ((List!7512 0))(
  ( (Nil!7509) (Cons!7508 (h!8364 (_ BitVec 64)) (t!13130 List!7512)) )
))
(declare-fun arrayNoDuplicates!0 (array!26441 (_ BitVec 32) List!7512) Bool)

(assert (=> b!432010 (= res!254150 (arrayNoDuplicates!0 lt!198089 #b00000000000000000000000000000000 Nil!7509))))

(declare-fun b!432011 () Bool)

(declare-fun res!254149 () Bool)

(assert (=> b!432011 (=> (not res!254149) (not e!255569))))

(assert (=> b!432011 (= res!254149 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7509))))

(declare-fun b!432012 () Bool)

(declare-fun Unit!12720 () Unit!12717)

(assert (=> b!432012 (= e!255570 Unit!12720)))

(declare-fun lt!198097 () Unit!12717)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26441 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12717)

(assert (=> b!432012 (= lt!198097 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!432012 false))

(declare-fun b!432013 () Bool)

(assert (=> b!432013 (= e!255572 true)))

(assert (=> b!432013 (= lt!198101 (+!1354 (+!1354 lt!198095 lt!198093) lt!198091))))

(declare-fun lt!198092 () Unit!12717)

(declare-fun addCommutativeForDiffKeys!366 (ListLongMap!6385 (_ BitVec 64) V!16189 (_ BitVec 64) V!16189) Unit!12717)

(assert (=> b!432013 (= lt!198092 (addCommutativeForDiffKeys!366 lt!198095 k0!794 v!412 (select (arr!12667 _keys!709) from!863) lt!198088))))

(declare-fun b!432014 () Bool)

(assert (=> b!432014 (= e!255567 e!255565)))

(declare-fun res!254156 () Bool)

(assert (=> b!432014 (=> (not res!254156) (not e!255565))))

(assert (=> b!432014 (= res!254156 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!432014 (= lt!198096 (getCurrentListMapNoExtraKeys!1401 lt!198089 lt!198100 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!432014 (= lt!198100 (array!26440 (store (arr!12666 _values!549) i!563 (ValueCellFull!5313 v!412)) (size!13018 _values!549)))))

(declare-fun lt!198102 () ListLongMap!6385)

(assert (=> b!432014 (= lt!198102 (getCurrentListMapNoExtraKeys!1401 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!432015 () Bool)

(assert (=> b!432015 (= e!255568 tp_is_empty!11313)))

(declare-fun b!432016 () Bool)

(assert (=> b!432016 (= e!255569 e!255567)))

(declare-fun res!254146 () Bool)

(assert (=> b!432016 (=> (not res!254146) (not e!255567))))

(assert (=> b!432016 (= res!254146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!198089 mask!1025))))

(assert (=> b!432016 (= lt!198089 (array!26442 (store (arr!12667 _keys!709) i!563 k0!794) (size!13019 _keys!709)))))

(declare-fun mapIsEmpty!18591 () Bool)

(assert (=> mapIsEmpty!18591 mapRes!18591))

(assert (= (and start!39902 res!254154) b!432009))

(assert (= (and b!432009 res!254147) b!432001))

(assert (= (and b!432001 res!254155) b!432005))

(assert (= (and b!432005 res!254159) b!432011))

(assert (= (and b!432011 res!254149) b!432003))

(assert (= (and b!432003 res!254148) b!432006))

(assert (= (and b!432006 res!254158) b!432002))

(assert (= (and b!432002 res!254157) b!431998))

(assert (= (and b!431998 res!254153) b!432016))

(assert (= (and b!432016 res!254146) b!432010))

(assert (= (and b!432010 res!254150) b!432007))

(assert (= (and b!432007 res!254151) b!432014))

(assert (= (and b!432014 res!254156) b!431999))

(assert (= (and b!431999 (not res!254160)) b!432004))

(assert (= (and b!432004 c!55502) b!432012))

(assert (= (and b!432004 (not c!55502)) b!432000))

(assert (= (and b!432004 (not res!254152)) b!432013))

(assert (= (and b!431997 condMapEmpty!18591) mapIsEmpty!18591))

(assert (= (and b!431997 (not condMapEmpty!18591)) mapNonEmpty!18591))

(get-info :version)

(assert (= (and mapNonEmpty!18591 ((_ is ValueCellFull!5313) mapValue!18591)) b!432015))

(assert (= (and b!431997 ((_ is ValueCellFull!5313) mapDefault!18591)) b!432008))

(assert (= start!39902 b!431997))

(declare-fun b_lambda!9279 () Bool)

(assert (=> (not b_lambda!9279) (not b!432004)))

(declare-fun t!13128 () Bool)

(declare-fun tb!3575 () Bool)

(assert (=> (and start!39902 (= defaultEntry!557 defaultEntry!557) t!13128) tb!3575))

(declare-fun result!6669 () Bool)

(assert (=> tb!3575 (= result!6669 tp_is_empty!11313)))

(assert (=> b!432004 t!13128))

(declare-fun b_and!18001 () Bool)

(assert (= b_and!17999 (and (=> t!13128 result!6669) b_and!18001)))

(declare-fun m!420131 () Bool)

(assert (=> start!39902 m!420131))

(declare-fun m!420133 () Bool)

(assert (=> start!39902 m!420133))

(declare-fun m!420135 () Bool)

(assert (=> b!432005 m!420135))

(declare-fun m!420137 () Bool)

(assert (=> b!432011 m!420137))

(declare-fun m!420139 () Bool)

(assert (=> b!432004 m!420139))

(declare-fun m!420141 () Bool)

(assert (=> b!432004 m!420141))

(declare-fun m!420143 () Bool)

(assert (=> b!432004 m!420143))

(declare-fun m!420145 () Bool)

(assert (=> b!432004 m!420145))

(assert (=> b!432004 m!420145))

(assert (=> b!432004 m!420141))

(declare-fun m!420147 () Bool)

(assert (=> b!432004 m!420147))

(declare-fun m!420149 () Bool)

(assert (=> b!432002 m!420149))

(declare-fun m!420151 () Bool)

(assert (=> b!431998 m!420151))

(declare-fun m!420153 () Bool)

(assert (=> b!432014 m!420153))

(declare-fun m!420155 () Bool)

(assert (=> b!432014 m!420155))

(declare-fun m!420157 () Bool)

(assert (=> b!432014 m!420157))

(assert (=> b!431999 m!420139))

(declare-fun m!420159 () Bool)

(assert (=> b!431999 m!420159))

(declare-fun m!420161 () Bool)

(assert (=> b!431999 m!420161))

(declare-fun m!420163 () Bool)

(assert (=> b!431999 m!420163))

(assert (=> b!431999 m!420139))

(declare-fun m!420165 () Bool)

(assert (=> b!431999 m!420165))

(declare-fun m!420167 () Bool)

(assert (=> b!431999 m!420167))

(declare-fun m!420169 () Bool)

(assert (=> b!432009 m!420169))

(declare-fun m!420171 () Bool)

(assert (=> b!432010 m!420171))

(declare-fun m!420173 () Bool)

(assert (=> b!432016 m!420173))

(declare-fun m!420175 () Bool)

(assert (=> b!432016 m!420175))

(declare-fun m!420177 () Bool)

(assert (=> b!432012 m!420177))

(declare-fun m!420179 () Bool)

(assert (=> b!432013 m!420179))

(assert (=> b!432013 m!420179))

(declare-fun m!420181 () Bool)

(assert (=> b!432013 m!420181))

(assert (=> b!432013 m!420139))

(assert (=> b!432013 m!420139))

(declare-fun m!420183 () Bool)

(assert (=> b!432013 m!420183))

(declare-fun m!420185 () Bool)

(assert (=> b!432006 m!420185))

(declare-fun m!420187 () Bool)

(assert (=> mapNonEmpty!18591 m!420187))

(check-sat (not b!432005) (not b!432014) (not b!432004) (not b!432010) (not b_next!10161) (not b!432011) (not b!432013) (not b!432012) (not b!432006) (not b!432016) (not b!432009) (not b_lambda!9279) (not mapNonEmpty!18591) (not start!39902) (not b!431998) b_and!18001 (not b!431999) tp_is_empty!11313)
(check-sat b_and!18001 (not b_next!10161))
