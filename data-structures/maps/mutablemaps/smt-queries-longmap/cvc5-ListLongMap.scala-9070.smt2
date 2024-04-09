; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109240 () Bool)

(assert start!109240)

(declare-fun b_free!28693 () Bool)

(declare-fun b_next!28693 () Bool)

(assert (=> start!109240 (= b_free!28693 (not b_next!28693))))

(declare-fun tp!101198 () Bool)

(declare-fun b_and!46793 () Bool)

(assert (=> start!109240 (= tp!101198 b_and!46793)))

(declare-fun b!1291657 () Bool)

(declare-fun e!737347 () Bool)

(declare-fun tp_is_empty!34333 () Bool)

(assert (=> b!1291657 (= e!737347 tp_is_empty!34333)))

(declare-fun b!1291658 () Bool)

(declare-fun res!858280 () Bool)

(declare-fun e!737349 () Bool)

(assert (=> b!1291658 (=> (not res!858280) (not e!737349))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50881 0))(
  ( (V!50882 (val!17241 Int)) )
))
(declare-datatypes ((ValueCell!16268 0))(
  ( (ValueCellFull!16268 (v!19842 V!50881)) (EmptyCell!16268) )
))
(declare-datatypes ((array!85659 0))(
  ( (array!85660 (arr!41326 (Array (_ BitVec 32) ValueCell!16268)) (size!41877 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85659)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85661 0))(
  ( (array!85662 (arr!41327 (Array (_ BitVec 32) (_ BitVec 64))) (size!41878 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85661)

(assert (=> b!1291658 (= res!858280 (and (= (size!41877 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41878 _keys!1741) (size!41877 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1291659 () Bool)

(declare-fun e!737348 () Bool)

(assert (=> b!1291659 (= e!737348 tp_is_empty!34333)))

(declare-fun b!1291660 () Bool)

(declare-fun e!737350 () Bool)

(declare-fun mapRes!53060 () Bool)

(assert (=> b!1291660 (= e!737350 (and e!737348 mapRes!53060))))

(declare-fun condMapEmpty!53060 () Bool)

(declare-fun mapDefault!53060 () ValueCell!16268)

