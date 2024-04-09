; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131704 () Bool)

(assert start!131704)

(declare-fun mapNonEmpty!58195 () Bool)

(declare-fun mapRes!58195 () Bool)

(declare-fun tp!110723 () Bool)

(declare-fun e!857722 () Bool)

(assert (=> mapNonEmpty!58195 (= mapRes!58195 (and tp!110723 e!857722))))

(declare-datatypes ((V!58657 0))(
  ( (V!58658 (val!18908 Int)) )
))
(declare-datatypes ((ValueCell!17920 0))(
  ( (ValueCellFull!17920 (v!21706 V!58657)) (EmptyCell!17920) )
))
(declare-fun mapValue!58195 () ValueCell!17920)

(declare-fun mapKey!58195 () (_ BitVec 32))

(declare-fun mapRest!58195 () (Array (_ BitVec 32) ValueCell!17920))

(declare-datatypes ((array!102523 0))(
  ( (array!102524 (arr!49459 (Array (_ BitVec 32) ValueCell!17920)) (size!50010 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102523)

(assert (=> mapNonEmpty!58195 (= (arr!49459 _values!470) (store mapRest!58195 mapKey!58195 mapValue!58195))))

(declare-fun b!1541876 () Bool)

(declare-fun res!1058288 () Bool)

(declare-fun e!857721 () Bool)

(assert (=> b!1541876 (=> (not res!1058288) (not e!857721))))

(declare-datatypes ((array!102525 0))(
  ( (array!102526 (arr!49460 (Array (_ BitVec 32) (_ BitVec 64))) (size!50011 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102525)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102525 (_ BitVec 32)) Bool)

(assert (=> b!1541876 (= res!1058288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun res!1058287 () Bool)

(assert (=> start!131704 (=> (not res!1058287) (not e!857721))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131704 (= res!1058287 (validMask!0 mask!926))))

(assert (=> start!131704 e!857721))

(assert (=> start!131704 true))

(declare-fun e!857720 () Bool)

(declare-fun array_inv!38399 (array!102523) Bool)

(assert (=> start!131704 (and (array_inv!38399 _values!470) e!857720)))

(declare-fun array_inv!38400 (array!102525) Bool)

(assert (=> start!131704 (array_inv!38400 _keys!618)))

(declare-fun b!1541877 () Bool)

(assert (=> b!1541877 (= e!857721 false)))

(declare-fun lt!665666 () Bool)

(declare-datatypes ((List!36016 0))(
  ( (Nil!36013) (Cons!36012 (h!37458 (_ BitVec 64)) (t!50717 List!36016)) )
))
(declare-fun arrayNoDuplicates!0 (array!102525 (_ BitVec 32) List!36016) Bool)

(assert (=> b!1541877 (= lt!665666 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36013))))

(declare-fun b!1541878 () Bool)

(declare-fun e!857719 () Bool)

(assert (=> b!1541878 (= e!857720 (and e!857719 mapRes!58195))))

(declare-fun condMapEmpty!58195 () Bool)

(declare-fun mapDefault!58195 () ValueCell!17920)

