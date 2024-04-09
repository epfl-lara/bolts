; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38090 () Bool)

(assert start!38090)

(declare-fun b_free!9007 () Bool)

(declare-fun b_next!9007 () Bool)

(assert (=> start!38090 (= b_free!9007 (not b_next!9007))))

(declare-fun tp!31796 () Bool)

(declare-fun b_and!16363 () Bool)

(assert (=> start!38090 (= tp!31796 b_and!16363)))

(declare-fun b!392055 () Bool)

(declare-fun res!224578 () Bool)

(declare-fun e!237430 () Bool)

(assert (=> b!392055 (=> (not res!224578) (not e!237430))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!23235 0))(
  ( (array!23236 (arr!11075 (Array (_ BitVec 32) (_ BitVec 64))) (size!11427 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23235)

(assert (=> b!392055 (= res!224578 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11427 _keys!658))))))

(declare-fun b!392056 () Bool)

(declare-fun res!224584 () Bool)

(assert (=> b!392056 (=> (not res!224584) (not e!237430))))

(declare-datatypes ((List!6402 0))(
  ( (Nil!6399) (Cons!6398 (h!7254 (_ BitVec 64)) (t!11576 List!6402)) )
))
(declare-fun arrayNoDuplicates!0 (array!23235 (_ BitVec 32) List!6402) Bool)

(assert (=> b!392056 (= res!224584 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6399))))

(declare-fun b!392057 () Bool)

(declare-fun e!237428 () Bool)

(declare-fun e!237432 () Bool)

(assert (=> b!392057 (= e!237428 (not e!237432))))

(declare-fun res!224579 () Bool)

(assert (=> b!392057 (=> res!224579 e!237432)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!392057 (= res!224579 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!14011 0))(
  ( (V!14012 (val!4884 Int)) )
))
(declare-datatypes ((tuple2!6518 0))(
  ( (tuple2!6519 (_1!3269 (_ BitVec 64)) (_2!3269 V!14011)) )
))
(declare-datatypes ((List!6403 0))(
  ( (Nil!6400) (Cons!6399 (h!7255 tuple2!6518) (t!11577 List!6403)) )
))
(declare-datatypes ((ListLongMap!5445 0))(
  ( (ListLongMap!5446 (toList!2738 List!6403)) )
))
(declare-fun lt!185278 () ListLongMap!5445)

