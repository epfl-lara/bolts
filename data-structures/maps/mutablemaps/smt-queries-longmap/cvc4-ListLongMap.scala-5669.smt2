; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73830 () Bool)

(assert start!73830)

(declare-fun b_free!14717 () Bool)

(declare-fun b_next!14717 () Bool)

(assert (=> start!73830 (= b_free!14717 (not b_next!14717))))

(declare-fun tp!51656 () Bool)

(declare-fun b_and!24431 () Bool)

(assert (=> start!73830 (= tp!51656 b_and!24431)))

(declare-fun b!866026 () Bool)

(declare-fun res!588547 () Bool)

(declare-fun e!482456 () Bool)

(assert (=> b!866026 (=> (not res!588547) (not e!482456))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49848 0))(
  ( (array!49849 (arr!23951 (Array (_ BitVec 32) (_ BitVec 64))) (size!24392 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49848)

(declare-datatypes ((V!27517 0))(
  ( (V!27518 (val!8474 Int)) )
))
(declare-datatypes ((ValueCell!7987 0))(
  ( (ValueCellFull!7987 (v!10895 V!27517)) (EmptyCell!7987) )
))
(declare-datatypes ((array!49850 0))(
  ( (array!49851 (arr!23952 (Array (_ BitVec 32) ValueCell!7987)) (size!24393 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49850)

(assert (=> b!866026 (= res!588547 (and (= (size!24393 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24392 _keys!868) (size!24393 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!866027 () Bool)

(declare-fun res!588548 () Bool)

(assert (=> b!866027 (=> (not res!588548) (not e!482456))))

(declare-datatypes ((List!17102 0))(
  ( (Nil!17099) (Cons!17098 (h!18229 (_ BitVec 64)) (t!24093 List!17102)) )
))
(declare-fun arrayNoDuplicates!0 (array!49848 (_ BitVec 32) List!17102) Bool)

(assert (=> b!866027 (= res!588548 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17099))))

(declare-fun mapIsEmpty!26879 () Bool)

(declare-fun mapRes!26879 () Bool)

(assert (=> mapIsEmpty!26879 mapRes!26879))

(declare-fun b!866028 () Bool)

(declare-fun e!482453 () Bool)

(declare-fun e!482452 () Bool)

(assert (=> b!866028 (= e!482453 e!482452)))

(declare-fun res!588546 () Bool)

(assert (=> b!866028 (=> res!588546 e!482452)))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!866028 (= res!588546 (= k!854 (select (arr!23951 _keys!868) from!1053)))))

(assert (=> b!866028 (not (= (select (arr!23951 _keys!868) from!1053) k!854))))

(declare-datatypes ((Unit!29657 0))(
  ( (Unit!29658) )
))
(declare-fun lt!392817 () Unit!29657)

(declare-fun e!482460 () Unit!29657)

(assert (=> b!866028 (= lt!392817 e!482460)))

(declare-fun c!92214 () Bool)

(assert (=> b!866028 (= c!92214 (= (select (arr!23951 _keys!868) from!1053) k!854))))

(declare-datatypes ((tuple2!11238 0))(
  ( (tuple2!11239 (_1!5629 (_ BitVec 64)) (_2!5629 V!27517)) )
))
(declare-datatypes ((List!17103 0))(
  ( (Nil!17100) (Cons!17099 (h!18230 tuple2!11238) (t!24094 List!17103)) )
))
(declare-datatypes ((ListLongMap!10021 0))(
  ( (ListLongMap!10022 (toList!5026 List!17103)) )
))
(declare-fun lt!392809 () ListLongMap!10021)

(declare-fun lt!392802 () ListLongMap!10021)

(assert (=> b!866028 (= lt!392809 lt!392802)))

(declare-fun lt!392815 () ListLongMap!10021)

(declare-fun lt!392811 () tuple2!11238)

(declare-fun +!2322 (ListLongMap!10021 tuple2!11238) ListLongMap!10021)

(assert (=> b!866028 (= lt!392802 (+!2322 lt!392815 lt!392811))))

(declare-fun lt!392810 () V!27517)

(assert (=> b!866028 (= lt!392811 (tuple2!11239 (select (arr!23951 _keys!868) from!1053) lt!392810))))

(declare-fun defaultEntry!696 () Int)

(declare-fun get!12677 (ValueCell!7987 V!27517) V!27517)

(declare-fun dynLambda!1189 (Int (_ BitVec 64)) V!27517)

(assert (=> b!866028 (= lt!392810 (get!12677 (select (arr!23952 _values!688) from!1053) (dynLambda!1189 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!866029 () Bool)

(declare-fun e!482455 () Bool)

(declare-fun e!482457 () Bool)

(assert (=> b!866029 (= e!482455 (and e!482457 mapRes!26879))))

(declare-fun condMapEmpty!26879 () Bool)

(declare-fun mapDefault!26879 () ValueCell!7987)

