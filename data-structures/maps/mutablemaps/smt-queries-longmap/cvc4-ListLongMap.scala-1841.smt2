; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33382 () Bool)

(assert start!33382)

(declare-fun b!331404 () Bool)

(declare-fun e!203361 () Bool)

(declare-fun tp_is_empty!6671 () Bool)

(assert (=> b!331404 (= e!203361 tp_is_empty!6671)))

(declare-fun mapNonEmpty!11376 () Bool)

(declare-fun mapRes!11376 () Bool)

(declare-fun tp!23751 () Bool)

(declare-fun e!203364 () Bool)

(assert (=> mapNonEmpty!11376 (= mapRes!11376 (and tp!23751 e!203364))))

(declare-datatypes ((V!9871 0))(
  ( (V!9872 (val!3380 Int)) )
))
(declare-datatypes ((ValueCell!2992 0))(
  ( (ValueCellFull!2992 (v!5534 V!9871)) (EmptyCell!2992) )
))
(declare-datatypes ((array!16937 0))(
  ( (array!16938 (arr!8005 (Array (_ BitVec 32) ValueCell!2992)) (size!8357 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!16937)

(declare-fun mapRest!11376 () (Array (_ BitVec 32) ValueCell!2992))

(declare-fun mapValue!11376 () ValueCell!2992)

(declare-fun mapKey!11376 () (_ BitVec 32))

(assert (=> mapNonEmpty!11376 (= (arr!8005 _values!1525) (store mapRest!11376 mapKey!11376 mapValue!11376))))

(declare-fun b!331405 () Bool)

(assert (=> b!331405 (= e!203364 tp_is_empty!6671)))

(declare-fun mapIsEmpty!11376 () Bool)

(assert (=> mapIsEmpty!11376 mapRes!11376))

(declare-fun b!331406 () Bool)

(declare-fun e!203363 () Bool)

(assert (=> b!331406 (= e!203363 (and e!203361 mapRes!11376))))

(declare-fun condMapEmpty!11376 () Bool)

(declare-fun mapDefault!11376 () ValueCell!2992)

