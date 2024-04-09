; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36856 () Bool)

(assert start!36856)

(declare-fun b_free!7975 () Bool)

(declare-fun b_next!7975 () Bool)

(assert (=> start!36856 (= b_free!7975 (not b_next!7975))))

(declare-fun tp!28640 () Bool)

(declare-fun b_and!15235 () Bool)

(assert (=> start!36856 (= tp!28640 b_and!15235)))

(declare-fun b!368357 () Bool)

(declare-fun e!225279 () Bool)

(declare-fun tp_is_empty!8623 () Bool)

(assert (=> b!368357 (= e!225279 tp_is_empty!8623)))

(declare-fun mapIsEmpty!14499 () Bool)

(declare-fun mapRes!14499 () Bool)

(assert (=> mapIsEmpty!14499 mapRes!14499))

(declare-fun b!368358 () Bool)

(declare-fun res!206527 () Bool)

(declare-fun e!225277 () Bool)

(assert (=> b!368358 (=> (not res!206527) (not e!225277))))

(declare-datatypes ((array!21171 0))(
  ( (array!21172 (arr!10051 (Array (_ BitVec 32) (_ BitVec 64))) (size!10403 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21171)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!368358 (= res!206527 (or (= (select (arr!10051 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10051 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!368359 () Bool)

(declare-fun e!225281 () Bool)

(assert (=> b!368359 (= e!225277 e!225281)))

(declare-fun res!206531 () Bool)

(assert (=> b!368359 (=> (not res!206531) (not e!225281))))

(declare-fun lt!169510 () array!21171)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21171 (_ BitVec 32)) Bool)

(assert (=> b!368359 (= res!206531 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169510 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!368359 (= lt!169510 (array!21172 (store (arr!10051 _keys!658) i!548 k!778) (size!10403 _keys!658)))))

(declare-fun b!368360 () Bool)

(declare-fun res!206533 () Bool)

(assert (=> b!368360 (=> (not res!206533) (not e!225277))))

(assert (=> b!368360 (= res!206533 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10403 _keys!658))))))

(declare-fun b!368361 () Bool)

(declare-fun res!206530 () Bool)

(assert (=> b!368361 (=> (not res!206530) (not e!225277))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12603 0))(
  ( (V!12604 (val!4356 Int)) )
))
(declare-datatypes ((ValueCell!3968 0))(
  ( (ValueCellFull!3968 (v!6549 V!12603)) (EmptyCell!3968) )
))
(declare-datatypes ((array!21173 0))(
  ( (array!21174 (arr!10052 (Array (_ BitVec 32) ValueCell!3968)) (size!10404 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21173)

(assert (=> b!368361 (= res!206530 (and (= (size!10404 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10403 _keys!658) (size!10404 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!368362 () Bool)

(assert (=> b!368362 (= e!225281 false)))

(declare-datatypes ((tuple2!5764 0))(
  ( (tuple2!5765 (_1!2892 (_ BitVec 64)) (_2!2892 V!12603)) )
))
(declare-datatypes ((List!5625 0))(
  ( (Nil!5622) (Cons!5621 (h!6477 tuple2!5764) (t!10783 List!5625)) )
))
(declare-datatypes ((ListLongMap!4691 0))(
  ( (ListLongMap!4692 (toList!2361 List!5625)) )
))
(declare-fun lt!169509 () ListLongMap!4691)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12603)

(declare-fun minValue!472 () V!12603)

(declare-fun getCurrentListMapNoExtraKeys!629 (array!21171 array!21173 (_ BitVec 32) (_ BitVec 32) V!12603 V!12603 (_ BitVec 32) Int) ListLongMap!4691)

(assert (=> b!368362 (= lt!169509 (getCurrentListMapNoExtraKeys!629 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!368363 () Bool)

(declare-fun e!225282 () Bool)

(assert (=> b!368363 (= e!225282 (and e!225279 mapRes!14499))))

(declare-fun condMapEmpty!14499 () Bool)

(declare-fun mapDefault!14499 () ValueCell!3968)

