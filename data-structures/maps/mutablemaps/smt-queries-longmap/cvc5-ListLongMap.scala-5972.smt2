; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77686 () Bool)

(assert start!77686)

(declare-fun b_free!16243 () Bool)

(declare-fun b_next!16243 () Bool)

(assert (=> start!77686 (= b_free!16243 (not b_next!16243))))

(declare-fun tp!56992 () Bool)

(declare-fun b_and!26657 () Bool)

(assert (=> start!77686 (= tp!56992 b_and!26657)))

(declare-fun mapIsEmpty!29704 () Bool)

(declare-fun mapRes!29704 () Bool)

(assert (=> mapIsEmpty!29704 mapRes!29704))

(declare-fun b!905342 () Bool)

(declare-fun res!611046 () Bool)

(declare-fun e!507364 () Bool)

(assert (=> b!905342 (=> (not res!611046) (not e!507364))))

(declare-datatypes ((array!53352 0))(
  ( (array!53353 (arr!25631 (Array (_ BitVec 32) (_ BitVec 64))) (size!26091 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53352)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53352 (_ BitVec 32)) Bool)

(assert (=> b!905342 (= res!611046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!905343 () Bool)

(declare-fun e!507365 () Bool)

(declare-fun tp_is_empty!18661 () Bool)

(assert (=> b!905343 (= e!507365 tp_is_empty!18661)))

(declare-fun b!905344 () Bool)

(declare-fun res!611051 () Bool)

(declare-fun e!507363 () Bool)

(assert (=> b!905344 (=> res!611051 e!507363)))

(declare-datatypes ((V!29847 0))(
  ( (V!29848 (val!9381 Int)) )
))
(declare-fun lt!408520 () V!29847)

(declare-fun k!1033 () (_ BitVec 64))

(declare-datatypes ((tuple2!12222 0))(
  ( (tuple2!12223 (_1!6121 (_ BitVec 64)) (_2!6121 V!29847)) )
))
(declare-datatypes ((List!18089 0))(
  ( (Nil!18086) (Cons!18085 (h!19231 tuple2!12222) (t!25512 List!18089)) )
))
(declare-datatypes ((ListLongMap!10933 0))(
  ( (ListLongMap!10934 (toList!5482 List!18089)) )
))
(declare-fun lt!408519 () ListLongMap!10933)

(declare-fun apply!459 (ListLongMap!10933 (_ BitVec 64)) V!29847)

(assert (=> b!905344 (= res!611051 (not (= (apply!459 lt!408519 k!1033) lt!408520)))))

(declare-fun b!905346 () Bool)

(declare-fun e!507360 () Bool)

(assert (=> b!905346 (= e!507360 tp_is_empty!18661)))

(declare-fun b!905347 () Bool)

(declare-fun e!507359 () Bool)

(assert (=> b!905347 (= e!507359 e!507363)))

(declare-fun res!611049 () Bool)

(assert (=> b!905347 (=> res!611049 e!507363)))

(declare-fun contains!4494 (ListLongMap!10933 (_ BitVec 64)) Bool)

(assert (=> b!905347 (= res!611049 (not (contains!4494 lt!408519 k!1033)))))

(declare-datatypes ((ValueCell!8849 0))(
  ( (ValueCellFull!8849 (v!11886 V!29847)) (EmptyCell!8849) )
))
(declare-datatypes ((array!53354 0))(
  ( (array!53355 (arr!25632 (Array (_ BitVec 32) ValueCell!8849)) (size!26092 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53354)

(declare-fun defaultEntry!1160 () Int)

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29847)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29847)

(declare-fun getCurrentListMap!2718 (array!53352 array!53354 (_ BitVec 32) (_ BitVec 32) V!29847 V!29847 (_ BitVec 32) Int) ListLongMap!10933)

(assert (=> b!905347 (= lt!408519 (getCurrentListMap!2718 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!905348 () Bool)

(declare-fun res!611048 () Bool)

(assert (=> b!905348 (=> (not res!611048) (not e!507364))))

(declare-datatypes ((List!18090 0))(
  ( (Nil!18087) (Cons!18086 (h!19232 (_ BitVec 64)) (t!25513 List!18090)) )
))
(declare-fun arrayNoDuplicates!0 (array!53352 (_ BitVec 32) List!18090) Bool)

(assert (=> b!905348 (= res!611048 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18087))))

(declare-fun b!905349 () Bool)

(declare-fun e!507362 () Bool)

(assert (=> b!905349 (= e!507362 (and e!507360 mapRes!29704))))

(declare-fun condMapEmpty!29704 () Bool)

(declare-fun mapDefault!29704 () ValueCell!8849)

