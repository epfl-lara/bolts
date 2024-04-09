; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72912 () Bool)

(assert start!72912)

(declare-fun b_free!13799 () Bool)

(declare-fun b_next!13799 () Bool)

(assert (=> start!72912 (= b_free!13799 (not b_next!13799))))

(declare-fun tp!48901 () Bool)

(declare-fun b_and!22903 () Bool)

(assert (=> start!72912 (= tp!48901 b_and!22903)))

(declare-fun b!845917 () Bool)

(declare-fun res!574817 () Bool)

(declare-fun e!472199 () Bool)

(assert (=> b!845917 (=> (not res!574817) (not e!472199))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!845917 (= res!574817 (validMask!0 mask!1196))))

(declare-fun b!845918 () Bool)

(declare-fun res!574818 () Bool)

(assert (=> b!845918 (=> (not res!574818) (not e!472199))))

(declare-datatypes ((array!48070 0))(
  ( (array!48071 (arr!23062 (Array (_ BitVec 32) (_ BitVec 64))) (size!23503 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48070)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48070 (_ BitVec 32)) Bool)

(assert (=> b!845918 (= res!574818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25502 () Bool)

(declare-fun mapRes!25502 () Bool)

(declare-fun tp!48902 () Bool)

(declare-fun e!472198 () Bool)

(assert (=> mapNonEmpty!25502 (= mapRes!25502 (and tp!48902 e!472198))))

(declare-datatypes ((V!26293 0))(
  ( (V!26294 (val!8015 Int)) )
))
(declare-datatypes ((ValueCell!7528 0))(
  ( (ValueCellFull!7528 (v!10436 V!26293)) (EmptyCell!7528) )
))
(declare-fun mapRest!25502 () (Array (_ BitVec 32) ValueCell!7528))

(declare-fun mapValue!25502 () ValueCell!7528)

(declare-fun mapKey!25502 () (_ BitVec 32))

(declare-datatypes ((array!48072 0))(
  ( (array!48073 (arr!23063 (Array (_ BitVec 32) ValueCell!7528)) (size!23504 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48072)

(assert (=> mapNonEmpty!25502 (= (arr!23063 _values!688) (store mapRest!25502 mapKey!25502 mapValue!25502))))

(declare-fun b!845919 () Bool)

(declare-fun res!574816 () Bool)

(assert (=> b!845919 (=> (not res!574816) (not e!472199))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!845919 (= res!574816 (validKeyInArray!0 k!854))))

(declare-fun mapIsEmpty!25502 () Bool)

(assert (=> mapIsEmpty!25502 mapRes!25502))

(declare-fun b!845921 () Bool)

(declare-fun res!574811 () Bool)

(assert (=> b!845921 (=> (not res!574811) (not e!472199))))

(declare-datatypes ((List!16399 0))(
  ( (Nil!16396) (Cons!16395 (h!17526 (_ BitVec 64)) (t!22778 List!16399)) )
))
(declare-fun arrayNoDuplicates!0 (array!48070 (_ BitVec 32) List!16399) Bool)

(assert (=> b!845921 (= res!574811 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16396))))

(declare-fun b!845922 () Bool)

(declare-fun tp_is_empty!15935 () Bool)

(assert (=> b!845922 (= e!472198 tp_is_empty!15935)))

(declare-fun b!845923 () Bool)

(declare-fun res!574812 () Bool)

(assert (=> b!845923 (=> (not res!574812) (not e!472199))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!845923 (= res!574812 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23503 _keys!868))))))

(declare-fun b!845924 () Bool)

(assert (=> b!845924 (= e!472199 false)))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10488 0))(
  ( (tuple2!10489 (_1!5254 (_ BitVec 64)) (_2!5254 V!26293)) )
))
(declare-datatypes ((List!16400 0))(
  ( (Nil!16397) (Cons!16396 (h!17527 tuple2!10488) (t!22779 List!16400)) )
))
(declare-datatypes ((ListLongMap!9271 0))(
  ( (ListLongMap!9272 (toList!4651 List!16400)) )
))
(declare-fun lt!381414 () ListLongMap!9271)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26293)

(declare-fun zeroValue!654 () V!26293)

(declare-fun getCurrentListMapNoExtraKeys!2640 (array!48070 array!48072 (_ BitVec 32) (_ BitVec 32) V!26293 V!26293 (_ BitVec 32) Int) ListLongMap!9271)

(assert (=> b!845924 (= lt!381414 (getCurrentListMapNoExtraKeys!2640 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!845925 () Bool)

(declare-fun e!472197 () Bool)

(declare-fun e!472200 () Bool)

(assert (=> b!845925 (= e!472197 (and e!472200 mapRes!25502))))

(declare-fun condMapEmpty!25502 () Bool)

(declare-fun mapDefault!25502 () ValueCell!7528)

