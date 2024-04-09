; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36772 () Bool)

(assert start!36772)

(declare-fun res!205321 () Bool)

(declare-fun e!224522 () Bool)

(assert (=> start!36772 (=> (not res!205321) (not e!224522))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36772 (= res!205321 (validMask!0 mask!970))))

(assert (=> start!36772 e!224522))

(assert (=> start!36772 true))

(declare-datatypes ((V!12491 0))(
  ( (V!12492 (val!4314 Int)) )
))
(declare-datatypes ((ValueCell!3926 0))(
  ( (ValueCellFull!3926 (v!6507 V!12491)) (EmptyCell!3926) )
))
(declare-datatypes ((array!21003 0))(
  ( (array!21004 (arr!9967 (Array (_ BitVec 32) ValueCell!3926)) (size!10319 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21003)

(declare-fun e!224526 () Bool)

(declare-fun array_inv!7372 (array!21003) Bool)

(assert (=> start!36772 (and (array_inv!7372 _values!506) e!224526)))

(declare-datatypes ((array!21005 0))(
  ( (array!21006 (arr!9968 (Array (_ BitVec 32) (_ BitVec 64))) (size!10320 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21005)

(declare-fun array_inv!7373 (array!21005) Bool)

(assert (=> start!36772 (array_inv!7373 _keys!658)))

(declare-fun b!366771 () Bool)

(declare-fun res!205317 () Bool)

(assert (=> b!366771 (=> (not res!205317) (not e!224522))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!366771 (= res!205317 (validKeyInArray!0 k!778))))

(declare-fun b!366772 () Bool)

(declare-fun e!224525 () Bool)

(assert (=> b!366772 (= e!224522 e!224525)))

(declare-fun res!205319 () Bool)

(assert (=> b!366772 (=> (not res!205319) (not e!224525))))

(declare-fun lt!169267 () array!21005)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21005 (_ BitVec 32)) Bool)

(assert (=> b!366772 (= res!205319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169267 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!366772 (= lt!169267 (array!21006 (store (arr!9968 _keys!658) i!548 k!778) (size!10320 _keys!658)))))

(declare-fun b!366773 () Bool)

(assert (=> b!366773 (= e!224525 false)))

(declare-fun lt!169266 () Bool)

(declare-datatypes ((List!5575 0))(
  ( (Nil!5572) (Cons!5571 (h!6427 (_ BitVec 64)) (t!10733 List!5575)) )
))
(declare-fun arrayNoDuplicates!0 (array!21005 (_ BitVec 32) List!5575) Bool)

(assert (=> b!366773 (= lt!169266 (arrayNoDuplicates!0 lt!169267 #b00000000000000000000000000000000 Nil!5572))))

(declare-fun b!366774 () Bool)

(declare-fun res!205324 () Bool)

(assert (=> b!366774 (=> (not res!205324) (not e!224522))))

(declare-fun arrayContainsKey!0 (array!21005 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!366774 (= res!205324 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!366775 () Bool)

(declare-fun res!205325 () Bool)

(assert (=> b!366775 (=> (not res!205325) (not e!224522))))

(assert (=> b!366775 (= res!205325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!366776 () Bool)

(declare-fun res!205323 () Bool)

(assert (=> b!366776 (=> (not res!205323) (not e!224522))))

(assert (=> b!366776 (= res!205323 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10320 _keys!658))))))

(declare-fun b!366777 () Bool)

(declare-fun res!205320 () Bool)

(assert (=> b!366777 (=> (not res!205320) (not e!224522))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!366777 (= res!205320 (and (= (size!10319 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10320 _keys!658) (size!10319 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!14373 () Bool)

(declare-fun mapRes!14373 () Bool)

(assert (=> mapIsEmpty!14373 mapRes!14373))

(declare-fun b!366778 () Bool)

(declare-fun res!205322 () Bool)

(assert (=> b!366778 (=> (not res!205322) (not e!224522))))

(assert (=> b!366778 (= res!205322 (or (= (select (arr!9968 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9968 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!366779 () Bool)

(declare-fun res!205318 () Bool)

(assert (=> b!366779 (=> (not res!205318) (not e!224522))))

(assert (=> b!366779 (= res!205318 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5572))))

(declare-fun b!366780 () Bool)

(declare-fun e!224523 () Bool)

(declare-fun tp_is_empty!8539 () Bool)

(assert (=> b!366780 (= e!224523 tp_is_empty!8539)))

(declare-fun b!366781 () Bool)

(declare-fun e!224524 () Bool)

(assert (=> b!366781 (= e!224524 tp_is_empty!8539)))

(declare-fun b!366782 () Bool)

(assert (=> b!366782 (= e!224526 (and e!224524 mapRes!14373))))

(declare-fun condMapEmpty!14373 () Bool)

(declare-fun mapDefault!14373 () ValueCell!3926)

