; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131724 () Bool)

(assert start!131724)

(declare-fun b!1542056 () Bool)

(declare-fun res!1058376 () Bool)

(declare-fun e!857872 () Bool)

(assert (=> b!1542056 (=> (not res!1058376) (not e!857872))))

(declare-datatypes ((array!102557 0))(
  ( (array!102558 (arr!49476 (Array (_ BitVec 32) (_ BitVec 64))) (size!50027 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102557)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102557 (_ BitVec 32)) Bool)

(assert (=> b!1542056 (= res!1058376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542057 () Bool)

(declare-fun e!857869 () Bool)

(declare-fun tp_is_empty!37681 () Bool)

(assert (=> b!1542057 (= e!857869 tp_is_empty!37681)))

(declare-fun mapIsEmpty!58225 () Bool)

(declare-fun mapRes!58225 () Bool)

(assert (=> mapIsEmpty!58225 mapRes!58225))

(declare-fun res!1058377 () Bool)

(assert (=> start!131724 (=> (not res!1058377) (not e!857872))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131724 (= res!1058377 (validMask!0 mask!926))))

(assert (=> start!131724 e!857872))

(assert (=> start!131724 true))

(declare-datatypes ((V!58685 0))(
  ( (V!58686 (val!18918 Int)) )
))
(declare-datatypes ((ValueCell!17930 0))(
  ( (ValueCellFull!17930 (v!21716 V!58685)) (EmptyCell!17930) )
))
(declare-datatypes ((array!102559 0))(
  ( (array!102560 (arr!49477 (Array (_ BitVec 32) ValueCell!17930)) (size!50028 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102559)

(declare-fun e!857870 () Bool)

(declare-fun array_inv!38411 (array!102559) Bool)

(assert (=> start!131724 (and (array_inv!38411 _values!470) e!857870)))

(declare-fun array_inv!38412 (array!102557) Bool)

(assert (=> start!131724 (array_inv!38412 _keys!618)))

(declare-fun b!1542058 () Bool)

(assert (=> b!1542058 (= e!857872 false)))

(declare-fun lt!665696 () Bool)

(declare-datatypes ((List!36020 0))(
  ( (Nil!36017) (Cons!36016 (h!37462 (_ BitVec 64)) (t!50721 List!36020)) )
))
(declare-fun arrayNoDuplicates!0 (array!102557 (_ BitVec 32) List!36020) Bool)

(assert (=> b!1542058 (= lt!665696 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36017))))

(declare-fun mapNonEmpty!58225 () Bool)

(declare-fun tp!110753 () Bool)

(assert (=> mapNonEmpty!58225 (= mapRes!58225 (and tp!110753 e!857869))))

(declare-fun mapValue!58225 () ValueCell!17930)

(declare-fun mapRest!58225 () (Array (_ BitVec 32) ValueCell!17930))

(declare-fun mapKey!58225 () (_ BitVec 32))

(assert (=> mapNonEmpty!58225 (= (arr!49477 _values!470) (store mapRest!58225 mapKey!58225 mapValue!58225))))

(declare-fun b!1542059 () Bool)

(declare-fun res!1058378 () Bool)

(assert (=> b!1542059 (=> (not res!1058378) (not e!857872))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542059 (= res!1058378 (and (= (size!50028 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50027 _keys!618) (size!50028 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1542060 () Bool)

(declare-fun e!857871 () Bool)

(assert (=> b!1542060 (= e!857870 (and e!857871 mapRes!58225))))

(declare-fun condMapEmpty!58225 () Bool)

(declare-fun mapDefault!58225 () ValueCell!17930)

