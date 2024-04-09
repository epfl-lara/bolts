; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34418 () Bool)

(assert start!34418)

(declare-fun b_free!7333 () Bool)

(declare-fun b_next!7333 () Bool)

(assert (=> start!34418 (= b_free!7333 (not b_next!7333))))

(declare-fun tp!25544 () Bool)

(declare-fun b_and!14559 () Bool)

(assert (=> start!34418 (= tp!25544 b_and!14559)))

(declare-fun b!343340 () Bool)

(declare-fun e!210543 () Bool)

(declare-fun e!210539 () Bool)

(declare-fun mapRes!12366 () Bool)

(assert (=> b!343340 (= e!210543 (and e!210539 mapRes!12366))))

(declare-fun condMapEmpty!12366 () Bool)

(declare-datatypes ((V!10691 0))(
  ( (V!10692 (val!3687 Int)) )
))
(declare-datatypes ((ValueCell!3299 0))(
  ( (ValueCellFull!3299 (v!5859 V!10691)) (EmptyCell!3299) )
))
(declare-datatypes ((array!18135 0))(
  ( (array!18136 (arr!8581 (Array (_ BitVec 32) ValueCell!3299)) (size!8933 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18135)

(declare-fun mapDefault!12366 () ValueCell!3299)

