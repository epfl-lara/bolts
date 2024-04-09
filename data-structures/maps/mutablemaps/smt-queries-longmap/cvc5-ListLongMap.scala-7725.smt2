; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97072 () Bool)

(assert start!97072)

(declare-fun b!1103667 () Bool)

(declare-fun res!736390 () Bool)

(declare-fun e!630076 () Bool)

(assert (=> b!1103667 (=> (not res!736390) (not e!630076))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1103667 (= res!736390 (validKeyInArray!0 k!934))))

(declare-fun b!1103668 () Bool)

(declare-fun res!736393 () Bool)

(assert (=> b!1103668 (=> (not res!736393) (not e!630076))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103668 (= res!736393 (validMask!0 mask!1564))))

(declare-fun b!1103669 () Bool)

(declare-fun res!736394 () Bool)

(assert (=> b!1103669 (=> (not res!736394) (not e!630076))))

(declare-datatypes ((array!71524 0))(
  ( (array!71525 (arr!34415 (Array (_ BitVec 32) (_ BitVec 64))) (size!34952 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71524)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!41561 0))(
  ( (V!41562 (val!13719 Int)) )
))
(declare-datatypes ((ValueCell!12953 0))(
  ( (ValueCellFull!12953 (v!16352 V!41561)) (EmptyCell!12953) )
))
(declare-datatypes ((array!71526 0))(
  ( (array!71527 (arr!34416 (Array (_ BitVec 32) ValueCell!12953)) (size!34953 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71526)

(assert (=> b!1103669 (= res!736394 (and (= (size!34953 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34952 _keys!1208) (size!34953 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1103670 () Bool)

(declare-fun e!630078 () Bool)

(declare-fun e!630079 () Bool)

(declare-fun mapRes!42793 () Bool)

(assert (=> b!1103670 (= e!630078 (and e!630079 mapRes!42793))))

(declare-fun condMapEmpty!42793 () Bool)

(declare-fun mapDefault!42793 () ValueCell!12953)

