; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110422 () Bool)

(assert start!110422)

(declare-fun b!1306137 () Bool)

(declare-fun e!745143 () Bool)

(declare-fun tp_is_empty!34981 () Bool)

(assert (=> b!1306137 (= e!745143 tp_is_empty!34981)))

(declare-fun b!1306138 () Bool)

(declare-fun res!867214 () Bool)

(declare-fun e!745144 () Bool)

(assert (=> b!1306138 (=> (not res!867214) (not e!745144))))

(declare-datatypes ((array!86947 0))(
  ( (array!86948 (arr!41952 (Array (_ BitVec 32) (_ BitVec 64))) (size!42503 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!86947)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!51745 0))(
  ( (V!51746 (val!17565 Int)) )
))
(declare-datatypes ((ValueCell!16592 0))(
  ( (ValueCellFull!16592 (v!20189 V!51745)) (EmptyCell!16592) )
))
(declare-datatypes ((array!86949 0))(
  ( (array!86950 (arr!41953 (Array (_ BitVec 32) ValueCell!16592)) (size!42504 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!86949)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306138 (= res!867214 (and (= (size!42504 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42503 _keys!1628) (size!42504 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1306139 () Bool)

(declare-fun e!745146 () Bool)

(declare-fun e!745145 () Bool)

(declare-fun mapRes!54091 () Bool)

(assert (=> b!1306139 (= e!745146 (and e!745145 mapRes!54091))))

(declare-fun condMapEmpty!54091 () Bool)

(declare-fun mapDefault!54091 () ValueCell!16592)

