; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77734 () Bool)

(assert start!77734)

(declare-fun b_free!16291 () Bool)

(declare-fun b_next!16291 () Bool)

(assert (=> start!77734 (= b_free!16291 (not b_next!16291))))

(declare-fun tp!57136 () Bool)

(declare-fun b_and!26753 () Bool)

(assert (=> start!77734 (= tp!57136 b_and!26753)))

(declare-fun b!906326 () Bool)

(declare-fun e!507934 () Bool)

(declare-fun e!507939 () Bool)

(assert (=> b!906326 (= e!507934 (not e!507939))))

(declare-fun res!611768 () Bool)

(assert (=> b!906326 (=> res!611768 e!507939)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53446 0))(
  ( (array!53447 (arr!25678 (Array (_ BitVec 32) (_ BitVec 64))) (size!26138 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53446)

(assert (=> b!906326 (= res!611768 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26138 _keys!1386))))))

(declare-datatypes ((V!29911 0))(
  ( (V!29912 (val!9405 Int)) )
))
(declare-datatypes ((ValueCell!8873 0))(
  ( (ValueCellFull!8873 (v!11910 V!29911)) (EmptyCell!8873) )
))
(declare-datatypes ((array!53448 0))(
  ( (array!53449 (arr!25679 (Array (_ BitVec 32) ValueCell!8873)) (size!26139 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53448)

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!408880 () V!29911)

(declare-fun get!13516 (ValueCell!8873 V!29911) V!29911)

(declare-fun dynLambda!1352 (Int (_ BitVec 64)) V!29911)

(assert (=> b!906326 (= lt!408880 (get!13516 (select (arr!25679 _values!1152) i!717) (dynLambda!1352 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53446 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!906326 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29911)

(declare-datatypes ((Unit!30731 0))(
  ( (Unit!30732) )
))
(declare-fun lt!408877 () Unit!30731)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29911)

(declare-fun lemmaKeyInListMapIsInArray!225 (array!53446 array!53448 (_ BitVec 32) (_ BitVec 32) V!29911 V!29911 (_ BitVec 64) Int) Unit!30731)

(assert (=> b!906326 (= lt!408877 (lemmaKeyInListMapIsInArray!225 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!906327 () Bool)

(declare-fun res!611770 () Bool)

(declare-fun e!507941 () Bool)

(assert (=> b!906327 (=> (not res!611770) (not e!507941))))

(declare-datatypes ((List!18126 0))(
  ( (Nil!18123) (Cons!18122 (h!19268 (_ BitVec 64)) (t!25597 List!18126)) )
))
(declare-fun arrayNoDuplicates!0 (array!53446 (_ BitVec 32) List!18126) Bool)

(assert (=> b!906327 (= res!611770 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18123))))

(declare-fun b!906328 () Bool)

(declare-fun e!507938 () Bool)

(declare-fun e!507936 () Bool)

(declare-fun mapRes!29776 () Bool)

(assert (=> b!906328 (= e!507938 (and e!507936 mapRes!29776))))

(declare-fun condMapEmpty!29776 () Bool)

(declare-fun mapDefault!29776 () ValueCell!8873)

