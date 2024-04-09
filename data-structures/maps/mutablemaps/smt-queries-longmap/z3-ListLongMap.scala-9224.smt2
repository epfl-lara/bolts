; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110730 () Bool)

(assert start!110730)

(declare-fun b_free!29529 () Bool)

(declare-fun b_next!29529 () Bool)

(assert (=> start!110730 (= b_free!29529 (not b_next!29529))))

(declare-fun tp!103909 () Bool)

(declare-fun b_and!47747 () Bool)

(assert (=> start!110730 (= tp!103909 b_and!47747)))

(declare-fun b!1309766 () Bool)

(declare-fun res!869552 () Bool)

(declare-fun e!747301 () Bool)

(assert (=> b!1309766 (=> (not res!869552) (not e!747301))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87473 0))(
  ( (array!87474 (arr!42212 (Array (_ BitVec 32) (_ BitVec 64))) (size!42763 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87473)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52115 0))(
  ( (V!52116 (val!17704 Int)) )
))
(declare-fun minValue!1296 () V!52115)

(declare-datatypes ((ValueCell!16731 0))(
  ( (ValueCellFull!16731 (v!20329 V!52115)) (EmptyCell!16731) )
))
(declare-datatypes ((array!87475 0))(
  ( (array!87476 (arr!42213 (Array (_ BitVec 32) ValueCell!16731)) (size!42764 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87475)

(declare-fun zeroValue!1296 () V!52115)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-datatypes ((tuple2!22970 0))(
  ( (tuple2!22971 (_1!11495 (_ BitVec 64)) (_2!11495 V!52115)) )
))
(declare-datatypes ((List!30136 0))(
  ( (Nil!30133) (Cons!30132 (h!31341 tuple2!22970) (t!43749 List!30136)) )
))
(declare-datatypes ((ListLongMap!20639 0))(
  ( (ListLongMap!20640 (toList!10335 List!30136)) )
))
(declare-fun contains!8421 (ListLongMap!20639 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5291 (array!87473 array!87475 (_ BitVec 32) (_ BitVec 32) V!52115 V!52115 (_ BitVec 32) Int) ListLongMap!20639)

(assert (=> b!1309766 (= res!869552 (contains!8421 (getCurrentListMap!5291 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1309767 () Bool)

(declare-fun res!869553 () Bool)

(assert (=> b!1309767 (=> (not res!869553) (not e!747301))))

(assert (=> b!1309767 (= res!869553 (not (= (select (arr!42212 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1309768 () Bool)

(declare-fun res!869551 () Bool)

(assert (=> b!1309768 (=> (not res!869551) (not e!747301))))

(assert (=> b!1309768 (= res!869551 (and (= (size!42764 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42763 _keys!1628) (size!42764 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1309769 () Bool)

(assert (=> b!1309769 (= e!747301 (not true))))

(assert (=> b!1309769 (contains!8421 (getCurrentListMap!5291 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43260 0))(
  ( (Unit!43261) )
))
(declare-fun lt!585244 () Unit!43260)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!4 (array!87473 array!87475 (_ BitVec 32) (_ BitVec 32) V!52115 V!52115 (_ BitVec 64) (_ BitVec 32) Int) Unit!43260)

(assert (=> b!1309769 (= lt!585244 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!4 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun mapIsEmpty!54517 () Bool)

(declare-fun mapRes!54517 () Bool)

(assert (=> mapIsEmpty!54517 mapRes!54517))

(declare-fun b!1309770 () Bool)

(declare-fun e!747305 () Bool)

(declare-fun tp_is_empty!35259 () Bool)

(assert (=> b!1309770 (= e!747305 tp_is_empty!35259)))

(declare-fun b!1309771 () Bool)

(declare-fun res!869556 () Bool)

(assert (=> b!1309771 (=> (not res!869556) (not e!747301))))

(assert (=> b!1309771 (= res!869556 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!54517 () Bool)

(declare-fun tp!103910 () Bool)

(declare-fun e!747302 () Bool)

(assert (=> mapNonEmpty!54517 (= mapRes!54517 (and tp!103910 e!747302))))

(declare-fun mapRest!54517 () (Array (_ BitVec 32) ValueCell!16731))

(declare-fun mapKey!54517 () (_ BitVec 32))

(declare-fun mapValue!54517 () ValueCell!16731)

(assert (=> mapNonEmpty!54517 (= (arr!42213 _values!1354) (store mapRest!54517 mapKey!54517 mapValue!54517))))

(declare-fun b!1309772 () Bool)

(assert (=> b!1309772 (= e!747302 tp_is_empty!35259)))

(declare-fun res!869557 () Bool)

(assert (=> start!110730 (=> (not res!869557) (not e!747301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110730 (= res!869557 (validMask!0 mask!2040))))

(assert (=> start!110730 e!747301))

(assert (=> start!110730 tp!103909))

(declare-fun array_inv!31895 (array!87473) Bool)

(assert (=> start!110730 (array_inv!31895 _keys!1628)))

(assert (=> start!110730 true))

(assert (=> start!110730 tp_is_empty!35259))

(declare-fun e!747303 () Bool)

(declare-fun array_inv!31896 (array!87475) Bool)

(assert (=> start!110730 (and (array_inv!31896 _values!1354) e!747303)))

(declare-fun b!1309773 () Bool)

(declare-fun res!869554 () Bool)

(assert (=> b!1309773 (=> (not res!869554) (not e!747301))))

(assert (=> b!1309773 (= res!869554 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42763 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1309774 () Bool)

(assert (=> b!1309774 (= e!747303 (and e!747305 mapRes!54517))))

(declare-fun condMapEmpty!54517 () Bool)

(declare-fun mapDefault!54517 () ValueCell!16731)

(assert (=> b!1309774 (= condMapEmpty!54517 (= (arr!42213 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16731)) mapDefault!54517)))))

(declare-fun b!1309775 () Bool)

(declare-fun res!869558 () Bool)

(assert (=> b!1309775 (=> (not res!869558) (not e!747301))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1309775 (= res!869558 (validKeyInArray!0 (select (arr!42212 _keys!1628) from!2020)))))

(declare-fun b!1309776 () Bool)

(declare-fun res!869550 () Bool)

(assert (=> b!1309776 (=> (not res!869550) (not e!747301))))

(declare-datatypes ((List!30137 0))(
  ( (Nil!30134) (Cons!30133 (h!31342 (_ BitVec 64)) (t!43750 List!30137)) )
))
(declare-fun arrayNoDuplicates!0 (array!87473 (_ BitVec 32) List!30137) Bool)

(assert (=> b!1309776 (= res!869550 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30134))))

(declare-fun b!1309777 () Bool)

(declare-fun res!869555 () Bool)

(assert (=> b!1309777 (=> (not res!869555) (not e!747301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87473 (_ BitVec 32)) Bool)

(assert (=> b!1309777 (= res!869555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(assert (= (and start!110730 res!869557) b!1309768))

(assert (= (and b!1309768 res!869551) b!1309777))

(assert (= (and b!1309777 res!869555) b!1309776))

(assert (= (and b!1309776 res!869550) b!1309773))

(assert (= (and b!1309773 res!869554) b!1309766))

(assert (= (and b!1309766 res!869552) b!1309767))

(assert (= (and b!1309767 res!869553) b!1309775))

(assert (= (and b!1309775 res!869558) b!1309771))

(assert (= (and b!1309771 res!869556) b!1309769))

(assert (= (and b!1309774 condMapEmpty!54517) mapIsEmpty!54517))

(assert (= (and b!1309774 (not condMapEmpty!54517)) mapNonEmpty!54517))

(get-info :version)

(assert (= (and mapNonEmpty!54517 ((_ is ValueCellFull!16731) mapValue!54517)) b!1309772))

(assert (= (and b!1309774 ((_ is ValueCellFull!16731) mapDefault!54517)) b!1309770))

(assert (= start!110730 b!1309774))

(declare-fun m!1199747 () Bool)

(assert (=> b!1309775 m!1199747))

(assert (=> b!1309775 m!1199747))

(declare-fun m!1199749 () Bool)

(assert (=> b!1309775 m!1199749))

(declare-fun m!1199751 () Bool)

(assert (=> b!1309777 m!1199751))

(declare-fun m!1199753 () Bool)

(assert (=> b!1309766 m!1199753))

(assert (=> b!1309766 m!1199753))

(declare-fun m!1199755 () Bool)

(assert (=> b!1309766 m!1199755))

(declare-fun m!1199757 () Bool)

(assert (=> start!110730 m!1199757))

(declare-fun m!1199759 () Bool)

(assert (=> start!110730 m!1199759))

(declare-fun m!1199761 () Bool)

(assert (=> start!110730 m!1199761))

(assert (=> b!1309767 m!1199747))

(declare-fun m!1199763 () Bool)

(assert (=> b!1309769 m!1199763))

(assert (=> b!1309769 m!1199763))

(declare-fun m!1199765 () Bool)

(assert (=> b!1309769 m!1199765))

(declare-fun m!1199767 () Bool)

(assert (=> b!1309769 m!1199767))

(declare-fun m!1199769 () Bool)

(assert (=> b!1309776 m!1199769))

(declare-fun m!1199771 () Bool)

(assert (=> mapNonEmpty!54517 m!1199771))

(check-sat (not start!110730) tp_is_empty!35259 b_and!47747 (not b_next!29529) (not b!1309769) (not b!1309776) (not b!1309777) (not b!1309766) (not b!1309775) (not mapNonEmpty!54517))
(check-sat b_and!47747 (not b_next!29529))
