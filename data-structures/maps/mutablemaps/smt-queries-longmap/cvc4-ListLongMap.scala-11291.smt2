; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131656 () Bool)

(assert start!131656)

(declare-fun mapNonEmpty!58159 () Bool)

(declare-fun mapRes!58159 () Bool)

(declare-fun tp!110687 () Bool)

(declare-fun e!857513 () Bool)

(assert (=> mapNonEmpty!58159 (= mapRes!58159 (and tp!110687 e!857513))))

(declare-datatypes ((V!58633 0))(
  ( (V!58634 (val!18899 Int)) )
))
(declare-datatypes ((ValueCell!17911 0))(
  ( (ValueCellFull!17911 (v!21696 V!58633)) (EmptyCell!17911) )
))
(declare-fun mapValue!58159 () ValueCell!17911)

(declare-datatypes ((array!102481 0))(
  ( (array!102482 (arr!49441 (Array (_ BitVec 32) ValueCell!17911)) (size!49992 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102481)

(declare-fun mapKey!58159 () (_ BitVec 32))

(declare-fun mapRest!58159 () (Array (_ BitVec 32) ValueCell!17911))

(assert (=> mapNonEmpty!58159 (= (arr!49441 _values!470) (store mapRest!58159 mapKey!58159 mapValue!58159))))

(declare-fun b!1541598 () Bool)

(declare-fun res!1058132 () Bool)

(declare-fun e!857512 () Bool)

(assert (=> b!1541598 (=> (not res!1058132) (not e!857512))))

(declare-datatypes ((array!102483 0))(
  ( (array!102484 (arr!49442 (Array (_ BitVec 32) (_ BitVec 64))) (size!49993 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102483)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(assert (=> b!1541598 (= res!1058132 (and (= (size!49992 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!49993 _keys!618) (size!49992 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun res!1058131 () Bool)

(assert (=> start!131656 (=> (not res!1058131) (not e!857512))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131656 (= res!1058131 (validMask!0 mask!926))))

(assert (=> start!131656 e!857512))

(assert (=> start!131656 true))

(declare-fun e!857509 () Bool)

(declare-fun array_inv!38383 (array!102481) Bool)

(assert (=> start!131656 (and (array_inv!38383 _values!470) e!857509)))

(declare-fun array_inv!38384 (array!102483) Bool)

(assert (=> start!131656 (array_inv!38384 _keys!618)))

(declare-fun b!1541599 () Bool)

(declare-fun e!857510 () Bool)

(declare-fun tp_is_empty!37643 () Bool)

(assert (=> b!1541599 (= e!857510 tp_is_empty!37643)))

(declare-fun b!1541600 () Bool)

(assert (=> b!1541600 (= e!857509 (and e!857510 mapRes!58159))))

(declare-fun condMapEmpty!58159 () Bool)

(declare-fun mapDefault!58159 () ValueCell!17911)

