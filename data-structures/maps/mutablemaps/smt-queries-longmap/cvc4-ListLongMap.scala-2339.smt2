; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37508 () Bool)

(assert start!37508)

(declare-fun b_free!8627 () Bool)

(declare-fun b_next!8627 () Bool)

(assert (=> start!37508 (= b_free!8627 (not b_next!8627))))

(declare-fun tp!30596 () Bool)

(declare-fun b_and!15887 () Bool)

(assert (=> start!37508 (= tp!30596 b_and!15887)))

(declare-fun b!382249 () Bool)

(declare-fun res!217492 () Bool)

(declare-fun e!232299 () Bool)

(assert (=> b!382249 (=> (not res!217492) (not e!232299))))

(declare-datatypes ((array!22441 0))(
  ( (array!22442 (arr!10686 (Array (_ BitVec 32) (_ BitVec 64))) (size!11038 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22441)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22441 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!382249 (= res!217492 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!382250 () Bool)

(declare-fun res!217489 () Bool)

(assert (=> b!382250 (=> (not res!217489) (not e!232299))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!382250 (= res!217489 (validKeyInArray!0 k!778))))

(declare-fun b!382251 () Bool)

(declare-fun e!232296 () Bool)

(assert (=> b!382251 (= e!232299 e!232296)))

(declare-fun res!217486 () Bool)

(assert (=> b!382251 (=> (not res!217486) (not e!232296))))

(declare-fun lt!179393 () array!22441)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22441 (_ BitVec 32)) Bool)

(assert (=> b!382251 (= res!217486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179393 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!382251 (= lt!179393 (array!22442 (store (arr!10686 _keys!658) i!548 k!778) (size!11038 _keys!658)))))

(declare-fun b!382252 () Bool)

(declare-fun res!217491 () Bool)

(assert (=> b!382252 (=> (not res!217491) (not e!232296))))

(declare-datatypes ((List!6114 0))(
  ( (Nil!6111) (Cons!6110 (h!6966 (_ BitVec 64)) (t!11272 List!6114)) )
))
(declare-fun arrayNoDuplicates!0 (array!22441 (_ BitVec 32) List!6114) Bool)

(assert (=> b!382252 (= res!217491 (arrayNoDuplicates!0 lt!179393 #b00000000000000000000000000000000 Nil!6111))))

(declare-fun b!382253 () Bool)

(declare-fun res!217488 () Bool)

(assert (=> b!382253 (=> (not res!217488) (not e!232299))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13471 0))(
  ( (V!13472 (val!4682 Int)) )
))
(declare-datatypes ((ValueCell!4294 0))(
  ( (ValueCellFull!4294 (v!6875 V!13471)) (EmptyCell!4294) )
))
(declare-datatypes ((array!22443 0))(
  ( (array!22444 (arr!10687 (Array (_ BitVec 32) ValueCell!4294)) (size!11039 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22443)

(assert (=> b!382253 (= res!217488 (and (= (size!11039 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11038 _keys!658) (size!11039 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!382254 () Bool)

(declare-fun res!217487 () Bool)

(assert (=> b!382254 (=> (not res!217487) (not e!232299))))

(assert (=> b!382254 (= res!217487 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11038 _keys!658))))))

(declare-fun res!217493 () Bool)

(assert (=> start!37508 (=> (not res!217493) (not e!232299))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37508 (= res!217493 (validMask!0 mask!970))))

(assert (=> start!37508 e!232299))

(declare-fun e!232302 () Bool)

(declare-fun array_inv!7846 (array!22443) Bool)

(assert (=> start!37508 (and (array_inv!7846 _values!506) e!232302)))

(assert (=> start!37508 tp!30596))

(assert (=> start!37508 true))

(declare-fun tp_is_empty!9275 () Bool)

(assert (=> start!37508 tp_is_empty!9275))

(declare-fun array_inv!7847 (array!22441) Bool)

(assert (=> start!37508 (array_inv!7847 _keys!658)))

(declare-fun b!382255 () Bool)

(declare-fun e!232300 () Bool)

(assert (=> b!382255 (= e!232300 tp_is_empty!9275)))

(declare-fun b!382256 () Bool)

(declare-fun mapRes!15477 () Bool)

(assert (=> b!382256 (= e!232302 (and e!232300 mapRes!15477))))

(declare-fun condMapEmpty!15477 () Bool)

(declare-fun mapDefault!15477 () ValueCell!4294)

