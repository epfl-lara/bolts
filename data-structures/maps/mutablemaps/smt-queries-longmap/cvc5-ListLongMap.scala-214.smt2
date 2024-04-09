; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3964 () Bool)

(assert start!3964)

(declare-fun b_free!871 () Bool)

(declare-fun b_next!871 () Bool)

(assert (=> start!3964 (= b_free!871 (not b_next!871))))

(declare-fun tp!4032 () Bool)

(declare-fun b_and!1683 () Bool)

(assert (=> start!3964 (= tp!4032 b_and!1683)))

(declare-fun b!28486 () Bool)

(declare-fun e!18419 () Bool)

(declare-fun e!18424 () Bool)

(assert (=> b!28486 (= e!18419 (not e!18424))))

(declare-fun res!16957 () Bool)

(assert (=> b!28486 (=> res!16957 e!18424)))

(declare-datatypes ((array!1675 0))(
  ( (array!1676 (arr!791 (Array (_ BitVec 32) (_ BitVec 64))) (size!892 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1675)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!28486 (= res!16957 (not (= (size!892 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))))))

(declare-datatypes ((V!1459 0))(
  ( (V!1460 (val!639 Int)) )
))
(declare-datatypes ((tuple2!1046 0))(
  ( (tuple2!1047 (_1!533 (_ BitVec 64)) (_2!533 V!1459)) )
))
(declare-datatypes ((List!660 0))(
  ( (Nil!657) (Cons!656 (h!1223 tuple2!1046) (t!3355 List!660)) )
))
(declare-datatypes ((ListLongMap!627 0))(
  ( (ListLongMap!628 (toList!329 List!660)) )
))
(declare-fun lt!10827 () ListLongMap!627)

(declare-fun lt!10825 () (_ BitVec 32))

(declare-fun contains!266 (ListLongMap!627 (_ BitVec 64)) Bool)

(assert (=> b!28486 (contains!266 lt!10827 (select (arr!791 _keys!1833) lt!10825))))

(declare-datatypes ((Unit!647 0))(
  ( (Unit!648) )
))
(declare-fun lt!10826 () Unit!647)

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!413 0))(
  ( (ValueCellFull!413 (v!1728 V!1459)) (EmptyCell!413) )
))
(declare-datatypes ((array!1677 0))(
  ( (array!1678 (arr!792 (Array (_ BitVec 32) ValueCell!413)) (size!893 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1677)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1459)

(declare-fun minValue!1443 () V!1459)

(declare-fun lemmaValidKeyInArrayIsInListMap!15 (array!1675 array!1677 (_ BitVec 32) (_ BitVec 32) V!1459 V!1459 (_ BitVec 32) Int) Unit!647)

(assert (=> b!28486 (= lt!10826 (lemmaValidKeyInArrayIsInListMap!15 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!10825 defaultEntry!1504))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!1675 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!28486 (= lt!10825 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!28487 () Bool)

(assert (=> b!28487 (= e!18424 true)))

(declare-datatypes ((SeekEntryResult!73 0))(
  ( (MissingZero!73 (index!2414 (_ BitVec 32))) (Found!73 (index!2415 (_ BitVec 32))) (Intermediate!73 (undefined!885 Bool) (index!2416 (_ BitVec 32)) (x!6327 (_ BitVec 32))) (Undefined!73) (MissingVacant!73 (index!2417 (_ BitVec 32))) )
))
(declare-fun lt!10824 () SeekEntryResult!73)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1675 (_ BitVec 32)) SeekEntryResult!73)

(assert (=> b!28487 (= lt!10824 (seekEntryOrOpen!0 k!1304 _keys!1833 mask!2294))))

(declare-fun res!16956 () Bool)

(declare-fun e!18418 () Bool)

(assert (=> start!3964 (=> (not res!16956) (not e!18418))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3964 (= res!16956 (validMask!0 mask!2294))))

(assert (=> start!3964 e!18418))

(assert (=> start!3964 true))

(assert (=> start!3964 tp!4032))

(declare-fun e!18420 () Bool)

(declare-fun array_inv!537 (array!1677) Bool)

(assert (=> start!3964 (and (array_inv!537 _values!1501) e!18420)))

(declare-fun array_inv!538 (array!1675) Bool)

(assert (=> start!3964 (array_inv!538 _keys!1833)))

(declare-fun tp_is_empty!1225 () Bool)

(assert (=> start!3964 tp_is_empty!1225))

(declare-fun b!28488 () Bool)

(assert (=> b!28488 (= e!18418 e!18419)))

(declare-fun res!16958 () Bool)

(assert (=> b!28488 (=> (not res!16958) (not e!18419))))

(assert (=> b!28488 (= res!16958 (not (contains!266 lt!10827 k!1304)))))

(declare-fun getCurrentListMap!156 (array!1675 array!1677 (_ BitVec 32) (_ BitVec 32) V!1459 V!1459 (_ BitVec 32) Int) ListLongMap!627)

(assert (=> b!28488 (= lt!10827 (getCurrentListMap!156 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!28489 () Bool)

(declare-fun res!16961 () Bool)

(assert (=> b!28489 (=> (not res!16961) (not e!18418))))

(assert (=> b!28489 (= res!16961 (and (= (size!893 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!892 _keys!1833) (size!893 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!28490 () Bool)

(declare-fun res!16963 () Bool)

(assert (=> b!28490 (=> (not res!16963) (not e!18418))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!28490 (= res!16963 (validKeyInArray!0 k!1304))))

(declare-fun b!28491 () Bool)

(declare-fun res!16959 () Bool)

(assert (=> b!28491 (=> (not res!16959) (not e!18419))))

(declare-fun arrayContainsKey!0 (array!1675 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28491 (= res!16959 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!1366 () Bool)

(declare-fun mapRes!1366 () Bool)

(declare-fun tp!4033 () Bool)

(declare-fun e!18423 () Bool)

(assert (=> mapNonEmpty!1366 (= mapRes!1366 (and tp!4033 e!18423))))

(declare-fun mapValue!1366 () ValueCell!413)

(declare-fun mapRest!1366 () (Array (_ BitVec 32) ValueCell!413))

(declare-fun mapKey!1366 () (_ BitVec 32))

(assert (=> mapNonEmpty!1366 (= (arr!792 _values!1501) (store mapRest!1366 mapKey!1366 mapValue!1366))))

(declare-fun b!28492 () Bool)

(declare-fun res!16962 () Bool)

(assert (=> b!28492 (=> (not res!16962) (not e!18418))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1675 (_ BitVec 32)) Bool)

(assert (=> b!28492 (= res!16962 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!28493 () Bool)

(declare-fun res!16960 () Bool)

(assert (=> b!28493 (=> (not res!16960) (not e!18418))))

(declare-datatypes ((List!661 0))(
  ( (Nil!658) (Cons!657 (h!1224 (_ BitVec 64)) (t!3356 List!661)) )
))
(declare-fun arrayNoDuplicates!0 (array!1675 (_ BitVec 32) List!661) Bool)

(assert (=> b!28493 (= res!16960 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!658))))

(declare-fun b!28494 () Bool)

(declare-fun e!18421 () Bool)

(assert (=> b!28494 (= e!18421 tp_is_empty!1225)))

(declare-fun b!28495 () Bool)

(assert (=> b!28495 (= e!18420 (and e!18421 mapRes!1366))))

(declare-fun condMapEmpty!1366 () Bool)

(declare-fun mapDefault!1366 () ValueCell!413)

