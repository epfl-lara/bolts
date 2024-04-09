; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73602 () Bool)

(assert start!73602)

(declare-fun b_free!14489 () Bool)

(declare-fun b_next!14489 () Bool)

(assert (=> start!73602 (= b_free!14489 (not b_next!14489))))

(declare-fun tp!50972 () Bool)

(declare-fun b_and!23975 () Bool)

(assert (=> start!73602 (= tp!50972 b_and!23975)))

(declare-fun b!860405 () Bool)

(declare-fun res!584846 () Bool)

(declare-fun e!479464 () Bool)

(assert (=> b!860405 (=> (not res!584846) (not e!479464))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!860405 (= res!584846 (validMask!0 mask!1196))))

(declare-fun b!860406 () Bool)

(declare-fun e!479469 () Bool)

(assert (=> b!860406 (= e!479469 true)))

(declare-fun lt!387843 () Bool)

(declare-datatypes ((List!16908 0))(
  ( (Nil!16905) (Cons!16904 (h!18035 (_ BitVec 64)) (t!23671 List!16908)) )
))
(declare-fun contains!4232 (List!16908 (_ BitVec 64)) Bool)

(assert (=> b!860406 (= lt!387843 (contains!4232 Nil!16905 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!860407 () Bool)

(declare-fun res!584850 () Bool)

(assert (=> b!860407 (=> (not res!584850) (not e!479464))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49404 0))(
  ( (array!49405 (arr!23729 (Array (_ BitVec 32) (_ BitVec 64))) (size!24170 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49404)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!860407 (= res!584850 (and (= (select (arr!23729 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!860408 () Bool)

(declare-fun res!584843 () Bool)

(assert (=> b!860408 (=> res!584843 e!479469)))

(declare-fun noDuplicate!1313 (List!16908) Bool)

(assert (=> b!860408 (= res!584843 (not (noDuplicate!1313 Nil!16905)))))

(declare-fun res!584853 () Bool)

(assert (=> start!73602 (=> (not res!584853) (not e!479464))))

(assert (=> start!73602 (= res!584853 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24170 _keys!868))))))

(assert (=> start!73602 e!479464))

(declare-fun tp_is_empty!16625 () Bool)

(assert (=> start!73602 tp_is_empty!16625))

(assert (=> start!73602 true))

(assert (=> start!73602 tp!50972))

(declare-fun array_inv!18758 (array!49404) Bool)

(assert (=> start!73602 (array_inv!18758 _keys!868)))

(declare-datatypes ((V!27213 0))(
  ( (V!27214 (val!8360 Int)) )
))
(declare-datatypes ((ValueCell!7873 0))(
  ( (ValueCellFull!7873 (v!10781 V!27213)) (EmptyCell!7873) )
))
(declare-datatypes ((array!49406 0))(
  ( (array!49407 (arr!23730 (Array (_ BitVec 32) ValueCell!7873)) (size!24171 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49406)

(declare-fun e!479472 () Bool)

(declare-fun array_inv!18759 (array!49406) Bool)

(assert (=> start!73602 (and (array_inv!18759 _values!688) e!479472)))

(declare-fun b!860409 () Bool)

(declare-fun e!479468 () Bool)

(declare-fun e!479470 () Bool)

(assert (=> b!860409 (= e!479468 e!479470)))

(declare-fun res!584845 () Bool)

(assert (=> b!860409 (=> res!584845 e!479470)))

(assert (=> b!860409 (= res!584845 (not (= (select (arr!23729 _keys!868) from!1053) k!854)))))

(declare-datatypes ((tuple2!11038 0))(
  ( (tuple2!11039 (_1!5529 (_ BitVec 64)) (_2!5529 V!27213)) )
))
(declare-datatypes ((List!16909 0))(
  ( (Nil!16906) (Cons!16905 (h!18036 tuple2!11038) (t!23672 List!16909)) )
))
(declare-datatypes ((ListLongMap!9821 0))(
  ( (ListLongMap!9822 (toList!4926 List!16909)) )
))
(declare-fun lt!387844 () ListLongMap!9821)

(declare-fun lt!387845 () ListLongMap!9821)

(declare-fun defaultEntry!696 () Int)

(declare-fun +!2227 (ListLongMap!9821 tuple2!11038) ListLongMap!9821)

(declare-fun get!12523 (ValueCell!7873 V!27213) V!27213)

(declare-fun dynLambda!1111 (Int (_ BitVec 64)) V!27213)

(assert (=> b!860409 (= lt!387845 (+!2227 lt!387844 (tuple2!11039 (select (arr!23729 _keys!868) from!1053) (get!12523 (select (arr!23730 _values!688) from!1053) (dynLambda!1111 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!860410 () Bool)

(declare-fun e!479467 () Bool)

(assert (=> b!860410 (= e!479464 e!479467)))

(declare-fun res!584848 () Bool)

(assert (=> b!860410 (=> (not res!584848) (not e!479467))))

(assert (=> b!860410 (= res!584848 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27213)

(declare-fun zeroValue!654 () V!27213)

(declare-fun lt!387849 () array!49406)

(declare-fun getCurrentListMapNoExtraKeys!2906 (array!49404 array!49406 (_ BitVec 32) (_ BitVec 32) V!27213 V!27213 (_ BitVec 32) Int) ListLongMap!9821)

(assert (=> b!860410 (= lt!387845 (getCurrentListMapNoExtraKeys!2906 _keys!868 lt!387849 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27213)

(assert (=> b!860410 (= lt!387849 (array!49407 (store (arr!23730 _values!688) i!612 (ValueCellFull!7873 v!557)) (size!24171 _values!688)))))

(declare-fun lt!387848 () ListLongMap!9821)

(assert (=> b!860410 (= lt!387848 (getCurrentListMapNoExtraKeys!2906 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!860411 () Bool)

(declare-fun e!479465 () Bool)

(assert (=> b!860411 (= e!479465 tp_is_empty!16625)))

(declare-fun b!860412 () Bool)

(declare-fun e!479471 () Bool)

(assert (=> b!860412 (= e!479471 tp_is_empty!16625)))

(declare-fun mapIsEmpty!26537 () Bool)

(declare-fun mapRes!26537 () Bool)

(assert (=> mapIsEmpty!26537 mapRes!26537))

(declare-fun b!860413 () Bool)

(assert (=> b!860413 (= e!479472 (and e!479471 mapRes!26537))))

(declare-fun condMapEmpty!26537 () Bool)

(declare-fun mapDefault!26537 () ValueCell!7873)

