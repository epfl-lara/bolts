; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96408 () Bool)

(assert start!96408)

(declare-fun b_free!22951 () Bool)

(declare-fun b_next!22951 () Bool)

(assert (=> start!96408 (= b_free!22951 (not b_next!22951))))

(declare-fun tp!80781 () Bool)

(declare-fun b_and!36595 () Bool)

(assert (=> start!96408 (= tp!80781 b_and!36595)))

(declare-fun b!1095116 () Bool)

(declare-fun e!625267 () Bool)

(declare-fun e!625269 () Bool)

(declare-fun mapRes!42262 () Bool)

(assert (=> b!1095116 (= e!625267 (and e!625269 mapRes!42262))))

(declare-fun condMapEmpty!42262 () Bool)

(declare-datatypes ((V!41129 0))(
  ( (V!41130 (val!13557 Int)) )
))
(declare-datatypes ((ValueCell!12791 0))(
  ( (ValueCellFull!12791 (v!16179 V!41129)) (EmptyCell!12791) )
))
(declare-datatypes ((array!70872 0))(
  ( (array!70873 (arr!34104 (Array (_ BitVec 32) ValueCell!12791)) (size!34641 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70872)

(declare-fun mapDefault!42262 () ValueCell!12791)

