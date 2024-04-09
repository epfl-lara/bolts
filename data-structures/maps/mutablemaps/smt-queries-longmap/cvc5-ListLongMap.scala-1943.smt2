; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34386 () Bool)

(assert start!34386)

(declare-fun b_free!7327 () Bool)

(declare-fun b_next!7327 () Bool)

(assert (=> start!34386 (= b_free!7327 (not b_next!7327))))

(declare-fun tp!25524 () Bool)

(declare-fun b_and!14551 () Bool)

(assert (=> start!34386 (= tp!25524 b_and!14551)))

(declare-fun b!343085 () Bool)

(declare-fun e!210383 () Bool)

(declare-fun tp_is_empty!7279 () Bool)

(assert (=> b!343085 (= e!210383 tp_is_empty!7279)))

(declare-fun b!343086 () Bool)

(declare-datatypes ((Unit!10715 0))(
  ( (Unit!10716) )
))
(declare-fun e!210384 () Unit!10715)

(declare-fun Unit!10717 () Unit!10715)

(assert (=> b!343086 (= e!210384 Unit!10717)))

(declare-fun b!343087 () Bool)

(declare-fun e!210389 () Bool)

(assert (=> b!343087 (= e!210389 tp_is_empty!7279)))

(declare-fun b!343088 () Bool)

(declare-fun res!189722 () Bool)

(declare-fun e!210386 () Bool)

(assert (=> b!343088 (=> (not res!189722) (not e!210386))))

(declare-datatypes ((SeekEntryResult!3307 0))(
  ( (MissingZero!3307 (index!15407 (_ BitVec 32))) (Found!3307 (index!15408 (_ BitVec 32))) (Intermediate!3307 (undefined!4119 Bool) (index!15409 (_ BitVec 32)) (x!34158 (_ BitVec 32))) (Undefined!3307) (MissingVacant!3307 (index!15410 (_ BitVec 32))) )
))
(declare-fun lt!162402 () SeekEntryResult!3307)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!343088 (= res!189722 (inRange!0 (index!15410 lt!162402) mask!2385))))

(declare-fun b!343089 () Bool)

(declare-fun e!210385 () Bool)

(declare-fun mapRes!12354 () Bool)

(assert (=> b!343089 (= e!210385 (and e!210383 mapRes!12354))))

(declare-fun condMapEmpty!12354 () Bool)

(declare-datatypes ((V!10683 0))(
  ( (V!10684 (val!3684 Int)) )
))
(declare-datatypes ((ValueCell!3296 0))(
  ( (ValueCellFull!3296 (v!5855 V!10683)) (EmptyCell!3296) )
))
(declare-datatypes ((array!18123 0))(
  ( (array!18124 (arr!8576 (Array (_ BitVec 32) ValueCell!3296)) (size!8928 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18123)

(declare-fun mapDefault!12354 () ValueCell!3296)

