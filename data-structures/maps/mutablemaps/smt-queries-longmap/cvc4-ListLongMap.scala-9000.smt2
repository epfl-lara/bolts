; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108800 () Bool)

(assert start!108800)

(declare-fun b_free!28277 () Bool)

(declare-fun b_next!28277 () Bool)

(assert (=> start!108800 (= b_free!28277 (not b_next!28277))))

(declare-fun tp!99947 () Bool)

(declare-fun b_and!46353 () Bool)

(assert (=> start!108800 (= tp!99947 b_and!46353)))

(declare-fun mapIsEmpty!52433 () Bool)

(declare-fun mapRes!52433 () Bool)

(assert (=> mapIsEmpty!52433 mapRes!52433))

(declare-fun b!1284258 () Bool)

(declare-fun res!853241 () Bool)

(declare-fun e!733614 () Bool)

(assert (=> b!1284258 (=> (not res!853241) (not e!733614))))

(declare-datatypes ((array!84849 0))(
  ( (array!84850 (arr!40922 (Array (_ BitVec 32) (_ BitVec 64))) (size!41473 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84849)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84849 (_ BitVec 32)) Bool)

(assert (=> b!1284258 (= res!853241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1284259 () Bool)

(declare-fun e!733615 () Bool)

(declare-fun e!733611 () Bool)

(assert (=> b!1284259 (= e!733615 (and e!733611 mapRes!52433))))

(declare-fun condMapEmpty!52433 () Bool)

(declare-datatypes ((V!50325 0))(
  ( (V!50326 (val!17033 Int)) )
))
(declare-datatypes ((ValueCell!16060 0))(
  ( (ValueCellFull!16060 (v!19633 V!50325)) (EmptyCell!16060) )
))
(declare-datatypes ((array!84851 0))(
  ( (array!84852 (arr!40923 (Array (_ BitVec 32) ValueCell!16060)) (size!41474 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84851)

(declare-fun mapDefault!52433 () ValueCell!16060)

