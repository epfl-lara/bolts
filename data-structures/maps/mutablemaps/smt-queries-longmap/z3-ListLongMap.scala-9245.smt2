; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110856 () Bool)

(assert start!110856)

(declare-fun b_free!29655 () Bool)

(declare-fun b_next!29655 () Bool)

(assert (=> start!110856 (= b_free!29655 (not b_next!29655))))

(declare-fun tp!104288 () Bool)

(declare-fun b_and!47873 () Bool)

(assert (=> start!110856 (= tp!104288 b_and!47873)))

(declare-fun b!1311602 () Bool)

(declare-fun res!870819 () Bool)

(declare-fun e!748249 () Bool)

(assert (=> b!1311602 (=> (not res!870819) (not e!748249))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87721 0))(
  ( (array!87722 (arr!42336 (Array (_ BitVec 32) (_ BitVec 64))) (size!42887 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87721)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-datatypes ((V!52283 0))(
  ( (V!52284 (val!17767 Int)) )
))
(declare-fun minValue!1296 () V!52283)

(declare-fun zeroValue!1296 () V!52283)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16794 0))(
  ( (ValueCellFull!16794 (v!20392 V!52283)) (EmptyCell!16794) )
))
(declare-datatypes ((array!87723 0))(
  ( (array!87724 (arr!42337 (Array (_ BitVec 32) ValueCell!16794)) (size!42888 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87723)

(declare-datatypes ((tuple2!23070 0))(
  ( (tuple2!23071 (_1!11545 (_ BitVec 64)) (_2!11545 V!52283)) )
))
(declare-datatypes ((List!30233 0))(
  ( (Nil!30230) (Cons!30229 (h!31438 tuple2!23070) (t!43846 List!30233)) )
))
(declare-datatypes ((ListLongMap!20739 0))(
  ( (ListLongMap!20740 (toList!10385 List!30233)) )
))
(declare-fun contains!8471 (ListLongMap!20739 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5341 (array!87721 array!87723 (_ BitVec 32) (_ BitVec 32) V!52283 V!52283 (_ BitVec 32) Int) ListLongMap!20739)

(assert (=> b!1311602 (= res!870819 (contains!8471 (getCurrentListMap!5341 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1311603 () Bool)

(assert (=> b!1311603 (= e!748249 (not true))))

(assert (=> b!1311603 (contains!8471 (getCurrentListMap!5341 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43304 0))(
  ( (Unit!43305) )
))
(declare-fun lt!585433 () Unit!43304)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!5 (array!87721 array!87723 (_ BitVec 32) (_ BitVec 32) V!52283 V!52283 (_ BitVec 64) (_ BitVec 32) Int) Unit!43304)

(assert (=> b!1311603 (= lt!585433 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!5 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1311604 () Bool)

(declare-fun res!870822 () Bool)

(assert (=> b!1311604 (=> (not res!870822) (not e!748249))))

(assert (=> b!1311604 (= res!870822 (and (= (size!42888 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42887 _keys!1628) (size!42888 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1311605 () Bool)

(declare-fun res!870820 () Bool)

(assert (=> b!1311605 (=> (not res!870820) (not e!748249))))

(assert (=> b!1311605 (= res!870820 (not (= (select (arr!42336 _keys!1628) from!2020) k0!1175)))))

(declare-fun mapIsEmpty!54706 () Bool)

(declare-fun mapRes!54706 () Bool)

(assert (=> mapIsEmpty!54706 mapRes!54706))

(declare-fun b!1311606 () Bool)

(declare-fun e!748248 () Bool)

(declare-fun tp_is_empty!35385 () Bool)

(assert (=> b!1311606 (= e!748248 tp_is_empty!35385)))

(declare-fun b!1311607 () Bool)

(declare-fun e!748246 () Bool)

(assert (=> b!1311607 (= e!748246 (and e!748248 mapRes!54706))))

(declare-fun condMapEmpty!54706 () Bool)

(declare-fun mapDefault!54706 () ValueCell!16794)

(assert (=> b!1311607 (= condMapEmpty!54706 (= (arr!42337 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16794)) mapDefault!54706)))))

(declare-fun b!1311608 () Bool)

(declare-fun res!870821 () Bool)

(assert (=> b!1311608 (=> (not res!870821) (not e!748249))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1311608 (= res!870821 (validKeyInArray!0 (select (arr!42336 _keys!1628) from!2020)))))

(declare-fun res!870825 () Bool)

(assert (=> start!110856 (=> (not res!870825) (not e!748249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110856 (= res!870825 (validMask!0 mask!2040))))

(assert (=> start!110856 e!748249))

(assert (=> start!110856 tp!104288))

(declare-fun array_inv!31975 (array!87721) Bool)

(assert (=> start!110856 (array_inv!31975 _keys!1628)))

(assert (=> start!110856 true))

(assert (=> start!110856 tp_is_empty!35385))

(declare-fun array_inv!31976 (array!87723) Bool)

(assert (=> start!110856 (and (array_inv!31976 _values!1354) e!748246)))

(declare-fun b!1311609 () Bool)

(declare-fun res!870824 () Bool)

(assert (=> b!1311609 (=> (not res!870824) (not e!748249))))

(assert (=> b!1311609 (= res!870824 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42887 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1311610 () Bool)

(declare-fun res!870826 () Bool)

(assert (=> b!1311610 (=> (not res!870826) (not e!748249))))

(declare-datatypes ((List!30234 0))(
  ( (Nil!30231) (Cons!30230 (h!31439 (_ BitVec 64)) (t!43847 List!30234)) )
))
(declare-fun arrayNoDuplicates!0 (array!87721 (_ BitVec 32) List!30234) Bool)

(assert (=> b!1311610 (= res!870826 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30231))))

(declare-fun b!1311611 () Bool)

(declare-fun e!748247 () Bool)

(assert (=> b!1311611 (= e!748247 tp_is_empty!35385)))

(declare-fun mapNonEmpty!54706 () Bool)

(declare-fun tp!104287 () Bool)

(assert (=> mapNonEmpty!54706 (= mapRes!54706 (and tp!104287 e!748247))))

(declare-fun mapValue!54706 () ValueCell!16794)

(declare-fun mapRest!54706 () (Array (_ BitVec 32) ValueCell!16794))

(declare-fun mapKey!54706 () (_ BitVec 32))

(assert (=> mapNonEmpty!54706 (= (arr!42337 _values!1354) (store mapRest!54706 mapKey!54706 mapValue!54706))))

(declare-fun b!1311612 () Bool)

(declare-fun res!870827 () Bool)

(assert (=> b!1311612 (=> (not res!870827) (not e!748249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87721 (_ BitVec 32)) Bool)

(assert (=> b!1311612 (= res!870827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1311613 () Bool)

(declare-fun res!870823 () Bool)

(assert (=> b!1311613 (=> (not res!870823) (not e!748249))))

(assert (=> b!1311613 (= res!870823 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!110856 res!870825) b!1311604))

(assert (= (and b!1311604 res!870822) b!1311612))

(assert (= (and b!1311612 res!870827) b!1311610))

(assert (= (and b!1311610 res!870826) b!1311609))

(assert (= (and b!1311609 res!870824) b!1311602))

(assert (= (and b!1311602 res!870819) b!1311605))

(assert (= (and b!1311605 res!870820) b!1311608))

(assert (= (and b!1311608 res!870821) b!1311613))

(assert (= (and b!1311613 res!870823) b!1311603))

(assert (= (and b!1311607 condMapEmpty!54706) mapIsEmpty!54706))

(assert (= (and b!1311607 (not condMapEmpty!54706)) mapNonEmpty!54706))

(get-info :version)

(assert (= (and mapNonEmpty!54706 ((_ is ValueCellFull!16794) mapValue!54706)) b!1311611))

(assert (= (and b!1311607 ((_ is ValueCellFull!16794) mapDefault!54706)) b!1311606))

(assert (= start!110856 b!1311607))

(declare-fun m!1201025 () Bool)

(assert (=> b!1311603 m!1201025))

(assert (=> b!1311603 m!1201025))

(declare-fun m!1201027 () Bool)

(assert (=> b!1311603 m!1201027))

(declare-fun m!1201029 () Bool)

(assert (=> b!1311603 m!1201029))

(declare-fun m!1201031 () Bool)

(assert (=> b!1311610 m!1201031))

(declare-fun m!1201033 () Bool)

(assert (=> b!1311612 m!1201033))

(declare-fun m!1201035 () Bool)

(assert (=> start!110856 m!1201035))

(declare-fun m!1201037 () Bool)

(assert (=> start!110856 m!1201037))

(declare-fun m!1201039 () Bool)

(assert (=> start!110856 m!1201039))

(declare-fun m!1201041 () Bool)

(assert (=> mapNonEmpty!54706 m!1201041))

(declare-fun m!1201043 () Bool)

(assert (=> b!1311605 m!1201043))

(declare-fun m!1201045 () Bool)

(assert (=> b!1311602 m!1201045))

(assert (=> b!1311602 m!1201045))

(declare-fun m!1201047 () Bool)

(assert (=> b!1311602 m!1201047))

(assert (=> b!1311608 m!1201043))

(assert (=> b!1311608 m!1201043))

(declare-fun m!1201049 () Bool)

(assert (=> b!1311608 m!1201049))

(check-sat (not b!1311610) (not mapNonEmpty!54706) (not b!1311608) (not b_next!29655) tp_is_empty!35385 b_and!47873 (not start!110856) (not b!1311603) (not b!1311602) (not b!1311612))
(check-sat b_and!47873 (not b_next!29655))
