; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4326 () Bool)

(assert start!4326)

(declare-fun b_free!1169 () Bool)

(declare-fun b_next!1169 () Bool)

(assert (=> start!4326 (= b_free!1169 (not b_next!1169))))

(declare-fun tp!4935 () Bool)

(declare-fun b_and!1987 () Bool)

(assert (=> start!4326 (= tp!4935 b_and!1987)))

(declare-fun b!33341 () Bool)

(declare-fun e!21176 () Bool)

(declare-fun e!21180 () Bool)

(declare-fun mapRes!1822 () Bool)

(assert (=> b!33341 (= e!21176 (and e!21180 mapRes!1822))))

(declare-fun condMapEmpty!1822 () Bool)

(declare-datatypes ((V!1855 0))(
  ( (V!1856 (val!788 Int)) )
))
(declare-datatypes ((ValueCell!562 0))(
  ( (ValueCellFull!562 (v!1880 V!1855)) (EmptyCell!562) )
))
(declare-datatypes ((array!2255 0))(
  ( (array!2256 (arr!1078 (Array (_ BitVec 32) ValueCell!562)) (size!1179 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2255)

(declare-fun mapDefault!1822 () ValueCell!562)

