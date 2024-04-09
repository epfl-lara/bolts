; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37900 () Bool)

(assert start!37900)

(declare-fun b_free!8929 () Bool)

(declare-fun b_next!8929 () Bool)

(assert (=> start!37900 (= b_free!8929 (not b_next!8929))))

(declare-fun tp!31547 () Bool)

(declare-fun b_and!16225 () Bool)

(assert (=> start!37900 (= tp!31547 b_and!16225)))

(declare-fun b!389311 () Bool)

(declare-fun res!222747 () Bool)

(declare-fun e!235880 () Bool)

(assert (=> b!389311 (=> (not res!222747) (not e!235880))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13907 0))(
  ( (V!13908 (val!4845 Int)) )
))
(declare-datatypes ((ValueCell!4457 0))(
  ( (ValueCellFull!4457 (v!7050 V!13907)) (EmptyCell!4457) )
))
(declare-datatypes ((array!23075 0))(
  ( (array!23076 (arr!11000 (Array (_ BitVec 32) ValueCell!4457)) (size!11352 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23075)

(declare-datatypes ((array!23077 0))(
  ( (array!23078 (arr!11001 (Array (_ BitVec 32) (_ BitVec 64))) (size!11353 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23077)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!389311 (= res!222747 (and (= (size!11352 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11353 _keys!658) (size!11352 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!15975 () Bool)

(declare-fun mapRes!15975 () Bool)

(assert (=> mapIsEmpty!15975 mapRes!15975))

(declare-fun b!389312 () Bool)

(declare-fun e!235881 () Bool)

(declare-fun e!235875 () Bool)

(assert (=> b!389312 (= e!235881 (not e!235875))))

(declare-fun res!222751 () Bool)

(assert (=> b!389312 (=> res!222751 e!235875)))

(assert (=> b!389312 (= res!222751 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13907)

(declare-datatypes ((tuple2!6462 0))(
  ( (tuple2!6463 (_1!3241 (_ BitVec 64)) (_2!3241 V!13907)) )
))
(declare-datatypes ((List!6344 0))(
  ( (Nil!6341) (Cons!6340 (h!7196 tuple2!6462) (t!11508 List!6344)) )
))
(declare-datatypes ((ListLongMap!5389 0))(
  ( (ListLongMap!5390 (toList!2710 List!6344)) )
))
(declare-fun lt!183110 () ListLongMap!5389)

(declare-fun minValue!472 () V!13907)

(declare-fun getCurrentListMap!2078 (array!23077 array!23075 (_ BitVec 32) (_ BitVec 32) V!13907 V!13907 (_ BitVec 32) Int) ListLongMap!5389)

(assert (=> b!389312 (= lt!183110 (getCurrentListMap!2078 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183108 () array!23077)

(declare-fun lt!183114 () ListLongMap!5389)

(declare-fun lt!183113 () array!23075)

(assert (=> b!389312 (= lt!183114 (getCurrentListMap!2078 lt!183108 lt!183113 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183116 () ListLongMap!5389)

(declare-fun lt!183117 () ListLongMap!5389)

(assert (=> b!389312 (and (= lt!183116 lt!183117) (= lt!183117 lt!183116))))

(declare-fun lt!183106 () ListLongMap!5389)

(declare-fun lt!183107 () tuple2!6462)

(declare-fun +!1008 (ListLongMap!5389 tuple2!6462) ListLongMap!5389)

(assert (=> b!389312 (= lt!183117 (+!1008 lt!183106 lt!183107))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun v!373 () V!13907)

(assert (=> b!389312 (= lt!183107 (tuple2!6463 k!778 v!373))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((Unit!11903 0))(
  ( (Unit!11904) )
))
(declare-fun lt!183111 () Unit!11903)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!235 (array!23077 array!23075 (_ BitVec 32) (_ BitVec 32) V!13907 V!13907 (_ BitVec 32) (_ BitVec 64) V!13907 (_ BitVec 32) Int) Unit!11903)

(assert (=> b!389312 (= lt!183111 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!235 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!940 (array!23077 array!23075 (_ BitVec 32) (_ BitVec 32) V!13907 V!13907 (_ BitVec 32) Int) ListLongMap!5389)

(assert (=> b!389312 (= lt!183116 (getCurrentListMapNoExtraKeys!940 lt!183108 lt!183113 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!389312 (= lt!183113 (array!23076 (store (arr!11000 _values!506) i!548 (ValueCellFull!4457 v!373)) (size!11352 _values!506)))))

(assert (=> b!389312 (= lt!183106 (getCurrentListMapNoExtraKeys!940 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!389313 () Bool)

(declare-fun res!222748 () Bool)

(assert (=> b!389313 (=> (not res!222748) (not e!235880))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23077 (_ BitVec 32)) Bool)

(assert (=> b!389313 (= res!222748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!389314 () Bool)

(declare-fun res!222745 () Bool)

(assert (=> b!389314 (=> (not res!222745) (not e!235880))))

(declare-datatypes ((List!6345 0))(
  ( (Nil!6342) (Cons!6341 (h!7197 (_ BitVec 64)) (t!11509 List!6345)) )
))
(declare-fun arrayNoDuplicates!0 (array!23077 (_ BitVec 32) List!6345) Bool)

(assert (=> b!389314 (= res!222745 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6342))))

(declare-fun b!389315 () Bool)

(declare-fun e!235877 () Bool)

(declare-fun tp_is_empty!9601 () Bool)

(assert (=> b!389315 (= e!235877 tp_is_empty!9601)))

(declare-fun res!222743 () Bool)

(assert (=> start!37900 (=> (not res!222743) (not e!235880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37900 (= res!222743 (validMask!0 mask!970))))

(assert (=> start!37900 e!235880))

(declare-fun e!235879 () Bool)

(declare-fun array_inv!8064 (array!23075) Bool)

(assert (=> start!37900 (and (array_inv!8064 _values!506) e!235879)))

(assert (=> start!37900 tp!31547))

(assert (=> start!37900 true))

(assert (=> start!37900 tp_is_empty!9601))

(declare-fun array_inv!8065 (array!23077) Bool)

(assert (=> start!37900 (array_inv!8065 _keys!658)))

(declare-fun b!389316 () Bool)

(declare-fun e!235876 () Bool)

(assert (=> b!389316 (= e!235876 tp_is_empty!9601)))

(declare-fun b!389317 () Bool)

(declare-fun res!222742 () Bool)

(assert (=> b!389317 (=> (not res!222742) (not e!235880))))

(assert (=> b!389317 (= res!222742 (or (= (select (arr!11001 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11001 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!15975 () Bool)

(declare-fun tp!31548 () Bool)

(assert (=> mapNonEmpty!15975 (= mapRes!15975 (and tp!31548 e!235877))))

(declare-fun mapValue!15975 () ValueCell!4457)

(declare-fun mapKey!15975 () (_ BitVec 32))

(declare-fun mapRest!15975 () (Array (_ BitVec 32) ValueCell!4457))

(assert (=> mapNonEmpty!15975 (= (arr!11000 _values!506) (store mapRest!15975 mapKey!15975 mapValue!15975))))

(declare-fun b!389318 () Bool)

(declare-fun res!222746 () Bool)

(assert (=> b!389318 (=> (not res!222746) (not e!235880))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!389318 (= res!222746 (validKeyInArray!0 k!778))))

(declare-fun b!389319 () Bool)

(assert (=> b!389319 (= e!235875 (not (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!183115 () ListLongMap!5389)

(declare-fun lt!183105 () ListLongMap!5389)

(assert (=> b!389319 (= lt!183115 (+!1008 lt!183105 lt!183107))))

(declare-fun lt!183112 () Unit!11903)

(declare-fun addCommutativeForDiffKeys!325 (ListLongMap!5389 (_ BitVec 64) V!13907 (_ BitVec 64) V!13907) Unit!11903)

(assert (=> b!389319 (= lt!183112 (addCommutativeForDiffKeys!325 lt!183106 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!183118 () tuple2!6462)

(assert (=> b!389319 (= lt!183114 (+!1008 lt!183115 lt!183118))))

(declare-fun lt!183109 () tuple2!6462)

(assert (=> b!389319 (= lt!183115 (+!1008 lt!183117 lt!183109))))

(assert (=> b!389319 (= lt!183110 (+!1008 lt!183105 lt!183118))))

(assert (=> b!389319 (= lt!183105 (+!1008 lt!183106 lt!183109))))

(assert (=> b!389319 (= lt!183114 (+!1008 (+!1008 lt!183116 lt!183109) lt!183118))))

(assert (=> b!389319 (= lt!183118 (tuple2!6463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!389319 (= lt!183109 (tuple2!6463 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!389320 () Bool)

(assert (=> b!389320 (= e!235880 e!235881)))

(declare-fun res!222750 () Bool)

(assert (=> b!389320 (=> (not res!222750) (not e!235881))))

(assert (=> b!389320 (= res!222750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!183108 mask!970))))

(assert (=> b!389320 (= lt!183108 (array!23078 (store (arr!11001 _keys!658) i!548 k!778) (size!11353 _keys!658)))))

(declare-fun b!389321 () Bool)

(declare-fun res!222749 () Bool)

(assert (=> b!389321 (=> (not res!222749) (not e!235880))))

(assert (=> b!389321 (= res!222749 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11353 _keys!658))))))

(declare-fun b!389322 () Bool)

(declare-fun res!222752 () Bool)

(assert (=> b!389322 (=> (not res!222752) (not e!235881))))

(assert (=> b!389322 (= res!222752 (arrayNoDuplicates!0 lt!183108 #b00000000000000000000000000000000 Nil!6342))))

(declare-fun b!389323 () Bool)

(assert (=> b!389323 (= e!235879 (and e!235876 mapRes!15975))))

(declare-fun condMapEmpty!15975 () Bool)

(declare-fun mapDefault!15975 () ValueCell!4457)

