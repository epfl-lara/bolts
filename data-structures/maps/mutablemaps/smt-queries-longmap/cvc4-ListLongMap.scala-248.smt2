; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4172 () Bool)

(assert start!4172)

(declare-fun b_free!1079 () Bool)

(declare-fun b_next!1079 () Bool)

(assert (=> start!4172 (= b_free!1079 (not b_next!1079))))

(declare-fun tp!4656 () Bool)

(declare-fun b_and!1891 () Bool)

(assert (=> start!4172 (= tp!4656 b_and!1891)))

(declare-fun mapNonEmpty!1678 () Bool)

(declare-fun mapRes!1678 () Bool)

(declare-fun tp!4657 () Bool)

(declare-fun e!20172 () Bool)

(assert (=> mapNonEmpty!1678 (= mapRes!1678 (and tp!4657 e!20172))))

(declare-datatypes ((V!1735 0))(
  ( (V!1736 (val!743 Int)) )
))
(declare-datatypes ((ValueCell!517 0))(
  ( (ValueCellFull!517 (v!1832 V!1735)) (EmptyCell!517) )
))
(declare-datatypes ((array!2073 0))(
  ( (array!2074 (arr!990 (Array (_ BitVec 32) ValueCell!517)) (size!1091 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2073)

(declare-fun mapValue!1678 () ValueCell!517)

(declare-fun mapRest!1678 () (Array (_ BitVec 32) ValueCell!517))

(declare-fun mapKey!1678 () (_ BitVec 32))

(assert (=> mapNonEmpty!1678 (= (arr!990 _values!1501) (store mapRest!1678 mapKey!1678 mapValue!1678))))

(declare-fun b!31586 () Bool)

(declare-fun e!20173 () Bool)

(assert (=> b!31586 (= e!20173 false)))

(declare-fun lt!11589 () (_ BitVec 32))

(declare-datatypes ((array!2075 0))(
  ( (array!2076 (arr!991 (Array (_ BitVec 32) (_ BitVec 64))) (size!1092 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2075)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!2075 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!31586 (= lt!11589 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!31587 () Bool)

(declare-fun res!19124 () Bool)

(assert (=> b!31587 (=> (not res!19124) (not e!20173))))

(declare-fun arrayContainsKey!0 (array!2075 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!31587 (= res!19124 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun res!19123 () Bool)

(assert (=> start!4172 (=> (not res!19123) (not e!20173))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4172 (= res!19123 (validMask!0 mask!2294))))

(assert (=> start!4172 e!20173))

(assert (=> start!4172 true))

(assert (=> start!4172 tp!4656))

(declare-fun e!20175 () Bool)

(declare-fun array_inv!665 (array!2073) Bool)

(assert (=> start!4172 (and (array_inv!665 _values!1501) e!20175)))

(declare-fun array_inv!666 (array!2075) Bool)

(assert (=> start!4172 (array_inv!666 _keys!1833)))

(declare-fun tp_is_empty!1433 () Bool)

(assert (=> start!4172 tp_is_empty!1433))

(declare-fun mapIsEmpty!1678 () Bool)

(assert (=> mapIsEmpty!1678 mapRes!1678))

(declare-fun b!31588 () Bool)

(declare-fun res!19121 () Bool)

(assert (=> b!31588 (=> (not res!19121) (not e!20173))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2075 (_ BitVec 32)) Bool)

(assert (=> b!31588 (= res!19121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!31589 () Bool)

(declare-fun res!19125 () Bool)

(assert (=> b!31589 (=> (not res!19125) (not e!20173))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31589 (= res!19125 (validKeyInArray!0 k!1304))))

(declare-fun b!31590 () Bool)

(assert (=> b!31590 (= e!20172 tp_is_empty!1433)))

(declare-fun b!31591 () Bool)

(declare-fun res!19122 () Bool)

(assert (=> b!31591 (=> (not res!19122) (not e!20173))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1735)

(declare-fun minValue!1443 () V!1735)

(declare-datatypes ((tuple2!1208 0))(
  ( (tuple2!1209 (_1!614 (_ BitVec 64)) (_2!614 V!1735)) )
))
(declare-datatypes ((List!810 0))(
  ( (Nil!807) (Cons!806 (h!1373 tuple2!1208) (t!3505 List!810)) )
))
(declare-datatypes ((ListLongMap!789 0))(
  ( (ListLongMap!790 (toList!410 List!810)) )
))
(declare-fun contains!347 (ListLongMap!789 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!235 (array!2075 array!2073 (_ BitVec 32) (_ BitVec 32) V!1735 V!1735 (_ BitVec 32) Int) ListLongMap!789)

(assert (=> b!31591 (= res!19122 (not (contains!347 (getCurrentListMap!235 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!31592 () Bool)

(declare-fun e!20176 () Bool)

(assert (=> b!31592 (= e!20176 tp_is_empty!1433)))

(declare-fun b!31593 () Bool)

(declare-fun res!19120 () Bool)

(assert (=> b!31593 (=> (not res!19120) (not e!20173))))

(declare-datatypes ((List!811 0))(
  ( (Nil!808) (Cons!807 (h!1374 (_ BitVec 64)) (t!3506 List!811)) )
))
(declare-fun arrayNoDuplicates!0 (array!2075 (_ BitVec 32) List!811) Bool)

(assert (=> b!31593 (= res!19120 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!808))))

(declare-fun b!31594 () Bool)

(declare-fun res!19126 () Bool)

(assert (=> b!31594 (=> (not res!19126) (not e!20173))))

(assert (=> b!31594 (= res!19126 (and (= (size!1091 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1092 _keys!1833) (size!1091 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!31595 () Bool)

(assert (=> b!31595 (= e!20175 (and e!20176 mapRes!1678))))

(declare-fun condMapEmpty!1678 () Bool)

(declare-fun mapDefault!1678 () ValueCell!517)

