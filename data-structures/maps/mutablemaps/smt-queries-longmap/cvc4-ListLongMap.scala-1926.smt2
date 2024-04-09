; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34214 () Bool)

(assert start!34214)

(declare-fun b_free!7229 () Bool)

(declare-fun b_next!7229 () Bool)

(assert (=> start!34214 (= b_free!7229 (not b_next!7229))))

(declare-fun tp!25221 () Bool)

(declare-fun b_and!14447 () Bool)

(assert (=> start!34214 (= tp!25221 b_and!14447)))

(declare-fun b!340919 () Bool)

(declare-fun res!188477 () Bool)

(declare-fun e!209114 () Bool)

(assert (=> b!340919 (=> (not res!188477) (not e!209114))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10551 0))(
  ( (V!10552 (val!3635 Int)) )
))
(declare-datatypes ((ValueCell!3247 0))(
  ( (ValueCellFull!3247 (v!5803 V!10551)) (EmptyCell!3247) )
))
(declare-datatypes ((array!17927 0))(
  ( (array!17928 (arr!8481 (Array (_ BitVec 32) ValueCell!3247)) (size!8833 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17927)

(declare-datatypes ((array!17929 0))(
  ( (array!17930 (arr!8482 (Array (_ BitVec 32) (_ BitVec 64))) (size!8834 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17929)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!340919 (= res!188477 (and (= (size!8833 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8834 _keys!1895) (size!8833 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!340920 () Bool)

(declare-fun e!209111 () Bool)

(declare-fun e!209112 () Bool)

(declare-fun mapRes!12198 () Bool)

(assert (=> b!340920 (= e!209111 (and e!209112 mapRes!12198))))

(declare-fun condMapEmpty!12198 () Bool)

(declare-fun mapDefault!12198 () ValueCell!3247)

