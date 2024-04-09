; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4488 () Bool)

(assert start!4488)

(declare-fun b_free!1251 () Bool)

(declare-fun b_next!1251 () Bool)

(assert (=> start!4488 (= b_free!1251 (not b_next!1251))))

(declare-fun tp!5191 () Bool)

(declare-fun b_and!2075 () Bool)

(assert (=> start!4488 (= tp!5191 b_and!2075)))

(declare-fun b!35010 () Bool)

(declare-fun e!22136 () Bool)

(assert (=> b!35010 (= e!22136 false)))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-datatypes ((array!2415 0))(
  ( (array!2416 (arr!1155 (Array (_ BitVec 32) (_ BitVec 64))) (size!1256 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2415)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!162 0))(
  ( (MissingZero!162 (index!2770 (_ BitVec 32))) (Found!162 (index!2771 (_ BitVec 32))) (Intermediate!162 (undefined!974 Bool) (index!2772 (_ BitVec 32)) (x!6980 (_ BitVec 32))) (Undefined!162) (MissingVacant!162 (index!2773 (_ BitVec 32))) )
))
(declare-fun lt!12844 () SeekEntryResult!162)

(declare-fun seekEntry!0 ((_ BitVec 64) array!2415 (_ BitVec 32)) SeekEntryResult!162)

