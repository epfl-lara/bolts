; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36838 () Bool)

(assert start!36838)

(declare-fun b_free!7957 () Bool)

(declare-fun b_next!7957 () Bool)

(assert (=> start!36838 (= b_free!7957 (not b_next!7957))))

(declare-fun tp!28586 () Bool)

(declare-fun b_and!15217 () Bool)

(assert (=> start!36838 (= tp!28586 b_and!15217)))

(declare-fun b!368006 () Bool)

(declare-fun res!206258 () Bool)

(declare-fun e!225120 () Bool)

(assert (=> b!368006 (=> (not res!206258) (not e!225120))))

(declare-datatypes ((array!21135 0))(
  ( (array!21136 (arr!10033 (Array (_ BitVec 32) (_ BitVec 64))) (size!10385 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21135)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!368006 (= res!206258 (or (= (select (arr!10033 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10033 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!368007 () Bool)

(declare-fun res!206256 () Bool)

(assert (=> b!368007 (=> (not res!206256) (not e!225120))))

(declare-datatypes ((V!12579 0))(
  ( (V!12580 (val!4347 Int)) )
))
(declare-datatypes ((ValueCell!3959 0))(
  ( (ValueCellFull!3959 (v!6540 V!12579)) (EmptyCell!3959) )
))
(declare-datatypes ((array!21137 0))(
  ( (array!21138 (arr!10034 (Array (_ BitVec 32) ValueCell!3959)) (size!10386 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21137)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!368007 (= res!206256 (and (= (size!10386 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10385 _keys!658) (size!10386 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!368009 () Bool)

(declare-fun res!206263 () Bool)

(assert (=> b!368009 (=> (not res!206263) (not e!225120))))

(declare-datatypes ((List!5612 0))(
  ( (Nil!5609) (Cons!5608 (h!6464 (_ BitVec 64)) (t!10770 List!5612)) )
))
(declare-fun arrayNoDuplicates!0 (array!21135 (_ BitVec 32) List!5612) Bool)

(assert (=> b!368009 (= res!206263 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5609))))

(declare-fun mapIsEmpty!14472 () Bool)

(declare-fun mapRes!14472 () Bool)

(assert (=> mapIsEmpty!14472 mapRes!14472))

(declare-fun b!368010 () Bool)

(declare-fun res!206260 () Bool)

(assert (=> b!368010 (=> (not res!206260) (not e!225120))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21135 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!368010 (= res!206260 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!368011 () Bool)

(declare-fun e!225115 () Bool)

(declare-fun tp_is_empty!8605 () Bool)

(assert (=> b!368011 (= e!225115 tp_is_empty!8605)))

(declare-fun b!368012 () Bool)

(declare-fun e!225117 () Bool)

(assert (=> b!368012 (= e!225117 (and e!225115 mapRes!14472))))

(declare-fun condMapEmpty!14472 () Bool)

(declare-fun mapDefault!14472 () ValueCell!3959)

