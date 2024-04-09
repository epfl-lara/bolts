; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131702 () Bool)

(assert start!131702)

(declare-fun res!1058278 () Bool)

(declare-fun e!857706 () Bool)

(assert (=> start!131702 (=> (not res!1058278) (not e!857706))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131702 (= res!1058278 (validMask!0 mask!926))))

(assert (=> start!131702 e!857706))

(assert (=> start!131702 true))

(declare-datatypes ((V!58655 0))(
  ( (V!58656 (val!18907 Int)) )
))
(declare-datatypes ((ValueCell!17919 0))(
  ( (ValueCellFull!17919 (v!21705 V!58655)) (EmptyCell!17919) )
))
(declare-datatypes ((array!102519 0))(
  ( (array!102520 (arr!49457 (Array (_ BitVec 32) ValueCell!17919)) (size!50008 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102519)

(declare-fun e!857703 () Bool)

(declare-fun array_inv!38397 (array!102519) Bool)

(assert (=> start!131702 (and (array_inv!38397 _values!470) e!857703)))

(declare-datatypes ((array!102521 0))(
  ( (array!102522 (arr!49458 (Array (_ BitVec 32) (_ BitVec 64))) (size!50009 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102521)

(declare-fun array_inv!38398 (array!102521) Bool)

(assert (=> start!131702 (array_inv!38398 _keys!618)))

(declare-fun b!1541858 () Bool)

(declare-fun e!857705 () Bool)

(declare-fun tp_is_empty!37659 () Bool)

(assert (=> b!1541858 (= e!857705 tp_is_empty!37659)))

(declare-fun mapNonEmpty!58192 () Bool)

(declare-fun mapRes!58192 () Bool)

(declare-fun tp!110720 () Bool)

(assert (=> mapNonEmpty!58192 (= mapRes!58192 (and tp!110720 e!857705))))

(declare-fun mapKey!58192 () (_ BitVec 32))

(declare-fun mapRest!58192 () (Array (_ BitVec 32) ValueCell!17919))

(declare-fun mapValue!58192 () ValueCell!17919)

(assert (=> mapNonEmpty!58192 (= (arr!49457 _values!470) (store mapRest!58192 mapKey!58192 mapValue!58192))))

(declare-fun b!1541859 () Bool)

(declare-fun res!1058277 () Bool)

(assert (=> b!1541859 (=> (not res!1058277) (not e!857706))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1541859 (= res!1058277 (and (= (size!50008 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50009 _keys!618) (size!50008 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1541860 () Bool)

(declare-fun res!1058279 () Bool)

(assert (=> b!1541860 (=> (not res!1058279) (not e!857706))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102521 (_ BitVec 32)) Bool)

(assert (=> b!1541860 (= res!1058279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1541861 () Bool)

(declare-fun e!857704 () Bool)

(assert (=> b!1541861 (= e!857703 (and e!857704 mapRes!58192))))

(declare-fun condMapEmpty!58192 () Bool)

(declare-fun mapDefault!58192 () ValueCell!17919)

(assert (=> b!1541861 (= condMapEmpty!58192 (= (arr!49457 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17919)) mapDefault!58192)))))

(declare-fun mapIsEmpty!58192 () Bool)

(assert (=> mapIsEmpty!58192 mapRes!58192))

(declare-fun b!1541862 () Bool)

(assert (=> b!1541862 (= e!857706 false)))

(declare-fun lt!665663 () Bool)

(declare-datatypes ((List!36015 0))(
  ( (Nil!36012) (Cons!36011 (h!37457 (_ BitVec 64)) (t!50716 List!36015)) )
))
(declare-fun arrayNoDuplicates!0 (array!102521 (_ BitVec 32) List!36015) Bool)

(assert (=> b!1541862 (= lt!665663 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36012))))

(declare-fun b!1541863 () Bool)

(assert (=> b!1541863 (= e!857704 tp_is_empty!37659)))

(assert (= (and start!131702 res!1058278) b!1541859))

(assert (= (and b!1541859 res!1058277) b!1541860))

(assert (= (and b!1541860 res!1058279) b!1541862))

(assert (= (and b!1541861 condMapEmpty!58192) mapIsEmpty!58192))

(assert (= (and b!1541861 (not condMapEmpty!58192)) mapNonEmpty!58192))

(get-info :version)

(assert (= (and mapNonEmpty!58192 ((_ is ValueCellFull!17919) mapValue!58192)) b!1541858))

(assert (= (and b!1541861 ((_ is ValueCellFull!17919) mapDefault!58192)) b!1541863))

(assert (= start!131702 b!1541861))

(declare-fun m!1423699 () Bool)

(assert (=> start!131702 m!1423699))

(declare-fun m!1423701 () Bool)

(assert (=> start!131702 m!1423701))

(declare-fun m!1423703 () Bool)

(assert (=> start!131702 m!1423703))

(declare-fun m!1423705 () Bool)

(assert (=> mapNonEmpty!58192 m!1423705))

(declare-fun m!1423707 () Bool)

(assert (=> b!1541860 m!1423707))

(declare-fun m!1423709 () Bool)

(assert (=> b!1541862 m!1423709))

(check-sat (not mapNonEmpty!58192) (not b!1541862) tp_is_empty!37659 (not start!131702) (not b!1541860))
(check-sat)
