; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33722 () Bool)

(assert start!33722)

(declare-fun b_free!6949 () Bool)

(declare-fun b_next!6949 () Bool)

(assert (=> start!33722 (= b_free!6949 (not b_next!6949))))

(declare-fun tp!24351 () Bool)

(declare-fun b_and!14147 () Bool)

(assert (=> start!33722 (= tp!24351 b_and!14147)))

(declare-fun mapIsEmpty!11748 () Bool)

(declare-fun mapRes!11748 () Bool)

(assert (=> mapIsEmpty!11748 mapRes!11748))

(declare-fun b!334960 () Bool)

(declare-fun e!205623 () Bool)

(declare-fun e!205620 () Bool)

(assert (=> b!334960 (= e!205623 (and e!205620 mapRes!11748))))

(declare-fun condMapEmpty!11748 () Bool)

(declare-datatypes ((V!10179 0))(
  ( (V!10180 (val!3495 Int)) )
))
(declare-datatypes ((ValueCell!3107 0))(
  ( (ValueCellFull!3107 (v!5653 V!10179)) (EmptyCell!3107) )
))
(declare-datatypes ((array!17385 0))(
  ( (array!17386 (arr!8220 (Array (_ BitVec 32) ValueCell!3107)) (size!8572 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17385)

(declare-fun mapDefault!11748 () ValueCell!3107)

