; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131756 () Bool)

(assert start!131756)

(declare-fun mapNonEmpty!58273 () Bool)

(declare-fun mapRes!58273 () Bool)

(declare-fun tp!110801 () Bool)

(declare-fun e!858109 () Bool)

(assert (=> mapNonEmpty!58273 (= mapRes!58273 (and tp!110801 e!858109))))

(declare-fun mapKey!58273 () (_ BitVec 32))

(declare-datatypes ((V!58727 0))(
  ( (V!58728 (val!18934 Int)) )
))
(declare-datatypes ((ValueCell!17946 0))(
  ( (ValueCellFull!17946 (v!21732 V!58727)) (EmptyCell!17946) )
))
(declare-fun mapRest!58273 () (Array (_ BitVec 32) ValueCell!17946))

(declare-datatypes ((array!102621 0))(
  ( (array!102622 (arr!49508 (Array (_ BitVec 32) ValueCell!17946)) (size!50059 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102621)

(declare-fun mapValue!58273 () ValueCell!17946)

(assert (=> mapNonEmpty!58273 (= (arr!49508 _values!470) (store mapRest!58273 mapKey!58273 mapValue!58273))))

(declare-fun mapIsEmpty!58273 () Bool)

(assert (=> mapIsEmpty!58273 mapRes!58273))

(declare-fun b!1542344 () Bool)

(declare-fun e!858111 () Bool)

(declare-fun e!858110 () Bool)

(assert (=> b!1542344 (= e!858111 (and e!858110 mapRes!58273))))

(declare-fun condMapEmpty!58273 () Bool)

(declare-fun mapDefault!58273 () ValueCell!17946)

(assert (=> b!1542344 (= condMapEmpty!58273 (= (arr!49508 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17946)) mapDefault!58273)))))

(declare-fun b!1542345 () Bool)

(declare-fun e!858108 () Bool)

(assert (=> b!1542345 (= e!858108 false)))

(declare-fun lt!665744 () Bool)

(declare-datatypes ((array!102623 0))(
  ( (array!102624 (arr!49509 (Array (_ BitVec 32) (_ BitVec 64))) (size!50060 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102623)

(declare-datatypes ((List!36030 0))(
  ( (Nil!36027) (Cons!36026 (h!37472 (_ BitVec 64)) (t!50731 List!36030)) )
))
(declare-fun arrayNoDuplicates!0 (array!102623 (_ BitVec 32) List!36030) Bool)

(assert (=> b!1542345 (= lt!665744 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36027))))

(declare-fun res!1058521 () Bool)

(assert (=> start!131756 (=> (not res!1058521) (not e!858108))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131756 (= res!1058521 (validMask!0 mask!926))))

(assert (=> start!131756 e!858108))

(assert (=> start!131756 true))

(declare-fun array_inv!38443 (array!102621) Bool)

(assert (=> start!131756 (and (array_inv!38443 _values!470) e!858111)))

(declare-fun array_inv!38444 (array!102623) Bool)

(assert (=> start!131756 (array_inv!38444 _keys!618)))

(declare-fun b!1542346 () Bool)

(declare-fun tp_is_empty!37713 () Bool)

(assert (=> b!1542346 (= e!858109 tp_is_empty!37713)))

(declare-fun b!1542347 () Bool)

(assert (=> b!1542347 (= e!858110 tp_is_empty!37713)))

(declare-fun b!1542348 () Bool)

(declare-fun res!1058522 () Bool)

(assert (=> b!1542348 (=> (not res!1058522) (not e!858108))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102623 (_ BitVec 32)) Bool)

(assert (=> b!1542348 (= res!1058522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542349 () Bool)

(declare-fun res!1058520 () Bool)

(assert (=> b!1542349 (=> (not res!1058520) (not e!858108))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542349 (= res!1058520 (and (= (size!50059 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50060 _keys!618) (size!50059 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(assert (= (and start!131756 res!1058521) b!1542349))

(assert (= (and b!1542349 res!1058520) b!1542348))

(assert (= (and b!1542348 res!1058522) b!1542345))

(assert (= (and b!1542344 condMapEmpty!58273) mapIsEmpty!58273))

(assert (= (and b!1542344 (not condMapEmpty!58273)) mapNonEmpty!58273))

(get-info :version)

(assert (= (and mapNonEmpty!58273 ((_ is ValueCellFull!17946) mapValue!58273)) b!1542346))

(assert (= (and b!1542344 ((_ is ValueCellFull!17946) mapDefault!58273)) b!1542347))

(assert (= start!131756 b!1542344))

(declare-fun m!1424023 () Bool)

(assert (=> mapNonEmpty!58273 m!1424023))

(declare-fun m!1424025 () Bool)

(assert (=> b!1542345 m!1424025))

(declare-fun m!1424027 () Bool)

(assert (=> start!131756 m!1424027))

(declare-fun m!1424029 () Bool)

(assert (=> start!131756 m!1424029))

(declare-fun m!1424031 () Bool)

(assert (=> start!131756 m!1424031))

(declare-fun m!1424033 () Bool)

(assert (=> b!1542348 m!1424033))

(check-sat (not b!1542348) (not start!131756) (not b!1542345) (not mapNonEmpty!58273) tp_is_empty!37713)
(check-sat)
