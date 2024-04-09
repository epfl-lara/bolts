; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41316 () Bool)

(assert start!41316)

(declare-fun b!461802 () Bool)

(declare-fun e!269393 () Bool)

(declare-datatypes ((array!28675 0))(
  ( (array!28676 (arr!13771 (Array (_ BitVec 32) (_ BitVec 64))) (size!14123 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28675)

(assert (=> b!461802 (= e!269393 (and (bvsle #b00000000000000000000000000000000 (size!14123 _keys!1025)) (bvsge (size!14123 _keys!1025) #b01111111111111111111111111111111)))))

(declare-fun mapIsEmpty!20344 () Bool)

(declare-fun mapRes!20344 () Bool)

(assert (=> mapIsEmpty!20344 mapRes!20344))

(declare-fun b!461803 () Bool)

(declare-fun e!269395 () Bool)

(declare-fun tp_is_empty!12455 () Bool)

(assert (=> b!461803 (= e!269395 tp_is_empty!12455)))

(declare-fun b!461804 () Bool)

(declare-fun e!269394 () Bool)

(declare-fun e!269392 () Bool)

(assert (=> b!461804 (= e!269394 (and e!269392 mapRes!20344))))

(declare-fun condMapEmpty!20344 () Bool)

(declare-datatypes ((V!17711 0))(
  ( (V!17712 (val!6272 Int)) )
))
(declare-datatypes ((ValueCell!5884 0))(
  ( (ValueCellFull!5884 (v!8554 V!17711)) (EmptyCell!5884) )
))
(declare-datatypes ((array!28677 0))(
  ( (array!28678 (arr!13772 (Array (_ BitVec 32) ValueCell!5884)) (size!14124 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28677)

(declare-fun mapDefault!20344 () ValueCell!5884)

