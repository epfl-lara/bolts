; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110522 () Bool)

(assert start!110522)

(declare-fun b!1306891 () Bool)

(declare-fun res!867612 () Bool)

(declare-fun e!745745 () Bool)

(assert (=> b!1306891 (=> (not res!867612) (not e!745745))))

(declare-datatypes ((array!87085 0))(
  ( (array!87086 (arr!42018 (Array (_ BitVec 32) (_ BitVec 64))) (size!42569 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87085)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!51837 0))(
  ( (V!51838 (val!17600 Int)) )
))
(declare-datatypes ((ValueCell!16627 0))(
  ( (ValueCellFull!16627 (v!20225 V!51837)) (EmptyCell!16627) )
))
(declare-datatypes ((array!87087 0))(
  ( (array!87088 (arr!42019 (Array (_ BitVec 32) ValueCell!16627)) (size!42570 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87087)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306891 (= res!867612 (and (= (size!42570 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42569 _keys!1628) (size!42570 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!867614 () Bool)

(assert (=> start!110522 (=> (not res!867614) (not e!745745))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110522 (= res!867614 (validMask!0 mask!2040))))

(assert (=> start!110522 e!745745))

(declare-fun array_inv!31767 (array!87085) Bool)

(assert (=> start!110522 (array_inv!31767 _keys!1628)))

(assert (=> start!110522 true))

(declare-fun e!745744 () Bool)

(declare-fun array_inv!31768 (array!87087) Bool)

(assert (=> start!110522 (and (array_inv!31768 _values!1354) e!745744)))

(declare-fun b!1306892 () Bool)

(declare-fun e!745742 () Bool)

(declare-fun mapRes!54205 () Bool)

(assert (=> b!1306892 (= e!745744 (and e!745742 mapRes!54205))))

(declare-fun condMapEmpty!54205 () Bool)

(declare-fun mapDefault!54205 () ValueCell!16627)

