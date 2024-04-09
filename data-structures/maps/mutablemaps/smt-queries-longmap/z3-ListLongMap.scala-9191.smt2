; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110532 () Bool)

(assert start!110532)

(declare-fun b_free!29331 () Bool)

(declare-fun b_next!29331 () Bool)

(assert (=> start!110532 (= b_free!29331 (not b_next!29331))))

(declare-fun tp!103315 () Bool)

(declare-fun b_and!47549 () Bool)

(assert (=> start!110532 (= tp!103315 b_and!47549)))

(declare-fun b!1307010 () Bool)

(declare-fun res!867689 () Bool)

(declare-fun e!745818 () Bool)

(assert (=> b!1307010 (=> (not res!867689) (not e!745818))))

(declare-datatypes ((array!87103 0))(
  ( (array!87104 (arr!42027 (Array (_ BitVec 32) (_ BitVec 64))) (size!42578 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87103)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!51851 0))(
  ( (V!51852 (val!17605 Int)) )
))
(declare-datatypes ((ValueCell!16632 0))(
  ( (ValueCellFull!16632 (v!20230 V!51851)) (EmptyCell!16632) )
))
(declare-datatypes ((array!87105 0))(
  ( (array!87106 (arr!42028 (Array (_ BitVec 32) ValueCell!16632)) (size!42579 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87105)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1307010 (= res!867689 (and (= (size!42579 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42578 _keys!1628) (size!42579 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!54220 () Bool)

(declare-fun mapRes!54220 () Bool)

(assert (=> mapIsEmpty!54220 mapRes!54220))

(declare-fun b!1307011 () Bool)

(declare-fun res!867685 () Bool)

(assert (=> b!1307011 (=> (not res!867685) (not e!745818))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87103 (_ BitVec 32)) Bool)

(assert (=> b!1307011 (= res!867685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1307012 () Bool)

(declare-fun res!867687 () Bool)

(assert (=> b!1307012 (=> (not res!867687) (not e!745818))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1307012 (= res!867687 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42578 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1307013 () Bool)

(declare-fun e!745817 () Bool)

(declare-fun tp_is_empty!35061 () Bool)

(assert (=> b!1307013 (= e!745817 tp_is_empty!35061)))

(declare-fun b!1307014 () Bool)

(assert (=> b!1307014 (= e!745818 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!584947 () Bool)

(declare-fun minValue!1296 () V!51851)

(declare-fun zeroValue!1296 () V!51851)

(declare-datatypes ((tuple2!22828 0))(
  ( (tuple2!22829 (_1!11424 (_ BitVec 64)) (_2!11424 V!51851)) )
))
(declare-datatypes ((List!29999 0))(
  ( (Nil!29996) (Cons!29995 (h!31204 tuple2!22828) (t!43612 List!29999)) )
))
(declare-datatypes ((ListLongMap!20497 0))(
  ( (ListLongMap!20498 (toList!10264 List!29999)) )
))
(declare-fun contains!8350 (ListLongMap!20497 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5220 (array!87103 array!87105 (_ BitVec 32) (_ BitVec 32) V!51851 V!51851 (_ BitVec 32) Int) ListLongMap!20497)

(assert (=> b!1307014 (= lt!584947 (contains!8350 (getCurrentListMap!5220 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun res!867688 () Bool)

(assert (=> start!110532 (=> (not res!867688) (not e!745818))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110532 (= res!867688 (validMask!0 mask!2040))))

(assert (=> start!110532 e!745818))

(assert (=> start!110532 tp!103315))

(declare-fun array_inv!31771 (array!87103) Bool)

(assert (=> start!110532 (array_inv!31771 _keys!1628)))

(assert (=> start!110532 true))

(assert (=> start!110532 tp_is_empty!35061))

(declare-fun e!745820 () Bool)

(declare-fun array_inv!31772 (array!87105) Bool)

(assert (=> start!110532 (and (array_inv!31772 _values!1354) e!745820)))

(declare-fun b!1307015 () Bool)

(declare-fun e!745816 () Bool)

(assert (=> b!1307015 (= e!745820 (and e!745816 mapRes!54220))))

(declare-fun condMapEmpty!54220 () Bool)

(declare-fun mapDefault!54220 () ValueCell!16632)

(assert (=> b!1307015 (= condMapEmpty!54220 (= (arr!42028 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16632)) mapDefault!54220)))))

(declare-fun b!1307016 () Bool)

(declare-fun res!867686 () Bool)

(assert (=> b!1307016 (=> (not res!867686) (not e!745818))))

(declare-datatypes ((List!30000 0))(
  ( (Nil!29997) (Cons!29996 (h!31205 (_ BitVec 64)) (t!43613 List!30000)) )
))
(declare-fun arrayNoDuplicates!0 (array!87103 (_ BitVec 32) List!30000) Bool)

(assert (=> b!1307016 (= res!867686 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29997))))

(declare-fun mapNonEmpty!54220 () Bool)

(declare-fun tp!103316 () Bool)

(assert (=> mapNonEmpty!54220 (= mapRes!54220 (and tp!103316 e!745817))))

(declare-fun mapValue!54220 () ValueCell!16632)

(declare-fun mapRest!54220 () (Array (_ BitVec 32) ValueCell!16632))

(declare-fun mapKey!54220 () (_ BitVec 32))

(assert (=> mapNonEmpty!54220 (= (arr!42028 _values!1354) (store mapRest!54220 mapKey!54220 mapValue!54220))))

(declare-fun b!1307017 () Bool)

(assert (=> b!1307017 (= e!745816 tp_is_empty!35061)))

(assert (= (and start!110532 res!867688) b!1307010))

(assert (= (and b!1307010 res!867689) b!1307011))

(assert (= (and b!1307011 res!867685) b!1307016))

(assert (= (and b!1307016 res!867686) b!1307012))

(assert (= (and b!1307012 res!867687) b!1307014))

(assert (= (and b!1307015 condMapEmpty!54220) mapIsEmpty!54220))

(assert (= (and b!1307015 (not condMapEmpty!54220)) mapNonEmpty!54220))

(get-info :version)

(assert (= (and mapNonEmpty!54220 ((_ is ValueCellFull!16632) mapValue!54220)) b!1307013))

(assert (= (and b!1307015 ((_ is ValueCellFull!16632) mapDefault!54220)) b!1307017))

(assert (= start!110532 b!1307015))

(declare-fun m!1197853 () Bool)

(assert (=> b!1307011 m!1197853))

(declare-fun m!1197855 () Bool)

(assert (=> start!110532 m!1197855))

(declare-fun m!1197857 () Bool)

(assert (=> start!110532 m!1197857))

(declare-fun m!1197859 () Bool)

(assert (=> start!110532 m!1197859))

(declare-fun m!1197861 () Bool)

(assert (=> b!1307016 m!1197861))

(declare-fun m!1197863 () Bool)

(assert (=> mapNonEmpty!54220 m!1197863))

(declare-fun m!1197865 () Bool)

(assert (=> b!1307014 m!1197865))

(assert (=> b!1307014 m!1197865))

(declare-fun m!1197867 () Bool)

(assert (=> b!1307014 m!1197867))

(check-sat (not b!1307014) b_and!47549 (not mapNonEmpty!54220) (not b!1307011) tp_is_empty!35061 (not b_next!29331) (not start!110532) (not b!1307016))
(check-sat b_and!47549 (not b_next!29331))
