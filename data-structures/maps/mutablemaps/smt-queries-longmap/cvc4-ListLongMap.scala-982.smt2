; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21226 () Bool)

(assert start!21226)

(declare-fun b_free!5645 () Bool)

(declare-fun b_next!5645 () Bool)

(assert (=> start!21226 (= b_free!5645 (not b_next!5645))))

(declare-fun tp!20009 () Bool)

(declare-fun b_and!12541 () Bool)

(assert (=> start!21226 (= tp!20009 b_and!12541)))

(declare-fun b!213690 () Bool)

(declare-fun e!138965 () Bool)

(declare-fun tp_is_empty!5507 () Bool)

(assert (=> b!213690 (= e!138965 tp_is_empty!5507)))

(declare-fun b!213691 () Bool)

(declare-fun e!138967 () Bool)

(declare-fun e!138966 () Bool)

(declare-fun mapRes!9362 () Bool)

(assert (=> b!213691 (= e!138967 (and e!138966 mapRes!9362))))

(declare-fun condMapEmpty!9362 () Bool)

(declare-datatypes ((V!6989 0))(
  ( (V!6990 (val!2798 Int)) )
))
(declare-datatypes ((ValueCell!2410 0))(
  ( (ValueCellFull!2410 (v!4808 V!6989)) (EmptyCell!2410) )
))
(declare-datatypes ((array!10218 0))(
  ( (array!10219 (arr!4848 (Array (_ BitVec 32) ValueCell!2410)) (size!5173 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10218)

(declare-fun mapDefault!9362 () ValueCell!2410)

