; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101422 () Bool)

(assert start!101422)

(declare-fun b_free!26257 () Bool)

(declare-fun b_next!26257 () Bool)

(assert (=> start!101422 (= b_free!26257 (not b_next!26257))))

(declare-fun tp!91799 () Bool)

(declare-fun b_and!43677 () Bool)

(assert (=> start!101422 (= tp!91799 b_and!43677)))

(declare-fun b!1218427 () Bool)

(declare-fun e!691803 () Bool)

(declare-fun e!691806 () Bool)

(assert (=> b!1218427 (= e!691803 e!691806)))

(declare-fun res!809319 () Bool)

(assert (=> b!1218427 (=> res!809319 e!691806)))

(declare-datatypes ((array!78670 0))(
  ( (array!78671 (arr!37964 (Array (_ BitVec 32) (_ BitVec 64))) (size!38501 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78670)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1218427 (= res!809319 (not (= (select (arr!37964 _keys!1208) from!1455) k!934)))))

(declare-fun b!1218428 () Bool)

(declare-fun res!809320 () Bool)

(declare-fun e!691810 () Bool)

(assert (=> b!1218428 (=> (not res!809320) (not e!691810))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1218428 (= res!809320 (validKeyInArray!0 k!934))))

(declare-fun b!1218429 () Bool)

(declare-fun e!691811 () Bool)

(assert (=> b!1218429 (= e!691811 (or (not (= (select (arr!37964 _keys!1208) from!1455) k!934)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (size!38501 _keys!1208) #b01111111111111111111111111111111)))))

(assert (=> b!1218429 e!691803))

(declare-fun res!809326 () Bool)

(assert (=> b!1218429 (=> (not res!809326) (not e!691803))))

(declare-datatypes ((V!46409 0))(
  ( (V!46410 (val!15537 Int)) )
))
(declare-fun lt!553870 () V!46409)

(declare-datatypes ((tuple2!20120 0))(
  ( (tuple2!20121 (_1!10070 (_ BitVec 64)) (_2!10070 V!46409)) )
))
(declare-datatypes ((List!26940 0))(
  ( (Nil!26937) (Cons!26936 (h!28145 tuple2!20120) (t!40184 List!26940)) )
))
(declare-datatypes ((ListLongMap!18101 0))(
  ( (ListLongMap!18102 (toList!9066 List!26940)) )
))
(declare-fun lt!553867 () ListLongMap!18101)

(declare-datatypes ((ValueCell!14771 0))(
  ( (ValueCellFull!14771 (v!18193 V!46409)) (EmptyCell!14771) )
))
(declare-datatypes ((array!78672 0))(
  ( (array!78673 (arr!37965 (Array (_ BitVec 32) ValueCell!14771)) (size!38502 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78672)

(declare-fun lt!553866 () ListLongMap!18101)

(declare-fun +!4047 (ListLongMap!18101 tuple2!20120) ListLongMap!18101)

(declare-fun get!19395 (ValueCell!14771 V!46409) V!46409)

(assert (=> b!1218429 (= res!809326 (= lt!553866 (+!4047 lt!553867 (tuple2!20121 (select (arr!37964 _keys!1208) from!1455) (get!19395 (select (arr!37965 _values!996) from!1455) lt!553870)))))))

(declare-fun b!1218430 () Bool)

(declare-fun e!691805 () Bool)

(declare-fun tp_is_empty!30961 () Bool)

(assert (=> b!1218430 (= e!691805 tp_is_empty!30961)))

(declare-fun b!1218431 () Bool)

(declare-fun e!691807 () Bool)

(declare-fun e!691812 () Bool)

(assert (=> b!1218431 (= e!691807 e!691812)))

(declare-fun res!809322 () Bool)

(assert (=> b!1218431 (=> res!809322 e!691812)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1218431 (= res!809322 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46409)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!553865 () array!78670)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46409)

(declare-fun lt!553869 () array!78672)

(declare-fun getCurrentListMapNoExtraKeys!5470 (array!78670 array!78672 (_ BitVec 32) (_ BitVec 32) V!46409 V!46409 (_ BitVec 32) Int) ListLongMap!18101)

(assert (=> b!1218431 (= lt!553866 (getCurrentListMapNoExtraKeys!5470 lt!553865 lt!553869 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1218431 (= lt!553869 (array!78673 (store (arr!37965 _values!996) i!673 (ValueCellFull!14771 lt!553870)) (size!38502 _values!996)))))

(declare-fun dynLambda!3374 (Int (_ BitVec 64)) V!46409)

(assert (=> b!1218431 (= lt!553870 (dynLambda!3374 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!553864 () ListLongMap!18101)

(assert (=> b!1218431 (= lt!553864 (getCurrentListMapNoExtraKeys!5470 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1218432 () Bool)

(declare-fun e!691808 () Bool)

(assert (=> b!1218432 (= e!691810 e!691808)))

(declare-fun res!809321 () Bool)

(assert (=> b!1218432 (=> (not res!809321) (not e!691808))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78670 (_ BitVec 32)) Bool)

(assert (=> b!1218432 (= res!809321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!553865 mask!1564))))

(assert (=> b!1218432 (= lt!553865 (array!78671 (store (arr!37964 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38501 _keys!1208)))))

(declare-fun b!1218433 () Bool)

(assert (=> b!1218433 (= e!691812 e!691811)))

(declare-fun res!809330 () Bool)

(assert (=> b!1218433 (=> res!809330 e!691811)))

(assert (=> b!1218433 (= res!809330 (not (validKeyInArray!0 (select (arr!37964 _keys!1208) from!1455))))))

(declare-fun lt!553862 () ListLongMap!18101)

(assert (=> b!1218433 (= lt!553862 lt!553867)))

(declare-fun lt!553863 () ListLongMap!18101)

(declare-fun -!1925 (ListLongMap!18101 (_ BitVec 64)) ListLongMap!18101)

(assert (=> b!1218433 (= lt!553867 (-!1925 lt!553863 k!934))))

(assert (=> b!1218433 (= lt!553862 (getCurrentListMapNoExtraKeys!5470 lt!553865 lt!553869 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1218433 (= lt!553863 (getCurrentListMapNoExtraKeys!5470 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40316 0))(
  ( (Unit!40317) )
))
(declare-fun lt!553871 () Unit!40316)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1127 (array!78670 array!78672 (_ BitVec 32) (_ BitVec 32) V!46409 V!46409 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40316)

(assert (=> b!1218433 (= lt!553871 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1127 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1218435 () Bool)

(assert (=> b!1218435 (= e!691808 (not e!691807))))

(declare-fun res!809328 () Bool)

(assert (=> b!1218435 (=> res!809328 e!691807)))

(assert (=> b!1218435 (= res!809328 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78670 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1218435 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!553868 () Unit!40316)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78670 (_ BitVec 64) (_ BitVec 32)) Unit!40316)

(assert (=> b!1218435 (= lt!553868 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1218436 () Bool)

(declare-fun res!809323 () Bool)

(assert (=> b!1218436 (=> (not res!809323) (not e!691810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1218436 (= res!809323 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!48322 () Bool)

(declare-fun mapRes!48322 () Bool)

(declare-fun tp!91800 () Bool)

(declare-fun e!691809 () Bool)

(assert (=> mapNonEmpty!48322 (= mapRes!48322 (and tp!91800 e!691809))))

(declare-fun mapRest!48322 () (Array (_ BitVec 32) ValueCell!14771))

(declare-fun mapValue!48322 () ValueCell!14771)

(declare-fun mapKey!48322 () (_ BitVec 32))

(assert (=> mapNonEmpty!48322 (= (arr!37965 _values!996) (store mapRest!48322 mapKey!48322 mapValue!48322))))

(declare-fun b!1218437 () Bool)

(declare-fun res!809327 () Bool)

(assert (=> b!1218437 (=> (not res!809327) (not e!691810))))

(assert (=> b!1218437 (= res!809327 (= (select (arr!37964 _keys!1208) i!673) k!934))))

(declare-fun b!1218438 () Bool)

(assert (=> b!1218438 (= e!691809 tp_is_empty!30961)))

(declare-fun b!1218439 () Bool)

(declare-fun res!809318 () Bool)

(assert (=> b!1218439 (=> (not res!809318) (not e!691810))))

(assert (=> b!1218439 (= res!809318 (and (= (size!38502 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38501 _keys!1208) (size!38502 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1218440 () Bool)

(declare-fun res!809332 () Bool)

(assert (=> b!1218440 (=> (not res!809332) (not e!691810))))

(assert (=> b!1218440 (= res!809332 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38501 _keys!1208))))))

(declare-fun b!1218441 () Bool)

(declare-fun res!809329 () Bool)

(assert (=> b!1218441 (=> (not res!809329) (not e!691810))))

(declare-datatypes ((List!26941 0))(
  ( (Nil!26938) (Cons!26937 (h!28146 (_ BitVec 64)) (t!40185 List!26941)) )
))
(declare-fun arrayNoDuplicates!0 (array!78670 (_ BitVec 32) List!26941) Bool)

(assert (=> b!1218441 (= res!809329 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26938))))

(declare-fun res!809331 () Bool)

(assert (=> start!101422 (=> (not res!809331) (not e!691810))))

(assert (=> start!101422 (= res!809331 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38501 _keys!1208))))))

(assert (=> start!101422 e!691810))

(assert (=> start!101422 tp_is_empty!30961))

(declare-fun array_inv!28806 (array!78670) Bool)

(assert (=> start!101422 (array_inv!28806 _keys!1208)))

(assert (=> start!101422 true))

(assert (=> start!101422 tp!91799))

(declare-fun e!691813 () Bool)

(declare-fun array_inv!28807 (array!78672) Bool)

(assert (=> start!101422 (and (array_inv!28807 _values!996) e!691813)))

(declare-fun b!1218434 () Bool)

(assert (=> b!1218434 (= e!691806 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!48322 () Bool)

(assert (=> mapIsEmpty!48322 mapRes!48322))

(declare-fun b!1218442 () Bool)

(declare-fun res!809325 () Bool)

(assert (=> b!1218442 (=> (not res!809325) (not e!691810))))

(assert (=> b!1218442 (= res!809325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1218443 () Bool)

(declare-fun res!809324 () Bool)

(assert (=> b!1218443 (=> (not res!809324) (not e!691808))))

(assert (=> b!1218443 (= res!809324 (arrayNoDuplicates!0 lt!553865 #b00000000000000000000000000000000 Nil!26938))))

(declare-fun b!1218444 () Bool)

(assert (=> b!1218444 (= e!691813 (and e!691805 mapRes!48322))))

(declare-fun condMapEmpty!48322 () Bool)

(declare-fun mapDefault!48322 () ValueCell!14771)

