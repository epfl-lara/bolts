; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82928 () Bool)

(assert start!82928)

(declare-fun b_free!19027 () Bool)

(declare-fun b_next!19027 () Bool)

(assert (=> start!82928 (= b_free!19027 (not b_next!19027))))

(declare-fun tp!66210 () Bool)

(declare-fun b_and!30533 () Bool)

(assert (=> start!82928 (= tp!66210 b_and!30533)))

(declare-fun b!967134 () Bool)

(declare-fun e!545160 () Bool)

(declare-fun e!545162 () Bool)

(declare-fun mapRes!34747 () Bool)

(assert (=> b!967134 (= e!545160 (and e!545162 mapRes!34747))))

(declare-fun condMapEmpty!34747 () Bool)

(declare-datatypes ((V!34097 0))(
  ( (V!34098 (val!10968 Int)) )
))
(declare-datatypes ((ValueCell!10436 0))(
  ( (ValueCellFull!10436 (v!13526 V!34097)) (EmptyCell!10436) )
))
(declare-datatypes ((array!59727 0))(
  ( (array!59728 (arr!28728 (Array (_ BitVec 32) ValueCell!10436)) (size!29208 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59727)

(declare-fun mapDefault!34747 () ValueCell!10436)

