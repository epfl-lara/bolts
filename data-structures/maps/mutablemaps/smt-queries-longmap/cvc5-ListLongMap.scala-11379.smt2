; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132248 () Bool)

(assert start!132248)

(declare-fun b_free!31891 () Bool)

(declare-fun b_next!31891 () Bool)

(assert (=> start!132248 (= b_free!31891 (not b_next!31891))))

(declare-fun tp!111931 () Bool)

(declare-fun b_and!51331 () Bool)

(assert (=> start!132248 (= tp!111931 b_and!51331)))

(declare-fun b!1551033 () Bool)

(declare-fun e!863438 () Bool)

(declare-fun e!863435 () Bool)

(declare-fun mapRes!58960 () Bool)

(assert (=> b!1551033 (= e!863438 (and e!863435 mapRes!58960))))

(declare-fun condMapEmpty!58960 () Bool)

(declare-datatypes ((V!59333 0))(
  ( (V!59334 (val!19161 Int)) )
))
(declare-datatypes ((ValueCell!18173 0))(
  ( (ValueCellFull!18173 (v!21961 V!59333)) (EmptyCell!18173) )
))
(declare-datatypes ((array!103491 0))(
  ( (array!103492 (arr!49941 (Array (_ BitVec 32) ValueCell!18173)) (size!50492 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103491)

(declare-fun mapDefault!58960 () ValueCell!18173)

