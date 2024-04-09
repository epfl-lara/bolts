; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38014 () Bool)

(assert start!38014)

(declare-fun b_free!8975 () Bool)

(declare-fun b_next!8975 () Bool)

(assert (=> start!38014 (= b_free!8975 (not b_next!8975))))

(declare-fun tp!31695 () Bool)

(declare-fun b_and!16307 () Bool)

(assert (=> start!38014 (= tp!31695 b_and!16307)))

(declare-fun b!390946 () Bool)

(declare-fun res!223844 () Bool)

(declare-fun e!236805 () Bool)

(assert (=> b!390946 (=> (not res!223844) (not e!236805))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!390946 (= res!223844 (validKeyInArray!0 k!778))))

(declare-fun b!390947 () Bool)

(declare-fun e!236802 () Bool)

(declare-datatypes ((V!13967 0))(
  ( (V!13968 (val!4868 Int)) )
))
(declare-datatypes ((tuple2!6496 0))(
  ( (tuple2!6497 (_1!3258 (_ BitVec 64)) (_2!3258 V!13967)) )
))
(declare-datatypes ((List!6378 0))(
  ( (Nil!6375) (Cons!6374 (h!7230 tuple2!6496) (t!11548 List!6378)) )
))
(declare-datatypes ((ListLongMap!5423 0))(
  ( (ListLongMap!5424 (toList!2727 List!6378)) )
))
(declare-fun lt!184448 () ListLongMap!5423)

(declare-fun lt!184444 () tuple2!6496)

(declare-fun lt!184446 () ListLongMap!5423)

(declare-fun +!1025 (ListLongMap!5423 tuple2!6496) ListLongMap!5423)

(assert (=> b!390947 (= e!236802 (= lt!184448 (+!1025 lt!184446 lt!184444)))))

(declare-fun b!390948 () Bool)

(declare-fun e!236801 () Bool)

(declare-fun e!236799 () Bool)

(assert (=> b!390948 (= e!236801 (not e!236799))))

(declare-fun res!223838 () Bool)

(assert (=> b!390948 (=> res!223838 e!236799)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!390948 (= res!223838 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((ValueCell!4480 0))(
  ( (ValueCellFull!4480 (v!7085 V!13967)) (EmptyCell!4480) )
))
(declare-datatypes ((array!23171 0))(
  ( (array!23172 (arr!11045 (Array (_ BitVec 32) ValueCell!4480)) (size!11397 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23171)

(declare-fun lt!184447 () ListLongMap!5423)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13967)

(declare-datatypes ((array!23173 0))(
  ( (array!23174 (arr!11046 (Array (_ BitVec 32) (_ BitVec 64))) (size!11398 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23173)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13967)

(declare-fun getCurrentListMap!2093 (array!23173 array!23171 (_ BitVec 32) (_ BitVec 32) V!13967 V!13967 (_ BitVec 32) Int) ListLongMap!5423)

(assert (=> b!390948 (= lt!184447 (getCurrentListMap!2093 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184445 () array!23171)

(declare-fun lt!184443 () array!23173)

(assert (=> b!390948 (= lt!184448 (getCurrentListMap!2093 lt!184443 lt!184445 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184440 () ListLongMap!5423)

(assert (=> b!390948 (and (= lt!184440 lt!184446) (= lt!184446 lt!184440))))

(declare-fun v!373 () V!13967)

(declare-fun lt!184441 () ListLongMap!5423)

(assert (=> b!390948 (= lt!184446 (+!1025 lt!184441 (tuple2!6497 k!778 v!373)))))

(declare-datatypes ((Unit!11941 0))(
  ( (Unit!11942) )
))
(declare-fun lt!184442 () Unit!11941)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!250 (array!23173 array!23171 (_ BitVec 32) (_ BitVec 32) V!13967 V!13967 (_ BitVec 32) (_ BitVec 64) V!13967 (_ BitVec 32) Int) Unit!11941)

(assert (=> b!390948 (= lt!184442 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!250 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!955 (array!23173 array!23171 (_ BitVec 32) (_ BitVec 32) V!13967 V!13967 (_ BitVec 32) Int) ListLongMap!5423)

(assert (=> b!390948 (= lt!184440 (getCurrentListMapNoExtraKeys!955 lt!184443 lt!184445 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!390948 (= lt!184445 (array!23172 (store (arr!11045 _values!506) i!548 (ValueCellFull!4480 v!373)) (size!11397 _values!506)))))

(assert (=> b!390948 (= lt!184441 (getCurrentListMapNoExtraKeys!955 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!390949 () Bool)

(declare-fun res!223839 () Bool)

(assert (=> b!390949 (=> (not res!223839) (not e!236805))))

(declare-datatypes ((List!6379 0))(
  ( (Nil!6376) (Cons!6375 (h!7231 (_ BitVec 64)) (t!11549 List!6379)) )
))
(declare-fun arrayNoDuplicates!0 (array!23173 (_ BitVec 32) List!6379) Bool)

(assert (=> b!390949 (= res!223839 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6376))))

(declare-fun mapIsEmpty!16053 () Bool)

(declare-fun mapRes!16053 () Bool)

(assert (=> mapIsEmpty!16053 mapRes!16053))

(declare-fun mapNonEmpty!16053 () Bool)

(declare-fun tp!31694 () Bool)

(declare-fun e!236800 () Bool)

(assert (=> mapNonEmpty!16053 (= mapRes!16053 (and tp!31694 e!236800))))

(declare-fun mapKey!16053 () (_ BitVec 32))

(declare-fun mapValue!16053 () ValueCell!4480)

(declare-fun mapRest!16053 () (Array (_ BitVec 32) ValueCell!4480))

(assert (=> mapNonEmpty!16053 (= (arr!11045 _values!506) (store mapRest!16053 mapKey!16053 mapValue!16053))))

(declare-fun b!390950 () Bool)

(declare-fun res!223845 () Bool)

(assert (=> b!390950 (=> (not res!223845) (not e!236805))))

(declare-fun arrayContainsKey!0 (array!23173 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!390950 (= res!223845 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!390951 () Bool)

(declare-fun res!223841 () Bool)

(assert (=> b!390951 (=> (not res!223841) (not e!236805))))

(assert (=> b!390951 (= res!223841 (or (= (select (arr!11046 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11046 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!390952 () Bool)

(declare-fun res!223840 () Bool)

(assert (=> b!390952 (=> (not res!223840) (not e!236805))))

(assert (=> b!390952 (= res!223840 (and (= (size!11397 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11398 _keys!658) (size!11397 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!390953 () Bool)

(declare-fun res!223834 () Bool)

(assert (=> b!390953 (=> (not res!223834) (not e!236802))))

(assert (=> b!390953 (= res!223834 (= lt!184447 (+!1025 lt!184441 lt!184444)))))

(declare-fun b!390954 () Bool)

(declare-fun res!223842 () Bool)

(assert (=> b!390954 (=> (not res!223842) (not e!236805))))

(assert (=> b!390954 (= res!223842 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11398 _keys!658))))))

(declare-fun b!390955 () Bool)

(declare-fun e!236806 () Bool)

(declare-fun e!236803 () Bool)

(assert (=> b!390955 (= e!236806 (and e!236803 mapRes!16053))))

(declare-fun condMapEmpty!16053 () Bool)

(declare-fun mapDefault!16053 () ValueCell!4480)

