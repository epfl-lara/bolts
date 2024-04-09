; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111164 () Bool)

(assert start!111164)

(declare-fun b_free!29963 () Bool)

(declare-fun b_next!29963 () Bool)

(assert (=> start!111164 (= b_free!29963 (not b_next!29963))))

(declare-fun tp!105212 () Bool)

(declare-fun b_and!48181 () Bool)

(assert (=> start!111164 (= tp!105212 b_and!48181)))

(declare-fun b!1315665 () Bool)

(declare-fun e!750558 () Bool)

(declare-fun e!750556 () Bool)

(declare-fun mapRes!55168 () Bool)

(assert (=> b!1315665 (= e!750558 (and e!750556 mapRes!55168))))

(declare-fun condMapEmpty!55168 () Bool)

(declare-datatypes ((V!52693 0))(
  ( (V!52694 (val!17921 Int)) )
))
(declare-datatypes ((ValueCell!16948 0))(
  ( (ValueCellFull!16948 (v!20546 V!52693)) (EmptyCell!16948) )
))
(declare-datatypes ((array!88307 0))(
  ( (array!88308 (arr!42629 (Array (_ BitVec 32) ValueCell!16948)) (size!43180 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88307)

(declare-fun mapDefault!55168 () ValueCell!16948)

