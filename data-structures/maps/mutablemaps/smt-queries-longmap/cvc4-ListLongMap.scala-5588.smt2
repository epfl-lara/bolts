; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73344 () Bool)

(assert start!73344)

(declare-fun b_free!14231 () Bool)

(declare-fun b_next!14231 () Bool)

(assert (=> start!73344 (= b_free!14231 (not b_next!14231))))

(declare-fun tp!50198 () Bool)

(declare-fun b_and!23605 () Bool)

(assert (=> start!73344 (= tp!50198 b_and!23605)))

(declare-fun b!855187 () Bool)

(declare-fun e!476826 () Bool)

(assert (=> b!855187 (= e!476826 false)))

(declare-datatypes ((V!26869 0))(
  ( (V!26870 (val!8231 Int)) )
))
(declare-fun v!557 () V!26869)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!10834 0))(
  ( (tuple2!10835 (_1!5427 (_ BitVec 64)) (_2!5427 V!26869)) )
))
(declare-datatypes ((List!16711 0))(
  ( (Nil!16708) (Cons!16707 (h!17838 tuple2!10834) (t!23360 List!16711)) )
))
(declare-datatypes ((ListLongMap!9617 0))(
  ( (ListLongMap!9618 (toList!4824 List!16711)) )
))
(declare-fun lt!385626 () ListLongMap!9617)

(declare-datatypes ((array!48910 0))(
  ( (array!48911 (arr!23482 (Array (_ BitVec 32) (_ BitVec 64))) (size!23923 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48910)

(declare-datatypes ((ValueCell!7744 0))(
  ( (ValueCellFull!7744 (v!10652 V!26869)) (EmptyCell!7744) )
))
(declare-datatypes ((array!48912 0))(
  ( (array!48913 (arr!23483 (Array (_ BitVec 32) ValueCell!7744)) (size!23924 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48912)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26869)

(declare-fun zeroValue!654 () V!26869)

(declare-fun getCurrentListMapNoExtraKeys!2806 (array!48910 array!48912 (_ BitVec 32) (_ BitVec 32) V!26869 V!26869 (_ BitVec 32) Int) ListLongMap!9617)

(assert (=> b!855187 (= lt!385626 (getCurrentListMapNoExtraKeys!2806 _keys!868 (array!48913 (store (arr!23483 _values!688) i!612 (ValueCellFull!7744 v!557)) (size!23924 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385625 () ListLongMap!9617)

(assert (=> b!855187 (= lt!385625 (getCurrentListMapNoExtraKeys!2806 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!855188 () Bool)

(declare-fun res!580896 () Bool)

(assert (=> b!855188 (=> (not res!580896) (not e!476826))))

(assert (=> b!855188 (= res!580896 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23923 _keys!868))))))

(declare-fun b!855189 () Bool)

(declare-fun res!580897 () Bool)

(assert (=> b!855189 (=> (not res!580897) (not e!476826))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855189 (= res!580897 (validKeyInArray!0 k!854))))

(declare-fun b!855190 () Bool)

(declare-fun res!580901 () Bool)

(assert (=> b!855190 (=> (not res!580901) (not e!476826))))

(assert (=> b!855190 (= res!580901 (and (= (select (arr!23482 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!855191 () Bool)

(declare-fun e!476823 () Bool)

(declare-fun e!476825 () Bool)

(declare-fun mapRes!26150 () Bool)

(assert (=> b!855191 (= e!476823 (and e!476825 mapRes!26150))))

(declare-fun condMapEmpty!26150 () Bool)

(declare-fun mapDefault!26150 () ValueCell!7744)

