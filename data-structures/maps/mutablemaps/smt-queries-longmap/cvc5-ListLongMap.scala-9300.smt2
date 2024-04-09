; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111184 () Bool)

(assert start!111184)

(declare-fun b_free!29983 () Bool)

(declare-fun b_next!29983 () Bool)

(assert (=> start!111184 (= b_free!29983 (not b_next!29983))))

(declare-fun tp!105271 () Bool)

(declare-fun b_and!48201 () Bool)

(assert (=> start!111184 (= tp!105271 b_and!48201)))

(declare-fun mapNonEmpty!55198 () Bool)

(declare-fun mapRes!55198 () Bool)

(declare-fun tp!105272 () Bool)

(declare-fun e!750707 () Bool)

(assert (=> mapNonEmpty!55198 (= mapRes!55198 (and tp!105272 e!750707))))

(declare-datatypes ((V!52721 0))(
  ( (V!52722 (val!17931 Int)) )
))
(declare-datatypes ((ValueCell!16958 0))(
  ( (ValueCellFull!16958 (v!20556 V!52721)) (EmptyCell!16958) )
))
(declare-fun mapValue!55198 () ValueCell!16958)

(declare-fun mapKey!55198 () (_ BitVec 32))

(declare-datatypes ((array!88345 0))(
  ( (array!88346 (arr!42648 (Array (_ BitVec 32) ValueCell!16958)) (size!43199 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88345)

(declare-fun mapRest!55198 () (Array (_ BitVec 32) ValueCell!16958))

(assert (=> mapNonEmpty!55198 (= (arr!42648 _values!1354) (store mapRest!55198 mapKey!55198 mapValue!55198))))

(declare-fun b!1315905 () Bool)

(declare-fun e!750710 () Bool)

(declare-fun e!750706 () Bool)

(assert (=> b!1315905 (= e!750710 (and e!750706 mapRes!55198))))

(declare-fun condMapEmpty!55198 () Bool)

(declare-fun mapDefault!55198 () ValueCell!16958)

