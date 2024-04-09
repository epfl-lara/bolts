; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33914 () Bool)

(assert start!33914)

(declare-fun b_free!7085 () Bool)

(declare-fun b_next!7085 () Bool)

(assert (=> start!33914 (= b_free!7085 (not b_next!7085))))

(declare-fun tp!24768 () Bool)

(declare-fun b_and!14289 () Bool)

(assert (=> start!33914 (= tp!24768 b_and!14289)))

(declare-fun b!337527 () Bool)

(declare-fun res!186552 () Bool)

(declare-fun e!207120 () Bool)

(assert (=> b!337527 (=> (not res!186552) (not e!207120))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!337527 (= res!186552 (validKeyInArray!0 k!1348))))

(declare-fun b!337528 () Bool)

(declare-fun e!207115 () Bool)

(declare-fun e!207114 () Bool)

(declare-fun mapRes!11961 () Bool)

(assert (=> b!337528 (= e!207115 (and e!207114 mapRes!11961))))

(declare-fun condMapEmpty!11961 () Bool)

(declare-datatypes ((V!10359 0))(
  ( (V!10360 (val!3563 Int)) )
))
(declare-datatypes ((ValueCell!3175 0))(
  ( (ValueCellFull!3175 (v!5724 V!10359)) (EmptyCell!3175) )
))
(declare-datatypes ((array!17641 0))(
  ( (array!17642 (arr!8345 (Array (_ BitVec 32) ValueCell!3175)) (size!8697 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17641)

(declare-fun mapDefault!11961 () ValueCell!3175)

