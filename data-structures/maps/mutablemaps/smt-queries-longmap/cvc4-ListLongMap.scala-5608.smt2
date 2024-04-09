; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73464 () Bool)

(assert start!73464)

(declare-fun b_free!14351 () Bool)

(declare-fun b_next!14351 () Bool)

(assert (=> start!73464 (= b_free!14351 (not b_next!14351))))

(declare-fun tp!50557 () Bool)

(declare-fun b_and!23725 () Bool)

(assert (=> start!73464 (= tp!50557 b_and!23725)))

(declare-fun res!582460 () Bool)

(declare-fun e!477852 () Bool)

(assert (=> start!73464 (=> (not res!582460) (not e!477852))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49138 0))(
  ( (array!49139 (arr!23596 (Array (_ BitVec 32) (_ BitVec 64))) (size!24037 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49138)

(assert (=> start!73464 (= res!582460 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24037 _keys!868))))))

(assert (=> start!73464 e!477852))

(declare-fun tp_is_empty!16487 () Bool)

(assert (=> start!73464 tp_is_empty!16487))

(assert (=> start!73464 true))

(assert (=> start!73464 tp!50557))

(declare-fun array_inv!18676 (array!49138) Bool)

(assert (=> start!73464 (array_inv!18676 _keys!868)))

(declare-datatypes ((V!27029 0))(
  ( (V!27030 (val!8291 Int)) )
))
(declare-datatypes ((ValueCell!7804 0))(
  ( (ValueCellFull!7804 (v!10712 V!27029)) (EmptyCell!7804) )
))
(declare-datatypes ((array!49140 0))(
  ( (array!49141 (arr!23597 (Array (_ BitVec 32) ValueCell!7804)) (size!24038 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49140)

(declare-fun e!477850 () Bool)

(declare-fun array_inv!18677 (array!49140) Bool)

(assert (=> start!73464 (and (array_inv!18677 _values!688) e!477850)))

(declare-fun mapIsEmpty!26330 () Bool)

(declare-fun mapRes!26330 () Bool)

(assert (=> mapIsEmpty!26330 mapRes!26330))

(declare-fun b!857292 () Bool)

(declare-fun e!477848 () Bool)

(assert (=> b!857292 (= e!477848 tp_is_empty!16487)))

(declare-fun b!857293 () Bool)

(declare-fun res!582464 () Bool)

(assert (=> b!857293 (=> (not res!582464) (not e!477852))))

(declare-datatypes ((List!16796 0))(
  ( (Nil!16793) (Cons!16792 (h!17923 (_ BitVec 64)) (t!23445 List!16796)) )
))
(declare-fun arrayNoDuplicates!0 (array!49138 (_ BitVec 32) List!16796) Bool)

(assert (=> b!857293 (= res!582464 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16793))))

(declare-fun b!857294 () Bool)

(declare-fun res!582461 () Bool)

(assert (=> b!857294 (=> (not res!582461) (not e!477852))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!857294 (= res!582461 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26330 () Bool)

(declare-fun tp!50558 () Bool)

(declare-fun e!477847 () Bool)

(assert (=> mapNonEmpty!26330 (= mapRes!26330 (and tp!50558 e!477847))))

(declare-fun mapKey!26330 () (_ BitVec 32))

(declare-fun mapRest!26330 () (Array (_ BitVec 32) ValueCell!7804))

(declare-fun mapValue!26330 () ValueCell!7804)

(assert (=> mapNonEmpty!26330 (= (arr!23597 _values!688) (store mapRest!26330 mapKey!26330 mapValue!26330))))

(declare-fun b!857295 () Bool)

(assert (=> b!857295 (= e!477850 (and e!477848 mapRes!26330))))

(declare-fun condMapEmpty!26330 () Bool)

(declare-fun mapDefault!26330 () ValueCell!7804)

