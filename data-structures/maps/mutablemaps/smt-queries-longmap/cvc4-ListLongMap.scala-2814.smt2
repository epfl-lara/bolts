; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40806 () Bool)

(assert start!40806)

(declare-fun b_free!10787 () Bool)

(declare-fun b_next!10787 () Bool)

(assert (=> start!40806 (= b_free!10787 (not b_next!10787))))

(declare-fun tp!38184 () Bool)

(declare-fun b_and!18879 () Bool)

(assert (=> start!40806 (= tp!38184 b_and!18879)))

(declare-fun b!452394 () Bool)

(declare-fun res!269557 () Bool)

(declare-fun e!264871 () Bool)

(assert (=> b!452394 (=> (not res!269557) (not e!264871))))

(declare-datatypes ((array!28019 0))(
  ( (array!28020 (arr!13451 (Array (_ BitVec 32) (_ BitVec 64))) (size!13803 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28019)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17271 0))(
  ( (V!17272 (val!6107 Int)) )
))
(declare-datatypes ((ValueCell!5719 0))(
  ( (ValueCellFull!5719 (v!8362 V!17271)) (EmptyCell!5719) )
))
(declare-datatypes ((array!28021 0))(
  ( (array!28022 (arr!13452 (Array (_ BitVec 32) ValueCell!5719)) (size!13804 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28021)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!452394 (= res!269557 (and (= (size!13804 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13803 _keys!709) (size!13804 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!452395 () Bool)

(declare-fun res!269558 () Bool)

(assert (=> b!452395 (=> (not res!269558) (not e!264871))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!452395 (= res!269558 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13803 _keys!709))))))

(declare-datatypes ((tuple2!7986 0))(
  ( (tuple2!7987 (_1!4003 (_ BitVec 64)) (_2!4003 V!17271)) )
))
(declare-datatypes ((List!8089 0))(
  ( (Nil!8086) (Cons!8085 (h!8941 tuple2!7986) (t!13907 List!8089)) )
))
(declare-datatypes ((ListLongMap!6913 0))(
  ( (ListLongMap!6914 (toList!3472 List!8089)) )
))
(declare-fun call!29971 () ListLongMap!6913)

(declare-fun lt!205284 () array!28019)

(declare-fun minValue!515 () V!17271)

(declare-fun defaultEntry!557 () Int)

(declare-fun c!56054 () Bool)

(declare-fun lt!205287 () array!28021)

(declare-fun zeroValue!515 () V!17271)

(declare-fun bm!29968 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1649 (array!28019 array!28021 (_ BitVec 32) (_ BitVec 32) V!17271 V!17271 (_ BitVec 32) Int) ListLongMap!6913)

(assert (=> bm!29968 (= call!29971 (getCurrentListMapNoExtraKeys!1649 (ite c!56054 lt!205284 _keys!709) (ite c!56054 lt!205287 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452397 () Bool)

(declare-fun e!264876 () Bool)

(declare-fun e!264873 () Bool)

(assert (=> b!452397 (= e!264876 e!264873)))

(declare-fun res!269551 () Bool)

(assert (=> b!452397 (=> (not res!269551) (not e!264873))))

(assert (=> b!452397 (= res!269551 (= from!863 i!563))))

(declare-fun lt!205288 () ListLongMap!6913)

(assert (=> b!452397 (= lt!205288 (getCurrentListMapNoExtraKeys!1649 lt!205284 lt!205287 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17271)

(assert (=> b!452397 (= lt!205287 (array!28022 (store (arr!13452 _values!549) i!563 (ValueCellFull!5719 v!412)) (size!13804 _values!549)))))

(declare-fun lt!205286 () ListLongMap!6913)

(assert (=> b!452397 (= lt!205286 (getCurrentListMapNoExtraKeys!1649 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!452398 () Bool)

(declare-fun e!264875 () Bool)

(declare-fun call!29972 () ListLongMap!6913)

(assert (=> b!452398 (= e!264875 (= call!29972 call!29971))))

(declare-fun bm!29969 () Bool)

(assert (=> bm!29969 (= call!29972 (getCurrentListMapNoExtraKeys!1649 (ite c!56054 _keys!709 lt!205284) (ite c!56054 _values!549 lt!205287) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452399 () Bool)

(declare-fun res!269554 () Bool)

(assert (=> b!452399 (=> (not res!269554) (not e!264871))))

(declare-datatypes ((List!8090 0))(
  ( (Nil!8087) (Cons!8086 (h!8942 (_ BitVec 64)) (t!13908 List!8090)) )
))
(declare-fun arrayNoDuplicates!0 (array!28019 (_ BitVec 32) List!8090) Bool)

(assert (=> b!452399 (= res!269554 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8087))))

(declare-fun b!452400 () Bool)

(declare-fun res!269545 () Bool)

(assert (=> b!452400 (=> (not res!269545) (not e!264876))))

(assert (=> b!452400 (= res!269545 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!19824 () Bool)

(declare-fun mapRes!19824 () Bool)

(declare-fun tp!38183 () Bool)

(declare-fun e!264877 () Bool)

(assert (=> mapNonEmpty!19824 (= mapRes!19824 (and tp!38183 e!264877))))

(declare-fun mapValue!19824 () ValueCell!5719)

(declare-fun mapRest!19824 () (Array (_ BitVec 32) ValueCell!5719))

(declare-fun mapKey!19824 () (_ BitVec 32))

(assert (=> mapNonEmpty!19824 (= (arr!13452 _values!549) (store mapRest!19824 mapKey!19824 mapValue!19824))))

(declare-fun b!452401 () Bool)

(declare-fun e!264874 () Bool)

(declare-fun tp_is_empty!12125 () Bool)

(assert (=> b!452401 (= e!264874 tp_is_empty!12125)))

(declare-fun b!452402 () Bool)

(declare-fun e!264872 () Bool)

(assert (=> b!452402 (= e!264872 (and e!264874 mapRes!19824))))

(declare-fun condMapEmpty!19824 () Bool)

(declare-fun mapDefault!19824 () ValueCell!5719)

