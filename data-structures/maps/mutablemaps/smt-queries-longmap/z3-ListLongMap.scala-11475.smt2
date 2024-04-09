; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133682 () Bool)

(assert start!133682)

(declare-fun b!1562579 () Bool)

(declare-fun e!870788 () Bool)

(declare-fun tp_is_empty!38733 () Bool)

(assert (=> b!1562579 (= e!870788 tp_is_empty!38733)))

(declare-fun mapNonEmpty!59475 () Bool)

(declare-fun mapRes!59475 () Bool)

(declare-fun tp!113311 () Bool)

(declare-fun e!870790 () Bool)

(assert (=> mapNonEmpty!59475 (= mapRes!59475 (and tp!113311 e!870790))))

(declare-datatypes ((V!59851 0))(
  ( (V!59852 (val!19450 Int)) )
))
(declare-datatypes ((ValueCell!18336 0))(
  ( (ValueCellFull!18336 (v!22199 V!59851)) (EmptyCell!18336) )
))
(declare-fun mapValue!59475 () ValueCell!18336)

(declare-fun mapRest!59475 () (Array (_ BitVec 32) ValueCell!18336))

(declare-fun mapKey!59475 () (_ BitVec 32))

(declare-datatypes ((array!104131 0))(
  ( (array!104132 (arr!50253 (Array (_ BitVec 32) ValueCell!18336)) (size!50804 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104131)

(assert (=> mapNonEmpty!59475 (= (arr!50253 _values!487) (store mapRest!59475 mapKey!59475 mapValue!59475))))

(declare-fun res!1068415 () Bool)

(declare-fun e!870791 () Bool)

(assert (=> start!133682 (=> (not res!1068415) (not e!870791))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133682 (= res!1068415 (validMask!0 mask!947))))

(assert (=> start!133682 e!870791))

(assert (=> start!133682 true))

(declare-fun e!870789 () Bool)

(declare-fun array_inv!38987 (array!104131) Bool)

(assert (=> start!133682 (and (array_inv!38987 _values!487) e!870789)))

(declare-datatypes ((array!104133 0))(
  ( (array!104134 (arr!50254 (Array (_ BitVec 32) (_ BitVec 64))) (size!50805 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104133)

(declare-fun array_inv!38988 (array!104133) Bool)

(assert (=> start!133682 (array_inv!38988 _keys!637)))

(declare-fun mapIsEmpty!59475 () Bool)

(assert (=> mapIsEmpty!59475 mapRes!59475))

(declare-fun b!1562580 () Bool)

(assert (=> b!1562580 (= e!870789 (and e!870788 mapRes!59475))))

(declare-fun condMapEmpty!59475 () Bool)

(declare-fun mapDefault!59475 () ValueCell!18336)

(assert (=> b!1562580 (= condMapEmpty!59475 (= (arr!50253 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18336)) mapDefault!59475)))))

(declare-fun b!1562581 () Bool)

(assert (=> b!1562581 (= e!870791 false)))

(declare-fun lt!671691 () Bool)

(declare-datatypes ((List!36653 0))(
  ( (Nil!36650) (Cons!36649 (h!38096 (_ BitVec 64)) (t!51507 List!36653)) )
))
(declare-fun arrayNoDuplicates!0 (array!104133 (_ BitVec 32) List!36653) Bool)

(assert (=> b!1562581 (= lt!671691 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36650))))

(declare-fun b!1562582 () Bool)

(assert (=> b!1562582 (= e!870790 tp_is_empty!38733)))

(declare-fun b!1562583 () Bool)

(declare-fun res!1068416 () Bool)

(assert (=> b!1562583 (=> (not res!1068416) (not e!870791))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104133 (_ BitVec 32)) Bool)

(assert (=> b!1562583 (= res!1068416 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1562584 () Bool)

(declare-fun res!1068414 () Bool)

(assert (=> b!1562584 (=> (not res!1068414) (not e!870791))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1562584 (= res!1068414 (and (= (size!50804 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50805 _keys!637) (size!50804 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(assert (= (and start!133682 res!1068415) b!1562584))

(assert (= (and b!1562584 res!1068414) b!1562583))

(assert (= (and b!1562583 res!1068416) b!1562581))

(assert (= (and b!1562580 condMapEmpty!59475) mapIsEmpty!59475))

(assert (= (and b!1562580 (not condMapEmpty!59475)) mapNonEmpty!59475))

(get-info :version)

(assert (= (and mapNonEmpty!59475 ((_ is ValueCellFull!18336) mapValue!59475)) b!1562582))

(assert (= (and b!1562580 ((_ is ValueCellFull!18336) mapDefault!59475)) b!1562579))

(assert (= start!133682 b!1562580))

(declare-fun m!1438387 () Bool)

(assert (=> mapNonEmpty!59475 m!1438387))

(declare-fun m!1438389 () Bool)

(assert (=> start!133682 m!1438389))

(declare-fun m!1438391 () Bool)

(assert (=> start!133682 m!1438391))

(declare-fun m!1438393 () Bool)

(assert (=> start!133682 m!1438393))

(declare-fun m!1438395 () Bool)

(assert (=> b!1562581 m!1438395))

(declare-fun m!1438397 () Bool)

(assert (=> b!1562583 m!1438397))

(check-sat (not b!1562583) (not b!1562581) tp_is_empty!38733 (not start!133682) (not mapNonEmpty!59475))
(check-sat)
