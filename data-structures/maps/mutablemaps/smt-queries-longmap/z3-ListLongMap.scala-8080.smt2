; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99384 () Bool)

(assert start!99384)

(declare-fun b_free!24927 () Bool)

(declare-fun b_next!24927 () Bool)

(assert (=> start!99384 (= b_free!24927 (not b_next!24927))))

(declare-fun tp!87496 () Bool)

(declare-fun b_and!40735 () Bool)

(assert (=> start!99384 (= tp!87496 b_and!40735)))

(declare-fun b!1171519 () Bool)

(declare-fun e!665919 () Bool)

(declare-fun tp_is_empty!29457 () Bool)

(assert (=> b!1171519 (= e!665919 tp_is_empty!29457)))

(declare-fun b!1171520 () Bool)

(declare-fun e!665918 () Bool)

(declare-fun e!665920 () Bool)

(assert (=> b!1171520 (= e!665918 e!665920)))

(declare-fun res!777774 () Bool)

(assert (=> b!1171520 (=> res!777774 e!665920)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75690 0))(
  ( (array!75691 (arr!36491 (Array (_ BitVec 32) (_ BitVec 64))) (size!37028 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75690)

(assert (=> b!1171520 (= res!777774 (not (= (select (arr!36491 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1171521 () Bool)

(declare-fun res!777769 () Bool)

(declare-fun e!665927 () Bool)

(assert (=> b!1171521 (=> (not res!777769) (not e!665927))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44403 0))(
  ( (V!44404 (val!14785 Int)) )
))
(declare-datatypes ((ValueCell!14019 0))(
  ( (ValueCellFull!14019 (v!17424 V!44403)) (EmptyCell!14019) )
))
(declare-datatypes ((array!75692 0))(
  ( (array!75693 (arr!36492 (Array (_ BitVec 32) ValueCell!14019)) (size!37029 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75692)

(assert (=> b!1171521 (= res!777769 (and (= (size!37029 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37028 _keys!1208) (size!37029 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1171522 () Bool)

(declare-fun e!665921 () Bool)

(declare-fun e!665924 () Bool)

(assert (=> b!1171522 (= e!665921 (not e!665924))))

(declare-fun res!777767 () Bool)

(assert (=> b!1171522 (=> res!777767 e!665924)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1171522 (= res!777767 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75690 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1171522 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38538 0))(
  ( (Unit!38539) )
))
(declare-fun lt!527742 () Unit!38538)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75690 (_ BitVec 64) (_ BitVec 32)) Unit!38538)

(assert (=> b!1171522 (= lt!527742 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1171523 () Bool)

(declare-fun res!777779 () Bool)

(assert (=> b!1171523 (=> (not res!777779) (not e!665927))))

(assert (=> b!1171523 (= res!777779 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37028 _keys!1208))))))

(declare-fun b!1171524 () Bool)

(declare-fun res!777766 () Bool)

(assert (=> b!1171524 (=> (not res!777766) (not e!665927))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1171524 (= res!777766 (validKeyInArray!0 k0!934))))

(declare-fun b!1171525 () Bool)

(declare-fun e!665928 () Bool)

(assert (=> b!1171525 (= e!665924 e!665928)))

(declare-fun res!777783 () Bool)

(assert (=> b!1171525 (=> res!777783 e!665928)))

(assert (=> b!1171525 (= res!777783 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44403)

(declare-fun lt!527731 () array!75690)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18980 0))(
  ( (tuple2!18981 (_1!9500 (_ BitVec 64)) (_2!9500 V!44403)) )
))
(declare-datatypes ((List!25752 0))(
  ( (Nil!25749) (Cons!25748 (h!26957 tuple2!18980) (t!37678 List!25752)) )
))
(declare-datatypes ((ListLongMap!16961 0))(
  ( (ListLongMap!16962 (toList!8496 List!25752)) )
))
(declare-fun lt!527736 () ListLongMap!16961)

(declare-fun minValue!944 () V!44403)

(declare-fun lt!527740 () array!75692)

(declare-fun getCurrentListMapNoExtraKeys!4928 (array!75690 array!75692 (_ BitVec 32) (_ BitVec 32) V!44403 V!44403 (_ BitVec 32) Int) ListLongMap!16961)

(assert (=> b!1171525 (= lt!527736 (getCurrentListMapNoExtraKeys!4928 lt!527731 lt!527740 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!527735 () V!44403)

(assert (=> b!1171525 (= lt!527740 (array!75693 (store (arr!36492 _values!996) i!673 (ValueCellFull!14019 lt!527735)) (size!37029 _values!996)))))

(declare-fun dynLambda!2916 (Int (_ BitVec 64)) V!44403)

(assert (=> b!1171525 (= lt!527735 (dynLambda!2916 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!527741 () ListLongMap!16961)

(assert (=> b!1171525 (= lt!527741 (getCurrentListMapNoExtraKeys!4928 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1171526 () Bool)

(declare-fun res!777771 () Bool)

(declare-fun e!665929 () Bool)

(assert (=> b!1171526 (=> res!777771 e!665929)))

(declare-datatypes ((List!25753 0))(
  ( (Nil!25750) (Cons!25749 (h!26958 (_ BitVec 64)) (t!37679 List!25753)) )
))
(declare-fun noDuplicate!1632 (List!25753) Bool)

(assert (=> b!1171526 (= res!777771 (not (noDuplicate!1632 Nil!25750)))))

(declare-fun b!1171527 () Bool)

(declare-fun e!665917 () Bool)

(assert (=> b!1171527 (= e!665917 tp_is_empty!29457)))

(declare-fun b!1171528 () Bool)

(declare-fun e!665926 () Bool)

(declare-fun e!665923 () Bool)

(assert (=> b!1171528 (= e!665926 e!665923)))

(declare-fun res!777778 () Bool)

(assert (=> b!1171528 (=> res!777778 e!665923)))

(assert (=> b!1171528 (= res!777778 (not (= (select (arr!36491 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1171528 e!665918))

(declare-fun res!777773 () Bool)

(assert (=> b!1171528 (=> (not res!777773) (not e!665918))))

(declare-fun lt!527733 () ListLongMap!16961)

(declare-fun +!3735 (ListLongMap!16961 tuple2!18980) ListLongMap!16961)

(declare-fun get!18644 (ValueCell!14019 V!44403) V!44403)

(assert (=> b!1171528 (= res!777773 (= lt!527736 (+!3735 lt!527733 (tuple2!18981 (select (arr!36491 _keys!1208) from!1455) (get!18644 (select (arr!36492 _values!996) from!1455) lt!527735)))))))

(declare-fun b!1171529 () Bool)

(assert (=> b!1171529 (= e!665927 e!665921)))

(declare-fun res!777780 () Bool)

(assert (=> b!1171529 (=> (not res!777780) (not e!665921))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75690 (_ BitVec 32)) Bool)

(assert (=> b!1171529 (= res!777780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!527731 mask!1564))))

(assert (=> b!1171529 (= lt!527731 (array!75691 (store (arr!36491 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37028 _keys!1208)))))

(declare-fun mapNonEmpty!46013 () Bool)

(declare-fun mapRes!46013 () Bool)

(declare-fun tp!87495 () Bool)

(assert (=> mapNonEmpty!46013 (= mapRes!46013 (and tp!87495 e!665919))))

(declare-fun mapRest!46013 () (Array (_ BitVec 32) ValueCell!14019))

(declare-fun mapKey!46013 () (_ BitVec 32))

(declare-fun mapValue!46013 () ValueCell!14019)

(assert (=> mapNonEmpty!46013 (= (arr!36492 _values!996) (store mapRest!46013 mapKey!46013 mapValue!46013))))

(declare-fun b!1171530 () Bool)

(assert (=> b!1171530 (= e!665928 e!665926)))

(declare-fun res!777781 () Bool)

(assert (=> b!1171530 (=> res!777781 e!665926)))

(assert (=> b!1171530 (= res!777781 (not (validKeyInArray!0 (select (arr!36491 _keys!1208) from!1455))))))

(declare-fun lt!527738 () ListLongMap!16961)

(assert (=> b!1171530 (= lt!527738 lt!527733)))

(declare-fun lt!527732 () ListLongMap!16961)

(declare-fun -!1512 (ListLongMap!16961 (_ BitVec 64)) ListLongMap!16961)

(assert (=> b!1171530 (= lt!527733 (-!1512 lt!527732 k0!934))))

(assert (=> b!1171530 (= lt!527738 (getCurrentListMapNoExtraKeys!4928 lt!527731 lt!527740 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1171530 (= lt!527732 (getCurrentListMapNoExtraKeys!4928 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!527739 () Unit!38538)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!736 (array!75690 array!75692 (_ BitVec 32) (_ BitVec 32) V!44403 V!44403 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38538)

(assert (=> b!1171530 (= lt!527739 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!736 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1171531 () Bool)

(declare-fun res!777772 () Bool)

(assert (=> b!1171531 (=> (not res!777772) (not e!665927))))

(declare-fun arrayNoDuplicates!0 (array!75690 (_ BitVec 32) List!25753) Bool)

(assert (=> b!1171531 (= res!777772 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25750))))

(declare-fun b!1171532 () Bool)

(declare-fun res!777784 () Bool)

(assert (=> b!1171532 (=> (not res!777784) (not e!665927))))

(assert (=> b!1171532 (= res!777784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1171533 () Bool)

(assert (=> b!1171533 (= e!665920 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun res!777776 () Bool)

(assert (=> start!99384 (=> (not res!777776) (not e!665927))))

(assert (=> start!99384 (= res!777776 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37028 _keys!1208))))))

(assert (=> start!99384 e!665927))

(assert (=> start!99384 tp_is_empty!29457))

(declare-fun array_inv!27770 (array!75690) Bool)

(assert (=> start!99384 (array_inv!27770 _keys!1208)))

(assert (=> start!99384 true))

(assert (=> start!99384 tp!87496))

(declare-fun e!665925 () Bool)

(declare-fun array_inv!27771 (array!75692) Bool)

(assert (=> start!99384 (and (array_inv!27771 _values!996) e!665925)))

(declare-fun b!1171534 () Bool)

(declare-fun res!777775 () Bool)

(assert (=> b!1171534 (=> (not res!777775) (not e!665927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1171534 (= res!777775 (validMask!0 mask!1564))))

(declare-fun b!1171535 () Bool)

(assert (=> b!1171535 (= e!665925 (and e!665917 mapRes!46013))))

(declare-fun condMapEmpty!46013 () Bool)

(declare-fun mapDefault!46013 () ValueCell!14019)

(assert (=> b!1171535 (= condMapEmpty!46013 (= (arr!36492 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14019)) mapDefault!46013)))))

(declare-fun mapIsEmpty!46013 () Bool)

(assert (=> mapIsEmpty!46013 mapRes!46013))

(declare-fun b!1171536 () Bool)

(declare-fun res!777782 () Bool)

(assert (=> b!1171536 (=> (not res!777782) (not e!665927))))

(assert (=> b!1171536 (= res!777782 (= (select (arr!36491 _keys!1208) i!673) k0!934))))

(declare-fun b!1171537 () Bool)

(declare-fun res!777770 () Bool)

(assert (=> b!1171537 (=> (not res!777770) (not e!665921))))

(assert (=> b!1171537 (= res!777770 (arrayNoDuplicates!0 lt!527731 #b00000000000000000000000000000000 Nil!25750))))

(declare-fun b!1171538 () Bool)

(assert (=> b!1171538 (= e!665929 true)))

(declare-fun lt!527734 () Bool)

(declare-fun contains!6866 (List!25753 (_ BitVec 64)) Bool)

(assert (=> b!1171538 (= lt!527734 (contains!6866 Nil!25750 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1171539 () Bool)

(declare-fun res!777768 () Bool)

(assert (=> b!1171539 (=> res!777768 e!665929)))

(assert (=> b!1171539 (= res!777768 (contains!6866 Nil!25750 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1171540 () Bool)

(assert (=> b!1171540 (= e!665923 e!665929)))

(declare-fun res!777777 () Bool)

(assert (=> b!1171540 (=> res!777777 e!665929)))

(assert (=> b!1171540 (= res!777777 (or (bvsge (size!37028 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!37028 _keys!1208)) (bvsge from!1455 (size!37028 _keys!1208))))))

(assert (=> b!1171540 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25750)))

(declare-fun lt!527737 () Unit!38538)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75690 (_ BitVec 32) (_ BitVec 32)) Unit!38538)

(assert (=> b!1171540 (= lt!527737 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1171540 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!527730 () Unit!38538)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75690 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38538)

(assert (=> b!1171540 (= lt!527730 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (= (and start!99384 res!777776) b!1171534))

(assert (= (and b!1171534 res!777775) b!1171521))

(assert (= (and b!1171521 res!777769) b!1171532))

(assert (= (and b!1171532 res!777784) b!1171531))

(assert (= (and b!1171531 res!777772) b!1171523))

(assert (= (and b!1171523 res!777779) b!1171524))

(assert (= (and b!1171524 res!777766) b!1171536))

(assert (= (and b!1171536 res!777782) b!1171529))

(assert (= (and b!1171529 res!777780) b!1171537))

(assert (= (and b!1171537 res!777770) b!1171522))

(assert (= (and b!1171522 (not res!777767)) b!1171525))

(assert (= (and b!1171525 (not res!777783)) b!1171530))

(assert (= (and b!1171530 (not res!777781)) b!1171528))

(assert (= (and b!1171528 res!777773) b!1171520))

(assert (= (and b!1171520 (not res!777774)) b!1171533))

(assert (= (and b!1171528 (not res!777778)) b!1171540))

(assert (= (and b!1171540 (not res!777777)) b!1171526))

(assert (= (and b!1171526 (not res!777771)) b!1171539))

(assert (= (and b!1171539 (not res!777768)) b!1171538))

(assert (= (and b!1171535 condMapEmpty!46013) mapIsEmpty!46013))

(assert (= (and b!1171535 (not condMapEmpty!46013)) mapNonEmpty!46013))

(get-info :version)

(assert (= (and mapNonEmpty!46013 ((_ is ValueCellFull!14019) mapValue!46013)) b!1171519))

(assert (= (and b!1171535 ((_ is ValueCellFull!14019) mapDefault!46013)) b!1171527))

(assert (= start!99384 b!1171535))

(declare-fun b_lambda!20089 () Bool)

(assert (=> (not b_lambda!20089) (not b!1171525)))

(declare-fun t!37677 () Bool)

(declare-fun tb!9747 () Bool)

(assert (=> (and start!99384 (= defaultEntry!1004 defaultEntry!1004) t!37677) tb!9747))

(declare-fun result!20053 () Bool)

(assert (=> tb!9747 (= result!20053 tp_is_empty!29457)))

(assert (=> b!1171525 t!37677))

(declare-fun b_and!40737 () Bool)

(assert (= b_and!40735 (and (=> t!37677 result!20053) b_and!40737)))

(declare-fun m!1079389 () Bool)

(assert (=> b!1171520 m!1079389))

(declare-fun m!1079391 () Bool)

(assert (=> b!1171530 m!1079391))

(declare-fun m!1079393 () Bool)

(assert (=> b!1171530 m!1079393))

(declare-fun m!1079395 () Bool)

(assert (=> b!1171530 m!1079395))

(declare-fun m!1079397 () Bool)

(assert (=> b!1171530 m!1079397))

(assert (=> b!1171530 m!1079389))

(declare-fun m!1079399 () Bool)

(assert (=> b!1171530 m!1079399))

(assert (=> b!1171530 m!1079389))

(declare-fun m!1079401 () Bool)

(assert (=> b!1171534 m!1079401))

(declare-fun m!1079403 () Bool)

(assert (=> b!1171536 m!1079403))

(assert (=> b!1171528 m!1079389))

(declare-fun m!1079405 () Bool)

(assert (=> b!1171528 m!1079405))

(assert (=> b!1171528 m!1079405))

(declare-fun m!1079407 () Bool)

(assert (=> b!1171528 m!1079407))

(declare-fun m!1079409 () Bool)

(assert (=> b!1171528 m!1079409))

(declare-fun m!1079411 () Bool)

(assert (=> b!1171531 m!1079411))

(declare-fun m!1079413 () Bool)

(assert (=> b!1171533 m!1079413))

(declare-fun m!1079415 () Bool)

(assert (=> b!1171532 m!1079415))

(declare-fun m!1079417 () Bool)

(assert (=> b!1171524 m!1079417))

(declare-fun m!1079419 () Bool)

(assert (=> b!1171537 m!1079419))

(declare-fun m!1079421 () Bool)

(assert (=> b!1171539 m!1079421))

(declare-fun m!1079423 () Bool)

(assert (=> b!1171540 m!1079423))

(declare-fun m!1079425 () Bool)

(assert (=> b!1171540 m!1079425))

(declare-fun m!1079427 () Bool)

(assert (=> b!1171540 m!1079427))

(declare-fun m!1079429 () Bool)

(assert (=> b!1171540 m!1079429))

(declare-fun m!1079431 () Bool)

(assert (=> b!1171529 m!1079431))

(declare-fun m!1079433 () Bool)

(assert (=> b!1171529 m!1079433))

(declare-fun m!1079435 () Bool)

(assert (=> b!1171526 m!1079435))

(declare-fun m!1079437 () Bool)

(assert (=> b!1171538 m!1079437))

(declare-fun m!1079439 () Bool)

(assert (=> start!99384 m!1079439))

(declare-fun m!1079441 () Bool)

(assert (=> start!99384 m!1079441))

(declare-fun m!1079443 () Bool)

(assert (=> b!1171525 m!1079443))

(declare-fun m!1079445 () Bool)

(assert (=> b!1171525 m!1079445))

(declare-fun m!1079447 () Bool)

(assert (=> b!1171525 m!1079447))

(declare-fun m!1079449 () Bool)

(assert (=> b!1171525 m!1079449))

(declare-fun m!1079451 () Bool)

(assert (=> mapNonEmpty!46013 m!1079451))

(declare-fun m!1079453 () Bool)

(assert (=> b!1171522 m!1079453))

(declare-fun m!1079455 () Bool)

(assert (=> b!1171522 m!1079455))

(check-sat (not start!99384) (not b!1171537) (not b!1171526) (not b!1171533) tp_is_empty!29457 (not b!1171531) (not b!1171534) (not b!1171538) (not mapNonEmpty!46013) (not b!1171522) (not b!1171532) (not b_next!24927) (not b!1171539) (not b!1171529) (not b!1171524) (not b!1171530) b_and!40737 (not b!1171525) (not b!1171528) (not b_lambda!20089) (not b!1171540))
(check-sat b_and!40737 (not b_next!24927))
