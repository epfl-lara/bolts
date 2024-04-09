; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109846 () Bool)

(assert start!109846)

(declare-fun b_free!29203 () Bool)

(declare-fun b_next!29203 () Bool)

(assert (=> start!109846 (= b_free!29203 (not b_next!29203))))

(declare-fun tp!102743 () Bool)

(declare-fun b_and!47327 () Bool)

(assert (=> start!109846 (= tp!102743 b_and!47327)))

(declare-fun mapIsEmpty!53840 () Bool)

(declare-fun mapRes!53840 () Bool)

(assert (=> mapIsEmpty!53840 mapRes!53840))

(declare-fun b!1300810 () Bool)

(declare-fun e!742009 () Bool)

(declare-fun e!742015 () Bool)

(assert (=> b!1300810 (= e!742009 (and e!742015 mapRes!53840))))

(declare-fun condMapEmpty!53840 () Bool)

(declare-datatypes ((V!51561 0))(
  ( (V!51562 (val!17496 Int)) )
))
(declare-datatypes ((ValueCell!16523 0))(
  ( (ValueCellFull!16523 (v!20102 V!51561)) (EmptyCell!16523) )
))
(declare-datatypes ((array!86659 0))(
  ( (array!86660 (arr!41821 (Array (_ BitVec 32) ValueCell!16523)) (size!42372 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86659)

(declare-fun mapDefault!53840 () ValueCell!16523)

