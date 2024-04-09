; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39742 () Bool)

(assert start!39742)

(declare-fun b_free!10001 () Bool)

(declare-fun b_next!10001 () Bool)

(assert (=> start!39742 (= b_free!10001 (not b_next!10001))))

(declare-fun tp!35531 () Bool)

(declare-fun b_and!17679 () Bool)

(assert (=> start!39742 (= tp!35531 b_and!17679)))

(declare-fun b!427265 () Bool)

(declare-fun res!250692 () Bool)

(declare-fun e!253349 () Bool)

(assert (=> b!427265 (=> (not res!250692) (not e!253349))))

(declare-datatypes ((array!26125 0))(
  ( (array!26126 (arr!12509 (Array (_ BitVec 32) (_ BitVec 64))) (size!12861 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26125)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!427265 (= res!250692 (or (= (select (arr!12509 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12509 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!427266 () Bool)

(declare-fun e!253352 () Bool)

(assert (=> b!427266 (= e!253349 e!253352)))

(declare-fun res!250688 () Bool)

(assert (=> b!427266 (=> (not res!250688) (not e!253352))))

(declare-fun lt!195262 () array!26125)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26125 (_ BitVec 32)) Bool)

(assert (=> b!427266 (= res!250688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195262 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!427266 (= lt!195262 (array!26126 (store (arr!12509 _keys!709) i!563 k!794) (size!12861 _keys!709)))))

(declare-fun b!427267 () Bool)

(declare-fun e!253347 () Bool)

(assert (=> b!427267 (= e!253347 true)))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((V!15975 0))(
  ( (V!15976 (val!5621 Int)) )
))
(declare-datatypes ((tuple2!7326 0))(
  ( (tuple2!7327 (_1!3673 (_ BitVec 64)) (_2!3673 V!15975)) )
))
(declare-datatypes ((List!7375 0))(
  ( (Nil!7372) (Cons!7371 (h!8227 tuple2!7326) (t!12833 List!7375)) )
))
(declare-datatypes ((ListLongMap!6253 0))(
  ( (ListLongMap!6254 (toList!3142 List!7375)) )
))
(declare-fun lt!195266 () ListLongMap!6253)

(declare-fun lt!195261 () ListLongMap!6253)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5233 0))(
  ( (ValueCellFull!5233 (v!7864 V!15975)) (EmptyCell!5233) )
))
(declare-datatypes ((array!26127 0))(
  ( (array!26128 (arr!12510 (Array (_ BitVec 32) ValueCell!5233)) (size!12862 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26127)

(declare-fun +!1295 (ListLongMap!6253 tuple2!7326) ListLongMap!6253)

(declare-fun get!6196 (ValueCell!5233 V!15975) V!15975)

(declare-fun dynLambda!743 (Int (_ BitVec 64)) V!15975)

(assert (=> b!427267 (= lt!195261 (+!1295 lt!195266 (tuple2!7327 (select (arr!12509 _keys!709) from!863) (get!6196 (select (arr!12510 _values!549) from!863) (dynLambda!743 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!427268 () Bool)

(declare-fun res!250690 () Bool)

(assert (=> b!427268 (=> (not res!250690) (not e!253352))))

(assert (=> b!427268 (= res!250690 (bvsle from!863 i!563))))

(declare-fun b!427269 () Bool)

(declare-fun res!250695 () Bool)

(assert (=> b!427269 (=> (not res!250695) (not e!253349))))

(assert (=> b!427269 (= res!250695 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12861 _keys!709))))))

(declare-fun b!427270 () Bool)

(declare-fun e!253353 () Bool)

(assert (=> b!427270 (= e!253353 (not e!253347))))

(declare-fun res!250683 () Bool)

(assert (=> b!427270 (=> res!250683 e!253347)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!427270 (= res!250683 (not (validKeyInArray!0 (select (arr!12509 _keys!709) from!863))))))

(declare-fun lt!195265 () ListLongMap!6253)

(assert (=> b!427270 (= lt!195265 lt!195266)))

(declare-fun lt!195260 () ListLongMap!6253)

(declare-fun v!412 () V!15975)

(assert (=> b!427270 (= lt!195266 (+!1295 lt!195260 (tuple2!7327 k!794 v!412)))))

(declare-fun lt!195264 () array!26127)

(declare-fun minValue!515 () V!15975)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15975)

(declare-fun getCurrentListMapNoExtraKeys!1343 (array!26125 array!26127 (_ BitVec 32) (_ BitVec 32) V!15975 V!15975 (_ BitVec 32) Int) ListLongMap!6253)

(assert (=> b!427270 (= lt!195265 (getCurrentListMapNoExtraKeys!1343 lt!195262 lt!195264 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!427270 (= lt!195260 (getCurrentListMapNoExtraKeys!1343 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12493 0))(
  ( (Unit!12494) )
))
(declare-fun lt!195267 () Unit!12493)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!497 (array!26125 array!26127 (_ BitVec 32) (_ BitVec 32) V!15975 V!15975 (_ BitVec 32) (_ BitVec 64) V!15975 (_ BitVec 32) Int) Unit!12493)

(assert (=> b!427270 (= lt!195267 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!497 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!18351 () Bool)

(declare-fun mapRes!18351 () Bool)

(assert (=> mapIsEmpty!18351 mapRes!18351))

(declare-fun b!427271 () Bool)

(declare-fun res!250682 () Bool)

(assert (=> b!427271 (=> (not res!250682) (not e!253352))))

(declare-datatypes ((List!7376 0))(
  ( (Nil!7373) (Cons!7372 (h!8228 (_ BitVec 64)) (t!12834 List!7376)) )
))
(declare-fun arrayNoDuplicates!0 (array!26125 (_ BitVec 32) List!7376) Bool)

(assert (=> b!427271 (= res!250682 (arrayNoDuplicates!0 lt!195262 #b00000000000000000000000000000000 Nil!7373))))

(declare-fun mapNonEmpty!18351 () Bool)

(declare-fun tp!35532 () Bool)

(declare-fun e!253354 () Bool)

(assert (=> mapNonEmpty!18351 (= mapRes!18351 (and tp!35532 e!253354))))

(declare-fun mapRest!18351 () (Array (_ BitVec 32) ValueCell!5233))

(declare-fun mapKey!18351 () (_ BitVec 32))

(declare-fun mapValue!18351 () ValueCell!5233)

(assert (=> mapNonEmpty!18351 (= (arr!12510 _values!549) (store mapRest!18351 mapKey!18351 mapValue!18351))))

(declare-fun b!427273 () Bool)

(declare-fun res!250687 () Bool)

(assert (=> b!427273 (=> (not res!250687) (not e!253349))))

(declare-fun arrayContainsKey!0 (array!26125 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!427273 (= res!250687 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!427274 () Bool)

(declare-fun res!250694 () Bool)

(assert (=> b!427274 (=> (not res!250694) (not e!253349))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!427274 (= res!250694 (validMask!0 mask!1025))))

(declare-fun b!427275 () Bool)

(assert (=> b!427275 (= e!253352 e!253353)))

(declare-fun res!250693 () Bool)

(assert (=> b!427275 (=> (not res!250693) (not e!253353))))

(assert (=> b!427275 (= res!250693 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!427275 (= lt!195261 (getCurrentListMapNoExtraKeys!1343 lt!195262 lt!195264 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!427275 (= lt!195264 (array!26128 (store (arr!12510 _values!549) i!563 (ValueCellFull!5233 v!412)) (size!12862 _values!549)))))

(declare-fun lt!195263 () ListLongMap!6253)

(assert (=> b!427275 (= lt!195263 (getCurrentListMapNoExtraKeys!1343 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!427276 () Bool)

(declare-fun tp_is_empty!11153 () Bool)

(assert (=> b!427276 (= e!253354 tp_is_empty!11153)))

(declare-fun b!427277 () Bool)

(declare-fun res!250686 () Bool)

(assert (=> b!427277 (=> (not res!250686) (not e!253349))))

(assert (=> b!427277 (= res!250686 (and (= (size!12862 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12861 _keys!709) (size!12862 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!427278 () Bool)

(declare-fun res!250685 () Bool)

(assert (=> b!427278 (=> (not res!250685) (not e!253349))))

(assert (=> b!427278 (= res!250685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!427279 () Bool)

(declare-fun res!250691 () Bool)

(assert (=> b!427279 (=> (not res!250691) (not e!253349))))

(assert (=> b!427279 (= res!250691 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7373))))

(declare-fun b!427280 () Bool)

(declare-fun e!253351 () Bool)

(declare-fun e!253348 () Bool)

(assert (=> b!427280 (= e!253351 (and e!253348 mapRes!18351))))

(declare-fun condMapEmpty!18351 () Bool)

(declare-fun mapDefault!18351 () ValueCell!5233)

