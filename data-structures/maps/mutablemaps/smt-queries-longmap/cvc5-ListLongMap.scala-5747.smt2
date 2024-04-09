; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74338 () Bool)

(assert start!74338)

(declare-fun b_free!15073 () Bool)

(declare-fun b_next!15073 () Bool)

(assert (=> start!74338 (= b_free!15073 (not b_next!15073))))

(declare-fun tp!52894 () Bool)

(declare-fun b_and!24867 () Bool)

(assert (=> start!74338 (= tp!52894 b_and!24867)))

(declare-fun b!874229 () Bool)

(declare-fun res!594219 () Bool)

(declare-fun e!486793 () Bool)

(assert (=> b!874229 (=> (not res!594219) (not e!486793))))

(declare-datatypes ((array!50746 0))(
  ( (array!50747 (arr!24397 (Array (_ BitVec 32) (_ BitVec 64))) (size!24838 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50746)

(declare-datatypes ((List!17388 0))(
  ( (Nil!17385) (Cons!17384 (h!18515 (_ BitVec 64)) (t!24437 List!17388)) )
))
(declare-fun arrayNoDuplicates!0 (array!50746 (_ BitVec 32) List!17388) Bool)

(assert (=> b!874229 (= res!594219 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17385))))

(declare-fun b!874231 () Bool)

(declare-fun res!594220 () Bool)

(assert (=> b!874231 (=> (not res!594220) (not e!486793))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!874231 (= res!594220 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24838 _keys!868))))))

(declare-fun b!874232 () Bool)

(declare-fun res!594218 () Bool)

(assert (=> b!874232 (=> (not res!594218) (not e!486793))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!28137 0))(
  ( (V!28138 (val!8706 Int)) )
))
(declare-datatypes ((ValueCell!8219 0))(
  ( (ValueCellFull!8219 (v!11131 V!28137)) (EmptyCell!8219) )
))
(declare-datatypes ((array!50748 0))(
  ( (array!50749 (arr!24398 (Array (_ BitVec 32) ValueCell!8219)) (size!24839 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50748)

(assert (=> b!874232 (= res!594218 (and (= (size!24839 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24838 _keys!868) (size!24839 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!874233 () Bool)

(declare-fun res!594217 () Bool)

(assert (=> b!874233 (=> (not res!594217) (not e!486793))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50746 (_ BitVec 32)) Bool)

(assert (=> b!874233 (= res!594217 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!27584 () Bool)

(declare-fun mapRes!27584 () Bool)

(declare-fun tp!52895 () Bool)

(declare-fun e!486791 () Bool)

(assert (=> mapNonEmpty!27584 (= mapRes!27584 (and tp!52895 e!486791))))

(declare-fun mapKey!27584 () (_ BitVec 32))

(declare-fun mapRest!27584 () (Array (_ BitVec 32) ValueCell!8219))

(declare-fun mapValue!27584 () ValueCell!8219)

(assert (=> mapNonEmpty!27584 (= (arr!24398 _values!688) (store mapRest!27584 mapKey!27584 mapValue!27584))))

(declare-fun b!874234 () Bool)

(declare-fun res!594221 () Bool)

(assert (=> b!874234 (=> (not res!594221) (not e!486793))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!874234 (= res!594221 (and (= (select (arr!24397 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!874235 () Bool)

(declare-fun tp_is_empty!17317 () Bool)

(assert (=> b!874235 (= e!486791 tp_is_empty!17317)))

(declare-fun mapIsEmpty!27584 () Bool)

(assert (=> mapIsEmpty!27584 mapRes!27584))

(declare-fun res!594216 () Bool)

(assert (=> start!74338 (=> (not res!594216) (not e!486793))))

(assert (=> start!74338 (= res!594216 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24838 _keys!868))))))

(assert (=> start!74338 e!486793))

(assert (=> start!74338 tp_is_empty!17317))

(assert (=> start!74338 true))

(assert (=> start!74338 tp!52894))

(declare-fun array_inv!19220 (array!50746) Bool)

(assert (=> start!74338 (array_inv!19220 _keys!868)))

(declare-fun e!486790 () Bool)

(declare-fun array_inv!19221 (array!50748) Bool)

(assert (=> start!74338 (and (array_inv!19221 _values!688) e!486790)))

(declare-fun b!874230 () Bool)

(declare-fun res!594223 () Bool)

(assert (=> b!874230 (=> (not res!594223) (not e!486793))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874230 (= res!594223 (validKeyInArray!0 k!854))))

(declare-fun b!874236 () Bool)

(declare-fun res!594222 () Bool)

(assert (=> b!874236 (=> (not res!594222) (not e!486793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874236 (= res!594222 (validMask!0 mask!1196))))

(declare-fun b!874237 () Bool)

(declare-fun e!486792 () Bool)

(assert (=> b!874237 (= e!486790 (and e!486792 mapRes!27584))))

(declare-fun condMapEmpty!27584 () Bool)

(declare-fun mapDefault!27584 () ValueCell!8219)

