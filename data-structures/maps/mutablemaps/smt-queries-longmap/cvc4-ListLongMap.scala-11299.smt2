; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131734 () Bool)

(assert start!131734)

(declare-fun b!1542146 () Bool)

(declare-fun e!857947 () Bool)

(declare-fun tp_is_empty!37691 () Bool)

(assert (=> b!1542146 (= e!857947 tp_is_empty!37691)))

(declare-fun b!1542147 () Bool)

(declare-fun res!1058421 () Bool)

(declare-fun e!857943 () Bool)

(assert (=> b!1542147 (=> (not res!1058421) (not e!857943))))

(declare-datatypes ((array!102577 0))(
  ( (array!102578 (arr!49486 (Array (_ BitVec 32) (_ BitVec 64))) (size!50037 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102577)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102577 (_ BitVec 32)) Bool)

(assert (=> b!1542147 (= res!1058421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542148 () Bool)

(declare-fun res!1058423 () Bool)

(assert (=> b!1542148 (=> (not res!1058423) (not e!857943))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-datatypes ((V!58697 0))(
  ( (V!58698 (val!18923 Int)) )
))
(declare-datatypes ((ValueCell!17935 0))(
  ( (ValueCellFull!17935 (v!21721 V!58697)) (EmptyCell!17935) )
))
(declare-datatypes ((array!102579 0))(
  ( (array!102580 (arr!49487 (Array (_ BitVec 32) ValueCell!17935)) (size!50038 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102579)

(assert (=> b!1542148 (= res!1058423 (and (= (size!50038 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50037 _keys!618) (size!50038 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1542149 () Bool)

(declare-fun e!857945 () Bool)

(assert (=> b!1542149 (= e!857945 tp_is_empty!37691)))

(declare-fun mapNonEmpty!58240 () Bool)

(declare-fun mapRes!58240 () Bool)

(declare-fun tp!110768 () Bool)

(assert (=> mapNonEmpty!58240 (= mapRes!58240 (and tp!110768 e!857947))))

(declare-fun mapValue!58240 () ValueCell!17935)

(declare-fun mapKey!58240 () (_ BitVec 32))

(declare-fun mapRest!58240 () (Array (_ BitVec 32) ValueCell!17935))

(assert (=> mapNonEmpty!58240 (= (arr!49487 _values!470) (store mapRest!58240 mapKey!58240 mapValue!58240))))

(declare-fun b!1542150 () Bool)

(assert (=> b!1542150 (= e!857943 false)))

(declare-fun lt!665711 () Bool)

(declare-datatypes ((List!36024 0))(
  ( (Nil!36021) (Cons!36020 (h!37466 (_ BitVec 64)) (t!50725 List!36024)) )
))
(declare-fun arrayNoDuplicates!0 (array!102577 (_ BitVec 32) List!36024) Bool)

(assert (=> b!1542150 (= lt!665711 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36021))))

(declare-fun res!1058422 () Bool)

(assert (=> start!131734 (=> (not res!1058422) (not e!857943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131734 (= res!1058422 (validMask!0 mask!926))))

(assert (=> start!131734 e!857943))

(assert (=> start!131734 true))

(declare-fun e!857946 () Bool)

(declare-fun array_inv!38421 (array!102579) Bool)

(assert (=> start!131734 (and (array_inv!38421 _values!470) e!857946)))

(declare-fun array_inv!38422 (array!102577) Bool)

(assert (=> start!131734 (array_inv!38422 _keys!618)))

(declare-fun mapIsEmpty!58240 () Bool)

(assert (=> mapIsEmpty!58240 mapRes!58240))

(declare-fun b!1542151 () Bool)

(assert (=> b!1542151 (= e!857946 (and e!857945 mapRes!58240))))

(declare-fun condMapEmpty!58240 () Bool)

(declare-fun mapDefault!58240 () ValueCell!17935)

