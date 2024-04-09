; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133706 () Bool)

(assert start!133706)

(declare-fun mapIsEmpty!59511 () Bool)

(declare-fun mapRes!59511 () Bool)

(assert (=> mapIsEmpty!59511 mapRes!59511))

(declare-fun b!1562795 () Bool)

(declare-fun res!1068524 () Bool)

(declare-fun e!870967 () Bool)

(assert (=> b!1562795 (=> (not res!1068524) (not e!870967))))

(declare-datatypes ((array!104177 0))(
  ( (array!104178 (arr!50276 (Array (_ BitVec 32) (_ BitVec 64))) (size!50827 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104177)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104177 (_ BitVec 32)) Bool)

(assert (=> b!1562795 (= res!1068524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1562796 () Bool)

(declare-fun e!870968 () Bool)

(declare-fun tp_is_empty!38757 () Bool)

(assert (=> b!1562796 (= e!870968 tp_is_empty!38757)))

(declare-fun res!1068523 () Bool)

(assert (=> start!133706 (=> (not res!1068523) (not e!870967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133706 (= res!1068523 (validMask!0 mask!947))))

(assert (=> start!133706 e!870967))

(assert (=> start!133706 true))

(declare-datatypes ((V!59883 0))(
  ( (V!59884 (val!19462 Int)) )
))
(declare-datatypes ((ValueCell!18348 0))(
  ( (ValueCellFull!18348 (v!22211 V!59883)) (EmptyCell!18348) )
))
(declare-datatypes ((array!104179 0))(
  ( (array!104180 (arr!50277 (Array (_ BitVec 32) ValueCell!18348)) (size!50828 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104179)

(declare-fun e!870969 () Bool)

(declare-fun array_inv!39001 (array!104179) Bool)

(assert (=> start!133706 (and (array_inv!39001 _values!487) e!870969)))

(declare-fun array_inv!39002 (array!104177) Bool)

(assert (=> start!133706 (array_inv!39002 _keys!637)))

(declare-fun b!1562797 () Bool)

(declare-fun e!870970 () Bool)

(assert (=> b!1562797 (= e!870970 tp_is_empty!38757)))

(declare-fun mapNonEmpty!59511 () Bool)

(declare-fun tp!113347 () Bool)

(assert (=> mapNonEmpty!59511 (= mapRes!59511 (and tp!113347 e!870968))))

(declare-fun mapRest!59511 () (Array (_ BitVec 32) ValueCell!18348))

(declare-fun mapKey!59511 () (_ BitVec 32))

(declare-fun mapValue!59511 () ValueCell!18348)

(assert (=> mapNonEmpty!59511 (= (arr!50277 _values!487) (store mapRest!59511 mapKey!59511 mapValue!59511))))

(declare-fun b!1562798 () Bool)

(assert (=> b!1562798 (= e!870967 false)))

(declare-fun lt!671727 () Bool)

(declare-datatypes ((List!36660 0))(
  ( (Nil!36657) (Cons!36656 (h!38103 (_ BitVec 64)) (t!51514 List!36660)) )
))
(declare-fun arrayNoDuplicates!0 (array!104177 (_ BitVec 32) List!36660) Bool)

(assert (=> b!1562798 (= lt!671727 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36657))))

(declare-fun b!1562799 () Bool)

(declare-fun res!1068522 () Bool)

(assert (=> b!1562799 (=> (not res!1068522) (not e!870967))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1562799 (= res!1068522 (and (= (size!50828 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50827 _keys!637) (size!50828 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562800 () Bool)

(assert (=> b!1562800 (= e!870969 (and e!870970 mapRes!59511))))

(declare-fun condMapEmpty!59511 () Bool)

(declare-fun mapDefault!59511 () ValueCell!18348)

(assert (=> b!1562800 (= condMapEmpty!59511 (= (arr!50277 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18348)) mapDefault!59511)))))

(assert (= (and start!133706 res!1068523) b!1562799))

(assert (= (and b!1562799 res!1068522) b!1562795))

(assert (= (and b!1562795 res!1068524) b!1562798))

(assert (= (and b!1562800 condMapEmpty!59511) mapIsEmpty!59511))

(assert (= (and b!1562800 (not condMapEmpty!59511)) mapNonEmpty!59511))

(get-info :version)

(assert (= (and mapNonEmpty!59511 ((_ is ValueCellFull!18348) mapValue!59511)) b!1562796))

(assert (= (and b!1562800 ((_ is ValueCellFull!18348) mapDefault!59511)) b!1562797))

(assert (= start!133706 b!1562800))

(declare-fun m!1438531 () Bool)

(assert (=> b!1562795 m!1438531))

(declare-fun m!1438533 () Bool)

(assert (=> start!133706 m!1438533))

(declare-fun m!1438535 () Bool)

(assert (=> start!133706 m!1438535))

(declare-fun m!1438537 () Bool)

(assert (=> start!133706 m!1438537))

(declare-fun m!1438539 () Bool)

(assert (=> mapNonEmpty!59511 m!1438539))

(declare-fun m!1438541 () Bool)

(assert (=> b!1562798 m!1438541))

(check-sat tp_is_empty!38757 (not mapNonEmpty!59511) (not b!1562798) (not b!1562795) (not start!133706))
(check-sat)
