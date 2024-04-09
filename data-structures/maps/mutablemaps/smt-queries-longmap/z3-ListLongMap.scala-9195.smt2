; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110556 () Bool)

(assert start!110556)

(declare-fun b_free!29355 () Bool)

(declare-fun b_next!29355 () Bool)

(assert (=> start!110556 (= b_free!29355 (not b_next!29355))))

(declare-fun tp!103387 () Bool)

(declare-fun b_and!47573 () Bool)

(assert (=> start!110556 (= tp!103387 b_and!47573)))

(declare-fun mapNonEmpty!54256 () Bool)

(declare-fun mapRes!54256 () Bool)

(declare-fun tp!103388 () Bool)

(declare-fun e!745997 () Bool)

(assert (=> mapNonEmpty!54256 (= mapRes!54256 (and tp!103388 e!745997))))

(declare-datatypes ((V!51883 0))(
  ( (V!51884 (val!17617 Int)) )
))
(declare-datatypes ((ValueCell!16644 0))(
  ( (ValueCellFull!16644 (v!20242 V!51883)) (EmptyCell!16644) )
))
(declare-fun mapValue!54256 () ValueCell!16644)

(declare-datatypes ((array!87145 0))(
  ( (array!87146 (arr!42048 (Array (_ BitVec 32) ValueCell!16644)) (size!42599 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87145)

(declare-fun mapRest!54256 () (Array (_ BitVec 32) ValueCell!16644))

(declare-fun mapKey!54256 () (_ BitVec 32))

(assert (=> mapNonEmpty!54256 (= (arr!42048 _values!1354) (store mapRest!54256 mapKey!54256 mapValue!54256))))

(declare-fun b!1307298 () Bool)

(declare-fun res!867866 () Bool)

(declare-fun e!745999 () Bool)

(assert (=> b!1307298 (=> (not res!867866) (not e!745999))))

(declare-datatypes ((array!87147 0))(
  ( (array!87148 (arr!42049 (Array (_ BitVec 32) (_ BitVec 64))) (size!42600 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87147)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87147 (_ BitVec 32)) Bool)

(assert (=> b!1307298 (= res!867866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1307299 () Bool)

(declare-fun res!867869 () Bool)

(assert (=> b!1307299 (=> (not res!867869) (not e!745999))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1307299 (= res!867869 (and (= (size!42599 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42600 _keys!1628) (size!42599 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!867865 () Bool)

(assert (=> start!110556 (=> (not res!867865) (not e!745999))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110556 (= res!867865 (validMask!0 mask!2040))))

(assert (=> start!110556 e!745999))

(assert (=> start!110556 tp!103387))

(declare-fun array_inv!31785 (array!87147) Bool)

(assert (=> start!110556 (array_inv!31785 _keys!1628)))

(assert (=> start!110556 true))

(declare-fun tp_is_empty!35085 () Bool)

(assert (=> start!110556 tp_is_empty!35085))

(declare-fun e!745998 () Bool)

(declare-fun array_inv!31786 (array!87145) Bool)

(assert (=> start!110556 (and (array_inv!31786 _values!1354) e!745998)))

(declare-fun mapIsEmpty!54256 () Bool)

(assert (=> mapIsEmpty!54256 mapRes!54256))

(declare-fun b!1307300 () Bool)

(declare-fun res!867867 () Bool)

(assert (=> b!1307300 (=> (not res!867867) (not e!745999))))

(declare-datatypes ((List!30014 0))(
  ( (Nil!30011) (Cons!30010 (h!31219 (_ BitVec 64)) (t!43627 List!30014)) )
))
(declare-fun arrayNoDuplicates!0 (array!87147 (_ BitVec 32) List!30014) Bool)

(assert (=> b!1307300 (= res!867867 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30011))))

(declare-fun b!1307301 () Bool)

(declare-fun res!867868 () Bool)

(assert (=> b!1307301 (=> (not res!867868) (not e!745999))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1307301 (= res!867868 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42600 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1307302 () Bool)

(declare-fun e!746000 () Bool)

(assert (=> b!1307302 (= e!745998 (and e!746000 mapRes!54256))))

(declare-fun condMapEmpty!54256 () Bool)

(declare-fun mapDefault!54256 () ValueCell!16644)

(assert (=> b!1307302 (= condMapEmpty!54256 (= (arr!42048 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16644)) mapDefault!54256)))))

(declare-fun b!1307303 () Bool)

(assert (=> b!1307303 (= e!746000 tp_is_empty!35085)))

(declare-fun b!1307304 () Bool)

(assert (=> b!1307304 (= e!745997 tp_is_empty!35085)))

(declare-fun b!1307305 () Bool)

(assert (=> b!1307305 (= e!745999 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!584983 () Bool)

(declare-fun minValue!1296 () V!51883)

(declare-fun zeroValue!1296 () V!51883)

(declare-datatypes ((tuple2!22842 0))(
  ( (tuple2!22843 (_1!11431 (_ BitVec 64)) (_2!11431 V!51883)) )
))
(declare-datatypes ((List!30015 0))(
  ( (Nil!30012) (Cons!30011 (h!31220 tuple2!22842) (t!43628 List!30015)) )
))
(declare-datatypes ((ListLongMap!20511 0))(
  ( (ListLongMap!20512 (toList!10271 List!30015)) )
))
(declare-fun contains!8357 (ListLongMap!20511 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5227 (array!87147 array!87145 (_ BitVec 32) (_ BitVec 32) V!51883 V!51883 (_ BitVec 32) Int) ListLongMap!20511)

(assert (=> b!1307305 (= lt!584983 (contains!8357 (getCurrentListMap!5227 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(assert (= (and start!110556 res!867865) b!1307299))

(assert (= (and b!1307299 res!867869) b!1307298))

(assert (= (and b!1307298 res!867866) b!1307300))

(assert (= (and b!1307300 res!867867) b!1307301))

(assert (= (and b!1307301 res!867868) b!1307305))

(assert (= (and b!1307302 condMapEmpty!54256) mapIsEmpty!54256))

(assert (= (and b!1307302 (not condMapEmpty!54256)) mapNonEmpty!54256))

(get-info :version)

(assert (= (and mapNonEmpty!54256 ((_ is ValueCellFull!16644) mapValue!54256)) b!1307304))

(assert (= (and b!1307302 ((_ is ValueCellFull!16644) mapDefault!54256)) b!1307303))

(assert (= start!110556 b!1307302))

(declare-fun m!1198045 () Bool)

(assert (=> b!1307300 m!1198045))

(declare-fun m!1198047 () Bool)

(assert (=> b!1307305 m!1198047))

(assert (=> b!1307305 m!1198047))

(declare-fun m!1198049 () Bool)

(assert (=> b!1307305 m!1198049))

(declare-fun m!1198051 () Bool)

(assert (=> mapNonEmpty!54256 m!1198051))

(declare-fun m!1198053 () Bool)

(assert (=> b!1307298 m!1198053))

(declare-fun m!1198055 () Bool)

(assert (=> start!110556 m!1198055))

(declare-fun m!1198057 () Bool)

(assert (=> start!110556 m!1198057))

(declare-fun m!1198059 () Bool)

(assert (=> start!110556 m!1198059))

(check-sat b_and!47573 (not b!1307305) (not b!1307298) (not b!1307300) (not start!110556) (not b_next!29355) (not mapNonEmpty!54256) tp_is_empty!35085)
(check-sat b_and!47573 (not b_next!29355))
