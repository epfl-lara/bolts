; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111130 () Bool)

(assert start!111130)

(declare-fun b_free!29929 () Bool)

(declare-fun b_next!29929 () Bool)

(assert (=> start!111130 (= b_free!29929 (not b_next!29929))))

(declare-fun tp!105109 () Bool)

(declare-fun b_and!48147 () Bool)

(assert (=> start!111130 (= tp!105109 b_and!48147)))

(declare-fun b!1315257 () Bool)

(declare-fun e!750301 () Bool)

(declare-fun e!750305 () Bool)

(declare-fun mapRes!55117 () Bool)

(assert (=> b!1315257 (= e!750301 (and e!750305 mapRes!55117))))

(declare-fun condMapEmpty!55117 () Bool)

(declare-datatypes ((V!52649 0))(
  ( (V!52650 (val!17904 Int)) )
))
(declare-datatypes ((ValueCell!16931 0))(
  ( (ValueCellFull!16931 (v!20529 V!52649)) (EmptyCell!16931) )
))
(declare-datatypes ((array!88245 0))(
  ( (array!88246 (arr!42598 (Array (_ BitVec 32) ValueCell!16931)) (size!43149 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88245)

(declare-fun mapDefault!55117 () ValueCell!16931)

