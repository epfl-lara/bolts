; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97724 () Bool)

(assert start!97724)

(declare-fun b!1116628 () Bool)

(declare-fun res!745669 () Bool)

(declare-fun e!636221 () Bool)

(assert (=> b!1116628 (=> (not res!745669) (not e!636221))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72676 0))(
  ( (array!72677 (arr!34987 (Array (_ BitVec 32) (_ BitVec 64))) (size!35524 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72676)

(assert (=> b!1116628 (= res!745669 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35524 _keys!1208))))))

(declare-fun b!1116629 () Bool)

(declare-fun res!745668 () Bool)

(assert (=> b!1116629 (=> (not res!745668) (not e!636221))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1116629 (= res!745668 (validKeyInArray!0 k!934))))

(declare-fun res!745664 () Bool)

(assert (=> start!97724 (=> (not res!745664) (not e!636221))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97724 (= res!745664 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35524 _keys!1208))))))

(assert (=> start!97724 e!636221))

(declare-fun array_inv!26750 (array!72676) Bool)

(assert (=> start!97724 (array_inv!26750 _keys!1208)))

(assert (=> start!97724 true))

(declare-datatypes ((V!42353 0))(
  ( (V!42354 (val!14016 Int)) )
))
(declare-datatypes ((ValueCell!13250 0))(
  ( (ValueCellFull!13250 (v!16650 V!42353)) (EmptyCell!13250) )
))
(declare-datatypes ((array!72678 0))(
  ( (array!72679 (arr!34988 (Array (_ BitVec 32) ValueCell!13250)) (size!35525 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72678)

(declare-fun e!636220 () Bool)

(declare-fun array_inv!26751 (array!72678) Bool)

(assert (=> start!97724 (and (array_inv!26751 _values!996) e!636220)))

(declare-fun b!1116630 () Bool)

(declare-fun res!745666 () Bool)

(assert (=> b!1116630 (=> (not res!745666) (not e!636221))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1116630 (= res!745666 (validMask!0 mask!1564))))

(declare-fun b!1116631 () Bool)

(declare-fun e!636216 () Bool)

(declare-fun mapRes!43696 () Bool)

(assert (=> b!1116631 (= e!636220 (and e!636216 mapRes!43696))))

(declare-fun condMapEmpty!43696 () Bool)

(declare-fun mapDefault!43696 () ValueCell!13250)

