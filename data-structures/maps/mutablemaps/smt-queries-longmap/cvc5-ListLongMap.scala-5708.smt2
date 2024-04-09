; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74060 () Bool)

(assert start!74060)

(declare-fun b_free!14947 () Bool)

(declare-fun b_next!14947 () Bool)

(assert (=> start!74060 (= b_free!14947 (not b_next!14947))))

(declare-fun tp!52345 () Bool)

(declare-fun b_and!24717 () Bool)

(assert (=> start!74060 (= tp!52345 b_and!24717)))

(declare-fun b!870549 () Bool)

(declare-fun e!484772 () Bool)

(assert (=> b!870549 (= e!484772 (not true))))

(declare-datatypes ((V!27825 0))(
  ( (V!27826 (val!8589 Int)) )
))
(declare-datatypes ((ValueCell!8102 0))(
  ( (ValueCellFull!8102 (v!11010 V!27825)) (EmptyCell!8102) )
))
(declare-datatypes ((array!50298 0))(
  ( (array!50299 (arr!24176 (Array (_ BitVec 32) ValueCell!8102)) (size!24617 (_ BitVec 32))) )
))
(declare-fun lt!395169 () array!50298)

(declare-fun v!557 () V!27825)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!50300 0))(
  ( (array!50301 (arr!24177 (Array (_ BitVec 32) (_ BitVec 64))) (size!24618 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50300)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!27825)

(declare-fun zeroValue!654 () V!27825)

(declare-fun _values!688 () array!50298)

(declare-datatypes ((tuple2!11410 0))(
  ( (tuple2!11411 (_1!5715 (_ BitVec 64)) (_2!5715 V!27825)) )
))
(declare-datatypes ((List!17266 0))(
  ( (Nil!17263) (Cons!17262 (h!18393 tuple2!11410) (t!24311 List!17266)) )
))
(declare-datatypes ((ListLongMap!10193 0))(
  ( (ListLongMap!10194 (toList!5112 List!17266)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3076 (array!50300 array!50298 (_ BitVec 32) (_ BitVec 32) V!27825 V!27825 (_ BitVec 32) Int) ListLongMap!10193)

(declare-fun +!2393 (ListLongMap!10193 tuple2!11410) ListLongMap!10193)

(assert (=> b!870549 (= (getCurrentListMapNoExtraKeys!3076 _keys!868 lt!395169 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2393 (getCurrentListMapNoExtraKeys!3076 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11411 k!854 v!557)))))

(declare-datatypes ((Unit!29836 0))(
  ( (Unit!29837) )
))
(declare-fun lt!395167 () Unit!29836)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!624 (array!50300 array!50298 (_ BitVec 32) (_ BitVec 32) V!27825 V!27825 (_ BitVec 32) (_ BitVec 64) V!27825 (_ BitVec 32) Int) Unit!29836)

(assert (=> b!870549 (= lt!395167 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!624 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!27224 () Bool)

(declare-fun mapRes!27224 () Bool)

(assert (=> mapIsEmpty!27224 mapRes!27224))

(declare-fun res!591814 () Bool)

(declare-fun e!484768 () Bool)

(assert (=> start!74060 (=> (not res!591814) (not e!484768))))

(assert (=> start!74060 (= res!591814 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24618 _keys!868))))))

(assert (=> start!74060 e!484768))

(declare-fun tp_is_empty!17083 () Bool)

(assert (=> start!74060 tp_is_empty!17083))

(assert (=> start!74060 true))

(assert (=> start!74060 tp!52345))

(declare-fun array_inv!19064 (array!50300) Bool)

(assert (=> start!74060 (array_inv!19064 _keys!868)))

(declare-fun e!484773 () Bool)

(declare-fun array_inv!19065 (array!50298) Bool)

(assert (=> start!74060 (and (array_inv!19065 _values!688) e!484773)))

(declare-fun mapNonEmpty!27224 () Bool)

(declare-fun tp!52346 () Bool)

(declare-fun e!484771 () Bool)

(assert (=> mapNonEmpty!27224 (= mapRes!27224 (and tp!52346 e!484771))))

(declare-fun mapRest!27224 () (Array (_ BitVec 32) ValueCell!8102))

(declare-fun mapKey!27224 () (_ BitVec 32))

(declare-fun mapValue!27224 () ValueCell!8102)

(assert (=> mapNonEmpty!27224 (= (arr!24176 _values!688) (store mapRest!27224 mapKey!27224 mapValue!27224))))

(declare-fun b!870550 () Bool)

(declare-fun res!591819 () Bool)

(assert (=> b!870550 (=> (not res!591819) (not e!484768))))

(assert (=> b!870550 (= res!591819 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24618 _keys!868))))))

(declare-fun b!870551 () Bool)

(declare-fun res!591816 () Bool)

(assert (=> b!870551 (=> (not res!591816) (not e!484768))))

(assert (=> b!870551 (= res!591816 (and (= (select (arr!24177 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!870552 () Bool)

(declare-fun res!591812 () Bool)

(assert (=> b!870552 (=> (not res!591812) (not e!484768))))

(declare-datatypes ((List!17267 0))(
  ( (Nil!17264) (Cons!17263 (h!18394 (_ BitVec 64)) (t!24312 List!17267)) )
))
(declare-fun arrayNoDuplicates!0 (array!50300 (_ BitVec 32) List!17267) Bool)

(assert (=> b!870552 (= res!591812 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17264))))

(declare-fun b!870553 () Bool)

(declare-fun res!591817 () Bool)

(assert (=> b!870553 (=> (not res!591817) (not e!484768))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!870553 (= res!591817 (validKeyInArray!0 k!854))))

(declare-fun b!870554 () Bool)

(assert (=> b!870554 (= e!484771 tp_is_empty!17083)))

(declare-fun b!870555 () Bool)

(declare-fun res!591811 () Bool)

(assert (=> b!870555 (=> (not res!591811) (not e!484768))))

(assert (=> b!870555 (= res!591811 (and (= (size!24617 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24618 _keys!868) (size!24617 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!870556 () Bool)

(declare-fun res!591813 () Bool)

(assert (=> b!870556 (=> (not res!591813) (not e!484768))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!870556 (= res!591813 (validMask!0 mask!1196))))

(declare-fun b!870557 () Bool)

(declare-fun e!484770 () Bool)

(assert (=> b!870557 (= e!484770 tp_is_empty!17083)))

(declare-fun b!870558 () Bool)

(assert (=> b!870558 (= e!484773 (and e!484770 mapRes!27224))))

(declare-fun condMapEmpty!27224 () Bool)

(declare-fun mapDefault!27224 () ValueCell!8102)

