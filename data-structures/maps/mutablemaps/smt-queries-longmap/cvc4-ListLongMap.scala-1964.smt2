; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34542 () Bool)

(assert start!34542)

(declare-fun b_free!7457 () Bool)

(declare-fun b_next!7457 () Bool)

(assert (=> start!34542 (= b_free!7457 (not b_next!7457))))

(declare-fun tp!25916 () Bool)

(declare-fun b_and!14683 () Bool)

(assert (=> start!34542 (= tp!25916 b_and!14683)))

(declare-fun b!345014 () Bool)

(declare-fun e!211470 () Bool)

(declare-fun tp_is_empty!7409 () Bool)

(assert (=> b!345014 (= e!211470 tp_is_empty!7409)))

(declare-fun b!345015 () Bool)

(declare-fun res!190964 () Bool)

(declare-fun e!211471 () Bool)

(assert (=> b!345015 (=> (not res!190964) (not e!211471))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!345015 (= res!190964 (validKeyInArray!0 k!1348))))

(declare-fun b!345016 () Bool)

(declare-fun e!211469 () Bool)

(assert (=> b!345016 (= e!211469 tp_is_empty!7409)))

(declare-fun b!345017 () Bool)

(declare-fun e!211472 () Bool)

(declare-fun mapRes!12552 () Bool)

(assert (=> b!345017 (= e!211472 (and e!211469 mapRes!12552))))

(declare-fun condMapEmpty!12552 () Bool)

(declare-datatypes ((V!10855 0))(
  ( (V!10856 (val!3749 Int)) )
))
(declare-datatypes ((ValueCell!3361 0))(
  ( (ValueCellFull!3361 (v!5921 V!10855)) (EmptyCell!3361) )
))
(declare-datatypes ((array!18373 0))(
  ( (array!18374 (arr!8700 (Array (_ BitVec 32) ValueCell!3361)) (size!9052 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18373)

(declare-fun mapDefault!12552 () ValueCell!3361)

