; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38088 () Bool)

(assert start!38088)

(declare-fun b_free!9005 () Bool)

(declare-fun b_next!9005 () Bool)

(assert (=> start!38088 (= b_free!9005 (not b_next!9005))))

(declare-fun tp!31791 () Bool)

(declare-fun b_and!16361 () Bool)

(assert (=> start!38088 (= tp!31791 b_and!16361)))

(declare-fun b!392011 () Bool)

(declare-fun res!224541 () Bool)

(declare-fun e!237408 () Bool)

(assert (=> b!392011 (=> (not res!224541) (not e!237408))))

(declare-datatypes ((array!23231 0))(
  ( (array!23232 (arr!11073 (Array (_ BitVec 32) (_ BitVec 64))) (size!11425 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23231)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!392011 (= res!224541 (or (= (select (arr!11073 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11073 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!392012 () Bool)

(declare-fun res!224544 () Bool)

(assert (=> b!392012 (=> (not res!224544) (not e!237408))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23231 (_ BitVec 32)) Bool)

(assert (=> b!392012 (= res!224544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!392013 () Bool)

(declare-fun e!237409 () Bool)

(declare-fun tp_is_empty!9677 () Bool)

(assert (=> b!392013 (= e!237409 tp_is_empty!9677)))

(declare-fun b!392014 () Bool)

(declare-fun res!224549 () Bool)

(declare-fun e!237407 () Bool)

(assert (=> b!392014 (=> (not res!224549) (not e!237407))))

(declare-fun lt!185248 () array!23231)

(declare-datatypes ((List!6400 0))(
  ( (Nil!6397) (Cons!6396 (h!7252 (_ BitVec 64)) (t!11574 List!6400)) )
))
(declare-fun arrayNoDuplicates!0 (array!23231 (_ BitVec 32) List!6400) Bool)

(assert (=> b!392014 (= res!224549 (arrayNoDuplicates!0 lt!185248 #b00000000000000000000000000000000 Nil!6397))))

(declare-fun res!224545 () Bool)

(assert (=> start!38088 (=> (not res!224545) (not e!237408))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38088 (= res!224545 (validMask!0 mask!970))))

(assert (=> start!38088 e!237408))

(declare-datatypes ((V!14007 0))(
  ( (V!14008 (val!4883 Int)) )
))
(declare-datatypes ((ValueCell!4495 0))(
  ( (ValueCellFull!4495 (v!7108 V!14007)) (EmptyCell!4495) )
))
(declare-datatypes ((array!23233 0))(
  ( (array!23234 (arr!11074 (Array (_ BitVec 32) ValueCell!4495)) (size!11426 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23233)

(declare-fun e!237406 () Bool)

(declare-fun array_inv!8118 (array!23233) Bool)

(assert (=> start!38088 (and (array_inv!8118 _values!506) e!237406)))

(assert (=> start!38088 tp!31791))

(assert (=> start!38088 true))

(assert (=> start!38088 tp_is_empty!9677))

(declare-fun array_inv!8119 (array!23231) Bool)

(assert (=> start!38088 (array_inv!8119 _keys!658)))

(declare-fun b!392015 () Bool)

(assert (=> b!392015 (= e!237408 e!237407)))

(declare-fun res!224548 () Bool)

(assert (=> b!392015 (=> (not res!224548) (not e!237407))))

(assert (=> b!392015 (= res!224548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!185248 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!392015 (= lt!185248 (array!23232 (store (arr!11073 _keys!658) i!548 k!778) (size!11425 _keys!658)))))

(declare-fun b!392016 () Bool)

(declare-fun res!224540 () Bool)

(assert (=> b!392016 (=> (not res!224540) (not e!237408))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!392016 (= res!224540 (validKeyInArray!0 k!778))))

(declare-fun b!392017 () Bool)

(declare-fun res!224550 () Bool)

(assert (=> b!392017 (=> (not res!224550) (not e!237408))))

(assert (=> b!392017 (= res!224550 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11425 _keys!658))))))

(declare-fun mapIsEmpty!16104 () Bool)

(declare-fun mapRes!16104 () Bool)

(assert (=> mapIsEmpty!16104 mapRes!16104))

(declare-fun b!392018 () Bool)

(declare-fun res!224543 () Bool)

(assert (=> b!392018 (=> (not res!224543) (not e!237408))))

(declare-fun arrayContainsKey!0 (array!23231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!392018 (= res!224543 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!6516 0))(
  ( (tuple2!6517 (_1!3268 (_ BitVec 64)) (_2!3268 V!14007)) )
))
(declare-datatypes ((List!6401 0))(
  ( (Nil!6398) (Cons!6397 (h!7253 tuple2!6516) (t!11575 List!6401)) )
))
(declare-datatypes ((ListLongMap!5443 0))(
  ( (ListLongMap!5444 (toList!2737 List!6401)) )
))
(declare-fun lt!185253 () ListLongMap!5443)

(declare-fun b!392019 () Bool)

(declare-fun lt!185250 () ListLongMap!5443)

(declare-fun lt!185252 () tuple2!6516)

(declare-fun e!237405 () Bool)

(declare-fun +!1035 (ListLongMap!5443 tuple2!6516) ListLongMap!5443)

(assert (=> b!392019 (= e!237405 (= lt!185253 (+!1035 lt!185250 lt!185252)))))

(declare-fun lt!185251 () ListLongMap!5443)

(assert (=> b!392019 (= lt!185253 (+!1035 lt!185251 lt!185252))))

(declare-fun minValue!472 () V!14007)

(assert (=> b!392019 (= lt!185252 (tuple2!6517 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!392020 () Bool)

(declare-fun res!224542 () Bool)

(assert (=> b!392020 (=> (not res!224542) (not e!237408))))

(assert (=> b!392020 (= res!224542 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6397))))

(declare-fun b!392021 () Bool)

(assert (=> b!392021 (= e!237407 (not e!237405))))

(declare-fun res!224547 () Bool)

(assert (=> b!392021 (=> res!224547 e!237405)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!392021 (= res!224547 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!185249 () ListLongMap!5443)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!14007)

(declare-fun getCurrentListMap!2102 (array!23231 array!23233 (_ BitVec 32) (_ BitVec 32) V!14007 V!14007 (_ BitVec 32) Int) ListLongMap!5443)

(assert (=> b!392021 (= lt!185249 (getCurrentListMap!2102 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185246 () array!23233)

(assert (=> b!392021 (= lt!185253 (getCurrentListMap!2102 lt!185248 lt!185246 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!392021 (and (= lt!185251 lt!185250) (= lt!185250 lt!185251))))

(declare-fun v!373 () V!14007)

(declare-fun lt!185247 () ListLongMap!5443)

(assert (=> b!392021 (= lt!185250 (+!1035 lt!185247 (tuple2!6517 k!778 v!373)))))

(declare-datatypes ((Unit!11963 0))(
  ( (Unit!11964) )
))
(declare-fun lt!185254 () Unit!11963)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!259 (array!23231 array!23233 (_ BitVec 32) (_ BitVec 32) V!14007 V!14007 (_ BitVec 32) (_ BitVec 64) V!14007 (_ BitVec 32) Int) Unit!11963)

(assert (=> b!392021 (= lt!185254 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!259 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!964 (array!23231 array!23233 (_ BitVec 32) (_ BitVec 32) V!14007 V!14007 (_ BitVec 32) Int) ListLongMap!5443)

(assert (=> b!392021 (= lt!185251 (getCurrentListMapNoExtraKeys!964 lt!185248 lt!185246 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!392021 (= lt!185246 (array!23234 (store (arr!11074 _values!506) i!548 (ValueCellFull!4495 v!373)) (size!11426 _values!506)))))

(assert (=> b!392021 (= lt!185247 (getCurrentListMapNoExtraKeys!964 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!392022 () Bool)

(declare-fun res!224546 () Bool)

(assert (=> b!392022 (=> (not res!224546) (not e!237408))))

(assert (=> b!392022 (= res!224546 (and (= (size!11426 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11425 _keys!658) (size!11426 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!392023 () Bool)

(declare-fun e!237404 () Bool)

(assert (=> b!392023 (= e!237406 (and e!237404 mapRes!16104))))

(declare-fun condMapEmpty!16104 () Bool)

(declare-fun mapDefault!16104 () ValueCell!4495)

