; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82190 () Bool)

(assert start!82190)

(declare-fun b!957467 () Bool)

(declare-fun e!539783 () Bool)

(declare-fun e!539779 () Bool)

(declare-fun mapRes!33691 () Bool)

(assert (=> b!957467 (= e!539783 (and e!539779 mapRes!33691))))

(declare-fun condMapEmpty!33691 () Bool)

(declare-datatypes ((V!33171 0))(
  ( (V!33172 (val!10621 Int)) )
))
(declare-datatypes ((ValueCell!10089 0))(
  ( (ValueCellFull!10089 (v!13178 V!33171)) (EmptyCell!10089) )
))
(declare-datatypes ((array!58401 0))(
  ( (array!58402 (arr!28070 (Array (_ BitVec 32) ValueCell!10089)) (size!28550 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58401)

(declare-fun mapDefault!33691 () ValueCell!10089)

(assert (=> b!957467 (= condMapEmpty!33691 (= (arr!28070 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10089)) mapDefault!33691)))))

(declare-fun b!957468 () Bool)

(declare-fun res!641034 () Bool)

(declare-fun e!539780 () Bool)

(assert (=> b!957468 (=> (not res!641034) (not e!539780))))

(declare-datatypes ((array!58403 0))(
  ( (array!58404 (arr!28071 (Array (_ BitVec 32) (_ BitVec 64))) (size!28551 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58403)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58403 (_ BitVec 32)) Bool)

(assert (=> b!957468 (= res!641034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun mapNonEmpty!33691 () Bool)

(declare-fun tp!64297 () Bool)

(declare-fun e!539781 () Bool)

(assert (=> mapNonEmpty!33691 (= mapRes!33691 (and tp!64297 e!539781))))

(declare-fun mapKey!33691 () (_ BitVec 32))

(declare-fun mapRest!33691 () (Array (_ BitVec 32) ValueCell!10089))

(declare-fun mapValue!33691 () ValueCell!10089)

(assert (=> mapNonEmpty!33691 (= (arr!28070 _values!1386) (store mapRest!33691 mapKey!33691 mapValue!33691))))

(declare-fun b!957470 () Bool)

(assert (=> b!957470 (= e!539780 false)))

(declare-fun lt!430298 () Bool)

(declare-datatypes ((List!19655 0))(
  ( (Nil!19652) (Cons!19651 (h!20813 (_ BitVec 64)) (t!28026 List!19655)) )
))
(declare-fun arrayNoDuplicates!0 (array!58403 (_ BitVec 32) List!19655) Bool)

(assert (=> b!957470 (= lt!430298 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19652))))

(declare-fun b!957471 () Bool)

(declare-fun tp_is_empty!21141 () Bool)

(assert (=> b!957471 (= e!539779 tp_is_empty!21141)))

(declare-fun mapIsEmpty!33691 () Bool)

(assert (=> mapIsEmpty!33691 mapRes!33691))

(declare-fun b!957472 () Bool)

(declare-fun res!641032 () Bool)

(assert (=> b!957472 (=> (not res!641032) (not e!539780))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!957472 (= res!641032 (and (= (size!28550 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28551 _keys!1668) (size!28550 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!957469 () Bool)

(assert (=> b!957469 (= e!539781 tp_is_empty!21141)))

(declare-fun res!641033 () Bool)

(assert (=> start!82190 (=> (not res!641033) (not e!539780))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82190 (= res!641033 (validMask!0 mask!2088))))

(assert (=> start!82190 e!539780))

(assert (=> start!82190 true))

(declare-fun array_inv!21719 (array!58401) Bool)

(assert (=> start!82190 (and (array_inv!21719 _values!1386) e!539783)))

(declare-fun array_inv!21720 (array!58403) Bool)

(assert (=> start!82190 (array_inv!21720 _keys!1668)))

(assert (= (and start!82190 res!641033) b!957472))

(assert (= (and b!957472 res!641032) b!957468))

(assert (= (and b!957468 res!641034) b!957470))

(assert (= (and b!957467 condMapEmpty!33691) mapIsEmpty!33691))

(assert (= (and b!957467 (not condMapEmpty!33691)) mapNonEmpty!33691))

(get-info :version)

(assert (= (and mapNonEmpty!33691 ((_ is ValueCellFull!10089) mapValue!33691)) b!957469))

(assert (= (and b!957467 ((_ is ValueCellFull!10089) mapDefault!33691)) b!957471))

(assert (= start!82190 b!957467))

(declare-fun m!888489 () Bool)

(assert (=> b!957468 m!888489))

(declare-fun m!888491 () Bool)

(assert (=> mapNonEmpty!33691 m!888491))

(declare-fun m!888493 () Bool)

(assert (=> b!957470 m!888493))

(declare-fun m!888495 () Bool)

(assert (=> start!82190 m!888495))

(declare-fun m!888497 () Bool)

(assert (=> start!82190 m!888497))

(declare-fun m!888499 () Bool)

(assert (=> start!82190 m!888499))

(check-sat (not start!82190) (not b!957470) (not mapNonEmpty!33691) (not b!957468) tp_is_empty!21141)
(check-sat)
