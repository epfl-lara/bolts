; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131910 () Bool)

(assert start!131910)

(declare-fun b!1543730 () Bool)

(declare-fun e!859263 () Bool)

(declare-fun tp_is_empty!37867 () Bool)

(assert (=> b!1543730 (= e!859263 tp_is_empty!37867)))

(declare-fun b!1543731 () Bool)

(declare-fun e!859264 () Bool)

(assert (=> b!1543731 (= e!859264 false)))

(declare-fun lt!665975 () Bool)

(declare-datatypes ((array!102909 0))(
  ( (array!102910 (arr!49652 (Array (_ BitVec 32) (_ BitVec 64))) (size!50203 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102909)

(declare-datatypes ((List!36080 0))(
  ( (Nil!36077) (Cons!36076 (h!37522 (_ BitVec 64)) (t!50781 List!36080)) )
))
(declare-fun arrayNoDuplicates!0 (array!102909 (_ BitVec 32) List!36080) Bool)

(assert (=> b!1543731 (= lt!665975 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36077))))

(declare-fun res!1059214 () Bool)

(assert (=> start!131910 (=> (not res!1059214) (not e!859264))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131910 (= res!1059214 (validMask!0 mask!926))))

(assert (=> start!131910 e!859264))

(assert (=> start!131910 true))

(declare-datatypes ((V!58933 0))(
  ( (V!58934 (val!19011 Int)) )
))
(declare-datatypes ((ValueCell!18023 0))(
  ( (ValueCellFull!18023 (v!21809 V!58933)) (EmptyCell!18023) )
))
(declare-datatypes ((array!102911 0))(
  ( (array!102912 (arr!49653 (Array (_ BitVec 32) ValueCell!18023)) (size!50204 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102911)

(declare-fun e!859266 () Bool)

(declare-fun array_inv!38549 (array!102911) Bool)

(assert (=> start!131910 (and (array_inv!38549 _values!470) e!859266)))

(declare-fun array_inv!38550 (array!102909) Bool)

(assert (=> start!131910 (array_inv!38550 _keys!618)))

(declare-fun b!1543732 () Bool)

(declare-fun res!1059213 () Bool)

(assert (=> b!1543732 (=> (not res!1059213) (not e!859264))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1543732 (= res!1059213 (and (= (size!50204 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50203 _keys!618) (size!50204 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1543733 () Bool)

(declare-fun mapRes!58504 () Bool)

(assert (=> b!1543733 (= e!859266 (and e!859263 mapRes!58504))))

(declare-fun condMapEmpty!58504 () Bool)

(declare-fun mapDefault!58504 () ValueCell!18023)

