; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100484 () Bool)

(assert start!100484)

(declare-fun b_free!25771 () Bool)

(declare-fun b_next!25771 () Bool)

(assert (=> start!100484 (= b_free!25771 (not b_next!25771))))

(declare-fun tp!90303 () Bool)

(declare-fun b_and!42443 () Bool)

(assert (=> start!100484 (= tp!90303 b_and!42443)))

(declare-fun b!1199300 () Bool)

(declare-fun res!798345 () Bool)

(declare-fun e!681212 () Bool)

(assert (=> b!1199300 (=> (not res!798345) (not e!681212))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1199300 (= res!798345 (validMask!0 mask!1564))))

(declare-fun res!798350 () Bool)

(assert (=> start!100484 (=> (not res!798350) (not e!681212))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77706 0))(
  ( (array!77707 (arr!37494 (Array (_ BitVec 32) (_ BitVec 64))) (size!38031 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77706)

(assert (=> start!100484 (= res!798350 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38031 _keys!1208))))))

(assert (=> start!100484 e!681212))

(declare-fun tp_is_empty!30475 () Bool)

(assert (=> start!100484 tp_is_empty!30475))

(declare-fun array_inv!28476 (array!77706) Bool)

(assert (=> start!100484 (array_inv!28476 _keys!1208)))

(assert (=> start!100484 true))

(assert (=> start!100484 tp!90303))

(declare-datatypes ((V!45761 0))(
  ( (V!45762 (val!15294 Int)) )
))
(declare-datatypes ((ValueCell!14528 0))(
  ( (ValueCellFull!14528 (v!17933 V!45761)) (EmptyCell!14528) )
))
(declare-datatypes ((array!77708 0))(
  ( (array!77709 (arr!37495 (Array (_ BitVec 32) ValueCell!14528)) (size!38032 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77708)

(declare-fun e!681215 () Bool)

(declare-fun array_inv!28477 (array!77708) Bool)

(assert (=> start!100484 (and (array_inv!28477 _values!996) e!681215)))

(declare-fun b!1199301 () Bool)

(declare-fun res!798351 () Bool)

(assert (=> b!1199301 (=> (not res!798351) (not e!681212))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1199301 (= res!798351 (= (select (arr!37494 _keys!1208) i!673) k!934))))

(declare-fun b!1199302 () Bool)

(declare-fun e!681216 () Bool)

(assert (=> b!1199302 (= e!681216 true)))

(declare-fun zeroValue!944 () V!45761)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19716 0))(
  ( (tuple2!19717 (_1!9868 (_ BitVec 64)) (_2!9868 V!45761)) )
))
(declare-datatypes ((List!26547 0))(
  ( (Nil!26544) (Cons!26543 (h!27752 tuple2!19716) (t!39305 List!26547)) )
))
(declare-datatypes ((ListLongMap!17697 0))(
  ( (ListLongMap!17698 (toList!8864 List!26547)) )
))
(declare-fun lt!543697 () ListLongMap!17697)

(declare-fun minValue!944 () V!45761)

(declare-fun lt!543696 () array!77706)

(declare-fun getCurrentListMapNoExtraKeys!5277 (array!77706 array!77708 (_ BitVec 32) (_ BitVec 32) V!45761 V!45761 (_ BitVec 32) Int) ListLongMap!17697)

(declare-fun dynLambda!3208 (Int (_ BitVec 64)) V!45761)

(assert (=> b!1199302 (= lt!543697 (getCurrentListMapNoExtraKeys!5277 lt!543696 (array!77709 (store (arr!37495 _values!996) i!673 (ValueCellFull!14528 (dynLambda!3208 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38032 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543695 () ListLongMap!17697)

(assert (=> b!1199302 (= lt!543695 (getCurrentListMapNoExtraKeys!5277 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1199303 () Bool)

(declare-fun e!681217 () Bool)

(assert (=> b!1199303 (= e!681212 e!681217)))

(declare-fun res!798344 () Bool)

(assert (=> b!1199303 (=> (not res!798344) (not e!681217))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77706 (_ BitVec 32)) Bool)

(assert (=> b!1199303 (= res!798344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543696 mask!1564))))

(assert (=> b!1199303 (= lt!543696 (array!77707 (store (arr!37494 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38031 _keys!1208)))))

(declare-fun b!1199304 () Bool)

(declare-fun res!798346 () Bool)

(assert (=> b!1199304 (=> (not res!798346) (not e!681212))))

(assert (=> b!1199304 (= res!798346 (and (= (size!38032 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38031 _keys!1208) (size!38032 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1199305 () Bool)

(declare-fun res!798353 () Bool)

(assert (=> b!1199305 (=> (not res!798353) (not e!681212))))

(declare-datatypes ((List!26548 0))(
  ( (Nil!26545) (Cons!26544 (h!27753 (_ BitVec 64)) (t!39306 List!26548)) )
))
(declare-fun arrayNoDuplicates!0 (array!77706 (_ BitVec 32) List!26548) Bool)

(assert (=> b!1199305 (= res!798353 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26545))))

(declare-fun b!1199306 () Bool)

(declare-fun res!798349 () Bool)

(assert (=> b!1199306 (=> (not res!798349) (not e!681212))))

(assert (=> b!1199306 (= res!798349 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38031 _keys!1208))))))

(declare-fun b!1199307 () Bool)

(declare-fun res!798354 () Bool)

(assert (=> b!1199307 (=> (not res!798354) (not e!681217))))

(assert (=> b!1199307 (= res!798354 (arrayNoDuplicates!0 lt!543696 #b00000000000000000000000000000000 Nil!26545))))

(declare-fun mapIsEmpty!47555 () Bool)

(declare-fun mapRes!47555 () Bool)

(assert (=> mapIsEmpty!47555 mapRes!47555))

(declare-fun b!1199308 () Bool)

(declare-fun e!681211 () Bool)

(assert (=> b!1199308 (= e!681215 (and e!681211 mapRes!47555))))

(declare-fun condMapEmpty!47555 () Bool)

(declare-fun mapDefault!47555 () ValueCell!14528)

