; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73374 () Bool)

(assert start!73374)

(declare-fun b_free!14261 () Bool)

(declare-fun b_next!14261 () Bool)

(assert (=> start!73374 (= b_free!14261 (not b_next!14261))))

(declare-fun tp!50288 () Bool)

(declare-fun b_and!23635 () Bool)

(assert (=> start!73374 (= tp!50288 b_and!23635)))

(declare-fun b!855682 () Bool)

(declare-fun e!477048 () Bool)

(declare-fun tp_is_empty!16397 () Bool)

(assert (=> b!855682 (= e!477048 tp_is_empty!16397)))

(declare-fun res!581258 () Bool)

(declare-fun e!477051 () Bool)

(assert (=> start!73374 (=> (not res!581258) (not e!477051))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48966 0))(
  ( (array!48967 (arr!23510 (Array (_ BitVec 32) (_ BitVec 64))) (size!23951 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48966)

(assert (=> start!73374 (= res!581258 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23951 _keys!868))))))

(assert (=> start!73374 e!477051))

(assert (=> start!73374 tp_is_empty!16397))

(assert (=> start!73374 true))

(assert (=> start!73374 tp!50288))

(declare-fun array_inv!18612 (array!48966) Bool)

(assert (=> start!73374 (array_inv!18612 _keys!868)))

(declare-datatypes ((V!26909 0))(
  ( (V!26910 (val!8246 Int)) )
))
(declare-datatypes ((ValueCell!7759 0))(
  ( (ValueCellFull!7759 (v!10667 V!26909)) (EmptyCell!7759) )
))
(declare-datatypes ((array!48968 0))(
  ( (array!48969 (arr!23511 (Array (_ BitVec 32) ValueCell!7759)) (size!23952 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48968)

(declare-fun e!477049 () Bool)

(declare-fun array_inv!18613 (array!48968) Bool)

(assert (=> start!73374 (and (array_inv!18613 _values!688) e!477049)))

(declare-fun b!855683 () Bool)

(declare-fun e!477047 () Bool)

(assert (=> b!855683 (= e!477047 tp_is_empty!16397)))

(declare-fun b!855684 () Bool)

(assert (=> b!855684 (= e!477051 false)))

(declare-fun v!557 () V!26909)

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((tuple2!10858 0))(
  ( (tuple2!10859 (_1!5439 (_ BitVec 64)) (_2!5439 V!26909)) )
))
(declare-datatypes ((List!16733 0))(
  ( (Nil!16730) (Cons!16729 (h!17860 tuple2!10858) (t!23382 List!16733)) )
))
(declare-datatypes ((ListLongMap!9641 0))(
  ( (ListLongMap!9642 (toList!4836 List!16733)) )
))
(declare-fun lt!385715 () ListLongMap!9641)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26909)

(declare-fun zeroValue!654 () V!26909)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2818 (array!48966 array!48968 (_ BitVec 32) (_ BitVec 32) V!26909 V!26909 (_ BitVec 32) Int) ListLongMap!9641)

(assert (=> b!855684 (= lt!385715 (getCurrentListMapNoExtraKeys!2818 _keys!868 (array!48969 (store (arr!23511 _values!688) i!612 (ValueCellFull!7759 v!557)) (size!23952 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385716 () ListLongMap!9641)

(assert (=> b!855684 (= lt!385716 (getCurrentListMapNoExtraKeys!2818 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!855685 () Bool)

(declare-fun res!581260 () Bool)

(assert (=> b!855685 (=> (not res!581260) (not e!477051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!855685 (= res!581260 (validMask!0 mask!1196))))

(declare-fun b!855686 () Bool)

(declare-fun res!581255 () Bool)

(assert (=> b!855686 (=> (not res!581255) (not e!477051))))

(assert (=> b!855686 (= res!581255 (and (= (size!23952 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23951 _keys!868) (size!23952 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!855687 () Bool)

(declare-fun res!581261 () Bool)

(assert (=> b!855687 (=> (not res!581261) (not e!477051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48966 (_ BitVec 32)) Bool)

(assert (=> b!855687 (= res!581261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!855688 () Bool)

(declare-fun mapRes!26195 () Bool)

(assert (=> b!855688 (= e!477049 (and e!477047 mapRes!26195))))

(declare-fun condMapEmpty!26195 () Bool)

(declare-fun mapDefault!26195 () ValueCell!7759)

