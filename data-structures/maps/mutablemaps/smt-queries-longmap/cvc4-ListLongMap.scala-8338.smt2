; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101522 () Bool)

(assert start!101522)

(declare-fun b_free!26303 () Bool)

(declare-fun b_next!26303 () Bool)

(assert (=> start!101522 (= b_free!26303 (not b_next!26303))))

(declare-fun tp!91943 () Bool)

(declare-fun b_and!43805 () Bool)

(assert (=> start!101522 (= tp!91943 b_and!43805)))

(declare-fun b!1220060 () Bool)

(declare-fun e!692810 () Bool)

(declare-fun tp_is_empty!31007 () Bool)

(assert (=> b!1220060 (= e!692810 tp_is_empty!31007)))

(declare-fun mapIsEmpty!48397 () Bool)

(declare-fun mapRes!48397 () Bool)

(assert (=> mapIsEmpty!48397 mapRes!48397))

(declare-fun b!1220061 () Bool)

(declare-fun res!810539 () Bool)

(declare-fun e!692817 () Bool)

(assert (=> b!1220061 (=> (not res!810539) (not e!692817))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1220061 (= res!810539 (validKeyInArray!0 k!934))))

(declare-fun b!1220062 () Bool)

(declare-fun res!810536 () Bool)

(assert (=> b!1220062 (=> (not res!810536) (not e!692817))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!78766 0))(
  ( (array!78767 (arr!38010 (Array (_ BitVec 32) (_ BitVec 64))) (size!38547 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78766)

(assert (=> b!1220062 (= res!810536 (= (select (arr!38010 _keys!1208) i!673) k!934))))

(declare-fun b!1220063 () Bool)

(declare-fun e!692814 () Bool)

(assert (=> b!1220063 (= e!692817 e!692814)))

(declare-fun res!810540 () Bool)

(assert (=> b!1220063 (=> (not res!810540) (not e!692814))))

(declare-fun lt!554772 () array!78766)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78766 (_ BitVec 32)) Bool)

(assert (=> b!1220063 (= res!810540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!554772 mask!1564))))

(assert (=> b!1220063 (= lt!554772 (array!78767 (store (arr!38010 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38547 _keys!1208)))))

(declare-fun b!1220064 () Bool)

(declare-fun e!692813 () Bool)

(declare-fun arrayContainsKey!0 (array!78766 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1220064 (= e!692813 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1220065 () Bool)

(declare-fun e!692819 () Bool)

(declare-fun e!692818 () Bool)

(assert (=> b!1220065 (= e!692819 e!692818)))

(declare-fun res!810532 () Bool)

(assert (=> b!1220065 (=> res!810532 e!692818)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1220065 (= res!810532 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46469 0))(
  ( (V!46470 (val!15560 Int)) )
))
(declare-fun zeroValue!944 () V!46469)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14794 0))(
  ( (ValueCellFull!14794 (v!18218 V!46469)) (EmptyCell!14794) )
))
(declare-datatypes ((array!78768 0))(
  ( (array!78769 (arr!38011 (Array (_ BitVec 32) ValueCell!14794)) (size!38548 (_ BitVec 32))) )
))
(declare-fun lt!554773 () array!78768)

(declare-fun minValue!944 () V!46469)

(declare-datatypes ((tuple2!20164 0))(
  ( (tuple2!20165 (_1!10092 (_ BitVec 64)) (_2!10092 V!46469)) )
))
(declare-datatypes ((List!26983 0))(
  ( (Nil!26980) (Cons!26979 (h!28188 tuple2!20164) (t!40273 List!26983)) )
))
(declare-datatypes ((ListLongMap!18145 0))(
  ( (ListLongMap!18146 (toList!9088 List!26983)) )
))
(declare-fun lt!554768 () ListLongMap!18145)

(declare-fun getCurrentListMapNoExtraKeys!5487 (array!78766 array!78768 (_ BitVec 32) (_ BitVec 32) V!46469 V!46469 (_ BitVec 32) Int) ListLongMap!18145)

