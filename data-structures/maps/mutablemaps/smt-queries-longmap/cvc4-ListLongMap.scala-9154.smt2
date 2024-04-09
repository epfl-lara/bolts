; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109844 () Bool)

(assert start!109844)

(declare-fun b_free!29201 () Bool)

(declare-fun b_next!29201 () Bool)

(assert (=> start!109844 (= b_free!29201 (not b_next!29201))))

(declare-fun tp!102738 () Bool)

(declare-fun b_and!47325 () Bool)

(assert (=> start!109844 (= tp!102738 b_and!47325)))

(declare-fun bm!63756 () Bool)

(declare-fun call!63761 () Bool)

(declare-fun call!63759 () Bool)

(assert (=> bm!63756 (= call!63761 call!63759)))

(declare-fun b!1300759 () Bool)

(declare-fun res!864409 () Bool)

(declare-fun e!741984 () Bool)

(assert (=> b!1300759 (=> (not res!864409) (not e!741984))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!86655 0))(
  ( (array!86656 (arr!41819 (Array (_ BitVec 32) (_ BitVec 64))) (size!42370 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86655)

(assert (=> b!1300759 (= res!864409 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42370 _keys!1741))))))

(declare-fun mapIsEmpty!53837 () Bool)

(declare-fun mapRes!53837 () Bool)

(assert (=> mapIsEmpty!53837 mapRes!53837))

(declare-fun b!1300761 () Bool)

(declare-fun e!741987 () Bool)

(declare-fun e!741986 () Bool)

(assert (=> b!1300761 (= e!741987 (and e!741986 mapRes!53837))))

(declare-fun condMapEmpty!53837 () Bool)

(declare-datatypes ((V!51557 0))(
  ( (V!51558 (val!17495 Int)) )
))
(declare-datatypes ((ValueCell!16522 0))(
  ( (ValueCellFull!16522 (v!20101 V!51557)) (EmptyCell!16522) )
))
(declare-datatypes ((array!86657 0))(
  ( (array!86658 (arr!41820 (Array (_ BitVec 32) ValueCell!16522)) (size!42371 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86657)

(declare-fun mapDefault!53837 () ValueCell!16522)

