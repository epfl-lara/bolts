; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33764 () Bool)

(assert start!33764)

(declare-fun b_free!6991 () Bool)

(declare-fun b_next!6991 () Bool)

(assert (=> start!33764 (= b_free!6991 (not b_next!6991))))

(declare-fun tp!24477 () Bool)

(declare-fun b_and!14189 () Bool)

(assert (=> start!33764 (= tp!24477 b_and!14189)))

(declare-fun b!335631 () Bool)

(declare-fun e!206039 () Bool)

(declare-fun e!206037 () Bool)

(declare-fun mapRes!11811 () Bool)

(assert (=> b!335631 (= e!206039 (and e!206037 mapRes!11811))))

(declare-fun condMapEmpty!11811 () Bool)

(declare-datatypes ((V!10235 0))(
  ( (V!10236 (val!3516 Int)) )
))
(declare-datatypes ((ValueCell!3128 0))(
  ( (ValueCellFull!3128 (v!5674 V!10235)) (EmptyCell!3128) )
))
(declare-datatypes ((array!17465 0))(
  ( (array!17466 (arr!8260 (Array (_ BitVec 32) ValueCell!3128)) (size!8612 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17465)

(declare-fun mapDefault!11811 () ValueCell!3128)

