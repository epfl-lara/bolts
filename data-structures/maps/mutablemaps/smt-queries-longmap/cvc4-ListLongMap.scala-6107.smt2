; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78782 () Bool)

(assert start!78782)

(declare-fun b_free!16967 () Bool)

(declare-fun b_next!16967 () Bool)

(assert (=> start!78782 (= b_free!16967 (not b_next!16967))))

(declare-fun tp!59343 () Bool)

(declare-fun b_and!27689 () Bool)

(assert (=> start!78782 (= tp!59343 b_and!27689)))

(declare-fun b!918753 () Bool)

(declare-fun res!619589 () Bool)

(declare-fun e!515761 () Bool)

(assert (=> b!918753 (=> (not res!619589) (not e!515761))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!30931 0))(
  ( (V!30932 (val!9788 Int)) )
))
(declare-fun v!791 () V!30931)

(declare-datatypes ((tuple2!12802 0))(
  ( (tuple2!12803 (_1!6411 (_ BitVec 64)) (_2!6411 V!30931)) )
))
(declare-datatypes ((List!18644 0))(
  ( (Nil!18641) (Cons!18640 (h!19786 tuple2!12802) (t!26349 List!18644)) )
))
(declare-datatypes ((ListLongMap!11513 0))(
  ( (ListLongMap!11514 (toList!5772 List!18644)) )
))
(declare-fun lt!412388 () ListLongMap!11513)

(declare-fun apply!590 (ListLongMap!11513 (_ BitVec 64)) V!30931)

(assert (=> b!918753 (= res!619589 (= (apply!590 lt!412388 k!1099) v!791))))

(declare-fun b!918754 () Bool)

(declare-fun res!619591 () Bool)

(declare-fun e!515765 () Bool)

(assert (=> b!918754 (=> (not res!619591) (not e!515765))))

(declare-datatypes ((array!54942 0))(
  ( (array!54943 (arr!26412 (Array (_ BitVec 32) (_ BitVec 64))) (size!26872 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54942)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9256 0))(
  ( (ValueCellFull!9256 (v!12306 V!30931)) (EmptyCell!9256) )
))
(declare-datatypes ((array!54944 0))(
  ( (array!54945 (arr!26413 (Array (_ BitVec 32) ValueCell!9256)) (size!26873 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54944)

(assert (=> b!918754 (= res!619591 (and (= (size!26873 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26872 _keys!1487) (size!26873 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!918755 () Bool)

(declare-fun e!515766 () Bool)

(declare-fun tp_is_empty!19475 () Bool)

(assert (=> b!918755 (= e!515766 tp_is_empty!19475)))

(declare-fun mapNonEmpty!30969 () Bool)

(declare-fun mapRes!30969 () Bool)

(declare-fun tp!59342 () Bool)

(assert (=> mapNonEmpty!30969 (= mapRes!30969 (and tp!59342 e!515766))))

(declare-fun mapValue!30969 () ValueCell!9256)

(declare-fun mapKey!30969 () (_ BitVec 32))

(declare-fun mapRest!30969 () (Array (_ BitVec 32) ValueCell!9256))

(assert (=> mapNonEmpty!30969 (= (arr!26413 _values!1231) (store mapRest!30969 mapKey!30969 mapValue!30969))))

(declare-fun b!918756 () Bool)

(declare-fun e!515762 () Bool)

(declare-fun e!515760 () Bool)

(assert (=> b!918756 (= e!515762 (and e!515760 mapRes!30969))))

(declare-fun condMapEmpty!30969 () Bool)

(declare-fun mapDefault!30969 () ValueCell!9256)

