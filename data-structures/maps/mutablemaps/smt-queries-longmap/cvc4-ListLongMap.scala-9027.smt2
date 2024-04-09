; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108962 () Bool)

(assert start!108962)

(declare-fun b_free!28439 () Bool)

(declare-fun b_next!28439 () Bool)

(assert (=> start!108962 (= b_free!28439 (not b_next!28439))))

(declare-fun tp!100433 () Bool)

(declare-fun b_and!46533 () Bool)

(assert (=> start!108962 (= tp!100433 b_and!46533)))

(declare-fun b!1287003 () Bool)

(declare-datatypes ((Unit!42490 0))(
  ( (Unit!42491) )
))
(declare-fun e!735040 () Unit!42490)

(declare-fun e!735046 () Unit!42490)

(assert (=> b!1287003 (= e!735040 e!735046)))

(declare-fun c!124232 () Bool)

(declare-fun lt!577646 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1287003 (= c!124232 (and (not lt!577646) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1287004 () Bool)

(declare-fun e!735045 () Bool)

(declare-fun e!735039 () Bool)

(declare-fun mapRes!52676 () Bool)

(assert (=> b!1287004 (= e!735045 (and e!735039 mapRes!52676))))

(declare-fun condMapEmpty!52676 () Bool)

(declare-datatypes ((V!50541 0))(
  ( (V!50542 (val!17114 Int)) )
))
(declare-datatypes ((ValueCell!16141 0))(
  ( (ValueCellFull!16141 (v!19714 V!50541)) (EmptyCell!16141) )
))
(declare-datatypes ((array!85163 0))(
  ( (array!85164 (arr!41079 (Array (_ BitVec 32) ValueCell!16141)) (size!41630 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85163)

(declare-fun mapDefault!52676 () ValueCell!16141)

