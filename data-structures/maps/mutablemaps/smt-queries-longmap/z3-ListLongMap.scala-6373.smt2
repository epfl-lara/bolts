; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82004 () Bool)

(assert start!82004)

(declare-fun mapNonEmpty!33484 () Bool)

(declare-fun mapRes!33484 () Bool)

(declare-fun tp!64063 () Bool)

(declare-fun e!538671 () Bool)

(assert (=> mapNonEmpty!33484 (= mapRes!33484 (and tp!64063 e!538671))))

(declare-datatypes ((V!33003 0))(
  ( (V!33004 (val!10558 Int)) )
))
(declare-datatypes ((ValueCell!10026 0))(
  ( (ValueCellFull!10026 (v!13113 V!33003)) (EmptyCell!10026) )
))
(declare-fun mapRest!33484 () (Array (_ BitVec 32) ValueCell!10026))

(declare-datatypes ((array!58151 0))(
  ( (array!58152 (arr!27951 (Array (_ BitVec 32) ValueCell!10026)) (size!28431 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58151)

(declare-fun mapKey!33484 () (_ BitVec 32))

(declare-fun mapValue!33484 () ValueCell!10026)

(assert (=> mapNonEmpty!33484 (= (arr!27951 _values!1197) (store mapRest!33484 mapKey!33484 mapValue!33484))))

(declare-fun mapIsEmpty!33484 () Bool)

(assert (=> mapIsEmpty!33484 mapRes!33484))

(declare-fun b!956017 () Bool)

(declare-fun res!640277 () Bool)

(declare-fun e!538667 () Bool)

(assert (=> b!956017 (=> (not res!640277) (not e!538667))))

(declare-datatypes ((array!58153 0))(
  ( (array!58154 (arr!27952 (Array (_ BitVec 32) (_ BitVec 64))) (size!28432 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58153)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58153 (_ BitVec 32)) Bool)

(assert (=> b!956017 (= res!640277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!956018 () Bool)

(declare-fun tp_is_empty!21015 () Bool)

(assert (=> b!956018 (= e!538671 tp_is_empty!21015)))

(declare-fun b!956019 () Bool)

(declare-fun e!538670 () Bool)

(assert (=> b!956019 (= e!538670 tp_is_empty!21015)))

(declare-fun res!640279 () Bool)

(assert (=> start!82004 (=> (not res!640279) (not e!538667))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82004 (= res!640279 (validMask!0 mask!1823))))

(assert (=> start!82004 e!538667))

(assert (=> start!82004 true))

(declare-fun e!538669 () Bool)

(declare-fun array_inv!21635 (array!58151) Bool)

(assert (=> start!82004 (and (array_inv!21635 _values!1197) e!538669)))

(declare-fun array_inv!21636 (array!58153) Bool)

(assert (=> start!82004 (array_inv!21636 _keys!1441)))

(declare-fun b!956020 () Bool)

(declare-fun res!640278 () Bool)

(assert (=> b!956020 (=> (not res!640278) (not e!538667))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!956020 (= res!640278 (and (= (size!28431 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28432 _keys!1441) (size!28431 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!956021 () Bool)

(assert (=> b!956021 (= e!538667 false)))

(declare-fun lt!430045 () Bool)

(declare-datatypes ((List!19615 0))(
  ( (Nil!19612) (Cons!19611 (h!20773 (_ BitVec 64)) (t!27984 List!19615)) )
))
(declare-fun arrayNoDuplicates!0 (array!58153 (_ BitVec 32) List!19615) Bool)

(assert (=> b!956021 (= lt!430045 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19612))))

(declare-fun b!956022 () Bool)

(assert (=> b!956022 (= e!538669 (and e!538670 mapRes!33484))))

(declare-fun condMapEmpty!33484 () Bool)

(declare-fun mapDefault!33484 () ValueCell!10026)

(assert (=> b!956022 (= condMapEmpty!33484 (= (arr!27951 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!10026)) mapDefault!33484)))))

(assert (= (and start!82004 res!640279) b!956020))

(assert (= (and b!956020 res!640278) b!956017))

(assert (= (and b!956017 res!640277) b!956021))

(assert (= (and b!956022 condMapEmpty!33484) mapIsEmpty!33484))

(assert (= (and b!956022 (not condMapEmpty!33484)) mapNonEmpty!33484))

(get-info :version)

(assert (= (and mapNonEmpty!33484 ((_ is ValueCellFull!10026) mapValue!33484)) b!956018))

(assert (= (and b!956022 ((_ is ValueCellFull!10026) mapDefault!33484)) b!956019))

(assert (= start!82004 b!956022))

(declare-fun m!887493 () Bool)

(assert (=> mapNonEmpty!33484 m!887493))

(declare-fun m!887495 () Bool)

(assert (=> b!956017 m!887495))

(declare-fun m!887497 () Bool)

(assert (=> start!82004 m!887497))

(declare-fun m!887499 () Bool)

(assert (=> start!82004 m!887499))

(declare-fun m!887501 () Bool)

(assert (=> start!82004 m!887501))

(declare-fun m!887503 () Bool)

(assert (=> b!956021 m!887503))

(check-sat (not start!82004) (not b!956017) tp_is_empty!21015 (not b!956021) (not mapNonEmpty!33484))
(check-sat)
