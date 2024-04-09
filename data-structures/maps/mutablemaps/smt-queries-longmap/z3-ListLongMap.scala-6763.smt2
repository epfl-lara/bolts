; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84904 () Bool)

(assert start!84904)

(declare-fun mapIsEmpty!37104 () Bool)

(declare-fun mapRes!37104 () Bool)

(assert (=> mapIsEmpty!37104 mapRes!37104))

(declare-fun b!991713 () Bool)

(declare-fun e!559404 () Bool)

(assert (=> b!991713 (= e!559404 false)))

(declare-fun lt!439974 () Bool)

(declare-datatypes ((array!62665 0))(
  ( (array!62666 (arr!30173 (Array (_ BitVec 32) (_ BitVec 64))) (size!30653 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62665)

(declare-datatypes ((List!20980 0))(
  ( (Nil!20977) (Cons!20976 (h!22138 (_ BitVec 64)) (t!29971 List!20980)) )
))
(declare-fun arrayNoDuplicates!0 (array!62665 (_ BitVec 32) List!20980) Bool)

(assert (=> b!991713 (= lt!439974 (arrayNoDuplicates!0 _keys!1945 #b00000000000000000000000000000000 Nil!20977))))

(declare-fun b!991714 () Bool)

(declare-fun res!662978 () Bool)

(assert (=> b!991714 (=> (not res!662978) (not e!559404))))

(declare-fun extraKeys!1472 () (_ BitVec 32))

(declare-datatypes ((V!36123 0))(
  ( (V!36124 (val!11728 Int)) )
))
(declare-datatypes ((ValueCell!11196 0))(
  ( (ValueCellFull!11196 (v!14305 V!36123)) (EmptyCell!11196) )
))
(declare-datatypes ((array!62667 0))(
  ( (array!62668 (arr!30174 (Array (_ BitVec 32) ValueCell!11196)) (size!30654 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62667)

(declare-fun mask!2471 () (_ BitVec 32))

(assert (=> b!991714 (= res!662978 (and (= (size!30654 _values!1551) (bvadd #b00000000000000000000000000000001 mask!2471)) (= (size!30653 _keys!1945) (size!30654 _values!1551)) (bvsge mask!2471 #b00000000000000000000000000000000) (bvsge extraKeys!1472 #b00000000000000000000000000000000) (bvsle extraKeys!1472 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!37104 () Bool)

(declare-fun tp!70176 () Bool)

(declare-fun e!559403 () Bool)

(assert (=> mapNonEmpty!37104 (= mapRes!37104 (and tp!70176 e!559403))))

(declare-fun mapRest!37104 () (Array (_ BitVec 32) ValueCell!11196))

(declare-fun mapKey!37104 () (_ BitVec 32))

(declare-fun mapValue!37104 () ValueCell!11196)

(assert (=> mapNonEmpty!37104 (= (arr!30174 _values!1551) (store mapRest!37104 mapKey!37104 mapValue!37104))))

(declare-fun b!991715 () Bool)

(declare-fun res!662980 () Bool)

(assert (=> b!991715 (=> (not res!662980) (not e!559404))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62665 (_ BitVec 32)) Bool)

(assert (=> b!991715 (= res!662980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1945 mask!2471))))

(declare-fun res!662979 () Bool)

(assert (=> start!84904 (=> (not res!662979) (not e!559404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84904 (= res!662979 (validMask!0 mask!2471))))

(assert (=> start!84904 e!559404))

(assert (=> start!84904 true))

(declare-fun e!559405 () Bool)

(declare-fun array_inv!23167 (array!62667) Bool)

(assert (=> start!84904 (and (array_inv!23167 _values!1551) e!559405)))

(declare-fun array_inv!23168 (array!62665) Bool)

(assert (=> start!84904 (array_inv!23168 _keys!1945)))

(declare-fun b!991716 () Bool)

(declare-fun tp_is_empty!23355 () Bool)

(assert (=> b!991716 (= e!559403 tp_is_empty!23355)))

(declare-fun b!991717 () Bool)

(declare-fun e!559406 () Bool)

(assert (=> b!991717 (= e!559406 tp_is_empty!23355)))

(declare-fun b!991718 () Bool)

(assert (=> b!991718 (= e!559405 (and e!559406 mapRes!37104))))

(declare-fun condMapEmpty!37104 () Bool)

(declare-fun mapDefault!37104 () ValueCell!11196)

(assert (=> b!991718 (= condMapEmpty!37104 (= (arr!30174 _values!1551) ((as const (Array (_ BitVec 32) ValueCell!11196)) mapDefault!37104)))))

(assert (= (and start!84904 res!662979) b!991714))

(assert (= (and b!991714 res!662978) b!991715))

(assert (= (and b!991715 res!662980) b!991713))

(assert (= (and b!991718 condMapEmpty!37104) mapIsEmpty!37104))

(assert (= (and b!991718 (not condMapEmpty!37104)) mapNonEmpty!37104))

(get-info :version)

(assert (= (and mapNonEmpty!37104 ((_ is ValueCellFull!11196) mapValue!37104)) b!991716))

(assert (= (and b!991718 ((_ is ValueCellFull!11196) mapDefault!37104)) b!991717))

(assert (= start!84904 b!991718))

(declare-fun m!919609 () Bool)

(assert (=> b!991713 m!919609))

(declare-fun m!919611 () Bool)

(assert (=> mapNonEmpty!37104 m!919611))

(declare-fun m!919613 () Bool)

(assert (=> b!991715 m!919613))

(declare-fun m!919615 () Bool)

(assert (=> start!84904 m!919615))

(declare-fun m!919617 () Bool)

(assert (=> start!84904 m!919617))

(declare-fun m!919619 () Bool)

(assert (=> start!84904 m!919619))

(check-sat (not b!991713) (not mapNonEmpty!37104) (not start!84904) tp_is_empty!23355 (not b!991715))
(check-sat)
