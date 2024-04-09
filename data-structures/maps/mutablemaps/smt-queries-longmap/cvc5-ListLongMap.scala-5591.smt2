; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73358 () Bool)

(assert start!73358)

(declare-fun b_free!14245 () Bool)

(declare-fun b_next!14245 () Bool)

(assert (=> start!73358 (= b_free!14245 (not b_next!14245))))

(declare-fun tp!50240 () Bool)

(declare-fun b_and!23619 () Bool)

(assert (=> start!73358 (= tp!50240 b_and!23619)))

(declare-fun b!855418 () Bool)

(declare-fun e!476928 () Bool)

(declare-fun tp_is_empty!16381 () Bool)

(assert (=> b!855418 (= e!476928 tp_is_empty!16381)))

(declare-fun mapIsEmpty!26171 () Bool)

(declare-fun mapRes!26171 () Bool)

(assert (=> mapIsEmpty!26171 mapRes!26171))

(declare-fun b!855419 () Bool)

(declare-fun res!581063 () Bool)

(declare-fun e!476927 () Bool)

(assert (=> b!855419 (=> (not res!581063) (not e!476927))))

(declare-datatypes ((array!48938 0))(
  ( (array!48939 (arr!23496 (Array (_ BitVec 32) (_ BitVec 64))) (size!23937 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48938)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48938 (_ BitVec 32)) Bool)

(assert (=> b!855419 (= res!581063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!581068 () Bool)

(assert (=> start!73358 (=> (not res!581068) (not e!476927))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73358 (= res!581068 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23937 _keys!868))))))

(assert (=> start!73358 e!476927))

(assert (=> start!73358 tp_is_empty!16381))

(assert (=> start!73358 true))

(assert (=> start!73358 tp!50240))

(declare-fun array_inv!18602 (array!48938) Bool)

(assert (=> start!73358 (array_inv!18602 _keys!868)))

(declare-datatypes ((V!26889 0))(
  ( (V!26890 (val!8238 Int)) )
))
(declare-datatypes ((ValueCell!7751 0))(
  ( (ValueCellFull!7751 (v!10659 V!26889)) (EmptyCell!7751) )
))
(declare-datatypes ((array!48940 0))(
  ( (array!48941 (arr!23497 (Array (_ BitVec 32) ValueCell!7751)) (size!23938 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48940)

(declare-fun e!476929 () Bool)

(declare-fun array_inv!18603 (array!48940) Bool)

(assert (=> start!73358 (and (array_inv!18603 _values!688) e!476929)))

(declare-fun b!855420 () Bool)

(declare-fun res!581067 () Bool)

(assert (=> b!855420 (=> (not res!581067) (not e!476927))))

(declare-datatypes ((List!16721 0))(
  ( (Nil!16718) (Cons!16717 (h!17848 (_ BitVec 64)) (t!23370 List!16721)) )
))
(declare-fun arrayNoDuplicates!0 (array!48938 (_ BitVec 32) List!16721) Bool)

(assert (=> b!855420 (= res!581067 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16718))))

(declare-fun b!855421 () Bool)

(declare-fun res!581070 () Bool)

(assert (=> b!855421 (=> (not res!581070) (not e!476927))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!855421 (= res!581070 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23937 _keys!868))))))

(declare-fun b!855422 () Bool)

(declare-fun res!581065 () Bool)

(assert (=> b!855422 (=> (not res!581065) (not e!476927))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855422 (= res!581065 (validKeyInArray!0 k!854))))

(declare-fun mapNonEmpty!26171 () Bool)

(declare-fun tp!50239 () Bool)

(declare-fun e!476931 () Bool)

(assert (=> mapNonEmpty!26171 (= mapRes!26171 (and tp!50239 e!476931))))

(declare-fun mapRest!26171 () (Array (_ BitVec 32) ValueCell!7751))

(declare-fun mapValue!26171 () ValueCell!7751)

(declare-fun mapKey!26171 () (_ BitVec 32))

(assert (=> mapNonEmpty!26171 (= (arr!23497 _values!688) (store mapRest!26171 mapKey!26171 mapValue!26171))))

(declare-fun b!855423 () Bool)

(declare-fun res!581064 () Bool)

(assert (=> b!855423 (=> (not res!581064) (not e!476927))))

(assert (=> b!855423 (= res!581064 (and (= (select (arr!23496 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!855424 () Bool)

(assert (=> b!855424 (= e!476927 false)))

(declare-fun v!557 () V!26889)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!10846 0))(
  ( (tuple2!10847 (_1!5433 (_ BitVec 64)) (_2!5433 V!26889)) )
))
(declare-datatypes ((List!16722 0))(
  ( (Nil!16719) (Cons!16718 (h!17849 tuple2!10846) (t!23371 List!16722)) )
))
(declare-datatypes ((ListLongMap!9629 0))(
  ( (ListLongMap!9630 (toList!4830 List!16722)) )
))
(declare-fun lt!385667 () ListLongMap!9629)

(declare-fun minValue!654 () V!26889)

(declare-fun zeroValue!654 () V!26889)

(declare-fun getCurrentListMapNoExtraKeys!2812 (array!48938 array!48940 (_ BitVec 32) (_ BitVec 32) V!26889 V!26889 (_ BitVec 32) Int) ListLongMap!9629)

(assert (=> b!855424 (= lt!385667 (getCurrentListMapNoExtraKeys!2812 _keys!868 (array!48941 (store (arr!23497 _values!688) i!612 (ValueCellFull!7751 v!557)) (size!23938 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385668 () ListLongMap!9629)

(assert (=> b!855424 (= lt!385668 (getCurrentListMapNoExtraKeys!2812 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!855425 () Bool)

(declare-fun res!581066 () Bool)

(assert (=> b!855425 (=> (not res!581066) (not e!476927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!855425 (= res!581066 (validMask!0 mask!1196))))

(declare-fun b!855426 () Bool)

(declare-fun res!581069 () Bool)

(assert (=> b!855426 (=> (not res!581069) (not e!476927))))

(assert (=> b!855426 (= res!581069 (and (= (size!23938 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23937 _keys!868) (size!23938 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!855427 () Bool)

(assert (=> b!855427 (= e!476931 tp_is_empty!16381)))

(declare-fun b!855428 () Bool)

(assert (=> b!855428 (= e!476929 (and e!476928 mapRes!26171))))

(declare-fun condMapEmpty!26171 () Bool)

(declare-fun mapDefault!26171 () ValueCell!7751)

