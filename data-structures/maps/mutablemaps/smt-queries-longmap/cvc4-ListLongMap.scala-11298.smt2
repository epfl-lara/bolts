; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131728 () Bool)

(assert start!131728)

(declare-fun b!1542092 () Bool)

(declare-fun e!857899 () Bool)

(declare-fun tp_is_empty!37685 () Bool)

(assert (=> b!1542092 (= e!857899 tp_is_empty!37685)))

(declare-fun res!1058394 () Bool)

(declare-fun e!857901 () Bool)

(assert (=> start!131728 (=> (not res!1058394) (not e!857901))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131728 (= res!1058394 (validMask!0 mask!926))))

(assert (=> start!131728 e!857901))

(assert (=> start!131728 true))

(declare-datatypes ((V!58689 0))(
  ( (V!58690 (val!18920 Int)) )
))
(declare-datatypes ((ValueCell!17932 0))(
  ( (ValueCellFull!17932 (v!21718 V!58689)) (EmptyCell!17932) )
))
(declare-datatypes ((array!102565 0))(
  ( (array!102566 (arr!49480 (Array (_ BitVec 32) ValueCell!17932)) (size!50031 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102565)

(declare-fun e!857902 () Bool)

(declare-fun array_inv!38415 (array!102565) Bool)

(assert (=> start!131728 (and (array_inv!38415 _values!470) e!857902)))

(declare-datatypes ((array!102567 0))(
  ( (array!102568 (arr!49481 (Array (_ BitVec 32) (_ BitVec 64))) (size!50032 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102567)

(declare-fun array_inv!38416 (array!102567) Bool)

(assert (=> start!131728 (array_inv!38416 _keys!618)))

(declare-fun mapIsEmpty!58231 () Bool)

(declare-fun mapRes!58231 () Bool)

(assert (=> mapIsEmpty!58231 mapRes!58231))

(declare-fun b!1542093 () Bool)

(declare-fun res!1058396 () Bool)

(assert (=> b!1542093 (=> (not res!1058396) (not e!857901))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102567 (_ BitVec 32)) Bool)

(assert (=> b!1542093 (= res!1058396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542094 () Bool)

(declare-fun e!857898 () Bool)

(assert (=> b!1542094 (= e!857902 (and e!857898 mapRes!58231))))

(declare-fun condMapEmpty!58231 () Bool)

(declare-fun mapDefault!58231 () ValueCell!17932)