(declare-datatypes ((ValueCell!4496 0))(
  ( (ValueCellFull!4496 (v!7109 V!14011)) (EmptyCell!4496) )
))
(declare-datatypes ((array!23237 0))(
  ( (array!23238 (arr!11076 (Array (_ BitVec 32) ValueCell!4496)) (size!11428 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23237)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!14011)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!14011)

(declare-fun getCurrentListMap!2103 (array!23235 array!23237 (_ BitVec 32) (_ BitVec 32) V!14011 V!14011 (_ BitVec 32) Int) ListLongMap!5445)

(assert (=> b!392057 (= lt!185278 (getCurrentListMap!2103 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185277 () array!23235)

(declare-fun lt!185275 () array!23237)

(declare-fun lt!185276 () ListLongMap!5445)

(assert (=> b!392057 (= lt!185276 (getCurrentListMap!2103 lt!185277 lt!185275 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185281 () ListLongMap!5445)

(declare-fun lt!185273 () ListLongMap!5445)

(assert (=> b!392057 (and (= lt!185281 lt!185273) (= lt!185273 lt!185281))))

(declare-fun v!373 () V!14011)

(declare-fun lt!185280 () ListLongMap!5445)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun +!1036 (ListLongMap!5445 tuple2!6518) ListLongMap!5445)

(assert (=> b!392057 (= lt!185273 (+!1036 lt!185280 (tuple2!6519 k!778 v!373)))))

(declare-datatypes ((Unit!11965 0))(
  ( (Unit!11966) )
))
(declare-fun lt!185274 () Unit!11965)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!260 (array!23235 array!23237 (_ BitVec 32) (_ BitVec 32) V!14011 V!14011 (_ BitVec 32) (_ BitVec 64) V!14011 (_ BitVec 32) Int) Unit!11965)

(assert (=> b!392057 (= lt!185274 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!260 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!965 (array!23235 array!23237 (_ BitVec 32) (_ BitVec 32) V!14011 V!14011 (_ BitVec 32) Int) ListLongMap!5445)

(assert (=> b!392057 (= lt!185281 (getCurrentListMapNoExtraKeys!965 lt!185277 lt!185275 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!392057 (= lt!185275 (array!23238 (store (arr!11076 _values!506) i!548 (ValueCellFull!4496 v!373)) (size!11428 _values!506)))))

(assert (=> b!392057 (= lt!185280 (getCurrentListMapNoExtraKeys!965 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapNonEmpty!16107 () Bool)

(declare-fun mapRes!16107 () Bool)

(declare-fun tp!31797 () Bool)

(declare-fun e!237427 () Bool)

(assert (=> mapNonEmpty!16107 (= mapRes!16107 (and tp!31797 e!237427))))

(declare-fun mapRest!16107 () (Array (_ BitVec 32) ValueCell!4496))

(declare-fun mapKey!16107 () (_ BitVec 32))

(declare-fun mapValue!16107 () ValueCell!4496)

(assert (=> mapNonEmpty!16107 (= (arr!11076 _values!506) (store mapRest!16107 mapKey!16107 mapValue!16107))))

(declare-fun b!392058 () Bool)

(declare-fun res!224582 () Bool)

(assert (=> b!392058 (=> (not res!224582) (not e!237430))))

(assert (=> b!392058 (= res!224582 (or (= (select (arr!11075 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11075 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!392059 () Bool)

(declare-fun res!224580 () Bool)

(assert (=> b!392059 (=> (not res!224580) (not e!237430))))

(declare-fun arrayContainsKey!0 (array!23235 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!392059 (= res!224580 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!392060 () Bool)

(declare-fun e!237431 () Bool)

(declare-fun tp_is_empty!9679 () Bool)

(assert (=> b!392060 (= e!237431 tp_is_empty!9679)))

(declare-fun b!392061 () Bool)

(declare-fun res!224585 () Bool)

(assert (=> b!392061 (=> (not res!224585) (not e!237430))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!392061 (= res!224585 (validKeyInArray!0 k!778))))

(declare-fun b!392062 () Bool)

(assert (=> b!392062 (= e!237427 tp_is_empty!9679)))

(declare-fun b!392063 () Bool)

(declare-fun res!224575 () Bool)

(assert (=> b!392063 (=> (not res!224575) (not e!237428))))

(assert (=> b!392063 (= res!224575 (arrayNoDuplicates!0 lt!185277 #b00000000000000000000000000000000 Nil!6399))))

(declare-fun res!224577 () Bool)

(assert (=> start!38090 (=> (not res!224577) (not e!237430))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38090 (= res!224577 (validMask!0 mask!970))))

(assert (=> start!38090 e!237430))

(declare-fun e!237434 () Bool)

(declare-fun array_inv!8120 (array!23237) Bool)

(assert (=> start!38090 (and (array_inv!8120 _values!506) e!237434)))

(assert (=> start!38090 tp!31796))

(assert (=> start!38090 true))

(assert (=> start!38090 tp_is_empty!9679))

(declare-fun array_inv!8121 (array!23235) Bool)

(assert (=> start!38090 (array_inv!8121 _keys!658)))

(declare-fun b!392064 () Bool)

(declare-fun lt!185279 () tuple2!6518)

(declare-fun e!237433 () Bool)

(assert (=> b!392064 (= e!237433 (= lt!185276 (+!1036 lt!185273 lt!185279)))))

(declare-fun b!392065 () Bool)

(declare-fun res!224583 () Bool)

(assert (=> b!392065 (=> (not res!224583) (not e!237430))))

(assert (=> b!392065 (= res!224583 (and (= (size!11428 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11427 _keys!658) (size!11428 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!392066 () Bool)

(assert (=> b!392066 (= e!237432 (= lt!185278 (+!1036 lt!185280 lt!185279)))))

(assert (=> b!392066 e!237433))

(declare-fun res!224581 () Bool)

(assert (=> b!392066 (=> (not res!224581) (not e!237433))))

(assert (=> b!392066 (= res!224581 (= lt!185276 (+!1036 lt!185281 lt!185279)))))

(assert (=> b!392066 (= lt!185279 (tuple2!6519 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun mapIsEmpty!16107 () Bool)

(assert (=> mapIsEmpty!16107 mapRes!16107))

(declare-fun b!392067 () Bool)

(assert (=> b!392067 (= e!237430 e!237428)))

(declare-fun res!224576 () Bool)

(assert (=> b!392067 (=> (not res!224576) (not e!237428))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23235 (_ BitVec 32)) Bool)

(assert (=> b!392067 (= res!224576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!185277 mask!970))))

(assert (=> b!392067 (= lt!185277 (array!23236 (store (arr!11075 _keys!658) i!548 k!778) (size!11427 _keys!658)))))

(declare-fun b!392068 () Bool)

(assert (=> b!392068 (= e!237434 (and e!237431 mapRes!16107))))

(declare-fun condMapEmpty!16107 () Bool)

(declare-fun mapDefault!16107 () ValueCell!4496)

