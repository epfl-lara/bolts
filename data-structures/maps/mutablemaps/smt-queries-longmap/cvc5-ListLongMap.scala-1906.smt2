; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33982 () Bool)

(assert start!33982)

(declare-fun b_free!7105 () Bool)

(declare-fun b_next!7105 () Bool)

(assert (=> start!33982 (= b_free!7105 (not b_next!7105))))

(declare-fun tp!24834 () Bool)

(declare-fun b_and!14313 () Bool)

(assert (=> start!33982 (= tp!24834 b_and!14313)))

(declare-fun b!338165 () Bool)

(declare-fun e!207507 () Bool)

(assert (=> b!338165 (= e!207507 false)))

(declare-datatypes ((Unit!10486 0))(
  ( (Unit!10487) )
))
(declare-fun lt!160747 () Unit!10486)

(declare-fun e!207510 () Unit!10486)

(assert (=> b!338165 (= lt!160747 e!207510)))

(declare-fun c!52340 () Bool)

(declare-datatypes ((array!17681 0))(
  ( (array!17682 (arr!8363 (Array (_ BitVec 32) (_ BitVec 64))) (size!8715 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17681)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17681 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!338165 (= c!52340 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!11997 () Bool)

(declare-fun mapRes!11997 () Bool)

(assert (=> mapIsEmpty!11997 mapRes!11997))

(declare-fun b!338166 () Bool)

(declare-fun res!186863 () Bool)

(declare-fun e!207506 () Bool)

(assert (=> b!338166 (=> (not res!186863) (not e!207506))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17681 (_ BitVec 32)) Bool)

(assert (=> b!338166 (= res!186863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!338167 () Bool)

(declare-fun e!207504 () Bool)

(declare-fun tp_is_empty!7057 () Bool)

(assert (=> b!338167 (= e!207504 tp_is_empty!7057)))

(declare-fun b!338168 () Bool)

(declare-fun e!207509 () Bool)

(assert (=> b!338168 (= e!207509 tp_is_empty!7057)))

(declare-fun b!338169 () Bool)

(declare-fun e!207508 () Bool)

(assert (=> b!338169 (= e!207508 (and e!207509 mapRes!11997))))

(declare-fun condMapEmpty!11997 () Bool)

(declare-datatypes ((V!10387 0))(
  ( (V!10388 (val!3573 Int)) )
))
(declare-datatypes ((ValueCell!3185 0))(
  ( (ValueCellFull!3185 (v!5736 V!10387)) (EmptyCell!3185) )
))
(declare-datatypes ((array!17683 0))(
  ( (array!17684 (arr!8364 (Array (_ BitVec 32) ValueCell!3185)) (size!8716 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17683)

(declare-fun mapDefault!11997 () ValueCell!3185)

