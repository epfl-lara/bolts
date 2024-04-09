; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36784 () Bool)

(assert start!36784)

(declare-fun b!366987 () Bool)

(declare-fun e!224630 () Bool)

(declare-fun e!224631 () Bool)

(assert (=> b!366987 (= e!224630 e!224631)))

(declare-fun res!205487 () Bool)

(assert (=> b!366987 (=> (not res!205487) (not e!224631))))

(declare-datatypes ((array!21027 0))(
  ( (array!21028 (arr!9979 (Array (_ BitVec 32) (_ BitVec 64))) (size!10331 (_ BitVec 32))) )
))
(declare-fun lt!169303 () array!21027)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21027 (_ BitVec 32)) Bool)

(assert (=> b!366987 (= res!205487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169303 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!21027)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!366987 (= lt!169303 (array!21028 (store (arr!9979 _keys!658) i!548 k!778) (size!10331 _keys!658)))))

(declare-fun b!366988 () Bool)

(declare-fun res!205484 () Bool)

(assert (=> b!366988 (=> (not res!205484) (not e!224630))))

(assert (=> b!366988 (= res!205484 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!366989 () Bool)

(assert (=> b!366989 (= e!224631 false)))

(declare-fun lt!169302 () Bool)

(declare-datatypes ((List!5581 0))(
  ( (Nil!5578) (Cons!5577 (h!6433 (_ BitVec 64)) (t!10739 List!5581)) )
))
(declare-fun arrayNoDuplicates!0 (array!21027 (_ BitVec 32) List!5581) Bool)

(assert (=> b!366989 (= lt!169302 (arrayNoDuplicates!0 lt!169303 #b00000000000000000000000000000000 Nil!5578))))

(declare-fun b!366990 () Bool)

(declare-fun res!205479 () Bool)

(assert (=> b!366990 (=> (not res!205479) (not e!224630))))

(assert (=> b!366990 (= res!205479 (or (= (select (arr!9979 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9979 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14391 () Bool)

(declare-fun mapRes!14391 () Bool)

(declare-fun tp!28467 () Bool)

(declare-fun e!224629 () Bool)

(assert (=> mapNonEmpty!14391 (= mapRes!14391 (and tp!28467 e!224629))))

(declare-datatypes ((V!12507 0))(
  ( (V!12508 (val!4320 Int)) )
))
(declare-datatypes ((ValueCell!3932 0))(
  ( (ValueCellFull!3932 (v!6513 V!12507)) (EmptyCell!3932) )
))
(declare-datatypes ((array!21029 0))(
  ( (array!21030 (arr!9980 (Array (_ BitVec 32) ValueCell!3932)) (size!10332 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21029)

(declare-fun mapValue!14391 () ValueCell!3932)

(declare-fun mapKey!14391 () (_ BitVec 32))

(declare-fun mapRest!14391 () (Array (_ BitVec 32) ValueCell!3932))

(assert (=> mapNonEmpty!14391 (= (arr!9980 _values!506) (store mapRest!14391 mapKey!14391 mapValue!14391))))

(declare-fun b!366991 () Bool)

(declare-fun res!205480 () Bool)

(assert (=> b!366991 (=> (not res!205480) (not e!224630))))

(declare-fun arrayContainsKey!0 (array!21027 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!366991 (= res!205480 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14391 () Bool)

(assert (=> mapIsEmpty!14391 mapRes!14391))

(declare-fun b!366992 () Bool)

(declare-fun tp_is_empty!8551 () Bool)

(assert (=> b!366992 (= e!224629 tp_is_empty!8551)))

(declare-fun b!366993 () Bool)

(declare-fun e!224634 () Bool)

(declare-fun e!224633 () Bool)

(assert (=> b!366993 (= e!224634 (and e!224633 mapRes!14391))))

(declare-fun condMapEmpty!14391 () Bool)

(declare-fun mapDefault!14391 () ValueCell!3932)

