; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4046 () Bool)

(assert start!4046)

(declare-fun b_free!953 () Bool)

(declare-fun b_next!953 () Bool)

(assert (=> start!4046 (= b_free!953 (not b_next!953))))

(declare-fun tp!4278 () Bool)

(declare-fun b_and!1765 () Bool)

(assert (=> start!4046 (= tp!4278 b_and!1765)))

(declare-fun b!29732 () Bool)

(declare-fun res!17834 () Bool)

(declare-fun e!19177 () Bool)

(assert (=> b!29732 (=> (not res!17834) (not e!19177))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1567 0))(
  ( (V!1568 (val!680 Int)) )
))
(declare-datatypes ((ValueCell!454 0))(
  ( (ValueCellFull!454 (v!1769 V!1567)) (EmptyCell!454) )
))
(declare-datatypes ((array!1835 0))(
  ( (array!1836 (arr!871 (Array (_ BitVec 32) ValueCell!454)) (size!972 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1835)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1837 0))(
  ( (array!1838 (arr!872 (Array (_ BitVec 32) (_ BitVec 64))) (size!973 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1837)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1567)

(declare-fun minValue!1443 () V!1567)

(declare-datatypes ((tuple2!1116 0))(
  ( (tuple2!1117 (_1!568 (_ BitVec 64)) (_2!568 V!1567)) )
))
(declare-datatypes ((List!720 0))(
  ( (Nil!717) (Cons!716 (h!1283 tuple2!1116) (t!3415 List!720)) )
))
(declare-datatypes ((ListLongMap!697 0))(
  ( (ListLongMap!698 (toList!364 List!720)) )
))
(declare-fun contains!301 (ListLongMap!697 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!191 (array!1837 array!1835 (_ BitVec 32) (_ BitVec 32) V!1567 V!1567 (_ BitVec 32) Int) ListLongMap!697)

(assert (=> b!29732 (= res!17834 (not (contains!301 (getCurrentListMap!191 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!29733 () Bool)

(declare-fun res!17837 () Bool)

(assert (=> b!29733 (=> (not res!17837) (not e!19177))))

(declare-fun arrayContainsKey!0 (array!1837 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!29733 (= res!17837 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun b!29734 () Bool)

(assert (=> b!29734 (= e!19177 (not (= (size!973 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))))))

(declare-fun b!29735 () Bool)

(declare-fun e!19176 () Bool)

(declare-fun e!19174 () Bool)

(declare-fun mapRes!1489 () Bool)

(assert (=> b!29735 (= e!19176 (and e!19174 mapRes!1489))))

(declare-fun condMapEmpty!1489 () Bool)

(declare-fun mapDefault!1489 () ValueCell!454)

