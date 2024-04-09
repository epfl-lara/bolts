; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4066 () Bool)

(assert start!4066)

(declare-fun b_free!973 () Bool)

(declare-fun b_next!973 () Bool)

(assert (=> start!4066 (= b_free!973 (not b_next!973))))

(declare-fun tp!4338 () Bool)

(declare-fun b_and!1785 () Bool)

(assert (=> start!4066 (= tp!4338 b_and!1785)))

(declare-fun b!30014 () Bool)

(declare-fun e!19326 () Bool)

(declare-fun e!19325 () Bool)

(declare-fun mapRes!1519 () Bool)

(assert (=> b!30014 (= e!19326 (and e!19325 mapRes!1519))))

(declare-fun condMapEmpty!1519 () Bool)

(declare-datatypes ((V!1595 0))(
  ( (V!1596 (val!690 Int)) )
))
(declare-datatypes ((ValueCell!464 0))(
  ( (ValueCellFull!464 (v!1779 V!1595)) (EmptyCell!464) )
))
(declare-datatypes ((array!1875 0))(
  ( (array!1876 (arr!891 (Array (_ BitVec 32) ValueCell!464)) (size!992 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1875)

(declare-fun mapDefault!1519 () ValueCell!464)

