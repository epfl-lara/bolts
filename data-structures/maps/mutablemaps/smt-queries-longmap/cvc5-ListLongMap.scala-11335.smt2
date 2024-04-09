; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131946 () Bool)

(assert start!131946)

(declare-fun b_free!31627 () Bool)

(declare-fun b_next!31627 () Bool)

(assert (=> start!131946 (= b_free!31627 (not b_next!31627))))

(declare-fun tp!111134 () Bool)

(declare-fun b_and!51047 () Bool)

(assert (=> start!131946 (= tp!111134 b_and!51047)))

(declare-fun b!1544430 () Bool)

(declare-fun res!1059471 () Bool)

(declare-fun e!859679 () Bool)

(assert (=> b!1544430 (=> (not res!1059471) (not e!859679))))

(declare-datatypes ((array!102979 0))(
  ( (array!102980 (arr!49687 (Array (_ BitVec 32) (_ BitVec 64))) (size!50238 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102979)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58981 0))(
  ( (V!58982 (val!19029 Int)) )
))
(declare-datatypes ((ValueCell!18041 0))(
  ( (ValueCellFull!18041 (v!21827 V!58981)) (EmptyCell!18041) )
))
(declare-datatypes ((array!102981 0))(
  ( (array!102982 (arr!49688 (Array (_ BitVec 32) ValueCell!18041)) (size!50239 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102981)

(assert (=> b!1544430 (= res!1059471 (and (= (size!50239 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50238 _keys!618) (size!50239 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1544431 () Bool)

(declare-fun e!859676 () Bool)

(declare-fun e!859675 () Bool)

(declare-fun mapRes!58558 () Bool)

(assert (=> b!1544431 (= e!859676 (and e!859675 mapRes!58558))))

(declare-fun condMapEmpty!58558 () Bool)

(declare-fun mapDefault!58558 () ValueCell!18041)

