; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101656 () Bool)

(assert start!101656)

(declare-fun b_free!26341 () Bool)

(declare-fun b_next!26341 () Bool)

(assert (=> start!101656 (= b_free!26341 (not b_next!26341))))

(declare-fun tp!92067 () Bool)

(declare-fun b_and!43935 () Bool)

(assert (=> start!101656 (= tp!92067 b_and!43935)))

(declare-fun b!1221699 () Bool)

(declare-fun e!693859 () Bool)

(declare-fun e!693856 () Bool)

(assert (=> b!1221699 (= e!693859 e!693856)))

(declare-fun res!811717 () Bool)

(assert (=> b!1221699 (=> res!811717 e!693856)))

(declare-datatypes ((array!78848 0))(
  ( (array!78849 (arr!38048 (Array (_ BitVec 32) (_ BitVec 64))) (size!38585 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78848)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1221699 (= res!811717 (not (= (select (arr!38048 _keys!1208) from!1455) k!934)))))

(declare-fun b!1221700 () Bool)

(declare-fun res!811707 () Bool)

(declare-fun e!693851 () Bool)

(assert (=> b!1221700 (=> res!811707 e!693851)))

(declare-datatypes ((List!27015 0))(
  ( (Nil!27012) (Cons!27011 (h!28220 (_ BitVec 64)) (t!40343 List!27015)) )
))
(declare-fun contains!7046 (List!27015 (_ BitVec 64)) Bool)

(assert (=> b!1221700 (= res!811707 (contains!7046 Nil!27012 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1221701 () Bool)

(assert (=> b!1221701 (= e!693851 true)))

(declare-fun lt!555704 () Bool)

(assert (=> b!1221701 (= lt!555704 (contains!7046 Nil!27012 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1221702 () Bool)

(declare-fun e!693848 () Bool)

(declare-fun tp_is_empty!31045 () Bool)

(assert (=> b!1221702 (= e!693848 tp_is_empty!31045)))

(declare-fun b!1221703 () Bool)

(declare-fun res!811702 () Bool)

(declare-fun e!693854 () Bool)

(assert (=> b!1221703 (=> (not res!811702) (not e!693854))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!46521 0))(
  ( (V!46522 (val!15579 Int)) )
))
(declare-datatypes ((ValueCell!14813 0))(
  ( (ValueCellFull!14813 (v!18241 V!46521)) (EmptyCell!14813) )
))
(declare-datatypes ((array!78850 0))(
  ( (array!78851 (arr!38049 (Array (_ BitVec 32) ValueCell!14813)) (size!38586 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78850)

(assert (=> b!1221703 (= res!811702 (and (= (size!38586 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38585 _keys!1208) (size!38586 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun b!1221704 () Bool)

(declare-fun arrayContainsKey!0 (array!78848 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1221704 (= e!693856 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1221705 () Bool)

(declare-fun res!811705 () Bool)

(assert (=> b!1221705 (=> (not res!811705) (not e!693854))))

(assert (=> b!1221705 (= res!811705 (= (select (arr!38048 _keys!1208) i!673) k!934))))

(declare-fun b!1221706 () Bool)

(declare-fun res!811714 () Bool)

(assert (=> b!1221706 (=> (not res!811714) (not e!693854))))

(declare-fun arrayNoDuplicates!0 (array!78848 (_ BitVec 32) List!27015) Bool)

(assert (=> b!1221706 (= res!811714 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27012))))

(declare-fun b!1221707 () Bool)

(declare-fun res!811716 () Bool)

(declare-fun e!693852 () Bool)

(assert (=> b!1221707 (=> (not res!811716) (not e!693852))))

(declare-fun lt!555703 () array!78848)

(assert (=> b!1221707 (= res!811716 (arrayNoDuplicates!0 lt!555703 #b00000000000000000000000000000000 Nil!27012))))

(declare-fun b!1221708 () Bool)

(declare-fun res!811709 () Bool)

(assert (=> b!1221708 (=> res!811709 e!693851)))

(declare-fun noDuplicate!1658 (List!27015) Bool)

(assert (=> b!1221708 (= res!811709 (not (noDuplicate!1658 Nil!27012)))))

(declare-fun mapNonEmpty!48463 () Bool)

(declare-fun mapRes!48463 () Bool)

(declare-fun tp!92066 () Bool)

(assert (=> mapNonEmpty!48463 (= mapRes!48463 (and tp!92066 e!693848))))

(declare-fun mapKey!48463 () (_ BitVec 32))

(declare-fun mapValue!48463 () ValueCell!14813)

(declare-fun mapRest!48463 () (Array (_ BitVec 32) ValueCell!14813))

(assert (=> mapNonEmpty!48463 (= (arr!38049 _values!996) (store mapRest!48463 mapKey!48463 mapValue!48463))))

(declare-fun mapIsEmpty!48463 () Bool)

(assert (=> mapIsEmpty!48463 mapRes!48463))

(declare-fun b!1221709 () Bool)

(declare-fun e!693853 () Bool)

(assert (=> b!1221709 (= e!693853 e!693851)))

(declare-fun res!811710 () Bool)

(assert (=> b!1221709 (=> res!811710 e!693851)))

(assert (=> b!1221709 (= res!811710 (or (bvsge (size!38585 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38585 _keys!1208)) (bvsge from!1455 (size!38585 _keys!1208))))))

(assert (=> b!1221709 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27012)))

(declare-datatypes ((Unit!40380 0))(
  ( (Unit!40381) )
))
(declare-fun lt!555708 () Unit!40380)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78848 (_ BitVec 32) (_ BitVec 32)) Unit!40380)

(assert (=> b!1221709 (= lt!555708 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1221709 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!555702 () Unit!40380)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78848 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40380)

(assert (=> b!1221709 (= lt!555702 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun res!811703 () Bool)

(assert (=> start!101656 (=> (not res!811703) (not e!693854))))

(assert (=> start!101656 (= res!811703 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38585 _keys!1208))))))

(assert (=> start!101656 e!693854))

(assert (=> start!101656 tp_is_empty!31045))

(declare-fun array_inv!28866 (array!78848) Bool)

(assert (=> start!101656 (array_inv!28866 _keys!1208)))

(assert (=> start!101656 true))

(assert (=> start!101656 tp!92067))

(declare-fun e!693849 () Bool)

(declare-fun array_inv!28867 (array!78850) Bool)

(assert (=> start!101656 (and (array_inv!28867 _values!996) e!693849)))

(declare-fun b!1221710 () Bool)

(declare-fun res!811711 () Bool)

(assert (=> b!1221710 (=> (not res!811711) (not e!693854))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1221710 (= res!811711 (validKeyInArray!0 k!934))))

(declare-fun b!1221711 () Bool)

(declare-fun e!693850 () Bool)

(assert (=> b!1221711 (= e!693850 tp_is_empty!31045)))

(declare-fun b!1221712 () Bool)

(declare-fun res!811706 () Bool)

(assert (=> b!1221712 (=> (not res!811706) (not e!693854))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78848 (_ BitVec 32)) Bool)

(assert (=> b!1221712 (= res!811706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1221713 () Bool)

(assert (=> b!1221713 (= e!693849 (and e!693850 mapRes!48463))))

(declare-fun condMapEmpty!48463 () Bool)

(declare-fun mapDefault!48463 () ValueCell!14813)

