; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!500 () Bool)

(assert start!500)

(declare-fun mapNonEmpty!74 () Bool)

(declare-fun mapRes!74 () Bool)

(declare-fun tp!314 () Bool)

(declare-fun e!1253 () Bool)

(assert (=> mapNonEmpty!74 (= mapRes!74 (and tp!314 e!1253))))

(declare-datatypes ((V!287 0))(
  ( (V!288 (val!47 Int)) )
))
(declare-datatypes ((ValueCell!25 0))(
  ( (ValueCellFull!25 (v!1133 V!287)) (EmptyCell!25) )
))
(declare-fun mapValue!74 () ValueCell!25)

(declare-fun mapRest!74 () (Array (_ BitVec 32) ValueCell!25))

(declare-datatypes ((array!99 0))(
  ( (array!100 (arr!45 (Array (_ BitVec 32) ValueCell!25)) (size!107 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!99)

(declare-fun mapKey!74 () (_ BitVec 32))

(assert (=> mapNonEmpty!74 (= (arr!45 _values!1492) (store mapRest!74 mapKey!74 mapValue!74))))

(declare-fun b!2945 () Bool)

(declare-fun e!1250 () Bool)

(declare-fun e!1251 () Bool)

(assert (=> b!2945 (= e!1250 (and e!1251 mapRes!74))))

(declare-fun condMapEmpty!74 () Bool)

(declare-fun mapDefault!74 () ValueCell!25)

