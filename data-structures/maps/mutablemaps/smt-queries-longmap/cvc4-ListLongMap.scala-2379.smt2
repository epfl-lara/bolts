; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37748 () Bool)

(assert start!37748)

(declare-fun b_free!8843 () Bool)

(declare-fun b_next!8843 () Bool)

(assert (=> start!37748 (= b_free!8843 (not b_next!8843))))

(declare-fun tp!31280 () Bool)

(declare-fun b_and!16103 () Bool)

(assert (=> start!37748 (= tp!31280 b_and!16103)))

(declare-fun b!386948 () Bool)

(declare-fun res!221110 () Bool)

(declare-fun e!234650 () Bool)

(assert (=> b!386948 (=> (not res!221110) (not e!234650))))

(declare-datatypes ((array!22899 0))(
  ( (array!22900 (arr!10915 (Array (_ BitVec 32) (_ BitVec 64))) (size!11267 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22899)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22899 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!386948 (= res!221110 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!386949 () Bool)

(declare-fun e!234651 () Bool)

(declare-fun tp_is_empty!9515 () Bool)

(assert (=> b!386949 (= e!234651 tp_is_empty!9515)))

(declare-fun b!386950 () Bool)

(declare-fun res!221102 () Bool)

(assert (=> b!386950 (=> (not res!221102) (not e!234650))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!386950 (= res!221102 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11267 _keys!658))))))

(declare-fun mapNonEmpty!15837 () Bool)

(declare-fun mapRes!15837 () Bool)

(declare-fun tp!31281 () Bool)

(declare-fun e!234648 () Bool)

(assert (=> mapNonEmpty!15837 (= mapRes!15837 (and tp!31281 e!234648))))

(declare-datatypes ((V!13791 0))(
  ( (V!13792 (val!4802 Int)) )
))
(declare-datatypes ((ValueCell!4414 0))(
  ( (ValueCellFull!4414 (v!6995 V!13791)) (EmptyCell!4414) )
))
(declare-fun mapRest!15837 () (Array (_ BitVec 32) ValueCell!4414))

(declare-datatypes ((array!22901 0))(
  ( (array!22902 (arr!10916 (Array (_ BitVec 32) ValueCell!4414)) (size!11268 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22901)

(declare-fun mapKey!15837 () (_ BitVec 32))

(declare-fun mapValue!15837 () ValueCell!4414)

(assert (=> mapNonEmpty!15837 (= (arr!10916 _values!506) (store mapRest!15837 mapKey!15837 mapValue!15837))))

(declare-fun b!386951 () Bool)

(declare-fun res!221104 () Bool)

(assert (=> b!386951 (=> (not res!221104) (not e!234650))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22899 (_ BitVec 32)) Bool)

(assert (=> b!386951 (= res!221104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!386952 () Bool)

(declare-fun res!221106 () Bool)

(assert (=> b!386952 (=> (not res!221106) (not e!234650))))

(assert (=> b!386952 (= res!221106 (or (= (select (arr!10915 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10915 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!221107 () Bool)

(assert (=> start!37748 (=> (not res!221107) (not e!234650))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37748 (= res!221107 (validMask!0 mask!970))))

(assert (=> start!37748 e!234650))

(declare-fun e!234649 () Bool)

(declare-fun array_inv!8006 (array!22901) Bool)

(assert (=> start!37748 (and (array_inv!8006 _values!506) e!234649)))

(assert (=> start!37748 tp!31280))

(assert (=> start!37748 true))

(assert (=> start!37748 tp_is_empty!9515))

(declare-fun array_inv!8007 (array!22899) Bool)

(assert (=> start!37748 (array_inv!8007 _keys!658)))

(declare-fun b!386953 () Bool)

(assert (=> b!386953 (= e!234649 (and e!234651 mapRes!15837))))

(declare-fun condMapEmpty!15837 () Bool)

(declare-fun mapDefault!15837 () ValueCell!4414)