(assert (=> b!35010 (= lt!12844 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun res!21269 () Bool)

(assert (=> start!4488 (=> (not res!21269) (not e!22136))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4488 (= res!21269 (validMask!0 mask!2294))))

(assert (=> start!4488 e!22136))

(assert (=> start!4488 true))

(assert (=> start!4488 tp!5191))

(declare-datatypes ((V!1965 0))(
  ( (V!1966 (val!829 Int)) )
))
(declare-datatypes ((ValueCell!603 0))(
  ( (ValueCellFull!603 (v!1924 V!1965)) (EmptyCell!603) )
))
(declare-datatypes ((array!2417 0))(
  ( (array!2418 (arr!1156 (Array (_ BitVec 32) ValueCell!603)) (size!1257 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2417)

(declare-fun e!22133 () Bool)

(declare-fun array_inv!765 (array!2417) Bool)

(assert (=> start!4488 (and (array_inv!765 _values!1501) e!22133)))

(declare-fun array_inv!766 (array!2415) Bool)

(assert (=> start!4488 (array_inv!766 _keys!1833)))

(declare-fun tp_is_empty!1605 () Bool)

(assert (=> start!4488 tp_is_empty!1605))

(declare-fun b!35011 () Bool)

(declare-fun e!22137 () Bool)

(declare-fun mapRes!1954 () Bool)

(assert (=> b!35011 (= e!22133 (and e!22137 mapRes!1954))))

(declare-fun condMapEmpty!1954 () Bool)

(declare-fun mapDefault!1954 () ValueCell!603)

(assert (=> b!35011 (= condMapEmpty!1954 (= (arr!1156 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!603)) mapDefault!1954)))))

(declare-fun b!35012 () Bool)

(assert (=> b!35012 (= e!22137 tp_is_empty!1605)))

(declare-fun b!35013 () Bool)

(declare-fun res!21268 () Bool)

(assert (=> b!35013 (=> (not res!21268) (not e!22136))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!35013 (= res!21268 (validKeyInArray!0 k0!1304))))

(declare-fun mapNonEmpty!1954 () Bool)

(declare-fun tp!5190 () Bool)

(declare-fun e!22135 () Bool)

(assert (=> mapNonEmpty!1954 (= mapRes!1954 (and tp!5190 e!22135))))

(declare-fun mapRest!1954 () (Array (_ BitVec 32) ValueCell!603))

(declare-fun mapValue!1954 () ValueCell!603)

(declare-fun mapKey!1954 () (_ BitVec 32))

(assert (=> mapNonEmpty!1954 (= (arr!1156 _values!1501) (store mapRest!1954 mapKey!1954 mapValue!1954))))

(declare-fun b!35014 () Bool)

(declare-fun res!21272 () Bool)

(assert (=> b!35014 (=> (not res!21272) (not e!22136))))

(declare-fun arrayContainsKey!0 (array!2415 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!35014 (= res!21272 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!35015 () Bool)

(declare-fun res!21271 () Bool)

(assert (=> b!35015 (=> (not res!21271) (not e!22136))))

(declare-datatypes ((List!937 0))(
  ( (Nil!934) (Cons!933 (h!1500 (_ BitVec 64)) (t!3644 List!937)) )
))
(declare-fun arrayNoDuplicates!0 (array!2415 (_ BitVec 32) List!937) Bool)

(assert (=> b!35015 (= res!21271 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!934))))

(declare-fun b!35016 () Bool)

(assert (=> b!35016 (= e!22135 tp_is_empty!1605)))

(declare-fun mapIsEmpty!1954 () Bool)

(assert (=> mapIsEmpty!1954 mapRes!1954))

(declare-fun b!35017 () Bool)

(declare-fun res!21273 () Bool)

(assert (=> b!35017 (=> (not res!21273) (not e!22136))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2415 (_ BitVec 32)) Bool)

(assert (=> b!35017 (= res!21273 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!35018 () Bool)

(declare-fun res!21274 () Bool)

(assert (=> b!35018 (=> (not res!21274) (not e!22136))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1965)

(declare-fun minValue!1443 () V!1965)

(declare-datatypes ((tuple2!1330 0))(
  ( (tuple2!1331 (_1!675 (_ BitVec 64)) (_2!675 V!1965)) )
))
(declare-datatypes ((List!938 0))(
  ( (Nil!935) (Cons!934 (h!1501 tuple2!1330) (t!3645 List!938)) )
))
(declare-datatypes ((ListLongMap!911 0))(
  ( (ListLongMap!912 (toList!471 List!938)) )
))
(declare-fun contains!414 (ListLongMap!911 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!292 (array!2415 array!2417 (_ BitVec 32) (_ BitVec 32) V!1965 V!1965 (_ BitVec 32) Int) ListLongMap!911)

(assert (=> b!35018 (= res!21274 (not (contains!414 (getCurrentListMap!292 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!35019 () Bool)

(declare-fun res!21270 () Bool)

(assert (=> b!35019 (=> (not res!21270) (not e!22136))))

(assert (=> b!35019 (= res!21270 (and (= (size!1257 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1256 _keys!1833) (size!1257 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(assert (= (and start!4488 res!21269) b!35019))

(assert (= (and b!35019 res!21270) b!35017))

(assert (= (and b!35017 res!21273) b!35015))

(assert (= (and b!35015 res!21271) b!35013))

(assert (= (and b!35013 res!21268) b!35018))

(assert (= (and b!35018 res!21274) b!35014))

(assert (= (and b!35014 res!21272) b!35010))

(assert (= (and b!35011 condMapEmpty!1954) mapIsEmpty!1954))

(assert (= (and b!35011 (not condMapEmpty!1954)) mapNonEmpty!1954))

(get-info :version)

(assert (= (and mapNonEmpty!1954 ((_ is ValueCellFull!603) mapValue!1954)) b!35016))

(assert (= (and b!35011 ((_ is ValueCellFull!603) mapDefault!1954)) b!35012))

(assert (= start!4488 b!35011))

(declare-fun m!28197 () Bool)

(assert (=> b!35013 m!28197))

(declare-fun m!28199 () Bool)

(assert (=> b!35014 m!28199))

(declare-fun m!28201 () Bool)

(assert (=> b!35017 m!28201))

(declare-fun m!28203 () Bool)

(assert (=> b!35015 m!28203))

(declare-fun m!28205 () Bool)

(assert (=> mapNonEmpty!1954 m!28205))

(declare-fun m!28207 () Bool)

(assert (=> b!35010 m!28207))

(declare-fun m!28209 () Bool)

(assert (=> b!35018 m!28209))

(assert (=> b!35018 m!28209))

(declare-fun m!28211 () Bool)

(assert (=> b!35018 m!28211))

(declare-fun m!28213 () Bool)

(assert (=> start!4488 m!28213))

(declare-fun m!28215 () Bool)

(assert (=> start!4488 m!28215))

(declare-fun m!28217 () Bool)

(assert (=> start!4488 m!28217))

(check-sat (not start!4488) (not b!35013) (not b!35017) (not b!35018) (not b!35014) (not b_next!1251) (not b!35010) b_and!2075 tp_is_empty!1605 (not b!35015) (not mapNonEmpty!1954))
(check-sat b_and!2075 (not b_next!1251))
