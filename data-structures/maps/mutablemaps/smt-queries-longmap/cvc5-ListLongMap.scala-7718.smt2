; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97000 () Bool)

(assert start!97000)

(declare-fun mapNonEmpty!42721 () Bool)

(declare-fun mapRes!42721 () Bool)

(declare-fun tp!81642 () Bool)

(declare-fun e!629688 () Bool)

(assert (=> mapNonEmpty!42721 (= mapRes!42721 (and tp!81642 e!629688))))

(declare-fun mapKey!42721 () (_ BitVec 32))

(declare-datatypes ((V!41505 0))(
  ( (V!41506 (val!13698 Int)) )
))
(declare-datatypes ((ValueCell!12932 0))(
  ( (ValueCellFull!12932 (v!16330 V!41505)) (EmptyCell!12932) )
))
(declare-fun mapValue!42721 () ValueCell!12932)

(declare-datatypes ((array!71440 0))(
  ( (array!71441 (arr!34376 (Array (_ BitVec 32) ValueCell!12932)) (size!34913 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71440)

(declare-fun mapRest!42721 () (Array (_ BitVec 32) ValueCell!12932))

(assert (=> mapNonEmpty!42721 (= (arr!34376 _values!996) (store mapRest!42721 mapKey!42721 mapValue!42721))))

(declare-fun b!1103077 () Bool)

(declare-fun e!629689 () Bool)

(declare-fun e!629691 () Bool)

(assert (=> b!1103077 (= e!629689 (and e!629691 mapRes!42721))))

(declare-fun condMapEmpty!42721 () Bool)

(declare-fun mapDefault!42721 () ValueCell!12932)

