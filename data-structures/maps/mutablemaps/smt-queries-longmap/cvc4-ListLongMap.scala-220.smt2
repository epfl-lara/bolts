; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4004 () Bool)

(assert start!4004)

(declare-fun b_free!911 () Bool)

(declare-fun b_next!911 () Bool)

(assert (=> start!4004 (= b_free!911 (not b_next!911))))

(declare-fun tp!4152 () Bool)

(declare-fun b_and!1723 () Bool)

(assert (=> start!4004 (= tp!4152 b_and!1723)))

(declare-fun res!17414 () Bool)

(declare-fun e!18812 () Bool)

(assert (=> start!4004 (=> (not res!17414) (not e!18812))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4004 (= res!17414 (validMask!0 mask!2294))))

(assert (=> start!4004 e!18812))

(assert (=> start!4004 true))

(assert (=> start!4004 tp!4152))

(declare-datatypes ((V!1511 0))(
  ( (V!1512 (val!659 Int)) )
))
(declare-datatypes ((ValueCell!433 0))(
  ( (ValueCellFull!433 (v!1748 V!1511)) (EmptyCell!433) )
))
(declare-datatypes ((array!1751 0))(
  ( (array!1752 (arr!829 (Array (_ BitVec 32) ValueCell!433)) (size!930 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1751)

(declare-fun e!18813 () Bool)

(declare-fun array_inv!563 (array!1751) Bool)

(assert (=> start!4004 (and (array_inv!563 _values!1501) e!18813)))

(declare-datatypes ((array!1753 0))(
  ( (array!1754 (arr!830 (Array (_ BitVec 32) (_ BitVec 64))) (size!931 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1753)

(declare-fun array_inv!564 (array!1753) Bool)

(assert (=> start!4004 (array_inv!564 _keys!1833)))

(declare-fun tp_is_empty!1265 () Bool)

(assert (=> start!4004 tp_is_empty!1265))

(declare-fun mapNonEmpty!1426 () Bool)

(declare-fun mapRes!1426 () Bool)

(declare-fun tp!4153 () Bool)

(declare-fun e!18814 () Bool)

(assert (=> mapNonEmpty!1426 (= mapRes!1426 (and tp!4153 e!18814))))

(declare-fun mapKey!1426 () (_ BitVec 32))

(declare-fun mapRest!1426 () (Array (_ BitVec 32) ValueCell!433))

(declare-fun mapValue!1426 () ValueCell!433)

(assert (=> mapNonEmpty!1426 (= (arr!829 _values!1501) (store mapRest!1426 mapKey!1426 mapValue!1426))))

(declare-fun b!29120 () Bool)

(declare-fun res!17410 () Bool)

(assert (=> b!29120 (=> (not res!17410) (not e!18812))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!29120 (= res!17410 (validKeyInArray!0 k!1304))))

(declare-fun b!29121 () Bool)

(declare-fun e!18815 () Bool)

(assert (=> b!29121 (= e!18815 (not true))))

(declare-datatypes ((SeekEntryResult!86 0))(
  ( (MissingZero!86 (index!2466 (_ BitVec 32))) (Found!86 (index!2467 (_ BitVec 32))) (Intermediate!86 (undefined!898 Bool) (index!2468 (_ BitVec 32)) (x!6388 (_ BitVec 32))) (Undefined!86) (MissingVacant!86 (index!2469 (_ BitVec 32))) )
))
(declare-fun lt!11094 () SeekEntryResult!86)

(declare-fun lt!11093 () (_ BitVec 32))

(assert (=> b!29121 (and (is-Found!86 lt!11094) (= (index!2467 lt!11094) lt!11093))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1753 (_ BitVec 32)) SeekEntryResult!86)

(assert (=> b!29121 (= lt!11094 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-datatypes ((Unit!673 0))(
  ( (Unit!674) )
))
(declare-fun lt!11091 () Unit!673)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!1753 (_ BitVec 32)) Unit!673)

(assert (=> b!29121 (= lt!11091 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1304 lt!11093 _keys!1833 mask!2294))))

(declare-datatypes ((tuple2!1080 0))(
  ( (tuple2!1081 (_1!550 (_ BitVec 64)) (_2!550 V!1511)) )
))
(declare-datatypes ((List!690 0))(
  ( (Nil!687) (Cons!686 (h!1253 tuple2!1080) (t!3385 List!690)) )
))
(declare-datatypes ((ListLongMap!661 0))(
  ( (ListLongMap!662 (toList!346 List!690)) )
))
(declare-fun lt!11090 () ListLongMap!661)

(declare-fun contains!283 (ListLongMap!661 (_ BitVec 64)) Bool)

(assert (=> b!29121 (contains!283 lt!11090 (select (arr!830 _keys!1833) lt!11093))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun lt!11092 () Unit!673)

(declare-fun zeroValue!1443 () V!1511)

(declare-fun minValue!1443 () V!1511)

(declare-fun lemmaValidKeyInArrayIsInListMap!28 (array!1753 array!1751 (_ BitVec 32) (_ BitVec 32) V!1511 V!1511 (_ BitVec 32) Int) Unit!673)

(assert (=> b!29121 (= lt!11092 (lemmaValidKeyInArrayIsInListMap!28 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11093 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!1753 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!29121 (= lt!11093 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!1426 () Bool)

(assert (=> mapIsEmpty!1426 mapRes!1426))

(declare-fun b!29122 () Bool)

(assert (=> b!29122 (= e!18812 e!18815)))

(declare-fun res!17411 () Bool)

(assert (=> b!29122 (=> (not res!17411) (not e!18815))))

(assert (=> b!29122 (= res!17411 (not (contains!283 lt!11090 k!1304)))))

(declare-fun getCurrentListMap!173 (array!1753 array!1751 (_ BitVec 32) (_ BitVec 32) V!1511 V!1511 (_ BitVec 32) Int) ListLongMap!661)

(assert (=> b!29122 (= lt!11090 (getCurrentListMap!173 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!29123 () Bool)

(declare-fun res!17416 () Bool)

(assert (=> b!29123 (=> (not res!17416) (not e!18812))))

(declare-datatypes ((List!691 0))(
  ( (Nil!688) (Cons!687 (h!1254 (_ BitVec 64)) (t!3386 List!691)) )
))
(declare-fun arrayNoDuplicates!0 (array!1753 (_ BitVec 32) List!691) Bool)

(assert (=> b!29123 (= res!17416 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!688))))

(declare-fun b!29124 () Bool)

(assert (=> b!29124 (= e!18814 tp_is_empty!1265)))

(declare-fun b!29125 () Bool)

(declare-fun res!17415 () Bool)

(assert (=> b!29125 (=> (not res!17415) (not e!18815))))

(declare-fun arrayContainsKey!0 (array!1753 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!29125 (= res!17415 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!29126 () Bool)

(declare-fun res!17413 () Bool)

(assert (=> b!29126 (=> (not res!17413) (not e!18812))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1753 (_ BitVec 32)) Bool)

(assert (=> b!29126 (= res!17413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!29127 () Bool)

(declare-fun e!18816 () Bool)

(assert (=> b!29127 (= e!18813 (and e!18816 mapRes!1426))))

(declare-fun condMapEmpty!1426 () Bool)

(declare-fun mapDefault!1426 () ValueCell!433)

