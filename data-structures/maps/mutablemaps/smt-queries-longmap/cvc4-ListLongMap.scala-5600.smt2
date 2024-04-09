; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73416 () Bool)

(assert start!73416)

(declare-fun b_free!14303 () Bool)

(declare-fun b_next!14303 () Bool)

(assert (=> start!73416 (= b_free!14303 (not b_next!14303))))

(declare-fun tp!50414 () Bool)

(declare-fun b_and!23677 () Bool)

(assert (=> start!73416 (= tp!50414 b_and!23677)))

(declare-fun b!856428 () Bool)

(declare-fun res!581820 () Bool)

(declare-fun e!477418 () Bool)

(assert (=> b!856428 (=> (not res!581820) (not e!477418))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49046 0))(
  ( (array!49047 (arr!23550 (Array (_ BitVec 32) (_ BitVec 64))) (size!23991 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49046)

(declare-datatypes ((V!26965 0))(
  ( (V!26966 (val!8267 Int)) )
))
(declare-datatypes ((ValueCell!7780 0))(
  ( (ValueCellFull!7780 (v!10688 V!26965)) (EmptyCell!7780) )
))
(declare-datatypes ((array!49048 0))(
  ( (array!49049 (arr!23551 (Array (_ BitVec 32) ValueCell!7780)) (size!23992 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49048)

(assert (=> b!856428 (= res!581820 (and (= (size!23992 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23991 _keys!868) (size!23992 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!856429 () Bool)

(declare-fun res!581819 () Bool)

(assert (=> b!856429 (=> (not res!581819) (not e!477418))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!856429 (= res!581819 (validKeyInArray!0 k!854))))

(declare-fun b!856430 () Bool)

(declare-fun e!477420 () Bool)

(declare-fun tp_is_empty!16439 () Bool)

(assert (=> b!856430 (= e!477420 tp_is_empty!16439)))

(declare-fun b!856431 () Bool)

(declare-fun e!477417 () Bool)

(assert (=> b!856431 (= e!477418 e!477417)))

(declare-fun res!581815 () Bool)

(assert (=> b!856431 (=> (not res!581815) (not e!477417))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!856431 (= res!581815 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((tuple2!10888 0))(
  ( (tuple2!10889 (_1!5454 (_ BitVec 64)) (_2!5454 V!26965)) )
))
(declare-datatypes ((List!16762 0))(
  ( (Nil!16759) (Cons!16758 (h!17889 tuple2!10888) (t!23411 List!16762)) )
))
(declare-datatypes ((ListLongMap!9671 0))(
  ( (ListLongMap!9672 (toList!4851 List!16762)) )
))
(declare-fun lt!385949 () ListLongMap!9671)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!26965)

(declare-fun zeroValue!654 () V!26965)

(declare-fun lt!385950 () array!49048)

(declare-fun getCurrentListMapNoExtraKeys!2833 (array!49046 array!49048 (_ BitVec 32) (_ BitVec 32) V!26965 V!26965 (_ BitVec 32) Int) ListLongMap!9671)

(assert (=> b!856431 (= lt!385949 (getCurrentListMapNoExtraKeys!2833 _keys!868 lt!385950 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26965)

(assert (=> b!856431 (= lt!385950 (array!49049 (store (arr!23551 _values!688) i!612 (ValueCellFull!7780 v!557)) (size!23992 _values!688)))))

(declare-fun lt!385947 () ListLongMap!9671)

(assert (=> b!856431 (= lt!385947 (getCurrentListMapNoExtraKeys!2833 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!856432 () Bool)

(declare-fun res!581818 () Bool)

(assert (=> b!856432 (=> (not res!581818) (not e!477418))))

(assert (=> b!856432 (= res!581818 (and (= (select (arr!23550 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!26258 () Bool)

(declare-fun mapRes!26258 () Bool)

(assert (=> mapIsEmpty!26258 mapRes!26258))

(declare-fun mapNonEmpty!26258 () Bool)

(declare-fun tp!50413 () Bool)

(declare-fun e!477416 () Bool)

(assert (=> mapNonEmpty!26258 (= mapRes!26258 (and tp!50413 e!477416))))

(declare-fun mapValue!26258 () ValueCell!7780)

(declare-fun mapKey!26258 () (_ BitVec 32))

(declare-fun mapRest!26258 () (Array (_ BitVec 32) ValueCell!7780))

(assert (=> mapNonEmpty!26258 (= (arr!23551 _values!688) (store mapRest!26258 mapKey!26258 mapValue!26258))))

(declare-fun res!581817 () Bool)

(assert (=> start!73416 (=> (not res!581817) (not e!477418))))

(assert (=> start!73416 (= res!581817 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23991 _keys!868))))))

(assert (=> start!73416 e!477418))

(assert (=> start!73416 tp_is_empty!16439))

(assert (=> start!73416 true))

(assert (=> start!73416 tp!50414))

(declare-fun array_inv!18640 (array!49046) Bool)

(assert (=> start!73416 (array_inv!18640 _keys!868)))

(declare-fun e!477415 () Bool)

(declare-fun array_inv!18641 (array!49048) Bool)

(assert (=> start!73416 (and (array_inv!18641 _values!688) e!477415)))

(declare-fun b!856433 () Bool)

(assert (=> b!856433 (= e!477417 (not true))))

(declare-fun +!2160 (ListLongMap!9671 tuple2!10888) ListLongMap!9671)

(assert (=> b!856433 (= (getCurrentListMapNoExtraKeys!2833 _keys!868 lt!385950 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2160 (getCurrentListMapNoExtraKeys!2833 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10889 k!854 v!557)))))

(declare-datatypes ((Unit!29162 0))(
  ( (Unit!29163) )
))
(declare-fun lt!385948 () Unit!29162)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!420 (array!49046 array!49048 (_ BitVec 32) (_ BitVec 32) V!26965 V!26965 (_ BitVec 32) (_ BitVec 64) V!26965 (_ BitVec 32) Int) Unit!29162)

(assert (=> b!856433 (= lt!385948 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!420 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!856434 () Bool)

(declare-fun res!581816 () Bool)

(assert (=> b!856434 (=> (not res!581816) (not e!477418))))

(declare-datatypes ((List!16763 0))(
  ( (Nil!16760) (Cons!16759 (h!17890 (_ BitVec 64)) (t!23412 List!16763)) )
))
(declare-fun arrayNoDuplicates!0 (array!49046 (_ BitVec 32) List!16763) Bool)

(assert (=> b!856434 (= res!581816 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16760))))

(declare-fun b!856435 () Bool)

(declare-fun res!581814 () Bool)

(assert (=> b!856435 (=> (not res!581814) (not e!477418))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!856435 (= res!581814 (validMask!0 mask!1196))))

(declare-fun b!856436 () Bool)

(assert (=> b!856436 (= e!477416 tp_is_empty!16439)))

(declare-fun b!856437 () Bool)

(declare-fun res!581813 () Bool)

(assert (=> b!856437 (=> (not res!581813) (not e!477418))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49046 (_ BitVec 32)) Bool)

(assert (=> b!856437 (= res!581813 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!856438 () Bool)

(declare-fun res!581812 () Bool)

(assert (=> b!856438 (=> (not res!581812) (not e!477418))))

(assert (=> b!856438 (= res!581812 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23991 _keys!868))))))

(declare-fun b!856439 () Bool)

(assert (=> b!856439 (= e!477415 (and e!477420 mapRes!26258))))

(declare-fun condMapEmpty!26258 () Bool)

(declare-fun mapDefault!26258 () ValueCell!7780)

