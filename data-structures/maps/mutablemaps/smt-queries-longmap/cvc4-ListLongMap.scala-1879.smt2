; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33720 () Bool)

(assert start!33720)

(declare-fun b_free!6947 () Bool)

(declare-fun b_next!6947 () Bool)

(assert (=> start!33720 (= b_free!6947 (not b_next!6947))))

(declare-fun tp!24344 () Bool)

(declare-fun b_and!14145 () Bool)

(assert (=> start!33720 (= tp!24344 b_and!14145)))

(declare-fun b!334927 () Bool)

(declare-fun e!205596 () Bool)

(declare-fun e!205600 () Bool)

(declare-fun mapRes!11745 () Bool)

(assert (=> b!334927 (= e!205596 (and e!205600 mapRes!11745))))

(declare-fun condMapEmpty!11745 () Bool)

(declare-datatypes ((V!10175 0))(
  ( (V!10176 (val!3494 Int)) )
))
(declare-datatypes ((ValueCell!3106 0))(
  ( (ValueCellFull!3106 (v!5652 V!10175)) (EmptyCell!3106) )
))
(declare-datatypes ((array!17383 0))(
  ( (array!17384 (arr!8219 (Array (_ BitVec 32) ValueCell!3106)) (size!8571 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17383)

(declare-fun mapDefault!11745 () ValueCell!3106)

