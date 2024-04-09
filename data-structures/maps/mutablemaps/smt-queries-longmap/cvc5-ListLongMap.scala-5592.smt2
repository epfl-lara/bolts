; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73364 () Bool)

(assert start!73364)

(declare-fun b_free!14251 () Bool)

(declare-fun b_next!14251 () Bool)

(assert (=> start!73364 (= b_free!14251 (not b_next!14251))))

(declare-fun tp!50258 () Bool)

(declare-fun b_and!23625 () Bool)

(assert (=> start!73364 (= tp!50258 b_and!23625)))

(declare-fun b!855517 () Bool)

(declare-fun e!476972 () Bool)

(assert (=> b!855517 (= e!476972 false)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48950 0))(
  ( (array!48951 (arr!23502 (Array (_ BitVec 32) (_ BitVec 64))) (size!23943 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48950)

(declare-datatypes ((V!26897 0))(
  ( (V!26898 (val!8241 Int)) )
))
(declare-datatypes ((ValueCell!7754 0))(
  ( (ValueCellFull!7754 (v!10662 V!26897)) (EmptyCell!7754) )
))
(declare-datatypes ((array!48952 0))(
  ( (array!48953 (arr!23503 (Array (_ BitVec 32) ValueCell!7754)) (size!23944 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48952)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26897)

(declare-fun zeroValue!654 () V!26897)

(declare-fun v!557 () V!26897)

(declare-datatypes ((tuple2!10852 0))(
  ( (tuple2!10853 (_1!5436 (_ BitVec 64)) (_2!5436 V!26897)) )
))
(declare-datatypes ((List!16727 0))(
  ( (Nil!16724) (Cons!16723 (h!17854 tuple2!10852) (t!23376 List!16727)) )
))
(declare-datatypes ((ListLongMap!9635 0))(
  ( (ListLongMap!9636 (toList!4833 List!16727)) )
))
(declare-fun lt!385685 () ListLongMap!9635)

(declare-fun getCurrentListMapNoExtraKeys!2815 (array!48950 array!48952 (_ BitVec 32) (_ BitVec 32) V!26897 V!26897 (_ BitVec 32) Int) ListLongMap!9635)

(assert (=> b!855517 (= lt!385685 (getCurrentListMapNoExtraKeys!2815 _keys!868 (array!48953 (store (arr!23503 _values!688) i!612 (ValueCellFull!7754 v!557)) (size!23944 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385686 () ListLongMap!9635)

(assert (=> b!855517 (= lt!385686 (getCurrentListMapNoExtraKeys!2815 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!855518 () Bool)

(declare-fun res!581136 () Bool)

(assert (=> b!855518 (=> (not res!581136) (not e!476972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!855518 (= res!581136 (validMask!0 mask!1196))))

(declare-fun b!855519 () Bool)

(declare-fun res!581137 () Bool)

(assert (=> b!855519 (=> (not res!581137) (not e!476972))))

(declare-datatypes ((List!16728 0))(
  ( (Nil!16725) (Cons!16724 (h!17855 (_ BitVec 64)) (t!23377 List!16728)) )
))
(declare-fun arrayNoDuplicates!0 (array!48950 (_ BitVec 32) List!16728) Bool)

(assert (=> b!855519 (= res!581137 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16725))))

(declare-fun b!855520 () Bool)

(declare-fun res!581139 () Bool)

(assert (=> b!855520 (=> (not res!581139) (not e!476972))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855520 (= res!581139 (validKeyInArray!0 k!854))))

(declare-fun b!855521 () Bool)

(declare-fun e!476974 () Bool)

(declare-fun e!476976 () Bool)

(declare-fun mapRes!26180 () Bool)

(assert (=> b!855521 (= e!476974 (and e!476976 mapRes!26180))))

(declare-fun condMapEmpty!26180 () Bool)

(declare-fun mapDefault!26180 () ValueCell!7754)

