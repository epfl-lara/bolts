; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109852 () Bool)

(assert start!109852)

(declare-fun b_free!29209 () Bool)

(declare-fun b_next!29209 () Bool)

(assert (=> start!109852 (= b_free!29209 (not b_next!29209))))

(declare-fun tp!102762 () Bool)

(declare-fun b_and!47333 () Bool)

(assert (=> start!109852 (= tp!102762 b_and!47333)))

(declare-fun b!1300963 () Bool)

(declare-fun e!742084 () Bool)

(declare-fun e!742087 () Bool)

(declare-fun mapRes!53849 () Bool)

(assert (=> b!1300963 (= e!742084 (and e!742087 mapRes!53849))))

(declare-fun condMapEmpty!53849 () Bool)

(declare-datatypes ((V!51569 0))(
  ( (V!51570 (val!17499 Int)) )
))
(declare-datatypes ((ValueCell!16526 0))(
  ( (ValueCellFull!16526 (v!20105 V!51569)) (EmptyCell!16526) )
))
(declare-datatypes ((array!86669 0))(
  ( (array!86670 (arr!41826 (Array (_ BitVec 32) ValueCell!16526)) (size!42377 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86669)

(declare-fun mapDefault!53849 () ValueCell!16526)

