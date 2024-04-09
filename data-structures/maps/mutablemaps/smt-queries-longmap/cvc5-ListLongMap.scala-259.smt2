; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4274 () Bool)

(assert start!4274)

(declare-fun b_free!1141 () Bool)

(declare-fun b_next!1141 () Bool)

(assert (=> start!4274 (= b_free!1141 (not b_next!1141))))

(declare-fun tp!4848 () Bool)

(declare-fun b_and!1957 () Bool)

(assert (=> start!4274 (= tp!4848 b_and!1957)))

(declare-fun b!32767 () Bool)

(declare-fun res!19886 () Bool)

(declare-fun e!20821 () Bool)

(assert (=> b!32767 (=> (not res!19886) (not e!20821))))

(declare-datatypes ((array!2199 0))(
  ( (array!2200 (arr!1051 (Array (_ BitVec 32) (_ BitVec 64))) (size!1152 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2199)

(declare-datatypes ((List!854 0))(
  ( (Nil!851) (Cons!850 (h!1417 (_ BitVec 64)) (t!3553 List!854)) )
))
(declare-fun arrayNoDuplicates!0 (array!2199 (_ BitVec 32) List!854) Bool)

(assert (=> b!32767 (= res!19886 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!851))))

(declare-fun mapIsEmpty!1777 () Bool)

(declare-fun mapRes!1777 () Bool)

(assert (=> mapIsEmpty!1777 mapRes!1777))

(declare-fun mapNonEmpty!1777 () Bool)

(declare-fun tp!4849 () Bool)

(declare-fun e!20822 () Bool)

(assert (=> mapNonEmpty!1777 (= mapRes!1777 (and tp!4849 e!20822))))

(declare-datatypes ((V!1819 0))(
  ( (V!1820 (val!774 Int)) )
))
(declare-datatypes ((ValueCell!548 0))(
  ( (ValueCellFull!548 (v!1865 V!1819)) (EmptyCell!548) )
))
(declare-datatypes ((array!2201 0))(
  ( (array!2202 (arr!1052 (Array (_ BitVec 32) ValueCell!548)) (size!1153 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2201)

(declare-fun mapRest!1777 () (Array (_ BitVec 32) ValueCell!548))

(declare-fun mapKey!1777 () (_ BitVec 32))

(declare-fun mapValue!1777 () ValueCell!548)

(assert (=> mapNonEmpty!1777 (= (arr!1052 _values!1501) (store mapRest!1777 mapKey!1777 mapValue!1777))))

(declare-fun b!32768 () Bool)

(declare-fun e!20819 () Bool)

(assert (=> b!32768 (= e!20821 e!20819)))

(declare-fun res!19888 () Bool)

(assert (=> b!32768 (=> (not res!19888) (not e!20819))))

(declare-datatypes ((tuple2!1252 0))(
  ( (tuple2!1253 (_1!636 (_ BitVec 64)) (_2!636 V!1819)) )
))
(declare-datatypes ((List!855 0))(
  ( (Nil!852) (Cons!851 (h!1418 tuple2!1252) (t!3554 List!855)) )
))
(declare-datatypes ((ListLongMap!833 0))(
  ( (ListLongMap!834 (toList!432 List!855)) )
))
(declare-fun lt!11886 () ListLongMap!833)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun contains!371 (ListLongMap!833 (_ BitVec 64)) Bool)

(assert (=> b!32768 (= res!19888 (not (contains!371 lt!11886 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1819)

(declare-fun minValue!1443 () V!1819)

(declare-fun getCurrentListMap!257 (array!2199 array!2201 (_ BitVec 32) (_ BitVec 32) V!1819 V!1819 (_ BitVec 32) Int) ListLongMap!833)

(assert (=> b!32768 (= lt!11886 (getCurrentListMap!257 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!32769 () Bool)

(assert (=> b!32769 (= e!20819 (not (= (size!1152 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))))))

(declare-fun lt!11884 () (_ BitVec 32))

(assert (=> b!32769 (contains!371 lt!11886 (select (arr!1051 _keys!1833) lt!11884))))

(declare-datatypes ((Unit!717 0))(
  ( (Unit!718) )
))
(declare-fun lt!11885 () Unit!717)

(declare-fun lemmaValidKeyInArrayIsInListMap!46 (array!2199 array!2201 (_ BitVec 32) (_ BitVec 32) V!1819 V!1819 (_ BitVec 32) Int) Unit!717)

(assert (=> b!32769 (= lt!11885 (lemmaValidKeyInArrayIsInListMap!46 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11884 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2199 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!32769 (= lt!11884 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!32770 () Bool)

(declare-fun res!19884 () Bool)

(assert (=> b!32770 (=> (not res!19884) (not e!20821))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2199 (_ BitVec 32)) Bool)

(assert (=> b!32770 (= res!19884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun res!19887 () Bool)

(assert (=> start!4274 (=> (not res!19887) (not e!20821))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4274 (= res!19887 (validMask!0 mask!2294))))

(assert (=> start!4274 e!20821))

(assert (=> start!4274 true))

(assert (=> start!4274 tp!4848))

(declare-fun e!20820 () Bool)

(declare-fun array_inv!699 (array!2201) Bool)

(assert (=> start!4274 (and (array_inv!699 _values!1501) e!20820)))

(declare-fun array_inv!700 (array!2199) Bool)

(assert (=> start!4274 (array_inv!700 _keys!1833)))

(declare-fun tp_is_empty!1495 () Bool)

(assert (=> start!4274 tp_is_empty!1495))

(declare-fun b!32771 () Bool)

(declare-fun e!20824 () Bool)

(assert (=> b!32771 (= e!20820 (and e!20824 mapRes!1777))))

(declare-fun condMapEmpty!1777 () Bool)

(declare-fun mapDefault!1777 () ValueCell!548)

