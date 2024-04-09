; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36008 () Bool)

(assert start!36008)

(declare-fun b!361398 () Bool)

(declare-fun e!221353 () Bool)

(declare-fun tp_is_empty!8393 () Bool)

(assert (=> b!361398 (= e!221353 tp_is_empty!8393)))

(declare-fun mapIsEmpty!14115 () Bool)

(declare-fun mapRes!14115 () Bool)

(assert (=> mapIsEmpty!14115 mapRes!14115))

(declare-fun mapNonEmpty!14115 () Bool)

(declare-fun tp!28191 () Bool)

(assert (=> mapNonEmpty!14115 (= mapRes!14115 (and tp!28191 e!221353))))

(declare-fun mapKey!14115 () (_ BitVec 32))

(declare-datatypes ((V!12167 0))(
  ( (V!12168 (val!4241 Int)) )
))
(declare-datatypes ((ValueCell!3853 0))(
  ( (ValueCellFull!3853 (v!6432 V!12167)) (EmptyCell!3853) )
))
(declare-fun mapRest!14115 () (Array (_ BitVec 32) ValueCell!3853))

(declare-datatypes ((array!20313 0))(
  ( (array!20314 (arr!9641 (Array (_ BitVec 32) ValueCell!3853)) (size!9993 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20313)

(declare-fun mapValue!14115 () ValueCell!3853)

(assert (=> mapNonEmpty!14115 (= (arr!9641 _values!1277) (store mapRest!14115 mapKey!14115 mapValue!14115))))

(declare-fun b!361399 () Bool)

(declare-fun e!221355 () Bool)

(declare-fun e!221352 () Bool)

(assert (=> b!361399 (= e!221355 (and e!221352 mapRes!14115))))

(declare-fun condMapEmpty!14115 () Bool)

(declare-fun mapDefault!14115 () ValueCell!3853)

