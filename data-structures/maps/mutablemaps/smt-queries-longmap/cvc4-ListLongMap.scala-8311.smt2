; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101254 () Bool)

(assert start!101254)

(declare-fun b_free!26141 () Bool)

(declare-fun b_next!26141 () Bool)

(assert (=> start!101254 (= b_free!26141 (not b_next!26141))))

(declare-fun tp!91446 () Bool)

(declare-fun b_and!43409 () Bool)

(assert (=> start!101254 (= tp!91446 b_and!43409)))

(declare-fun b!1215300 () Bool)

(declare-fun res!807005 () Bool)

(declare-fun e!690110 () Bool)

(assert (=> b!1215300 (=> (not res!807005) (not e!690110))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!78444 0))(
  ( (array!78445 (arr!37853 (Array (_ BitVec 32) (_ BitVec 64))) (size!38390 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78444)

(assert (=> b!1215300 (= res!807005 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38390 _keys!1208))))))

(declare-fun b!1215301 () Bool)

(declare-fun res!806999 () Bool)

(assert (=> b!1215301 (=> (not res!806999) (not e!690110))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!46253 0))(
  ( (V!46254 (val!15479 Int)) )
))
(declare-datatypes ((ValueCell!14713 0))(
  ( (ValueCellFull!14713 (v!18133 V!46253)) (EmptyCell!14713) )
))
(declare-datatypes ((array!78446 0))(
  ( (array!78447 (arr!37854 (Array (_ BitVec 32) ValueCell!14713)) (size!38391 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78446)

(assert (=> b!1215301 (= res!806999 (and (= (size!38391 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38390 _keys!1208) (size!38391 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1215302 () Bool)

(declare-fun e!690109 () Bool)

(declare-fun e!690111 () Bool)

(assert (=> b!1215302 (= e!690109 (not e!690111))))

(declare-fun res!807007 () Bool)

(assert (=> b!1215302 (=> res!807007 e!690111)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1215302 (= res!807007 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78444 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1215302 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40232 0))(
  ( (Unit!40233) )
))
(declare-fun lt!552539 () Unit!40232)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78444 (_ BitVec 64) (_ BitVec 32)) Unit!40232)

(assert (=> b!1215302 (= lt!552539 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1215303 () Bool)

(assert (=> b!1215303 (= e!690110 e!690109)))

(declare-fun res!807002 () Bool)

(assert (=> b!1215303 (=> (not res!807002) (not e!690109))))

(declare-fun lt!552537 () array!78444)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78444 (_ BitVec 32)) Bool)

(assert (=> b!1215303 (= res!807002 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552537 mask!1564))))

(assert (=> b!1215303 (= lt!552537 (array!78445 (store (arr!37853 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38390 _keys!1208)))))

(declare-fun b!1215304 () Bool)

(declare-fun e!690113 () Bool)

(declare-fun tp_is_empty!30845 () Bool)

(assert (=> b!1215304 (= e!690113 tp_is_empty!30845)))

(declare-fun mapNonEmpty!48142 () Bool)

(declare-fun mapRes!48142 () Bool)

(declare-fun tp!91445 () Bool)

(declare-fun e!690114 () Bool)

(assert (=> mapNonEmpty!48142 (= mapRes!48142 (and tp!91445 e!690114))))

(declare-fun mapRest!48142 () (Array (_ BitVec 32) ValueCell!14713))

(declare-fun mapKey!48142 () (_ BitVec 32))

(declare-fun mapValue!48142 () ValueCell!14713)

(assert (=> mapNonEmpty!48142 (= (arr!37854 _values!996) (store mapRest!48142 mapKey!48142 mapValue!48142))))

(declare-fun b!1215305 () Bool)

(declare-fun res!807004 () Bool)

(assert (=> b!1215305 (=> (not res!807004) (not e!690110))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1215305 (= res!807004 (validKeyInArray!0 k!934))))

(declare-fun b!1215306 () Bool)

(declare-fun res!807000 () Bool)

(assert (=> b!1215306 (=> (not res!807000) (not e!690110))))

(assert (=> b!1215306 (= res!807000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!48142 () Bool)

(assert (=> mapIsEmpty!48142 mapRes!48142))

(declare-fun b!1215307 () Bool)

(declare-fun res!807003 () Bool)

(assert (=> b!1215307 (=> (not res!807003) (not e!690110))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1215307 (= res!807003 (validMask!0 mask!1564))))

(declare-fun res!807001 () Bool)

(assert (=> start!101254 (=> (not res!807001) (not e!690110))))

(assert (=> start!101254 (= res!807001 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38390 _keys!1208))))))

(assert (=> start!101254 e!690110))

(assert (=> start!101254 tp_is_empty!30845))

(declare-fun array_inv!28726 (array!78444) Bool)

(assert (=> start!101254 (array_inv!28726 _keys!1208)))

(assert (=> start!101254 true))

(assert (=> start!101254 tp!91446))

(declare-fun e!690108 () Bool)

(declare-fun array_inv!28727 (array!78446) Bool)

(assert (=> start!101254 (and (array_inv!28727 _values!996) e!690108)))

(declare-fun b!1215308 () Bool)

(declare-fun res!806997 () Bool)

(assert (=> b!1215308 (=> (not res!806997) (not e!690110))))

(declare-datatypes ((List!26856 0))(
  ( (Nil!26853) (Cons!26852 (h!28061 (_ BitVec 64)) (t!39984 List!26856)) )
))
(declare-fun arrayNoDuplicates!0 (array!78444 (_ BitVec 32) List!26856) Bool)

(assert (=> b!1215308 (= res!806997 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26853))))

(declare-fun b!1215309 () Bool)

(assert (=> b!1215309 (= e!690114 tp_is_empty!30845)))

(declare-fun b!1215310 () Bool)

(declare-fun res!807006 () Bool)

(assert (=> b!1215310 (=> (not res!807006) (not e!690109))))

(assert (=> b!1215310 (= res!807006 (arrayNoDuplicates!0 lt!552537 #b00000000000000000000000000000000 Nil!26853))))

(declare-fun b!1215311 () Bool)

(assert (=> b!1215311 (= e!690108 (and e!690113 mapRes!48142))))

(declare-fun condMapEmpty!48142 () Bool)

(declare-fun mapDefault!48142 () ValueCell!14713)

