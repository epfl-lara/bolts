; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3980 () Bool)

(assert start!3980)

(declare-fun b_free!887 () Bool)

(declare-fun b_next!887 () Bool)

(assert (=> start!3980 (= b_free!887 (not b_next!887))))

(declare-fun tp!4081 () Bool)

(declare-fun b_and!1699 () Bool)

(assert (=> start!3980 (= tp!4081 b_and!1699)))

(declare-fun b!28750 () Bool)

(declare-fun e!18591 () Bool)

(declare-fun e!18587 () Bool)

(assert (=> b!28750 (= e!18591 (not e!18587))))

(declare-fun res!17150 () Bool)

(assert (=> b!28750 (=> res!17150 e!18587)))

(declare-datatypes ((array!1705 0))(
  ( (array!1706 (arr!806 (Array (_ BitVec 32) (_ BitVec 64))) (size!907 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1705)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!28750 (= res!17150 (not (= (size!907 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))))))

(declare-datatypes ((V!1479 0))(
  ( (V!1480 (val!647 Int)) )
))
(declare-datatypes ((tuple2!1060 0))(
  ( (tuple2!1061 (_1!540 (_ BitVec 64)) (_2!540 V!1479)) )
))
(declare-datatypes ((List!672 0))(
  ( (Nil!669) (Cons!668 (h!1235 tuple2!1060) (t!3367 List!672)) )
))
(declare-datatypes ((ListLongMap!641 0))(
  ( (ListLongMap!642 (toList!336 List!672)) )
))
(declare-fun lt!10922 () ListLongMap!641)

(declare-fun lt!10923 () (_ BitVec 32))

(declare-fun contains!273 (ListLongMap!641 (_ BitVec 64)) Bool)

(assert (=> b!28750 (contains!273 lt!10922 (select (arr!806 _keys!1833) lt!10923))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((Unit!655 0))(
  ( (Unit!656) )
))
(declare-fun lt!10921 () Unit!655)

(declare-datatypes ((ValueCell!421 0))(
  ( (ValueCellFull!421 (v!1736 V!1479)) (EmptyCell!421) )
))
(declare-datatypes ((array!1707 0))(
  ( (array!1708 (arr!807 (Array (_ BitVec 32) ValueCell!421)) (size!908 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1707)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1479)

(declare-fun minValue!1443 () V!1479)

(declare-fun lemmaValidKeyInArrayIsInListMap!19 (array!1705 array!1707 (_ BitVec 32) (_ BitVec 32) V!1479 V!1479 (_ BitVec 32) Int) Unit!655)

(assert (=> b!28750 (= lt!10921 (lemmaValidKeyInArrayIsInListMap!19 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!10923 defaultEntry!1504))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!1705 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!28750 (= lt!10923 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!28751 () Bool)

(declare-fun res!17155 () Bool)

(assert (=> b!28751 (=> (not res!17155) (not e!18591))))

(declare-fun arrayContainsKey!0 (array!1705 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28751 (= res!17155 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!28752 () Bool)

(declare-fun res!17151 () Bool)

(declare-fun e!18592 () Bool)

(assert (=> b!28752 (=> (not res!17151) (not e!18592))))

(assert (=> b!28752 (= res!17151 (and (= (size!908 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!907 _keys!1833) (size!908 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!28753 () Bool)

(declare-fun e!18586 () Bool)

(declare-fun tp_is_empty!1241 () Bool)

(assert (=> b!28753 (= e!18586 tp_is_empty!1241)))

(declare-fun b!28754 () Bool)

(assert (=> b!28754 (= e!18587 true)))

(declare-datatypes ((SeekEntryResult!78 0))(
  ( (MissingZero!78 (index!2434 (_ BitVec 32))) (Found!78 (index!2435 (_ BitVec 32))) (Intermediate!78 (undefined!890 Bool) (index!2436 (_ BitVec 32)) (x!6348 (_ BitVec 32))) (Undefined!78) (MissingVacant!78 (index!2437 (_ BitVec 32))) )
))
(declare-fun lt!10920 () SeekEntryResult!78)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1705 (_ BitVec 32)) SeekEntryResult!78)

(assert (=> b!28754 (= lt!10920 (seekEntryOrOpen!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!28755 () Bool)

(declare-fun res!17152 () Bool)

(assert (=> b!28755 (=> (not res!17152) (not e!18592))))

(declare-datatypes ((List!673 0))(
  ( (Nil!670) (Cons!669 (h!1236 (_ BitVec 64)) (t!3368 List!673)) )
))
(declare-fun arrayNoDuplicates!0 (array!1705 (_ BitVec 32) List!673) Bool)

(assert (=> b!28755 (= res!17152 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!670))))

(declare-fun b!28756 () Bool)

(declare-fun res!17149 () Bool)

(assert (=> b!28756 (=> (not res!17149) (not e!18592))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1705 (_ BitVec 32)) Bool)

(assert (=> b!28756 (= res!17149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!28757 () Bool)

(declare-fun e!18590 () Bool)

(assert (=> b!28757 (= e!18590 tp_is_empty!1241)))

(declare-fun b!28758 () Bool)

(assert (=> b!28758 (= e!18592 e!18591)))

(declare-fun res!17153 () Bool)

(assert (=> b!28758 (=> (not res!17153) (not e!18591))))

(assert (=> b!28758 (= res!17153 (not (contains!273 lt!10922 k!1304)))))

(declare-fun getCurrentListMap!163 (array!1705 array!1707 (_ BitVec 32) (_ BitVec 32) V!1479 V!1479 (_ BitVec 32) Int) ListLongMap!641)

(assert (=> b!28758 (= lt!10922 (getCurrentListMap!163 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun mapIsEmpty!1390 () Bool)

(declare-fun mapRes!1390 () Bool)

(assert (=> mapIsEmpty!1390 mapRes!1390))

(declare-fun res!17148 () Bool)

(assert (=> start!3980 (=> (not res!17148) (not e!18592))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3980 (= res!17148 (validMask!0 mask!2294))))

(assert (=> start!3980 e!18592))

(assert (=> start!3980 true))

(assert (=> start!3980 tp!4081))

(declare-fun e!18588 () Bool)

(declare-fun array_inv!545 (array!1707) Bool)

(assert (=> start!3980 (and (array_inv!545 _values!1501) e!18588)))

(declare-fun array_inv!546 (array!1705) Bool)

(assert (=> start!3980 (array_inv!546 _keys!1833)))

(assert (=> start!3980 tp_is_empty!1241))

(declare-fun mapNonEmpty!1390 () Bool)

(declare-fun tp!4080 () Bool)

(assert (=> mapNonEmpty!1390 (= mapRes!1390 (and tp!4080 e!18590))))

(declare-fun mapRest!1390 () (Array (_ BitVec 32) ValueCell!421))

(declare-fun mapKey!1390 () (_ BitVec 32))

(declare-fun mapValue!1390 () ValueCell!421)

(assert (=> mapNonEmpty!1390 (= (arr!807 _values!1501) (store mapRest!1390 mapKey!1390 mapValue!1390))))

(declare-fun b!28759 () Bool)

(declare-fun res!17154 () Bool)

(assert (=> b!28759 (=> (not res!17154) (not e!18592))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!28759 (= res!17154 (validKeyInArray!0 k!1304))))

(declare-fun b!28760 () Bool)

(assert (=> b!28760 (= e!18588 (and e!18586 mapRes!1390))))

(declare-fun condMapEmpty!1390 () Bool)

(declare-fun mapDefault!1390 () ValueCell!421)

