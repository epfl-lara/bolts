; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37642 () Bool)

(assert start!37642)

(declare-fun b_free!8761 () Bool)

(declare-fun b_next!8761 () Bool)

(assert (=> start!37642 (= b_free!8761 (not b_next!8761))))

(declare-fun tp!30999 () Bool)

(declare-fun b_and!16021 () Bool)

(assert (=> start!37642 (= tp!30999 b_and!16021)))

(declare-fun b!385074 () Bool)

(declare-fun e!233720 () Bool)

(declare-datatypes ((array!22703 0))(
  ( (array!22704 (arr!10817 (Array (_ BitVec 32) (_ BitVec 64))) (size!11169 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22703)

(assert (=> b!385074 (= e!233720 (bvsle #b00000000000000000000000000000000 (size!11169 _keys!658)))))

(declare-fun b!385075 () Bool)

(declare-fun res!219709 () Bool)

(declare-fun e!233719 () Bool)

(assert (=> b!385075 (=> (not res!219709) (not e!233719))))

(declare-datatypes ((List!6217 0))(
  ( (Nil!6214) (Cons!6213 (h!7069 (_ BitVec 64)) (t!11375 List!6217)) )
))
(declare-fun arrayNoDuplicates!0 (array!22703 (_ BitVec 32) List!6217) Bool)

(assert (=> b!385075 (= res!219709 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6214))))

(declare-fun b!385076 () Bool)

(declare-fun res!219716 () Bool)

(assert (=> b!385076 (=> (not res!219716) (not e!233719))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13651 0))(
  ( (V!13652 (val!4749 Int)) )
))
(declare-datatypes ((ValueCell!4361 0))(
  ( (ValueCellFull!4361 (v!6942 V!13651)) (EmptyCell!4361) )
))
(declare-datatypes ((array!22705 0))(
  ( (array!22706 (arr!10818 (Array (_ BitVec 32) ValueCell!4361)) (size!11170 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22705)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!385076 (= res!219716 (and (= (size!11170 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11169 _keys!658) (size!11170 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!385077 () Bool)

(declare-fun res!219708 () Bool)

(assert (=> b!385077 (=> (not res!219708) (not e!233719))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22703 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!385077 (= res!219708 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15678 () Bool)

(declare-fun mapRes!15678 () Bool)

(assert (=> mapIsEmpty!15678 mapRes!15678))

(declare-fun b!385078 () Bool)

(declare-fun e!233715 () Bool)

(assert (=> b!385078 (= e!233719 e!233715)))

(declare-fun res!219706 () Bool)

(assert (=> b!385078 (=> (not res!219706) (not e!233715))))

(declare-fun lt!181499 () array!22703)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22703 (_ BitVec 32)) Bool)

(assert (=> b!385078 (= res!219706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181499 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!385078 (= lt!181499 (array!22704 (store (arr!10817 _keys!658) i!548 k!778) (size!11169 _keys!658)))))

(declare-fun b!385079 () Bool)

(declare-fun e!233716 () Bool)

(declare-fun e!233717 () Bool)

(assert (=> b!385079 (= e!233716 (and e!233717 mapRes!15678))))

(declare-fun condMapEmpty!15678 () Bool)

(declare-fun mapDefault!15678 () ValueCell!4361)

