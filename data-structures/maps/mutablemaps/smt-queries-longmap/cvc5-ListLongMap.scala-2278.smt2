; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37138 () Bool)

(assert start!37138)

(declare-fun b_free!8257 () Bool)

(declare-fun b_next!8257 () Bool)

(assert (=> start!37138 (= b_free!8257 (not b_next!8257))))

(declare-fun tp!29487 () Bool)

(declare-fun b_and!15517 () Bool)

(assert (=> start!37138 (= tp!29487 b_and!15517)))

(declare-fun mapIsEmpty!14922 () Bool)

(declare-fun mapRes!14922 () Bool)

(assert (=> mapIsEmpty!14922 mapRes!14922))

(declare-fun b!374022 () Bool)

(declare-fun res!210921 () Bool)

(declare-fun e!227977 () Bool)

(assert (=> b!374022 (=> (not res!210921) (not e!227977))))

(declare-datatypes ((array!21715 0))(
  ( (array!21716 (arr!10323 (Array (_ BitVec 32) (_ BitVec 64))) (size!10675 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21715)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21715 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!374022 (= res!210921 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!374024 () Bool)

(declare-fun res!210925 () Bool)

(assert (=> b!374024 (=> (not res!210925) (not e!227977))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!374024 (= res!210925 (validKeyInArray!0 k!778))))

(declare-fun b!374025 () Bool)

(declare-fun res!210928 () Bool)

(assert (=> b!374025 (=> (not res!210928) (not e!227977))))

(declare-datatypes ((List!5826 0))(
  ( (Nil!5823) (Cons!5822 (h!6678 (_ BitVec 64)) (t!10984 List!5826)) )
))
(declare-fun arrayNoDuplicates!0 (array!21715 (_ BitVec 32) List!5826) Bool)

(assert (=> b!374025 (= res!210928 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5823))))

(declare-fun b!374026 () Bool)

(declare-fun res!210930 () Bool)

(declare-fun e!227974 () Bool)

(assert (=> b!374026 (=> (not res!210930) (not e!227974))))

(declare-fun lt!172329 () array!21715)

(assert (=> b!374026 (= res!210930 (arrayNoDuplicates!0 lt!172329 #b00000000000000000000000000000000 Nil!5823))))

(declare-fun b!374027 () Bool)

(declare-fun e!227973 () Bool)

(assert (=> b!374027 (= e!227974 (not e!227973))))

(declare-fun res!210932 () Bool)

(assert (=> b!374027 (=> res!210932 e!227973)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!374027 (= res!210932 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!12979 0))(
  ( (V!12980 (val!4497 Int)) )
))
(declare-datatypes ((ValueCell!4109 0))(
  ( (ValueCellFull!4109 (v!6690 V!12979)) (EmptyCell!4109) )
))
(declare-datatypes ((array!21717 0))(
  ( (array!21718 (arr!10324 (Array (_ BitVec 32) ValueCell!4109)) (size!10676 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21717)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5956 0))(
  ( (tuple2!5957 (_1!2988 (_ BitVec 64)) (_2!2988 V!12979)) )
))
(declare-datatypes ((List!5827 0))(
  ( (Nil!5824) (Cons!5823 (h!6679 tuple2!5956) (t!10985 List!5827)) )
))
(declare-datatypes ((ListLongMap!4883 0))(
  ( (ListLongMap!4884 (toList!2457 List!5827)) )
))
(declare-fun lt!172328 () ListLongMap!4883)

(declare-fun zeroValue!472 () V!12979)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!12979)

(declare-fun getCurrentListMap!1902 (array!21715 array!21717 (_ BitVec 32) (_ BitVec 32) V!12979 V!12979 (_ BitVec 32) Int) ListLongMap!4883)

(assert (=> b!374027 (= lt!172328 (getCurrentListMap!1902 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!172330 () array!21717)

(declare-fun lt!172322 () ListLongMap!4883)

(assert (=> b!374027 (= lt!172322 (getCurrentListMap!1902 lt!172329 lt!172330 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!172327 () ListLongMap!4883)

(declare-fun lt!172334 () ListLongMap!4883)

(assert (=> b!374027 (and (= lt!172327 lt!172334) (= lt!172334 lt!172327))))

(declare-fun lt!172325 () ListLongMap!4883)

(declare-fun lt!172335 () tuple2!5956)

(declare-fun +!798 (ListLongMap!4883 tuple2!5956) ListLongMap!4883)

(assert (=> b!374027 (= lt!172334 (+!798 lt!172325 lt!172335))))

(declare-fun v!373 () V!12979)

(assert (=> b!374027 (= lt!172335 (tuple2!5957 k!778 v!373))))

(declare-datatypes ((Unit!11499 0))(
  ( (Unit!11500) )
))
(declare-fun lt!172323 () Unit!11499)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!53 (array!21715 array!21717 (_ BitVec 32) (_ BitVec 32) V!12979 V!12979 (_ BitVec 32) (_ BitVec 64) V!12979 (_ BitVec 32) Int) Unit!11499)

(assert (=> b!374027 (= lt!172323 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!53 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!720 (array!21715 array!21717 (_ BitVec 32) (_ BitVec 32) V!12979 V!12979 (_ BitVec 32) Int) ListLongMap!4883)

(assert (=> b!374027 (= lt!172327 (getCurrentListMapNoExtraKeys!720 lt!172329 lt!172330 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!374027 (= lt!172330 (array!21718 (store (arr!10324 _values!506) i!548 (ValueCellFull!4109 v!373)) (size!10676 _values!506)))))

(assert (=> b!374027 (= lt!172325 (getCurrentListMapNoExtraKeys!720 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!374028 () Bool)

(declare-fun e!227975 () Bool)

(assert (=> b!374028 (= e!227973 e!227975)))

(declare-fun res!210924 () Bool)

(assert (=> b!374028 (=> res!210924 e!227975)))

(assert (=> b!374028 (= res!210924 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!172321 () ListLongMap!4883)

(declare-fun lt!172333 () ListLongMap!4883)

(assert (=> b!374028 (= lt!172321 lt!172333)))

(declare-fun lt!172320 () ListLongMap!4883)

(assert (=> b!374028 (= lt!172333 (+!798 lt!172320 lt!172335))))

(declare-fun lt!172336 () Unit!11499)

(declare-fun addCommutativeForDiffKeys!227 (ListLongMap!4883 (_ BitVec 64) V!12979 (_ BitVec 64) V!12979) Unit!11499)

(assert (=> b!374028 (= lt!172336 (addCommutativeForDiffKeys!227 lt!172325 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!172326 () tuple2!5956)

(assert (=> b!374028 (= lt!172322 (+!798 lt!172321 lt!172326))))

(declare-fun lt!172332 () tuple2!5956)

(assert (=> b!374028 (= lt!172321 (+!798 lt!172334 lt!172332))))

(declare-fun lt!172331 () ListLongMap!4883)

(assert (=> b!374028 (= lt!172328 lt!172331)))

(assert (=> b!374028 (= lt!172331 (+!798 lt!172320 lt!172326))))

(assert (=> b!374028 (= lt!172320 (+!798 lt!172325 lt!172332))))

(assert (=> b!374028 (= lt!172322 (+!798 (+!798 lt!172327 lt!172332) lt!172326))))

(assert (=> b!374028 (= lt!172326 (tuple2!5957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!374028 (= lt!172332 (tuple2!5957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!374029 () Bool)

(declare-fun e!227979 () Bool)

(declare-fun tp_is_empty!8905 () Bool)

(assert (=> b!374029 (= e!227979 tp_is_empty!8905)))

(declare-fun b!374030 () Bool)

(declare-fun e!227972 () Bool)

(assert (=> b!374030 (= e!227972 (and e!227979 mapRes!14922))))

(declare-fun condMapEmpty!14922 () Bool)

(declare-fun mapDefault!14922 () ValueCell!4109)

