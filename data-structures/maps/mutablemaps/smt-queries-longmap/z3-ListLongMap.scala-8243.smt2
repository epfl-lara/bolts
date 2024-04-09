; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100444 () Bool)

(assert start!100444)

(declare-fun b_free!25731 () Bool)

(declare-fun b_next!25731 () Bool)

(assert (=> start!100444 (= b_free!25731 (not b_next!25731))))

(declare-fun tp!90184 () Bool)

(declare-fun b_and!42363 () Bool)

(assert (=> start!100444 (= tp!90184 b_and!42363)))

(declare-fun b!1198420 () Bool)

(declare-fun e!680797 () Bool)

(declare-fun tp_is_empty!30435 () Bool)

(assert (=> b!1198420 (= e!680797 tp_is_empty!30435)))

(declare-fun b!1198421 () Bool)

(declare-fun e!680792 () Bool)

(declare-fun e!680794 () Bool)

(declare-fun mapRes!47495 () Bool)

(assert (=> b!1198421 (= e!680792 (and e!680794 mapRes!47495))))

(declare-fun condMapEmpty!47495 () Bool)

(declare-datatypes ((V!45707 0))(
  ( (V!45708 (val!15274 Int)) )
))
(declare-datatypes ((ValueCell!14508 0))(
  ( (ValueCellFull!14508 (v!17913 V!45707)) (EmptyCell!14508) )
))
(declare-datatypes ((array!77632 0))(
  ( (array!77633 (arr!37457 (Array (_ BitVec 32) ValueCell!14508)) (size!37994 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77632)

(declare-fun mapDefault!47495 () ValueCell!14508)

(assert (=> b!1198421 (= condMapEmpty!47495 (= (arr!37457 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14508)) mapDefault!47495)))))

(declare-fun b!1198422 () Bool)

(declare-fun res!797689 () Bool)

(declare-fun e!680796 () Bool)

(assert (=> b!1198422 (=> (not res!797689) (not e!680796))))

(declare-datatypes ((array!77634 0))(
  ( (array!77635 (arr!37458 (Array (_ BitVec 32) (_ BitVec 64))) (size!37995 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77634)

(declare-datatypes ((List!26517 0))(
  ( (Nil!26514) (Cons!26513 (h!27722 (_ BitVec 64)) (t!39235 List!26517)) )
))
(declare-fun arrayNoDuplicates!0 (array!77634 (_ BitVec 32) List!26517) Bool)

(assert (=> b!1198422 (= res!797689 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26514))))

(declare-fun b!1198423 () Bool)

(declare-fun res!797684 () Bool)

(assert (=> b!1198423 (=> (not res!797684) (not e!680796))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77634 (_ BitVec 32)) Bool)

(assert (=> b!1198423 (= res!797684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1198424 () Bool)

(declare-fun e!680791 () Bool)

(assert (=> b!1198424 (= e!680796 e!680791)))

(declare-fun res!797694 () Bool)

(assert (=> b!1198424 (=> (not res!797694) (not e!680791))))

(declare-fun lt!543454 () array!77634)

(assert (=> b!1198424 (= res!797694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543454 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1198424 (= lt!543454 (array!77635 (store (arr!37458 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37995 _keys!1208)))))

(declare-fun b!1198425 () Bool)

(declare-fun res!797688 () Bool)

(assert (=> b!1198425 (=> (not res!797688) (not e!680796))))

(assert (=> b!1198425 (= res!797688 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37995 _keys!1208))))))

(declare-fun b!1198426 () Bool)

(assert (=> b!1198426 (= e!680794 tp_is_empty!30435)))

(declare-fun mapIsEmpty!47495 () Bool)

(assert (=> mapIsEmpty!47495 mapRes!47495))

(declare-fun b!1198427 () Bool)

(declare-fun e!680795 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1198427 (= e!680795 (or (not (= from!1455 i!673)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!37995 _keys!1208)))))))

(declare-fun zeroValue!944 () V!45707)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun minValue!944 () V!45707)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19690 0))(
  ( (tuple2!19691 (_1!9855 (_ BitVec 64)) (_2!9855 V!45707)) )
))
(declare-datatypes ((List!26518 0))(
  ( (Nil!26515) (Cons!26514 (h!27723 tuple2!19690) (t!39236 List!26518)) )
))
(declare-datatypes ((ListLongMap!17671 0))(
  ( (ListLongMap!17672 (toList!8851 List!26518)) )
))
(declare-fun lt!543455 () ListLongMap!17671)

