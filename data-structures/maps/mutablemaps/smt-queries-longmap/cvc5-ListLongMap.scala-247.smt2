; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4162 () Bool)

(assert start!4162)

(declare-fun b_free!1069 () Bool)

(declare-fun b_next!1069 () Bool)

(assert (=> start!4162 (= b_free!1069 (not b_next!1069))))

(declare-fun tp!4627 () Bool)

(declare-fun b_and!1881 () Bool)

(assert (=> start!4162 (= tp!4627 b_and!1881)))

(declare-fun b!31450 () Bool)

(declare-fun res!19030 () Bool)

(declare-fun e!20098 () Bool)

(assert (=> b!31450 (=> (not res!19030) (not e!20098))))

(declare-datatypes ((array!2053 0))(
  ( (array!2054 (arr!980 (Array (_ BitVec 32) (_ BitVec 64))) (size!1081 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2053)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2053 (_ BitVec 32)) Bool)

(assert (=> b!31450 (= res!19030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!31451 () Bool)

(declare-fun res!19033 () Bool)

(assert (=> b!31451 (=> (not res!19033) (not e!20098))))

(declare-datatypes ((V!1723 0))(
  ( (V!1724 (val!738 Int)) )
))
(declare-datatypes ((ValueCell!512 0))(
  ( (ValueCellFull!512 (v!1827 V!1723)) (EmptyCell!512) )
))
(declare-datatypes ((array!2055 0))(
  ( (array!2056 (arr!981 (Array (_ BitVec 32) ValueCell!512)) (size!1082 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2055)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!31451 (= res!19033 (and (= (size!1082 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1081 _keys!1833) (size!1082 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!31452 () Bool)

(declare-fun e!20099 () Bool)

(declare-fun tp_is_empty!1423 () Bool)

(assert (=> b!31452 (= e!20099 tp_is_empty!1423)))

(declare-fun mapIsEmpty!1663 () Bool)

(declare-fun mapRes!1663 () Bool)

(assert (=> mapIsEmpty!1663 mapRes!1663))

(declare-fun res!19032 () Bool)

(assert (=> start!4162 (=> (not res!19032) (not e!20098))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4162 (= res!19032 (validMask!0 mask!2294))))

(assert (=> start!4162 e!20098))

(assert (=> start!4162 true))

(assert (=> start!4162 tp!4627))

(declare-fun e!20100 () Bool)

(declare-fun array_inv!657 (array!2055) Bool)

(assert (=> start!4162 (and (array_inv!657 _values!1501) e!20100)))

(declare-fun array_inv!658 (array!2053) Bool)

(assert (=> start!4162 (array_inv!658 _keys!1833)))

(assert (=> start!4162 tp_is_empty!1423))

(declare-fun b!31453 () Bool)

(assert (=> b!31453 (= e!20098 false)))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-fun lt!11574 () Bool)

(declare-fun zeroValue!1443 () V!1723)

(declare-fun minValue!1443 () V!1723)

(declare-datatypes ((tuple2!1200 0))(
  ( (tuple2!1201 (_1!610 (_ BitVec 64)) (_2!610 V!1723)) )
))
(declare-datatypes ((List!804 0))(
  ( (Nil!801) (Cons!800 (h!1367 tuple2!1200) (t!3499 List!804)) )
))
(declare-datatypes ((ListLongMap!781 0))(
  ( (ListLongMap!782 (toList!406 List!804)) )
))
(declare-fun contains!343 (ListLongMap!781 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!231 (array!2053 array!2055 (_ BitVec 32) (_ BitVec 32) V!1723 V!1723 (_ BitVec 32) Int) ListLongMap!781)

(assert (=> b!31453 (= lt!11574 (contains!343 (getCurrentListMap!231 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304))))

(declare-fun b!31454 () Bool)

(assert (=> b!31454 (= e!20100 (and e!20099 mapRes!1663))))

(declare-fun condMapEmpty!1663 () Bool)

(declare-fun mapDefault!1663 () ValueCell!512)

