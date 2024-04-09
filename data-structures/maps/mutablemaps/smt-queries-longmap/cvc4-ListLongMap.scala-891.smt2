; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20458 () Bool)

(assert start!20458)

(declare-fun b_free!5105 () Bool)

(declare-fun b_next!5105 () Bool)

(assert (=> start!20458 (= b_free!5105 (not b_next!5105))))

(declare-fun tp!18347 () Bool)

(declare-fun b_and!11869 () Bool)

(assert (=> start!20458 (= tp!18347 b_and!11869)))

(declare-fun b!202483 () Bool)

(declare-fun res!97072 () Bool)

(declare-fun e!132636 () Bool)

(assert (=> b!202483 (=> (not res!97072) (not e!132636))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9146 0))(
  ( (array!9147 (arr!4323 (Array (_ BitVec 32) (_ BitVec 64))) (size!4648 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9146)

(assert (=> b!202483 (= res!97072 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4648 _keys!825))))))

(declare-fun b!202484 () Bool)

(declare-fun e!132635 () Bool)

(declare-fun tp_is_empty!4961 () Bool)

(assert (=> b!202484 (= e!132635 tp_is_empty!4961)))

(declare-fun b!202485 () Bool)

(declare-fun res!97071 () Bool)

(assert (=> b!202485 (=> (not res!97071) (not e!132636))))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!202485 (= res!97071 (= (select (arr!4323 _keys!825) i!601) k!843))))

(declare-fun b!202486 () Bool)

(declare-fun e!132633 () Bool)

(assert (=> b!202486 (= e!132633 true)))

(declare-datatypes ((V!6261 0))(
  ( (V!6262 (val!2525 Int)) )
))
(declare-datatypes ((tuple2!3826 0))(
  ( (tuple2!3827 (_1!1923 (_ BitVec 64)) (_2!1923 V!6261)) )
))
(declare-datatypes ((List!2754 0))(
  ( (Nil!2751) (Cons!2750 (h!3392 tuple2!3826) (t!7693 List!2754)) )
))
(declare-datatypes ((ListLongMap!2753 0))(
  ( (ListLongMap!2754 (toList!1392 List!2754)) )
))
(declare-fun lt!101728 () ListLongMap!2753)

(declare-fun lt!101731 () ListLongMap!2753)

(declare-fun lt!101726 () tuple2!3826)

(declare-fun +!409 (ListLongMap!2753 tuple2!3826) ListLongMap!2753)

(assert (=> b!202486 (= lt!101728 (+!409 lt!101731 lt!101726))))

(declare-fun lt!101734 () ListLongMap!2753)

(declare-fun v!520 () V!6261)

(declare-datatypes ((Unit!6121 0))(
  ( (Unit!6122) )
))
(declare-fun lt!101735 () Unit!6121)

(declare-fun zeroValue!615 () V!6261)

(declare-fun addCommutativeForDiffKeys!126 (ListLongMap!2753 (_ BitVec 64) V!6261 (_ BitVec 64) V!6261) Unit!6121)

(assert (=> b!202486 (= lt!101735 (addCommutativeForDiffKeys!126 lt!101734 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!202487 () Bool)

(declare-fun e!132634 () Bool)

(declare-fun e!132637 () Bool)

(declare-fun mapRes!8510 () Bool)

(assert (=> b!202487 (= e!132634 (and e!132637 mapRes!8510))))

(declare-fun condMapEmpty!8510 () Bool)

(declare-datatypes ((ValueCell!2137 0))(
  ( (ValueCellFull!2137 (v!4491 V!6261)) (EmptyCell!2137) )
))
(declare-datatypes ((array!9148 0))(
  ( (array!9149 (arr!4324 (Array (_ BitVec 32) ValueCell!2137)) (size!4649 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9148)

(declare-fun mapDefault!8510 () ValueCell!2137)

