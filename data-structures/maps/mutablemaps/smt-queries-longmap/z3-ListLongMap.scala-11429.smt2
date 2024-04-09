; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133362 () Bool)

(assert start!133362)

(declare-fun b!1559017 () Bool)

(declare-fun e!868617 () Bool)

(declare-fun tp_is_empty!38457 () Bool)

(assert (=> b!1559017 (= e!868617 tp_is_empty!38457)))

(declare-fun mapNonEmpty!59046 () Bool)

(declare-fun mapRes!59046 () Bool)

(declare-fun tp!112702 () Bool)

(assert (=> mapNonEmpty!59046 (= mapRes!59046 (and tp!112702 e!868617))))

(declare-datatypes ((V!59483 0))(
  ( (V!59484 (val!19312 Int)) )
))
(declare-datatypes ((ValueCell!18198 0))(
  ( (ValueCellFull!18198 (v!22060 V!59483)) (EmptyCell!18198) )
))
(declare-fun mapValue!59046 () ValueCell!18198)

(declare-fun mapKey!59046 () (_ BitVec 32))

(declare-datatypes ((array!103593 0))(
  ( (array!103594 (arr!49989 (Array (_ BitVec 32) ValueCell!18198)) (size!50540 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103593)

(declare-fun mapRest!59046 () (Array (_ BitVec 32) ValueCell!18198))

(assert (=> mapNonEmpty!59046 (= (arr!49989 _values!487) (store mapRest!59046 mapKey!59046 mapValue!59046))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun e!868616 () Bool)

(declare-fun b!1559018 () Bool)

(declare-datatypes ((array!103595 0))(
  ( (array!103596 (arr!49990 (Array (_ BitVec 32) (_ BitVec 64))) (size!50541 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103595)

(assert (=> b!1559018 (= e!868616 (and (= (size!50540 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50541 _keys!637) (size!50540 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011) (not (= (size!50541 _keys!637) (bvadd #b00000000000000000000000000000001 mask!947)))))))

(declare-fun b!1559019 () Bool)

(declare-fun e!868615 () Bool)

(assert (=> b!1559019 (= e!868615 tp_is_empty!38457)))

(declare-fun mapIsEmpty!59046 () Bool)

(assert (=> mapIsEmpty!59046 mapRes!59046))

(declare-fun res!1066272 () Bool)

(assert (=> start!133362 (=> (not res!1066272) (not e!868616))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133362 (= res!1066272 (validMask!0 mask!947))))

(assert (=> start!133362 e!868616))

(assert (=> start!133362 true))

(declare-fun e!868614 () Bool)

(declare-fun array_inv!38783 (array!103593) Bool)

(assert (=> start!133362 (and (array_inv!38783 _values!487) e!868614)))

(declare-fun array_inv!38784 (array!103595) Bool)

(assert (=> start!133362 (array_inv!38784 _keys!637)))

(declare-fun b!1559020 () Bool)

(assert (=> b!1559020 (= e!868614 (and e!868615 mapRes!59046))))

(declare-fun condMapEmpty!59046 () Bool)

(declare-fun mapDefault!59046 () ValueCell!18198)

(assert (=> b!1559020 (= condMapEmpty!59046 (= (arr!49989 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18198)) mapDefault!59046)))))

(assert (= (and start!133362 res!1066272) b!1559018))

(assert (= (and b!1559020 condMapEmpty!59046) mapIsEmpty!59046))

(assert (= (and b!1559020 (not condMapEmpty!59046)) mapNonEmpty!59046))

(get-info :version)

(assert (= (and mapNonEmpty!59046 ((_ is ValueCellFull!18198) mapValue!59046)) b!1559017))

(assert (= (and b!1559020 ((_ is ValueCellFull!18198) mapDefault!59046)) b!1559019))

(assert (= start!133362 b!1559020))

(declare-fun m!1435427 () Bool)

(assert (=> mapNonEmpty!59046 m!1435427))

(declare-fun m!1435429 () Bool)

(assert (=> start!133362 m!1435429))

(declare-fun m!1435431 () Bool)

(assert (=> start!133362 m!1435431))

(declare-fun m!1435433 () Bool)

(assert (=> start!133362 m!1435433))

(check-sat (not start!133362) (not mapNonEmpty!59046) tp_is_empty!38457)
(check-sat)
