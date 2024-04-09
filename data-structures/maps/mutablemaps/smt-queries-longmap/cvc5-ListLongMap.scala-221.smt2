; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4006 () Bool)

(assert start!4006)

(declare-fun b_free!913 () Bool)

(declare-fun b_next!913 () Bool)

(assert (=> start!4006 (= b_free!913 (not b_next!913))))

(declare-fun tp!4158 () Bool)

(declare-fun b_and!1725 () Bool)

(assert (=> start!4006 (= tp!4158 b_and!1725)))

(declare-fun b!29150 () Bool)

(declare-fun e!18831 () Bool)

(declare-fun e!18833 () Bool)

(assert (=> b!29150 (= e!18831 e!18833)))

(declare-fun res!17434 () Bool)

(assert (=> b!29150 (=> (not res!17434) (not e!18833))))

(declare-datatypes ((V!1515 0))(
  ( (V!1516 (val!660 Int)) )
))
(declare-datatypes ((tuple2!1082 0))(
  ( (tuple2!1083 (_1!551 (_ BitVec 64)) (_2!551 V!1515)) )
))
(declare-datatypes ((List!692 0))(
  ( (Nil!689) (Cons!688 (h!1255 tuple2!1082) (t!3387 List!692)) )
))
(declare-datatypes ((ListLongMap!663 0))(
  ( (ListLongMap!664 (toList!347 List!692)) )
))
(declare-fun lt!11107 () ListLongMap!663)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun contains!284 (ListLongMap!663 (_ BitVec 64)) Bool)

(assert (=> b!29150 (= res!17434 (not (contains!284 lt!11107 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!434 0))(
  ( (ValueCellFull!434 (v!1749 V!1515)) (EmptyCell!434) )
))
(declare-datatypes ((array!1755 0))(
  ( (array!1756 (arr!831 (Array (_ BitVec 32) ValueCell!434)) (size!932 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1755)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1757 0))(
  ( (array!1758 (arr!832 (Array (_ BitVec 32) (_ BitVec 64))) (size!933 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1757)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1515)

(declare-fun minValue!1443 () V!1515)

(declare-fun getCurrentListMap!174 (array!1757 array!1755 (_ BitVec 32) (_ BitVec 32) V!1515 V!1515 (_ BitVec 32) Int) ListLongMap!663)

(assert (=> b!29150 (= lt!11107 (getCurrentListMap!174 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun res!17435 () Bool)

(assert (=> start!4006 (=> (not res!17435) (not e!18831))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4006 (= res!17435 (validMask!0 mask!2294))))

(assert (=> start!4006 e!18831))

(assert (=> start!4006 true))

(assert (=> start!4006 tp!4158))

(declare-fun e!18832 () Bool)

(declare-fun array_inv!565 (array!1755) Bool)

(assert (=> start!4006 (and (array_inv!565 _values!1501) e!18832)))

(declare-fun array_inv!566 (array!1757) Bool)

(assert (=> start!4006 (array_inv!566 _keys!1833)))

(declare-fun tp_is_empty!1267 () Bool)

(assert (=> start!4006 tp_is_empty!1267))

(declare-fun mapIsEmpty!1429 () Bool)

(declare-fun mapRes!1429 () Bool)

(assert (=> mapIsEmpty!1429 mapRes!1429))

(declare-fun b!29151 () Bool)

(declare-fun e!18834 () Bool)

(assert (=> b!29151 (= e!18832 (and e!18834 mapRes!1429))))

(declare-fun condMapEmpty!1429 () Bool)

(declare-fun mapDefault!1429 () ValueCell!434)

