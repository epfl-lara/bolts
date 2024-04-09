; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100458 () Bool)

(assert start!100458)

(declare-fun b_free!25745 () Bool)

(declare-fun b_next!25745 () Bool)

(assert (=> start!100458 (= b_free!25745 (not b_next!25745))))

(declare-fun tp!90226 () Bool)

(declare-fun b_and!42391 () Bool)

(assert (=> start!100458 (= tp!90226 b_and!42391)))

(declare-fun b!1198728 () Bool)

(declare-fun res!797920 () Bool)

(declare-fun e!680942 () Bool)

(assert (=> b!1198728 (=> (not res!797920) (not e!680942))))

(declare-datatypes ((array!77658 0))(
  ( (array!77659 (arr!37470 (Array (_ BitVec 32) (_ BitVec 64))) (size!38007 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77658)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77658 (_ BitVec 32)) Bool)

(assert (=> b!1198728 (= res!797920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1198729 () Bool)

(declare-fun res!797917 () Bool)

(declare-fun e!680940 () Bool)

(assert (=> b!1198729 (=> (not res!797917) (not e!680940))))

(declare-fun lt!543538 () array!77658)

(declare-datatypes ((List!26528 0))(
  ( (Nil!26525) (Cons!26524 (h!27733 (_ BitVec 64)) (t!39260 List!26528)) )
))
(declare-fun arrayNoDuplicates!0 (array!77658 (_ BitVec 32) List!26528) Bool)

(assert (=> b!1198729 (= res!797917 (arrayNoDuplicates!0 lt!543538 #b00000000000000000000000000000000 Nil!26525))))

(declare-fun b!1198730 () Bool)

(declare-fun e!680939 () Bool)

(assert (=> b!1198730 (= e!680940 (not e!680939))))

(declare-fun res!797921 () Bool)

(assert (=> b!1198730 (=> res!797921 e!680939)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1198730 (= res!797921 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77658 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1198730 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39680 0))(
  ( (Unit!39681) )
))
(declare-fun lt!543539 () Unit!39680)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77658 (_ BitVec 64) (_ BitVec 32)) Unit!39680)

(assert (=> b!1198730 (= lt!543539 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1198731 () Bool)

(declare-fun res!797923 () Bool)

(assert (=> b!1198731 (=> (not res!797923) (not e!680942))))

(assert (=> b!1198731 (= res!797923 (= (select (arr!37470 _keys!1208) i!673) k!934))))

(declare-fun res!797925 () Bool)

(assert (=> start!100458 (=> (not res!797925) (not e!680942))))

(assert (=> start!100458 (= res!797925 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38007 _keys!1208))))))

(assert (=> start!100458 e!680942))

(declare-fun tp_is_empty!30449 () Bool)

(assert (=> start!100458 tp_is_empty!30449))

(declare-fun array_inv!28460 (array!77658) Bool)

(assert (=> start!100458 (array_inv!28460 _keys!1208)))

(assert (=> start!100458 true))

(assert (=> start!100458 tp!90226))

(declare-datatypes ((V!45725 0))(
  ( (V!45726 (val!15281 Int)) )
))
(declare-datatypes ((ValueCell!14515 0))(
  ( (ValueCellFull!14515 (v!17920 V!45725)) (EmptyCell!14515) )
))
(declare-datatypes ((array!77660 0))(
  ( (array!77661 (arr!37471 (Array (_ BitVec 32) ValueCell!14515)) (size!38008 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77660)

(declare-fun e!680944 () Bool)

(declare-fun array_inv!28461 (array!77660) Bool)

(assert (=> start!100458 (and (array_inv!28461 _values!996) e!680944)))

(declare-fun b!1198732 () Bool)

(declare-fun res!797916 () Bool)

(assert (=> b!1198732 (=> (not res!797916) (not e!680942))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1198732 (= res!797916 (validKeyInArray!0 k!934))))

(declare-fun b!1198733 () Bool)

(declare-fun e!680938 () Bool)

(assert (=> b!1198733 (= e!680938 tp_is_empty!30449)))

(declare-fun mapNonEmpty!47516 () Bool)

(declare-fun mapRes!47516 () Bool)

(declare-fun tp!90225 () Bool)

(assert (=> mapNonEmpty!47516 (= mapRes!47516 (and tp!90225 e!680938))))

(declare-fun mapKey!47516 () (_ BitVec 32))

(declare-fun mapValue!47516 () ValueCell!14515)

(declare-fun mapRest!47516 () (Array (_ BitVec 32) ValueCell!14515))

(assert (=> mapNonEmpty!47516 (= (arr!37471 _values!996) (store mapRest!47516 mapKey!47516 mapValue!47516))))

(declare-fun b!1198734 () Bool)

(declare-fun res!797919 () Bool)

(assert (=> b!1198734 (=> (not res!797919) (not e!680942))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1198734 (= res!797919 (validMask!0 mask!1564))))

(declare-fun b!1198735 () Bool)

(declare-fun res!797918 () Bool)

(assert (=> b!1198735 (=> (not res!797918) (not e!680942))))

(assert (=> b!1198735 (= res!797918 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38007 _keys!1208))))))

(declare-fun b!1198736 () Bool)

(declare-fun res!797924 () Bool)

(assert (=> b!1198736 (=> (not res!797924) (not e!680942))))

(assert (=> b!1198736 (= res!797924 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26525))))

(declare-fun b!1198737 () Bool)

(assert (=> b!1198737 (= e!680939 true)))

(declare-fun zeroValue!944 () V!45725)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19700 0))(
  ( (tuple2!19701 (_1!9860 (_ BitVec 64)) (_2!9860 V!45725)) )
))
(declare-datatypes ((List!26529 0))(
  ( (Nil!26526) (Cons!26525 (h!27734 tuple2!19700) (t!39261 List!26529)) )
))
(declare-datatypes ((ListLongMap!17681 0))(
  ( (ListLongMap!17682 (toList!8856 List!26529)) )
))
(declare-fun lt!543540 () ListLongMap!17681)

(declare-fun minValue!944 () V!45725)

(declare-fun getCurrentListMapNoExtraKeys!5269 (array!77658 array!77660 (_ BitVec 32) (_ BitVec 32) V!45725 V!45725 (_ BitVec 32) Int) ListLongMap!17681)

(declare-fun dynLambda!3200 (Int (_ BitVec 64)) V!45725)

(assert (=> b!1198737 (= lt!543540 (getCurrentListMapNoExtraKeys!5269 lt!543538 (array!77661 (store (arr!37471 _values!996) i!673 (ValueCellFull!14515 (dynLambda!3200 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38008 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543541 () ListLongMap!17681)

(assert (=> b!1198737 (= lt!543541 (getCurrentListMapNoExtraKeys!5269 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1198738 () Bool)

(declare-fun res!797922 () Bool)

(assert (=> b!1198738 (=> (not res!797922) (not e!680942))))

(assert (=> b!1198738 (= res!797922 (and (= (size!38008 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38007 _keys!1208) (size!38008 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1198739 () Bool)

(declare-fun e!680943 () Bool)

(assert (=> b!1198739 (= e!680944 (and e!680943 mapRes!47516))))

(declare-fun condMapEmpty!47516 () Bool)

(declare-fun mapDefault!47516 () ValueCell!14515)

