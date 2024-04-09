; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39712 () Bool)

(assert start!39712)

(declare-fun b_free!9971 () Bool)

(declare-fun b_next!9971 () Bool)

(assert (=> start!39712 (= b_free!9971 (not b_next!9971))))

(declare-fun tp!35442 () Bool)

(declare-fun b_and!17645 () Bool)

(assert (=> start!39712 (= tp!35442 b_and!17645)))

(declare-fun mapNonEmpty!18306 () Bool)

(declare-fun mapRes!18306 () Bool)

(declare-fun tp!35441 () Bool)

(declare-fun e!253021 () Bool)

(assert (=> mapNonEmpty!18306 (= mapRes!18306 (and tp!35441 e!253021))))

(declare-datatypes ((V!15935 0))(
  ( (V!15936 (val!5606 Int)) )
))
(declare-datatypes ((ValueCell!5218 0))(
  ( (ValueCellFull!5218 (v!7849 V!15935)) (EmptyCell!5218) )
))
(declare-fun mapValue!18306 () ValueCell!5218)

(declare-fun mapRest!18306 () (Array (_ BitVec 32) ValueCell!5218))

(declare-fun mapKey!18306 () (_ BitVec 32))

(declare-datatypes ((array!26071 0))(
  ( (array!26072 (arr!12482 (Array (_ BitVec 32) ValueCell!5218)) (size!12834 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26071)

(assert (=> mapNonEmpty!18306 (= (arr!12482 _values!549) (store mapRest!18306 mapKey!18306 mapValue!18306))))

(declare-fun b!426524 () Bool)

(declare-fun res!250092 () Bool)

(declare-fun e!253015 () Bool)

(assert (=> b!426524 (=> (not res!250092) (not e!253015))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!26073 0))(
  ( (array!26074 (arr!12483 (Array (_ BitVec 32) (_ BitVec 64))) (size!12835 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26073)

(assert (=> b!426524 (= res!250092 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12835 _keys!709))))))

(declare-fun b!426525 () Bool)

(declare-fun e!253019 () Bool)

(declare-fun e!253018 () Bool)

(assert (=> b!426525 (= e!253019 e!253018)))

(declare-fun res!250082 () Bool)

(assert (=> b!426525 (=> (not res!250082) (not e!253018))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!426525 (= res!250082 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!15935)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!195015 () array!26073)

(declare-fun zeroValue!515 () V!15935)

(declare-fun lt!195013 () array!26071)

(declare-datatypes ((tuple2!7306 0))(
  ( (tuple2!7307 (_1!3663 (_ BitVec 64)) (_2!3663 V!15935)) )
))
(declare-datatypes ((List!7355 0))(
  ( (Nil!7352) (Cons!7351 (h!8207 tuple2!7306) (t!12807 List!7355)) )
))
(declare-datatypes ((ListLongMap!6233 0))(
  ( (ListLongMap!6234 (toList!3132 List!7355)) )
))
(declare-fun lt!195011 () ListLongMap!6233)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1333 (array!26073 array!26071 (_ BitVec 32) (_ BitVec 32) V!15935 V!15935 (_ BitVec 32) Int) ListLongMap!6233)

(assert (=> b!426525 (= lt!195011 (getCurrentListMapNoExtraKeys!1333 lt!195015 lt!195013 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15935)

(assert (=> b!426525 (= lt!195013 (array!26072 (store (arr!12482 _values!549) i!563 (ValueCellFull!5218 v!412)) (size!12834 _values!549)))))

(declare-fun lt!195014 () ListLongMap!6233)

(assert (=> b!426525 (= lt!195014 (getCurrentListMapNoExtraKeys!1333 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!426526 () Bool)

(declare-fun tp_is_empty!11123 () Bool)

(assert (=> b!426526 (= e!253021 tp_is_empty!11123)))

(declare-fun b!426527 () Bool)

(declare-fun res!250085 () Bool)

(assert (=> b!426527 (=> (not res!250085) (not e!253015))))

(assert (=> b!426527 (= res!250085 (or (= (select (arr!12483 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12483 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!426528 () Bool)

(declare-fun res!250080 () Bool)

(assert (=> b!426528 (=> (not res!250080) (not e!253015))))

(assert (=> b!426528 (= res!250080 (and (= (size!12834 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12835 _keys!709) (size!12834 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!426529 () Bool)

(declare-fun res!250084 () Bool)

(assert (=> b!426529 (=> (not res!250084) (not e!253015))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26073 (_ BitVec 32)) Bool)

(assert (=> b!426529 (= res!250084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!426530 () Bool)

(declare-fun e!253020 () Bool)

(declare-fun e!253016 () Bool)

(assert (=> b!426530 (= e!253020 (and e!253016 mapRes!18306))))

(declare-fun condMapEmpty!18306 () Bool)

(declare-fun mapDefault!18306 () ValueCell!5218)

