; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37130 () Bool)

(assert start!37130)

(declare-fun b_free!8249 () Bool)

(declare-fun b_next!8249 () Bool)

(assert (=> start!37130 (= b_free!8249 (not b_next!8249))))

(declare-fun tp!29462 () Bool)

(declare-fun b_and!15509 () Bool)

(assert (=> start!37130 (= tp!29462 b_and!15509)))

(declare-fun b!373842 () Bool)

(declare-fun e!227876 () Bool)

(declare-fun tp_is_empty!8897 () Bool)

(assert (=> b!373842 (= e!227876 tp_is_empty!8897)))

(declare-fun b!373843 () Bool)

(declare-fun res!210785 () Bool)

(declare-fun e!227882 () Bool)

(assert (=> b!373843 (=> (not res!210785) (not e!227882))))

(declare-datatypes ((array!21699 0))(
  ( (array!21700 (arr!10315 (Array (_ BitVec 32) (_ BitVec 64))) (size!10667 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21699)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21699 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!373843 (= res!210785 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!373844 () Bool)

(declare-fun e!227881 () Bool)

(declare-fun e!227877 () Bool)

(assert (=> b!373844 (= e!227881 e!227877)))

(declare-fun res!210780 () Bool)

(assert (=> b!373844 (=> res!210780 e!227877)))

(assert (=> b!373844 (= res!210780 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!12967 0))(
  ( (V!12968 (val!4493 Int)) )
))
(declare-datatypes ((tuple2!5948 0))(
  ( (tuple2!5949 (_1!2984 (_ BitVec 64)) (_2!2984 V!12967)) )
))
(declare-datatypes ((List!5820 0))(
  ( (Nil!5817) (Cons!5816 (h!6672 tuple2!5948) (t!10978 List!5820)) )
))
(declare-datatypes ((ListLongMap!4875 0))(
  ( (ListLongMap!4876 (toList!2453 List!5820)) )
))
(declare-fun lt!172126 () ListLongMap!4875)

(declare-fun lt!172121 () ListLongMap!4875)

(assert (=> b!373844 (= lt!172126 lt!172121)))

(declare-fun lt!172130 () ListLongMap!4875)

(declare-fun lt!172118 () tuple2!5948)

(declare-fun +!794 (ListLongMap!4875 tuple2!5948) ListLongMap!4875)

(assert (=> b!373844 (= lt!172121 (+!794 lt!172130 lt!172118))))

(declare-datatypes ((Unit!11491 0))(
  ( (Unit!11492) )
))
(declare-fun lt!172125 () Unit!11491)

(declare-fun v!373 () V!12967)

(declare-fun lt!172116 () ListLongMap!4875)

(declare-fun zeroValue!472 () V!12967)

(declare-fun addCommutativeForDiffKeys!223 (ListLongMap!4875 (_ BitVec 64) V!12967 (_ BitVec 64) V!12967) Unit!11491)

(assert (=> b!373844 (= lt!172125 (addCommutativeForDiffKeys!223 lt!172116 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!172119 () ListLongMap!4875)

(declare-fun lt!172120 () tuple2!5948)

(assert (=> b!373844 (= lt!172119 (+!794 lt!172126 lt!172120))))

(declare-fun lt!172117 () ListLongMap!4875)

(declare-fun lt!172127 () tuple2!5948)

(assert (=> b!373844 (= lt!172126 (+!794 lt!172117 lt!172127))))

(declare-fun lt!172129 () ListLongMap!4875)

(declare-fun lt!172122 () ListLongMap!4875)

(assert (=> b!373844 (= lt!172129 lt!172122)))

(assert (=> b!373844 (= lt!172122 (+!794 lt!172130 lt!172120))))

(assert (=> b!373844 (= lt!172130 (+!794 lt!172116 lt!172127))))

(declare-fun lt!172123 () ListLongMap!4875)

(assert (=> b!373844 (= lt!172119 (+!794 (+!794 lt!172123 lt!172127) lt!172120))))

(declare-fun minValue!472 () V!12967)

(assert (=> b!373844 (= lt!172120 (tuple2!5949 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!373844 (= lt!172127 (tuple2!5949 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!373845 () Bool)

(declare-fun e!227883 () Bool)

(declare-fun e!227880 () Bool)

(declare-fun mapRes!14910 () Bool)

(assert (=> b!373845 (= e!227883 (and e!227880 mapRes!14910))))

(declare-fun condMapEmpty!14910 () Bool)

(declare-datatypes ((ValueCell!4105 0))(
  ( (ValueCellFull!4105 (v!6686 V!12967)) (EmptyCell!4105) )
))
(declare-datatypes ((array!21701 0))(
  ( (array!21702 (arr!10316 (Array (_ BitVec 32) ValueCell!4105)) (size!10668 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21701)

(declare-fun mapDefault!14910 () ValueCell!4105)

