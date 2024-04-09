; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73862 () Bool)

(assert start!73862)

(declare-fun b_free!14749 () Bool)

(declare-fun b_next!14749 () Bool)

(assert (=> start!73862 (= b_free!14749 (not b_next!14749))))

(declare-fun tp!51751 () Bool)

(declare-fun b_and!24495 () Bool)

(assert (=> start!73862 (= tp!51751 b_and!24495)))

(declare-fun b!866825 () Bool)

(declare-fun e!482892 () Bool)

(declare-fun tp_is_empty!16885 () Bool)

(assert (=> b!866825 (= e!482892 tp_is_empty!16885)))

(declare-fun b!866826 () Bool)

(declare-fun e!482884 () Bool)

(declare-fun e!482885 () Bool)

(assert (=> b!866826 (= e!482884 e!482885)))

(declare-fun res!589077 () Bool)

(assert (=> b!866826 (=> res!589077 e!482885)))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49910 0))(
  ( (array!49911 (arr!23982 (Array (_ BitVec 32) (_ BitVec 64))) (size!24423 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49910)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!866826 (= res!589077 (= k!854 (select (arr!23982 _keys!868) from!1053)))))

(assert (=> b!866826 (not (= (select (arr!23982 _keys!868) from!1053) k!854))))

(declare-datatypes ((Unit!29706 0))(
  ( (Unit!29707) )
))
(declare-fun lt!393582 () Unit!29706)

(declare-fun e!482889 () Unit!29706)

(assert (=> b!866826 (= lt!393582 e!482889)))

(declare-fun c!92262 () Bool)

(assert (=> b!866826 (= c!92262 (= (select (arr!23982 _keys!868) from!1053) k!854))))

(declare-datatypes ((V!27561 0))(
  ( (V!27562 (val!8490 Int)) )
))
(declare-datatypes ((tuple2!11266 0))(
  ( (tuple2!11267 (_1!5643 (_ BitVec 64)) (_2!5643 V!27561)) )
))
(declare-datatypes ((List!17129 0))(
  ( (Nil!17126) (Cons!17125 (h!18256 tuple2!11266) (t!24152 List!17129)) )
))
(declare-datatypes ((ListLongMap!10049 0))(
  ( (ListLongMap!10050 (toList!5040 List!17129)) )
))
(declare-fun lt!393570 () ListLongMap!10049)

(declare-fun lt!393577 () ListLongMap!10049)

(assert (=> b!866826 (= lt!393570 lt!393577)))

(declare-fun lt!393571 () ListLongMap!10049)

(declare-fun lt!393574 () tuple2!11266)

(declare-fun +!2335 (ListLongMap!10049 tuple2!11266) ListLongMap!10049)

(assert (=> b!866826 (= lt!393577 (+!2335 lt!393571 lt!393574))))

(declare-fun lt!393572 () V!27561)

(assert (=> b!866826 (= lt!393574 (tuple2!11267 (select (arr!23982 _keys!868) from!1053) lt!393572))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!8003 0))(
  ( (ValueCellFull!8003 (v!10911 V!27561)) (EmptyCell!8003) )
))
(declare-datatypes ((array!49912 0))(
  ( (array!49913 (arr!23983 (Array (_ BitVec 32) ValueCell!8003)) (size!24424 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49912)

(declare-fun get!12701 (ValueCell!8003 V!27561) V!27561)

(declare-fun dynLambda!1201 (Int (_ BitVec 64)) V!27561)

(assert (=> b!866826 (= lt!393572 (get!12701 (select (arr!23983 _values!688) from!1053) (dynLambda!1201 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!866827 () Bool)

(declare-fun Unit!29708 () Unit!29706)

(assert (=> b!866827 (= e!482889 Unit!29708)))

(declare-fun res!589074 () Bool)

(declare-fun e!482888 () Bool)

(assert (=> start!73862 (=> (not res!589074) (not e!482888))))

(assert (=> start!73862 (= res!589074 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24423 _keys!868))))))

(assert (=> start!73862 e!482888))

(assert (=> start!73862 tp_is_empty!16885))

(assert (=> start!73862 true))

(assert (=> start!73862 tp!51751))

(declare-fun array_inv!18936 (array!49910) Bool)

(assert (=> start!73862 (array_inv!18936 _keys!868)))

(declare-fun e!482886 () Bool)

(declare-fun array_inv!18937 (array!49912) Bool)

(assert (=> start!73862 (and (array_inv!18937 _values!688) e!482886)))

(declare-fun b!866828 () Bool)

(declare-fun res!589071 () Bool)

(assert (=> b!866828 (=> (not res!589071) (not e!482888))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!866828 (= res!589071 (and (= (select (arr!23982 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!866829 () Bool)

(declare-fun res!589072 () Bool)

(assert (=> b!866829 (=> (not res!589072) (not e!482888))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!866829 (= res!589072 (and (= (size!24424 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24423 _keys!868) (size!24424 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!866830 () Bool)

(declare-fun res!589080 () Bool)

(assert (=> b!866830 (=> (not res!589080) (not e!482888))))

(declare-datatypes ((List!17130 0))(
  ( (Nil!17127) (Cons!17126 (h!18257 (_ BitVec 64)) (t!24153 List!17130)) )
))
(declare-fun arrayNoDuplicates!0 (array!49910 (_ BitVec 32) List!17130) Bool)

(assert (=> b!866830 (= res!589080 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17127))))

(declare-fun b!866831 () Bool)

(declare-fun res!589075 () Bool)

(assert (=> b!866831 (=> (not res!589075) (not e!482888))))

(assert (=> b!866831 (= res!589075 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24423 _keys!868))))))

(declare-fun mapNonEmpty!26927 () Bool)

(declare-fun mapRes!26927 () Bool)

(declare-fun tp!51752 () Bool)

(declare-fun e!482887 () Bool)

(assert (=> mapNonEmpty!26927 (= mapRes!26927 (and tp!51752 e!482887))))

(declare-fun mapRest!26927 () (Array (_ BitVec 32) ValueCell!8003))

(declare-fun mapValue!26927 () ValueCell!8003)

(declare-fun mapKey!26927 () (_ BitVec 32))

(assert (=> mapNonEmpty!26927 (= (arr!23983 _values!688) (store mapRest!26927 mapKey!26927 mapValue!26927))))

(declare-fun b!866832 () Bool)

(assert (=> b!866832 (= e!482887 tp_is_empty!16885)))

(declare-fun b!866833 () Bool)

(declare-fun res!589073 () Bool)

(assert (=> b!866833 (=> (not res!589073) (not e!482888))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!866833 (= res!589073 (validKeyInArray!0 k!854))))

(declare-fun b!866834 () Bool)

(assert (=> b!866834 (= e!482886 (and e!482892 mapRes!26927))))

(declare-fun condMapEmpty!26927 () Bool)

(declare-fun mapDefault!26927 () ValueCell!8003)

