; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97224 () Bool)

(assert start!97224)

(declare-fun b!1105630 () Bool)

(declare-fun res!737840 () Bool)

(declare-fun e!631040 () Bool)

(assert (=> b!1105630 (=> (not res!737840) (not e!631040))))

(declare-datatypes ((array!71710 0))(
  ( (array!71711 (arr!34504 (Array (_ BitVec 32) (_ BitVec 64))) (size!35041 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71710)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1105630 (= res!737840 (= (select (arr!34504 _keys!1208) i!673) k!934))))

(declare-fun b!1105631 () Bool)

(declare-fun e!631042 () Bool)

(declare-fun e!631041 () Bool)

(declare-fun mapRes!42946 () Bool)

(assert (=> b!1105631 (= e!631042 (and e!631041 mapRes!42946))))

(declare-fun condMapEmpty!42946 () Bool)

(declare-datatypes ((V!41685 0))(
  ( (V!41686 (val!13766 Int)) )
))
(declare-datatypes ((ValueCell!13000 0))(
  ( (ValueCellFull!13000 (v!16400 V!41685)) (EmptyCell!13000) )
))
(declare-datatypes ((array!71712 0))(
  ( (array!71713 (arr!34505 (Array (_ BitVec 32) ValueCell!13000)) (size!35042 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71712)

(declare-fun mapDefault!42946 () ValueCell!13000)

