; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131670 () Bool)

(assert start!131670)

(declare-fun b!1541680 () Bool)

(declare-fun e!857572 () Bool)

(declare-datatypes ((List!36010 0))(
  ( (Nil!36007) (Cons!36006 (h!37452 (_ BitVec 64)) (t!50711 List!36010)) )
))
(declare-fun noDuplicate!2671 (List!36010) Bool)

(assert (=> b!1541680 (= e!857572 (not (noDuplicate!2671 Nil!36007)))))

(declare-fun b!1541681 () Bool)

(declare-fun res!1058175 () Bool)

(assert (=> b!1541681 (=> (not res!1058175) (not e!857572))))

(declare-datatypes ((array!102495 0))(
  ( (array!102496 (arr!49447 (Array (_ BitVec 32) (_ BitVec 64))) (size!49998 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102495)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58641 0))(
  ( (V!58642 (val!18902 Int)) )
))
(declare-datatypes ((ValueCell!17914 0))(
  ( (ValueCellFull!17914 (v!21699 V!58641)) (EmptyCell!17914) )
))
(declare-datatypes ((array!102497 0))(
  ( (array!102498 (arr!49448 (Array (_ BitVec 32) ValueCell!17914)) (size!49999 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102497)

(assert (=> b!1541681 (= res!1058175 (and (= (size!49999 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!49998 _keys!618) (size!49999 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1541682 () Bool)

(declare-fun e!857573 () Bool)

(declare-fun tp_is_empty!37649 () Bool)

(assert (=> b!1541682 (= e!857573 tp_is_empty!37649)))

(declare-fun mapIsEmpty!58171 () Bool)

(declare-fun mapRes!58171 () Bool)

(assert (=> mapIsEmpty!58171 mapRes!58171))

(declare-fun res!1058174 () Bool)

(assert (=> start!131670 (=> (not res!1058174) (not e!857572))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131670 (= res!1058174 (validMask!0 mask!926))))

(assert (=> start!131670 e!857572))

(assert (=> start!131670 true))

(declare-fun e!857569 () Bool)

(declare-fun array_inv!38389 (array!102497) Bool)

(assert (=> start!131670 (and (array_inv!38389 _values!470) e!857569)))

(declare-fun array_inv!38390 (array!102495) Bool)

(assert (=> start!131670 (array_inv!38390 _keys!618)))

(declare-fun b!1541683 () Bool)

(declare-fun e!857571 () Bool)

(assert (=> b!1541683 (= e!857569 (and e!857571 mapRes!58171))))

(declare-fun condMapEmpty!58171 () Bool)

(declare-fun mapDefault!58171 () ValueCell!17914)

