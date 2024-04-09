; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109016 () Bool)

(assert start!109016)

(declare-fun b_free!28469 () Bool)

(declare-fun b_next!28469 () Bool)

(assert (=> start!109016 (= b_free!28469 (not b_next!28469))))

(declare-fun tp!100526 () Bool)

(declare-fun b_and!46569 () Bool)

(assert (=> start!109016 (= tp!100526 b_and!46569)))

(declare-fun b!1287664 () Bool)

(declare-fun e!735373 () Bool)

(declare-fun e!735370 () Bool)

(declare-fun mapRes!52724 () Bool)

(assert (=> b!1287664 (= e!735373 (and e!735370 mapRes!52724))))

(declare-fun condMapEmpty!52724 () Bool)

(declare-datatypes ((V!50581 0))(
  ( (V!50582 (val!17129 Int)) )
))
(declare-datatypes ((ValueCell!16156 0))(
  ( (ValueCellFull!16156 (v!19730 V!50581)) (EmptyCell!16156) )
))
(declare-datatypes ((array!85221 0))(
  ( (array!85222 (arr!41107 (Array (_ BitVec 32) ValueCell!16156)) (size!41658 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85221)

(declare-fun mapDefault!52724 () ValueCell!16156)

