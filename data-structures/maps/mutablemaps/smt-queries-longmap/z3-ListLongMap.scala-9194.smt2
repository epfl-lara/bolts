; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110550 () Bool)

(assert start!110550)

(declare-fun b_free!29349 () Bool)

(declare-fun b_next!29349 () Bool)

(assert (=> start!110550 (= b_free!29349 (not b_next!29349))))

(declare-fun tp!103369 () Bool)

(declare-fun b_and!47567 () Bool)

(assert (=> start!110550 (= tp!103369 b_and!47567)))

(declare-fun b!1307226 () Bool)

(declare-fun e!745954 () Bool)

(assert (=> b!1307226 (= e!745954 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87133 0))(
  ( (array!87134 (arr!42042 (Array (_ BitVec 32) (_ BitVec 64))) (size!42593 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87133)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-datatypes ((V!51875 0))(
  ( (V!51876 (val!17614 Int)) )
))
(declare-fun minValue!1296 () V!51875)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16641 0))(
  ( (ValueCellFull!16641 (v!20239 V!51875)) (EmptyCell!16641) )
))
(declare-datatypes ((array!87135 0))(
  ( (array!87136 (arr!42043 (Array (_ BitVec 32) ValueCell!16641)) (size!42594 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87135)

(declare-fun zeroValue!1296 () V!51875)

(declare-fun lt!584974 () Bool)

(declare-datatypes ((tuple2!22838 0))(
  ( (tuple2!22839 (_1!11429 (_ BitVec 64)) (_2!11429 V!51875)) )
))
(declare-datatypes ((List!30010 0))(
  ( (Nil!30007) (Cons!30006 (h!31215 tuple2!22838) (t!43623 List!30010)) )
))
(declare-datatypes ((ListLongMap!20507 0))(
  ( (ListLongMap!20508 (toList!10269 List!30010)) )
))
(declare-fun contains!8355 (ListLongMap!20507 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5225 (array!87133 array!87135 (_ BitVec 32) (_ BitVec 32) V!51875 V!51875 (_ BitVec 32) Int) ListLongMap!20507)

(assert (=> b!1307226 (= lt!584974 (contains!8355 (getCurrentListMap!5225 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1307227 () Bool)

(declare-fun res!867824 () Bool)

(assert (=> b!1307227 (=> (not res!867824) (not e!745954))))

(assert (=> b!1307227 (= res!867824 (and (= (size!42594 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42593 _keys!1628) (size!42594 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1307228 () Bool)

(declare-fun res!867820 () Bool)

(assert (=> b!1307228 (=> (not res!867820) (not e!745954))))

(declare-datatypes ((List!30011 0))(
  ( (Nil!30008) (Cons!30007 (h!31216 (_ BitVec 64)) (t!43624 List!30011)) )
))
(declare-fun arrayNoDuplicates!0 (array!87133 (_ BitVec 32) List!30011) Bool)

(assert (=> b!1307228 (= res!867820 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30008))))

(declare-fun b!1307229 () Bool)

(declare-fun res!867822 () Bool)

(assert (=> b!1307229 (=> (not res!867822) (not e!745954))))

(assert (=> b!1307229 (= res!867822 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42593 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1307230 () Bool)

(declare-fun res!867821 () Bool)

(assert (=> b!1307230 (=> (not res!867821) (not e!745954))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87133 (_ BitVec 32)) Bool)

(assert (=> b!1307230 (= res!867821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1307231 () Bool)

(declare-fun e!745951 () Bool)

(declare-fun tp_is_empty!35079 () Bool)

(assert (=> b!1307231 (= e!745951 tp_is_empty!35079)))

(declare-fun mapIsEmpty!54247 () Bool)

(declare-fun mapRes!54247 () Bool)

(assert (=> mapIsEmpty!54247 mapRes!54247))

(declare-fun b!1307232 () Bool)

(declare-fun e!745953 () Bool)

(declare-fun e!745952 () Bool)

(assert (=> b!1307232 (= e!745953 (and e!745952 mapRes!54247))))

(declare-fun condMapEmpty!54247 () Bool)

(declare-fun mapDefault!54247 () ValueCell!16641)

(assert (=> b!1307232 (= condMapEmpty!54247 (= (arr!42043 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16641)) mapDefault!54247)))))

(declare-fun mapNonEmpty!54247 () Bool)

(declare-fun tp!103370 () Bool)

(assert (=> mapNonEmpty!54247 (= mapRes!54247 (and tp!103370 e!745951))))

(declare-fun mapRest!54247 () (Array (_ BitVec 32) ValueCell!16641))

(declare-fun mapKey!54247 () (_ BitVec 32))

(declare-fun mapValue!54247 () ValueCell!16641)

(assert (=> mapNonEmpty!54247 (= (arr!42043 _values!1354) (store mapRest!54247 mapKey!54247 mapValue!54247))))

(declare-fun res!867823 () Bool)

(assert (=> start!110550 (=> (not res!867823) (not e!745954))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110550 (= res!867823 (validMask!0 mask!2040))))

(assert (=> start!110550 e!745954))

(assert (=> start!110550 tp!103369))

(declare-fun array_inv!31781 (array!87133) Bool)

(assert (=> start!110550 (array_inv!31781 _keys!1628)))

(assert (=> start!110550 true))

(assert (=> start!110550 tp_is_empty!35079))

(declare-fun array_inv!31782 (array!87135) Bool)

(assert (=> start!110550 (and (array_inv!31782 _values!1354) e!745953)))

(declare-fun b!1307233 () Bool)

(assert (=> b!1307233 (= e!745952 tp_is_empty!35079)))

(assert (= (and start!110550 res!867823) b!1307227))

(assert (= (and b!1307227 res!867824) b!1307230))

(assert (= (and b!1307230 res!867821) b!1307228))

(assert (= (and b!1307228 res!867820) b!1307229))

(assert (= (and b!1307229 res!867822) b!1307226))

(assert (= (and b!1307232 condMapEmpty!54247) mapIsEmpty!54247))

(assert (= (and b!1307232 (not condMapEmpty!54247)) mapNonEmpty!54247))

(get-info :version)

(assert (= (and mapNonEmpty!54247 ((_ is ValueCellFull!16641) mapValue!54247)) b!1307231))

(assert (= (and b!1307232 ((_ is ValueCellFull!16641) mapDefault!54247)) b!1307233))

(assert (= start!110550 b!1307232))

(declare-fun m!1197997 () Bool)

(assert (=> start!110550 m!1197997))

(declare-fun m!1197999 () Bool)

(assert (=> start!110550 m!1197999))

(declare-fun m!1198001 () Bool)

(assert (=> start!110550 m!1198001))

(declare-fun m!1198003 () Bool)

(assert (=> b!1307226 m!1198003))

(assert (=> b!1307226 m!1198003))

(declare-fun m!1198005 () Bool)

(assert (=> b!1307226 m!1198005))

(declare-fun m!1198007 () Bool)

(assert (=> b!1307230 m!1198007))

(declare-fun m!1198009 () Bool)

(assert (=> b!1307228 m!1198009))

(declare-fun m!1198011 () Bool)

(assert (=> mapNonEmpty!54247 m!1198011))

(check-sat b_and!47567 tp_is_empty!35079 (not mapNonEmpty!54247) (not b!1307228) (not b!1307226) (not b_next!29349) (not b!1307230) (not start!110550))
(check-sat b_and!47567 (not b_next!29349))
