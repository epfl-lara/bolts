; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36736 () Bool)

(assert start!36736)

(declare-fun b!366367 () Bool)

(declare-fun res!205016 () Bool)

(declare-fun e!224311 () Bool)

(assert (=> b!366367 (=> (not res!205016) (not e!224311))))

(declare-datatypes ((array!20969 0))(
  ( (array!20970 (arr!9951 (Array (_ BitVec 32) (_ BitVec 64))) (size!10303 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20969)

(assert (=> b!366367 (= res!205016 (and (bvsle #b00000000000000000000000000000000 (size!10303 _keys!658)) (bvslt (size!10303 _keys!658) #b01111111111111111111111111111111)))))

(declare-fun b!366368 () Bool)

(declare-fun e!224310 () Bool)

(assert (=> b!366368 (= e!224311 e!224310)))

(declare-fun res!205018 () Bool)

(assert (=> b!366368 (=> res!205018 e!224310)))

(declare-datatypes ((List!5568 0))(
  ( (Nil!5565) (Cons!5564 (h!6420 (_ BitVec 64)) (t!10726 List!5568)) )
))
(declare-fun contains!2438 (List!5568 (_ BitVec 64)) Bool)

(assert (=> b!366368 (= res!205018 (contains!2438 Nil!5565 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!14343 () Bool)

(declare-fun mapRes!14343 () Bool)

(declare-fun tp!28419 () Bool)

(declare-fun e!224314 () Bool)

(assert (=> mapNonEmpty!14343 (= mapRes!14343 (and tp!28419 e!224314))))

(declare-datatypes ((V!12467 0))(
  ( (V!12468 (val!4305 Int)) )
))
(declare-datatypes ((ValueCell!3917 0))(
  ( (ValueCellFull!3917 (v!6497 V!12467)) (EmptyCell!3917) )
))
(declare-fun mapRest!14343 () (Array (_ BitVec 32) ValueCell!3917))

(declare-datatypes ((array!20971 0))(
  ( (array!20972 (arr!9952 (Array (_ BitVec 32) ValueCell!3917)) (size!10304 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20971)

(declare-fun mapKey!14343 () (_ BitVec 32))

(declare-fun mapValue!14343 () ValueCell!3917)

(assert (=> mapNonEmpty!14343 (= (arr!9952 _values!506) (store mapRest!14343 mapKey!14343 mapValue!14343))))

(declare-fun b!366369 () Bool)

(declare-fun res!205022 () Bool)

(assert (=> b!366369 (=> (not res!205022) (not e!224311))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20969 (_ BitVec 32)) Bool)

(assert (=> b!366369 (= res!205022 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!366370 () Bool)

(declare-fun res!205027 () Bool)

(assert (=> b!366370 (=> (not res!205027) (not e!224311))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!366370 (= res!205027 (validKeyInArray!0 k!778))))

(declare-fun b!366371 () Bool)

(declare-fun res!205020 () Bool)

(assert (=> b!366371 (=> (not res!205020) (not e!224311))))

(declare-fun arrayNoDuplicates!0 (array!20969 (_ BitVec 32) List!5568) Bool)

(assert (=> b!366371 (= res!205020 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5565))))

(declare-fun b!366372 () Bool)

(declare-fun res!205026 () Bool)

(assert (=> b!366372 (=> (not res!205026) (not e!224311))))

(declare-fun arrayContainsKey!0 (array!20969 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!366372 (= res!205026 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!366373 () Bool)

(declare-fun res!205021 () Bool)

(assert (=> b!366373 (=> (not res!205021) (not e!224311))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!366373 (= res!205021 (and (= (size!10304 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10303 _keys!658) (size!10304 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!205025 () Bool)

(assert (=> start!36736 (=> (not res!205025) (not e!224311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36736 (= res!205025 (validMask!0 mask!970))))

(assert (=> start!36736 e!224311))

(assert (=> start!36736 true))

(declare-fun e!224313 () Bool)

(declare-fun array_inv!7360 (array!20971) Bool)

(assert (=> start!36736 (and (array_inv!7360 _values!506) e!224313)))

(declare-fun array_inv!7361 (array!20969) Bool)

(assert (=> start!36736 (array_inv!7361 _keys!658)))

(declare-fun b!366374 () Bool)

(declare-fun e!224309 () Bool)

(declare-fun tp_is_empty!8521 () Bool)

(assert (=> b!366374 (= e!224309 tp_is_empty!8521)))

(declare-fun mapIsEmpty!14343 () Bool)

(assert (=> mapIsEmpty!14343 mapRes!14343))

(declare-fun b!366375 () Bool)

(declare-fun res!205017 () Bool)

(assert (=> b!366375 (=> (not res!205017) (not e!224311))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!366375 (= res!205017 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10303 _keys!658))))))

(declare-fun b!366376 () Bool)

(assert (=> b!366376 (= e!224314 tp_is_empty!8521)))

(declare-fun b!366377 () Bool)

(declare-fun res!205019 () Bool)

(assert (=> b!366377 (=> (not res!205019) (not e!224311))))

(assert (=> b!366377 (= res!205019 (or (= (select (arr!9951 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9951 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!366378 () Bool)

(declare-fun res!205023 () Bool)

(assert (=> b!366378 (=> (not res!205023) (not e!224311))))

(assert (=> b!366378 (= res!205023 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!20970 (store (arr!9951 _keys!658) i!548 k!778) (size!10303 _keys!658)) mask!970))))

(declare-fun b!366379 () Bool)

(declare-fun res!205024 () Bool)

(assert (=> b!366379 (=> (not res!205024) (not e!224311))))

(declare-fun noDuplicate!190 (List!5568) Bool)

(assert (=> b!366379 (= res!205024 (noDuplicate!190 Nil!5565))))

(declare-fun b!366380 () Bool)

(assert (=> b!366380 (= e!224313 (and e!224309 mapRes!14343))))

(declare-fun condMapEmpty!14343 () Bool)

(declare-fun mapDefault!14343 () ValueCell!3917)

