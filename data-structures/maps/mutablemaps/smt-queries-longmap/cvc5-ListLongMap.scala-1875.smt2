; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33692 () Bool)

(assert start!33692)

(declare-fun b_free!6919 () Bool)

(declare-fun b_next!6919 () Bool)

(assert (=> start!33692 (= b_free!6919 (not b_next!6919))))

(declare-fun tp!24261 () Bool)

(declare-fun b_and!14117 () Bool)

(assert (=> start!33692 (= tp!24261 b_and!14117)))

(declare-fun b!334465 () Bool)

(declare-fun e!205309 () Bool)

(declare-fun e!205310 () Bool)

(declare-fun mapRes!11703 () Bool)

(assert (=> b!334465 (= e!205309 (and e!205310 mapRes!11703))))

(declare-fun condMapEmpty!11703 () Bool)

(declare-datatypes ((V!10139 0))(
  ( (V!10140 (val!3480 Int)) )
))
(declare-datatypes ((ValueCell!3092 0))(
  ( (ValueCellFull!3092 (v!5638 V!10139)) (EmptyCell!3092) )
))
(declare-datatypes ((array!17329 0))(
  ( (array!17330 (arr!8192 (Array (_ BitVec 32) ValueCell!3092)) (size!8544 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17329)

(declare-fun mapDefault!11703 () ValueCell!3092)

