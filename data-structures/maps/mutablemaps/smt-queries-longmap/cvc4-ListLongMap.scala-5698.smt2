; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74004 () Bool)

(assert start!74004)

(declare-fun b_free!14891 () Bool)

(declare-fun b_next!14891 () Bool)

(assert (=> start!74004 (= b_free!14891 (not b_next!14891))))

(declare-fun tp!52178 () Bool)

(declare-fun b_and!24661 () Bool)

(assert (=> start!74004 (= tp!52178 b_and!24661)))

(declare-fun b!869541 () Bool)

(declare-fun e!484269 () Bool)

(declare-fun e!484266 () Bool)

(assert (=> b!869541 (= e!484269 e!484266)))

(declare-fun res!591056 () Bool)

(assert (=> b!869541 (=> (not res!591056) (not e!484266))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!869541 (= res!591056 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50186 0))(
  ( (array!50187 (arr!24120 (Array (_ BitVec 32) (_ BitVec 64))) (size!24561 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50186)

(declare-datatypes ((V!27749 0))(
  ( (V!27750 (val!8561 Int)) )
))
(declare-fun minValue!654 () V!27749)

(declare-fun zeroValue!654 () V!27749)

(declare-datatypes ((ValueCell!8074 0))(
  ( (ValueCellFull!8074 (v!10982 V!27749)) (EmptyCell!8074) )
))
(declare-datatypes ((array!50188 0))(
  ( (array!50189 (arr!24121 (Array (_ BitVec 32) ValueCell!8074)) (size!24562 (_ BitVec 32))) )
))
(declare-fun lt!394832 () array!50188)

(declare-datatypes ((tuple2!11368 0))(
  ( (tuple2!11369 (_1!5694 (_ BitVec 64)) (_2!5694 V!27749)) )
))
(declare-datatypes ((List!17226 0))(
  ( (Nil!17223) (Cons!17222 (h!18353 tuple2!11368) (t!24271 List!17226)) )
))
(declare-datatypes ((ListLongMap!10151 0))(
  ( (ListLongMap!10152 (toList!5091 List!17226)) )
))
(declare-fun lt!394830 () ListLongMap!10151)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!3055 (array!50186 array!50188 (_ BitVec 32) (_ BitVec 32) V!27749 V!27749 (_ BitVec 32) Int) ListLongMap!10151)

(assert (=> b!869541 (= lt!394830 (getCurrentListMapNoExtraKeys!3055 _keys!868 lt!394832 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27749)

(declare-fun _values!688 () array!50188)

(assert (=> b!869541 (= lt!394832 (array!50189 (store (arr!24121 _values!688) i!612 (ValueCellFull!8074 v!557)) (size!24562 _values!688)))))

(declare-fun lt!394833 () ListLongMap!10151)

(assert (=> b!869541 (= lt!394833 (getCurrentListMapNoExtraKeys!3055 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!869542 () Bool)

(declare-fun res!591060 () Bool)

(assert (=> b!869542 (=> (not res!591060) (not e!484269))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!869542 (= res!591060 (validKeyInArray!0 k!854))))

(declare-fun b!869543 () Bool)

(declare-fun res!591058 () Bool)

(assert (=> b!869543 (=> (not res!591058) (not e!484269))))

(declare-datatypes ((List!17227 0))(
  ( (Nil!17224) (Cons!17223 (h!18354 (_ BitVec 64)) (t!24272 List!17227)) )
))
(declare-fun arrayNoDuplicates!0 (array!50186 (_ BitVec 32) List!17227) Bool)

(assert (=> b!869543 (= res!591058 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17224))))

(declare-fun b!869544 () Bool)

(declare-fun e!484268 () Bool)

(declare-fun e!484264 () Bool)

(declare-fun mapRes!27140 () Bool)

(assert (=> b!869544 (= e!484268 (and e!484264 mapRes!27140))))

(declare-fun condMapEmpty!27140 () Bool)

(declare-fun mapDefault!27140 () ValueCell!8074)

