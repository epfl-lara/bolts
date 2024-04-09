; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110754 () Bool)

(assert start!110754)

(declare-fun b_free!29553 () Bool)

(declare-fun b_next!29553 () Bool)

(assert (=> start!110754 (= b_free!29553 (not b_next!29553))))

(declare-fun tp!103982 () Bool)

(declare-fun b_and!47771 () Bool)

(assert (=> start!110754 (= tp!103982 b_and!47771)))

(declare-fun mapNonEmpty!54553 () Bool)

(declare-fun mapRes!54553 () Bool)

(declare-fun tp!103981 () Bool)

(declare-fun e!747485 () Bool)

(assert (=> mapNonEmpty!54553 (= mapRes!54553 (and tp!103981 e!747485))))

(declare-datatypes ((V!52147 0))(
  ( (V!52148 (val!17716 Int)) )
))
(declare-datatypes ((ValueCell!16743 0))(
  ( (ValueCellFull!16743 (v!20341 V!52147)) (EmptyCell!16743) )
))
(declare-fun mapRest!54553 () (Array (_ BitVec 32) ValueCell!16743))

(declare-datatypes ((array!87521 0))(
  ( (array!87522 (arr!42236 (Array (_ BitVec 32) ValueCell!16743)) (size!42787 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87521)

(declare-fun mapKey!54553 () (_ BitVec 32))

(declare-fun mapValue!54553 () ValueCell!16743)

(assert (=> mapNonEmpty!54553 (= (arr!42236 _values!1354) (store mapRest!54553 mapKey!54553 mapValue!54553))))

(declare-fun b!1310198 () Bool)

(declare-fun e!747484 () Bool)

(declare-fun tp_is_empty!35283 () Bool)

(assert (=> b!1310198 (= e!747484 tp_is_empty!35283)))

(declare-fun b!1310199 () Bool)

(declare-fun res!869876 () Bool)

(declare-fun e!747481 () Bool)

(assert (=> b!1310199 (=> (not res!869876) (not e!747481))))

(declare-datatypes ((array!87523 0))(
  ( (array!87524 (arr!42237 (Array (_ BitVec 32) (_ BitVec 64))) (size!42788 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87523)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1310199 (= res!869876 (not (= (select (arr!42237 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1310200 () Bool)

(assert (=> b!1310200 (= e!747485 tp_is_empty!35283)))

(declare-fun res!869882 () Bool)

(assert (=> start!110754 (=> (not res!869882) (not e!747481))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110754 (= res!869882 (validMask!0 mask!2040))))

(assert (=> start!110754 e!747481))

(assert (=> start!110754 tp!103982))

(declare-fun array_inv!31909 (array!87523) Bool)

(assert (=> start!110754 (array_inv!31909 _keys!1628)))

(assert (=> start!110754 true))

(assert (=> start!110754 tp_is_empty!35283))

(declare-fun e!747483 () Bool)

(declare-fun array_inv!31910 (array!87521) Bool)

(assert (=> start!110754 (and (array_inv!31910 _values!1354) e!747483)))

(declare-fun b!1310201 () Bool)

(declare-fun res!869878 () Bool)

(assert (=> b!1310201 (=> (not res!869878) (not e!747481))))

(assert (=> b!1310201 (= res!869878 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42788 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1310202 () Bool)

(declare-fun res!869879 () Bool)

(assert (=> b!1310202 (=> (not res!869879) (not e!747481))))

(declare-datatypes ((List!30155 0))(
  ( (Nil!30152) (Cons!30151 (h!31360 (_ BitVec 64)) (t!43768 List!30155)) )
))
(declare-fun arrayNoDuplicates!0 (array!87523 (_ BitVec 32) List!30155) Bool)

(assert (=> b!1310202 (= res!869879 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30152))))

(declare-fun mapIsEmpty!54553 () Bool)

(assert (=> mapIsEmpty!54553 mapRes!54553))

(declare-fun b!1310203 () Bool)

(declare-fun res!869881 () Bool)

(assert (=> b!1310203 (=> (not res!869881) (not e!747481))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87523 (_ BitVec 32)) Bool)

(assert (=> b!1310203 (= res!869881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1310204 () Bool)

(assert (=> b!1310204 (= e!747481 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52147)

(declare-fun zeroValue!1296 () V!52147)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!22990 0))(
  ( (tuple2!22991 (_1!11505 (_ BitVec 64)) (_2!11505 V!52147)) )
))
(declare-datatypes ((List!30156 0))(
  ( (Nil!30153) (Cons!30152 (h!31361 tuple2!22990) (t!43769 List!30156)) )
))
(declare-datatypes ((ListLongMap!20659 0))(
  ( (ListLongMap!20660 (toList!10345 List!30156)) )
))
(declare-fun contains!8431 (ListLongMap!20659 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5301 (array!87523 array!87521 (_ BitVec 32) (_ BitVec 32) V!52147 V!52147 (_ BitVec 32) Int) ListLongMap!20659)

(assert (=> b!1310204 (contains!8431 (getCurrentListMap!5301 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43278 0))(
  ( (Unit!43279) )
))
(declare-fun lt!585280 () Unit!43278)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!13 (array!87523 array!87521 (_ BitVec 32) (_ BitVec 32) V!52147 V!52147 (_ BitVec 64) (_ BitVec 32) Int) Unit!43278)

(assert (=> b!1310204 (= lt!585280 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!13 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1310205 () Bool)

(assert (=> b!1310205 (= e!747483 (and e!747484 mapRes!54553))))

(declare-fun condMapEmpty!54553 () Bool)

(declare-fun mapDefault!54553 () ValueCell!16743)

(assert (=> b!1310205 (= condMapEmpty!54553 (= (arr!42236 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16743)) mapDefault!54553)))))

(declare-fun b!1310206 () Bool)

(declare-fun res!869875 () Bool)

(assert (=> b!1310206 (=> (not res!869875) (not e!747481))))

(assert (=> b!1310206 (= res!869875 (contains!8431 (getCurrentListMap!5301 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1310207 () Bool)

(declare-fun res!869877 () Bool)

(assert (=> b!1310207 (=> (not res!869877) (not e!747481))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1310207 (= res!869877 (validKeyInArray!0 (select (arr!42237 _keys!1628) from!2020)))))

(declare-fun b!1310208 () Bool)

(declare-fun res!869874 () Bool)

(assert (=> b!1310208 (=> (not res!869874) (not e!747481))))

(assert (=> b!1310208 (= res!869874 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1310209 () Bool)

(declare-fun res!869880 () Bool)

(assert (=> b!1310209 (=> (not res!869880) (not e!747481))))

(assert (=> b!1310209 (= res!869880 (and (= (size!42787 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42788 _keys!1628) (size!42787 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(assert (= (and start!110754 res!869882) b!1310209))

(assert (= (and b!1310209 res!869880) b!1310203))

(assert (= (and b!1310203 res!869881) b!1310202))

(assert (= (and b!1310202 res!869879) b!1310201))

(assert (= (and b!1310201 res!869878) b!1310206))

(assert (= (and b!1310206 res!869875) b!1310199))

(assert (= (and b!1310199 res!869876) b!1310207))

(assert (= (and b!1310207 res!869877) b!1310208))

(assert (= (and b!1310208 res!869874) b!1310204))

(assert (= (and b!1310205 condMapEmpty!54553) mapIsEmpty!54553))

(assert (= (and b!1310205 (not condMapEmpty!54553)) mapNonEmpty!54553))

(get-info :version)

(assert (= (and mapNonEmpty!54553 ((_ is ValueCellFull!16743) mapValue!54553)) b!1310200))

(assert (= (and b!1310205 ((_ is ValueCellFull!16743) mapDefault!54553)) b!1310198))

(assert (= start!110754 b!1310205))

(declare-fun m!1200059 () Bool)

(assert (=> b!1310206 m!1200059))

(assert (=> b!1310206 m!1200059))

(declare-fun m!1200061 () Bool)

(assert (=> b!1310206 m!1200061))

(declare-fun m!1200063 () Bool)

(assert (=> b!1310203 m!1200063))

(declare-fun m!1200065 () Bool)

(assert (=> b!1310199 m!1200065))

(declare-fun m!1200067 () Bool)

(assert (=> start!110754 m!1200067))

(declare-fun m!1200069 () Bool)

(assert (=> start!110754 m!1200069))

(declare-fun m!1200071 () Bool)

(assert (=> start!110754 m!1200071))

(declare-fun m!1200073 () Bool)

(assert (=> mapNonEmpty!54553 m!1200073))

(declare-fun m!1200075 () Bool)

(assert (=> b!1310204 m!1200075))

(assert (=> b!1310204 m!1200075))

(declare-fun m!1200077 () Bool)

(assert (=> b!1310204 m!1200077))

(declare-fun m!1200079 () Bool)

(assert (=> b!1310204 m!1200079))

(assert (=> b!1310207 m!1200065))

(assert (=> b!1310207 m!1200065))

(declare-fun m!1200081 () Bool)

(assert (=> b!1310207 m!1200081))

(declare-fun m!1200083 () Bool)

(assert (=> b!1310202 m!1200083))

(check-sat (not b!1310206) (not b_next!29553) (not mapNonEmpty!54553) (not b!1310204) tp_is_empty!35283 (not b!1310207) (not b!1310202) b_and!47771 (not start!110754) (not b!1310203))
(check-sat b_and!47771 (not b_next!29553))
