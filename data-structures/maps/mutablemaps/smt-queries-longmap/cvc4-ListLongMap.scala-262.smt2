; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4296 () Bool)

(assert start!4296)

(declare-fun b_free!1163 () Bool)

(declare-fun b_next!1163 () Bool)

(assert (=> start!4296 (= b_free!1163 (not b_next!1163))))

(declare-fun tp!4915 () Bool)

(declare-fun b_and!1979 () Bool)

(assert (=> start!4296 (= tp!4915 b_and!1979)))

(declare-fun b!33105 () Bool)

(declare-fun e!21027 () Bool)

(declare-fun e!21030 () Bool)

(declare-fun mapRes!1810 () Bool)

(assert (=> b!33105 (= e!21027 (and e!21030 mapRes!1810))))

(declare-fun condMapEmpty!1810 () Bool)

(declare-datatypes ((V!1847 0))(
  ( (V!1848 (val!785 Int)) )
))
(declare-datatypes ((ValueCell!559 0))(
  ( (ValueCellFull!559 (v!1876 V!1847)) (EmptyCell!559) )
))
(declare-datatypes ((array!2243 0))(
  ( (array!2244 (arr!1073 (Array (_ BitVec 32) ValueCell!559)) (size!1174 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2243)

(declare-fun mapDefault!1810 () ValueCell!559)

