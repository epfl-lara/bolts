; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39828 () Bool)

(assert start!39828)

(declare-fun b_free!10087 () Bool)

(declare-fun b_next!10087 () Bool)

(assert (=> start!39828 (= b_free!10087 (not b_next!10087))))

(declare-fun tp!35790 () Bool)

(declare-fun b_and!17851 () Bool)

(assert (=> start!39828 (= tp!35790 b_and!17851)))

(declare-fun b!429710 () Bool)

(declare-datatypes ((Unit!12600 0))(
  ( (Unit!12601) )
))
(declare-fun e!254462 () Unit!12600)

(declare-fun Unit!12602 () Unit!12600)

(assert (=> b!429710 (= e!254462 Unit!12602)))

(declare-fun lt!196459 () Unit!12600)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((array!26295 0))(
  ( (array!26296 (arr!12594 (Array (_ BitVec 32) (_ BitVec 64))) (size!12946 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26295)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26295 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12600)

(assert (=> b!429710 (= lt!196459 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!429710 false))

(declare-fun res!252496 () Bool)

(declare-fun e!254470 () Bool)

(assert (=> start!39828 (=> (not res!252496) (not e!254470))))

(assert (=> start!39828 (= res!252496 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12946 _keys!709))))))

(assert (=> start!39828 e!254470))

(declare-fun tp_is_empty!11239 () Bool)

(assert (=> start!39828 tp_is_empty!11239))

(assert (=> start!39828 tp!35790))

(assert (=> start!39828 true))

(declare-datatypes ((V!16091 0))(
  ( (V!16092 (val!5664 Int)) )
))
(declare-datatypes ((ValueCell!5276 0))(
  ( (ValueCellFull!5276 (v!7907 V!16091)) (EmptyCell!5276) )
))
(declare-datatypes ((array!26297 0))(
  ( (array!26298 (arr!12595 (Array (_ BitVec 32) ValueCell!5276)) (size!12947 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26297)

(declare-fun e!254464 () Bool)

(declare-fun array_inv!9160 (array!26297) Bool)

(assert (=> start!39828 (and (array_inv!9160 _values!549) e!254464)))

(declare-fun array_inv!9161 (array!26295) Bool)

(assert (=> start!39828 (array_inv!9161 _keys!709)))

(declare-fun b!429711 () Bool)

(declare-fun res!252500 () Bool)

(assert (=> b!429711 (=> (not res!252500) (not e!254470))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!429711 (= res!252500 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12946 _keys!709))))))

(declare-fun mapIsEmpty!18480 () Bool)

(declare-fun mapRes!18480 () Bool)

(assert (=> mapIsEmpty!18480 mapRes!18480))

(declare-fun b!429712 () Bool)

(declare-fun e!254463 () Bool)

(declare-fun e!254465 () Bool)

(assert (=> b!429712 (= e!254463 (not e!254465))))

(declare-fun res!252488 () Bool)

(assert (=> b!429712 (=> res!252488 e!254465)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!429712 (= res!252488 (not (validKeyInArray!0 (select (arr!12594 _keys!709) from!863))))))

(declare-datatypes ((tuple2!7394 0))(
  ( (tuple2!7395 (_1!3707 (_ BitVec 64)) (_2!3707 V!16091)) )
))
(declare-datatypes ((List!7446 0))(
  ( (Nil!7443) (Cons!7442 (h!8298 tuple2!7394) (t!12990 List!7446)) )
))
(declare-datatypes ((ListLongMap!6321 0))(
  ( (ListLongMap!6322 (toList!3176 List!7446)) )
))
(declare-fun lt!196462 () ListLongMap!6321)

(declare-fun lt!196463 () ListLongMap!6321)

(assert (=> b!429712 (= lt!196462 lt!196463)))

(declare-fun lt!196458 () ListLongMap!6321)

(declare-fun v!412 () V!16091)

(declare-fun +!1325 (ListLongMap!6321 tuple2!7394) ListLongMap!6321)

(assert (=> b!429712 (= lt!196463 (+!1325 lt!196458 (tuple2!7395 k!794 v!412)))))

(declare-fun minValue!515 () V!16091)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16091)

(declare-fun lt!196461 () array!26297)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!196467 () array!26295)

(declare-fun getCurrentListMapNoExtraKeys!1373 (array!26295 array!26297 (_ BitVec 32) (_ BitVec 32) V!16091 V!16091 (_ BitVec 32) Int) ListLongMap!6321)

