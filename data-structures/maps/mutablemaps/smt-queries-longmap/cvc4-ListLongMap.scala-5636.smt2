; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73632 () Bool)

(assert start!73632)

(declare-fun b_free!14519 () Bool)

(declare-fun b_next!14519 () Bool)

(assert (=> start!73632 (= b_free!14519 (not b_next!14519))))

(declare-fun tp!51062 () Bool)

(declare-fun b_and!24035 () Bool)

(assert (=> start!73632 (= tp!51062 b_and!24035)))

(declare-fun b!861130 () Bool)

(declare-fun res!585339 () Bool)

(declare-fun e!479837 () Bool)

(assert (=> b!861130 (=> (not res!585339) (not e!479837))))

(declare-datatypes ((array!49458 0))(
  ( (array!49459 (arr!23756 (Array (_ BitVec 32) (_ BitVec 64))) (size!24197 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49458)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49458 (_ BitVec 32)) Bool)

(assert (=> b!861130 (= res!585339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!861131 () Bool)

(declare-fun e!479838 () Bool)

(declare-fun tp_is_empty!16655 () Bool)

(assert (=> b!861131 (= e!479838 tp_is_empty!16655)))

(declare-fun b!861132 () Bool)

(declare-fun res!585337 () Bool)

(assert (=> b!861132 (=> (not res!585337) (not e!479837))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!861132 (= res!585337 (validKeyInArray!0 k!854))))

(declare-fun b!861133 () Bool)

(declare-fun e!479840 () Bool)

(assert (=> b!861133 (= e!479840 true)))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!861133 (not (= (select (arr!23756 _keys!868) from!1053) k!854))))

(declare-datatypes ((Unit!29332 0))(
  ( (Unit!29333) )
))
(declare-fun lt!388333 () Unit!29332)

(declare-fun e!479835 () Unit!29332)

(assert (=> b!861133 (= lt!388333 e!479835)))

(declare-fun c!91917 () Bool)

(assert (=> b!861133 (= c!91917 (= (select (arr!23756 _keys!868) from!1053) k!854))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!27253 0))(
  ( (V!27254 (val!8375 Int)) )
))
(declare-datatypes ((tuple2!11060 0))(
  ( (tuple2!11061 (_1!5540 (_ BitVec 64)) (_2!5540 V!27253)) )
))
(declare-datatypes ((List!16931 0))(
  ( (Nil!16928) (Cons!16927 (h!18058 tuple2!11060) (t!23724 List!16931)) )
))
(declare-datatypes ((ListLongMap!9843 0))(
  ( (ListLongMap!9844 (toList!4937 List!16931)) )
))
(declare-fun lt!388325 () ListLongMap!9843)

(declare-fun lt!388327 () ListLongMap!9843)

(declare-datatypes ((ValueCell!7888 0))(
  ( (ValueCellFull!7888 (v!10796 V!27253)) (EmptyCell!7888) )
))
(declare-datatypes ((array!49460 0))(
  ( (array!49461 (arr!23757 (Array (_ BitVec 32) ValueCell!7888)) (size!24198 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49460)

(declare-fun +!2238 (ListLongMap!9843 tuple2!11060) ListLongMap!9843)

(declare-fun get!12542 (ValueCell!7888 V!27253) V!27253)

(declare-fun dynLambda!1120 (Int (_ BitVec 64)) V!27253)

(assert (=> b!861133 (= lt!388325 (+!2238 lt!388327 (tuple2!11061 (select (arr!23756 _keys!868) from!1053) (get!12542 (select (arr!23757 _values!688) from!1053) (dynLambda!1120 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!861134 () Bool)

(declare-fun res!585335 () Bool)

(assert (=> b!861134 (=> (not res!585335) (not e!479837))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!861134 (= res!585335 (validMask!0 mask!1196))))

(declare-fun b!861135 () Bool)

(declare-fun e!479836 () Bool)

(assert (=> b!861135 (= e!479836 tp_is_empty!16655)))

(declare-fun mapNonEmpty!26582 () Bool)

(declare-fun mapRes!26582 () Bool)

(declare-fun tp!51061 () Bool)

(assert (=> mapNonEmpty!26582 (= mapRes!26582 (and tp!51061 e!479838))))

(declare-fun mapValue!26582 () ValueCell!7888)

(declare-fun mapRest!26582 () (Array (_ BitVec 32) ValueCell!7888))

(declare-fun mapKey!26582 () (_ BitVec 32))

(assert (=> mapNonEmpty!26582 (= (arr!23757 _values!688) (store mapRest!26582 mapKey!26582 mapValue!26582))))

(declare-fun mapIsEmpty!26582 () Bool)

(assert (=> mapIsEmpty!26582 mapRes!26582))

(declare-fun res!585330 () Bool)

(assert (=> start!73632 (=> (not res!585330) (not e!479837))))

(assert (=> start!73632 (= res!585330 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24197 _keys!868))))))

(assert (=> start!73632 e!479837))

(assert (=> start!73632 tp_is_empty!16655))

(assert (=> start!73632 true))

(assert (=> start!73632 tp!51062))

(declare-fun array_inv!18776 (array!49458) Bool)

(assert (=> start!73632 (array_inv!18776 _keys!868)))

(declare-fun e!479834 () Bool)

(declare-fun array_inv!18777 (array!49460) Bool)

(assert (=> start!73632 (and (array_inv!18777 _values!688) e!479834)))

(declare-fun b!861136 () Bool)

(declare-fun Unit!29334 () Unit!29332)

(assert (=> b!861136 (= e!479835 Unit!29334)))

(declare-fun b!861137 () Bool)

(assert (=> b!861137 (= e!479834 (and e!479836 mapRes!26582))))

(declare-fun condMapEmpty!26582 () Bool)

(declare-fun mapDefault!26582 () ValueCell!7888)

