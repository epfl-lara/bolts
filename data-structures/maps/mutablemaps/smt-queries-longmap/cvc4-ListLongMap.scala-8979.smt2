; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108674 () Bool)

(assert start!108674)

(declare-fun b_free!28151 () Bool)

(declare-fun b_next!28151 () Bool)

(assert (=> start!108674 (= b_free!28151 (not b_next!28151))))

(declare-fun tp!99570 () Bool)

(declare-fun b_and!46227 () Bool)

(assert (=> start!108674 (= tp!99570 b_and!46227)))

(declare-fun b!1282251 () Bool)

(declare-fun e!732669 () Bool)

(declare-fun e!732667 () Bool)

(declare-fun mapRes!52244 () Bool)

(assert (=> b!1282251 (= e!732669 (and e!732667 mapRes!52244))))

(declare-fun condMapEmpty!52244 () Bool)

(declare-datatypes ((V!50157 0))(
  ( (V!50158 (val!16970 Int)) )
))
(declare-datatypes ((ValueCell!15997 0))(
  ( (ValueCellFull!15997 (v!19570 V!50157)) (EmptyCell!15997) )
))
(declare-datatypes ((array!84607 0))(
  ( (array!84608 (arr!40801 (Array (_ BitVec 32) ValueCell!15997)) (size!41352 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84607)

(declare-fun mapDefault!52244 () ValueCell!15997)

