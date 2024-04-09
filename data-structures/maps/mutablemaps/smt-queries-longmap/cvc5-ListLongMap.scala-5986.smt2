; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77770 () Bool)

(assert start!77770)

(declare-fun b_free!16327 () Bool)

(declare-fun b_next!16327 () Bool)

(assert (=> start!77770 (= b_free!16327 (not b_next!16327))))

(declare-fun tp!57244 () Bool)

(declare-fun b_and!26825 () Bool)

(assert (=> start!77770 (= tp!57244 b_and!26825)))

(declare-fun b!907064 () Bool)

(declare-fun e!508368 () Bool)

(declare-fun e!508369 () Bool)

(assert (=> b!907064 (= e!508368 (not e!508369))))

(declare-fun res!612307 () Bool)

(assert (=> b!907064 (=> res!612307 e!508369)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53516 0))(
  ( (array!53517 (arr!25713 (Array (_ BitVec 32) (_ BitVec 64))) (size!26173 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53516)

(assert (=> b!907064 (= res!612307 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26173 _keys!1386))))))

(declare-datatypes ((V!29959 0))(
  ( (V!29960 (val!9423 Int)) )
))
(declare-datatypes ((ValueCell!8891 0))(
  ( (ValueCellFull!8891 (v!11928 V!29959)) (EmptyCell!8891) )
))
(declare-datatypes ((array!53518 0))(
  ( (array!53519 (arr!25714 (Array (_ BitVec 32) ValueCell!8891)) (size!26174 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53518)

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!409149 () V!29959)

(declare-fun get!13541 (ValueCell!8891 V!29959) V!29959)

(declare-fun dynLambda!1365 (Int (_ BitVec 64)) V!29959)

(assert (=> b!907064 (= lt!409149 (get!13541 (select (arr!25714 _values!1152) i!717) (dynLambda!1365 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53516 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!907064 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29959)

(declare-datatypes ((Unit!30759 0))(
  ( (Unit!30760) )
))
(declare-fun lt!409148 () Unit!30759)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29959)

(declare-fun lemmaKeyInListMapIsInArray!238 (array!53516 array!53518 (_ BitVec 32) (_ BitVec 32) V!29959 V!29959 (_ BitVec 64) Int) Unit!30759)

(assert (=> b!907064 (= lt!409148 (lemmaKeyInListMapIsInArray!238 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!907065 () Bool)

(declare-fun res!612308 () Bool)

(declare-fun e!508366 () Bool)

(assert (=> b!907065 (=> (not res!612308) (not e!508366))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53516 (_ BitVec 32)) Bool)

(assert (=> b!907065 (= res!612308 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!907066 () Bool)

(declare-fun res!612311 () Bool)

(declare-fun e!508372 () Bool)

(assert (=> b!907066 (=> res!612311 e!508372)))

(declare-datatypes ((tuple2!12290 0))(
  ( (tuple2!12291 (_1!6155 (_ BitVec 64)) (_2!6155 V!29959)) )
))
(declare-datatypes ((List!18152 0))(
  ( (Nil!18149) (Cons!18148 (h!19294 tuple2!12290) (t!25659 List!18152)) )
))
(declare-datatypes ((ListLongMap!11001 0))(
  ( (ListLongMap!11002 (toList!5516 List!18152)) )
))
(declare-fun lt!409150 () ListLongMap!11001)

(declare-fun apply!492 (ListLongMap!11001 (_ BitVec 64)) V!29959)

(assert (=> b!907066 (= res!612311 (not (= (apply!492 lt!409150 k!1033) lt!409149)))))

(declare-fun mapNonEmpty!29830 () Bool)

(declare-fun mapRes!29830 () Bool)

(declare-fun tp!57243 () Bool)

(declare-fun e!508370 () Bool)

(assert (=> mapNonEmpty!29830 (= mapRes!29830 (and tp!57243 e!508370))))

(declare-fun mapValue!29830 () ValueCell!8891)

(declare-fun mapRest!29830 () (Array (_ BitVec 32) ValueCell!8891))

(declare-fun mapKey!29830 () (_ BitVec 32))

(assert (=> mapNonEmpty!29830 (= (arr!25714 _values!1152) (store mapRest!29830 mapKey!29830 mapValue!29830))))

(declare-fun b!907067 () Bool)

(declare-fun e!508367 () Bool)

(declare-fun e!508371 () Bool)

(assert (=> b!907067 (= e!508367 (and e!508371 mapRes!29830))))

(declare-fun condMapEmpty!29830 () Bool)

(declare-fun mapDefault!29830 () ValueCell!8891)

