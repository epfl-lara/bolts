; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97578 () Bool)

(assert start!97578)

(declare-fun mapIsEmpty!43477 () Bool)

(declare-fun mapRes!43477 () Bool)

(assert (=> mapIsEmpty!43477 mapRes!43477))

(declare-fun b!1113781 () Bool)

(declare-fun res!743478 () Bool)

(declare-fun e!634903 () Bool)

(assert (=> b!1113781 (=> (not res!743478) (not e!634903))))

(declare-datatypes ((array!72398 0))(
  ( (array!72399 (arr!34848 (Array (_ BitVec 32) (_ BitVec 64))) (size!35385 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72398)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42157 0))(
  ( (V!42158 (val!13943 Int)) )
))
(declare-datatypes ((ValueCell!13177 0))(
  ( (ValueCellFull!13177 (v!16577 V!42157)) (EmptyCell!13177) )
))
(declare-datatypes ((array!72400 0))(
  ( (array!72401 (arr!34849 (Array (_ BitVec 32) ValueCell!13177)) (size!35386 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72400)

(assert (=> b!1113781 (= res!743478 (and (= (size!35386 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35385 _keys!1208) (size!35386 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1113782 () Bool)

(declare-fun e!634907 () Bool)

(declare-fun tp_is_empty!27773 () Bool)

(assert (=> b!1113782 (= e!634907 tp_is_empty!27773)))

(declare-fun b!1113783 () Bool)

(declare-fun res!743480 () Bool)

(assert (=> b!1113783 (=> (not res!743480) (not e!634903))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72398 (_ BitVec 32)) Bool)

(assert (=> b!1113783 (= res!743480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1113784 () Bool)

(declare-fun res!743474 () Bool)

(assert (=> b!1113784 (=> (not res!743474) (not e!634903))))

(declare-datatypes ((List!24424 0))(
  ( (Nil!24421) (Cons!24420 (h!25629 (_ BitVec 64)) (t!34912 List!24424)) )
))
(declare-fun arrayNoDuplicates!0 (array!72398 (_ BitVec 32) List!24424) Bool)

(assert (=> b!1113784 (= res!743474 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24421))))

(declare-fun res!743477 () Bool)

(assert (=> start!97578 (=> (not res!743477) (not e!634903))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97578 (= res!743477 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35385 _keys!1208))))))

(assert (=> start!97578 e!634903))

(declare-fun array_inv!26658 (array!72398) Bool)

(assert (=> start!97578 (array_inv!26658 _keys!1208)))

(assert (=> start!97578 true))

(declare-fun e!634906 () Bool)

(declare-fun array_inv!26659 (array!72400) Bool)

(assert (=> start!97578 (and (array_inv!26659 _values!996) e!634906)))

(declare-fun mapNonEmpty!43477 () Bool)

(declare-fun tp!82722 () Bool)

(assert (=> mapNonEmpty!43477 (= mapRes!43477 (and tp!82722 e!634907))))

(declare-fun mapValue!43477 () ValueCell!13177)

(declare-fun mapRest!43477 () (Array (_ BitVec 32) ValueCell!13177))

(declare-fun mapKey!43477 () (_ BitVec 32))

(assert (=> mapNonEmpty!43477 (= (arr!34849 _values!996) (store mapRest!43477 mapKey!43477 mapValue!43477))))

(declare-fun b!1113785 () Bool)

(declare-fun e!634902 () Bool)

(assert (=> b!1113785 (= e!634902 (not true))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72398 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1113785 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36461 0))(
  ( (Unit!36462) )
))
(declare-fun lt!496706 () Unit!36461)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72398 (_ BitVec 64) (_ BitVec 32)) Unit!36461)

(assert (=> b!1113785 (= lt!496706 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1113786 () Bool)

(declare-fun e!634905 () Bool)

(assert (=> b!1113786 (= e!634905 tp_is_empty!27773)))

(declare-fun b!1113787 () Bool)

(declare-fun res!743479 () Bool)

(assert (=> b!1113787 (=> (not res!743479) (not e!634903))))

(assert (=> b!1113787 (= res!743479 (= (select (arr!34848 _keys!1208) i!673) k!934))))

(declare-fun b!1113788 () Bool)

(assert (=> b!1113788 (= e!634903 e!634902)))

(declare-fun res!743481 () Bool)

(assert (=> b!1113788 (=> (not res!743481) (not e!634902))))

(declare-fun lt!496707 () array!72398)

(assert (=> b!1113788 (= res!743481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496707 mask!1564))))

(assert (=> b!1113788 (= lt!496707 (array!72399 (store (arr!34848 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35385 _keys!1208)))))

(declare-fun b!1113789 () Bool)

(declare-fun res!743472 () Bool)

(assert (=> b!1113789 (=> (not res!743472) (not e!634903))))

(assert (=> b!1113789 (= res!743472 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35385 _keys!1208))))))

(declare-fun b!1113790 () Bool)

(declare-fun res!743475 () Bool)

(assert (=> b!1113790 (=> (not res!743475) (not e!634903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1113790 (= res!743475 (validMask!0 mask!1564))))

(declare-fun b!1113791 () Bool)

(declare-fun res!743473 () Bool)

(assert (=> b!1113791 (=> (not res!743473) (not e!634902))))

(assert (=> b!1113791 (= res!743473 (arrayNoDuplicates!0 lt!496707 #b00000000000000000000000000000000 Nil!24421))))

(declare-fun b!1113792 () Bool)

(declare-fun res!743476 () Bool)

(assert (=> b!1113792 (=> (not res!743476) (not e!634903))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1113792 (= res!743476 (validKeyInArray!0 k!934))))

(declare-fun b!1113793 () Bool)

(assert (=> b!1113793 (= e!634906 (and e!634905 mapRes!43477))))

(declare-fun condMapEmpty!43477 () Bool)

(declare-fun mapDefault!43477 () ValueCell!13177)