(assert (=> b!1220065 (= lt!554768 (getCurrentListMapNoExtraKeys!5487 lt!554772 lt!554773 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!554776 () V!46469)

(declare-fun _values!996 () array!78768)

(assert (=> b!1220065 (= lt!554773 (array!78769 (store (arr!38011 _values!996) i!673 (ValueCellFull!14794 lt!554776)) (size!38548 _values!996)))))

(declare-fun dynLambda!3389 (Int (_ BitVec 64)) V!46469)

(assert (=> b!1220065 (= lt!554776 (dynLambda!3389 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!554775 () ListLongMap!18145)

(assert (=> b!1220065 (= lt!554775 (getCurrentListMapNoExtraKeys!5487 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!810531 () Bool)

(assert (=> start!101522 (=> (not res!810531) (not e!692817))))

(assert (=> start!101522 (= res!810531 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38547 _keys!1208))))))

(assert (=> start!101522 e!692817))

(assert (=> start!101522 tp_is_empty!31007))

(declare-fun array_inv!28842 (array!78766) Bool)

(assert (=> start!101522 (array_inv!28842 _keys!1208)))

(assert (=> start!101522 true))

(assert (=> start!101522 tp!91943))

(declare-fun e!692811 () Bool)

(declare-fun array_inv!28843 (array!78768) Bool)

(assert (=> start!101522 (and (array_inv!28843 _values!996) e!692811)))

(declare-fun b!1220066 () Bool)

(declare-fun e!692815 () Bool)

(assert (=> b!1220066 (= e!692815 e!692813)))

(declare-fun res!810543 () Bool)

(assert (=> b!1220066 (=> res!810543 e!692813)))

(assert (=> b!1220066 (= res!810543 (not (= (select (arr!38010 _keys!1208) from!1455) k!934)))))

(declare-fun b!1220067 () Bool)

(declare-fun res!810545 () Bool)

(assert (=> b!1220067 (=> (not res!810545) (not e!692817))))

(declare-datatypes ((List!26984 0))(
  ( (Nil!26981) (Cons!26980 (h!28189 (_ BitVec 64)) (t!40274 List!26984)) )
))
(declare-fun arrayNoDuplicates!0 (array!78766 (_ BitVec 32) List!26984) Bool)

(assert (=> b!1220067 (= res!810545 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26981))))

(declare-fun b!1220068 () Bool)

(declare-fun res!810535 () Bool)

(assert (=> b!1220068 (=> (not res!810535) (not e!692817))))

(assert (=> b!1220068 (= res!810535 (and (= (size!38548 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38547 _keys!1208) (size!38548 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!48397 () Bool)

(declare-fun tp!91944 () Bool)

(assert (=> mapNonEmpty!48397 (= mapRes!48397 (and tp!91944 e!692810))))

(declare-fun mapValue!48397 () ValueCell!14794)

(declare-fun mapKey!48397 () (_ BitVec 32))

(declare-fun mapRest!48397 () (Array (_ BitVec 32) ValueCell!14794))

(assert (=> mapNonEmpty!48397 (= (arr!38011 _values!996) (store mapRest!48397 mapKey!48397 mapValue!48397))))

(declare-fun b!1220069 () Bool)

(declare-fun e!692809 () Bool)

(declare-fun e!692812 () Bool)

(assert (=> b!1220069 (= e!692809 e!692812)))

(declare-fun res!810538 () Bool)

(assert (=> b!1220069 (=> res!810538 e!692812)))

(assert (=> b!1220069 (= res!810538 (not (= (select (arr!38010 _keys!1208) from!1455) k!934)))))

(assert (=> b!1220069 e!692815))

(declare-fun res!810530 () Bool)

(assert (=> b!1220069 (=> (not res!810530) (not e!692815))))

(declare-fun lt!554771 () ListLongMap!18145)

(declare-fun +!4063 (ListLongMap!18145 tuple2!20164) ListLongMap!18145)

(declare-fun get!19429 (ValueCell!14794 V!46469) V!46469)

(assert (=> b!1220069 (= res!810530 (= lt!554768 (+!4063 lt!554771 (tuple2!20165 (select (arr!38010 _keys!1208) from!1455) (get!19429 (select (arr!38011 _values!996) from!1455) lt!554776)))))))

(declare-fun b!1220070 () Bool)

(declare-fun e!692820 () Bool)

(assert (=> b!1220070 (= e!692811 (and e!692820 mapRes!48397))))

(declare-fun condMapEmpty!48397 () Bool)

(declare-fun mapDefault!48397 () ValueCell!14794)

