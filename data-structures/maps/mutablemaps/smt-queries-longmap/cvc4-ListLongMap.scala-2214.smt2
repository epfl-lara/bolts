; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36740 () Bool)

(assert start!36740)

(declare-fun b!366457 () Bool)

(declare-fun e!224345 () Bool)

(declare-fun e!224348 () Bool)

(assert (=> b!366457 (= e!224345 e!224348)))

(declare-fun res!205088 () Bool)

(assert (=> b!366457 (=> res!205088 e!224348)))

(declare-datatypes ((List!5570 0))(
  ( (Nil!5567) (Cons!5566 (h!6422 (_ BitVec 64)) (t!10728 List!5570)) )
))
(declare-fun contains!2440 (List!5570 (_ BitVec 64)) Bool)

(assert (=> b!366457 (= res!205088 (contains!2440 Nil!5567 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!366458 () Bool)

(declare-fun res!205093 () Bool)

(assert (=> b!366458 (=> (not res!205093) (not e!224345))))

(declare-datatypes ((array!20977 0))(
  ( (array!20978 (arr!9955 (Array (_ BitVec 32) (_ BitVec 64))) (size!10307 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20977)

(declare-fun arrayNoDuplicates!0 (array!20977 (_ BitVec 32) List!5570) Bool)

(assert (=> b!366458 (= res!205093 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5567))))

(declare-fun b!366459 () Bool)

(declare-fun res!205089 () Bool)

(assert (=> b!366459 (=> (not res!205089) (not e!224345))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12471 0))(
  ( (V!12472 (val!4307 Int)) )
))
(declare-datatypes ((ValueCell!3919 0))(
  ( (ValueCellFull!3919 (v!6499 V!12471)) (EmptyCell!3919) )
))
(declare-datatypes ((array!20979 0))(
  ( (array!20980 (arr!9956 (Array (_ BitVec 32) ValueCell!3919)) (size!10308 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20979)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!366459 (= res!205089 (and (= (size!10308 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10307 _keys!658) (size!10308 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!366460 () Bool)

(declare-fun e!224349 () Bool)

(declare-fun tp_is_empty!8525 () Bool)

(assert (=> b!366460 (= e!224349 tp_is_empty!8525)))

(declare-fun b!366461 () Bool)

(declare-fun res!205095 () Bool)

(assert (=> b!366461 (=> (not res!205095) (not e!224345))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!366461 (= res!205095 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10307 _keys!658))))))

(declare-fun b!366462 () Bool)

(declare-fun res!205092 () Bool)

(assert (=> b!366462 (=> (not res!205092) (not e!224345))))

(assert (=> b!366462 (= res!205092 (and (bvsle #b00000000000000000000000000000000 (size!10307 _keys!658)) (bvslt (size!10307 _keys!658) #b01111111111111111111111111111111)))))

(declare-fun res!205099 () Bool)

(assert (=> start!36740 (=> (not res!205099) (not e!224345))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36740 (= res!205099 (validMask!0 mask!970))))

(assert (=> start!36740 e!224345))

(assert (=> start!36740 true))

(declare-fun e!224350 () Bool)

(declare-fun array_inv!7364 (array!20979) Bool)

(assert (=> start!36740 (and (array_inv!7364 _values!506) e!224350)))

(declare-fun array_inv!7365 (array!20977) Bool)

(assert (=> start!36740 (array_inv!7365 _keys!658)))

(declare-fun b!366463 () Bool)

(declare-fun res!205097 () Bool)

(assert (=> b!366463 (=> (not res!205097) (not e!224345))))

(assert (=> b!366463 (= res!205097 (or (= (select (arr!9955 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9955 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!366464 () Bool)

(declare-fun res!205098 () Bool)

(assert (=> b!366464 (=> (not res!205098) (not e!224345))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20977 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!366464 (= res!205098 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!366465 () Bool)

(declare-fun mapRes!14349 () Bool)

(assert (=> b!366465 (= e!224350 (and e!224349 mapRes!14349))))

(declare-fun condMapEmpty!14349 () Bool)

(declare-fun mapDefault!14349 () ValueCell!3919)

