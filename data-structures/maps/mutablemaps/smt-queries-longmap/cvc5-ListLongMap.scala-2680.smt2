; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39906 () Bool)

(assert start!39906)

(declare-fun b_free!10165 () Bool)

(declare-fun b_next!10165 () Bool)

(assert (=> start!39906 (= b_free!10165 (not b_next!10165))))

(declare-fun tp!36024 () Bool)

(declare-fun b_and!18007 () Bool)

(assert (=> start!39906 (= tp!36024 b_and!18007)))

(declare-fun b!432121 () Bool)

(declare-fun res!254243 () Bool)

(declare-fun e!255626 () Bool)

(assert (=> b!432121 (=> (not res!254243) (not e!255626))))

(declare-datatypes ((array!26445 0))(
  ( (array!26446 (arr!12669 (Array (_ BitVec 32) (_ BitVec 64))) (size!13021 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26445)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!432121 (= res!254243 (or (= (select (arr!12669 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12669 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!432122 () Bool)

(declare-fun e!255629 () Bool)

(declare-fun e!255631 () Bool)

(assert (=> b!432122 (= e!255629 e!255631)))

(declare-fun res!254249 () Bool)

(assert (=> b!432122 (=> res!254249 e!255631)))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!432122 (= res!254249 (= k!794 (select (arr!12669 _keys!709) from!863)))))

(assert (=> b!432122 (not (= (select (arr!12669 _keys!709) from!863) k!794))))

(declare-datatypes ((Unit!12721 0))(
  ( (Unit!12722) )
))
(declare-fun lt!198192 () Unit!12721)

(declare-fun e!255627 () Unit!12721)

(assert (=> b!432122 (= lt!198192 e!255627)))

(declare-fun c!55508 () Bool)

(assert (=> b!432122 (= c!55508 (= (select (arr!12669 _keys!709) from!863) k!794))))

(declare-datatypes ((V!16195 0))(
  ( (V!16196 (val!5703 Int)) )
))
(declare-datatypes ((tuple2!7460 0))(
  ( (tuple2!7461 (_1!3740 (_ BitVec 64)) (_2!3740 V!16195)) )
))
(declare-datatypes ((List!7513 0))(
  ( (Nil!7510) (Cons!7509 (h!8365 tuple2!7460) (t!13135 List!7513)) )
))
(declare-datatypes ((ListLongMap!6387 0))(
  ( (ListLongMap!6388 (toList!3209 List!7513)) )
))
(declare-fun lt!198179 () ListLongMap!6387)

(declare-fun lt!198182 () ListLongMap!6387)

(assert (=> b!432122 (= lt!198179 lt!198182)))

(declare-fun lt!198180 () ListLongMap!6387)

(declare-fun lt!198191 () tuple2!7460)

(declare-fun +!1355 (ListLongMap!6387 tuple2!7460) ListLongMap!6387)

(assert (=> b!432122 (= lt!198182 (+!1355 lt!198180 lt!198191))))

(declare-fun lt!198189 () V!16195)

(assert (=> b!432122 (= lt!198191 (tuple2!7461 (select (arr!12669 _keys!709) from!863) lt!198189))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5315 0))(
  ( (ValueCellFull!5315 (v!7946 V!16195)) (EmptyCell!5315) )
))
(declare-datatypes ((array!26447 0))(
  ( (array!26448 (arr!12670 (Array (_ BitVec 32) ValueCell!5315)) (size!13022 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26447)

(declare-fun get!6303 (ValueCell!5315 V!16195) V!16195)

(declare-fun dynLambda!794 (Int (_ BitVec 64)) V!16195)

(assert (=> b!432122 (= lt!198189 (get!6303 (select (arr!12670 _values!549) from!863) (dynLambda!794 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!432123 () Bool)

(declare-fun res!254237 () Bool)

(assert (=> b!432123 (=> (not res!254237) (not e!255626))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!432123 (= res!254237 (and (= (size!13022 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13021 _keys!709) (size!13022 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!432124 () Bool)

(declare-fun e!255628 () Bool)

(assert (=> b!432124 (= e!255628 (not e!255629))))

(declare-fun res!254242 () Bool)

(assert (=> b!432124 (=> res!254242 e!255629)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!432124 (= res!254242 (not (validKeyInArray!0 (select (arr!12669 _keys!709) from!863))))))

(declare-fun lt!198183 () ListLongMap!6387)

(assert (=> b!432124 (= lt!198183 lt!198180)))

(declare-fun lt!198184 () ListLongMap!6387)

(declare-fun lt!198181 () tuple2!7460)

(assert (=> b!432124 (= lt!198180 (+!1355 lt!198184 lt!198181))))

(declare-fun minValue!515 () V!16195)

(declare-fun zeroValue!515 () V!16195)

(declare-fun lt!198178 () array!26445)

(declare-fun lt!198185 () array!26447)

(declare-fun getCurrentListMapNoExtraKeys!1402 (array!26445 array!26447 (_ BitVec 32) (_ BitVec 32) V!16195 V!16195 (_ BitVec 32) Int) ListLongMap!6387)

(assert (=> b!432124 (= lt!198183 (getCurrentListMapNoExtraKeys!1402 lt!198178 lt!198185 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!16195)

(assert (=> b!432124 (= lt!198181 (tuple2!7461 k!794 v!412))))

(assert (=> b!432124 (= lt!198184 (getCurrentListMapNoExtraKeys!1402 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!198186 () Unit!12721)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!546 (array!26445 array!26447 (_ BitVec 32) (_ BitVec 32) V!16195 V!16195 (_ BitVec 32) (_ BitVec 64) V!16195 (_ BitVec 32) Int) Unit!12721)

(assert (=> b!432124 (= lt!198186 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!546 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!432125 () Bool)

(declare-fun Unit!12723 () Unit!12721)

(assert (=> b!432125 (= e!255627 Unit!12723)))

(declare-fun res!254247 () Bool)

(assert (=> start!39906 (=> (not res!254247) (not e!255626))))

(assert (=> start!39906 (= res!254247 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13021 _keys!709))))))

(assert (=> start!39906 e!255626))

(declare-fun tp_is_empty!11317 () Bool)

(assert (=> start!39906 tp_is_empty!11317))

(assert (=> start!39906 tp!36024))

(assert (=> start!39906 true))

(declare-fun e!255625 () Bool)

(declare-fun array_inv!9214 (array!26447) Bool)

(assert (=> start!39906 (and (array_inv!9214 _values!549) e!255625)))

(declare-fun array_inv!9215 (array!26445) Bool)

(assert (=> start!39906 (array_inv!9215 _keys!709)))

(declare-fun b!432126 () Bool)

(declare-fun res!254239 () Bool)

(assert (=> b!432126 (=> (not res!254239) (not e!255626))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!432126 (= res!254239 (validMask!0 mask!1025))))

(declare-fun b!432127 () Bool)

(declare-fun Unit!12724 () Unit!12721)

(assert (=> b!432127 (= e!255627 Unit!12724)))

(declare-fun lt!198187 () Unit!12721)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26445 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12721)

(assert (=> b!432127 (= lt!198187 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!432127 false))

(declare-fun b!432128 () Bool)

(declare-fun e!255633 () Bool)

(assert (=> b!432128 (= e!255633 e!255628)))

(declare-fun res!254248 () Bool)

(assert (=> b!432128 (=> (not res!254248) (not e!255628))))

(assert (=> b!432128 (= res!254248 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!432128 (= lt!198179 (getCurrentListMapNoExtraKeys!1402 lt!198178 lt!198185 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!432128 (= lt!198185 (array!26448 (store (arr!12670 _values!549) i!563 (ValueCellFull!5315 v!412)) (size!13022 _values!549)))))

(declare-fun lt!198188 () ListLongMap!6387)

(assert (=> b!432128 (= lt!198188 (getCurrentListMapNoExtraKeys!1402 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!18597 () Bool)

(declare-fun mapRes!18597 () Bool)

(assert (=> mapIsEmpty!18597 mapRes!18597))

(declare-fun b!432129 () Bool)

(declare-fun e!255632 () Bool)

(assert (=> b!432129 (= e!255632 tp_is_empty!11317)))

(declare-fun b!432130 () Bool)

(declare-fun res!254240 () Bool)

(assert (=> b!432130 (=> (not res!254240) (not e!255626))))

(declare-datatypes ((List!7514 0))(
  ( (Nil!7511) (Cons!7510 (h!8366 (_ BitVec 64)) (t!13136 List!7514)) )
))
(declare-fun arrayNoDuplicates!0 (array!26445 (_ BitVec 32) List!7514) Bool)

(assert (=> b!432130 (= res!254240 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7511))))

(declare-fun mapNonEmpty!18597 () Bool)

(declare-fun tp!36023 () Bool)

(assert (=> mapNonEmpty!18597 (= mapRes!18597 (and tp!36023 e!255632))))

(declare-fun mapValue!18597 () ValueCell!5315)

(declare-fun mapRest!18597 () (Array (_ BitVec 32) ValueCell!5315))

(declare-fun mapKey!18597 () (_ BitVec 32))

(assert (=> mapNonEmpty!18597 (= (arr!12670 _values!549) (store mapRest!18597 mapKey!18597 mapValue!18597))))

(declare-fun b!432131 () Bool)

(declare-fun e!255630 () Bool)

(assert (=> b!432131 (= e!255630 tp_is_empty!11317)))

(declare-fun b!432132 () Bool)

(assert (=> b!432132 (= e!255631 true)))

(assert (=> b!432132 (= lt!198182 (+!1355 (+!1355 lt!198184 lt!198191) lt!198181))))

(declare-fun lt!198190 () Unit!12721)

(declare-fun addCommutativeForDiffKeys!367 (ListLongMap!6387 (_ BitVec 64) V!16195 (_ BitVec 64) V!16195) Unit!12721)

(assert (=> b!432132 (= lt!198190 (addCommutativeForDiffKeys!367 lt!198184 k!794 v!412 (select (arr!12669 _keys!709) from!863) lt!198189))))

(declare-fun b!432133 () Bool)

(declare-fun res!254245 () Bool)

(assert (=> b!432133 (=> (not res!254245) (not e!255633))))

(assert (=> b!432133 (= res!254245 (arrayNoDuplicates!0 lt!198178 #b00000000000000000000000000000000 Nil!7511))))

(declare-fun b!432134 () Bool)

(declare-fun res!254236 () Bool)

(assert (=> b!432134 (=> (not res!254236) (not e!255626))))

(assert (=> b!432134 (= res!254236 (validKeyInArray!0 k!794))))

(declare-fun b!432135 () Bool)

(declare-fun res!254250 () Bool)

(assert (=> b!432135 (=> (not res!254250) (not e!255633))))

(assert (=> b!432135 (= res!254250 (bvsle from!863 i!563))))

(declare-fun b!432136 () Bool)

(declare-fun res!254241 () Bool)

(assert (=> b!432136 (=> (not res!254241) (not e!255626))))

(declare-fun arrayContainsKey!0 (array!26445 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!432136 (= res!254241 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!432137 () Bool)

(declare-fun res!254244 () Bool)

(assert (=> b!432137 (=> (not res!254244) (not e!255626))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26445 (_ BitVec 32)) Bool)

(assert (=> b!432137 (= res!254244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!432138 () Bool)

(assert (=> b!432138 (= e!255625 (and e!255630 mapRes!18597))))

(declare-fun condMapEmpty!18597 () Bool)

(declare-fun mapDefault!18597 () ValueCell!5315)

