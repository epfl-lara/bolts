; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38162 () Bool)

(assert start!38162)

(declare-fun b_free!9035 () Bool)

(declare-fun b_next!9035 () Bool)

(assert (=> start!38162 (= b_free!9035 (not b_next!9035))))

(declare-fun tp!31886 () Bool)

(declare-fun b_and!16415 () Bool)

(assert (=> start!38162 (= tp!31886 b_and!16415)))

(declare-fun b!393104 () Bool)

(declare-fun res!225276 () Bool)

(declare-fun e!238031 () Bool)

(assert (=> b!393104 (=> (not res!225276) (not e!238031))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!393104 (= res!225276 (validKeyInArray!0 k!778))))

(declare-fun b!393105 () Bool)

(declare-fun e!238034 () Bool)

(declare-fun e!238028 () Bool)

(assert (=> b!393105 (= e!238034 e!238028)))

(declare-fun res!225281 () Bool)

(assert (=> b!393105 (=> res!225281 e!238028)))

(assert (=> b!393105 (= res!225281 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!14047 0))(
  ( (V!14048 (val!4898 Int)) )
))
(declare-datatypes ((tuple2!6544 0))(
  ( (tuple2!6545 (_1!3282 (_ BitVec 64)) (_2!3282 V!14047)) )
))
(declare-datatypes ((List!6425 0))(
  ( (Nil!6422) (Cons!6421 (h!7277 tuple2!6544) (t!11603 List!6425)) )
))
(declare-datatypes ((ListLongMap!5471 0))(
  ( (ListLongMap!5472 (toList!2751 List!6425)) )
))
(declare-fun lt!186070 () ListLongMap!5471)

(declare-fun lt!186076 () ListLongMap!5471)

(assert (=> b!393105 (= lt!186070 lt!186076)))

(declare-fun lt!186073 () ListLongMap!5471)

(declare-fun lt!186068 () tuple2!6544)

(declare-fun +!1049 (ListLongMap!5471 tuple2!6544) ListLongMap!5471)

(assert (=> b!393105 (= lt!186076 (+!1049 lt!186073 lt!186068))))

(declare-fun lt!186067 () ListLongMap!5471)

(declare-fun lt!186069 () ListLongMap!5471)

(assert (=> b!393105 (= lt!186067 lt!186069)))

(declare-fun lt!186065 () ListLongMap!5471)

(assert (=> b!393105 (= lt!186069 (+!1049 lt!186065 lt!186068))))

(declare-fun lt!186075 () ListLongMap!5471)

(assert (=> b!393105 (= lt!186067 (+!1049 lt!186075 lt!186068))))

(declare-fun minValue!472 () V!14047)

(assert (=> b!393105 (= lt!186068 (tuple2!6545 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!393106 () Bool)

(declare-fun res!225284 () Bool)

(assert (=> b!393106 (=> (not res!225284) (not e!238031))))

(declare-datatypes ((array!23295 0))(
  ( (array!23296 (arr!11103 (Array (_ BitVec 32) (_ BitVec 64))) (size!11455 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23295)

(declare-datatypes ((List!6426 0))(
  ( (Nil!6423) (Cons!6422 (h!7278 (_ BitVec 64)) (t!11604 List!6426)) )
))
(declare-fun arrayNoDuplicates!0 (array!23295 (_ BitVec 32) List!6426) Bool)

(assert (=> b!393106 (= res!225284 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6423))))

(declare-fun b!393107 () Bool)

(declare-fun e!238029 () Bool)

(declare-fun tp_is_empty!9707 () Bool)

(assert (=> b!393107 (= e!238029 tp_is_empty!9707)))

(declare-fun b!393108 () Bool)

(declare-fun res!225285 () Bool)

(assert (=> b!393108 (=> (not res!225285) (not e!238031))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!393108 (= res!225285 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11455 _keys!658))))))

(declare-fun b!393109 () Bool)

(declare-fun e!238033 () Bool)

(assert (=> b!393109 (= e!238031 e!238033)))

(declare-fun res!225274 () Bool)

(assert (=> b!393109 (=> (not res!225274) (not e!238033))))

(declare-fun lt!186072 () array!23295)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23295 (_ BitVec 32)) Bool)

(assert (=> b!393109 (= res!225274 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!186072 mask!970))))

(assert (=> b!393109 (= lt!186072 (array!23296 (store (arr!11103 _keys!658) i!548 k!778) (size!11455 _keys!658)))))

(declare-fun b!393110 () Bool)

(declare-fun e!238027 () Bool)

(assert (=> b!393110 (= e!238027 tp_is_empty!9707)))

(declare-fun b!393111 () Bool)

(declare-fun res!225283 () Bool)

(assert (=> b!393111 (=> (not res!225283) (not e!238031))))

