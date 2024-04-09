; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111122 () Bool)

(assert start!111122)

(declare-fun b_free!29921 () Bool)

(declare-fun b_next!29921 () Bool)

(assert (=> start!111122 (= b_free!29921 (not b_next!29921))))

(declare-fun tp!105085 () Bool)

(declare-fun b_and!48139 () Bool)

(assert (=> start!111122 (= tp!105085 b_and!48139)))

(declare-fun b!1315157 () Bool)

(declare-fun e!750243 () Bool)

(declare-fun tp_is_empty!35651 () Bool)

(assert (=> b!1315157 (= e!750243 tp_is_empty!35651)))

(declare-fun b!1315158 () Bool)

(declare-fun e!750245 () Bool)

(declare-fun mapRes!55105 () Bool)

(assert (=> b!1315158 (= e!750245 (and e!750243 mapRes!55105))))

(declare-fun condMapEmpty!55105 () Bool)

(declare-datatypes ((V!52637 0))(
  ( (V!52638 (val!17900 Int)) )
))
(declare-datatypes ((ValueCell!16927 0))(
  ( (ValueCellFull!16927 (v!20525 V!52637)) (EmptyCell!16927) )
))
(declare-datatypes ((array!88231 0))(
  ( (array!88232 (arr!42591 (Array (_ BitVec 32) ValueCell!16927)) (size!43142 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88231)

(declare-fun mapDefault!55105 () ValueCell!16927)

