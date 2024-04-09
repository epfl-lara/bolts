; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109070 () Bool)

(assert start!109070)

(declare-fun b_free!28523 () Bool)

(declare-fun b_next!28523 () Bool)

(assert (=> start!109070 (= b_free!28523 (not b_next!28523))))

(declare-fun tp!100689 () Bool)

(declare-fun b_and!46623 () Bool)

(assert (=> start!109070 (= tp!100689 b_and!46623)))

(declare-fun b!1288599 () Bool)

(declare-fun e!735818 () Bool)

(declare-fun e!735822 () Bool)

(declare-fun mapRes!52805 () Bool)

(assert (=> b!1288599 (= e!735818 (and e!735822 mapRes!52805))))

(declare-fun condMapEmpty!52805 () Bool)

(declare-datatypes ((V!50653 0))(
  ( (V!50654 (val!17156 Int)) )
))
(declare-datatypes ((ValueCell!16183 0))(
  ( (ValueCellFull!16183 (v!19757 V!50653)) (EmptyCell!16183) )
))
(declare-datatypes ((array!85327 0))(
  ( (array!85328 (arr!41160 (Array (_ BitVec 32) ValueCell!16183)) (size!41711 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85327)

(declare-fun mapDefault!52805 () ValueCell!16183)

