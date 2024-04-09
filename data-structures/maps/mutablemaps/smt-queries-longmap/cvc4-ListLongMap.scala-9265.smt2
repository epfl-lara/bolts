; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110978 () Bool)

(assert start!110978)

(declare-fun b_free!29777 () Bool)

(declare-fun b_next!29777 () Bool)

(assert (=> start!110978 (= b_free!29777 (not b_next!29777))))

(declare-fun tp!104653 () Bool)

(declare-fun b_and!47995 () Bool)

(assert (=> start!110978 (= tp!104653 b_and!47995)))

(declare-fun mapNonEmpty!54889 () Bool)

(declare-fun mapRes!54889 () Bool)

(declare-fun tp!104654 () Bool)

(declare-fun e!749163 () Bool)

(assert (=> mapNonEmpty!54889 (= mapRes!54889 (and tp!104654 e!749163))))

(declare-fun mapKey!54889 () (_ BitVec 32))

(declare-datatypes ((V!52445 0))(
  ( (V!52446 (val!17828 Int)) )
))
(declare-datatypes ((ValueCell!16855 0))(
  ( (ValueCellFull!16855 (v!20453 V!52445)) (EmptyCell!16855) )
))
(declare-fun mapValue!54889 () ValueCell!16855)

(declare-datatypes ((array!87959 0))(
  ( (array!87960 (arr!42455 (Array (_ BitVec 32) ValueCell!16855)) (size!43006 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87959)

(declare-fun mapRest!54889 () (Array (_ BitVec 32) ValueCell!16855))

(assert (=> mapNonEmpty!54889 (= (arr!42455 _values!1354) (store mapRest!54889 mapKey!54889 mapValue!54889))))

(declare-fun b!1313362 () Bool)

(declare-fun e!749161 () Bool)

(declare-fun e!749162 () Bool)

(assert (=> b!1313362 (= e!749161 (and e!749162 mapRes!54889))))

(declare-fun condMapEmpty!54889 () Bool)

(declare-fun mapDefault!54889 () ValueCell!16855)

