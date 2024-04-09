; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73544 () Bool)

(assert start!73544)

(declare-fun b_free!14431 () Bool)

(declare-fun b_next!14431 () Bool)

(assert (=> start!73544 (= b_free!14431 (not b_next!14431))))

(declare-fun tp!50797 () Bool)

(declare-fun b_and!23859 () Bool)

(assert (=> start!73544 (= tp!50797 b_and!23859)))

(declare-fun b!858916 () Bool)

(declare-fun e!478698 () Bool)

(declare-fun tp_is_empty!16567 () Bool)

(assert (=> b!858916 (= e!478698 tp_is_empty!16567)))

(declare-fun b!858917 () Bool)

(declare-fun res!583677 () Bool)

(declare-fun e!478702 () Bool)

(assert (=> b!858917 (=> (not res!583677) (not e!478702))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49292 0))(
  ( (array!49293 (arr!23673 (Array (_ BitVec 32) (_ BitVec 64))) (size!24114 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49292)

(assert (=> b!858917 (= res!583677 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24114 _keys!868))))))

(declare-fun b!858918 () Bool)

(declare-fun res!583673 () Bool)

(assert (=> b!858918 (=> (not res!583673) (not e!478702))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!858918 (= res!583673 (and (= (select (arr!23673 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!26450 () Bool)

(declare-fun mapRes!26450 () Bool)

(declare-fun tp!50798 () Bool)

(assert (=> mapNonEmpty!26450 (= mapRes!26450 (and tp!50798 e!478698))))

(declare-datatypes ((V!27137 0))(
  ( (V!27138 (val!8331 Int)) )
))
(declare-datatypes ((ValueCell!7844 0))(
  ( (ValueCellFull!7844 (v!10752 V!27137)) (EmptyCell!7844) )
))
(declare-fun mapValue!26450 () ValueCell!7844)

(declare-datatypes ((array!49294 0))(
  ( (array!49295 (arr!23674 (Array (_ BitVec 32) ValueCell!7844)) (size!24115 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49294)

(declare-fun mapKey!26450 () (_ BitVec 32))

(declare-fun mapRest!26450 () (Array (_ BitVec 32) ValueCell!7844))

(assert (=> mapNonEmpty!26450 (= (arr!23674 _values!688) (store mapRest!26450 mapKey!26450 mapValue!26450))))

(declare-fun b!858919 () Bool)

(declare-fun e!478704 () Bool)

(declare-fun e!478703 () Bool)

(assert (=> b!858919 (= e!478704 (not e!478703))))

(declare-fun res!583672 () Bool)

(assert (=> b!858919 (=> res!583672 e!478703)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!858919 (= res!583672 (not (validKeyInArray!0 (select (arr!23673 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!10986 0))(
  ( (tuple2!10987 (_1!5503 (_ BitVec 64)) (_2!5503 V!27137)) )
))
(declare-datatypes ((List!16858 0))(
  ( (Nil!16855) (Cons!16854 (h!17985 tuple2!10986) (t!23563 List!16858)) )
))
(declare-datatypes ((ListLongMap!9769 0))(
  ( (ListLongMap!9770 (toList!4900 List!16858)) )
))
(declare-fun lt!387003 () ListLongMap!9769)

(declare-fun lt!387008 () ListLongMap!9769)

(assert (=> b!858919 (= lt!387003 lt!387008)))

(declare-fun v!557 () V!27137)

(declare-fun lt!387006 () ListLongMap!9769)

(declare-fun +!2203 (ListLongMap!9769 tuple2!10986) ListLongMap!9769)

(assert (=> b!858919 (= lt!387008 (+!2203 lt!387006 (tuple2!10987 k!854 v!557)))))

(declare-fun lt!387002 () array!49294)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27137)

(declare-fun zeroValue!654 () V!27137)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2880 (array!49292 array!49294 (_ BitVec 32) (_ BitVec 32) V!27137 V!27137 (_ BitVec 32) Int) ListLongMap!9769)

(assert (=> b!858919 (= lt!387003 (getCurrentListMapNoExtraKeys!2880 _keys!868 lt!387002 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!858919 (= lt!387006 (getCurrentListMapNoExtraKeys!2880 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29250 0))(
  ( (Unit!29251) )
))
(declare-fun lt!387005 () Unit!29250)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!460 (array!49292 array!49294 (_ BitVec 32) (_ BitVec 32) V!27137 V!27137 (_ BitVec 32) (_ BitVec 64) V!27137 (_ BitVec 32) Int) Unit!29250)

(assert (=> b!858919 (= lt!387005 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!460 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!858921 () Bool)

(declare-fun res!583679 () Bool)

(assert (=> b!858921 (=> (not res!583679) (not e!478702))))

(declare-datatypes ((List!16859 0))(
  ( (Nil!16856) (Cons!16855 (h!17986 (_ BitVec 64)) (t!23564 List!16859)) )
))
(declare-fun arrayNoDuplicates!0 (array!49292 (_ BitVec 32) List!16859) Bool)

(assert (=> b!858921 (= res!583679 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16856))))

(declare-fun b!858922 () Bool)

(declare-fun e!478697 () Bool)

(assert (=> b!858922 (= e!478697 tp_is_empty!16567)))

(declare-fun b!858923 () Bool)

(declare-fun res!583675 () Bool)

(assert (=> b!858923 (=> (not res!583675) (not e!478702))))

(assert (=> b!858923 (= res!583675 (and (= (size!24115 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24114 _keys!868) (size!24115 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!858924 () Bool)

(declare-fun e!478700 () Bool)

(assert (=> b!858924 (= e!478700 (and e!478697 mapRes!26450))))

(declare-fun condMapEmpty!26450 () Bool)

(declare-fun mapDefault!26450 () ValueCell!7844)

