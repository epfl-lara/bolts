; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84156 () Bool)

(assert start!84156)

(declare-fun res!658212 () Bool)

(declare-fun e!554482 () Bool)

(assert (=> start!84156 (=> (not res!658212) (not e!554482))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84156 (= res!658212 (validMask!0 mask!1948))))

(assert (=> start!84156 e!554482))

(assert (=> start!84156 true))

(declare-datatypes ((V!35557 0))(
  ( (V!35558 (val!11516 Int)) )
))
(declare-datatypes ((ValueCell!10984 0))(
  ( (ValueCellFull!10984 (v!14078 V!35557)) (EmptyCell!10984) )
))
(declare-datatypes ((array!61833 0))(
  ( (array!61834 (arr!29770 (Array (_ BitVec 32) ValueCell!10984)) (size!30250 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61833)

(declare-fun e!554480 () Bool)

(declare-fun array_inv!22885 (array!61833) Bool)

(assert (=> start!84156 (and (array_inv!22885 _values!1278) e!554480)))

(declare-datatypes ((array!61835 0))(
  ( (array!61836 (arr!29771 (Array (_ BitVec 32) (_ BitVec 64))) (size!30251 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61835)

(declare-fun array_inv!22886 (array!61835) Bool)

(assert (=> start!84156 (array_inv!22886 _keys!1544)))

(declare-fun b!983494 () Bool)

(declare-fun res!658210 () Bool)

(assert (=> b!983494 (=> (not res!658210) (not e!554482))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983494 (= res!658210 (and (= (size!30250 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30251 _keys!1544) (size!30250 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!36425 () Bool)

(declare-fun mapRes!36425 () Bool)

(declare-fun tp!69110 () Bool)

(declare-fun e!554479 () Bool)

(assert (=> mapNonEmpty!36425 (= mapRes!36425 (and tp!69110 e!554479))))

(declare-fun mapKey!36425 () (_ BitVec 32))

(declare-fun mapRest!36425 () (Array (_ BitVec 32) ValueCell!10984))

(declare-fun mapValue!36425 () ValueCell!10984)

(assert (=> mapNonEmpty!36425 (= (arr!29770 _values!1278) (store mapRest!36425 mapKey!36425 mapValue!36425))))

(declare-fun b!983495 () Bool)

(declare-fun e!554481 () Bool)

(assert (=> b!983495 (= e!554480 (and e!554481 mapRes!36425))))

(declare-fun condMapEmpty!36425 () Bool)

(declare-fun mapDefault!36425 () ValueCell!10984)

