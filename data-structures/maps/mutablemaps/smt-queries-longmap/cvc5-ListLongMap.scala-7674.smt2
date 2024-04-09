; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96426 () Bool)

(assert start!96426)

(declare-fun b_free!22969 () Bool)

(declare-fun b_next!22969 () Bool)

(assert (=> start!96426 (= b_free!22969 (not b_next!22969))))

(declare-fun tp!80835 () Bool)

(declare-fun b_and!36619 () Bool)

(assert (=> start!96426 (= tp!80835 b_and!36619)))

(declare-fun mapNonEmpty!42289 () Bool)

(declare-fun mapRes!42289 () Bool)

(declare-fun tp!80834 () Bool)

(declare-fun e!625431 () Bool)

(assert (=> mapNonEmpty!42289 (= mapRes!42289 (and tp!80834 e!625431))))

(declare-datatypes ((V!41153 0))(
  ( (V!41154 (val!13566 Int)) )
))
(declare-datatypes ((ValueCell!12800 0))(
  ( (ValueCellFull!12800 (v!16188 V!41153)) (EmptyCell!12800) )
))
(declare-datatypes ((array!70906 0))(
  ( (array!70907 (arr!34121 (Array (_ BitVec 32) ValueCell!12800)) (size!34658 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70906)

(declare-fun mapKey!42289 () (_ BitVec 32))

(declare-fun mapValue!42289 () ValueCell!12800)

(declare-fun mapRest!42289 () (Array (_ BitVec 32) ValueCell!12800))

(assert (=> mapNonEmpty!42289 (= (arr!34121 _values!874) (store mapRest!42289 mapKey!42289 mapValue!42289))))

(declare-fun b!1095447 () Bool)

(declare-fun tp_is_empty!27019 () Bool)

(assert (=> b!1095447 (= e!625431 tp_is_empty!27019)))

(declare-fun b!1095448 () Bool)

(declare-fun e!625429 () Bool)

(declare-fun e!625430 () Bool)

(assert (=> b!1095448 (= e!625429 (and e!625430 mapRes!42289))))

(declare-fun condMapEmpty!42289 () Bool)

(declare-fun mapDefault!42289 () ValueCell!12800)

