; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97766 () Bool)

(assert start!97766)

(declare-fun mapNonEmpty!43759 () Bool)

(declare-fun mapRes!43759 () Bool)

(declare-fun tp!83004 () Bool)

(declare-fun e!636595 () Bool)

(assert (=> mapNonEmpty!43759 (= mapRes!43759 (and tp!83004 e!636595))))

(declare-datatypes ((V!42409 0))(
  ( (V!42410 (val!14037 Int)) )
))
(declare-datatypes ((ValueCell!13271 0))(
  ( (ValueCellFull!13271 (v!16671 V!42409)) (EmptyCell!13271) )
))
(declare-fun mapValue!43759 () ValueCell!13271)

(declare-fun mapKey!43759 () (_ BitVec 32))

(declare-datatypes ((array!72756 0))(
  ( (array!72757 (arr!35027 (Array (_ BitVec 32) ValueCell!13271)) (size!35564 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72756)

(declare-fun mapRest!43759 () (Array (_ BitVec 32) ValueCell!13271))

(assert (=> mapNonEmpty!43759 (= (arr!35027 _values!996) (store mapRest!43759 mapKey!43759 mapValue!43759))))

(declare-fun b!1117447 () Bool)

(declare-fun res!746296 () Bool)

(declare-fun e!636594 () Bool)

(assert (=> b!1117447 (=> (not res!746296) (not e!636594))))

(declare-datatypes ((array!72758 0))(
  ( (array!72759 (arr!35028 (Array (_ BitVec 32) (_ BitVec 64))) (size!35565 (_ BitVec 32))) )
))
(declare-fun lt!497271 () array!72758)

(declare-datatypes ((List!24493 0))(
  ( (Nil!24490) (Cons!24489 (h!25698 (_ BitVec 64)) (t!34981 List!24493)) )
))
(declare-fun arrayNoDuplicates!0 (array!72758 (_ BitVec 32) List!24493) Bool)

(assert (=> b!1117447 (= res!746296 (arrayNoDuplicates!0 lt!497271 #b00000000000000000000000000000000 Nil!24490))))

(declare-fun b!1117448 () Bool)

(assert (=> b!1117448 (= e!636594 (not true))))

(declare-fun _keys!1208 () array!72758)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72758 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1117448 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36583 0))(
  ( (Unit!36584) )
))
(declare-fun lt!497270 () Unit!36583)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72758 (_ BitVec 64) (_ BitVec 32)) Unit!36583)

(assert (=> b!1117448 (= lt!497270 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1117449 () Bool)

(declare-fun res!746301 () Bool)

(declare-fun e!636597 () Bool)

(assert (=> b!1117449 (=> (not res!746301) (not e!636597))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72758 (_ BitVec 32)) Bool)

(assert (=> b!1117449 (= res!746301 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!746295 () Bool)

(assert (=> start!97766 (=> (not res!746295) (not e!636597))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97766 (= res!746295 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35565 _keys!1208))))))

(assert (=> start!97766 e!636597))

(declare-fun array_inv!26780 (array!72758) Bool)

(assert (=> start!97766 (array_inv!26780 _keys!1208)))

(assert (=> start!97766 true))

(declare-fun e!636599 () Bool)

(declare-fun array_inv!26781 (array!72756) Bool)

(assert (=> start!97766 (and (array_inv!26781 _values!996) e!636599)))

(declare-fun b!1117450 () Bool)

(declare-fun res!746299 () Bool)

(assert (=> b!1117450 (=> (not res!746299) (not e!636597))))

(assert (=> b!1117450 (= res!746299 (= (select (arr!35028 _keys!1208) i!673) k!934))))

(declare-fun b!1117451 () Bool)

(declare-fun res!746293 () Bool)

(assert (=> b!1117451 (=> (not res!746293) (not e!636597))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1117451 (= res!746293 (validKeyInArray!0 k!934))))

(declare-fun b!1117452 () Bool)

(assert (=> b!1117452 (= e!636597 e!636594)))

(declare-fun res!746298 () Bool)

(assert (=> b!1117452 (=> (not res!746298) (not e!636594))))

(assert (=> b!1117452 (= res!746298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497271 mask!1564))))

(assert (=> b!1117452 (= lt!497271 (array!72759 (store (arr!35028 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35565 _keys!1208)))))

(declare-fun mapIsEmpty!43759 () Bool)

(assert (=> mapIsEmpty!43759 mapRes!43759))

(declare-fun b!1117453 () Bool)

(declare-fun e!636596 () Bool)

(assert (=> b!1117453 (= e!636599 (and e!636596 mapRes!43759))))

(declare-fun condMapEmpty!43759 () Bool)

(declare-fun mapDefault!43759 () ValueCell!13271)

