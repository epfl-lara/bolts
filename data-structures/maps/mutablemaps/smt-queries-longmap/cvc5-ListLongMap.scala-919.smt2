; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20622 () Bool)

(assert start!20622)

(declare-fun b_free!5269 () Bool)

(declare-fun b_next!5269 () Bool)

(assert (=> start!20622 (= b_free!5269 (not b_next!5269))))

(declare-fun tp!18839 () Bool)

(declare-fun b_and!12033 () Bool)

(assert (=> start!20622 (= tp!18839 b_and!12033)))

(declare-fun b!205444 () Bool)

(declare-fun e!134355 () Bool)

(declare-fun tp_is_empty!5125 () Bool)

(assert (=> b!205444 (= e!134355 tp_is_empty!5125)))

(declare-fun b!205445 () Bool)

(declare-fun res!99293 () Bool)

(declare-fun e!134356 () Bool)

(assert (=> b!205445 (=> (not res!99293) (not e!134356))))

(declare-datatypes ((array!9462 0))(
  ( (array!9463 (arr!4481 (Array (_ BitVec 32) (_ BitVec 64))) (size!4806 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9462)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9462 (_ BitVec 32)) Bool)

(assert (=> b!205445 (= res!99293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!8756 () Bool)

(declare-fun mapRes!8756 () Bool)

(assert (=> mapIsEmpty!8756 mapRes!8756))

(declare-fun b!205446 () Bool)

(declare-fun e!134357 () Bool)

(declare-fun e!134354 () Bool)

(assert (=> b!205446 (= e!134357 e!134354)))

(declare-fun res!99292 () Bool)

(assert (=> b!205446 (=> res!99292 e!134354)))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!205446 (= res!99292 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!6481 0))(
  ( (V!6482 (val!2607 Int)) )
))
(declare-datatypes ((tuple2!3952 0))(
  ( (tuple2!3953 (_1!1986 (_ BitVec 64)) (_2!1986 V!6481)) )
))
(declare-datatypes ((List!2872 0))(
  ( (Nil!2869) (Cons!2868 (h!3510 tuple2!3952) (t!7811 List!2872)) )
))
(declare-datatypes ((ListLongMap!2879 0))(
  ( (ListLongMap!2880 (toList!1455 List!2872)) )
))
(declare-fun lt!104645 () ListLongMap!2879)

(declare-fun lt!104642 () ListLongMap!2879)

(assert (=> b!205446 (= lt!104645 lt!104642)))

(declare-fun lt!104652 () ListLongMap!2879)

(declare-fun lt!104649 () tuple2!3952)

(declare-fun +!472 (ListLongMap!2879 tuple2!3952) ListLongMap!2879)

(assert (=> b!205446 (= lt!104642 (+!472 lt!104652 lt!104649))))

(declare-fun lt!104650 () ListLongMap!2879)

(declare-fun lt!104648 () ListLongMap!2879)

(assert (=> b!205446 (= lt!104650 lt!104648)))

(declare-fun lt!104653 () ListLongMap!2879)

(assert (=> b!205446 (= lt!104648 (+!472 lt!104653 lt!104649))))

(declare-fun lt!104643 () ListLongMap!2879)

(assert (=> b!205446 (= lt!104650 (+!472 lt!104643 lt!104649))))

(declare-fun minValue!615 () V!6481)

(assert (=> b!205446 (= lt!104649 (tuple2!3953 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205447 () Bool)

(declare-fun res!99287 () Bool)

(assert (=> b!205447 (=> (not res!99287) (not e!134356))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!205447 (= res!99287 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4806 _keys!825))))))

(declare-fun b!205448 () Bool)

(declare-fun res!99291 () Bool)

(assert (=> b!205448 (=> (not res!99291) (not e!134356))))

(declare-datatypes ((List!2873 0))(
  ( (Nil!2870) (Cons!2869 (h!3511 (_ BitVec 64)) (t!7812 List!2873)) )
))
(declare-fun arrayNoDuplicates!0 (array!9462 (_ BitVec 32) List!2873) Bool)

(assert (=> b!205448 (= res!99291 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2870))))

(declare-fun b!205449 () Bool)

(declare-fun res!99290 () Bool)

(assert (=> b!205449 (=> (not res!99290) (not e!134356))))

(declare-datatypes ((ValueCell!2219 0))(
  ( (ValueCellFull!2219 (v!4573 V!6481)) (EmptyCell!2219) )
))
(declare-datatypes ((array!9464 0))(
  ( (array!9465 (arr!4482 (Array (_ BitVec 32) ValueCell!2219)) (size!4807 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9464)

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!205449 (= res!99290 (and (= (size!4807 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4806 _keys!825) (size!4807 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!205450 () Bool)

(assert (=> b!205450 (= e!134356 (not e!134357))))

(declare-fun res!99288 () Bool)

(assert (=> b!205450 (=> res!99288 e!134357)))

(assert (=> b!205450 (= res!99288 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!615 () V!6481)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1021 (array!9462 array!9464 (_ BitVec 32) (_ BitVec 32) V!6481 V!6481 (_ BitVec 32) Int) ListLongMap!2879)

(assert (=> b!205450 (= lt!104645 (getCurrentListMap!1021 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104646 () array!9464)

(assert (=> b!205450 (= lt!104650 (getCurrentListMap!1021 _keys!825 lt!104646 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205450 (and (= lt!104643 lt!104653) (= lt!104653 lt!104643))))

(declare-fun lt!104651 () tuple2!3952)

(assert (=> b!205450 (= lt!104653 (+!472 lt!104652 lt!104651))))

(declare-fun v!520 () V!6481)

(assert (=> b!205450 (= lt!104651 (tuple2!3953 k!843 v!520))))

(declare-datatypes ((Unit!6243 0))(
  ( (Unit!6244) )
))
(declare-fun lt!104644 () Unit!6243)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!134 (array!9462 array!9464 (_ BitVec 32) (_ BitVec 32) V!6481 V!6481 (_ BitVec 32) (_ BitVec 64) V!6481 (_ BitVec 32) Int) Unit!6243)

(assert (=> b!205450 (= lt!104644 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!134 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!392 (array!9462 array!9464 (_ BitVec 32) (_ BitVec 32) V!6481 V!6481 (_ BitVec 32) Int) ListLongMap!2879)

(assert (=> b!205450 (= lt!104643 (getCurrentListMapNoExtraKeys!392 _keys!825 lt!104646 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205450 (= lt!104646 (array!9465 (store (arr!4482 _values!649) i!601 (ValueCellFull!2219 v!520)) (size!4807 _values!649)))))

(assert (=> b!205450 (= lt!104652 (getCurrentListMapNoExtraKeys!392 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!205452 () Bool)

(declare-fun res!99289 () Bool)

(assert (=> b!205452 (=> (not res!99289) (not e!134356))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205452 (= res!99289 (validKeyInArray!0 k!843))))

(declare-fun b!205453 () Bool)

(assert (=> b!205453 (= e!134354 true)))

(assert (=> b!205453 (= lt!104648 (+!472 lt!104642 lt!104651))))

(declare-fun lt!104647 () Unit!6243)

(declare-fun addCommutativeForDiffKeys!172 (ListLongMap!2879 (_ BitVec 64) V!6481 (_ BitVec 64) V!6481) Unit!6243)

(assert (=> b!205453 (= lt!104647 (addCommutativeForDiffKeys!172 lt!104652 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205454 () Bool)

(declare-fun res!99295 () Bool)

(assert (=> b!205454 (=> (not res!99295) (not e!134356))))

(assert (=> b!205454 (= res!99295 (= (select (arr!4481 _keys!825) i!601) k!843))))

(declare-fun mapNonEmpty!8756 () Bool)

(declare-fun tp!18838 () Bool)

(declare-fun e!134359 () Bool)

(assert (=> mapNonEmpty!8756 (= mapRes!8756 (and tp!18838 e!134359))))

(declare-fun mapKey!8756 () (_ BitVec 32))

(declare-fun mapRest!8756 () (Array (_ BitVec 32) ValueCell!2219))

(declare-fun mapValue!8756 () ValueCell!2219)

(assert (=> mapNonEmpty!8756 (= (arr!4482 _values!649) (store mapRest!8756 mapKey!8756 mapValue!8756))))

(declare-fun b!205455 () Bool)

(assert (=> b!205455 (= e!134359 tp_is_empty!5125)))

(declare-fun b!205451 () Bool)

(declare-fun e!134358 () Bool)

(assert (=> b!205451 (= e!134358 (and e!134355 mapRes!8756))))

(declare-fun condMapEmpty!8756 () Bool)

(declare-fun mapDefault!8756 () ValueCell!2219)

