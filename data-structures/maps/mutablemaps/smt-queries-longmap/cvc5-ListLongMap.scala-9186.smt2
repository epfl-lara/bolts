; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110500 () Bool)

(assert start!110500)

(declare-fun b!1306685 () Bool)

(declare-fun res!867504 () Bool)

(declare-fun e!745578 () Bool)

(assert (=> b!1306685 (=> (not res!867504) (not e!745578))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!51809 0))(
  ( (V!51810 (val!17589 Int)) )
))
(declare-datatypes ((ValueCell!16616 0))(
  ( (ValueCellFull!16616 (v!20214 V!51809)) (EmptyCell!16616) )
))
(declare-datatypes ((array!87043 0))(
  ( (array!87044 (arr!41997 (Array (_ BitVec 32) ValueCell!16616)) (size!42548 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87043)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((array!87045 0))(
  ( (array!87046 (arr!41998 (Array (_ BitVec 32) (_ BitVec 64))) (size!42549 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87045)

(assert (=> b!1306685 (= res!867504 (and (= (size!42548 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42549 _keys!1628) (size!42548 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1306686 () Bool)

(declare-fun e!745577 () Bool)

(declare-fun tp_is_empty!35029 () Bool)

(assert (=> b!1306686 (= e!745577 tp_is_empty!35029)))

(declare-fun b!1306687 () Bool)

(declare-fun e!745580 () Bool)

(declare-fun mapRes!54172 () Bool)

(assert (=> b!1306687 (= e!745580 (and e!745577 mapRes!54172))))

(declare-fun condMapEmpty!54172 () Bool)

(declare-fun mapDefault!54172 () ValueCell!16616)

