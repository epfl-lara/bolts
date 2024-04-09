; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36776 () Bool)

(assert start!36776)

(declare-fun b!366843 () Bool)

(declare-fun e!224560 () Bool)

(declare-fun tp_is_empty!8543 () Bool)

(assert (=> b!366843 (= e!224560 tp_is_empty!8543)))

(declare-fun b!366844 () Bool)

(declare-fun res!205379 () Bool)

(declare-fun e!224561 () Bool)

(assert (=> b!366844 (=> (not res!205379) (not e!224561))))

(declare-datatypes ((array!21011 0))(
  ( (array!21012 (arr!9971 (Array (_ BitVec 32) (_ BitVec 64))) (size!10323 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21011)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21011 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!366844 (= res!205379 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!366845 () Bool)

(declare-fun res!205371 () Bool)

(assert (=> b!366845 (=> (not res!205371) (not e!224561))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!366845 (= res!205371 (validKeyInArray!0 k!778))))

(declare-fun b!366846 () Bool)

(declare-fun res!205374 () Bool)

(assert (=> b!366846 (=> (not res!205374) (not e!224561))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!366846 (= res!205374 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10323 _keys!658))))))

(declare-fun mapIsEmpty!14379 () Bool)

(declare-fun mapRes!14379 () Bool)

(assert (=> mapIsEmpty!14379 mapRes!14379))

(declare-fun b!366847 () Bool)

(declare-fun e!224558 () Bool)

(assert (=> b!366847 (= e!224558 false)))

(declare-fun lt!169279 () Bool)

(declare-fun lt!169278 () array!21011)

(declare-datatypes ((List!5577 0))(
  ( (Nil!5574) (Cons!5573 (h!6429 (_ BitVec 64)) (t!10735 List!5577)) )
))
(declare-fun arrayNoDuplicates!0 (array!21011 (_ BitVec 32) List!5577) Bool)

(assert (=> b!366847 (= lt!169279 (arrayNoDuplicates!0 lt!169278 #b00000000000000000000000000000000 Nil!5574))))

(declare-fun mapNonEmpty!14379 () Bool)

(declare-fun tp!28455 () Bool)

(declare-fun e!224559 () Bool)

(assert (=> mapNonEmpty!14379 (= mapRes!14379 (and tp!28455 e!224559))))

(declare-datatypes ((V!12495 0))(
  ( (V!12496 (val!4316 Int)) )
))
(declare-datatypes ((ValueCell!3928 0))(
  ( (ValueCellFull!3928 (v!6509 V!12495)) (EmptyCell!3928) )
))
(declare-datatypes ((array!21013 0))(
  ( (array!21014 (arr!9972 (Array (_ BitVec 32) ValueCell!3928)) (size!10324 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21013)

(declare-fun mapKey!14379 () (_ BitVec 32))

(declare-fun mapValue!14379 () ValueCell!3928)

(declare-fun mapRest!14379 () (Array (_ BitVec 32) ValueCell!3928))

(assert (=> mapNonEmpty!14379 (= (arr!9972 _values!506) (store mapRest!14379 mapKey!14379 mapValue!14379))))

(declare-fun b!366848 () Bool)

(declare-fun res!205378 () Bool)

(assert (=> b!366848 (=> (not res!205378) (not e!224561))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21011 (_ BitVec 32)) Bool)

(assert (=> b!366848 (= res!205378 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!366849 () Bool)

(assert (=> b!366849 (= e!224561 e!224558)))

(declare-fun res!205377 () Bool)

(assert (=> b!366849 (=> (not res!205377) (not e!224558))))

(assert (=> b!366849 (= res!205377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169278 mask!970))))

(assert (=> b!366849 (= lt!169278 (array!21012 (store (arr!9971 _keys!658) i!548 k!778) (size!10323 _keys!658)))))

(declare-fun b!366850 () Bool)

(assert (=> b!366850 (= e!224559 tp_is_empty!8543)))

(declare-fun b!366851 () Bool)

(declare-fun e!224562 () Bool)

(assert (=> b!366851 (= e!224562 (and e!224560 mapRes!14379))))

(declare-fun condMapEmpty!14379 () Bool)

(declare-fun mapDefault!14379 () ValueCell!3928)

