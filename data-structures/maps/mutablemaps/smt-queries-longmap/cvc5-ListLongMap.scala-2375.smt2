; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37720 () Bool)

(assert start!37720)

(declare-fun b_free!8815 () Bool)

(declare-fun b_next!8815 () Bool)

(assert (=> start!37720 (= b_free!8815 (not b_next!8815))))

(declare-fun tp!31196 () Bool)

(declare-fun b_and!16075 () Bool)

(assert (=> start!37720 (= tp!31196 b_and!16075)))

(declare-fun b!386402 () Bool)

(declare-fun res!220682 () Bool)

(declare-fun e!234394 () Bool)

(assert (=> b!386402 (=> (not res!220682) (not e!234394))))

(declare-datatypes ((array!22845 0))(
  ( (array!22846 (arr!10888 (Array (_ BitVec 32) (_ BitVec 64))) (size!11240 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22845)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22845 (_ BitVec 32)) Bool)

(assert (=> b!386402 (= res!220682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!386403 () Bool)

(declare-fun e!234396 () Bool)

(declare-fun e!234397 () Bool)

(declare-fun mapRes!15795 () Bool)

(assert (=> b!386403 (= e!234396 (and e!234397 mapRes!15795))))

(declare-fun condMapEmpty!15795 () Bool)

(declare-datatypes ((V!13755 0))(
  ( (V!13756 (val!4788 Int)) )
))
(declare-datatypes ((ValueCell!4400 0))(
  ( (ValueCellFull!4400 (v!6981 V!13755)) (EmptyCell!4400) )
))
(declare-datatypes ((array!22847 0))(
  ( (array!22848 (arr!10889 (Array (_ BitVec 32) ValueCell!4400)) (size!11241 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22847)

(declare-fun mapDefault!15795 () ValueCell!4400)

