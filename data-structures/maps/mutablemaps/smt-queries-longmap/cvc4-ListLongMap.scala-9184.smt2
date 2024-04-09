; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110492 () Bool)

(assert start!110492)

(declare-fun mapIsEmpty!54160 () Bool)

(declare-fun mapRes!54160 () Bool)

(assert (=> mapIsEmpty!54160 mapRes!54160))

(declare-fun b!1306613 () Bool)

(declare-fun e!745516 () Bool)

(declare-fun e!745520 () Bool)

(assert (=> b!1306613 (= e!745516 (and e!745520 mapRes!54160))))

(declare-fun condMapEmpty!54160 () Bool)

(declare-datatypes ((V!51797 0))(
  ( (V!51798 (val!17585 Int)) )
))
(declare-datatypes ((ValueCell!16612 0))(
  ( (ValueCellFull!16612 (v!20210 V!51797)) (EmptyCell!16612) )
))
(declare-datatypes ((array!87031 0))(
  ( (array!87032 (arr!41991 (Array (_ BitVec 32) ValueCell!16612)) (size!42542 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87031)

(declare-fun mapDefault!54160 () ValueCell!16612)

