; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106976 () Bool)

(assert start!106976)

(declare-fun b!1268171 () Bool)

(declare-fun e!722631 () Bool)

(declare-datatypes ((List!28554 0))(
  ( (Nil!28551) (Cons!28550 (h!29759 (_ BitVec 64)) (t!42090 List!28554)) )
))
(declare-fun noDuplicate!2070 (List!28554) Bool)

(assert (=> b!1268171 (= e!722631 (not (noDuplicate!2070 Nil!28551)))))

(declare-fun mapNonEmpty!50551 () Bool)

(declare-fun mapRes!50551 () Bool)

(declare-fun tp!96731 () Bool)

(declare-fun e!722632 () Bool)

(assert (=> mapNonEmpty!50551 (= mapRes!50551 (and tp!96731 e!722632))))

(declare-datatypes ((V!48727 0))(
  ( (V!48728 (val!16400 Int)) )
))
(declare-datatypes ((ValueCell!15472 0))(
  ( (ValueCellFull!15472 (v!19034 V!48727)) (EmptyCell!15472) )
))
(declare-datatypes ((array!82553 0))(
  ( (array!82554 (arr!39811 (Array (_ BitVec 32) ValueCell!15472)) (size!40348 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82553)

(declare-fun mapKey!50551 () (_ BitVec 32))

(declare-fun mapRest!50551 () (Array (_ BitVec 32) ValueCell!15472))

(declare-fun mapValue!50551 () ValueCell!15472)

(assert (=> mapNonEmpty!50551 (= (arr!39811 _values!1134) (store mapRest!50551 mapKey!50551 mapValue!50551))))

(declare-fun b!1268172 () Bool)

(declare-fun e!722634 () Bool)

(declare-fun tp_is_empty!32651 () Bool)

(assert (=> b!1268172 (= e!722634 tp_is_empty!32651)))

(declare-fun mapIsEmpty!50551 () Bool)

(assert (=> mapIsEmpty!50551 mapRes!50551))

(declare-fun b!1268173 () Bool)

(assert (=> b!1268173 (= e!722632 tp_is_empty!32651)))

(declare-fun b!1268174 () Bool)

(declare-fun e!722633 () Bool)

(assert (=> b!1268174 (= e!722633 (and e!722634 mapRes!50551))))

(declare-fun condMapEmpty!50551 () Bool)

(declare-fun mapDefault!50551 () ValueCell!15472)

