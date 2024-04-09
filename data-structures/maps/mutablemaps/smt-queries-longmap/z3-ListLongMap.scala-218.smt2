; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3990 () Bool)

(assert start!3990)

(declare-fun b_free!897 () Bool)

(declare-fun b_next!897 () Bool)

(assert (=> start!3990 (= b_free!897 (not b_next!897))))

(declare-fun tp!4110 () Bool)

(declare-fun b_and!1709 () Bool)

(assert (=> start!3990 (= tp!4110 b_and!1709)))

(declare-fun b!28910 () Bool)

(declare-fun e!18687 () Bool)

(declare-fun e!18686 () Bool)

(declare-fun mapRes!1405 () Bool)

(assert (=> b!28910 (= e!18687 (and e!18686 mapRes!1405))))

(declare-fun condMapEmpty!1405 () Bool)

(declare-datatypes ((V!1493 0))(
  ( (V!1494 (val!652 Int)) )
))
(declare-datatypes ((ValueCell!426 0))(
  ( (ValueCellFull!426 (v!1741 V!1493)) (EmptyCell!426) )
))
(declare-datatypes ((array!1725 0))(
  ( (array!1726 (arr!816 (Array (_ BitVec 32) ValueCell!426)) (size!917 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1725)

(declare-fun mapDefault!1405 () ValueCell!426)

(assert (=> b!28910 (= condMapEmpty!1405 (= (arr!816 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!426)) mapDefault!1405)))))

(declare-fun b!28911 () Bool)

(declare-fun e!18690 () Bool)

(declare-fun e!18689 () Bool)

(assert (=> b!28911 (= e!18690 e!18689)))

(declare-fun res!17266 () Bool)

(assert (=> b!28911 (=> (not res!17266) (not e!18689))))

(declare-datatypes ((tuple2!1070 0))(
  ( (tuple2!1071 (_1!545 (_ BitVec 64)) (_2!545 V!1493)) )
))
(declare-datatypes ((List!680 0))(
  ( (Nil!677) (Cons!676 (h!1243 tuple2!1070) (t!3375 List!680)) )
))
(declare-datatypes ((ListLongMap!651 0))(
  ( (ListLongMap!652 (toList!341 List!680)) )
))
(declare-fun lt!10989 () ListLongMap!651)

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun contains!278 (ListLongMap!651 (_ BitVec 64)) Bool)

(assert (=> b!28911 (= res!17266 (not (contains!278 lt!10989 k0!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1727 0))(
  ( (array!1728 (arr!817 (Array (_ BitVec 32) (_ BitVec 64))) (size!918 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1727)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1493)

(declare-fun minValue!1443 () V!1493)

(declare-fun getCurrentListMap!168 (array!1727 array!1725 (_ BitVec 32) (_ BitVec 32) V!1493 V!1493 (_ BitVec 32) Int) ListLongMap!651)

(assert (=> b!28911 (= lt!10989 (getCurrentListMap!168 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!28912 () Bool)

(declare-fun res!17269 () Bool)

(assert (=> b!28912 (=> (not res!17269) (not e!18690))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1727 (_ BitVec 32)) Bool)

(assert (=> b!28912 (= res!17269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!28913 () Bool)

(declare-fun res!17268 () Bool)

(assert (=> b!28913 (=> (not res!17268) (not e!18690))))

(assert (=> b!28913 (= res!17268 (and (= (size!917 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!918 _keys!1833) (size!917 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!1405 () Bool)

(assert (=> mapIsEmpty!1405 mapRes!1405))

(declare-fun b!28914 () Bool)

(declare-fun res!17263 () Bool)

(assert (=> b!28914 (=> (not res!17263) (not e!18690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!28914 (= res!17263 (validKeyInArray!0 k0!1304))))

(declare-fun b!28915 () Bool)

(declare-fun res!17264 () Bool)

(assert (=> b!28915 (=> (not res!17264) (not e!18689))))

(declare-fun arrayContainsKey!0 (array!1727 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28915 (= res!17264 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!1405 () Bool)

(declare-fun tp!4111 () Bool)

(declare-fun e!18688 () Bool)

(assert (=> mapNonEmpty!1405 (= mapRes!1405 (and tp!4111 e!18688))))

(declare-fun mapValue!1405 () ValueCell!426)

(declare-fun mapKey!1405 () (_ BitVec 32))

(declare-fun mapRest!1405 () (Array (_ BitVec 32) ValueCell!426))

(assert (=> mapNonEmpty!1405 (= (arr!816 _values!1501) (store mapRest!1405 mapKey!1405 mapValue!1405))))

(declare-fun b!28916 () Bool)

(declare-fun res!17265 () Bool)

(assert (=> b!28916 (=> (not res!17265) (not e!18690))))

(declare-datatypes ((List!681 0))(
  ( (Nil!678) (Cons!677 (h!1244 (_ BitVec 64)) (t!3376 List!681)) )
))
(declare-fun arrayNoDuplicates!0 (array!1727 (_ BitVec 32) List!681) Bool)

(assert (=> b!28916 (= res!17265 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!678))))

(declare-fun b!28917 () Bool)

(declare-fun tp_is_empty!1251 () Bool)

(assert (=> b!28917 (= e!18686 tp_is_empty!1251)))

(declare-fun b!28918 () Bool)

(assert (=> b!28918 (= e!18688 tp_is_empty!1251)))

(declare-fun b!28919 () Bool)

(assert (=> b!28919 (= e!18689 (not true))))

(declare-datatypes ((SeekEntryResult!81 0))(
  ( (MissingZero!81 (index!2446 (_ BitVec 32))) (Found!81 (index!2447 (_ BitVec 32))) (Intermediate!81 (undefined!893 Bool) (index!2448 (_ BitVec 32)) (x!6367 (_ BitVec 32))) (Undefined!81) (MissingVacant!81 (index!2449 (_ BitVec 32))) )
))
(declare-fun lt!10985 () SeekEntryResult!81)

(declare-fun lt!10987 () (_ BitVec 32))

(get-info :version)

(assert (=> b!28919 (and ((_ is Found!81) lt!10985) (= (index!2447 lt!10985) lt!10987))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1727 (_ BitVec 32)) SeekEntryResult!81)

(assert (=> b!28919 (= lt!10985 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-datatypes ((Unit!663 0))(
  ( (Unit!664) )
))
(declare-fun lt!10988 () Unit!663)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!1727 (_ BitVec 32)) Unit!663)

(assert (=> b!28919 (= lt!10988 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1304 lt!10987 _keys!1833 mask!2294))))

(assert (=> b!28919 (contains!278 lt!10989 (select (arr!817 _keys!1833) lt!10987))))

(declare-fun lt!10986 () Unit!663)

(declare-fun lemmaValidKeyInArrayIsInListMap!23 (array!1727 array!1725 (_ BitVec 32) (_ BitVec 32) V!1493 V!1493 (_ BitVec 32) Int) Unit!663)

(assert (=> b!28919 (= lt!10986 (lemmaValidKeyInArrayIsInListMap!23 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!10987 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!1727 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!28919 (= lt!10987 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun res!17267 () Bool)

(assert (=> start!3990 (=> (not res!17267) (not e!18690))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3990 (= res!17267 (validMask!0 mask!2294))))

(assert (=> start!3990 e!18690))

(assert (=> start!3990 true))

(assert (=> start!3990 tp!4110))

(declare-fun array_inv!551 (array!1725) Bool)

(assert (=> start!3990 (and (array_inv!551 _values!1501) e!18687)))

(declare-fun array_inv!552 (array!1727) Bool)

(assert (=> start!3990 (array_inv!552 _keys!1833)))

(assert (=> start!3990 tp_is_empty!1251))

(assert (= (and start!3990 res!17267) b!28913))

(assert (= (and b!28913 res!17268) b!28912))

(assert (= (and b!28912 res!17269) b!28916))

(assert (= (and b!28916 res!17265) b!28914))

(assert (= (and b!28914 res!17263) b!28911))

(assert (= (and b!28911 res!17266) b!28915))

(assert (= (and b!28915 res!17264) b!28919))

(assert (= (and b!28910 condMapEmpty!1405) mapIsEmpty!1405))

(assert (= (and b!28910 (not condMapEmpty!1405)) mapNonEmpty!1405))

(assert (= (and mapNonEmpty!1405 ((_ is ValueCellFull!426) mapValue!1405)) b!28918))

(assert (= (and b!28910 ((_ is ValueCellFull!426) mapDefault!1405)) b!28917))

(assert (= start!3990 b!28910))

(declare-fun m!23081 () Bool)

(assert (=> b!28919 m!23081))

(declare-fun m!23083 () Bool)

(assert (=> b!28919 m!23083))

(declare-fun m!23085 () Bool)

(assert (=> b!28919 m!23085))

(declare-fun m!23087 () Bool)

(assert (=> b!28919 m!23087))

(declare-fun m!23089 () Bool)

(assert (=> b!28919 m!23089))

(declare-fun m!23091 () Bool)

(assert (=> b!28919 m!23091))

(assert (=> b!28919 m!23089))

(declare-fun m!23093 () Bool)

(assert (=> mapNonEmpty!1405 m!23093))

(declare-fun m!23095 () Bool)

(assert (=> b!28915 m!23095))

(declare-fun m!23097 () Bool)

(assert (=> b!28911 m!23097))

(declare-fun m!23099 () Bool)

(assert (=> b!28911 m!23099))

(declare-fun m!23101 () Bool)

(assert (=> start!3990 m!23101))

(declare-fun m!23103 () Bool)

(assert (=> start!3990 m!23103))

(declare-fun m!23105 () Bool)

(assert (=> start!3990 m!23105))

(declare-fun m!23107 () Bool)

(assert (=> b!28912 m!23107))

(declare-fun m!23109 () Bool)

(assert (=> b!28916 m!23109))

(declare-fun m!23111 () Bool)

(assert (=> b!28914 m!23111))

(check-sat (not b_next!897) (not b!28919) (not b!28911) (not b!28912) (not mapNonEmpty!1405) b_and!1709 tp_is_empty!1251 (not start!3990) (not b!28915) (not b!28916) (not b!28914))
(check-sat b_and!1709 (not b_next!897))