(declare-fun getCurrentListMapNoExtraKeys!5264 (array!77634 array!77632 (_ BitVec 32) (_ BitVec 32) V!45707 V!45707 (_ BitVec 32) Int) ListLongMap!17671)

(declare-fun dynLambda!3195 (Int (_ BitVec 64)) V!45707)

(assert (=> b!1198427 (= lt!543455 (getCurrentListMapNoExtraKeys!5264 lt!543454 (array!77633 (store (arr!37457 _values!996) i!673 (ValueCellFull!14508 (dynLambda!3195 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37994 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543457 () ListLongMap!17671)

(assert (=> b!1198427 (= lt!543457 (getCurrentListMapNoExtraKeys!5264 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1198428 () Bool)

(declare-fun res!797693 () Bool)

(assert (=> b!1198428 (=> (not res!797693) (not e!680796))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1198428 (= res!797693 (= (select (arr!37458 _keys!1208) i!673) k0!934))))

(declare-fun b!1198429 () Bool)

(declare-fun res!797690 () Bool)

(assert (=> b!1198429 (=> (not res!797690) (not e!680796))))

(assert (=> b!1198429 (= res!797690 (and (= (size!37994 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37995 _keys!1208) (size!37994 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!47495 () Bool)

(declare-fun tp!90183 () Bool)

(assert (=> mapNonEmpty!47495 (= mapRes!47495 (and tp!90183 e!680797))))

(declare-fun mapKey!47495 () (_ BitVec 32))

(declare-fun mapValue!47495 () ValueCell!14508)

(declare-fun mapRest!47495 () (Array (_ BitVec 32) ValueCell!14508))

(assert (=> mapNonEmpty!47495 (= (arr!37457 _values!996) (store mapRest!47495 mapKey!47495 mapValue!47495))))

(declare-fun res!797692 () Bool)

(assert (=> start!100444 (=> (not res!797692) (not e!680796))))

(assert (=> start!100444 (= res!797692 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37995 _keys!1208))))))

(assert (=> start!100444 e!680796))

(assert (=> start!100444 tp_is_empty!30435))

(declare-fun array_inv!28450 (array!77634) Bool)

(assert (=> start!100444 (array_inv!28450 _keys!1208)))

(assert (=> start!100444 true))

(assert (=> start!100444 tp!90184))

(declare-fun array_inv!28451 (array!77632) Bool)

(assert (=> start!100444 (and (array_inv!28451 _values!996) e!680792)))

(declare-fun b!1198430 () Bool)

(declare-fun res!797686 () Bool)

(assert (=> b!1198430 (=> (not res!797686) (not e!680791))))

(assert (=> b!1198430 (= res!797686 (arrayNoDuplicates!0 lt!543454 #b00000000000000000000000000000000 Nil!26514))))

(declare-fun b!1198431 () Bool)

(declare-fun res!797687 () Bool)

(assert (=> b!1198431 (=> (not res!797687) (not e!680796))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1198431 (= res!797687 (validMask!0 mask!1564))))

(declare-fun b!1198432 () Bool)

(assert (=> b!1198432 (= e!680791 (not e!680795))))

(declare-fun res!797685 () Bool)

(assert (=> b!1198432 (=> res!797685 e!680795)))

(assert (=> b!1198432 (= res!797685 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77634 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1198432 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39668 0))(
  ( (Unit!39669) )
))
(declare-fun lt!543456 () Unit!39668)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77634 (_ BitVec 64) (_ BitVec 32)) Unit!39668)

(assert (=> b!1198432 (= lt!543456 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1198433 () Bool)

(declare-fun res!797691 () Bool)

(assert (=> b!1198433 (=> (not res!797691) (not e!680796))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1198433 (= res!797691 (validKeyInArray!0 k0!934))))

(assert (= (and start!100444 res!797692) b!1198431))

(assert (= (and b!1198431 res!797687) b!1198429))

(assert (= (and b!1198429 res!797690) b!1198423))

(assert (= (and b!1198423 res!797684) b!1198422))

(assert (= (and b!1198422 res!797689) b!1198425))

(assert (= (and b!1198425 res!797688) b!1198433))

(assert (= (and b!1198433 res!797691) b!1198428))

(assert (= (and b!1198428 res!797693) b!1198424))

(assert (= (and b!1198424 res!797694) b!1198430))

(assert (= (and b!1198430 res!797686) b!1198432))

(assert (= (and b!1198432 (not res!797685)) b!1198427))

(assert (= (and b!1198421 condMapEmpty!47495) mapIsEmpty!47495))

(assert (= (and b!1198421 (not condMapEmpty!47495)) mapNonEmpty!47495))

(get-info :version)

(assert (= (and mapNonEmpty!47495 ((_ is ValueCellFull!14508) mapValue!47495)) b!1198420))

(assert (= (and b!1198421 ((_ is ValueCellFull!14508) mapDefault!47495)) b!1198426))

(assert (= start!100444 b!1198421))

(declare-fun b_lambda!20945 () Bool)

(assert (=> (not b_lambda!20945) (not b!1198427)))

(declare-fun t!39234 () Bool)

(declare-fun tb!10539 () Bool)

(assert (=> (and start!100444 (= defaultEntry!1004 defaultEntry!1004) t!39234) tb!10539))

(declare-fun result!21647 () Bool)

(assert (=> tb!10539 (= result!21647 tp_is_empty!30435)))

(assert (=> b!1198427 t!39234))

(declare-fun b_and!42365 () Bool)

(assert (= b_and!42363 (and (=> t!39234 result!21647) b_and!42365)))

(declare-fun m!1105229 () Bool)

(assert (=> b!1198422 m!1105229))

(declare-fun m!1105231 () Bool)

(assert (=> b!1198431 m!1105231))

(declare-fun m!1105233 () Bool)

(assert (=> b!1198423 m!1105233))

(declare-fun m!1105235 () Bool)

(assert (=> b!1198432 m!1105235))

(declare-fun m!1105237 () Bool)

(assert (=> b!1198432 m!1105237))

(declare-fun m!1105239 () Bool)

(assert (=> start!100444 m!1105239))

(declare-fun m!1105241 () Bool)

(assert (=> start!100444 m!1105241))

(declare-fun m!1105243 () Bool)

(assert (=> b!1198433 m!1105243))

(declare-fun m!1105245 () Bool)

(assert (=> b!1198424 m!1105245))

(declare-fun m!1105247 () Bool)

(assert (=> b!1198424 m!1105247))

(declare-fun m!1105249 () Bool)

(assert (=> mapNonEmpty!47495 m!1105249))

(declare-fun m!1105251 () Bool)

(assert (=> b!1198430 m!1105251))

(declare-fun m!1105253 () Bool)

(assert (=> b!1198427 m!1105253))

(declare-fun m!1105255 () Bool)

(assert (=> b!1198427 m!1105255))

(declare-fun m!1105257 () Bool)

(assert (=> b!1198427 m!1105257))

(declare-fun m!1105259 () Bool)

(assert (=> b!1198427 m!1105259))

(declare-fun m!1105261 () Bool)

(assert (=> b!1198428 m!1105261))

(check-sat tp_is_empty!30435 (not b!1198433) (not b!1198424) (not mapNonEmpty!47495) (not start!100444) (not b_next!25731) (not b!1198432) (not b!1198430) (not b!1198431) (not b_lambda!20945) (not b!1198427) b_and!42365 (not b!1198423) (not b!1198422))
(check-sat b_and!42365 (not b_next!25731))
