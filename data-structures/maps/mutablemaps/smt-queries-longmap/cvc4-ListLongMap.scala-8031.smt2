; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99066 () Bool)

(assert start!99066)

(declare-fun b_free!24635 () Bool)

(declare-fun b_next!24635 () Bool)

(assert (=> start!99066 (= b_free!24635 (not b_next!24635))))

(declare-fun tp!86617 () Bool)

(declare-fun b_and!40133 () Bool)

(assert (=> start!99066 (= tp!86617 b_and!40133)))

(declare-fun b!1164030 () Bool)

(declare-fun e!661905 () Bool)

(declare-fun tp_is_empty!29165 () Bool)

(assert (=> b!1164030 (= e!661905 tp_is_empty!29165)))

(declare-fun b!1164031 () Bool)

(declare-fun e!661902 () Bool)

(declare-fun mapRes!45572 () Bool)

(assert (=> b!1164031 (= e!661902 (and e!661905 mapRes!45572))))

(declare-fun condMapEmpty!45572 () Bool)

(declare-datatypes ((V!44013 0))(
  ( (V!44014 (val!14639 Int)) )
))
(declare-datatypes ((ValueCell!13873 0))(
  ( (ValueCellFull!13873 (v!17277 V!44013)) (EmptyCell!13873) )
))
(declare-datatypes ((array!75118 0))(
  ( (array!75119 (arr!36206 (Array (_ BitVec 32) ValueCell!13873)) (size!36743 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75118)

(declare-fun mapDefault!45572 () ValueCell!13873)

