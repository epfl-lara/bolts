; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73188 () Bool)

(assert start!73188)

(declare-fun b_free!14075 () Bool)

(declare-fun b_next!14075 () Bool)

(assert (=> start!73188 (= b_free!14075 (not b_next!14075))))

(declare-fun tp!49730 () Bool)

(declare-fun b_and!23327 () Bool)

(assert (=> start!73188 (= tp!49730 b_and!23327)))

(declare-fun b!851767 () Bool)

(declare-fun e!475111 () Bool)

(declare-fun e!475112 () Bool)

(assert (=> b!851767 (= e!475111 (not e!475112))))

(declare-fun res!578664 () Bool)

(assert (=> b!851767 (=> res!578664 e!475112)))

(declare-datatypes ((array!48610 0))(
  ( (array!48611 (arr!23332 (Array (_ BitVec 32) (_ BitVec 64))) (size!23773 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48610)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!851767 (= res!578664 (not (validKeyInArray!0 (select (arr!23332 _keys!868) from!1053))))))

(declare-fun e!475113 () Bool)

(assert (=> b!851767 e!475113))

(declare-fun c!91701 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!851767 (= c!91701 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((V!26661 0))(
  ( (V!26662 (val!8153 Int)) )
))
(declare-fun v!557 () V!26661)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((Unit!29060 0))(
  ( (Unit!29061) )
))
(declare-fun lt!383716 () Unit!29060)

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((ValueCell!7666 0))(
  ( (ValueCellFull!7666 (v!10574 V!26661)) (EmptyCell!7666) )
))
(declare-datatypes ((array!48612 0))(
  ( (array!48613 (arr!23333 (Array (_ BitVec 32) ValueCell!7666)) (size!23774 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48612)

(declare-fun minValue!654 () V!26661)

(declare-fun zeroValue!654 () V!26661)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!373 (array!48610 array!48612 (_ BitVec 32) (_ BitVec 32) V!26661 V!26661 (_ BitVec 32) (_ BitVec 64) V!26661 (_ BitVec 32) Int) Unit!29060)

(assert (=> b!851767 (= lt!383716 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!373 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851768 () Bool)

(declare-fun e!475114 () Bool)

(declare-fun tp_is_empty!16211 () Bool)

(assert (=> b!851768 (= e!475114 tp_is_empty!16211)))

(declare-fun mapNonEmpty!25916 () Bool)

(declare-fun mapRes!25916 () Bool)

(declare-fun tp!49729 () Bool)

(declare-fun e!475115 () Bool)

(assert (=> mapNonEmpty!25916 (= mapRes!25916 (and tp!49729 e!475115))))

(declare-fun mapValue!25916 () ValueCell!7666)

(declare-fun mapRest!25916 () (Array (_ BitVec 32) ValueCell!7666))

(declare-fun mapKey!25916 () (_ BitVec 32))

(assert (=> mapNonEmpty!25916 (= (arr!23333 _values!688) (store mapRest!25916 mapKey!25916 mapValue!25916))))

(declare-fun b!851769 () Bool)

(declare-fun res!578668 () Bool)

(declare-fun e!475110 () Bool)

(assert (=> b!851769 (=> (not res!578668) (not e!475110))))

(assert (=> b!851769 (= res!578668 (and (= (size!23774 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23773 _keys!868) (size!23774 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun bm!38078 () Bool)

(declare-datatypes ((tuple2!10716 0))(
  ( (tuple2!10717 (_1!5368 (_ BitVec 64)) (_2!5368 V!26661)) )
))
(declare-datatypes ((List!16602 0))(
  ( (Nil!16599) (Cons!16598 (h!17729 tuple2!10716) (t!23131 List!16602)) )
))
(declare-datatypes ((ListLongMap!9499 0))(
  ( (ListLongMap!9500 (toList!4765 List!16602)) )
))
(declare-fun call!38080 () ListLongMap!9499)

(declare-fun getCurrentListMapNoExtraKeys!2750 (array!48610 array!48612 (_ BitVec 32) (_ BitVec 32) V!26661 V!26661 (_ BitVec 32) Int) ListLongMap!9499)

(assert (=> bm!38078 (= call!38080 (getCurrentListMapNoExtraKeys!2750 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851770 () Bool)

(declare-fun e!475116 () Bool)

(assert (=> b!851770 (= e!475116 (and e!475114 mapRes!25916))))

(declare-fun condMapEmpty!25916 () Bool)

(declare-fun mapDefault!25916 () ValueCell!7666)

