; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37866 () Bool)

(assert start!37866)

(declare-fun b_free!8917 () Bool)

(declare-fun b_next!8917 () Bool)

(assert (=> start!37866 (= b_free!8917 (not b_next!8917))))

(declare-fun tp!31509 () Bool)

(declare-fun b_and!16201 () Bool)

(assert (=> start!37866 (= tp!31509 b_and!16201)))

(declare-fun b!388823 () Bool)

(declare-fun res!222423 () Bool)

(declare-fun e!235603 () Bool)

(assert (=> b!388823 (=> (not res!222423) (not e!235603))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!388823 (= res!222423 (validKeyInArray!0 k!778))))

(declare-fun b!388824 () Bool)

(declare-fun res!222426 () Bool)

(assert (=> b!388824 (=> (not res!222426) (not e!235603))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13891 0))(
  ( (V!13892 (val!4839 Int)) )
))
(declare-datatypes ((ValueCell!4451 0))(
  ( (ValueCellFull!4451 (v!7040 V!13891)) (EmptyCell!4451) )
))
(declare-datatypes ((array!23049 0))(
  ( (array!23050 (arr!10988 (Array (_ BitVec 32) ValueCell!4451)) (size!11340 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23049)

(declare-datatypes ((array!23051 0))(
  ( (array!23052 (arr!10989 (Array (_ BitVec 32) (_ BitVec 64))) (size!11341 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23051)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!388824 (= res!222426 (and (= (size!11340 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11341 _keys!658) (size!11340 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!15954 () Bool)

(declare-fun mapRes!15954 () Bool)

(assert (=> mapIsEmpty!15954 mapRes!15954))

(declare-fun b!388825 () Bool)

(declare-fun e!235598 () Bool)

(declare-fun tp_is_empty!9589 () Bool)

(assert (=> b!388825 (= e!235598 tp_is_empty!9589)))

(declare-datatypes ((tuple2!6450 0))(
  ( (tuple2!6451 (_1!3235 (_ BitVec 64)) (_2!3235 V!13891)) )
))
(declare-fun lt!182754 () tuple2!6450)

(declare-datatypes ((List!6334 0))(
  ( (Nil!6331) (Cons!6330 (h!7186 tuple2!6450) (t!11496 List!6334)) )
))
(declare-datatypes ((ListLongMap!5377 0))(
  ( (ListLongMap!5378 (toList!2704 List!6334)) )
))
(declare-fun lt!182757 () ListLongMap!5377)

(declare-fun lt!182758 () ListLongMap!5377)

(declare-fun b!388826 () Bool)

(declare-fun lt!182751 () tuple2!6450)

(declare-fun e!235599 () Bool)

(declare-fun +!1002 (ListLongMap!5377 tuple2!6450) ListLongMap!5377)

(assert (=> b!388826 (= e!235599 (= lt!182757 (+!1002 (+!1002 lt!182758 lt!182751) lt!182754)))))

(declare-fun b!388827 () Bool)

(declare-fun res!222428 () Bool)

(assert (=> b!388827 (=> (not res!222428) (not e!235603))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!388827 (= res!222428 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11341 _keys!658))))))

(declare-fun b!388828 () Bool)

(declare-fun res!222429 () Bool)

(assert (=> b!388828 (=> (not res!222429) (not e!235603))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23051 (_ BitVec 32)) Bool)

(assert (=> b!388828 (= res!222429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!388829 () Bool)

(declare-fun res!222424 () Bool)

(assert (=> b!388829 (=> (not res!222424) (not e!235603))))

(declare-fun arrayContainsKey!0 (array!23051 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!388829 (= res!222424 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!388830 () Bool)

(declare-fun e!235601 () Bool)

(declare-fun e!235605 () Bool)

(assert (=> b!388830 (= e!235601 (and e!235605 mapRes!15954))))

(declare-fun condMapEmpty!15954 () Bool)

(declare-fun mapDefault!15954 () ValueCell!4451)

