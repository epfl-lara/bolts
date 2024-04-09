; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77674 () Bool)

(assert start!77674)

(declare-fun b_free!16231 () Bool)

(declare-fun b_next!16231 () Bool)

(assert (=> start!77674 (= b_free!16231 (not b_next!16231))))

(declare-fun tp!56955 () Bool)

(declare-fun b_and!26633 () Bool)

(assert (=> start!77674 (= tp!56955 b_and!26633)))

(declare-fun b!905096 () Bool)

(declare-fun e!507215 () Bool)

(declare-fun e!507217 () Bool)

(assert (=> b!905096 (= e!507215 (not e!507217))))

(declare-fun res!610871 () Bool)

(assert (=> b!905096 (=> res!610871 e!507217)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53328 0))(
  ( (array!53329 (arr!25619 (Array (_ BitVec 32) (_ BitVec 64))) (size!26079 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53328)

(assert (=> b!905096 (= res!610871 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26079 _keys!1386))))))

(declare-datatypes ((V!29831 0))(
  ( (V!29832 (val!9375 Int)) )
))
(declare-datatypes ((ValueCell!8843 0))(
  ( (ValueCellFull!8843 (v!11880 V!29831)) (EmptyCell!8843) )
))
(declare-datatypes ((array!53330 0))(
  ( (array!53331 (arr!25620 (Array (_ BitVec 32) ValueCell!8843)) (size!26080 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53330)

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!408431 () V!29831)

(declare-fun get!13474 (ValueCell!8843 V!29831) V!29831)

(declare-fun dynLambda!1330 (Int (_ BitVec 64)) V!29831)

(assert (=> b!905096 (= lt!408431 (get!13474 (select (arr!25620 _values!1152) i!717) (dynLambda!1330 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53328 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!905096 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30681 0))(
  ( (Unit!30682) )
))
(declare-fun lt!408427 () Unit!30681)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29831)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29831)

(declare-fun lemmaKeyInListMapIsInArray!203 (array!53328 array!53330 (_ BitVec 32) (_ BitVec 32) V!29831 V!29831 (_ BitVec 64) Int) Unit!30681)

(assert (=> b!905096 (= lt!408427 (lemmaKeyInListMapIsInArray!203 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun mapNonEmpty!29686 () Bool)

(declare-fun mapRes!29686 () Bool)

(declare-fun tp!56956 () Bool)

(declare-fun e!507220 () Bool)

(assert (=> mapNonEmpty!29686 (= mapRes!29686 (and tp!56956 e!507220))))

(declare-fun mapRest!29686 () (Array (_ BitVec 32) ValueCell!8843))

(declare-fun mapKey!29686 () (_ BitVec 32))

(declare-fun mapValue!29686 () ValueCell!8843)

(assert (=> mapNonEmpty!29686 (= (arr!25620 _values!1152) (store mapRest!29686 mapKey!29686 mapValue!29686))))

(declare-fun b!905097 () Bool)

(declare-fun e!507221 () Bool)

(declare-fun e!507218 () Bool)

(assert (=> b!905097 (= e!507221 (and e!507218 mapRes!29686))))

(declare-fun condMapEmpty!29686 () Bool)

(declare-fun mapDefault!29686 () ValueCell!8843)

