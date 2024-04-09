; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73670 () Bool)

(assert start!73670)

(declare-fun b_free!14557 () Bool)

(declare-fun b_next!14557 () Bool)

(assert (=> start!73670 (= b_free!14557 (not b_next!14557))))

(declare-fun tp!51176 () Bool)

(declare-fun b_and!24111 () Bool)

(assert (=> start!73670 (= tp!51176 b_and!24111)))

(declare-fun b!862026 () Bool)

(declare-fun res!585902 () Bool)

(declare-fun e!480299 () Bool)

(assert (=> b!862026 (=> (not res!585902) (not e!480299))))

(declare-datatypes ((array!49532 0))(
  ( (array!49533 (arr!23793 (Array (_ BitVec 32) (_ BitVec 64))) (size!24234 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49532)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49532 (_ BitVec 32)) Bool)

(assert (=> b!862026 (= res!585902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!862027 () Bool)

(declare-fun res!585906 () Bool)

(assert (=> b!862027 (=> (not res!585906) (not e!480299))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!27305 0))(
  ( (V!27306 (val!8394 Int)) )
))
(declare-datatypes ((ValueCell!7907 0))(
  ( (ValueCellFull!7907 (v!10815 V!27305)) (EmptyCell!7907) )
))
(declare-datatypes ((array!49534 0))(
  ( (array!49535 (arr!23794 (Array (_ BitVec 32) ValueCell!7907)) (size!24235 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49534)

(assert (=> b!862027 (= res!585906 (and (= (size!24235 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24234 _keys!868) (size!24235 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!862028 () Bool)

(declare-fun res!585904 () Bool)

(assert (=> b!862028 (=> (not res!585904) (not e!480299))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!862028 (= res!585904 (validMask!0 mask!1196))))

(declare-fun b!862029 () Bool)

(declare-fun res!585908 () Bool)

(assert (=> b!862029 (=> (not res!585908) (not e!480299))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!862029 (= res!585908 (and (= (select (arr!23793 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!862030 () Bool)

(declare-fun e!480300 () Bool)

(declare-fun tp_is_empty!16693 () Bool)

(assert (=> b!862030 (= e!480300 tp_is_empty!16693)))

(declare-fun b!862031 () Bool)

(declare-fun res!585903 () Bool)

(assert (=> b!862031 (=> (not res!585903) (not e!480299))))

(declare-datatypes ((List!16966 0))(
  ( (Nil!16963) (Cons!16962 (h!18093 (_ BitVec 64)) (t!23797 List!16966)) )
))
(declare-fun arrayNoDuplicates!0 (array!49532 (_ BitVec 32) List!16966) Bool)

(assert (=> b!862031 (= res!585903 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16963))))

(declare-fun mapNonEmpty!26639 () Bool)

(declare-fun mapRes!26639 () Bool)

(declare-fun tp!51175 () Bool)

(assert (=> mapNonEmpty!26639 (= mapRes!26639 (and tp!51175 e!480300))))

(declare-fun mapKey!26639 () (_ BitVec 32))

(declare-fun mapRest!26639 () (Array (_ BitVec 32) ValueCell!7907))

(declare-fun mapValue!26639 () ValueCell!7907)

(assert (=> mapNonEmpty!26639 (= (arr!23794 _values!688) (store mapRest!26639 mapKey!26639 mapValue!26639))))

(declare-fun b!862032 () Bool)

(declare-datatypes ((Unit!29396 0))(
  ( (Unit!29397) )
))
(declare-fun e!480293 () Unit!29396)

(declare-fun Unit!29398 () Unit!29396)

(assert (=> b!862032 (= e!480293 Unit!29398)))

(declare-fun b!862033 () Bool)

(declare-fun Unit!29399 () Unit!29396)

(assert (=> b!862033 (= e!480293 Unit!29399)))

(declare-fun lt!388963 () Unit!29396)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49532 (_ BitVec 32) (_ BitVec 32)) Unit!29396)

(assert (=> b!862033 (= lt!388963 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!862033 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16963)))

(declare-fun lt!388974 () Unit!29396)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49532 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29396)

(assert (=> b!862033 (= lt!388974 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49532 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!862033 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388966 () Unit!29396)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49532 (_ BitVec 64) (_ BitVec 32) List!16966) Unit!29396)

(assert (=> b!862033 (= lt!388966 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!16963))))

(assert (=> b!862033 false))

(declare-fun res!585910 () Bool)

(assert (=> start!73670 (=> (not res!585910) (not e!480299))))

(assert (=> start!73670 (= res!585910 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24234 _keys!868))))))

(assert (=> start!73670 e!480299))

(assert (=> start!73670 tp_is_empty!16693))

(assert (=> start!73670 true))

(assert (=> start!73670 tp!51176))

(declare-fun array_inv!18800 (array!49532) Bool)

(assert (=> start!73670 (array_inv!18800 _keys!868)))

(declare-fun e!480296 () Bool)

(declare-fun array_inv!18801 (array!49534) Bool)

(assert (=> start!73670 (and (array_inv!18801 _values!688) e!480296)))

(declare-fun b!862025 () Bool)

(declare-fun e!480295 () Bool)

(assert (=> b!862025 (= e!480296 (and e!480295 mapRes!26639))))

(declare-fun condMapEmpty!26639 () Bool)

(declare-fun mapDefault!26639 () ValueCell!7907)

