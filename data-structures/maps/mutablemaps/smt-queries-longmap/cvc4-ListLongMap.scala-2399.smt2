; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37980 () Bool)

(assert start!37980)

(declare-fun b_free!8963 () Bool)

(declare-fun b_next!8963 () Bool)

(assert (=> start!37980 (= b_free!8963 (not b_next!8963))))

(declare-fun tp!31656 () Bool)

(declare-fun b_and!16283 () Bool)

(assert (=> start!37980 (= tp!31656 b_and!16283)))

(declare-fun b!390466 () Bool)

(declare-fun res!223521 () Bool)

(declare-fun e!236527 () Bool)

(assert (=> b!390466 (=> (not res!223521) (not e!236527))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13951 0))(
  ( (V!13952 (val!4862 Int)) )
))
(declare-datatypes ((ValueCell!4474 0))(
  ( (ValueCellFull!4474 (v!7075 V!13951)) (EmptyCell!4474) )
))
(declare-datatypes ((array!23145 0))(
  ( (array!23146 (arr!11033 (Array (_ BitVec 32) ValueCell!4474)) (size!11385 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23145)

(declare-datatypes ((array!23147 0))(
  ( (array!23148 (arr!11034 (Array (_ BitVec 32) (_ BitVec 64))) (size!11386 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23147)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!390466 (= res!223521 (and (= (size!11385 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11386 _keys!658) (size!11385 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!390468 () Bool)

(declare-fun res!223530 () Bool)

(assert (=> b!390468 (=> (not res!223530) (not e!236527))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23147 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!390468 (= res!223530 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!390469 () Bool)

(declare-fun e!236530 () Bool)

(declare-fun tp_is_empty!9635 () Bool)

(assert (=> b!390469 (= e!236530 tp_is_empty!9635)))

(declare-fun b!390470 () Bool)

(declare-fun res!223528 () Bool)

(assert (=> b!390470 (=> (not res!223528) (not e!236527))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!390470 (= res!223528 (validKeyInArray!0 k!778))))

(declare-fun b!390471 () Bool)

(declare-fun e!236525 () Bool)

(declare-fun e!236528 () Bool)

(assert (=> b!390471 (= e!236525 (not e!236528))))

(declare-fun res!223529 () Bool)

(assert (=> b!390471 (=> res!223529 e!236528)))

(assert (=> b!390471 (= res!223529 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6486 0))(
  ( (tuple2!6487 (_1!3253 (_ BitVec 64)) (_2!3253 V!13951)) )
))
(declare-datatypes ((List!6368 0))(
  ( (Nil!6365) (Cons!6364 (h!7220 tuple2!6486) (t!11536 List!6368)) )
))
(declare-datatypes ((ListLongMap!5413 0))(
  ( (ListLongMap!5414 (toList!2722 List!6368)) )
))
(declare-fun lt!184127 () ListLongMap!5413)

(declare-fun zeroValue!472 () V!13951)

(declare-fun minValue!472 () V!13951)

(declare-fun getCurrentListMap!2089 (array!23147 array!23145 (_ BitVec 32) (_ BitVec 32) V!13951 V!13951 (_ BitVec 32) Int) ListLongMap!5413)

(assert (=> b!390471 (= lt!184127 (getCurrentListMap!2089 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184134 () array!23147)

(declare-fun lt!184129 () ListLongMap!5413)

(declare-fun lt!184133 () array!23145)

(assert (=> b!390471 (= lt!184129 (getCurrentListMap!2089 lt!184134 lt!184133 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184130 () ListLongMap!5413)

(declare-fun lt!184132 () ListLongMap!5413)

(assert (=> b!390471 (and (= lt!184130 lt!184132) (= lt!184132 lt!184130))))

(declare-fun v!373 () V!13951)

(declare-fun lt!184135 () ListLongMap!5413)

(declare-fun +!1020 (ListLongMap!5413 tuple2!6486) ListLongMap!5413)

(assert (=> b!390471 (= lt!184132 (+!1020 lt!184135 (tuple2!6487 k!778 v!373)))))

(declare-datatypes ((Unit!11931 0))(
  ( (Unit!11932) )
))
(declare-fun lt!184131 () Unit!11931)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!246 (array!23147 array!23145 (_ BitVec 32) (_ BitVec 32) V!13951 V!13951 (_ BitVec 32) (_ BitVec 64) V!13951 (_ BitVec 32) Int) Unit!11931)

(assert (=> b!390471 (= lt!184131 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!246 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!951 (array!23147 array!23145 (_ BitVec 32) (_ BitVec 32) V!13951 V!13951 (_ BitVec 32) Int) ListLongMap!5413)

(assert (=> b!390471 (= lt!184130 (getCurrentListMapNoExtraKeys!951 lt!184134 lt!184133 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!390471 (= lt!184133 (array!23146 (store (arr!11033 _values!506) i!548 (ValueCellFull!4474 v!373)) (size!11385 _values!506)))))

(assert (=> b!390471 (= lt!184135 (getCurrentListMapNoExtraKeys!951 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!390472 () Bool)

(assert (=> b!390472 (= e!236527 e!236525)))

(declare-fun res!223527 () Bool)

(assert (=> b!390472 (=> (not res!223527) (not e!236525))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23147 (_ BitVec 32)) Bool)

(assert (=> b!390472 (= res!223527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!184134 mask!970))))

(assert (=> b!390472 (= lt!184134 (array!23148 (store (arr!11034 _keys!658) i!548 k!778) (size!11386 _keys!658)))))

(declare-fun b!390473 () Bool)

(declare-fun res!223524 () Bool)

(assert (=> b!390473 (=> (not res!223524) (not e!236527))))

(declare-datatypes ((List!6369 0))(
  ( (Nil!6366) (Cons!6365 (h!7221 (_ BitVec 64)) (t!11537 List!6369)) )
))
(declare-fun arrayNoDuplicates!0 (array!23147 (_ BitVec 32) List!6369) Bool)

(assert (=> b!390473 (= res!223524 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6366))))

(declare-fun mapIsEmpty!16032 () Bool)

(declare-fun mapRes!16032 () Bool)

(assert (=> mapIsEmpty!16032 mapRes!16032))

(declare-fun b!390474 () Bool)

(declare-fun e!236531 () Bool)

(assert (=> b!390474 (= e!236531 tp_is_empty!9635)))

(declare-fun b!390475 () Bool)

(declare-fun res!223522 () Bool)

(assert (=> b!390475 (=> (not res!223522) (not e!236527))))

(assert (=> b!390475 (= res!223522 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11386 _keys!658))))))

(declare-fun mapNonEmpty!16032 () Bool)

(declare-fun tp!31655 () Bool)

(assert (=> mapNonEmpty!16032 (= mapRes!16032 (and tp!31655 e!236531))))

(declare-fun mapValue!16032 () ValueCell!4474)

(declare-fun mapRest!16032 () (Array (_ BitVec 32) ValueCell!4474))

(declare-fun mapKey!16032 () (_ BitVec 32))

(assert (=> mapNonEmpty!16032 (= (arr!11033 _values!506) (store mapRest!16032 mapKey!16032 mapValue!16032))))

(declare-fun b!390467 () Bool)

(declare-fun res!223520 () Bool)

(assert (=> b!390467 (=> (not res!223520) (not e!236527))))

(assert (=> b!390467 (= res!223520 (or (= (select (arr!11034 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11034 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!223523 () Bool)

(assert (=> start!37980 (=> (not res!223523) (not e!236527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37980 (= res!223523 (validMask!0 mask!970))))

(assert (=> start!37980 e!236527))

(declare-fun e!236529 () Bool)

(declare-fun array_inv!8088 (array!23145) Bool)

(assert (=> start!37980 (and (array_inv!8088 _values!506) e!236529)))

(assert (=> start!37980 tp!31656))

(assert (=> start!37980 true))

(assert (=> start!37980 tp_is_empty!9635))

(declare-fun array_inv!8089 (array!23147) Bool)

(assert (=> start!37980 (array_inv!8089 _keys!658)))

(declare-fun b!390476 () Bool)

(declare-fun res!223525 () Bool)

(assert (=> b!390476 (=> (not res!223525) (not e!236527))))

(assert (=> b!390476 (= res!223525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!390477 () Bool)

(declare-fun lt!184128 () tuple2!6486)

(assert (=> b!390477 (= e!236528 (= lt!184127 (+!1020 lt!184135 lt!184128)))))

(assert (=> b!390477 (= lt!184129 (+!1020 lt!184130 lt!184128))))

(assert (=> b!390477 (= lt!184128 (tuple2!6487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!390478 () Bool)

(assert (=> b!390478 (= e!236529 (and e!236530 mapRes!16032))))

(declare-fun condMapEmpty!16032 () Bool)

(declare-fun mapDefault!16032 () ValueCell!4474)

