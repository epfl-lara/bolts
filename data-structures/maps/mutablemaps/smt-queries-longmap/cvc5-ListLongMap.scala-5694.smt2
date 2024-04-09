; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73976 () Bool)

(assert start!73976)

(declare-fun b_free!14863 () Bool)

(declare-fun b_next!14863 () Bool)

(assert (=> start!73976 (= b_free!14863 (not b_next!14863))))

(declare-fun tp!52093 () Bool)

(declare-fun b_and!24633 () Bool)

(assert (=> start!73976 (= tp!52093 b_and!24633)))

(declare-fun mapNonEmpty!27098 () Bool)

(declare-fun mapRes!27098 () Bool)

(declare-fun tp!52094 () Bool)

(declare-fun e!484014 () Bool)

(assert (=> mapNonEmpty!27098 (= mapRes!27098 (and tp!52094 e!484014))))

(declare-fun mapKey!27098 () (_ BitVec 32))

(declare-datatypes ((V!27713 0))(
  ( (V!27714 (val!8547 Int)) )
))
(declare-datatypes ((ValueCell!8060 0))(
  ( (ValueCellFull!8060 (v!10968 V!27713)) (EmptyCell!8060) )
))
(declare-fun mapRest!27098 () (Array (_ BitVec 32) ValueCell!8060))

(declare-fun mapValue!27098 () ValueCell!8060)

(declare-datatypes ((array!50130 0))(
  ( (array!50131 (arr!24092 (Array (_ BitVec 32) ValueCell!8060)) (size!24533 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50130)

(assert (=> mapNonEmpty!27098 (= (arr!24092 _values!688) (store mapRest!27098 mapKey!27098 mapValue!27098))))

(declare-fun b!869037 () Bool)

(declare-fun res!590682 () Bool)

(declare-fun e!484013 () Bool)

(assert (=> b!869037 (=> (not res!590682) (not e!484013))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50132 0))(
  ( (array!50133 (arr!24093 (Array (_ BitVec 32) (_ BitVec 64))) (size!24534 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50132)

(assert (=> b!869037 (= res!590682 (and (= (size!24533 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24534 _keys!868) (size!24533 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!869038 () Bool)

(declare-fun e!484017 () Bool)

(declare-fun tp_is_empty!16999 () Bool)

(assert (=> b!869038 (= e!484017 tp_is_empty!16999)))

(declare-fun b!869039 () Bool)

(declare-fun res!590677 () Bool)

(assert (=> b!869039 (=> (not res!590677) (not e!484013))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50132 (_ BitVec 32)) Bool)

(assert (=> b!869039 (= res!590677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!869040 () Bool)

(declare-fun res!590683 () Bool)

(assert (=> b!869040 (=> (not res!590683) (not e!484013))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!869040 (= res!590683 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24534 _keys!868))))))

(declare-fun b!869041 () Bool)

(declare-fun res!590679 () Bool)

(assert (=> b!869041 (=> (not res!590679) (not e!484013))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!869041 (= res!590679 (validMask!0 mask!1196))))

(declare-fun res!590681 () Bool)

(assert (=> start!73976 (=> (not res!590681) (not e!484013))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73976 (= res!590681 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24534 _keys!868))))))

(assert (=> start!73976 e!484013))

(assert (=> start!73976 tp_is_empty!16999))

(assert (=> start!73976 true))

(assert (=> start!73976 tp!52093))

(declare-fun array_inv!19006 (array!50132) Bool)

(assert (=> start!73976 (array_inv!19006 _keys!868)))

(declare-fun e!484012 () Bool)

(declare-fun array_inv!19007 (array!50130) Bool)

(assert (=> start!73976 (and (array_inv!19007 _values!688) e!484012)))

(declare-fun b!869042 () Bool)

(declare-fun res!590680 () Bool)

(assert (=> b!869042 (=> (not res!590680) (not e!484013))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!869042 (= res!590680 (validKeyInArray!0 k!854))))

(declare-fun mapIsEmpty!27098 () Bool)

(assert (=> mapIsEmpty!27098 mapRes!27098))

(declare-fun b!869043 () Bool)

(assert (=> b!869043 (= e!484012 (and e!484017 mapRes!27098))))

(declare-fun condMapEmpty!27098 () Bool)

(declare-fun mapDefault!27098 () ValueCell!8060)

