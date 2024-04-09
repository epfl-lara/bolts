; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40004 () Bool)

(assert start!40004)

(declare-fun b_free!10263 () Bool)

(declare-fun b_next!10263 () Bool)

(assert (=> start!40004 (= b_free!10263 (not b_next!10263))))

(declare-fun tp!36318 () Bool)

(declare-fun b_and!18203 () Bool)

(assert (=> start!40004 (= tp!36318 b_and!18203)))

(declare-fun b!435159 () Bool)

(declare-fun e!257099 () Bool)

(declare-fun e!257104 () Bool)

(assert (=> b!435159 (= e!257099 (not e!257104))))

(declare-fun res!256448 () Bool)

(assert (=> b!435159 (=> res!256448 e!257104)))

(declare-datatypes ((array!26633 0))(
  ( (array!26634 (arr!12763 (Array (_ BitVec 32) (_ BitVec 64))) (size!13115 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26633)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!435159 (= res!256448 (not (validKeyInArray!0 (select (arr!12763 _keys!709) from!863))))))

(declare-datatypes ((V!16325 0))(
  ( (V!16326 (val!5752 Int)) )
))
(declare-datatypes ((tuple2!7546 0))(
  ( (tuple2!7547 (_1!3783 (_ BitVec 64)) (_2!3783 V!16325)) )
))
(declare-datatypes ((List!7592 0))(
  ( (Nil!7589) (Cons!7588 (h!8444 tuple2!7546) (t!13312 List!7592)) )
))
(declare-datatypes ((ListLongMap!6473 0))(
  ( (ListLongMap!6474 (toList!3252 List!7592)) )
))
(declare-fun lt!200385 () ListLongMap!6473)

(declare-fun lt!200392 () ListLongMap!6473)

(assert (=> b!435159 (= lt!200385 lt!200392)))

(declare-fun lt!200390 () ListLongMap!6473)

(declare-fun lt!200396 () tuple2!7546)

(declare-fun +!1397 (ListLongMap!6473 tuple2!7546) ListLongMap!6473)

(assert (=> b!435159 (= lt!200392 (+!1397 lt!200390 lt!200396))))

(declare-fun minValue!515 () V!16325)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!200393 () array!26633)

(declare-fun zeroValue!515 () V!16325)

(declare-datatypes ((ValueCell!5364 0))(
  ( (ValueCellFull!5364 (v!7995 V!16325)) (EmptyCell!5364) )
))
(declare-datatypes ((array!26635 0))(
  ( (array!26636 (arr!12764 (Array (_ BitVec 32) ValueCell!5364)) (size!13116 (_ BitVec 32))) )
))
(declare-fun lt!200384 () array!26635)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1436 (array!26633 array!26635 (_ BitVec 32) (_ BitVec 32) V!16325 V!16325 (_ BitVec 32) Int) ListLongMap!6473)

