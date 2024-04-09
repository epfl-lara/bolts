; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101328 () Bool)

(assert start!101328)

(declare-fun b_free!26215 () Bool)

(declare-fun b_next!26215 () Bool)

(assert (=> start!101328 (= b_free!26215 (not b_next!26215))))

(declare-fun tp!91667 () Bool)

(declare-fun b_and!43557 () Bool)

(assert (=> start!101328 (= tp!91667 b_and!43557)))

(declare-fun b!1217004 () Bool)

(declare-fun e!690963 () Bool)

(declare-fun e!690967 () Bool)

(assert (=> b!1217004 (= e!690963 e!690967)))

(declare-fun res!808304 () Bool)

(assert (=> b!1217004 (=> (not res!808304) (not e!690967))))

(declare-datatypes ((array!78584 0))(
  ( (array!78585 (arr!37923 (Array (_ BitVec 32) (_ BitVec 64))) (size!38460 (_ BitVec 32))) )
))
(declare-fun lt!553091 () array!78584)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78584 (_ BitVec 32)) Bool)

(assert (=> b!1217004 (= res!808304 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!553091 mask!1564))))

(declare-fun _keys!1208 () array!78584)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1217004 (= lt!553091 (array!78585 (store (arr!37923 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38460 _keys!1208)))))

(declare-fun b!1217005 () Bool)

(declare-fun e!690964 () Bool)

(declare-fun e!690961 () Bool)

(assert (=> b!1217005 (= e!690964 e!690961)))

(declare-fun res!808301 () Bool)

(assert (=> b!1217005 (=> res!808301 e!690961)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1217005 (= res!808301 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46353 0))(
  ( (V!46354 (val!15516 Int)) )
))
(declare-fun zeroValue!944 () V!46353)

(declare-datatypes ((ValueCell!14750 0))(
  ( (ValueCellFull!14750 (v!18170 V!46353)) (EmptyCell!14750) )
))
(declare-datatypes ((array!78586 0))(
  ( (array!78587 (arr!37924 (Array (_ BitVec 32) ValueCell!14750)) (size!38461 (_ BitVec 32))) )
))
(declare-fun lt!553086 () array!78586)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!20088 0))(
  ( (tuple2!20089 (_1!10054 (_ BitVec 64)) (_2!10054 V!46353)) )
))
(declare-datatypes ((List!26909 0))(
  ( (Nil!26906) (Cons!26905 (h!28114 tuple2!20088) (t!40111 List!26909)) )
))
(declare-datatypes ((ListLongMap!18069 0))(
  ( (ListLongMap!18070 (toList!9050 List!26909)) )
))
(declare-fun lt!553088 () ListLongMap!18069)

(declare-fun minValue!944 () V!46353)

(declare-fun getCurrentListMapNoExtraKeys!5455 (array!78584 array!78586 (_ BitVec 32) (_ BitVec 32) V!46353 V!46353 (_ BitVec 32) Int) ListLongMap!18069)

(assert (=> b!1217005 (= lt!553088 (getCurrentListMapNoExtraKeys!5455 lt!553091 lt!553086 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!553083 () V!46353)

(declare-fun _values!996 () array!78586)

(assert (=> b!1217005 (= lt!553086 (array!78587 (store (arr!37924 _values!996) i!673 (ValueCellFull!14750 lt!553083)) (size!38461 _values!996)))))

(declare-fun dynLambda!3360 (Int (_ BitVec 64)) V!46353)

(assert (=> b!1217005 (= lt!553083 (dynLambda!3360 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!553084 () ListLongMap!18069)

(assert (=> b!1217005 (= lt!553084 (getCurrentListMapNoExtraKeys!5455 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!808306 () Bool)

(assert (=> start!101328 (=> (not res!808306) (not e!690963))))

(assert (=> start!101328 (= res!808306 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38460 _keys!1208))))))

(assert (=> start!101328 e!690963))

(declare-fun tp_is_empty!30919 () Bool)

(assert (=> start!101328 tp_is_empty!30919))

(declare-fun array_inv!28774 (array!78584) Bool)

(assert (=> start!101328 (array_inv!28774 _keys!1208)))

(assert (=> start!101328 true))

(assert (=> start!101328 tp!91667))

(declare-fun e!690962 () Bool)

(declare-fun array_inv!28775 (array!78586) Bool)

(assert (=> start!101328 (and (array_inv!28775 _values!996) e!690962)))

(declare-fun mapNonEmpty!48253 () Bool)

(declare-fun mapRes!48253 () Bool)

(declare-fun tp!91668 () Bool)

(declare-fun e!690966 () Bool)

(assert (=> mapNonEmpty!48253 (= mapRes!48253 (and tp!91668 e!690966))))

(declare-fun mapRest!48253 () (Array (_ BitVec 32) ValueCell!14750))

(declare-fun mapValue!48253 () ValueCell!14750)

(declare-fun mapKey!48253 () (_ BitVec 32))

(assert (=> mapNonEmpty!48253 (= (arr!37924 _values!996) (store mapRest!48253 mapKey!48253 mapValue!48253))))

(declare-fun b!1217006 () Bool)

(declare-fun res!808305 () Bool)

(assert (=> b!1217006 (=> (not res!808305) (not e!690963))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1217006 (= res!808305 (validKeyInArray!0 k!934))))

(declare-fun b!1217007 () Bool)

(declare-fun e!690969 () Bool)

(assert (=> b!1217007 (= e!690962 (and e!690969 mapRes!48253))))

(declare-fun condMapEmpty!48253 () Bool)

(declare-fun mapDefault!48253 () ValueCell!14750)

