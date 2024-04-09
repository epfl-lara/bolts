; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40194 () Bool)

(assert start!40194)

(declare-fun b_free!10453 () Bool)

(declare-fun b_next!10453 () Bool)

(assert (=> start!40194 (= b_free!10453 (not b_next!10453))))

(declare-fun tp!36887 () Bool)

(declare-fun b_and!18439 () Bool)

(assert (=> start!40194 (= tp!36887 b_and!18439)))

(declare-fun b!440033 () Bool)

(declare-fun res!260292 () Bool)

(declare-fun e!259297 () Bool)

(assert (=> b!440033 (=> (not res!260292) (not e!259297))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!440033 (= res!260292 (validMask!0 mask!1025))))

(declare-fun b!440034 () Bool)

(declare-fun res!260285 () Bool)

(assert (=> b!440034 (=> (not res!260285) (not e!259297))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!440034 (= res!260285 (validKeyInArray!0 k!794))))

(declare-fun b!440035 () Bool)

(declare-fun e!259293 () Bool)

(declare-fun e!259296 () Bool)

(assert (=> b!440035 (= e!259293 e!259296)))

(declare-fun res!260287 () Bool)

(assert (=> b!440035 (=> (not res!260287) (not e!259296))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!440035 (= res!260287 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16579 0))(
  ( (V!16580 (val!5847 Int)) )
))
(declare-fun minValue!515 () V!16579)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5459 0))(
  ( (ValueCellFull!5459 (v!8090 V!16579)) (EmptyCell!5459) )
))
(declare-datatypes ((array!27001 0))(
  ( (array!27002 (arr!12947 (Array (_ BitVec 32) ValueCell!5459)) (size!13299 (_ BitVec 32))) )
))
(declare-fun lt!202480 () array!27001)

(declare-fun zeroValue!515 () V!16579)

(declare-datatypes ((tuple2!7694 0))(
  ( (tuple2!7695 (_1!3857 (_ BitVec 64)) (_2!3857 V!16579)) )
))
(declare-datatypes ((List!7736 0))(
  ( (Nil!7733) (Cons!7732 (h!8588 tuple2!7694) (t!13500 List!7736)) )
))
(declare-datatypes ((ListLongMap!6621 0))(
  ( (ListLongMap!6622 (toList!3326 List!7736)) )
))
(declare-fun lt!202478 () ListLongMap!6621)

(declare-datatypes ((array!27003 0))(
  ( (array!27004 (arr!12948 (Array (_ BitVec 32) (_ BitVec 64))) (size!13300 (_ BitVec 32))) )
))
(declare-fun lt!202482 () array!27003)

(declare-fun getCurrentListMapNoExtraKeys!1508 (array!27003 array!27001 (_ BitVec 32) (_ BitVec 32) V!16579 V!16579 (_ BitVec 32) Int) ListLongMap!6621)

(assert (=> b!440035 (= lt!202478 (getCurrentListMapNoExtraKeys!1508 lt!202482 lt!202480 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!27001)

(declare-fun v!412 () V!16579)

(assert (=> b!440035 (= lt!202480 (array!27002 (store (arr!12947 _values!549) i!563 (ValueCellFull!5459 v!412)) (size!13299 _values!549)))))

(declare-fun lt!202479 () ListLongMap!6621)

(declare-fun _keys!709 () array!27003)

(assert (=> b!440035 (= lt!202479 (getCurrentListMapNoExtraKeys!1508 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!440036 () Bool)

(declare-fun res!260286 () Bool)

(assert (=> b!440036 (=> (not res!260286) (not e!259293))))

(assert (=> b!440036 (= res!260286 (bvsle from!863 i!563))))

(declare-fun b!440037 () Bool)

(declare-fun e!259292 () Bool)

(declare-fun tp_is_empty!11605 () Bool)

(assert (=> b!440037 (= e!259292 tp_is_empty!11605)))

(declare-fun b!440038 () Bool)

(declare-fun res!260282 () Bool)

(assert (=> b!440038 (=> (not res!260282) (not e!259297))))

(declare-fun arrayContainsKey!0 (array!27003 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!440038 (= res!260282 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!440039 () Bool)

(declare-fun e!259295 () Bool)

(declare-fun mapRes!19029 () Bool)

(assert (=> b!440039 (= e!259295 (and e!259292 mapRes!19029))))

(declare-fun condMapEmpty!19029 () Bool)

(declare-fun mapDefault!19029 () ValueCell!5459)

