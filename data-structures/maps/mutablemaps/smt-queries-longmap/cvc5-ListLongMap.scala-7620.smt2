; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96076 () Bool)

(assert start!96076)

(declare-fun b_free!22693 () Bool)

(declare-fun b_next!22693 () Bool)

(assert (=> start!96076 (= b_free!22693 (not b_next!22693))))

(declare-fun tp!79929 () Bool)

(declare-fun b_and!36079 () Bool)

(assert (=> start!96076 (= tp!79929 b_and!36079)))

(declare-fun b!1088936 () Bool)

(declare-fun e!622020 () Bool)

(declare-fun e!622018 () Bool)

(declare-fun mapRes!41797 () Bool)

(assert (=> b!1088936 (= e!622020 (and e!622018 mapRes!41797))))

(declare-fun condMapEmpty!41797 () Bool)

(declare-datatypes ((V!40721 0))(
  ( (V!40722 (val!13404 Int)) )
))
(declare-datatypes ((ValueCell!12638 0))(
  ( (ValueCellFull!12638 (v!16026 V!40721)) (EmptyCell!12638) )
))
(declare-datatypes ((array!70282 0))(
  ( (array!70283 (arr!33811 (Array (_ BitVec 32) ValueCell!12638)) (size!34348 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70282)

(declare-fun mapDefault!41797 () ValueCell!12638)

