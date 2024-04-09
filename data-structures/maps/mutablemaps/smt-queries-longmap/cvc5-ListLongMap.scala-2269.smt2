; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37084 () Bool)

(assert start!37084)

(declare-fun b_free!8203 () Bool)

(declare-fun b_next!8203 () Bool)

(assert (=> start!37084 (= b_free!8203 (not b_next!8203))))

(declare-fun tp!29324 () Bool)

(declare-fun b_and!15463 () Bool)

(assert (=> start!37084 (= tp!29324 b_and!15463)))

(declare-fun b!372809 () Bool)

(declare-fun res!209959 () Bool)

(declare-fun e!227340 () Bool)

(assert (=> b!372809 (=> (not res!209959) (not e!227340))))

(declare-datatypes ((array!21609 0))(
  ( (array!21610 (arr!10270 (Array (_ BitVec 32) (_ BitVec 64))) (size!10622 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21609)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!372809 (= res!209959 (or (= (select (arr!10270 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10270 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!372810 () Bool)

(declare-fun res!209961 () Bool)

(assert (=> b!372810 (=> (not res!209961) (not e!227340))))

(declare-datatypes ((List!5783 0))(
  ( (Nil!5780) (Cons!5779 (h!6635 (_ BitVec 64)) (t!10941 List!5783)) )
))
(declare-fun arrayNoDuplicates!0 (array!21609 (_ BitVec 32) List!5783) Bool)

(assert (=> b!372810 (= res!209961 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5780))))

(declare-fun b!372811 () Bool)

(declare-fun e!227333 () Bool)

(declare-fun e!227335 () Bool)

(assert (=> b!372811 (= e!227333 (not e!227335))))

(declare-fun res!209962 () Bool)

(assert (=> b!372811 (=> res!209962 e!227335)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!372811 (= res!209962 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!12907 0))(
  ( (V!12908 (val!4470 Int)) )
))
(declare-datatypes ((ValueCell!4082 0))(
  ( (ValueCellFull!4082 (v!6663 V!12907)) (EmptyCell!4082) )
))
(declare-datatypes ((array!21611 0))(
  ( (array!21612 (arr!10271 (Array (_ BitVec 32) ValueCell!4082)) (size!10623 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21611)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5908 0))(
  ( (tuple2!5909 (_1!2964 (_ BitVec 64)) (_2!2964 V!12907)) )
))
(declare-datatypes ((List!5784 0))(
  ( (Nil!5781) (Cons!5780 (h!6636 tuple2!5908) (t!10942 List!5784)) )
))
(declare-datatypes ((ListLongMap!4835 0))(
  ( (ListLongMap!4836 (toList!2433 List!5784)) )
))
(declare-fun lt!171019 () ListLongMap!4835)

(declare-fun zeroValue!472 () V!12907)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!12907)

(declare-fun getCurrentListMap!1883 (array!21609 array!21611 (_ BitVec 32) (_ BitVec 32) V!12907 V!12907 (_ BitVec 32) Int) ListLongMap!4835)

(assert (=> b!372811 (= lt!171019 (getCurrentListMap!1883 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171026 () ListLongMap!4835)

(declare-fun lt!171020 () array!21609)

(declare-fun lt!171024 () array!21611)

(assert (=> b!372811 (= lt!171026 (getCurrentListMap!1883 lt!171020 lt!171024 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171021 () ListLongMap!4835)

(declare-fun lt!171023 () ListLongMap!4835)

(assert (=> b!372811 (and (= lt!171021 lt!171023) (= lt!171023 lt!171021))))

(declare-fun v!373 () V!12907)

(declare-fun lt!171027 () ListLongMap!4835)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun +!774 (ListLongMap!4835 tuple2!5908) ListLongMap!4835)

(assert (=> b!372811 (= lt!171023 (+!774 lt!171027 (tuple2!5909 k!778 v!373)))))

(declare-datatypes ((Unit!11453 0))(
  ( (Unit!11454) )
))
(declare-fun lt!171022 () Unit!11453)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!34 (array!21609 array!21611 (_ BitVec 32) (_ BitVec 32) V!12907 V!12907 (_ BitVec 32) (_ BitVec 64) V!12907 (_ BitVec 32) Int) Unit!11453)

(assert (=> b!372811 (= lt!171022 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!34 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!701 (array!21609 array!21611 (_ BitVec 32) (_ BitVec 32) V!12907 V!12907 (_ BitVec 32) Int) ListLongMap!4835)

(assert (=> b!372811 (= lt!171021 (getCurrentListMapNoExtraKeys!701 lt!171020 lt!171024 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!372811 (= lt!171024 (array!21612 (store (arr!10271 _values!506) i!548 (ValueCellFull!4082 v!373)) (size!10623 _values!506)))))

(assert (=> b!372811 (= lt!171027 (getCurrentListMapNoExtraKeys!701 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!372812 () Bool)

(declare-fun e!227337 () Bool)

(declare-fun tp_is_empty!8851 () Bool)

(assert (=> b!372812 (= e!227337 tp_is_empty!8851)))

(declare-fun b!372813 () Bool)

(declare-fun e!227336 () Bool)

(declare-fun e!227339 () Bool)

(declare-fun mapRes!14841 () Bool)

(assert (=> b!372813 (= e!227336 (and e!227339 mapRes!14841))))

(declare-fun condMapEmpty!14841 () Bool)

(declare-fun mapDefault!14841 () ValueCell!4082)

