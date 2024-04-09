; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20634 () Bool)

(assert start!20634)

(declare-fun b_free!5281 () Bool)

(declare-fun b_next!5281 () Bool)

(assert (=> start!20634 (= b_free!5281 (not b_next!5281))))

(declare-fun tp!18875 () Bool)

(declare-fun b_and!12045 () Bool)

(assert (=> start!20634 (= tp!18875 b_and!12045)))

(declare-fun b!205660 () Bool)

(declare-fun res!99455 () Bool)

(declare-fun e!134483 () Bool)

(assert (=> b!205660 (=> (not res!99455) (not e!134483))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205660 (= res!99455 (validKeyInArray!0 k!843))))

(declare-fun b!205661 () Bool)

(declare-fun e!134484 () Bool)

(declare-fun e!134485 () Bool)

(declare-fun mapRes!8774 () Bool)

(assert (=> b!205661 (= e!134484 (and e!134485 mapRes!8774))))

(declare-fun condMapEmpty!8774 () Bool)

(declare-datatypes ((V!6497 0))(
  ( (V!6498 (val!2613 Int)) )
))
(declare-datatypes ((ValueCell!2225 0))(
  ( (ValueCellFull!2225 (v!4579 V!6497)) (EmptyCell!2225) )
))
(declare-datatypes ((array!9486 0))(
  ( (array!9487 (arr!4493 (Array (_ BitVec 32) ValueCell!2225)) (size!4818 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9486)

(declare-fun mapDefault!8774 () ValueCell!2225)

