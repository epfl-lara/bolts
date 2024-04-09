; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36926 () Bool)

(assert start!36926)

(declare-fun b_free!8045 () Bool)

(declare-fun b_next!8045 () Bool)

(assert (=> start!36926 (= b_free!8045 (not b_next!8045))))

(declare-fun tp!28850 () Bool)

(declare-fun b_and!15305 () Bool)

(assert (=> start!36926 (= tp!28850 b_and!15305)))

(declare-fun b!369722 () Bool)

(declare-fun e!225907 () Bool)

(declare-fun tp_is_empty!8693 () Bool)

(assert (=> b!369722 (= e!225907 tp_is_empty!8693)))

(declare-fun mapNonEmpty!14604 () Bool)

(declare-fun mapRes!14604 () Bool)

(declare-fun tp!28851 () Bool)

(declare-fun e!225909 () Bool)

(assert (=> mapNonEmpty!14604 (= mapRes!14604 (and tp!28851 e!225909))))

(declare-datatypes ((V!12695 0))(
  ( (V!12696 (val!4391 Int)) )
))
(declare-datatypes ((ValueCell!4003 0))(
  ( (ValueCellFull!4003 (v!6584 V!12695)) (EmptyCell!4003) )
))
(declare-datatypes ((array!21309 0))(
  ( (array!21310 (arr!10120 (Array (_ BitVec 32) ValueCell!4003)) (size!10472 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21309)

(declare-fun mapKey!14604 () (_ BitVec 32))

(declare-fun mapValue!14604 () ValueCell!4003)

(declare-fun mapRest!14604 () (Array (_ BitVec 32) ValueCell!4003))

(assert (=> mapNonEmpty!14604 (= (arr!10120 _values!506) (store mapRest!14604 mapKey!14604 mapValue!14604))))

(declare-fun b!369723 () Bool)

(declare-fun e!225908 () Bool)

(assert (=> b!369723 (= e!225908 (and e!225907 mapRes!14604))))

(declare-fun condMapEmpty!14604 () Bool)

(declare-fun mapDefault!14604 () ValueCell!4003)

