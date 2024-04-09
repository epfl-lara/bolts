; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82034 () Bool)

(assert start!82034)

(declare-fun b!956287 () Bool)

(declare-fun e!538892 () Bool)

(declare-fun e!538896 () Bool)

(declare-fun mapRes!33529 () Bool)

(assert (=> b!956287 (= e!538892 (and e!538896 mapRes!33529))))

(declare-fun condMapEmpty!33529 () Bool)

(declare-datatypes ((V!33043 0))(
  ( (V!33044 (val!10573 Int)) )
))
(declare-datatypes ((ValueCell!10041 0))(
  ( (ValueCellFull!10041 (v!13128 V!33043)) (EmptyCell!10041) )
))
(declare-datatypes ((array!58209 0))(
  ( (array!58210 (arr!27980 (Array (_ BitVec 32) ValueCell!10041)) (size!28460 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58209)

(declare-fun mapDefault!33529 () ValueCell!10041)

(assert (=> b!956287 (= condMapEmpty!33529 (= (arr!27980 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!10041)) mapDefault!33529)))))

(declare-fun b!956288 () Bool)

(declare-fun res!640412 () Bool)

(declare-fun e!538894 () Bool)

(assert (=> b!956288 (=> (not res!640412) (not e!538894))))

(declare-datatypes ((array!58211 0))(
  ( (array!58212 (arr!27981 (Array (_ BitVec 32) (_ BitVec 64))) (size!28461 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58211)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58211 (_ BitVec 32)) Bool)

(assert (=> b!956288 (= res!640412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!956289 () Bool)

(declare-fun tp_is_empty!21045 () Bool)

(assert (=> b!956289 (= e!538896 tp_is_empty!21045)))

(declare-fun mapNonEmpty!33529 () Bool)

(declare-fun tp!64108 () Bool)

(declare-fun e!538893 () Bool)

(assert (=> mapNonEmpty!33529 (= mapRes!33529 (and tp!64108 e!538893))))

(declare-fun mapRest!33529 () (Array (_ BitVec 32) ValueCell!10041))

(declare-fun mapKey!33529 () (_ BitVec 32))

(declare-fun mapValue!33529 () ValueCell!10041)

(assert (=> mapNonEmpty!33529 (= (arr!27980 _values!1197) (store mapRest!33529 mapKey!33529 mapValue!33529))))

(declare-fun b!956290 () Bool)

(assert (=> b!956290 (= e!538893 tp_is_empty!21045)))

(declare-fun b!956291 () Bool)

(declare-fun res!640413 () Bool)

(assert (=> b!956291 (=> (not res!640413) (not e!538894))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!956291 (= res!640413 (and (= (size!28460 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28461 _keys!1441) (size!28460 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!956292 () Bool)

(assert (=> b!956292 (= e!538894 false)))

(declare-fun lt!430090 () Bool)

(declare-datatypes ((List!19625 0))(
  ( (Nil!19622) (Cons!19621 (h!20783 (_ BitVec 64)) (t!27994 List!19625)) )
))
(declare-fun arrayNoDuplicates!0 (array!58211 (_ BitVec 32) List!19625) Bool)

(assert (=> b!956292 (= lt!430090 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19622))))

(declare-fun mapIsEmpty!33529 () Bool)

(assert (=> mapIsEmpty!33529 mapRes!33529))

(declare-fun res!640414 () Bool)

(assert (=> start!82034 (=> (not res!640414) (not e!538894))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82034 (= res!640414 (validMask!0 mask!1823))))

(assert (=> start!82034 e!538894))

(assert (=> start!82034 true))

(declare-fun array_inv!21651 (array!58209) Bool)

(assert (=> start!82034 (and (array_inv!21651 _values!1197) e!538892)))

(declare-fun array_inv!21652 (array!58211) Bool)

(assert (=> start!82034 (array_inv!21652 _keys!1441)))

(assert (= (and start!82034 res!640414) b!956291))

(assert (= (and b!956291 res!640413) b!956288))

(assert (= (and b!956288 res!640412) b!956292))

(assert (= (and b!956287 condMapEmpty!33529) mapIsEmpty!33529))

(assert (= (and b!956287 (not condMapEmpty!33529)) mapNonEmpty!33529))

(get-info :version)

(assert (= (and mapNonEmpty!33529 ((_ is ValueCellFull!10041) mapValue!33529)) b!956290))

(assert (= (and b!956287 ((_ is ValueCellFull!10041) mapDefault!33529)) b!956289))

(assert (= start!82034 b!956287))

(declare-fun m!887673 () Bool)

(assert (=> b!956288 m!887673))

(declare-fun m!887675 () Bool)

(assert (=> mapNonEmpty!33529 m!887675))

(declare-fun m!887677 () Bool)

(assert (=> b!956292 m!887677))

(declare-fun m!887679 () Bool)

(assert (=> start!82034 m!887679))

(declare-fun m!887681 () Bool)

(assert (=> start!82034 m!887681))

(declare-fun m!887683 () Bool)

(assert (=> start!82034 m!887683))

(check-sat (not start!82034) (not mapNonEmpty!33529) (not b!956292) (not b!956288) tp_is_empty!21045)
(check-sat)