(assert (=> b!435159 (= lt!200385 (getCurrentListMapNoExtraKeys!1436 lt!200393 lt!200384 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!16325)

(assert (=> b!435159 (= lt!200396 (tuple2!7547 k0!794 v!412))))

(declare-fun _values!549 () array!26635)

(assert (=> b!435159 (= lt!200390 (getCurrentListMapNoExtraKeys!1436 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!12877 0))(
  ( (Unit!12878) )
))
(declare-fun lt!200389 () Unit!12877)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!577 (array!26633 array!26635 (_ BitVec 32) (_ BitVec 32) V!16325 V!16325 (_ BitVec 32) (_ BitVec 64) V!16325 (_ BitVec 32) Int) Unit!12877)

(assert (=> b!435159 (= lt!200389 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!577 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!435160 () Bool)

(declare-fun e!257098 () Bool)

(declare-fun e!257096 () Bool)

(declare-fun mapRes!18744 () Bool)

(assert (=> b!435160 (= e!257098 (and e!257096 mapRes!18744))))

(declare-fun condMapEmpty!18744 () Bool)

(declare-fun mapDefault!18744 () ValueCell!5364)

(assert (=> b!435160 (= condMapEmpty!18744 (= (arr!12764 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5364)) mapDefault!18744)))))

(declare-fun b!435161 () Bool)

(declare-fun res!256454 () Bool)

(declare-fun e!257103 () Bool)

(assert (=> b!435161 (=> (not res!256454) (not e!257103))))

(declare-datatypes ((List!7593 0))(
  ( (Nil!7590) (Cons!7589 (h!8445 (_ BitVec 64)) (t!13313 List!7593)) )
))
(declare-fun arrayNoDuplicates!0 (array!26633 (_ BitVec 32) List!7593) Bool)

(assert (=> b!435161 (= res!256454 (arrayNoDuplicates!0 lt!200393 #b00000000000000000000000000000000 Nil!7590))))

(declare-fun b!435162 () Bool)

(declare-fun res!256453 () Bool)

(declare-fun e!257100 () Bool)

(assert (=> b!435162 (=> (not res!256453) (not e!257100))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26633 (_ BitVec 32)) Bool)

(assert (=> b!435162 (= res!256453 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!435163 () Bool)

(declare-fun res!256443 () Bool)

(assert (=> b!435163 (=> (not res!256443) (not e!257100))))

(assert (=> b!435163 (= res!256443 (or (= (select (arr!12763 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12763 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!435164 () Bool)

(assert (=> b!435164 (= e!257103 e!257099)))

(declare-fun res!256449 () Bool)

(assert (=> b!435164 (=> (not res!256449) (not e!257099))))

(assert (=> b!435164 (= res!256449 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!200397 () ListLongMap!6473)

(assert (=> b!435164 (= lt!200397 (getCurrentListMapNoExtraKeys!1436 lt!200393 lt!200384 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!435164 (= lt!200384 (array!26636 (store (arr!12764 _values!549) i!563 (ValueCellFull!5364 v!412)) (size!13116 _values!549)))))

(declare-fun lt!200394 () ListLongMap!6473)

(assert (=> b!435164 (= lt!200394 (getCurrentListMapNoExtraKeys!1436 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!435165 () Bool)

(declare-fun res!256452 () Bool)

(assert (=> b!435165 (=> (not res!256452) (not e!257100))))

(assert (=> b!435165 (= res!256452 (and (= (size!13116 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13115 _keys!709) (size!13116 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!435166 () Bool)

(declare-fun res!256446 () Bool)

(assert (=> b!435166 (=> (not res!256446) (not e!257100))))

(declare-fun arrayContainsKey!0 (array!26633 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!435166 (= res!256446 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun res!256441 () Bool)

(assert (=> start!40004 (=> (not res!256441) (not e!257100))))

(assert (=> start!40004 (= res!256441 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13115 _keys!709))))))

(assert (=> start!40004 e!257100))

(declare-fun tp_is_empty!11415 () Bool)

(assert (=> start!40004 tp_is_empty!11415))

(assert (=> start!40004 tp!36318))

(assert (=> start!40004 true))

(declare-fun array_inv!9276 (array!26635) Bool)

(assert (=> start!40004 (and (array_inv!9276 _values!549) e!257098)))

(declare-fun array_inv!9277 (array!26633) Bool)

(assert (=> start!40004 (array_inv!9277 _keys!709)))

(declare-fun mapIsEmpty!18744 () Bool)

(assert (=> mapIsEmpty!18744 mapRes!18744))

(declare-fun b!435167 () Bool)

(declare-fun e!257101 () Unit!12877)

(declare-fun Unit!12879 () Unit!12877)

(assert (=> b!435167 (= e!257101 Unit!12879)))

(declare-fun lt!200386 () Unit!12877)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26633 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12877)

(assert (=> b!435167 (= lt!200386 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!435167 false))

(declare-fun b!435168 () Bool)

(assert (=> b!435168 (= e!257096 tp_is_empty!11415)))

(declare-fun b!435169 () Bool)

(declare-fun Unit!12880 () Unit!12877)

(assert (=> b!435169 (= e!257101 Unit!12880)))

(declare-fun b!435170 () Bool)

(declare-fun res!256451 () Bool)

(assert (=> b!435170 (=> (not res!256451) (not e!257100))))

(assert (=> b!435170 (= res!256451 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7590))))

(declare-fun b!435171 () Bool)

(assert (=> b!435171 (= e!257100 e!257103)))

(declare-fun res!256447 () Bool)

(assert (=> b!435171 (=> (not res!256447) (not e!257103))))

(assert (=> b!435171 (= res!256447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!200393 mask!1025))))

(assert (=> b!435171 (= lt!200393 (array!26634 (store (arr!12763 _keys!709) i!563 k0!794) (size!13115 _keys!709)))))

(declare-fun b!435172 () Bool)

(declare-fun res!256445 () Bool)

(assert (=> b!435172 (=> (not res!256445) (not e!257100))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!435172 (= res!256445 (validMask!0 mask!1025))))

(declare-fun b!435173 () Bool)

(declare-fun e!257097 () Bool)

(assert (=> b!435173 (= e!257104 e!257097)))

(declare-fun res!256442 () Bool)

(assert (=> b!435173 (=> res!256442 e!257097)))

(assert (=> b!435173 (= res!256442 (= k0!794 (select (arr!12763 _keys!709) from!863)))))

(assert (=> b!435173 (not (= (select (arr!12763 _keys!709) from!863) k0!794))))

(declare-fun lt!200395 () Unit!12877)

(assert (=> b!435173 (= lt!200395 e!257101)))

(declare-fun c!55655 () Bool)

(assert (=> b!435173 (= c!55655 (= (select (arr!12763 _keys!709) from!863) k0!794))))

(declare-fun lt!200391 () ListLongMap!6473)

(assert (=> b!435173 (= lt!200397 lt!200391)))

(declare-fun lt!200387 () tuple2!7546)

(assert (=> b!435173 (= lt!200391 (+!1397 lt!200392 lt!200387))))

(declare-fun lt!200388 () V!16325)

(assert (=> b!435173 (= lt!200387 (tuple2!7547 (select (arr!12763 _keys!709) from!863) lt!200388))))

(declare-fun get!6368 (ValueCell!5364 V!16325) V!16325)

(declare-fun dynLambda!827 (Int (_ BitVec 64)) V!16325)

(assert (=> b!435173 (= lt!200388 (get!6368 (select (arr!12764 _values!549) from!863) (dynLambda!827 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!435174 () Bool)

(declare-fun e!257095 () Bool)

(assert (=> b!435174 (= e!257095 tp_is_empty!11415)))

(declare-fun b!435175 () Bool)

(assert (=> b!435175 (= e!257097 true)))

(assert (=> b!435175 (= lt!200391 (+!1397 (+!1397 lt!200390 lt!200387) lt!200396))))

(declare-fun lt!200383 () Unit!12877)

(declare-fun addCommutativeForDiffKeys!403 (ListLongMap!6473 (_ BitVec 64) V!16325 (_ BitVec 64) V!16325) Unit!12877)

(assert (=> b!435175 (= lt!200383 (addCommutativeForDiffKeys!403 lt!200390 k0!794 v!412 (select (arr!12763 _keys!709) from!863) lt!200388))))

(declare-fun b!435176 () Bool)

(declare-fun res!256455 () Bool)

(assert (=> b!435176 (=> (not res!256455) (not e!257100))))

(assert (=> b!435176 (= res!256455 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13115 _keys!709))))))

(declare-fun b!435177 () Bool)

(declare-fun res!256450 () Bool)

(assert (=> b!435177 (=> (not res!256450) (not e!257100))))

(assert (=> b!435177 (= res!256450 (validKeyInArray!0 k0!794))))

(declare-fun mapNonEmpty!18744 () Bool)

(declare-fun tp!36317 () Bool)

(assert (=> mapNonEmpty!18744 (= mapRes!18744 (and tp!36317 e!257095))))

(declare-fun mapRest!18744 () (Array (_ BitVec 32) ValueCell!5364))

(declare-fun mapKey!18744 () (_ BitVec 32))

(declare-fun mapValue!18744 () ValueCell!5364)

(assert (=> mapNonEmpty!18744 (= (arr!12764 _values!549) (store mapRest!18744 mapKey!18744 mapValue!18744))))

(declare-fun b!435178 () Bool)

(declare-fun res!256444 () Bool)

(assert (=> b!435178 (=> (not res!256444) (not e!257103))))

(assert (=> b!435178 (= res!256444 (bvsle from!863 i!563))))

(assert (= (and start!40004 res!256441) b!435172))

(assert (= (and b!435172 res!256445) b!435165))

(assert (= (and b!435165 res!256452) b!435162))

(assert (= (and b!435162 res!256453) b!435170))

(assert (= (and b!435170 res!256451) b!435176))

(assert (= (and b!435176 res!256455) b!435177))

(assert (= (and b!435177 res!256450) b!435163))

(assert (= (and b!435163 res!256443) b!435166))

(assert (= (and b!435166 res!256446) b!435171))

(assert (= (and b!435171 res!256447) b!435161))

(assert (= (and b!435161 res!256454) b!435178))

(assert (= (and b!435178 res!256444) b!435164))

(assert (= (and b!435164 res!256449) b!435159))

(assert (= (and b!435159 (not res!256448)) b!435173))

(assert (= (and b!435173 c!55655) b!435167))

(assert (= (and b!435173 (not c!55655)) b!435169))

(assert (= (and b!435173 (not res!256442)) b!435175))

(assert (= (and b!435160 condMapEmpty!18744) mapIsEmpty!18744))

(assert (= (and b!435160 (not condMapEmpty!18744)) mapNonEmpty!18744))

(get-info :version)

(assert (= (and mapNonEmpty!18744 ((_ is ValueCellFull!5364) mapValue!18744)) b!435174))

(assert (= (and b!435160 ((_ is ValueCellFull!5364) mapDefault!18744)) b!435168))

(assert (= start!40004 b!435160))

(declare-fun b_lambda!9381 () Bool)

(assert (=> (not b_lambda!9381) (not b!435173)))

(declare-fun t!13311 () Bool)

(declare-fun tb!3677 () Bool)

(assert (=> (and start!40004 (= defaultEntry!557 defaultEntry!557) t!13311) tb!3677))

(declare-fun result!6873 () Bool)

(assert (=> tb!3677 (= result!6873 tp_is_empty!11415)))

(assert (=> b!435173 t!13311))

(declare-fun b_and!18205 () Bool)

(assert (= b_and!18203 (and (=> t!13311 result!6873) b_and!18205)))

(declare-fun m!423089 () Bool)

(assert (=> mapNonEmpty!18744 m!423089))

(declare-fun m!423091 () Bool)

(assert (=> start!40004 m!423091))

(declare-fun m!423093 () Bool)

(assert (=> start!40004 m!423093))

(declare-fun m!423095 () Bool)

(assert (=> b!435172 m!423095))

(declare-fun m!423097 () Bool)

(assert (=> b!435170 m!423097))

(declare-fun m!423099 () Bool)

(assert (=> b!435175 m!423099))

(assert (=> b!435175 m!423099))

(declare-fun m!423101 () Bool)

(assert (=> b!435175 m!423101))

(declare-fun m!423103 () Bool)

(assert (=> b!435175 m!423103))

(assert (=> b!435175 m!423103))

(declare-fun m!423105 () Bool)

(assert (=> b!435175 m!423105))

(declare-fun m!423107 () Bool)

(assert (=> b!435166 m!423107))

(declare-fun m!423109 () Bool)

(assert (=> b!435167 m!423109))

(declare-fun m!423111 () Bool)

(assert (=> b!435164 m!423111))

(declare-fun m!423113 () Bool)

(assert (=> b!435164 m!423113))

(declare-fun m!423115 () Bool)

(assert (=> b!435164 m!423115))

(declare-fun m!423117 () Bool)

(assert (=> b!435161 m!423117))

(assert (=> b!435159 m!423103))

(declare-fun m!423119 () Bool)

(assert (=> b!435159 m!423119))

(declare-fun m!423121 () Bool)

(assert (=> b!435159 m!423121))

(declare-fun m!423123 () Bool)

(assert (=> b!435159 m!423123))

(assert (=> b!435159 m!423103))

(declare-fun m!423125 () Bool)

(assert (=> b!435159 m!423125))

(declare-fun m!423127 () Bool)

(assert (=> b!435159 m!423127))

(assert (=> b!435173 m!423103))

(declare-fun m!423129 () Bool)

(assert (=> b!435173 m!423129))

(declare-fun m!423131 () Bool)

(assert (=> b!435173 m!423131))

(declare-fun m!423133 () Bool)

(assert (=> b!435173 m!423133))

(assert (=> b!435173 m!423133))

(assert (=> b!435173 m!423131))

(declare-fun m!423135 () Bool)

(assert (=> b!435173 m!423135))

(declare-fun m!423137 () Bool)

(assert (=> b!435163 m!423137))

(declare-fun m!423139 () Bool)

(assert (=> b!435171 m!423139))

(declare-fun m!423141 () Bool)

(assert (=> b!435171 m!423141))

(declare-fun m!423143 () Bool)

(assert (=> b!435177 m!423143))

(declare-fun m!423145 () Bool)

(assert (=> b!435162 m!423145))

(check-sat (not b_lambda!9381) (not b!435166) (not b!435177) (not b!435170) (not b!435161) (not b!435171) (not b!435172) (not b!435164) (not b!435175) (not b!435167) (not b!435162) b_and!18205 (not b!435159) tp_is_empty!11415 (not start!40004) (not mapNonEmpty!18744) (not b_next!10263) (not b!435173))
(check-sat b_and!18205 (not b_next!10263))
