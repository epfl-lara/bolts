; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72516 () Bool)

(assert start!72516)

(declare-fun b_free!13673 () Bool)

(declare-fun b_next!13673 () Bool)

(assert (=> start!72516 (= b_free!13673 (not b_next!13673))))

(declare-fun tp!48119 () Bool)

(declare-fun b_and!22777 () Bool)

(assert (=> start!72516 (= tp!48119 b_and!22777)))

(declare-fun bm!37249 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47324 0))(
  ( (array!47325 (arr!22689 (Array (_ BitVec 32) (_ BitVec 64))) (size!23130 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47324)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((V!25765 0))(
  ( (V!25766 (val!7817 Int)) )
))
(declare-fun minValue!654 () V!25765)

(declare-fun zeroValue!654 () V!25765)

(declare-datatypes ((tuple2!10384 0))(
  ( (tuple2!10385 (_1!5202 (_ BitVec 64)) (_2!5202 V!25765)) )
))
(declare-datatypes ((List!16208 0))(
  ( (Nil!16205) (Cons!16204 (h!17335 tuple2!10384) (t!22587 List!16208)) )
))
(declare-datatypes ((ListLongMap!9167 0))(
  ( (ListLongMap!9168 (toList!4599 List!16208)) )
))
(declare-fun call!37252 () ListLongMap!9167)

(declare-datatypes ((ValueCell!7330 0))(
  ( (ValueCellFull!7330 (v!10238 V!25765)) (EmptyCell!7330) )
))
(declare-datatypes ((array!47326 0))(
  ( (array!47327 (arr!22690 (Array (_ BitVec 32) ValueCell!7330)) (size!23131 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47326)

(declare-fun getCurrentListMapNoExtraKeys!2590 (array!47324 array!47326 (_ BitVec 32) (_ BitVec 32) V!25765 V!25765 (_ BitVec 32) Int) ListLongMap!9167)

(assert (=> bm!37249 (= call!37252 (getCurrentListMapNoExtraKeys!2590 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840785 () Bool)

(declare-fun res!571680 () Bool)

(declare-fun e!469120 () Bool)

(assert (=> b!840785 (=> (not res!571680) (not e!469120))))

(assert (=> b!840785 (= res!571680 (and (= (size!23131 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23130 _keys!868) (size!23131 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!840786 () Bool)

(declare-fun res!571686 () Bool)

(assert (=> b!840786 (=> (not res!571686) (not e!469120))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!840786 (= res!571686 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23130 _keys!868))))))

(declare-fun mapNonEmpty!24908 () Bool)

(declare-fun mapRes!24908 () Bool)

(declare-fun tp!48118 () Bool)

(declare-fun e!469121 () Bool)

(assert (=> mapNonEmpty!24908 (= mapRes!24908 (and tp!48118 e!469121))))

(declare-fun mapRest!24908 () (Array (_ BitVec 32) ValueCell!7330))

(declare-fun mapValue!24908 () ValueCell!7330)

(declare-fun mapKey!24908 () (_ BitVec 32))

(assert (=> mapNonEmpty!24908 (= (arr!22690 _values!688) (store mapRest!24908 mapKey!24908 mapValue!24908))))

(declare-fun b!840787 () Bool)

(assert (=> b!840787 (= e!469120 (not true))))

(declare-fun e!469122 () Bool)

(assert (=> b!840787 e!469122))

(declare-fun c!91287 () Bool)

(assert (=> b!840787 (= c!91287 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!25765)

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((Unit!28874 0))(
  ( (Unit!28875) )
))
(declare-fun lt!380820 () Unit!28874)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!286 (array!47324 array!47326 (_ BitVec 32) (_ BitVec 32) V!25765 V!25765 (_ BitVec 32) (_ BitVec 64) V!25765 (_ BitVec 32) Int) Unit!28874)

(assert (=> b!840787 (= lt!380820 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!286 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840788 () Bool)

(declare-fun e!469118 () Bool)

(declare-fun tp_is_empty!15539 () Bool)

(assert (=> b!840788 (= e!469118 tp_is_empty!15539)))

(declare-fun b!840789 () Bool)

(declare-fun res!571681 () Bool)

(assert (=> b!840789 (=> (not res!571681) (not e!469120))))

(declare-datatypes ((List!16209 0))(
  ( (Nil!16206) (Cons!16205 (h!17336 (_ BitVec 64)) (t!22588 List!16209)) )
))
(declare-fun arrayNoDuplicates!0 (array!47324 (_ BitVec 32) List!16209) Bool)

(assert (=> b!840789 (= res!571681 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16206))))

(declare-fun b!840790 () Bool)

(assert (=> b!840790 (= e!469121 tp_is_empty!15539)))

(declare-fun call!37253 () ListLongMap!9167)

(declare-fun bm!37250 () Bool)

(assert (=> bm!37250 (= call!37253 (getCurrentListMapNoExtraKeys!2590 _keys!868 (array!47327 (store (arr!22690 _values!688) i!612 (ValueCellFull!7330 v!557)) (size!23131 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840791 () Bool)

(declare-fun e!469119 () Bool)

(assert (=> b!840791 (= e!469119 (and e!469118 mapRes!24908))))

(declare-fun condMapEmpty!24908 () Bool)

(declare-fun mapDefault!24908 () ValueCell!7330)

