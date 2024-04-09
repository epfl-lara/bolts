; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77764 () Bool)

(assert start!77764)

(declare-fun b_free!16321 () Bool)

(declare-fun b_next!16321 () Bool)

(assert (=> start!77764 (= b_free!16321 (not b_next!16321))))

(declare-fun tp!57225 () Bool)

(declare-fun b_and!26813 () Bool)

(assert (=> start!77764 (= tp!57225 b_and!26813)))

(declare-fun b!906941 () Bool)

(declare-fun res!612214 () Bool)

(declare-fun e!508298 () Bool)

(assert (=> b!906941 (=> (not res!612214) (not e!508298))))

(declare-datatypes ((array!53504 0))(
  ( (array!53505 (arr!25707 (Array (_ BitVec 32) (_ BitVec 64))) (size!26167 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53504)

(declare-datatypes ((List!18147 0))(
  ( (Nil!18144) (Cons!18143 (h!19289 (_ BitVec 64)) (t!25648 List!18147)) )
))
(declare-fun arrayNoDuplicates!0 (array!53504 (_ BitVec 32) List!18147) Bool)

(assert (=> b!906941 (= res!612214 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18144))))

(declare-fun b!906942 () Bool)

(declare-fun e!508301 () Bool)

(declare-fun e!508295 () Bool)

(assert (=> b!906942 (= e!508301 (not e!508295))))

(declare-fun res!612216 () Bool)

(assert (=> b!906942 (=> res!612216 e!508295)))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!906942 (= res!612216 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26167 _keys!1386))))))

(declare-datatypes ((V!29951 0))(
  ( (V!29952 (val!9420 Int)) )
))
(declare-datatypes ((ValueCell!8888 0))(
  ( (ValueCellFull!8888 (v!11925 V!29951)) (EmptyCell!8888) )
))
(declare-datatypes ((array!53506 0))(
  ( (array!53507 (arr!25708 (Array (_ BitVec 32) ValueCell!8888)) (size!26168 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53506)

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!409105 () V!29951)

(declare-fun get!13536 (ValueCell!8888 V!29951) V!29951)

(declare-fun dynLambda!1362 (Int (_ BitVec 64)) V!29951)

(assert (=> b!906942 (= lt!409105 (get!13536 (select (arr!25708 _values!1152) i!717) (dynLambda!1362 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53504 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!906942 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29951)

(declare-datatypes ((Unit!30753 0))(
  ( (Unit!30754) )
))
(declare-fun lt!409102 () Unit!30753)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29951)

(declare-fun lemmaKeyInListMapIsInArray!235 (array!53504 array!53506 (_ BitVec 32) (_ BitVec 32) V!29951 V!29951 (_ BitVec 64) Int) Unit!30753)

(assert (=> b!906942 (= lt!409102 (lemmaKeyInListMapIsInArray!235 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun mapIsEmpty!29821 () Bool)

(declare-fun mapRes!29821 () Bool)

(assert (=> mapIsEmpty!29821 mapRes!29821))

(declare-fun b!906943 () Bool)

(declare-fun e!508296 () Bool)

(declare-fun e!508297 () Bool)

(assert (=> b!906943 (= e!508296 (and e!508297 mapRes!29821))))

(declare-fun condMapEmpty!29821 () Bool)

(declare-fun mapDefault!29821 () ValueCell!8888)

