; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131870 () Bool)

(assert start!131870)

(declare-fun b!1543370 () Bool)

(declare-fun e!858964 () Bool)

(declare-fun tp_is_empty!37827 () Bool)

(assert (=> b!1543370 (= e!858964 tp_is_empty!37827)))

(declare-fun mapNonEmpty!58444 () Bool)

(declare-fun mapRes!58444 () Bool)

(declare-fun tp!110972 () Bool)

(declare-fun e!858965 () Bool)

(assert (=> mapNonEmpty!58444 (= mapRes!58444 (and tp!110972 e!858965))))

(declare-datatypes ((V!58879 0))(
  ( (V!58880 (val!18991 Int)) )
))
(declare-datatypes ((ValueCell!18003 0))(
  ( (ValueCellFull!18003 (v!21789 V!58879)) (EmptyCell!18003) )
))
(declare-fun mapRest!58444 () (Array (_ BitVec 32) ValueCell!18003))

(declare-datatypes ((array!102831 0))(
  ( (array!102832 (arr!49613 (Array (_ BitVec 32) ValueCell!18003)) (size!50164 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102831)

(declare-fun mapKey!58444 () (_ BitVec 32))

(declare-fun mapValue!58444 () ValueCell!18003)

(assert (=> mapNonEmpty!58444 (= (arr!49613 _values!470) (store mapRest!58444 mapKey!58444 mapValue!58444))))

(declare-fun b!1543371 () Bool)

(declare-fun e!858967 () Bool)

(assert (=> b!1543371 (= e!858967 false)))

(declare-fun lt!665915 () Bool)

(declare-datatypes ((array!102833 0))(
  ( (array!102834 (arr!49614 (Array (_ BitVec 32) (_ BitVec 64))) (size!50165 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102833)

(declare-datatypes ((List!36069 0))(
  ( (Nil!36066) (Cons!36065 (h!37511 (_ BitVec 64)) (t!50770 List!36069)) )
))
(declare-fun arrayNoDuplicates!0 (array!102833 (_ BitVec 32) List!36069) Bool)

(assert (=> b!1543371 (= lt!665915 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36066))))

(declare-fun mapIsEmpty!58444 () Bool)

(assert (=> mapIsEmpty!58444 mapRes!58444))

(declare-fun res!1059034 () Bool)

(assert (=> start!131870 (=> (not res!1059034) (not e!858967))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131870 (= res!1059034 (validMask!0 mask!926))))

(assert (=> start!131870 e!858967))

(assert (=> start!131870 true))

(declare-fun e!858963 () Bool)

(declare-fun array_inv!38521 (array!102831) Bool)

(assert (=> start!131870 (and (array_inv!38521 _values!470) e!858963)))

(declare-fun array_inv!38522 (array!102833) Bool)

(assert (=> start!131870 (array_inv!38522 _keys!618)))

(declare-fun b!1543372 () Bool)

(declare-fun res!1059035 () Bool)

(assert (=> b!1543372 (=> (not res!1059035) (not e!858967))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1543372 (= res!1059035 (and (= (size!50164 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50165 _keys!618) (size!50164 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1543373 () Bool)

(declare-fun res!1059033 () Bool)

(assert (=> b!1543373 (=> (not res!1059033) (not e!858967))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102833 (_ BitVec 32)) Bool)

(assert (=> b!1543373 (= res!1059033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1543374 () Bool)

(assert (=> b!1543374 (= e!858963 (and e!858964 mapRes!58444))))

(declare-fun condMapEmpty!58444 () Bool)

(declare-fun mapDefault!58444 () ValueCell!18003)

(assert (=> b!1543374 (= condMapEmpty!58444 (= (arr!49613 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18003)) mapDefault!58444)))))

(declare-fun b!1543375 () Bool)

(assert (=> b!1543375 (= e!858965 tp_is_empty!37827)))

(assert (= (and start!131870 res!1059034) b!1543372))

(assert (= (and b!1543372 res!1059035) b!1543373))

(assert (= (and b!1543373 res!1059033) b!1543371))

(assert (= (and b!1543374 condMapEmpty!58444) mapIsEmpty!58444))

(assert (= (and b!1543374 (not condMapEmpty!58444)) mapNonEmpty!58444))

(get-info :version)

(assert (= (and mapNonEmpty!58444 ((_ is ValueCellFull!18003) mapValue!58444)) b!1543375))

(assert (= (and b!1543374 ((_ is ValueCellFull!18003) mapDefault!58444)) b!1543370))

(assert (= start!131870 b!1543374))

(declare-fun m!1424707 () Bool)

(assert (=> mapNonEmpty!58444 m!1424707))

(declare-fun m!1424709 () Bool)

(assert (=> b!1543371 m!1424709))

(declare-fun m!1424711 () Bool)

(assert (=> start!131870 m!1424711))

(declare-fun m!1424713 () Bool)

(assert (=> start!131870 m!1424713))

(declare-fun m!1424715 () Bool)

(assert (=> start!131870 m!1424715))

(declare-fun m!1424717 () Bool)

(assert (=> b!1543373 m!1424717))

(check-sat tp_is_empty!37827 (not b!1543373) (not b!1543371) (not start!131870) (not mapNonEmpty!58444))
(check-sat)
