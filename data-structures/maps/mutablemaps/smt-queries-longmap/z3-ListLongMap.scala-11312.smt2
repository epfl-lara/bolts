; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131810 () Bool)

(assert start!131810)

(declare-fun b!1542830 () Bool)

(declare-fun res!1058764 () Bool)

(declare-fun e!858515 () Bool)

(assert (=> b!1542830 (=> (not res!1058764) (not e!858515))))

(declare-datatypes ((array!102721 0))(
  ( (array!102722 (arr!49558 (Array (_ BitVec 32) (_ BitVec 64))) (size!50109 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102721)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102721 (_ BitVec 32)) Bool)

(assert (=> b!1542830 (= res!1058764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun res!1058765 () Bool)

(assert (=> start!131810 (=> (not res!1058765) (not e!858515))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131810 (= res!1058765 (validMask!0 mask!926))))

(assert (=> start!131810 e!858515))

(assert (=> start!131810 true))

(declare-datatypes ((V!58799 0))(
  ( (V!58800 (val!18961 Int)) )
))
(declare-datatypes ((ValueCell!17973 0))(
  ( (ValueCellFull!17973 (v!21759 V!58799)) (EmptyCell!17973) )
))
(declare-datatypes ((array!102723 0))(
  ( (array!102724 (arr!49559 (Array (_ BitVec 32) ValueCell!17973)) (size!50110 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102723)

(declare-fun e!858516 () Bool)

(declare-fun array_inv!38477 (array!102723) Bool)

(assert (=> start!131810 (and (array_inv!38477 _values!470) e!858516)))

(declare-fun array_inv!38478 (array!102721) Bool)

(assert (=> start!131810 (array_inv!38478 _keys!618)))

(declare-fun mapNonEmpty!58354 () Bool)

(declare-fun mapRes!58354 () Bool)

(declare-fun tp!110882 () Bool)

(declare-fun e!858517 () Bool)

(assert (=> mapNonEmpty!58354 (= mapRes!58354 (and tp!110882 e!858517))))

(declare-fun mapRest!58354 () (Array (_ BitVec 32) ValueCell!17973))

(declare-fun mapValue!58354 () ValueCell!17973)

(declare-fun mapKey!58354 () (_ BitVec 32))

(assert (=> mapNonEmpty!58354 (= (arr!49559 _values!470) (store mapRest!58354 mapKey!58354 mapValue!58354))))

(declare-fun b!1542831 () Bool)

(declare-fun tp_is_empty!37767 () Bool)

(assert (=> b!1542831 (= e!858517 tp_is_empty!37767)))

(declare-fun b!1542832 () Bool)

(declare-fun res!1058763 () Bool)

(assert (=> b!1542832 (=> (not res!1058763) (not e!858515))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542832 (= res!1058763 (and (= (size!50110 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50109 _keys!618) (size!50110 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1542833 () Bool)

(declare-fun e!858514 () Bool)

(assert (=> b!1542833 (= e!858514 tp_is_empty!37767)))

(declare-fun b!1542834 () Bool)

(assert (=> b!1542834 (= e!858516 (and e!858514 mapRes!58354))))

(declare-fun condMapEmpty!58354 () Bool)

(declare-fun mapDefault!58354 () ValueCell!17973)

(assert (=> b!1542834 (= condMapEmpty!58354 (= (arr!49559 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17973)) mapDefault!58354)))))

(declare-fun b!1542835 () Bool)

(assert (=> b!1542835 (= e!858515 false)))

(declare-fun lt!665825 () Bool)

(declare-datatypes ((List!36047 0))(
  ( (Nil!36044) (Cons!36043 (h!37489 (_ BitVec 64)) (t!50748 List!36047)) )
))
(declare-fun arrayNoDuplicates!0 (array!102721 (_ BitVec 32) List!36047) Bool)

(assert (=> b!1542835 (= lt!665825 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36044))))

(declare-fun mapIsEmpty!58354 () Bool)

(assert (=> mapIsEmpty!58354 mapRes!58354))

(assert (= (and start!131810 res!1058765) b!1542832))

(assert (= (and b!1542832 res!1058763) b!1542830))

(assert (= (and b!1542830 res!1058764) b!1542835))

(assert (= (and b!1542834 condMapEmpty!58354) mapIsEmpty!58354))

(assert (= (and b!1542834 (not condMapEmpty!58354)) mapNonEmpty!58354))

(get-info :version)

(assert (= (and mapNonEmpty!58354 ((_ is ValueCellFull!17973) mapValue!58354)) b!1542831))

(assert (= (and b!1542834 ((_ is ValueCellFull!17973) mapDefault!58354)) b!1542833))

(assert (= start!131810 b!1542834))

(declare-fun m!1424347 () Bool)

(assert (=> b!1542830 m!1424347))

(declare-fun m!1424349 () Bool)

(assert (=> start!131810 m!1424349))

(declare-fun m!1424351 () Bool)

(assert (=> start!131810 m!1424351))

(declare-fun m!1424353 () Bool)

(assert (=> start!131810 m!1424353))

(declare-fun m!1424355 () Bool)

(assert (=> mapNonEmpty!58354 m!1424355))

(declare-fun m!1424357 () Bool)

(assert (=> b!1542835 m!1424357))

(check-sat (not b!1542835) (not start!131810) tp_is_empty!37767 (not b!1542830) (not mapNonEmpty!58354))
(check-sat)
