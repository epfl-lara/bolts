; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33816 () Bool)

(assert start!33816)

(declare-fun b_free!7007 () Bool)

(declare-fun b_next!7007 () Bool)

(assert (=> start!33816 (= b_free!7007 (not b_next!7007))))

(declare-fun tp!24531 () Bool)

(declare-fun b_and!14209 () Bool)

(assert (=> start!33816 (= tp!24531 b_and!14209)))

(declare-fun b!336118 () Bool)

(declare-fun res!185588 () Bool)

(declare-fun e!206331 () Bool)

(assert (=> b!336118 (=> (not res!185588) (not e!206331))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!336118 (= res!185588 (validKeyInArray!0 k!1348))))

(declare-fun b!336119 () Bool)

(declare-fun e!206328 () Bool)

(declare-fun e!206329 () Bool)

(declare-fun mapRes!11841 () Bool)

(assert (=> b!336119 (= e!206328 (and e!206329 mapRes!11841))))

(declare-fun condMapEmpty!11841 () Bool)

(declare-datatypes ((V!10255 0))(
  ( (V!10256 (val!3524 Int)) )
))
(declare-datatypes ((ValueCell!3136 0))(
  ( (ValueCellFull!3136 (v!5684 V!10255)) (EmptyCell!3136) )
))
(declare-datatypes ((array!17499 0))(
  ( (array!17500 (arr!8275 (Array (_ BitVec 32) ValueCell!3136)) (size!8627 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17499)

(declare-fun mapDefault!11841 () ValueCell!3136)

