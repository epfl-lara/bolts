; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131882 () Bool)

(assert start!131882)

(declare-fun b!1543478 () Bool)

(declare-fun res!1059088 () Bool)

(declare-fun e!859054 () Bool)

(assert (=> b!1543478 (=> (not res!1059088) (not e!859054))))

(declare-datatypes ((array!102855 0))(
  ( (array!102856 (arr!49625 (Array (_ BitVec 32) (_ BitVec 64))) (size!50176 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102855)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102855 (_ BitVec 32)) Bool)

(assert (=> b!1543478 (= res!1059088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1543479 () Bool)

(declare-fun res!1059087 () Bool)

(assert (=> b!1543479 (=> (not res!1059087) (not e!859054))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-datatypes ((V!58895 0))(
  ( (V!58896 (val!18997 Int)) )
))
(declare-datatypes ((ValueCell!18009 0))(
  ( (ValueCellFull!18009 (v!21795 V!58895)) (EmptyCell!18009) )
))
(declare-datatypes ((array!102857 0))(
  ( (array!102858 (arr!49626 (Array (_ BitVec 32) ValueCell!18009)) (size!50177 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102857)

(assert (=> b!1543479 (= res!1059087 (and (= (size!50177 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50176 _keys!618) (size!50177 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun res!1059089 () Bool)

(assert (=> start!131882 (=> (not res!1059089) (not e!859054))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131882 (= res!1059089 (validMask!0 mask!926))))

(assert (=> start!131882 e!859054))

(assert (=> start!131882 true))

(declare-fun e!859053 () Bool)

(declare-fun array_inv!38527 (array!102857) Bool)

(assert (=> start!131882 (and (array_inv!38527 _values!470) e!859053)))

(declare-fun array_inv!38528 (array!102855) Bool)

(assert (=> start!131882 (array_inv!38528 _keys!618)))

(declare-fun b!1543480 () Bool)

(declare-fun e!859055 () Bool)

(declare-fun mapRes!58462 () Bool)

(assert (=> b!1543480 (= e!859053 (and e!859055 mapRes!58462))))

(declare-fun condMapEmpty!58462 () Bool)

(declare-fun mapDefault!58462 () ValueCell!18009)

(assert (=> b!1543480 (= condMapEmpty!58462 (= (arr!49626 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18009)) mapDefault!58462)))))

(declare-fun b!1543481 () Bool)

(declare-fun e!859057 () Bool)

(declare-fun tp_is_empty!37839 () Bool)

(assert (=> b!1543481 (= e!859057 tp_is_empty!37839)))

(declare-fun mapIsEmpty!58462 () Bool)

(assert (=> mapIsEmpty!58462 mapRes!58462))

(declare-fun b!1543482 () Bool)

(assert (=> b!1543482 (= e!859055 tp_is_empty!37839)))

(declare-fun mapNonEmpty!58462 () Bool)

(declare-fun tp!110990 () Bool)

(assert (=> mapNonEmpty!58462 (= mapRes!58462 (and tp!110990 e!859057))))

(declare-fun mapKey!58462 () (_ BitVec 32))

(declare-fun mapRest!58462 () (Array (_ BitVec 32) ValueCell!18009))

(declare-fun mapValue!58462 () ValueCell!18009)

(assert (=> mapNonEmpty!58462 (= (arr!49626 _values!470) (store mapRest!58462 mapKey!58462 mapValue!58462))))

(declare-fun b!1543483 () Bool)

(assert (=> b!1543483 (= e!859054 false)))

(declare-fun lt!665933 () Bool)

(declare-datatypes ((List!36072 0))(
  ( (Nil!36069) (Cons!36068 (h!37514 (_ BitVec 64)) (t!50773 List!36072)) )
))
(declare-fun arrayNoDuplicates!0 (array!102855 (_ BitVec 32) List!36072) Bool)

(assert (=> b!1543483 (= lt!665933 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36069))))

(assert (= (and start!131882 res!1059089) b!1543479))

(assert (= (and b!1543479 res!1059087) b!1543478))

(assert (= (and b!1543478 res!1059088) b!1543483))

(assert (= (and b!1543480 condMapEmpty!58462) mapIsEmpty!58462))

(assert (= (and b!1543480 (not condMapEmpty!58462)) mapNonEmpty!58462))

(get-info :version)

(assert (= (and mapNonEmpty!58462 ((_ is ValueCellFull!18009) mapValue!58462)) b!1543481))

(assert (= (and b!1543480 ((_ is ValueCellFull!18009) mapDefault!58462)) b!1543482))

(assert (= start!131882 b!1543480))

(declare-fun m!1424779 () Bool)

(assert (=> b!1543478 m!1424779))

(declare-fun m!1424781 () Bool)

(assert (=> start!131882 m!1424781))

(declare-fun m!1424783 () Bool)

(assert (=> start!131882 m!1424783))

(declare-fun m!1424785 () Bool)

(assert (=> start!131882 m!1424785))

(declare-fun m!1424787 () Bool)

(assert (=> mapNonEmpty!58462 m!1424787))

(declare-fun m!1424789 () Bool)

(assert (=> b!1543483 m!1424789))

(check-sat (not mapNonEmpty!58462) (not start!131882) (not b!1543478) (not b!1543483) tp_is_empty!37839)
(check-sat)
