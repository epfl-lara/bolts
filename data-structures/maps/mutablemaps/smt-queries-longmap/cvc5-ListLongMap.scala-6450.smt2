; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82568 () Bool)

(assert start!82568)

(declare-fun b_free!18673 () Bool)

(declare-fun b_next!18673 () Bool)

(assert (=> start!82568 (= b_free!18673 (not b_next!18673))))

(declare-fun tp!65140 () Bool)

(declare-fun b_and!30179 () Bool)

(assert (=> start!82568 (= tp!65140 b_and!30179)))

(declare-fun mapIsEmpty!34207 () Bool)

(declare-fun mapRes!34207 () Bool)

(assert (=> mapIsEmpty!34207 mapRes!34207))

(declare-fun b!961721 () Bool)

(declare-fun e!542380 () Bool)

(declare-fun e!542383 () Bool)

(assert (=> b!961721 (= e!542380 (and e!542383 mapRes!34207))))

(declare-fun condMapEmpty!34207 () Bool)

(declare-datatypes ((V!33617 0))(
  ( (V!33618 (val!10788 Int)) )
))
(declare-datatypes ((ValueCell!10256 0))(
  ( (ValueCellFull!10256 (v!13346 V!33617)) (EmptyCell!10256) )
))
(declare-datatypes ((array!59037 0))(
  ( (array!59038 (arr!28383 (Array (_ BitVec 32) ValueCell!10256)) (size!28863 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59037)

(declare-fun mapDefault!34207 () ValueCell!10256)

