; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42292 () Bool)

(assert start!42292)

(declare-fun b_free!11789 () Bool)

(declare-fun b_next!11789 () Bool)

(assert (=> start!42292 (= b_free!11789 (not b_next!11789))))

(declare-fun tp!41394 () Bool)

(declare-fun b_and!20245 () Bool)

(assert (=> start!42292 (= tp!41394 b_and!20245)))

(declare-fun b!471640 () Bool)

(declare-fun e!276478 () Bool)

(declare-fun e!276474 () Bool)

(declare-fun mapRes!21532 () Bool)

(assert (=> b!471640 (= e!276478 (and e!276474 mapRes!21532))))

(declare-fun condMapEmpty!21532 () Bool)

(declare-datatypes ((V!18727 0))(
  ( (V!18728 (val!6653 Int)) )
))
(declare-datatypes ((ValueCell!6265 0))(
  ( (ValueCellFull!6265 (v!8940 V!18727)) (EmptyCell!6265) )
))
(declare-datatypes ((array!30161 0))(
  ( (array!30162 (arr!14499 (Array (_ BitVec 32) ValueCell!6265)) (size!14851 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30161)

(declare-fun mapDefault!21532 () ValueCell!6265)

