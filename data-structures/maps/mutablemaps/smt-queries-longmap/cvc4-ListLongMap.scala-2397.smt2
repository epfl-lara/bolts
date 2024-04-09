; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37946 () Bool)

(assert start!37946)

(declare-fun b_free!8951 () Bool)

(declare-fun b_next!8951 () Bool)

(assert (=> start!37946 (= b_free!8951 (not b_next!8951))))

(declare-fun tp!31616 () Bool)

(declare-fun b_and!16259 () Bool)

(assert (=> start!37946 (= tp!31616 b_and!16259)))

(declare-fun b!390012 () Bool)

(declare-fun res!223235 () Bool)

(declare-fun e!236273 () Bool)

(assert (=> b!390012 (=> (not res!223235) (not e!236273))))

(declare-datatypes ((array!23121 0))(
  ( (array!23122 (arr!11022 (Array (_ BitVec 32) (_ BitVec 64))) (size!11374 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23121)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23121 (_ BitVec 32)) Bool)

(assert (=> b!390012 (= res!223235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!390013 () Bool)

(declare-fun res!223241 () Bool)

(assert (=> b!390013 (=> (not res!223241) (not e!236273))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23121 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!390013 (= res!223241 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!390014 () Bool)

(declare-fun e!236275 () Bool)

(declare-fun e!236274 () Bool)

(assert (=> b!390014 (= e!236275 (not e!236274))))

(declare-fun res!223240 () Bool)

(assert (=> b!390014 (=> res!223240 e!236274)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!390014 (= res!223240 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13935 0))(
  ( (V!13936 (val!4856 Int)) )
))
(declare-datatypes ((tuple2!6478 0))(
  ( (tuple2!6479 (_1!3249 (_ BitVec 64)) (_2!3249 V!13935)) )
))
(declare-datatypes ((List!6361 0))(
  ( (Nil!6358) (Cons!6357 (h!7213 tuple2!6478) (t!11527 List!6361)) )
))
(declare-datatypes ((ListLongMap!5405 0))(
  ( (ListLongMap!5406 (toList!2718 List!6361)) )
))
(declare-fun lt!183829 () ListLongMap!5405)

(declare-datatypes ((ValueCell!4468 0))(
  ( (ValueCellFull!4468 (v!7065 V!13935)) (EmptyCell!4468) )
))
(declare-datatypes ((array!23123 0))(
  ( (array!23124 (arr!11023 (Array (_ BitVec 32) ValueCell!4468)) (size!11375 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23123)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13935)

(declare-fun minValue!472 () V!13935)

(declare-fun getCurrentListMap!2085 (array!23121 array!23123 (_ BitVec 32) (_ BitVec 32) V!13935 V!13935 (_ BitVec 32) Int) ListLongMap!5405)

(assert (=> b!390014 (= lt!183829 (getCurrentListMap!2085 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183827 () array!23121)

(declare-fun lt!183822 () ListLongMap!5405)

(declare-fun lt!183826 () array!23123)

(assert (=> b!390014 (= lt!183822 (getCurrentListMap!2085 lt!183827 lt!183826 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183821 () ListLongMap!5405)

(declare-fun lt!183819 () ListLongMap!5405)

(assert (=> b!390014 (and (= lt!183821 lt!183819) (= lt!183819 lt!183821))))

(declare-fun lt!183823 () ListLongMap!5405)

(declare-fun lt!183830 () tuple2!6478)

(declare-fun +!1016 (ListLongMap!5405 tuple2!6478) ListLongMap!5405)

(assert (=> b!390014 (= lt!183819 (+!1016 lt!183823 lt!183830))))

(declare-fun v!373 () V!13935)

(assert (=> b!390014 (= lt!183830 (tuple2!6479 k!778 v!373))))

(declare-datatypes ((Unit!11921 0))(
  ( (Unit!11922) )
))
(declare-fun lt!183832 () Unit!11921)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!242 (array!23121 array!23123 (_ BitVec 32) (_ BitVec 32) V!13935 V!13935 (_ BitVec 32) (_ BitVec 64) V!13935 (_ BitVec 32) Int) Unit!11921)

(assert (=> b!390014 (= lt!183832 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!242 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!947 (array!23121 array!23123 (_ BitVec 32) (_ BitVec 32) V!13935 V!13935 (_ BitVec 32) Int) ListLongMap!5405)

(assert (=> b!390014 (= lt!183821 (getCurrentListMapNoExtraKeys!947 lt!183827 lt!183826 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!390014 (= lt!183826 (array!23124 (store (arr!11023 _values!506) i!548 (ValueCellFull!4468 v!373)) (size!11375 _values!506)))))

(assert (=> b!390014 (= lt!183823 (getCurrentListMapNoExtraKeys!947 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!390015 () Bool)

(declare-fun res!223233 () Bool)

(assert (=> b!390015 (=> (not res!223233) (not e!236273))))

(declare-datatypes ((List!6362 0))(
  ( (Nil!6359) (Cons!6358 (h!7214 (_ BitVec 64)) (t!11528 List!6362)) )
))
(declare-fun arrayNoDuplicates!0 (array!23121 (_ BitVec 32) List!6362) Bool)

(assert (=> b!390015 (= res!223233 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6359))))

(declare-fun b!390016 () Bool)

(declare-fun e!236270 () Bool)

(declare-fun tp_is_empty!9623 () Bool)

(assert (=> b!390016 (= e!236270 tp_is_empty!9623)))

(declare-fun b!390017 () Bool)

(declare-fun e!236268 () Bool)

(assert (=> b!390017 (= e!236274 e!236268)))

(declare-fun res!223239 () Bool)

(assert (=> b!390017 (=> res!223239 e!236268)))

(assert (=> b!390017 (= res!223239 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!183824 () ListLongMap!5405)

(declare-fun lt!183833 () ListLongMap!5405)

(assert (=> b!390017 (= lt!183824 lt!183833)))

(declare-fun lt!183820 () ListLongMap!5405)

(assert (=> b!390017 (= lt!183833 (+!1016 lt!183820 lt!183830))))

(declare-fun lt!183835 () Unit!11921)

(declare-fun addCommutativeForDiffKeys!333 (ListLongMap!5405 (_ BitVec 64) V!13935 (_ BitVec 64) V!13935) Unit!11921)

(assert (=> b!390017 (= lt!183835 (addCommutativeForDiffKeys!333 lt!183823 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!183828 () tuple2!6478)

(assert (=> b!390017 (= lt!183822 (+!1016 lt!183824 lt!183828))))

(declare-fun lt!183825 () tuple2!6478)

(assert (=> b!390017 (= lt!183824 (+!1016 lt!183819 lt!183825))))

(declare-fun lt!183834 () ListLongMap!5405)

(assert (=> b!390017 (= lt!183829 lt!183834)))

(assert (=> b!390017 (= lt!183834 (+!1016 lt!183820 lt!183828))))

(assert (=> b!390017 (= lt!183820 (+!1016 lt!183823 lt!183825))))

(assert (=> b!390017 (= lt!183822 (+!1016 (+!1016 lt!183821 lt!183825) lt!183828))))

(assert (=> b!390017 (= lt!183828 (tuple2!6479 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!390017 (= lt!183825 (tuple2!6479 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!390018 () Bool)

(declare-fun res!223243 () Bool)

(assert (=> b!390018 (=> (not res!223243) (not e!236273))))

(assert (=> b!390018 (= res!223243 (or (= (select (arr!11022 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11022 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!390019 () Bool)

(declare-fun res!223238 () Bool)

(assert (=> b!390019 (=> (not res!223238) (not e!236273))))

(assert (=> b!390019 (= res!223238 (and (= (size!11375 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11374 _keys!658) (size!11375 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!390020 () Bool)

(assert (=> b!390020 (= e!236268 (= (+!1016 lt!183829 lt!183830) lt!183822))))

(assert (=> b!390020 (= (+!1016 lt!183833 lt!183828) (+!1016 lt!183834 lt!183830))))

(declare-fun lt!183831 () Unit!11921)

(assert (=> b!390020 (= lt!183831 (addCommutativeForDiffKeys!333 lt!183820 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!390022 () Bool)

(assert (=> b!390022 (= e!236273 e!236275)))

(declare-fun res!223237 () Bool)

(assert (=> b!390022 (=> (not res!223237) (not e!236275))))

(assert (=> b!390022 (= res!223237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!183827 mask!970))))

(assert (=> b!390022 (= lt!183827 (array!23122 (store (arr!11022 _keys!658) i!548 k!778) (size!11374 _keys!658)))))

(declare-fun b!390023 () Bool)

(declare-fun e!236272 () Bool)

(assert (=> b!390023 (= e!236272 tp_is_empty!9623)))

(declare-fun b!390024 () Bool)

(declare-fun res!223232 () Bool)

(assert (=> b!390024 (=> (not res!223232) (not e!236273))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!390024 (= res!223232 (validKeyInArray!0 k!778))))

(declare-fun b!390025 () Bool)

(declare-fun res!223236 () Bool)

(assert (=> b!390025 (=> (not res!223236) (not e!236273))))

(assert (=> b!390025 (= res!223236 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11374 _keys!658))))))

(declare-fun mapNonEmpty!16011 () Bool)

(declare-fun mapRes!16011 () Bool)

(declare-fun tp!31617 () Bool)

(assert (=> mapNonEmpty!16011 (= mapRes!16011 (and tp!31617 e!236272))))

(declare-fun mapRest!16011 () (Array (_ BitVec 32) ValueCell!4468))

(declare-fun mapValue!16011 () ValueCell!4468)

(declare-fun mapKey!16011 () (_ BitVec 32))

(assert (=> mapNonEmpty!16011 (= (arr!11023 _values!506) (store mapRest!16011 mapKey!16011 mapValue!16011))))

(declare-fun res!223242 () Bool)

(assert (=> start!37946 (=> (not res!223242) (not e!236273))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37946 (= res!223242 (validMask!0 mask!970))))

(assert (=> start!37946 e!236273))

(declare-fun e!236269 () Bool)

(declare-fun array_inv!8082 (array!23123) Bool)

(assert (=> start!37946 (and (array_inv!8082 _values!506) e!236269)))

(assert (=> start!37946 tp!31616))

(assert (=> start!37946 true))

(assert (=> start!37946 tp_is_empty!9623))

(declare-fun array_inv!8083 (array!23121) Bool)

(assert (=> start!37946 (array_inv!8083 _keys!658)))

(declare-fun b!390021 () Bool)

(assert (=> b!390021 (= e!236269 (and e!236270 mapRes!16011))))

(declare-fun condMapEmpty!16011 () Bool)

(declare-fun mapDefault!16011 () ValueCell!4468)

