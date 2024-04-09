; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37714 () Bool)

(assert start!37714)

(declare-fun b_free!8809 () Bool)

(declare-fun b_next!8809 () Bool)

(assert (=> start!37714 (= b_free!8809 (not b_next!8809))))

(declare-fun tp!31178 () Bool)

(declare-fun b_and!16069 () Bool)

(assert (=> start!37714 (= tp!31178 b_and!16069)))

(declare-fun b!386285 () Bool)

(declare-fun e!234344 () Bool)

(declare-fun tp_is_empty!9481 () Bool)

(assert (=> b!386285 (= e!234344 tp_is_empty!9481)))

(declare-fun b!386286 () Bool)

(declare-fun res!220593 () Bool)

(declare-fun e!234345 () Bool)

(assert (=> b!386286 (=> (not res!220593) (not e!234345))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22833 0))(
  ( (array!22834 (arr!10882 (Array (_ BitVec 32) (_ BitVec 64))) (size!11234 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22833)

(assert (=> b!386286 (= res!220593 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11234 _keys!658))))))

(declare-fun b!386287 () Bool)

(declare-fun e!234341 () Bool)

(assert (=> b!386287 (= e!234341 false)))

(declare-datatypes ((V!13747 0))(
  ( (V!13748 (val!4785 Int)) )
))
(declare-datatypes ((ValueCell!4397 0))(
  ( (ValueCellFull!4397 (v!6978 V!13747)) (EmptyCell!4397) )
))
(declare-datatypes ((array!22835 0))(
  ( (array!22836 (arr!10883 (Array (_ BitVec 32) ValueCell!4397)) (size!11235 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22835)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6376 0))(
  ( (tuple2!6377 (_1!3198 (_ BitVec 64)) (_2!3198 V!13747)) )
))
(declare-datatypes ((List!6256 0))(
  ( (Nil!6253) (Cons!6252 (h!7108 tuple2!6376) (t!11414 List!6256)) )
))
(declare-datatypes ((ListLongMap!5303 0))(
  ( (ListLongMap!5304 (toList!2667 List!6256)) )
))
(declare-fun lt!181780 () ListLongMap!5303)

(declare-fun zeroValue!472 () V!13747)

(declare-fun lt!181779 () array!22833)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!13747)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13747)

(declare-fun getCurrentListMapNoExtraKeys!901 (array!22833 array!22835 (_ BitVec 32) (_ BitVec 32) V!13747 V!13747 (_ BitVec 32) Int) ListLongMap!5303)

(assert (=> b!386287 (= lt!181780 (getCurrentListMapNoExtraKeys!901 lt!181779 (array!22836 (store (arr!10883 _values!506) i!548 (ValueCellFull!4397 v!373)) (size!11235 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181778 () ListLongMap!5303)

(assert (=> b!386287 (= lt!181778 (getCurrentListMapNoExtraKeys!901 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!386288 () Bool)

(declare-fun res!220597 () Bool)

(assert (=> b!386288 (=> (not res!220597) (not e!234345))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22833 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!386288 (= res!220597 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!386289 () Bool)

(assert (=> b!386289 (= e!234345 e!234341)))

(declare-fun res!220594 () Bool)

(assert (=> b!386289 (=> (not res!220594) (not e!234341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22833 (_ BitVec 32)) Bool)

(assert (=> b!386289 (= res!220594 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181779 mask!970))))

(assert (=> b!386289 (= lt!181779 (array!22834 (store (arr!10882 _keys!658) i!548 k!778) (size!11234 _keys!658)))))

(declare-fun res!220592 () Bool)

(assert (=> start!37714 (=> (not res!220592) (not e!234345))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37714 (= res!220592 (validMask!0 mask!970))))

(assert (=> start!37714 e!234345))

(declare-fun e!234340 () Bool)

(declare-fun array_inv!7980 (array!22835) Bool)

(assert (=> start!37714 (and (array_inv!7980 _values!506) e!234340)))

(assert (=> start!37714 tp!31178))

(assert (=> start!37714 true))

(assert (=> start!37714 tp_is_empty!9481))

(declare-fun array_inv!7981 (array!22833) Bool)

(assert (=> start!37714 (array_inv!7981 _keys!658)))

(declare-fun mapIsEmpty!15786 () Bool)

(declare-fun mapRes!15786 () Bool)

(assert (=> mapIsEmpty!15786 mapRes!15786))

(declare-fun mapNonEmpty!15786 () Bool)

(declare-fun tp!31179 () Bool)

(assert (=> mapNonEmpty!15786 (= mapRes!15786 (and tp!31179 e!234344))))

(declare-fun mapValue!15786 () ValueCell!4397)

(declare-fun mapKey!15786 () (_ BitVec 32))

(declare-fun mapRest!15786 () (Array (_ BitVec 32) ValueCell!4397))

(assert (=> mapNonEmpty!15786 (= (arr!10883 _values!506) (store mapRest!15786 mapKey!15786 mapValue!15786))))

(declare-fun b!386290 () Bool)

(declare-fun res!220601 () Bool)

(assert (=> b!386290 (=> (not res!220601) (not e!234345))))

(assert (=> b!386290 (= res!220601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!386291 () Bool)

(declare-fun res!220600 () Bool)

(assert (=> b!386291 (=> (not res!220600) (not e!234341))))

(declare-datatypes ((List!6257 0))(
  ( (Nil!6254) (Cons!6253 (h!7109 (_ BitVec 64)) (t!11415 List!6257)) )
))
(declare-fun arrayNoDuplicates!0 (array!22833 (_ BitVec 32) List!6257) Bool)

(assert (=> b!386291 (= res!220600 (arrayNoDuplicates!0 lt!181779 #b00000000000000000000000000000000 Nil!6254))))

(declare-fun b!386292 () Bool)

(declare-fun res!220595 () Bool)

(assert (=> b!386292 (=> (not res!220595) (not e!234345))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!386292 (= res!220595 (validKeyInArray!0 k!778))))

(declare-fun b!386293 () Bool)

(declare-fun res!220598 () Bool)

(assert (=> b!386293 (=> (not res!220598) (not e!234345))))

(assert (=> b!386293 (= res!220598 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6254))))

(declare-fun b!386294 () Bool)

(declare-fun e!234343 () Bool)

(assert (=> b!386294 (= e!234340 (and e!234343 mapRes!15786))))

(declare-fun condMapEmpty!15786 () Bool)

(declare-fun mapDefault!15786 () ValueCell!4397)

