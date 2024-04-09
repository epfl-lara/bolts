; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82878 () Bool)

(assert start!82878)

(declare-fun b_free!18977 () Bool)

(declare-fun b_next!18977 () Bool)

(assert (=> start!82878 (= b_free!18977 (not b_next!18977))))

(declare-fun tp!66061 () Bool)

(declare-fun b_and!30483 () Bool)

(assert (=> start!82878 (= tp!66061 b_and!30483)))

(declare-fun b!966356 () Bool)

(declare-fun res!646959 () Bool)

(declare-fun e!544785 () Bool)

(assert (=> b!966356 (=> (not res!646959) (not e!544785))))

(declare-datatypes ((array!59633 0))(
  ( (array!59634 (arr!28681 (Array (_ BitVec 32) (_ BitVec 64))) (size!29161 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59633)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966356 (= res!646959 (validKeyInArray!0 (select (arr!28681 _keys!1686) i!803)))))

(declare-fun b!966357 () Bool)

(declare-fun e!544787 () Bool)

(declare-fun e!544786 () Bool)

(declare-fun mapRes!34672 () Bool)

(assert (=> b!966357 (= e!544787 (and e!544786 mapRes!34672))))

(declare-fun condMapEmpty!34672 () Bool)

(declare-datatypes ((V!34029 0))(
  ( (V!34030 (val!10943 Int)) )
))
(declare-datatypes ((ValueCell!10411 0))(
  ( (ValueCellFull!10411 (v!13501 V!34029)) (EmptyCell!10411) )
))
(declare-datatypes ((array!59635 0))(
  ( (array!59636 (arr!28682 (Array (_ BitVec 32) ValueCell!10411)) (size!29162 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59635)

(declare-fun mapDefault!34672 () ValueCell!10411)

