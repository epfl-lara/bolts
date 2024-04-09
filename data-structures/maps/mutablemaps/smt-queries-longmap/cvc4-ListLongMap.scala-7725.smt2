; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97076 () Bool)

(assert start!97076)

(declare-fun mapIsEmpty!42799 () Bool)

(declare-fun mapRes!42799 () Bool)

(assert (=> mapIsEmpty!42799 mapRes!42799))

(declare-fun b!1103727 () Bool)

(declare-fun e!630107 () Bool)

(declare-fun tp_is_empty!27329 () Bool)

(assert (=> b!1103727 (= e!630107 tp_is_empty!27329)))

(declare-fun b!1103728 () Bool)

(declare-fun e!630110 () Bool)

(assert (=> b!1103728 (= e!630110 tp_is_empty!27329)))

(declare-fun res!736434 () Bool)

(declare-fun e!630108 () Bool)

(assert (=> start!97076 (=> (not res!736434) (not e!630108))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!71532 0))(
  ( (array!71533 (arr!34419 (Array (_ BitVec 32) (_ BitVec 64))) (size!34956 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71532)

(assert (=> start!97076 (= res!736434 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34956 _keys!1208))))))

(assert (=> start!97076 e!630108))

(declare-fun array_inv!26358 (array!71532) Bool)

(assert (=> start!97076 (array_inv!26358 _keys!1208)))

(assert (=> start!97076 true))

(declare-datatypes ((V!41565 0))(
  ( (V!41566 (val!13721 Int)) )
))
(declare-datatypes ((ValueCell!12955 0))(
  ( (ValueCellFull!12955 (v!16354 V!41565)) (EmptyCell!12955) )
))
(declare-datatypes ((array!71534 0))(
  ( (array!71535 (arr!34420 (Array (_ BitVec 32) ValueCell!12955)) (size!34957 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71534)

(declare-fun e!630109 () Bool)

(declare-fun array_inv!26359 (array!71534) Bool)

(assert (=> start!97076 (and (array_inv!26359 _values!996) e!630109)))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1103729 () Bool)

(assert (=> b!1103729 (= e!630108 (and (= (select (arr!34419 _keys!1208) i!673) k!934) (= (size!34956 _keys!1208) (bvadd #b00000000000000000000000000000001 mask!1564)) (bvsgt #b00000000000000000000000000000000 (size!34956 _keys!1208))))))

(declare-fun b!1103730 () Bool)

(declare-fun res!736436 () Bool)

(assert (=> b!1103730 (=> (not res!736436) (not e!630108))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1103730 (= res!736436 (and (= (size!34957 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34956 _keys!1208) (size!34957 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1103731 () Bool)

(declare-fun res!736431 () Bool)

(assert (=> b!1103731 (=> (not res!736431) (not e!630108))))

(declare-datatypes ((List!24167 0))(
  ( (Nil!24164) (Cons!24163 (h!25372 (_ BitVec 64)) (t!34439 List!24167)) )
))
(declare-fun arrayNoDuplicates!0 (array!71532 (_ BitVec 32) List!24167) Bool)

(assert (=> b!1103731 (= res!736431 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24164))))

(declare-fun b!1103732 () Bool)

(declare-fun res!736435 () Bool)

(assert (=> b!1103732 (=> (not res!736435) (not e!630108))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103732 (= res!736435 (validMask!0 mask!1564))))

(declare-fun b!1103733 () Bool)

(declare-fun res!736430 () Bool)

(assert (=> b!1103733 (=> (not res!736430) (not e!630108))))

(assert (=> b!1103733 (= res!736430 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!34956 _keys!1208))))))

(declare-fun b!1103734 () Bool)

(declare-fun res!736433 () Bool)

(assert (=> b!1103734 (=> (not res!736433) (not e!630108))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71532 (_ BitVec 32)) Bool)

(assert (=> b!1103734 (= res!736433 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1103735 () Bool)

(declare-fun res!736432 () Bool)

(assert (=> b!1103735 (=> (not res!736432) (not e!630108))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1103735 (= res!736432 (validKeyInArray!0 k!934))))

(declare-fun b!1103736 () Bool)

(assert (=> b!1103736 (= e!630109 (and e!630107 mapRes!42799))))

(declare-fun condMapEmpty!42799 () Bool)

(declare-fun mapDefault!42799 () ValueCell!12955)

