; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4332 () Bool)

(assert start!4332)

(declare-fun b_free!1175 () Bool)

(declare-fun b_next!1175 () Bool)

(assert (=> start!4332 (= b_free!1175 (not b_next!1175))))

(declare-fun tp!4953 () Bool)

(declare-fun b_and!1993 () Bool)

(assert (=> start!4332 (= tp!4953 b_and!1993)))

(declare-fun b!33431 () Bool)

(declare-fun e!21231 () Bool)

(declare-fun e!21234 () Bool)

(declare-fun mapRes!1831 () Bool)

(assert (=> b!33431 (= e!21231 (and e!21234 mapRes!1831))))

(declare-fun condMapEmpty!1831 () Bool)

(declare-datatypes ((V!1863 0))(
  ( (V!1864 (val!791 Int)) )
))
(declare-datatypes ((ValueCell!565 0))(
  ( (ValueCellFull!565 (v!1883 V!1863)) (EmptyCell!565) )
))
(declare-datatypes ((array!2265 0))(
  ( (array!2266 (arr!1083 (Array (_ BitVec 32) ValueCell!565)) (size!1184 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2265)

(declare-fun mapDefault!1831 () ValueCell!565)

