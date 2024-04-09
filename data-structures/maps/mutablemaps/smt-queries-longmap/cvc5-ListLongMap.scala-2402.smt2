; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38038 () Bool)

(assert start!38038)

(declare-fun b_free!8977 () Bool)

(declare-fun b_next!8977 () Bool)

(assert (=> start!38038 (= b_free!8977 (not b_next!8977))))

(declare-fun tp!31703 () Bool)

(declare-fun b_and!16321 () Bool)

(assert (=> start!38038 (= tp!31703 b_and!16321)))

(declare-fun b!391197 () Bool)

(declare-fun res!223967 () Bool)

(declare-fun e!236958 () Bool)

(assert (=> b!391197 (=> (not res!223967) (not e!236958))))

(declare-datatypes ((array!23177 0))(
  ( (array!23178 (arr!11047 (Array (_ BitVec 32) (_ BitVec 64))) (size!11399 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23177)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23177 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!391197 (= res!223967 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!391199 () Bool)

(declare-fun e!236959 () Bool)

(assert (=> b!391199 (= e!236959 true)))

(declare-datatypes ((V!13971 0))(
  ( (V!13972 (val!4869 Int)) )
))
(declare-datatypes ((tuple2!6498 0))(
  ( (tuple2!6499 (_1!3259 (_ BitVec 64)) (_2!3259 V!13971)) )
))
(declare-datatypes ((List!6380 0))(
  ( (Nil!6377) (Cons!6376 (h!7232 tuple2!6498) (t!11552 List!6380)) )
))
(declare-datatypes ((ListLongMap!5425 0))(
  ( (ListLongMap!5426 (toList!2728 List!6380)) )
))
(declare-fun lt!184634 () ListLongMap!5425)

(declare-fun lt!184636 () ListLongMap!5425)

(declare-fun lt!184631 () tuple2!6498)

(declare-fun +!1026 (ListLongMap!5425 tuple2!6498) ListLongMap!5425)

(assert (=> b!391199 (= lt!184634 (+!1026 lt!184636 lt!184631))))

(declare-fun lt!184632 () ListLongMap!5425)

(declare-fun v!373 () V!13971)

(declare-datatypes ((Unit!11945 0))(
  ( (Unit!11946) )
))
(declare-fun lt!184630 () Unit!11945)

(declare-fun zeroValue!472 () V!13971)

(declare-fun addCommutativeForDiffKeys!334 (ListLongMap!5425 (_ BitVec 64) V!13971 (_ BitVec 64) V!13971) Unit!11945)

(assert (=> b!391199 (= lt!184630 (addCommutativeForDiffKeys!334 lt!184632 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!391200 () Bool)

(declare-fun e!236960 () Bool)

(declare-fun tp_is_empty!9649 () Bool)

(assert (=> b!391200 (= e!236960 tp_is_empty!9649)))

(declare-fun b!391201 () Bool)

(declare-fun e!236962 () Bool)

(declare-fun e!236957 () Bool)

(assert (=> b!391201 (= e!236962 (not e!236957))))

(declare-fun res!223970 () Bool)

(assert (=> b!391201 (=> res!223970 e!236957)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!391201 (= res!223970 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((ValueCell!4481 0))(
  ( (ValueCellFull!4481 (v!7090 V!13971)) (EmptyCell!4481) )
))
(declare-datatypes ((array!23179 0))(
  ( (array!23180 (arr!11048 (Array (_ BitVec 32) ValueCell!4481)) (size!11400 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23179)

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!184638 () ListLongMap!5425)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13971)

(declare-fun getCurrentListMap!2094 (array!23177 array!23179 (_ BitVec 32) (_ BitVec 32) V!13971 V!13971 (_ BitVec 32) Int) ListLongMap!5425)

(assert (=> b!391201 (= lt!184638 (getCurrentListMap!2094 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184640 () array!23177)

(declare-fun lt!184637 () ListLongMap!5425)

(declare-fun lt!184642 () array!23179)

(assert (=> b!391201 (= lt!184637 (getCurrentListMap!2094 lt!184640 lt!184642 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184639 () ListLongMap!5425)

(declare-fun lt!184633 () ListLongMap!5425)

(assert (=> b!391201 (and (= lt!184639 lt!184633) (= lt!184633 lt!184639))))

(assert (=> b!391201 (= lt!184633 (+!1026 lt!184632 lt!184631))))

(assert (=> b!391201 (= lt!184631 (tuple2!6499 k!778 v!373))))

(declare-fun lt!184641 () Unit!11945)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!251 (array!23177 array!23179 (_ BitVec 32) (_ BitVec 32) V!13971 V!13971 (_ BitVec 32) (_ BitVec 64) V!13971 (_ BitVec 32) Int) Unit!11945)

(assert (=> b!391201 (= lt!184641 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!251 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!956 (array!23177 array!23179 (_ BitVec 32) (_ BitVec 32) V!13971 V!13971 (_ BitVec 32) Int) ListLongMap!5425)

(assert (=> b!391201 (= lt!184639 (getCurrentListMapNoExtraKeys!956 lt!184640 lt!184642 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!391201 (= lt!184642 (array!23180 (store (arr!11048 _values!506) i!548 (ValueCellFull!4481 v!373)) (size!11400 _values!506)))))

(assert (=> b!391201 (= lt!184632 (getCurrentListMapNoExtraKeys!956 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!391202 () Bool)

(declare-fun res!223975 () Bool)

(assert (=> b!391202 (=> (not res!223975) (not e!236958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23177 (_ BitVec 32)) Bool)

(assert (=> b!391202 (= res!223975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!391203 () Bool)

(declare-fun res!223974 () Bool)

(assert (=> b!391203 (=> (not res!223974) (not e!236958))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!391203 (= res!223974 (validKeyInArray!0 k!778))))

(declare-fun b!391204 () Bool)

(assert (=> b!391204 (= e!236958 e!236962)))

(declare-fun res!223964 () Bool)

(assert (=> b!391204 (=> (not res!223964) (not e!236962))))

(assert (=> b!391204 (= res!223964 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!184640 mask!970))))

(assert (=> b!391204 (= lt!184640 (array!23178 (store (arr!11047 _keys!658) i!548 k!778) (size!11399 _keys!658)))))

(declare-fun b!391205 () Bool)

(assert (=> b!391205 (= e!236957 e!236959)))

(declare-fun res!223966 () Bool)

(assert (=> b!391205 (=> res!223966 e!236959)))

(assert (=> b!391205 (= res!223966 (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!391205 (= lt!184637 lt!184634)))

(declare-fun lt!184635 () tuple2!6498)

(assert (=> b!391205 (= lt!184634 (+!1026 lt!184633 lt!184635))))

(assert (=> b!391205 (= lt!184638 lt!184636)))

(assert (=> b!391205 (= lt!184636 (+!1026 lt!184632 lt!184635))))

(assert (=> b!391205 (= lt!184637 (+!1026 lt!184639 lt!184635))))

(assert (=> b!391205 (= lt!184635 (tuple2!6499 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!391206 () Bool)

(declare-fun res!223965 () Bool)

(assert (=> b!391206 (=> (not res!223965) (not e!236958))))

(assert (=> b!391206 (= res!223965 (or (= (select (arr!11047 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11047 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!16059 () Bool)

(declare-fun mapRes!16059 () Bool)

(declare-fun tp!31704 () Bool)

(declare-fun e!236956 () Bool)

(assert (=> mapNonEmpty!16059 (= mapRes!16059 (and tp!31704 e!236956))))

(declare-fun mapValue!16059 () ValueCell!4481)

(declare-fun mapRest!16059 () (Array (_ BitVec 32) ValueCell!4481))

(declare-fun mapKey!16059 () (_ BitVec 32))

(assert (=> mapNonEmpty!16059 (= (arr!11048 _values!506) (store mapRest!16059 mapKey!16059 mapValue!16059))))

(declare-fun mapIsEmpty!16059 () Bool)

(assert (=> mapIsEmpty!16059 mapRes!16059))

(declare-fun b!391207 () Bool)

(declare-fun res!223969 () Bool)

(assert (=> b!391207 (=> (not res!223969) (not e!236958))))

(declare-datatypes ((List!6381 0))(
  ( (Nil!6378) (Cons!6377 (h!7233 (_ BitVec 64)) (t!11553 List!6381)) )
))
(declare-fun arrayNoDuplicates!0 (array!23177 (_ BitVec 32) List!6381) Bool)

(assert (=> b!391207 (= res!223969 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6378))))

(declare-fun res!223972 () Bool)

(assert (=> start!38038 (=> (not res!223972) (not e!236958))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38038 (= res!223972 (validMask!0 mask!970))))

(assert (=> start!38038 e!236958))

(declare-fun e!236961 () Bool)

(declare-fun array_inv!8100 (array!23179) Bool)

(assert (=> start!38038 (and (array_inv!8100 _values!506) e!236961)))

(assert (=> start!38038 tp!31703))

(assert (=> start!38038 true))

(assert (=> start!38038 tp_is_empty!9649))

(declare-fun array_inv!8101 (array!23177) Bool)

(assert (=> start!38038 (array_inv!8101 _keys!658)))

(declare-fun b!391198 () Bool)

(assert (=> b!391198 (= e!236961 (and e!236960 mapRes!16059))))

(declare-fun condMapEmpty!16059 () Bool)

(declare-fun mapDefault!16059 () ValueCell!4481)

