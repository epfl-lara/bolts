; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33856 () Bool)

(assert start!33856)

(declare-fun b_free!7027 () Bool)

(declare-fun b_next!7027 () Bool)

(assert (=> start!33856 (= b_free!7027 (not b_next!7027))))

(declare-fun tp!24594 () Bool)

(declare-fun b_and!14231 () Bool)

(assert (=> start!33856 (= tp!24594 b_and!14231)))

(declare-fun b!336562 () Bool)

(declare-fun e!206584 () Bool)

(declare-fun e!206587 () Bool)

(declare-fun mapRes!11874 () Bool)

(assert (=> b!336562 (= e!206584 (and e!206587 mapRes!11874))))

(declare-fun condMapEmpty!11874 () Bool)

(declare-datatypes ((V!10283 0))(
  ( (V!10284 (val!3534 Int)) )
))
(declare-datatypes ((ValueCell!3146 0))(
  ( (ValueCellFull!3146 (v!5695 V!10283)) (EmptyCell!3146) )
))
(declare-datatypes ((array!17537 0))(
  ( (array!17538 (arr!8293 (Array (_ BitVec 32) ValueCell!3146)) (size!8645 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17537)

(declare-fun mapDefault!11874 () ValueCell!3146)

