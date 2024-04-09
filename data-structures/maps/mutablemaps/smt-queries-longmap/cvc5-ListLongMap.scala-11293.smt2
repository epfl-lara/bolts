; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131682 () Bool)

(assert start!131682)

(declare-fun res!1058202 () Bool)

(declare-fun e!857609 () Bool)

(assert (=> start!131682 (=> (not res!1058202) (not e!857609))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131682 (= res!1058202 (validMask!0 mask!926))))

(assert (=> start!131682 e!857609))

(assert (=> start!131682 true))

(declare-datatypes ((V!58645 0))(
  ( (V!58646 (val!18903 Int)) )
))
(declare-datatypes ((ValueCell!17915 0))(
  ( (ValueCellFull!17915 (v!21700 V!58645)) (EmptyCell!17915) )
))
(declare-datatypes ((array!102501 0))(
  ( (array!102502 (arr!49449 (Array (_ BitVec 32) ValueCell!17915)) (size!50000 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102501)

(declare-fun e!857607 () Bool)

(declare-fun array_inv!38391 (array!102501) Bool)

(assert (=> start!131682 (and (array_inv!38391 _values!470) e!857607)))

(declare-datatypes ((array!102503 0))(
  ( (array!102504 (arr!49450 (Array (_ BitVec 32) (_ BitVec 64))) (size!50001 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102503)

(declare-fun array_inv!38392 (array!102503) Bool)

(assert (=> start!131682 (array_inv!38392 _keys!618)))

(declare-fun mapIsEmpty!58177 () Bool)

(declare-fun mapRes!58177 () Bool)

(assert (=> mapIsEmpty!58177 mapRes!58177))

(declare-fun b!1541731 () Bool)

(declare-fun res!1058204 () Bool)

(assert (=> b!1541731 (=> (not res!1058204) (not e!857609))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1541731 (= res!1058204 (and (= (size!50000 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50001 _keys!618) (size!50000 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1541732 () Bool)

(declare-fun res!1058201 () Bool)

(assert (=> b!1541732 (=> (not res!1058201) (not e!857609))))

(declare-datatypes ((List!36011 0))(
  ( (Nil!36008) (Cons!36007 (h!37453 (_ BitVec 64)) (t!50712 List!36011)) )
))
(declare-fun noDuplicate!2672 (List!36011) Bool)

(assert (=> b!1541732 (= res!1058201 (noDuplicate!2672 Nil!36008))))

(declare-fun mapNonEmpty!58177 () Bool)

(declare-fun tp!110705 () Bool)

(declare-fun e!857611 () Bool)

(assert (=> mapNonEmpty!58177 (= mapRes!58177 (and tp!110705 e!857611))))

(declare-fun mapValue!58177 () ValueCell!17915)

(declare-fun mapKey!58177 () (_ BitVec 32))

(declare-fun mapRest!58177 () (Array (_ BitVec 32) ValueCell!17915))

(assert (=> mapNonEmpty!58177 (= (arr!49449 _values!470) (store mapRest!58177 mapKey!58177 mapValue!58177))))

(declare-fun b!1541733 () Bool)

(declare-fun e!857612 () Bool)

(assert (=> b!1541733 (= e!857607 (and e!857612 mapRes!58177))))

(declare-fun condMapEmpty!58177 () Bool)

(declare-fun mapDefault!58177 () ValueCell!17915)

