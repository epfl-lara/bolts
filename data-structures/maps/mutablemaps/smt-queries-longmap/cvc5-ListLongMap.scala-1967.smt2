; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34612 () Bool)

(assert start!34612)

(declare-fun b_free!7471 () Bool)

(declare-fun b_next!7471 () Bool)

(assert (=> start!34612 (= b_free!7471 (not b_next!7471))))

(declare-fun tp!25968 () Bool)

(declare-fun b_and!14703 () Bool)

(assert (=> start!34612 (= tp!25968 b_and!14703)))

(declare-fun b!345604 () Bool)

(declare-fun res!191246 () Bool)

(declare-fun e!211836 () Bool)

(assert (=> b!345604 (=> (not res!191246) (not e!211836))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!345604 (= res!191246 (validKeyInArray!0 k!1348))))

(declare-fun b!345605 () Bool)

(declare-fun e!211839 () Bool)

(declare-fun e!211835 () Bool)

(declare-fun mapRes!12582 () Bool)

(assert (=> b!345605 (= e!211839 (and e!211835 mapRes!12582))))

(declare-fun condMapEmpty!12582 () Bool)

(declare-datatypes ((V!10875 0))(
  ( (V!10876 (val!3756 Int)) )
))
(declare-datatypes ((ValueCell!3368 0))(
  ( (ValueCellFull!3368 (v!5931 V!10875)) (EmptyCell!3368) )
))
(declare-datatypes ((array!18403 0))(
  ( (array!18404 (arr!8712 (Array (_ BitVec 32) ValueCell!3368)) (size!9064 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18403)

(declare-fun mapDefault!12582 () ValueCell!3368)

