; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110470 () Bool)

(assert start!110470)

(declare-fun mapNonEmpty!54127 () Bool)

(declare-fun mapRes!54127 () Bool)

(declare-fun tp!103208 () Bool)

(declare-fun e!745351 () Bool)

(assert (=> mapNonEmpty!54127 (= mapRes!54127 (and tp!103208 e!745351))))

(declare-datatypes ((V!51769 0))(
  ( (V!51770 (val!17574 Int)) )
))
(declare-datatypes ((ValueCell!16601 0))(
  ( (ValueCellFull!16601 (v!20199 V!51769)) (EmptyCell!16601) )
))
(declare-fun mapRest!54127 () (Array (_ BitVec 32) ValueCell!16601))

(declare-fun mapKey!54127 () (_ BitVec 32))

(declare-datatypes ((array!86989 0))(
  ( (array!86990 (arr!41970 (Array (_ BitVec 32) ValueCell!16601)) (size!42521 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!86989)

(declare-fun mapValue!54127 () ValueCell!16601)

(assert (=> mapNonEmpty!54127 (= (arr!41970 _values!1354) (store mapRest!54127 mapKey!54127 mapValue!54127))))

(declare-fun b!1306415 () Bool)

(declare-fun e!745353 () Bool)

(assert (=> b!1306415 (= e!745353 false)))

(declare-fun lt!584863 () Bool)

(declare-datatypes ((array!86991 0))(
  ( (array!86992 (arr!41971 (Array (_ BitVec 32) (_ BitVec 64))) (size!42522 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!86991)

(declare-datatypes ((List!29978 0))(
  ( (Nil!29975) (Cons!29974 (h!31183 (_ BitVec 64)) (t!43591 List!29978)) )
))
(declare-fun arrayNoDuplicates!0 (array!86991 (_ BitVec 32) List!29978) Bool)

(assert (=> b!1306415 (= lt!584863 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29975))))

(declare-fun mapIsEmpty!54127 () Bool)

(assert (=> mapIsEmpty!54127 mapRes!54127))

(declare-fun b!1306416 () Bool)

(declare-fun tp_is_empty!34999 () Bool)

(assert (=> b!1306416 (= e!745351 tp_is_empty!34999)))

(declare-fun b!1306417 () Bool)

(declare-fun e!745355 () Bool)

(declare-fun e!745352 () Bool)

(assert (=> b!1306417 (= e!745355 (and e!745352 mapRes!54127))))

(declare-fun condMapEmpty!54127 () Bool)

(declare-fun mapDefault!54127 () ValueCell!16601)

