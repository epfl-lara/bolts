; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77666 () Bool)

(assert start!77666)

(declare-fun b_free!16223 () Bool)

(declare-fun b_next!16223 () Bool)

(assert (=> start!77666 (= b_free!16223 (not b_next!16223))))

(declare-fun tp!56931 () Bool)

(declare-fun b_and!26617 () Bool)

(assert (=> start!77666 (= tp!56931 b_and!26617)))

(declare-fun b!904932 () Bool)

(declare-fun res!610743 () Bool)

(declare-fun e!507118 () Bool)

(assert (=> b!904932 (=> (not res!610743) (not e!507118))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904932 (= res!610743 (inRange!0 i!717 mask!1756))))

(declare-fun b!904933 () Bool)

(declare-fun e!507124 () Bool)

(assert (=> b!904933 (= e!507124 e!507118)))

(declare-fun res!610750 () Bool)

(assert (=> b!904933 (=> (not res!610750) (not e!507118))))

(declare-datatypes ((V!29819 0))(
  ( (V!29820 (val!9371 Int)) )
))
(declare-datatypes ((tuple2!12204 0))(
  ( (tuple2!12205 (_1!6112 (_ BitVec 64)) (_2!6112 V!29819)) )
))
(declare-datatypes ((List!18074 0))(
  ( (Nil!18071) (Cons!18070 (h!19216 tuple2!12204) (t!25477 List!18074)) )
))
(declare-datatypes ((ListLongMap!10915 0))(
  ( (ListLongMap!10916 (toList!5473 List!18074)) )
))
(declare-fun lt!408368 () ListLongMap!10915)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4486 (ListLongMap!10915 (_ BitVec 64)) Bool)

(assert (=> b!904933 (= res!610750 (contains!4486 lt!408368 k!1033))))

(declare-datatypes ((ValueCell!8839 0))(
  ( (ValueCellFull!8839 (v!11876 V!29819)) (EmptyCell!8839) )
))
(declare-datatypes ((array!53312 0))(
  ( (array!53313 (arr!25611 (Array (_ BitVec 32) ValueCell!8839)) (size!26071 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53312)

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29819)

(declare-datatypes ((array!53314 0))(
  ( (array!53315 (arr!25612 (Array (_ BitVec 32) (_ BitVec 64))) (size!26072 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53314)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29819)

(declare-fun getCurrentListMap!2710 (array!53314 array!53312 (_ BitVec 32) (_ BitVec 32) V!29819 V!29819 (_ BitVec 32) Int) ListLongMap!10915)

(assert (=> b!904933 (= lt!408368 (getCurrentListMap!2710 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!904934 () Bool)

(declare-fun e!507122 () Bool)

(declare-fun e!507125 () Bool)

(declare-fun mapRes!29674 () Bool)

(assert (=> b!904934 (= e!507122 (and e!507125 mapRes!29674))))

(declare-fun condMapEmpty!29674 () Bool)

(declare-fun mapDefault!29674 () ValueCell!8839)