(assert (=> b!429712 (= lt!196462 (getCurrentListMapNoExtraKeys!1373 lt!196467 lt!196461 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!429712 (= lt!196458 (getCurrentListMapNoExtraKeys!1373 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!196464 () Unit!12600)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!522 (array!26295 array!26297 (_ BitVec 32) (_ BitVec 32) V!16091 V!16091 (_ BitVec 32) (_ BitVec 64) V!16091 (_ BitVec 32) Int) Unit!12600)

(assert (=> b!429712 (= lt!196464 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!522 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!429713 () Bool)

(declare-fun e!254467 () Bool)

(assert (=> b!429713 (= e!254467 e!254463)))

(declare-fun res!252493 () Bool)

(assert (=> b!429713 (=> (not res!252493) (not e!254463))))

(assert (=> b!429713 (= res!252493 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!196466 () ListLongMap!6321)

(assert (=> b!429713 (= lt!196466 (getCurrentListMapNoExtraKeys!1373 lt!196467 lt!196461 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!429713 (= lt!196461 (array!26298 (store (arr!12595 _values!549) i!563 (ValueCellFull!5276 v!412)) (size!12947 _values!549)))))

(declare-fun lt!196460 () ListLongMap!6321)

(assert (=> b!429713 (= lt!196460 (getCurrentListMapNoExtraKeys!1373 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!429714 () Bool)

(declare-fun res!252494 () Bool)

(assert (=> b!429714 (=> (not res!252494) (not e!254470))))

(declare-datatypes ((List!7447 0))(
  ( (Nil!7444) (Cons!7443 (h!8299 (_ BitVec 64)) (t!12991 List!7447)) )
))
(declare-fun arrayNoDuplicates!0 (array!26295 (_ BitVec 32) List!7447) Bool)

(assert (=> b!429714 (= res!252494 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7444))))

(declare-fun mapNonEmpty!18480 () Bool)

(declare-fun tp!35789 () Bool)

(declare-fun e!254466 () Bool)

(assert (=> mapNonEmpty!18480 (= mapRes!18480 (and tp!35789 e!254466))))

(declare-fun mapKey!18480 () (_ BitVec 32))

(declare-fun mapRest!18480 () (Array (_ BitVec 32) ValueCell!5276))

(declare-fun mapValue!18480 () ValueCell!5276)

(assert (=> mapNonEmpty!18480 (= (arr!12595 _values!549) (store mapRest!18480 mapKey!18480 mapValue!18480))))

(declare-fun b!429715 () Bool)

(assert (=> b!429715 (= e!254466 tp_is_empty!11239)))

(declare-fun b!429716 () Bool)

(declare-fun res!252495 () Bool)

(assert (=> b!429716 (=> (not res!252495) (not e!254470))))

(assert (=> b!429716 (= res!252495 (validKeyInArray!0 k!794))))

(declare-fun b!429717 () Bool)

(declare-fun res!252499 () Bool)

(assert (=> b!429717 (=> (not res!252499) (not e!254467))))

(assert (=> b!429717 (= res!252499 (bvsle from!863 i!563))))

(declare-fun b!429718 () Bool)

(declare-fun res!252497 () Bool)

(assert (=> b!429718 (=> (not res!252497) (not e!254470))))

(assert (=> b!429718 (= res!252497 (or (= (select (arr!12594 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12594 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!429719 () Bool)

(assert (=> b!429719 (= e!254465 true)))

(assert (=> b!429719 (not (= (select (arr!12594 _keys!709) from!863) k!794))))

(declare-fun lt!196465 () Unit!12600)

(assert (=> b!429719 (= lt!196465 e!254462)))

(declare-fun c!55391 () Bool)

(assert (=> b!429719 (= c!55391 (= (select (arr!12594 _keys!709) from!863) k!794))))

(declare-fun get!6254 (ValueCell!5276 V!16091) V!16091)

(declare-fun dynLambda!771 (Int (_ BitVec 64)) V!16091)

(assert (=> b!429719 (= lt!196466 (+!1325 lt!196463 (tuple2!7395 (select (arr!12594 _keys!709) from!863) (get!6254 (select (arr!12595 _values!549) from!863) (dynLambda!771 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!429720 () Bool)

(declare-fun e!254468 () Bool)

(assert (=> b!429720 (= e!254468 tp_is_empty!11239)))

(declare-fun b!429721 () Bool)

(declare-fun res!252490 () Bool)

(assert (=> b!429721 (=> (not res!252490) (not e!254470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!429721 (= res!252490 (validMask!0 mask!1025))))

(declare-fun b!429722 () Bool)

(declare-fun Unit!12603 () Unit!12600)

(assert (=> b!429722 (= e!254462 Unit!12603)))

(declare-fun b!429723 () Bool)

(assert (=> b!429723 (= e!254470 e!254467)))

(declare-fun res!252489 () Bool)

(assert (=> b!429723 (=> (not res!252489) (not e!254467))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26295 (_ BitVec 32)) Bool)

(assert (=> b!429723 (= res!252489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!196467 mask!1025))))

(assert (=> b!429723 (= lt!196467 (array!26296 (store (arr!12594 _keys!709) i!563 k!794) (size!12946 _keys!709)))))

(declare-fun b!429724 () Bool)

(assert (=> b!429724 (= e!254464 (and e!254468 mapRes!18480))))

(declare-fun condMapEmpty!18480 () Bool)

(declare-fun mapDefault!18480 () ValueCell!5276)

