; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100018 () Bool)

(assert start!100018)

(declare-fun b_free!25561 () Bool)

(declare-fun b_next!25561 () Bool)

(assert (=> start!100018 (= b_free!25561 (not b_next!25561))))

(declare-fun tp!89397 () Bool)

(declare-fun b_and!42003 () Bool)

(assert (=> start!100018 (= tp!89397 b_and!42003)))

(declare-fun b!1190793 () Bool)

(declare-fun e!676977 () Bool)

(declare-fun tp_is_empty!30091 () Bool)

(assert (=> b!1190793 (= e!676977 tp_is_empty!30091)))

(declare-fun mapNonEmpty!46964 () Bool)

(declare-fun mapRes!46964 () Bool)

(declare-fun tp!89398 () Bool)

(declare-fun e!676981 () Bool)

(assert (=> mapNonEmpty!46964 (= mapRes!46964 (and tp!89398 e!676981))))

(declare-datatypes ((V!45249 0))(
  ( (V!45250 (val!15102 Int)) )
))
(declare-datatypes ((ValueCell!14336 0))(
  ( (ValueCellFull!14336 (v!17741 V!45249)) (EmptyCell!14336) )
))
(declare-fun mapValue!46964 () ValueCell!14336)

(declare-fun mapRest!46964 () (Array (_ BitVec 32) ValueCell!14336))

(declare-fun mapKey!46964 () (_ BitVec 32))

(declare-datatypes ((array!76948 0))(
  ( (array!76949 (arr!37120 (Array (_ BitVec 32) ValueCell!14336)) (size!37657 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76948)

(assert (=> mapNonEmpty!46964 (= (arr!37120 _values!996) (store mapRest!46964 mapKey!46964 mapValue!46964))))

(declare-fun b!1190794 () Bool)

(assert (=> b!1190794 (= e!676981 tp_is_empty!30091)))

(declare-fun b!1190795 () Bool)

(declare-fun res!792084 () Bool)

(declare-fun e!676979 () Bool)

(assert (=> b!1190795 (=> (not res!792084) (not e!676979))))

(declare-datatypes ((array!76950 0))(
  ( (array!76951 (arr!37121 (Array (_ BitVec 32) (_ BitVec 64))) (size!37658 (_ BitVec 32))) )
))
(declare-fun lt!541556 () array!76950)

(declare-datatypes ((List!26305 0))(
  ( (Nil!26302) (Cons!26301 (h!27510 (_ BitVec 64)) (t!38865 List!26305)) )
))
(declare-fun arrayNoDuplicates!0 (array!76950 (_ BitVec 32) List!26305) Bool)

(assert (=> b!1190795 (= res!792084 (arrayNoDuplicates!0 lt!541556 #b00000000000000000000000000000000 Nil!26302))))

(declare-fun b!1190796 () Bool)

(declare-fun res!792085 () Bool)

(declare-fun e!676976 () Bool)

(assert (=> b!1190796 (=> (not res!792085) (not e!676976))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1190796 (= res!792085 (validKeyInArray!0 k!934))))

(declare-fun b!1190797 () Bool)

(declare-fun e!676980 () Bool)

(assert (=> b!1190797 (= e!676980 true)))

(declare-fun zeroValue!944 () V!45249)

(declare-fun _keys!1208 () array!76950)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!541555 () array!76948)

(declare-fun minValue!944 () V!45249)

(declare-datatypes ((tuple2!19544 0))(
  ( (tuple2!19545 (_1!9782 (_ BitVec 64)) (_2!9782 V!45249)) )
))
(declare-datatypes ((List!26306 0))(
  ( (Nil!26303) (Cons!26302 (h!27511 tuple2!19544) (t!38866 List!26306)) )
))
(declare-datatypes ((ListLongMap!17525 0))(
  ( (ListLongMap!17526 (toList!8778 List!26306)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5192 (array!76950 array!76948 (_ BitVec 32) (_ BitVec 32) V!45249 V!45249 (_ BitVec 32) Int) ListLongMap!17525)

(declare-fun -!1760 (ListLongMap!17525 (_ BitVec 64)) ListLongMap!17525)

(assert (=> b!1190797 (= (getCurrentListMapNoExtraKeys!5192 lt!541556 lt!541555 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1760 (getCurrentListMapNoExtraKeys!5192 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39448 0))(
  ( (Unit!39449) )
))
(declare-fun lt!541560 () Unit!39448)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!966 (array!76950 array!76948 (_ BitVec 32) (_ BitVec 32) V!45249 V!45249 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39448)

(assert (=> b!1190797 (= lt!541560 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!966 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!46964 () Bool)

(assert (=> mapIsEmpty!46964 mapRes!46964))

(declare-fun b!1190798 () Bool)

(declare-fun e!676974 () Bool)

(assert (=> b!1190798 (= e!676974 e!676980)))

(declare-fun res!792088 () Bool)

(assert (=> b!1190798 (=> res!792088 e!676980)))

(assert (=> b!1190798 (= res!792088 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!541559 () ListLongMap!17525)

(assert (=> b!1190798 (= lt!541559 (getCurrentListMapNoExtraKeys!5192 lt!541556 lt!541555 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3137 (Int (_ BitVec 64)) V!45249)

(assert (=> b!1190798 (= lt!541555 (array!76949 (store (arr!37120 _values!996) i!673 (ValueCellFull!14336 (dynLambda!3137 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37657 _values!996)))))

(declare-fun lt!541558 () ListLongMap!17525)

(assert (=> b!1190798 (= lt!541558 (getCurrentListMapNoExtraKeys!5192 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1190800 () Bool)

(declare-fun res!792080 () Bool)

(assert (=> b!1190800 (=> (not res!792080) (not e!676976))))

(assert (=> b!1190800 (= res!792080 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26302))))

(declare-fun b!1190801 () Bool)

(declare-fun res!792082 () Bool)

(assert (=> b!1190801 (=> (not res!792082) (not e!676976))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1190801 (= res!792082 (validMask!0 mask!1564))))

(declare-fun b!1190802 () Bool)

(assert (=> b!1190802 (= e!676976 e!676979)))

(declare-fun res!792077 () Bool)

(assert (=> b!1190802 (=> (not res!792077) (not e!676979))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76950 (_ BitVec 32)) Bool)

(assert (=> b!1190802 (= res!792077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541556 mask!1564))))

(assert (=> b!1190802 (= lt!541556 (array!76951 (store (arr!37121 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37658 _keys!1208)))))

(declare-fun b!1190803 () Bool)

(declare-fun res!792083 () Bool)

(assert (=> b!1190803 (=> (not res!792083) (not e!676976))))

(assert (=> b!1190803 (= res!792083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1190804 () Bool)

(declare-fun res!792079 () Bool)

(assert (=> b!1190804 (=> (not res!792079) (not e!676976))))

(assert (=> b!1190804 (= res!792079 (and (= (size!37657 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37658 _keys!1208) (size!37657 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1190805 () Bool)

(declare-fun e!676975 () Bool)

(assert (=> b!1190805 (= e!676975 (and e!676977 mapRes!46964))))

(declare-fun condMapEmpty!46964 () Bool)

(declare-fun mapDefault!46964 () ValueCell!14336)

