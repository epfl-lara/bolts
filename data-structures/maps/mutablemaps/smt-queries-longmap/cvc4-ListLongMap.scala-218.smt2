; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3992 () Bool)

(assert start!3992)

(declare-fun b_free!899 () Bool)

(declare-fun b_next!899 () Bool)

(assert (=> start!3992 (= b_free!899 (not b_next!899))))

(declare-fun tp!4116 () Bool)

(declare-fun b_and!1711 () Bool)

(assert (=> start!3992 (= tp!4116 b_and!1711)))

(declare-fun b!28940 () Bool)

(declare-fun res!17288 () Bool)

(declare-fun e!18708 () Bool)

(assert (=> b!28940 (=> (not res!17288) (not e!18708))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!28940 (= res!17288 (validKeyInArray!0 k!1304))))

(declare-fun b!28941 () Bool)

(declare-fun res!17286 () Bool)

(assert (=> b!28941 (=> (not res!17286) (not e!18708))))

(declare-datatypes ((V!1495 0))(
  ( (V!1496 (val!653 Int)) )
))
(declare-datatypes ((ValueCell!427 0))(
  ( (ValueCellFull!427 (v!1742 V!1495)) (EmptyCell!427) )
))
(declare-datatypes ((array!1729 0))(
  ( (array!1730 (arr!818 (Array (_ BitVec 32) ValueCell!427)) (size!919 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1729)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1731 0))(
  ( (array!1732 (arr!819 (Array (_ BitVec 32) (_ BitVec 64))) (size!920 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1731)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!28941 (= res!17286 (and (= (size!919 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!920 _keys!1833) (size!919 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!28942 () Bool)

(declare-fun e!18707 () Bool)

(declare-fun tp_is_empty!1253 () Bool)

(assert (=> b!28942 (= e!18707 tp_is_empty!1253)))

(declare-fun b!28943 () Bool)

(declare-fun e!18709 () Bool)

(assert (=> b!28943 (= e!18709 (not true))))

(declare-datatypes ((SeekEntryResult!82 0))(
  ( (MissingZero!82 (index!2450 (_ BitVec 32))) (Found!82 (index!2451 (_ BitVec 32))) (Intermediate!82 (undefined!894 Bool) (index!2452 (_ BitVec 32)) (x!6368 (_ BitVec 32))) (Undefined!82) (MissingVacant!82 (index!2453 (_ BitVec 32))) )
))
(declare-fun lt!11002 () SeekEntryResult!82)

(declare-fun lt!11004 () (_ BitVec 32))

(assert (=> b!28943 (and (is-Found!82 lt!11002) (= (index!2451 lt!11002) lt!11004))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1731 (_ BitVec 32)) SeekEntryResult!82)

(assert (=> b!28943 (= lt!11002 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-datatypes ((Unit!665 0))(
  ( (Unit!666) )
))
(declare-fun lt!11003 () Unit!665)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!1731 (_ BitVec 32)) Unit!665)

(assert (=> b!28943 (= lt!11003 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1304 lt!11004 _keys!1833 mask!2294))))

(declare-datatypes ((tuple2!1072 0))(
  ( (tuple2!1073 (_1!546 (_ BitVec 64)) (_2!546 V!1495)) )
))
(declare-datatypes ((List!682 0))(
  ( (Nil!679) (Cons!678 (h!1245 tuple2!1072) (t!3377 List!682)) )
))
(declare-datatypes ((ListLongMap!653 0))(
  ( (ListLongMap!654 (toList!342 List!682)) )
))
(declare-fun lt!11000 () ListLongMap!653)

(declare-fun contains!279 (ListLongMap!653 (_ BitVec 64)) Bool)

(assert (=> b!28943 (contains!279 lt!11000 (select (arr!819 _keys!1833) lt!11004))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun lt!11001 () Unit!665)

(declare-fun zeroValue!1443 () V!1495)

(declare-fun minValue!1443 () V!1495)

(declare-fun lemmaValidKeyInArrayIsInListMap!24 (array!1731 array!1729 (_ BitVec 32) (_ BitVec 32) V!1495 V!1495 (_ BitVec 32) Int) Unit!665)

(assert (=> b!28943 (= lt!11001 (lemmaValidKeyInArrayIsInListMap!24 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11004 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!1731 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!28943 (= lt!11004 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!28944 () Bool)

(declare-fun res!17287 () Bool)

(assert (=> b!28944 (=> (not res!17287) (not e!18709))))

(declare-fun arrayContainsKey!0 (array!1731 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28944 (= res!17287 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!1408 () Bool)

(declare-fun mapRes!1408 () Bool)

(assert (=> mapIsEmpty!1408 mapRes!1408))

(declare-fun mapNonEmpty!1408 () Bool)

(declare-fun tp!4117 () Bool)

(declare-fun e!18706 () Bool)

(assert (=> mapNonEmpty!1408 (= mapRes!1408 (and tp!4117 e!18706))))

(declare-fun mapKey!1408 () (_ BitVec 32))

(declare-fun mapRest!1408 () (Array (_ BitVec 32) ValueCell!427))

(declare-fun mapValue!1408 () ValueCell!427)

(assert (=> mapNonEmpty!1408 (= (arr!818 _values!1501) (store mapRest!1408 mapKey!1408 mapValue!1408))))

(declare-fun b!28945 () Bool)

(assert (=> b!28945 (= e!18706 tp_is_empty!1253)))

(declare-fun b!28946 () Bool)

(declare-fun res!17285 () Bool)

(assert (=> b!28946 (=> (not res!17285) (not e!18708))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1731 (_ BitVec 32)) Bool)

(assert (=> b!28946 (= res!17285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun res!17290 () Bool)

(assert (=> start!3992 (=> (not res!17290) (not e!18708))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3992 (= res!17290 (validMask!0 mask!2294))))

(assert (=> start!3992 e!18708))

(assert (=> start!3992 true))

(assert (=> start!3992 tp!4116))

(declare-fun e!18704 () Bool)

(declare-fun array_inv!553 (array!1729) Bool)

(assert (=> start!3992 (and (array_inv!553 _values!1501) e!18704)))

(declare-fun array_inv!554 (array!1731) Bool)

(assert (=> start!3992 (array_inv!554 _keys!1833)))

(assert (=> start!3992 tp_is_empty!1253))

(declare-fun b!28947 () Bool)

(declare-fun res!17289 () Bool)

(assert (=> b!28947 (=> (not res!17289) (not e!18708))))

(declare-datatypes ((List!683 0))(
  ( (Nil!680) (Cons!679 (h!1246 (_ BitVec 64)) (t!3378 List!683)) )
))
(declare-fun arrayNoDuplicates!0 (array!1731 (_ BitVec 32) List!683) Bool)

(assert (=> b!28947 (= res!17289 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!680))))

(declare-fun b!28948 () Bool)

(assert (=> b!28948 (= e!18708 e!18709)))

(declare-fun res!17284 () Bool)

(assert (=> b!28948 (=> (not res!17284) (not e!18709))))

(assert (=> b!28948 (= res!17284 (not (contains!279 lt!11000 k!1304)))))

(declare-fun getCurrentListMap!169 (array!1731 array!1729 (_ BitVec 32) (_ BitVec 32) V!1495 V!1495 (_ BitVec 32) Int) ListLongMap!653)

(assert (=> b!28948 (= lt!11000 (getCurrentListMap!169 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!28949 () Bool)

(assert (=> b!28949 (= e!18704 (and e!18707 mapRes!1408))))

(declare-fun condMapEmpty!1408 () Bool)

(declare-fun mapDefault!1408 () ValueCell!427)

