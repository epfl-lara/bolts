; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111078 () Bool)

(assert start!111078)

(declare-fun b_free!29877 () Bool)

(declare-fun b_next!29877 () Bool)

(assert (=> start!111078 (= b_free!29877 (not b_next!29877))))

(declare-fun tp!104954 () Bool)

(declare-fun b_and!48095 () Bool)

(assert (=> start!111078 (= tp!104954 b_and!48095)))

(declare-fun mapIsEmpty!55039 () Bool)

(declare-fun mapRes!55039 () Bool)

(assert (=> mapIsEmpty!55039 mapRes!55039))

(declare-fun b!1314597 () Bool)

(declare-fun e!749915 () Bool)

(assert (=> b!1314597 (= e!749915 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!88147 0))(
  ( (array!88148 (arr!42549 (Array (_ BitVec 32) (_ BitVec 64))) (size!43100 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88147)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-datatypes ((V!52579 0))(
  ( (V!52580 (val!17878 Int)) )
))
(declare-fun minValue!1296 () V!52579)

(declare-fun zeroValue!1296 () V!52579)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun lt!585757 () Bool)

(declare-datatypes ((ValueCell!16905 0))(
  ( (ValueCellFull!16905 (v!20503 V!52579)) (EmptyCell!16905) )
))
(declare-datatypes ((array!88149 0))(
  ( (array!88150 (arr!42550 (Array (_ BitVec 32) ValueCell!16905)) (size!43101 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88149)

(declare-datatypes ((tuple2!23222 0))(
  ( (tuple2!23223 (_1!11621 (_ BitVec 64)) (_2!11621 V!52579)) )
))
(declare-datatypes ((List!30386 0))(
  ( (Nil!30383) (Cons!30382 (h!31591 tuple2!23222) (t!43999 List!30386)) )
))
(declare-datatypes ((ListLongMap!20891 0))(
  ( (ListLongMap!20892 (toList!10461 List!30386)) )
))
(declare-fun contains!8547 (ListLongMap!20891 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5417 (array!88147 array!88149 (_ BitVec 32) (_ BitVec 32) V!52579 V!52579 (_ BitVec 32) Int) ListLongMap!20891)

(assert (=> b!1314597 (= lt!585757 (contains!8547 (getCurrentListMap!5417 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1314598 () Bool)

(declare-fun e!749911 () Bool)

(declare-fun tp_is_empty!35607 () Bool)

(assert (=> b!1314598 (= e!749911 tp_is_empty!35607)))

(declare-fun mapNonEmpty!55039 () Bool)

(declare-fun tp!104953 () Bool)

(assert (=> mapNonEmpty!55039 (= mapRes!55039 (and tp!104953 e!749911))))

(declare-fun mapKey!55039 () (_ BitVec 32))

(declare-fun mapRest!55039 () (Array (_ BitVec 32) ValueCell!16905))

(declare-fun mapValue!55039 () ValueCell!16905)

(assert (=> mapNonEmpty!55039 (= (arr!42550 _values!1354) (store mapRest!55039 mapKey!55039 mapValue!55039))))

(declare-fun b!1314599 () Bool)

(declare-fun res!872815 () Bool)

(assert (=> b!1314599 (=> (not res!872815) (not e!749915))))

(assert (=> b!1314599 (= res!872815 (and (= (size!43101 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43100 _keys!1628) (size!43101 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1314600 () Bool)

(declare-fun e!749912 () Bool)

(assert (=> b!1314600 (= e!749912 tp_is_empty!35607)))

(declare-fun b!1314601 () Bool)

(declare-fun res!872816 () Bool)

(assert (=> b!1314601 (=> (not res!872816) (not e!749915))))

(declare-datatypes ((List!30387 0))(
  ( (Nil!30384) (Cons!30383 (h!31592 (_ BitVec 64)) (t!44000 List!30387)) )
))
(declare-fun arrayNoDuplicates!0 (array!88147 (_ BitVec 32) List!30387) Bool)

(assert (=> b!1314601 (= res!872816 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30384))))

(declare-fun b!1314602 () Bool)

(declare-fun e!749914 () Bool)

(assert (=> b!1314602 (= e!749914 (and e!749912 mapRes!55039))))

(declare-fun condMapEmpty!55039 () Bool)

(declare-fun mapDefault!55039 () ValueCell!16905)

(assert (=> b!1314602 (= condMapEmpty!55039 (= (arr!42550 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16905)) mapDefault!55039)))))

(declare-fun b!1314604 () Bool)

(declare-fun res!872817 () Bool)

(assert (=> b!1314604 (=> (not res!872817) (not e!749915))))

(assert (=> b!1314604 (= res!872817 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43100 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!872819 () Bool)

(assert (=> start!111078 (=> (not res!872819) (not e!749915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111078 (= res!872819 (validMask!0 mask!2040))))

(assert (=> start!111078 e!749915))

(assert (=> start!111078 tp!104954))

(declare-fun array_inv!32113 (array!88147) Bool)

(assert (=> start!111078 (array_inv!32113 _keys!1628)))

(assert (=> start!111078 true))

(assert (=> start!111078 tp_is_empty!35607))

(declare-fun array_inv!32114 (array!88149) Bool)

(assert (=> start!111078 (and (array_inv!32114 _values!1354) e!749914)))

(declare-fun b!1314603 () Bool)

(declare-fun res!872818 () Bool)

(assert (=> b!1314603 (=> (not res!872818) (not e!749915))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88147 (_ BitVec 32)) Bool)

(assert (=> b!1314603 (= res!872818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(assert (= (and start!111078 res!872819) b!1314599))

(assert (= (and b!1314599 res!872815) b!1314603))

(assert (= (and b!1314603 res!872818) b!1314601))

(assert (= (and b!1314601 res!872816) b!1314604))

(assert (= (and b!1314604 res!872817) b!1314597))

(assert (= (and b!1314602 condMapEmpty!55039) mapIsEmpty!55039))

(assert (= (and b!1314602 (not condMapEmpty!55039)) mapNonEmpty!55039))

(get-info :version)

(assert (= (and mapNonEmpty!55039 ((_ is ValueCellFull!16905) mapValue!55039)) b!1314598))

(assert (= (and b!1314602 ((_ is ValueCellFull!16905) mapDefault!55039)) b!1314600))

(assert (= start!111078 b!1314602))

(declare-fun m!1203073 () Bool)

(assert (=> start!111078 m!1203073))

(declare-fun m!1203075 () Bool)

(assert (=> start!111078 m!1203075))

(declare-fun m!1203077 () Bool)

(assert (=> start!111078 m!1203077))

(declare-fun m!1203079 () Bool)

(assert (=> b!1314603 m!1203079))

(declare-fun m!1203081 () Bool)

(assert (=> b!1314601 m!1203081))

(declare-fun m!1203083 () Bool)

(assert (=> b!1314597 m!1203083))

(assert (=> b!1314597 m!1203083))

(declare-fun m!1203085 () Bool)

(assert (=> b!1314597 m!1203085))

(declare-fun m!1203087 () Bool)

(assert (=> mapNonEmpty!55039 m!1203087))

(check-sat tp_is_empty!35607 (not b_next!29877) (not b!1314603) (not mapNonEmpty!55039) (not start!111078) b_and!48095 (not b!1314597) (not b!1314601))
(check-sat b_and!48095 (not b_next!29877))
