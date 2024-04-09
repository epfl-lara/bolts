; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74460 () Bool)

(assert start!74460)

(declare-fun b_free!15175 () Bool)

(declare-fun b_next!15175 () Bool)

(assert (=> start!74460 (= b_free!15175 (not b_next!15175))))

(declare-fun tp!53204 () Bool)

(declare-fun b_and!25021 () Bool)

(assert (=> start!74460 (= tp!53204 b_and!25021)))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!28273 0))(
  ( (V!28274 (val!8757 Int)) )
))
(declare-datatypes ((tuple2!11588 0))(
  ( (tuple2!11589 (_1!5804 (_ BitVec 64)) (_2!5804 V!28273)) )
))
(declare-datatypes ((List!17469 0))(
  ( (Nil!17466) (Cons!17465 (h!18596 tuple2!11588) (t!24556 List!17469)) )
))
(declare-datatypes ((ListLongMap!10371 0))(
  ( (ListLongMap!10372 (toList!5201 List!17469)) )
))
(declare-fun call!38768 () ListLongMap!10371)

(declare-datatypes ((array!50946 0))(
  ( (array!50947 (arr!24496 (Array (_ BitVec 32) (_ BitVec 64))) (size!24937 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50946)

(declare-datatypes ((ValueCell!8270 0))(
  ( (ValueCellFull!8270 (v!11186 V!28273)) (EmptyCell!8270) )
))
(declare-datatypes ((array!50948 0))(
  ( (array!50949 (arr!24497 (Array (_ BitVec 32) ValueCell!8270)) (size!24938 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50948)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28273)

(declare-fun zeroValue!654 () V!28273)

(declare-fun c!92530 () Bool)

(declare-fun lt!396547 () array!50948)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun bm!38765 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3163 (array!50946 array!50948 (_ BitVec 32) (_ BitVec 32) V!28273 V!28273 (_ BitVec 32) Int) ListLongMap!10371)

(assert (=> bm!38765 (= call!38768 (getCurrentListMapNoExtraKeys!3163 _keys!868 (ite c!92530 lt!396547 _values!688) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876473 () Bool)

(declare-fun res!595685 () Bool)

(declare-fun e!487930 () Bool)

(assert (=> b!876473 (=> (not res!595685) (not e!487930))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!876473 (= res!595685 (validMask!0 mask!1196))))

(declare-fun b!876474 () Bool)

(declare-fun res!595689 () Bool)

(assert (=> b!876474 (=> (not res!595689) (not e!487930))))

(declare-datatypes ((List!17470 0))(
  ( (Nil!17467) (Cons!17466 (h!18597 (_ BitVec 64)) (t!24557 List!17470)) )
))
(declare-fun arrayNoDuplicates!0 (array!50946 (_ BitVec 32) List!17470) Bool)

(assert (=> b!876474 (= res!595689 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17467))))

(declare-fun b!876475 () Bool)

(declare-fun e!487932 () Bool)

(assert (=> b!876475 (= e!487930 e!487932)))

(declare-fun res!595684 () Bool)

(assert (=> b!876475 (=> (not res!595684) (not e!487932))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!876475 (= res!595684 (= from!1053 i!612))))

(declare-fun lt!396545 () ListLongMap!10371)

(assert (=> b!876475 (= lt!396545 (getCurrentListMapNoExtraKeys!3163 _keys!868 lt!396547 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28273)

(assert (=> b!876475 (= lt!396547 (array!50949 (store (arr!24497 _values!688) i!612 (ValueCellFull!8270 v!557)) (size!24938 _values!688)))))

(declare-fun lt!396541 () ListLongMap!10371)

(assert (=> b!876475 (= lt!396541 (getCurrentListMapNoExtraKeys!3163 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!595688 () Bool)

(assert (=> start!74460 (=> (not res!595688) (not e!487930))))

(assert (=> start!74460 (= res!595688 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24937 _keys!868))))))

(assert (=> start!74460 e!487930))

(declare-fun tp_is_empty!17419 () Bool)

(assert (=> start!74460 tp_is_empty!17419))

(assert (=> start!74460 true))

(assert (=> start!74460 tp!53204))

(declare-fun array_inv!19294 (array!50946) Bool)

(assert (=> start!74460 (array_inv!19294 _keys!868)))

(declare-fun e!487931 () Bool)

(declare-fun array_inv!19295 (array!50948) Bool)

(assert (=> start!74460 (and (array_inv!19295 _values!688) e!487931)))

(declare-fun b!876476 () Bool)

(declare-fun e!487933 () Bool)

(assert (=> b!876476 (= e!487932 (not e!487933))))

(declare-fun res!595692 () Bool)

(assert (=> b!876476 (=> res!595692 e!487933)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!876476 (= res!595692 (not (validKeyInArray!0 (select (arr!24496 _keys!868) from!1053))))))

(declare-fun e!487934 () Bool)

(assert (=> b!876476 e!487934))

(assert (=> b!876476 (= c!92530 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((Unit!29932 0))(
  ( (Unit!29933) )
))
(declare-fun lt!396539 () Unit!29932)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!669 (array!50946 array!50948 (_ BitVec 32) (_ BitVec 32) V!28273 V!28273 (_ BitVec 32) (_ BitVec 64) V!28273 (_ BitVec 32) Int) Unit!29932)

(assert (=> b!876476 (= lt!396539 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!669 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!27740 () Bool)

(declare-fun mapRes!27740 () Bool)

(assert (=> mapIsEmpty!27740 mapRes!27740))

(declare-fun mapNonEmpty!27740 () Bool)

(declare-fun tp!53203 () Bool)

(declare-fun e!487937 () Bool)

(assert (=> mapNonEmpty!27740 (= mapRes!27740 (and tp!53203 e!487937))))

(declare-fun mapKey!27740 () (_ BitVec 32))

(declare-fun mapValue!27740 () ValueCell!8270)

(declare-fun mapRest!27740 () (Array (_ BitVec 32) ValueCell!8270))

(assert (=> mapNonEmpty!27740 (= (arr!24497 _values!688) (store mapRest!27740 mapKey!27740 mapValue!27740))))

(declare-fun b!876477 () Bool)

(assert (=> b!876477 (= e!487937 tp_is_empty!17419)))

(declare-fun b!876478 () Bool)

(declare-fun res!595690 () Bool)

(assert (=> b!876478 (=> (not res!595690) (not e!487930))))

(assert (=> b!876478 (= res!595690 (and (= (size!24938 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24937 _keys!868) (size!24938 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!876479 () Bool)

(declare-fun res!595686 () Bool)

(assert (=> b!876479 (=> (not res!595686) (not e!487930))))

(assert (=> b!876479 (= res!595686 (validKeyInArray!0 k!854))))

(declare-fun b!876480 () Bool)

(declare-fun res!595691 () Bool)

(assert (=> b!876480 (=> (not res!595691) (not e!487930))))

(assert (=> b!876480 (= res!595691 (and (= (select (arr!24496 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!876481 () Bool)

(declare-fun call!38769 () ListLongMap!10371)

(assert (=> b!876481 (= e!487934 (= call!38769 call!38768))))

(declare-fun b!876482 () Bool)

(declare-fun res!595683 () Bool)

(assert (=> b!876482 (=> (not res!595683) (not e!487930))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50946 (_ BitVec 32)) Bool)

(assert (=> b!876482 (= res!595683 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!876483 () Bool)

(declare-fun res!595687 () Bool)

(assert (=> b!876483 (=> (not res!595687) (not e!487930))))

(assert (=> b!876483 (= res!595687 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24937 _keys!868))))))

(declare-fun bm!38766 () Bool)

(assert (=> bm!38766 (= call!38769 (getCurrentListMapNoExtraKeys!3163 _keys!868 (ite c!92530 _values!688 lt!396547) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876484 () Bool)

(assert (=> b!876484 (= e!487933 true)))

(declare-fun lt!396544 () V!28273)

(declare-fun lt!396540 () tuple2!11588)

(declare-fun lt!396542 () ListLongMap!10371)

(declare-fun +!2437 (ListLongMap!10371 tuple2!11588) ListLongMap!10371)

(assert (=> b!876484 (= (+!2437 lt!396542 lt!396540) (+!2437 (+!2437 lt!396542 (tuple2!11589 k!854 lt!396544)) lt!396540))))

(declare-fun lt!396543 () V!28273)

(assert (=> b!876484 (= lt!396540 (tuple2!11589 k!854 lt!396543))))

(declare-fun lt!396546 () Unit!29932)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!329 (ListLongMap!10371 (_ BitVec 64) V!28273 V!28273) Unit!29932)

(assert (=> b!876484 (= lt!396546 (addSameAsAddTwiceSameKeyDiffValues!329 lt!396542 k!854 lt!396544 lt!396543))))

(declare-fun lt!396548 () V!28273)

(declare-fun get!12899 (ValueCell!8270 V!28273) V!28273)

(assert (=> b!876484 (= lt!396544 (get!12899 (select (arr!24497 _values!688) from!1053) lt!396548))))

(assert (=> b!876484 (= lt!396545 (+!2437 lt!396542 (tuple2!11589 (select (arr!24496 _keys!868) from!1053) lt!396543)))))

(assert (=> b!876484 (= lt!396543 (get!12899 (select (store (arr!24497 _values!688) i!612 (ValueCellFull!8270 v!557)) from!1053) lt!396548))))

(declare-fun dynLambda!1219 (Int (_ BitVec 64)) V!28273)

(assert (=> b!876484 (= lt!396548 (dynLambda!1219 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!876484 (= lt!396542 (getCurrentListMapNoExtraKeys!3163 _keys!868 lt!396547 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876485 () Bool)

(declare-fun e!487935 () Bool)

(assert (=> b!876485 (= e!487931 (and e!487935 mapRes!27740))))

(declare-fun condMapEmpty!27740 () Bool)

(declare-fun mapDefault!27740 () ValueCell!8270)