(assert (=> b!393111 (= res!225283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!393112 () Bool)

(assert (=> b!393112 (= e!238033 (not e!238034))))

(declare-fun res!225280 () Bool)

(assert (=> b!393112 (=> res!225280 e!238034)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!393112 (= res!225280 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!14047)

(declare-datatypes ((ValueCell!4510 0))(
  ( (ValueCellFull!4510 (v!7131 V!14047)) (EmptyCell!4510) )
))
(declare-datatypes ((array!23297 0))(
  ( (array!23298 (arr!11104 (Array (_ BitVec 32) ValueCell!4510)) (size!11456 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23297)

(declare-fun getCurrentListMap!2111 (array!23295 array!23297 (_ BitVec 32) (_ BitVec 32) V!14047 V!14047 (_ BitVec 32) Int) ListLongMap!5471)

(assert (=> b!393112 (= lt!186070 (getCurrentListMap!2111 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186071 () array!23297)

(assert (=> b!393112 (= lt!186067 (getCurrentListMap!2111 lt!186072 lt!186071 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!393112 (and (= lt!186075 lt!186065) (= lt!186065 lt!186075))))

(declare-fun lt!186077 () tuple2!6544)

(assert (=> b!393112 (= lt!186065 (+!1049 lt!186073 lt!186077))))

(declare-fun v!373 () V!14047)

(assert (=> b!393112 (= lt!186077 (tuple2!6545 k!778 v!373))))

(declare-datatypes ((Unit!11993 0))(
  ( (Unit!11994) )
))
(declare-fun lt!186074 () Unit!11993)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!268 (array!23295 array!23297 (_ BitVec 32) (_ BitVec 32) V!14047 V!14047 (_ BitVec 32) (_ BitVec 64) V!14047 (_ BitVec 32) Int) Unit!11993)

(assert (=> b!393112 (= lt!186074 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!268 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!973 (array!23295 array!23297 (_ BitVec 32) (_ BitVec 32) V!14047 V!14047 (_ BitVec 32) Int) ListLongMap!5471)

(assert (=> b!393112 (= lt!186075 (getCurrentListMapNoExtraKeys!973 lt!186072 lt!186071 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!393112 (= lt!186071 (array!23298 (store (arr!11104 _values!506) i!548 (ValueCellFull!4510 v!373)) (size!11456 _values!506)))))

(assert (=> b!393112 (= lt!186073 (getCurrentListMapNoExtraKeys!973 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!393113 () Bool)

(declare-fun res!225275 () Bool)

(assert (=> b!393113 (=> (not res!225275) (not e!238031))))

(declare-fun arrayContainsKey!0 (array!23295 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!393113 (= res!225275 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!393114 () Bool)

(assert (=> b!393114 (= e!238028 (= (+!1049 lt!186070 lt!186077) lt!186067))))

(assert (=> b!393114 (= lt!186069 (+!1049 lt!186076 lt!186077))))

(declare-fun lt!186066 () Unit!11993)

(declare-fun addCommutativeForDiffKeys!345 (ListLongMap!5471 (_ BitVec 64) V!14047 (_ BitVec 64) V!14047) Unit!11993)

(assert (=> b!393114 (= lt!186066 (addCommutativeForDiffKeys!345 lt!186073 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun mapNonEmpty!16155 () Bool)

(declare-fun mapRes!16155 () Bool)

(declare-fun tp!31887 () Bool)

(assert (=> mapNonEmpty!16155 (= mapRes!16155 (and tp!31887 e!238029))))

(declare-fun mapRest!16155 () (Array (_ BitVec 32) ValueCell!4510))

(declare-fun mapValue!16155 () ValueCell!4510)

(declare-fun mapKey!16155 () (_ BitVec 32))

(assert (=> mapNonEmpty!16155 (= (arr!11104 _values!506) (store mapRest!16155 mapKey!16155 mapValue!16155))))

(declare-fun b!393115 () Bool)

(declare-fun res!225277 () Bool)

(assert (=> b!393115 (=> (not res!225277) (not e!238031))))

(assert (=> b!393115 (= res!225277 (or (= (select (arr!11103 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11103 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!393116 () Bool)

(declare-fun res!225279 () Bool)

(assert (=> b!393116 (=> (not res!225279) (not e!238031))))

(assert (=> b!393116 (= res!225279 (and (= (size!11456 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11455 _keys!658) (size!11456 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!16155 () Bool)

(assert (=> mapIsEmpty!16155 mapRes!16155))

(declare-fun res!225278 () Bool)

(assert (=> start!38162 (=> (not res!225278) (not e!238031))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38162 (= res!225278 (validMask!0 mask!970))))

(assert (=> start!38162 e!238031))

(declare-fun e!238032 () Bool)

(declare-fun array_inv!8138 (array!23297) Bool)

(assert (=> start!38162 (and (array_inv!8138 _values!506) e!238032)))

(assert (=> start!38162 tp!31886))

(assert (=> start!38162 true))

(assert (=> start!38162 tp_is_empty!9707))

(declare-fun array_inv!8139 (array!23295) Bool)

(assert (=> start!38162 (array_inv!8139 _keys!658)))

(declare-fun b!393117 () Bool)

(assert (=> b!393117 (= e!238032 (and e!238027 mapRes!16155))))

(declare-fun condMapEmpty!16155 () Bool)

(declare-fun mapDefault!16155 () ValueCell!4510)

