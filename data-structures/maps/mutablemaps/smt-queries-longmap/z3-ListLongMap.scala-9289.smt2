; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111120 () Bool)

(assert start!111120)

(declare-fun b_free!29919 () Bool)

(declare-fun b_next!29919 () Bool)

(assert (=> start!111120 (= b_free!29919 (not b_next!29919))))

(declare-fun tp!105080 () Bool)

(declare-fun b_and!48137 () Bool)

(assert (=> start!111120 (= tp!105080 b_and!48137)))

(declare-fun b!1315121 () Bool)

(declare-fun res!873158 () Bool)

(declare-fun e!750226 () Bool)

(assert (=> b!1315121 (=> (not res!873158) (not e!750226))))

(declare-datatypes ((array!88227 0))(
  ( (array!88228 (arr!42589 (Array (_ BitVec 32) (_ BitVec 64))) (size!43140 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88227)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1315121 (= res!873158 (not (= (select (arr!42589 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1315122 () Bool)

(declare-fun res!873151 () Bool)

(assert (=> b!1315122 (=> (not res!873151) (not e!750226))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88227 (_ BitVec 32)) Bool)

(assert (=> b!1315122 (= res!873151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun res!873157 () Bool)

(assert (=> start!111120 (=> (not res!873157) (not e!750226))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111120 (= res!873157 (validMask!0 mask!2040))))

(assert (=> start!111120 e!750226))

(assert (=> start!111120 tp!105080))

(declare-fun array_inv!32141 (array!88227) Bool)

(assert (=> start!111120 (array_inv!32141 _keys!1628)))

(assert (=> start!111120 true))

(declare-fun tp_is_empty!35649 () Bool)

(assert (=> start!111120 tp_is_empty!35649))

(declare-datatypes ((V!52635 0))(
  ( (V!52636 (val!17899 Int)) )
))
(declare-datatypes ((ValueCell!16926 0))(
  ( (ValueCellFull!16926 (v!20524 V!52635)) (EmptyCell!16926) )
))
(declare-datatypes ((array!88229 0))(
  ( (array!88230 (arr!42590 (Array (_ BitVec 32) ValueCell!16926)) (size!43141 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88229)

(declare-fun e!750227 () Bool)

(declare-fun array_inv!32142 (array!88229) Bool)

(assert (=> start!111120 (and (array_inv!32142 _values!1354) e!750227)))

(declare-fun mapIsEmpty!55102 () Bool)

(declare-fun mapRes!55102 () Bool)

(assert (=> mapIsEmpty!55102 mapRes!55102))

(declare-fun b!1315123 () Bool)

(declare-fun res!873152 () Bool)

(assert (=> b!1315123 (=> (not res!873152) (not e!750226))))

(assert (=> b!1315123 (= res!873152 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43140 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1315124 () Bool)

(declare-fun res!873154 () Bool)

(assert (=> b!1315124 (=> (not res!873154) (not e!750226))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1315124 (= res!873154 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1315125 () Bool)

(declare-fun res!873150 () Bool)

(assert (=> b!1315125 (=> (not res!873150) (not e!750226))))

(assert (=> b!1315125 (= res!873150 (and (= (size!43141 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43140 _keys!1628) (size!43141 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1315126 () Bool)

(declare-fun res!873155 () Bool)

(assert (=> b!1315126 (=> (not res!873155) (not e!750226))))

(declare-datatypes ((List!30411 0))(
  ( (Nil!30408) (Cons!30407 (h!31616 (_ BitVec 64)) (t!44024 List!30411)) )
))
(declare-fun arrayNoDuplicates!0 (array!88227 (_ BitVec 32) List!30411) Bool)

(assert (=> b!1315126 (= res!873155 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30408))))

(declare-fun mapNonEmpty!55102 () Bool)

(declare-fun tp!105079 () Bool)

(declare-fun e!750230 () Bool)

(assert (=> mapNonEmpty!55102 (= mapRes!55102 (and tp!105079 e!750230))))

(declare-fun mapKey!55102 () (_ BitVec 32))

(declare-fun mapValue!55102 () ValueCell!16926)

(declare-fun mapRest!55102 () (Array (_ BitVec 32) ValueCell!16926))

(assert (=> mapNonEmpty!55102 (= (arr!42590 _values!1354) (store mapRest!55102 mapKey!55102 mapValue!55102))))

(declare-fun b!1315127 () Bool)

(assert (=> b!1315127 (= e!750226 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52635)

(declare-fun zeroValue!1296 () V!52635)

(declare-datatypes ((tuple2!23244 0))(
  ( (tuple2!23245 (_1!11632 (_ BitVec 64)) (_2!11632 V!52635)) )
))
(declare-datatypes ((List!30412 0))(
  ( (Nil!30409) (Cons!30408 (h!31617 tuple2!23244) (t!44025 List!30412)) )
))
(declare-datatypes ((ListLongMap!20913 0))(
  ( (ListLongMap!20914 (toList!10472 List!30412)) )
))
(declare-fun contains!8558 (ListLongMap!20913 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5428 (array!88227 array!88229 (_ BitVec 32) (_ BitVec 32) V!52635 V!52635 (_ BitVec 32) Int) ListLongMap!20913)

(assert (=> b!1315127 (contains!8558 (getCurrentListMap!5428 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43334 0))(
  ( (Unit!43335) )
))
(declare-fun lt!585820 () Unit!43334)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!22 (array!88227 array!88229 (_ BitVec 32) (_ BitVec 32) V!52635 V!52635 (_ BitVec 64) (_ BitVec 32) Int) Unit!43334)

(assert (=> b!1315127 (= lt!585820 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!22 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1315128 () Bool)

(declare-fun e!750229 () Bool)

(assert (=> b!1315128 (= e!750229 tp_is_empty!35649)))

(declare-fun b!1315129 () Bool)

(declare-fun res!873153 () Bool)

(assert (=> b!1315129 (=> (not res!873153) (not e!750226))))

(assert (=> b!1315129 (= res!873153 (contains!8558 (getCurrentListMap!5428 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1315130 () Bool)

(declare-fun res!873156 () Bool)

(assert (=> b!1315130 (=> (not res!873156) (not e!750226))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1315130 (= res!873156 (validKeyInArray!0 (select (arr!42589 _keys!1628) from!2020)))))

(declare-fun b!1315131 () Bool)

(assert (=> b!1315131 (= e!750227 (and e!750229 mapRes!55102))))

(declare-fun condMapEmpty!55102 () Bool)

(declare-fun mapDefault!55102 () ValueCell!16926)

(assert (=> b!1315131 (= condMapEmpty!55102 (= (arr!42590 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16926)) mapDefault!55102)))))

(declare-fun b!1315132 () Bool)

(assert (=> b!1315132 (= e!750230 tp_is_empty!35649)))

(assert (= (and start!111120 res!873157) b!1315125))

(assert (= (and b!1315125 res!873150) b!1315122))

(assert (= (and b!1315122 res!873151) b!1315126))

(assert (= (and b!1315126 res!873155) b!1315123))

(assert (= (and b!1315123 res!873152) b!1315129))

(assert (= (and b!1315129 res!873153) b!1315121))

(assert (= (and b!1315121 res!873158) b!1315130))

(assert (= (and b!1315130 res!873156) b!1315124))

(assert (= (and b!1315124 res!873154) b!1315127))

(assert (= (and b!1315131 condMapEmpty!55102) mapIsEmpty!55102))

(assert (= (and b!1315131 (not condMapEmpty!55102)) mapNonEmpty!55102))

(get-info :version)

(assert (= (and mapNonEmpty!55102 ((_ is ValueCellFull!16926) mapValue!55102)) b!1315132))

(assert (= (and b!1315131 ((_ is ValueCellFull!16926) mapDefault!55102)) b!1315128))

(assert (= start!111120 b!1315131))

(declare-fun m!1203419 () Bool)

(assert (=> b!1315127 m!1203419))

(assert (=> b!1315127 m!1203419))

(declare-fun m!1203421 () Bool)

(assert (=> b!1315127 m!1203421))

(declare-fun m!1203423 () Bool)

(assert (=> b!1315127 m!1203423))

(declare-fun m!1203425 () Bool)

(assert (=> b!1315126 m!1203425))

(declare-fun m!1203427 () Bool)

(assert (=> b!1315129 m!1203427))

(assert (=> b!1315129 m!1203427))

(declare-fun m!1203429 () Bool)

(assert (=> b!1315129 m!1203429))

(declare-fun m!1203431 () Bool)

(assert (=> b!1315121 m!1203431))

(declare-fun m!1203433 () Bool)

(assert (=> start!111120 m!1203433))

(declare-fun m!1203435 () Bool)

(assert (=> start!111120 m!1203435))

(declare-fun m!1203437 () Bool)

(assert (=> start!111120 m!1203437))

(declare-fun m!1203439 () Bool)

(assert (=> b!1315122 m!1203439))

(declare-fun m!1203441 () Bool)

(assert (=> mapNonEmpty!55102 m!1203441))

(assert (=> b!1315130 m!1203431))

(assert (=> b!1315130 m!1203431))

(declare-fun m!1203443 () Bool)

(assert (=> b!1315130 m!1203443))

(check-sat tp_is_empty!35649 b_and!48137 (not mapNonEmpty!55102) (not b!1315127) (not b!1315126) (not b!1315122) (not b!1315129) (not start!111120) (not b_next!29919) (not b!1315130))
(check-sat b_and!48137 (not b_next!29919))
