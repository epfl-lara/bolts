; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133700 () Bool)

(assert start!133700)

(declare-fun mapNonEmpty!59502 () Bool)

(declare-fun mapRes!59502 () Bool)

(declare-fun tp!113338 () Bool)

(declare-fun e!870926 () Bool)

(assert (=> mapNonEmpty!59502 (= mapRes!59502 (and tp!113338 e!870926))))

(declare-datatypes ((V!59875 0))(
  ( (V!59876 (val!19459 Int)) )
))
(declare-datatypes ((ValueCell!18345 0))(
  ( (ValueCellFull!18345 (v!22208 V!59875)) (EmptyCell!18345) )
))
(declare-fun mapValue!59502 () ValueCell!18345)

(declare-fun mapKey!59502 () (_ BitVec 32))

(declare-fun mapRest!59502 () (Array (_ BitVec 32) ValueCell!18345))

(declare-datatypes ((array!104165 0))(
  ( (array!104166 (arr!50270 (Array (_ BitVec 32) ValueCell!18345)) (size!50821 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104165)

(assert (=> mapNonEmpty!59502 (= (arr!50270 _values!487) (store mapRest!59502 mapKey!59502 mapValue!59502))))

(declare-fun b!1562741 () Bool)

(declare-fun e!870923 () Bool)

(assert (=> b!1562741 (= e!870923 false)))

(declare-fun lt!671718 () Bool)

(declare-datatypes ((array!104167 0))(
  ( (array!104168 (arr!50271 (Array (_ BitVec 32) (_ BitVec 64))) (size!50822 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104167)

(declare-datatypes ((List!36658 0))(
  ( (Nil!36655) (Cons!36654 (h!38101 (_ BitVec 64)) (t!51512 List!36658)) )
))
(declare-fun arrayNoDuplicates!0 (array!104167 (_ BitVec 32) List!36658) Bool)

(assert (=> b!1562741 (= lt!671718 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36655))))

(declare-fun b!1562742 () Bool)

(declare-fun e!870924 () Bool)

(declare-fun e!870925 () Bool)

(assert (=> b!1562742 (= e!870924 (and e!870925 mapRes!59502))))

(declare-fun condMapEmpty!59502 () Bool)

(declare-fun mapDefault!59502 () ValueCell!18345)

(assert (=> b!1562742 (= condMapEmpty!59502 (= (arr!50270 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18345)) mapDefault!59502)))))

(declare-fun b!1562743 () Bool)

(declare-fun res!1068495 () Bool)

(assert (=> b!1562743 (=> (not res!1068495) (not e!870923))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1562743 (= res!1068495 (and (= (size!50821 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50822 _keys!637) (size!50821 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562744 () Bool)

(declare-fun res!1068497 () Bool)

(assert (=> b!1562744 (=> (not res!1068497) (not e!870923))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104167 (_ BitVec 32)) Bool)

(assert (=> b!1562744 (= res!1068497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapIsEmpty!59502 () Bool)

(assert (=> mapIsEmpty!59502 mapRes!59502))

(declare-fun res!1068496 () Bool)

(assert (=> start!133700 (=> (not res!1068496) (not e!870923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133700 (= res!1068496 (validMask!0 mask!947))))

(assert (=> start!133700 e!870923))

(assert (=> start!133700 true))

(declare-fun array_inv!38999 (array!104165) Bool)

(assert (=> start!133700 (and (array_inv!38999 _values!487) e!870924)))

(declare-fun array_inv!39000 (array!104167) Bool)

(assert (=> start!133700 (array_inv!39000 _keys!637)))

(declare-fun b!1562745 () Bool)

(declare-fun tp_is_empty!38751 () Bool)

(assert (=> b!1562745 (= e!870926 tp_is_empty!38751)))

(declare-fun b!1562746 () Bool)

(assert (=> b!1562746 (= e!870925 tp_is_empty!38751)))

(assert (= (and start!133700 res!1068496) b!1562743))

(assert (= (and b!1562743 res!1068495) b!1562744))

(assert (= (and b!1562744 res!1068497) b!1562741))

(assert (= (and b!1562742 condMapEmpty!59502) mapIsEmpty!59502))

(assert (= (and b!1562742 (not condMapEmpty!59502)) mapNonEmpty!59502))

(get-info :version)

(assert (= (and mapNonEmpty!59502 ((_ is ValueCellFull!18345) mapValue!59502)) b!1562745))

(assert (= (and b!1562742 ((_ is ValueCellFull!18345) mapDefault!59502)) b!1562746))

(assert (= start!133700 b!1562742))

(declare-fun m!1438495 () Bool)

(assert (=> mapNonEmpty!59502 m!1438495))

(declare-fun m!1438497 () Bool)

(assert (=> b!1562741 m!1438497))

(declare-fun m!1438499 () Bool)

(assert (=> b!1562744 m!1438499))

(declare-fun m!1438501 () Bool)

(assert (=> start!133700 m!1438501))

(declare-fun m!1438503 () Bool)

(assert (=> start!133700 m!1438503))

(declare-fun m!1438505 () Bool)

(assert (=> start!133700 m!1438505))

(check-sat (not start!133700) (not b!1562741) (not mapNonEmpty!59502) (not b!1562744) tp_is_empty!38751)
(check-sat)
