; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100002 () Bool)

(assert start!100002)

(declare-fun b_free!25545 () Bool)

(declare-fun b_next!25545 () Bool)

(assert (=> start!100002 (= b_free!25545 (not b_next!25545))))

(declare-fun tp!89349 () Bool)

(declare-fun b_and!41971 () Bool)

(assert (=> start!100002 (= tp!89349 b_and!41971)))

(declare-fun b!1190417 () Bool)

(declare-fun res!791800 () Bool)

(declare-fun e!676788 () Bool)

(assert (=> b!1190417 (=> (not res!791800) (not e!676788))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1190417 (= res!791800 (validKeyInArray!0 k0!934))))

(declare-fun b!1190418 () Bool)

(declare-fun res!791794 () Bool)

(assert (=> b!1190418 (=> (not res!791794) (not e!676788))))

(declare-datatypes ((array!76916 0))(
  ( (array!76917 (arr!37104 (Array (_ BitVec 32) (_ BitVec 64))) (size!37641 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76916)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76916 (_ BitVec 32)) Bool)

(assert (=> b!1190418 (= res!791794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1190419 () Bool)

(declare-fun e!676785 () Bool)

(declare-fun tp_is_empty!30075 () Bool)

(assert (=> b!1190419 (= e!676785 tp_is_empty!30075)))

(declare-fun b!1190420 () Bool)

(declare-fun e!676782 () Bool)

(declare-fun e!676786 () Bool)

(declare-fun mapRes!46940 () Bool)

(assert (=> b!1190420 (= e!676782 (and e!676786 mapRes!46940))))

(declare-fun condMapEmpty!46940 () Bool)

(declare-datatypes ((V!45227 0))(
  ( (V!45228 (val!15094 Int)) )
))
(declare-datatypes ((ValueCell!14328 0))(
  ( (ValueCellFull!14328 (v!17733 V!45227)) (EmptyCell!14328) )
))
(declare-datatypes ((array!76918 0))(
  ( (array!76919 (arr!37105 (Array (_ BitVec 32) ValueCell!14328)) (size!37642 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76918)

(declare-fun mapDefault!46940 () ValueCell!14328)

(assert (=> b!1190420 (= condMapEmpty!46940 (= (arr!37105 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14328)) mapDefault!46940)))))

(declare-fun b!1190421 () Bool)

(declare-fun res!791797 () Bool)

(declare-fun e!676789 () Bool)

(assert (=> b!1190421 (=> (not res!791797) (not e!676789))))

(declare-fun lt!541416 () array!76916)

(declare-datatypes ((List!26290 0))(
  ( (Nil!26287) (Cons!26286 (h!27495 (_ BitVec 64)) (t!38834 List!26290)) )
))
(declare-fun arrayNoDuplicates!0 (array!76916 (_ BitVec 32) List!26290) Bool)

(assert (=> b!1190421 (= res!791797 (arrayNoDuplicates!0 lt!541416 #b00000000000000000000000000000000 Nil!26287))))

(declare-fun b!1190422 () Bool)

(declare-fun e!676784 () Bool)

(declare-fun e!676787 () Bool)

(assert (=> b!1190422 (= e!676784 e!676787)))

(declare-fun res!791796 () Bool)

(assert (=> b!1190422 (=> res!791796 e!676787)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1190422 (= res!791796 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45227)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19530 0))(
  ( (tuple2!19531 (_1!9775 (_ BitVec 64)) (_2!9775 V!45227)) )
))
(declare-datatypes ((List!26291 0))(
  ( (Nil!26288) (Cons!26287 (h!27496 tuple2!19530) (t!38835 List!26291)) )
))
(declare-datatypes ((ListLongMap!17511 0))(
  ( (ListLongMap!17512 (toList!8771 List!26291)) )
))
(declare-fun lt!541414 () ListLongMap!17511)

(declare-fun minValue!944 () V!45227)

(declare-fun lt!541415 () array!76918)

(declare-fun getCurrentListMapNoExtraKeys!5185 (array!76916 array!76918 (_ BitVec 32) (_ BitVec 32) V!45227 V!45227 (_ BitVec 32) Int) ListLongMap!17511)

(assert (=> b!1190422 (= lt!541414 (getCurrentListMapNoExtraKeys!5185 lt!541416 lt!541415 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3133 (Int (_ BitVec 64)) V!45227)

(assert (=> b!1190422 (= lt!541415 (array!76919 (store (arr!37105 _values!996) i!673 (ValueCellFull!14328 (dynLambda!3133 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37642 _values!996)))))

(declare-fun lt!541411 () ListLongMap!17511)

(assert (=> b!1190422 (= lt!541411 (getCurrentListMapNoExtraKeys!5185 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1190423 () Bool)

(declare-fun res!791799 () Bool)

(assert (=> b!1190423 (=> (not res!791799) (not e!676788))))

(assert (=> b!1190423 (= res!791799 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26287))))

(declare-fun b!1190424 () Bool)

(declare-fun res!791798 () Bool)

(assert (=> b!1190424 (=> (not res!791798) (not e!676788))))

(assert (=> b!1190424 (= res!791798 (and (= (size!37642 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37641 _keys!1208) (size!37642 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!46940 () Bool)

(declare-fun tp!89350 () Bool)

(assert (=> mapNonEmpty!46940 (= mapRes!46940 (and tp!89350 e!676785))))

(declare-fun mapValue!46940 () ValueCell!14328)

(declare-fun mapRest!46940 () (Array (_ BitVec 32) ValueCell!14328))

(declare-fun mapKey!46940 () (_ BitVec 32))

(assert (=> mapNonEmpty!46940 (= (arr!37105 _values!996) (store mapRest!46940 mapKey!46940 mapValue!46940))))

(declare-fun res!791789 () Bool)

(assert (=> start!100002 (=> (not res!791789) (not e!676788))))

(assert (=> start!100002 (= res!791789 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37641 _keys!1208))))))

(assert (=> start!100002 e!676788))

(assert (=> start!100002 tp_is_empty!30075))

(declare-fun array_inv!28194 (array!76916) Bool)

(assert (=> start!100002 (array_inv!28194 _keys!1208)))

(assert (=> start!100002 true))

(assert (=> start!100002 tp!89349))

(declare-fun array_inv!28195 (array!76918) Bool)

(assert (=> start!100002 (and (array_inv!28195 _values!996) e!676782)))

(declare-fun b!1190425 () Bool)

(assert (=> b!1190425 (= e!676786 tp_is_empty!30075)))

(declare-fun b!1190426 () Bool)

(assert (=> b!1190426 (= e!676787 true)))

(declare-fun -!1753 (ListLongMap!17511 (_ BitVec 64)) ListLongMap!17511)

(assert (=> b!1190426 (= (getCurrentListMapNoExtraKeys!5185 lt!541416 lt!541415 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1753 (getCurrentListMapNoExtraKeys!5185 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!39434 0))(
  ( (Unit!39435) )
))
(declare-fun lt!541413 () Unit!39434)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!959 (array!76916 array!76918 (_ BitVec 32) (_ BitVec 32) V!45227 V!45227 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39434)

(assert (=> b!1190426 (= lt!541413 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!959 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1190427 () Bool)

(assert (=> b!1190427 (= e!676789 (not e!676784))))

(declare-fun res!791795 () Bool)

(assert (=> b!1190427 (=> res!791795 e!676784)))

(assert (=> b!1190427 (= res!791795 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76916 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1190427 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!541412 () Unit!39434)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76916 (_ BitVec 64) (_ BitVec 32)) Unit!39434)

(assert (=> b!1190427 (= lt!541412 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1190428 () Bool)

(declare-fun res!791791 () Bool)

(assert (=> b!1190428 (=> (not res!791791) (not e!676788))))

(assert (=> b!1190428 (= res!791791 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37641 _keys!1208))))))

(declare-fun b!1190429 () Bool)

(declare-fun res!791792 () Bool)

(assert (=> b!1190429 (=> (not res!791792) (not e!676788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1190429 (= res!791792 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!46940 () Bool)

(assert (=> mapIsEmpty!46940 mapRes!46940))

(declare-fun b!1190430 () Bool)

(assert (=> b!1190430 (= e!676788 e!676789)))

(declare-fun res!791793 () Bool)

(assert (=> b!1190430 (=> (not res!791793) (not e!676789))))

(assert (=> b!1190430 (= res!791793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541416 mask!1564))))

(assert (=> b!1190430 (= lt!541416 (array!76917 (store (arr!37104 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37641 _keys!1208)))))

(declare-fun b!1190431 () Bool)

(declare-fun res!791790 () Bool)

(assert (=> b!1190431 (=> (not res!791790) (not e!676788))))

(assert (=> b!1190431 (= res!791790 (= (select (arr!37104 _keys!1208) i!673) k0!934))))

(assert (= (and start!100002 res!791789) b!1190429))

(assert (= (and b!1190429 res!791792) b!1190424))

(assert (= (and b!1190424 res!791798) b!1190418))

(assert (= (and b!1190418 res!791794) b!1190423))

(assert (= (and b!1190423 res!791799) b!1190428))

(assert (= (and b!1190428 res!791791) b!1190417))

(assert (= (and b!1190417 res!791800) b!1190431))

(assert (= (and b!1190431 res!791790) b!1190430))

(assert (= (and b!1190430 res!791793) b!1190421))

(assert (= (and b!1190421 res!791797) b!1190427))

(assert (= (and b!1190427 (not res!791795)) b!1190422))

(assert (= (and b!1190422 (not res!791796)) b!1190426))

(assert (= (and b!1190420 condMapEmpty!46940) mapIsEmpty!46940))

(assert (= (and b!1190420 (not condMapEmpty!46940)) mapNonEmpty!46940))

(get-info :version)

(assert (= (and mapNonEmpty!46940 ((_ is ValueCellFull!14328) mapValue!46940)) b!1190419))

(assert (= (and b!1190420 ((_ is ValueCellFull!14328) mapDefault!46940)) b!1190425))

(assert (= start!100002 b!1190420))

(declare-fun b_lambda!20707 () Bool)

(assert (=> (not b_lambda!20707) (not b!1190422)))

(declare-fun t!38833 () Bool)

(declare-fun tb!10365 () Bool)

(assert (=> (and start!100002 (= defaultEntry!1004 defaultEntry!1004) t!38833) tb!10365))

(declare-fun result!21289 () Bool)

(assert (=> tb!10365 (= result!21289 tp_is_empty!30075)))

(assert (=> b!1190422 t!38833))

(declare-fun b_and!41973 () Bool)

(assert (= b_and!41971 (and (=> t!38833 result!21289) b_and!41973)))

(declare-fun m!1099037 () Bool)

(assert (=> b!1190422 m!1099037))

(declare-fun m!1099039 () Bool)

(assert (=> b!1190422 m!1099039))

(declare-fun m!1099041 () Bool)

(assert (=> b!1190422 m!1099041))

(declare-fun m!1099043 () Bool)

(assert (=> b!1190422 m!1099043))

(declare-fun m!1099045 () Bool)

(assert (=> mapNonEmpty!46940 m!1099045))

(declare-fun m!1099047 () Bool)

(assert (=> b!1190423 m!1099047))

(declare-fun m!1099049 () Bool)

(assert (=> b!1190431 m!1099049))

(declare-fun m!1099051 () Bool)

(assert (=> b!1190427 m!1099051))

(declare-fun m!1099053 () Bool)

(assert (=> b!1190427 m!1099053))

(declare-fun m!1099055 () Bool)

(assert (=> start!100002 m!1099055))

(declare-fun m!1099057 () Bool)

(assert (=> start!100002 m!1099057))

(declare-fun m!1099059 () Bool)

(assert (=> b!1190418 m!1099059))

(declare-fun m!1099061 () Bool)

(assert (=> b!1190417 m!1099061))

(declare-fun m!1099063 () Bool)

(assert (=> b!1190430 m!1099063))

(declare-fun m!1099065 () Bool)

(assert (=> b!1190430 m!1099065))

(declare-fun m!1099067 () Bool)

(assert (=> b!1190426 m!1099067))

(declare-fun m!1099069 () Bool)

(assert (=> b!1190426 m!1099069))

(assert (=> b!1190426 m!1099069))

(declare-fun m!1099071 () Bool)

(assert (=> b!1190426 m!1099071))

(declare-fun m!1099073 () Bool)

(assert (=> b!1190426 m!1099073))

(declare-fun m!1099075 () Bool)

(assert (=> b!1190421 m!1099075))

(declare-fun m!1099077 () Bool)

(assert (=> b!1190429 m!1099077))

(check-sat (not b!1190422) (not b!1190418) (not b!1190426) (not start!100002) tp_is_empty!30075 (not mapNonEmpty!46940) (not b!1190423) (not b!1190430) b_and!41973 (not b!1190427) (not b!1190421) (not b!1190429) (not b!1190417) (not b_next!25545) (not b_lambda!20707))
(check-sat b_and!41973 (not b_next!25545))
