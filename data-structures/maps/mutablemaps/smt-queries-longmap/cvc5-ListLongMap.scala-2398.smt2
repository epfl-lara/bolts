; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37948 () Bool)

(assert start!37948)

(declare-fun b_free!8953 () Bool)

(declare-fun b_next!8953 () Bool)

(assert (=> start!37948 (= b_free!8953 (not b_next!8953))))

(declare-fun tp!31623 () Bool)

(declare-fun b_and!16261 () Bool)

(assert (=> start!37948 (= tp!31623 b_and!16261)))

(declare-fun mapIsEmpty!16014 () Bool)

(declare-fun mapRes!16014 () Bool)

(assert (=> mapIsEmpty!16014 mapRes!16014))

(declare-fun b!390056 () Bool)

(declare-fun e!236290 () Bool)

(declare-fun e!236295 () Bool)

(assert (=> b!390056 (= e!236290 (not e!236295))))

(declare-fun res!223271 () Bool)

(assert (=> b!390056 (=> res!223271 e!236295)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!390056 (= res!223271 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13939 0))(
  ( (V!13940 (val!4857 Int)) )
))
(declare-datatypes ((ValueCell!4469 0))(
  ( (ValueCellFull!4469 (v!7066 V!13939)) (EmptyCell!4469) )
))
(declare-datatypes ((array!23125 0))(
  ( (array!23126 (arr!11024 (Array (_ BitVec 32) ValueCell!4469)) (size!11376 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23125)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((array!23127 0))(
  ( (array!23128 (arr!11025 (Array (_ BitVec 32) (_ BitVec 64))) (size!11377 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23127)

(declare-fun zeroValue!472 () V!13939)

(declare-datatypes ((tuple2!6480 0))(
  ( (tuple2!6481 (_1!3250 (_ BitVec 64)) (_2!3250 V!13939)) )
))
(declare-datatypes ((List!6363 0))(
  ( (Nil!6360) (Cons!6359 (h!7215 tuple2!6480) (t!11529 List!6363)) )
))
(declare-datatypes ((ListLongMap!5407 0))(
  ( (ListLongMap!5408 (toList!2719 List!6363)) )
))
(declare-fun lt!183857 () ListLongMap!5407)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13939)

(declare-fun getCurrentListMap!2086 (array!23127 array!23125 (_ BitVec 32) (_ BitVec 32) V!13939 V!13939 (_ BitVec 32) Int) ListLongMap!5407)

(assert (=> b!390056 (= lt!183857 (getCurrentListMap!2086 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183854 () array!23127)

(declare-fun lt!183858 () ListLongMap!5407)

(declare-fun lt!183855 () array!23125)

(assert (=> b!390056 (= lt!183858 (getCurrentListMap!2086 lt!183854 lt!183855 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183852 () ListLongMap!5407)

(declare-fun lt!183853 () ListLongMap!5407)

(assert (=> b!390056 (and (= lt!183852 lt!183853) (= lt!183853 lt!183852))))

(declare-fun v!373 () V!13939)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun lt!183856 () ListLongMap!5407)

(declare-fun +!1017 (ListLongMap!5407 tuple2!6480) ListLongMap!5407)

(assert (=> b!390056 (= lt!183853 (+!1017 lt!183856 (tuple2!6481 k!778 v!373)))))

(declare-datatypes ((Unit!11923 0))(
  ( (Unit!11924) )
))
(declare-fun lt!183859 () Unit!11923)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!243 (array!23127 array!23125 (_ BitVec 32) (_ BitVec 32) V!13939 V!13939 (_ BitVec 32) (_ BitVec 64) V!13939 (_ BitVec 32) Int) Unit!11923)

(assert (=> b!390056 (= lt!183859 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!243 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!948 (array!23127 array!23125 (_ BitVec 32) (_ BitVec 32) V!13939 V!13939 (_ BitVec 32) Int) ListLongMap!5407)

(assert (=> b!390056 (= lt!183852 (getCurrentListMapNoExtraKeys!948 lt!183854 lt!183855 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!390056 (= lt!183855 (array!23126 (store (arr!11024 _values!506) i!548 (ValueCellFull!4469 v!373)) (size!11376 _values!506)))))

(assert (=> b!390056 (= lt!183856 (getCurrentListMapNoExtraKeys!948 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!390057 () Bool)

(declare-fun e!236296 () Bool)

(declare-fun e!236292 () Bool)

(assert (=> b!390057 (= e!236296 (and e!236292 mapRes!16014))))

(declare-fun condMapEmpty!16014 () Bool)

(declare-fun mapDefault!16014 () ValueCell!4469)

