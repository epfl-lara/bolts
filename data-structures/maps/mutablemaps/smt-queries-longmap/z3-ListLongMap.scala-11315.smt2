; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131828 () Bool)

(assert start!131828)

(declare-fun res!1058845 () Bool)

(declare-fun e!858649 () Bool)

(assert (=> start!131828 (=> (not res!1058845) (not e!858649))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131828 (= res!1058845 (validMask!0 mask!926))))

(assert (=> start!131828 e!858649))

(assert (=> start!131828 true))

(declare-datatypes ((V!58823 0))(
  ( (V!58824 (val!18970 Int)) )
))
(declare-datatypes ((ValueCell!17982 0))(
  ( (ValueCellFull!17982 (v!21768 V!58823)) (EmptyCell!17982) )
))
(declare-datatypes ((array!102755 0))(
  ( (array!102756 (arr!49575 (Array (_ BitVec 32) ValueCell!17982)) (size!50126 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102755)

(declare-fun e!858651 () Bool)

(declare-fun array_inv!38493 (array!102755) Bool)

(assert (=> start!131828 (and (array_inv!38493 _values!470) e!858651)))

(declare-datatypes ((array!102757 0))(
  ( (array!102758 (arr!49576 (Array (_ BitVec 32) (_ BitVec 64))) (size!50127 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102757)

(declare-fun array_inv!38494 (array!102757) Bool)

(assert (=> start!131828 (array_inv!38494 _keys!618)))

(declare-fun b!1542992 () Bool)

(declare-fun e!858652 () Bool)

(declare-fun tp_is_empty!37785 () Bool)

(assert (=> b!1542992 (= e!858652 tp_is_empty!37785)))

(declare-fun b!1542993 () Bool)

(declare-fun res!1058844 () Bool)

(assert (=> b!1542993 (=> (not res!1058844) (not e!858649))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542993 (= res!1058844 (and (= (size!50126 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50127 _keys!618) (size!50126 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!58381 () Bool)

(declare-fun mapRes!58381 () Bool)

(assert (=> mapIsEmpty!58381 mapRes!58381))

(declare-fun b!1542994 () Bool)

(declare-fun res!1058846 () Bool)

(assert (=> b!1542994 (=> (not res!1058846) (not e!858649))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102757 (_ BitVec 32)) Bool)

(assert (=> b!1542994 (= res!1058846 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542995 () Bool)

(assert (=> b!1542995 (= e!858649 false)))

(declare-fun lt!665852 () Bool)

(declare-datatypes ((List!36055 0))(
  ( (Nil!36052) (Cons!36051 (h!37497 (_ BitVec 64)) (t!50756 List!36055)) )
))
(declare-fun arrayNoDuplicates!0 (array!102757 (_ BitVec 32) List!36055) Bool)

(assert (=> b!1542995 (= lt!665852 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36052))))

(declare-fun mapNonEmpty!58381 () Bool)

(declare-fun tp!110909 () Bool)

(declare-fun e!858648 () Bool)

(assert (=> mapNonEmpty!58381 (= mapRes!58381 (and tp!110909 e!858648))))

(declare-fun mapRest!58381 () (Array (_ BitVec 32) ValueCell!17982))

(declare-fun mapKey!58381 () (_ BitVec 32))

(declare-fun mapValue!58381 () ValueCell!17982)

(assert (=> mapNonEmpty!58381 (= (arr!49575 _values!470) (store mapRest!58381 mapKey!58381 mapValue!58381))))

(declare-fun b!1542996 () Bool)

(assert (=> b!1542996 (= e!858651 (and e!858652 mapRes!58381))))

(declare-fun condMapEmpty!58381 () Bool)

(declare-fun mapDefault!58381 () ValueCell!17982)

(assert (=> b!1542996 (= condMapEmpty!58381 (= (arr!49575 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17982)) mapDefault!58381)))))

(declare-fun b!1542997 () Bool)

(assert (=> b!1542997 (= e!858648 tp_is_empty!37785)))

(assert (= (and start!131828 res!1058845) b!1542993))

(assert (= (and b!1542993 res!1058844) b!1542994))

(assert (= (and b!1542994 res!1058846) b!1542995))

(assert (= (and b!1542996 condMapEmpty!58381) mapIsEmpty!58381))

(assert (= (and b!1542996 (not condMapEmpty!58381)) mapNonEmpty!58381))

(get-info :version)

(assert (= (and mapNonEmpty!58381 ((_ is ValueCellFull!17982) mapValue!58381)) b!1542997))

(assert (= (and b!1542996 ((_ is ValueCellFull!17982) mapDefault!58381)) b!1542992))

(assert (= start!131828 b!1542996))

(declare-fun m!1424455 () Bool)

(assert (=> start!131828 m!1424455))

(declare-fun m!1424457 () Bool)

(assert (=> start!131828 m!1424457))

(declare-fun m!1424459 () Bool)

(assert (=> start!131828 m!1424459))

(declare-fun m!1424461 () Bool)

(assert (=> b!1542994 m!1424461))

(declare-fun m!1424463 () Bool)

(assert (=> b!1542995 m!1424463))

(declare-fun m!1424465 () Bool)

(assert (=> mapNonEmpty!58381 m!1424465))

(check-sat (not b!1542994) (not b!1542995) (not start!131828) tp_is_empty!37785 (not mapNonEmpty!58381))
(check-sat)
