; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95806 () Bool)

(assert start!95806)

(declare-fun b_free!22423 () Bool)

(declare-fun b_next!22423 () Bool)

(assert (=> start!95806 (= b_free!22423 (not b_next!22423))))

(declare-fun tp!79118 () Bool)

(declare-fun b_and!35539 () Bool)

(assert (=> start!95806 (= tp!79118 b_and!35539)))

(declare-fun mapNonEmpty!41392 () Bool)

(declare-fun mapRes!41392 () Bool)

(declare-fun tp!79119 () Bool)

(declare-fun e!619001 () Bool)

(assert (=> mapNonEmpty!41392 (= mapRes!41392 (and tp!79119 e!619001))))

(declare-fun mapKey!41392 () (_ BitVec 32))

(declare-datatypes ((V!40361 0))(
  ( (V!40362 (val!13269 Int)) )
))
(declare-datatypes ((ValueCell!12503 0))(
  ( (ValueCellFull!12503 (v!15891 V!40361)) (EmptyCell!12503) )
))
(declare-datatypes ((array!69752 0))(
  ( (array!69753 (arr!33546 (Array (_ BitVec 32) ValueCell!12503)) (size!34083 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69752)

(declare-fun mapValue!41392 () ValueCell!12503)

(declare-fun mapRest!41392 () (Array (_ BitVec 32) ValueCell!12503))

(assert (=> mapNonEmpty!41392 (= (arr!33546 _values!874) (store mapRest!41392 mapKey!41392 mapValue!41392))))

(declare-fun b!1083199 () Bool)

(declare-fun res!722170 () Bool)

(declare-fun e!618999 () Bool)

(assert (=> b!1083199 (=> (not res!722170) (not e!618999))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1083199 (= res!722170 (validKeyInArray!0 k!904))))

(declare-fun b!1083200 () Bool)

(declare-fun e!619003 () Bool)

(declare-fun tp_is_empty!26425 () Bool)

(assert (=> b!1083200 (= e!619003 tp_is_empty!26425)))

(declare-fun b!1083201 () Bool)

(declare-fun res!722172 () Bool)

(assert (=> b!1083201 (=> (not res!722172) (not e!618999))))

(declare-datatypes ((array!69754 0))(
  ( (array!69755 (arr!33547 (Array (_ BitVec 32) (_ BitVec 64))) (size!34084 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69754)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1083201 (= res!722172 (= (select (arr!33547 _keys!1070) i!650) k!904))))

(declare-fun b!1083202 () Bool)

(declare-fun e!618998 () Bool)

(assert (=> b!1083202 (= e!618998 (and e!619003 mapRes!41392))))

(declare-fun condMapEmpty!41392 () Bool)

(declare-fun mapDefault!41392 () ValueCell!12503)

