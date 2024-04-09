; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96462 () Bool)

(assert start!96462)

(declare-fun b_free!23005 () Bool)

(declare-fun b_next!23005 () Bool)

(assert (=> start!96462 (= b_free!23005 (not b_next!23005))))

(declare-fun tp!80942 () Bool)

(declare-fun b_and!36691 () Bool)

(assert (=> start!96462 (= tp!80942 b_and!36691)))

(declare-fun b!1096130 () Bool)

(declare-fun e!625750 () Bool)

(declare-fun e!625751 () Bool)

(declare-fun mapRes!42343 () Bool)

(assert (=> b!1096130 (= e!625750 (and e!625751 mapRes!42343))))

(declare-fun condMapEmpty!42343 () Bool)

(declare-datatypes ((V!41201 0))(
  ( (V!41202 (val!13584 Int)) )
))
(declare-datatypes ((ValueCell!12818 0))(
  ( (ValueCellFull!12818 (v!16206 V!41201)) (EmptyCell!12818) )
))
(declare-datatypes ((array!70972 0))(
  ( (array!70973 (arr!34154 (Array (_ BitVec 32) ValueCell!12818)) (size!34691 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70972)

(declare-fun mapDefault!42343 () ValueCell!12818)

