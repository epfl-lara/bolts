; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97716 () Bool)

(assert start!97716)

(declare-fun b!1116472 () Bool)

(declare-fun e!636148 () Bool)

(declare-fun tp_is_empty!27911 () Bool)

(assert (=> b!1116472 (= e!636148 tp_is_empty!27911)))

(declare-fun b!1116473 () Bool)

(declare-fun res!745551 () Bool)

(declare-fun e!636145 () Bool)

(assert (=> b!1116473 (=> (not res!745551) (not e!636145))))

(declare-datatypes ((array!72660 0))(
  ( (array!72661 (arr!34979 (Array (_ BitVec 32) (_ BitVec 64))) (size!35516 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72660)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1116473 (= res!745551 (= (select (arr!34979 _keys!1208) i!673) k!934))))

(declare-fun b!1116474 () Bool)

(declare-fun e!636146 () Bool)

(assert (=> b!1116474 (= e!636146 (not true))))

(declare-fun arrayContainsKey!0 (array!72660 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1116474 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36545 0))(
  ( (Unit!36546) )
))
(declare-fun lt!497121 () Unit!36545)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72660 (_ BitVec 64) (_ BitVec 32)) Unit!36545)

(assert (=> b!1116474 (= lt!497121 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1116476 () Bool)

(declare-fun res!745549 () Bool)

(assert (=> b!1116476 (=> (not res!745549) (not e!636146))))

(declare-fun lt!497120 () array!72660)

(declare-datatypes ((List!24475 0))(
  ( (Nil!24472) (Cons!24471 (h!25680 (_ BitVec 64)) (t!34963 List!24475)) )
))
(declare-fun arrayNoDuplicates!0 (array!72660 (_ BitVec 32) List!24475) Bool)

(assert (=> b!1116476 (= res!745549 (arrayNoDuplicates!0 lt!497120 #b00000000000000000000000000000000 Nil!24472))))

(declare-fun b!1116477 () Bool)

(assert (=> b!1116477 (= e!636145 e!636146)))

(declare-fun res!745542 () Bool)

(assert (=> b!1116477 (=> (not res!745542) (not e!636146))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72660 (_ BitVec 32)) Bool)

(assert (=> b!1116477 (= res!745542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497120 mask!1564))))

(assert (=> b!1116477 (= lt!497120 (array!72661 (store (arr!34979 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35516 _keys!1208)))))

(declare-fun b!1116478 () Bool)

(declare-fun res!745545 () Bool)

(assert (=> b!1116478 (=> (not res!745545) (not e!636145))))

(assert (=> b!1116478 (= res!745545 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24472))))

(declare-fun b!1116479 () Bool)

(declare-fun e!636144 () Bool)

(assert (=> b!1116479 (= e!636144 tp_is_empty!27911)))

(declare-fun mapIsEmpty!43684 () Bool)

(declare-fun mapRes!43684 () Bool)

(assert (=> mapIsEmpty!43684 mapRes!43684))

(declare-fun b!1116480 () Bool)

(declare-fun res!745547 () Bool)

(assert (=> b!1116480 (=> (not res!745547) (not e!636145))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42341 0))(
  ( (V!42342 (val!14012 Int)) )
))
(declare-datatypes ((ValueCell!13246 0))(
  ( (ValueCellFull!13246 (v!16646 V!42341)) (EmptyCell!13246) )
))
(declare-datatypes ((array!72662 0))(
  ( (array!72663 (arr!34980 (Array (_ BitVec 32) ValueCell!13246)) (size!35517 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72662)

(assert (=> b!1116480 (= res!745547 (and (= (size!35517 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35516 _keys!1208) (size!35517 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!43684 () Bool)

(declare-fun tp!82929 () Bool)

(assert (=> mapNonEmpty!43684 (= mapRes!43684 (and tp!82929 e!636144))))

(declare-fun mapKey!43684 () (_ BitVec 32))

(declare-fun mapRest!43684 () (Array (_ BitVec 32) ValueCell!13246))

(declare-fun mapValue!43684 () ValueCell!13246)

(assert (=> mapNonEmpty!43684 (= (arr!34980 _values!996) (store mapRest!43684 mapKey!43684 mapValue!43684))))

(declare-fun b!1116481 () Bool)

(declare-fun e!636149 () Bool)

(assert (=> b!1116481 (= e!636149 (and e!636148 mapRes!43684))))

(declare-fun condMapEmpty!43684 () Bool)

(declare-fun mapDefault!43684 () ValueCell!13246)

