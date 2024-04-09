; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99390 () Bool)

(assert start!99390)

(declare-fun b_free!24933 () Bool)

(declare-fun b_next!24933 () Bool)

(assert (=> start!99390 (= b_free!24933 (not b_next!24933))))

(declare-fun tp!87513 () Bool)

(declare-fun b_and!40747 () Bool)

(assert (=> start!99390 (= tp!87513 b_and!40747)))

(declare-fun b!1171723 () Bool)

(declare-fun res!777940 () Bool)

(declare-fun e!666034 () Bool)

(assert (=> b!1171723 (=> res!777940 e!666034)))

(declare-datatypes ((List!25758 0))(
  ( (Nil!25755) (Cons!25754 (h!26963 (_ BitVec 64)) (t!37690 List!25758)) )
))
(declare-fun noDuplicate!1634 (List!25758) Bool)

(assert (=> b!1171723 (= res!777940 (not (noDuplicate!1634 Nil!25755)))))

(declare-fun b!1171724 () Bool)

(declare-fun res!777951 () Bool)

(declare-fun e!666042 () Bool)

(assert (=> b!1171724 (=> (not res!777951) (not e!666042))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1171724 (= res!777951 (validKeyInArray!0 k0!934))))

(declare-fun b!1171725 () Bool)

(declare-fun res!777950 () Bool)

(assert (=> b!1171725 (=> (not res!777950) (not e!666042))))

(declare-datatypes ((array!75702 0))(
  ( (array!75703 (arr!36497 (Array (_ BitVec 32) (_ BitVec 64))) (size!37034 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75702)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1171725 (= res!777950 (= (select (arr!36497 _keys!1208) i!673) k0!934))))

(declare-fun b!1171726 () Bool)

(declare-fun e!666041 () Bool)

(declare-fun tp_is_empty!29463 () Bool)

(assert (=> b!1171726 (= e!666041 tp_is_empty!29463)))

(declare-fun b!1171727 () Bool)

(declare-fun res!777955 () Bool)

(declare-fun e!666037 () Bool)

(assert (=> b!1171727 (=> (not res!777955) (not e!666037))))

(declare-fun lt!527851 () array!75702)

(declare-fun arrayNoDuplicates!0 (array!75702 (_ BitVec 32) List!25758) Bool)

(assert (=> b!1171727 (= res!777955 (arrayNoDuplicates!0 lt!527851 #b00000000000000000000000000000000 Nil!25755))))

(declare-fun b!1171728 () Bool)

(declare-fun res!777947 () Bool)

(assert (=> b!1171728 (=> (not res!777947) (not e!666042))))

(assert (=> b!1171728 (= res!777947 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25755))))

(declare-fun b!1171729 () Bool)

(declare-fun res!777952 () Bool)

(assert (=> b!1171729 (=> (not res!777952) (not e!666042))))

(assert (=> b!1171729 (= res!777952 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37034 _keys!1208))))))

(declare-fun b!1171730 () Bool)

(declare-fun e!666043 () Bool)

(declare-fun e!666036 () Bool)

(declare-fun mapRes!46022 () Bool)

(assert (=> b!1171730 (= e!666043 (and e!666036 mapRes!46022))))

(declare-fun condMapEmpty!46022 () Bool)

(declare-datatypes ((V!44411 0))(
  ( (V!44412 (val!14788 Int)) )
))
(declare-datatypes ((ValueCell!14022 0))(
  ( (ValueCellFull!14022 (v!17427 V!44411)) (EmptyCell!14022) )
))
(declare-datatypes ((array!75704 0))(
  ( (array!75705 (arr!36498 (Array (_ BitVec 32) ValueCell!14022)) (size!37035 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75704)

(declare-fun mapDefault!46022 () ValueCell!14022)

(assert (=> b!1171730 (= condMapEmpty!46022 (= (arr!36498 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14022)) mapDefault!46022)))))

(declare-fun b!1171731 () Bool)

(declare-fun res!777937 () Bool)

(assert (=> b!1171731 (=> (not res!777937) (not e!666042))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1171731 (= res!777937 (validMask!0 mask!1564))))

(declare-fun b!1171732 () Bool)

(declare-fun res!777945 () Bool)

(assert (=> b!1171732 (=> (not res!777945) (not e!666042))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75702 (_ BitVec 32)) Bool)

(assert (=> b!1171732 (= res!777945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!46022 () Bool)

(assert (=> mapIsEmpty!46022 mapRes!46022))

(declare-fun b!1171734 () Bool)

(assert (=> b!1171734 (= e!666036 tp_is_empty!29463)))

(declare-fun b!1171735 () Bool)

(declare-fun e!666039 () Bool)

(assert (=> b!1171735 (= e!666039 e!666034)))

(declare-fun res!777943 () Bool)

(assert (=> b!1171735 (=> res!777943 e!666034)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1171735 (= res!777943 (or (bvsge (size!37034 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!37034 _keys!1208)) (bvsge from!1455 (size!37034 _keys!1208))))))

(assert (=> b!1171735 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25755)))

(declare-datatypes ((Unit!38544 0))(
  ( (Unit!38545) )
))
(declare-fun lt!527853 () Unit!38544)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75702 (_ BitVec 32) (_ BitVec 32)) Unit!38544)

(assert (=> b!1171735 (= lt!527853 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun arrayContainsKey!0 (array!75702 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1171735 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!527847 () Unit!38544)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75702 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38544)

(assert (=> b!1171735 (= lt!527847 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1171736 () Bool)

(declare-fun e!666040 () Bool)

(declare-fun e!666045 () Bool)

(assert (=> b!1171736 (= e!666040 e!666045)))

(declare-fun res!777942 () Bool)

(assert (=> b!1171736 (=> res!777942 e!666045)))

(assert (=> b!1171736 (= res!777942 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44411)

(declare-datatypes ((tuple2!18986 0))(
  ( (tuple2!18987 (_1!9503 (_ BitVec 64)) (_2!9503 V!44411)) )
))
(declare-datatypes ((List!25759 0))(
  ( (Nil!25756) (Cons!25755 (h!26964 tuple2!18986) (t!37691 List!25759)) )
))
(declare-datatypes ((ListLongMap!16967 0))(
  ( (ListLongMap!16968 (toList!8499 List!25759)) )
))
(declare-fun lt!527855 () ListLongMap!16967)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44411)

(declare-fun lt!527852 () array!75704)

(declare-fun getCurrentListMapNoExtraKeys!4931 (array!75702 array!75704 (_ BitVec 32) (_ BitVec 32) V!44411 V!44411 (_ BitVec 32) Int) ListLongMap!16967)

(assert (=> b!1171736 (= lt!527855 (getCurrentListMapNoExtraKeys!4931 lt!527851 lt!527852 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!527850 () V!44411)

(assert (=> b!1171736 (= lt!527852 (array!75705 (store (arr!36498 _values!996) i!673 (ValueCellFull!14022 lt!527850)) (size!37035 _values!996)))))

(declare-fun dynLambda!2919 (Int (_ BitVec 64)) V!44411)

(assert (=> b!1171736 (= lt!527850 (dynLambda!2919 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!527849 () ListLongMap!16967)

(assert (=> b!1171736 (= lt!527849 (getCurrentListMapNoExtraKeys!4931 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1171737 () Bool)

(declare-fun e!666038 () Bool)

(assert (=> b!1171737 (= e!666038 e!666039)))

(declare-fun res!777938 () Bool)

(assert (=> b!1171737 (=> res!777938 e!666039)))

(assert (=> b!1171737 (= res!777938 (not (= (select (arr!36497 _keys!1208) from!1455) k0!934)))))

(declare-fun e!666046 () Bool)

(assert (=> b!1171737 e!666046))

(declare-fun res!777948 () Bool)

(assert (=> b!1171737 (=> (not res!777948) (not e!666046))))

(declare-fun lt!527854 () ListLongMap!16967)

(declare-fun +!3737 (ListLongMap!16967 tuple2!18986) ListLongMap!16967)

(declare-fun get!18648 (ValueCell!14022 V!44411) V!44411)

(assert (=> b!1171737 (= res!777948 (= lt!527855 (+!3737 lt!527854 (tuple2!18987 (select (arr!36497 _keys!1208) from!1455) (get!18648 (select (arr!36498 _values!996) from!1455) lt!527850)))))))

(declare-fun b!1171738 () Bool)

(declare-fun res!777944 () Bool)

(assert (=> b!1171738 (=> res!777944 e!666034)))

(declare-fun contains!6868 (List!25758 (_ BitVec 64)) Bool)

(assert (=> b!1171738 (= res!777944 (contains!6868 Nil!25755 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!666044 () Bool)

(declare-fun b!1171739 () Bool)

(assert (=> b!1171739 (= e!666044 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!46022 () Bool)

(declare-fun tp!87514 () Bool)

(assert (=> mapNonEmpty!46022 (= mapRes!46022 (and tp!87514 e!666041))))

(declare-fun mapKey!46022 () (_ BitVec 32))

(declare-fun mapRest!46022 () (Array (_ BitVec 32) ValueCell!14022))

(declare-fun mapValue!46022 () ValueCell!14022)

(assert (=> mapNonEmpty!46022 (= (arr!36498 _values!996) (store mapRest!46022 mapKey!46022 mapValue!46022))))

(declare-fun b!1171740 () Bool)

(assert (=> b!1171740 (= e!666046 e!666044)))

(declare-fun res!777949 () Bool)

(assert (=> b!1171740 (=> res!777949 e!666044)))

(assert (=> b!1171740 (= res!777949 (not (= (select (arr!36497 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1171741 () Bool)

(assert (=> b!1171741 (= e!666034 true)))

(declare-fun lt!527858 () Bool)

(assert (=> b!1171741 (= lt!527858 (contains!6868 Nil!25755 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1171742 () Bool)

(declare-fun res!777953 () Bool)

(assert (=> b!1171742 (=> (not res!777953) (not e!666042))))

(assert (=> b!1171742 (= res!777953 (and (= (size!37035 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37034 _keys!1208) (size!37035 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1171743 () Bool)

(assert (=> b!1171743 (= e!666037 (not e!666040))))

(declare-fun res!777946 () Bool)

(assert (=> b!1171743 (=> res!777946 e!666040)))

(assert (=> b!1171743 (= res!777946 (bvsgt from!1455 i!673))))

(assert (=> b!1171743 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!527857 () Unit!38544)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75702 (_ BitVec 64) (_ BitVec 32)) Unit!38544)

(assert (=> b!1171743 (= lt!527857 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1171744 () Bool)

(assert (=> b!1171744 (= e!666045 e!666038)))

(declare-fun res!777939 () Bool)

(assert (=> b!1171744 (=> res!777939 e!666038)))

(assert (=> b!1171744 (= res!777939 (not (validKeyInArray!0 (select (arr!36497 _keys!1208) from!1455))))))

(declare-fun lt!527856 () ListLongMap!16967)

(assert (=> b!1171744 (= lt!527856 lt!527854)))

(declare-fun lt!527859 () ListLongMap!16967)

(declare-fun -!1515 (ListLongMap!16967 (_ BitVec 64)) ListLongMap!16967)

(assert (=> b!1171744 (= lt!527854 (-!1515 lt!527859 k0!934))))

(assert (=> b!1171744 (= lt!527856 (getCurrentListMapNoExtraKeys!4931 lt!527851 lt!527852 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1171744 (= lt!527859 (getCurrentListMapNoExtraKeys!4931 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!527848 () Unit!38544)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!739 (array!75702 array!75704 (_ BitVec 32) (_ BitVec 32) V!44411 V!44411 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38544)

(assert (=> b!1171744 (= lt!527848 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!739 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1171733 () Bool)

(assert (=> b!1171733 (= e!666042 e!666037)))

(declare-fun res!777954 () Bool)

(assert (=> b!1171733 (=> (not res!777954) (not e!666037))))

(assert (=> b!1171733 (= res!777954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!527851 mask!1564))))

(assert (=> b!1171733 (= lt!527851 (array!75703 (store (arr!36497 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37034 _keys!1208)))))

(declare-fun res!777941 () Bool)

(assert (=> start!99390 (=> (not res!777941) (not e!666042))))

(assert (=> start!99390 (= res!777941 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37034 _keys!1208))))))

(assert (=> start!99390 e!666042))

(assert (=> start!99390 tp_is_empty!29463))

(declare-fun array_inv!27772 (array!75702) Bool)

(assert (=> start!99390 (array_inv!27772 _keys!1208)))

(assert (=> start!99390 true))

(assert (=> start!99390 tp!87513))

(declare-fun array_inv!27773 (array!75704) Bool)

(assert (=> start!99390 (and (array_inv!27773 _values!996) e!666043)))

(assert (= (and start!99390 res!777941) b!1171731))

(assert (= (and b!1171731 res!777937) b!1171742))

(assert (= (and b!1171742 res!777953) b!1171732))

(assert (= (and b!1171732 res!777945) b!1171728))

(assert (= (and b!1171728 res!777947) b!1171729))

(assert (= (and b!1171729 res!777952) b!1171724))

(assert (= (and b!1171724 res!777951) b!1171725))

(assert (= (and b!1171725 res!777950) b!1171733))

(assert (= (and b!1171733 res!777954) b!1171727))

(assert (= (and b!1171727 res!777955) b!1171743))

(assert (= (and b!1171743 (not res!777946)) b!1171736))

(assert (= (and b!1171736 (not res!777942)) b!1171744))

(assert (= (and b!1171744 (not res!777939)) b!1171737))

(assert (= (and b!1171737 res!777948) b!1171740))

(assert (= (and b!1171740 (not res!777949)) b!1171739))

(assert (= (and b!1171737 (not res!777938)) b!1171735))

(assert (= (and b!1171735 (not res!777943)) b!1171723))

(assert (= (and b!1171723 (not res!777940)) b!1171738))

(assert (= (and b!1171738 (not res!777944)) b!1171741))

(assert (= (and b!1171730 condMapEmpty!46022) mapIsEmpty!46022))

(assert (= (and b!1171730 (not condMapEmpty!46022)) mapNonEmpty!46022))

(get-info :version)

(assert (= (and mapNonEmpty!46022 ((_ is ValueCellFull!14022) mapValue!46022)) b!1171726))

(assert (= (and b!1171730 ((_ is ValueCellFull!14022) mapDefault!46022)) b!1171734))

(assert (= start!99390 b!1171730))

(declare-fun b_lambda!20095 () Bool)

(assert (=> (not b_lambda!20095) (not b!1171736)))

(declare-fun t!37689 () Bool)

(declare-fun tb!9753 () Bool)

(assert (=> (and start!99390 (= defaultEntry!1004 defaultEntry!1004) t!37689) tb!9753))

(declare-fun result!20065 () Bool)

(assert (=> tb!9753 (= result!20065 tp_is_empty!29463)))

(assert (=> b!1171736 t!37689))

(declare-fun b_and!40749 () Bool)

(assert (= b_and!40747 (and (=> t!37689 result!20065) b_and!40749)))

(declare-fun m!1079593 () Bool)

(assert (=> b!1171738 m!1079593))

(declare-fun m!1079595 () Bool)

(assert (=> b!1171725 m!1079595))

(declare-fun m!1079597 () Bool)

(assert (=> b!1171732 m!1079597))

(declare-fun m!1079599 () Bool)

(assert (=> b!1171740 m!1079599))

(declare-fun m!1079601 () Bool)

(assert (=> b!1171743 m!1079601))

(declare-fun m!1079603 () Bool)

(assert (=> b!1171743 m!1079603))

(assert (=> b!1171737 m!1079599))

(declare-fun m!1079605 () Bool)

(assert (=> b!1171737 m!1079605))

(assert (=> b!1171737 m!1079605))

(declare-fun m!1079607 () Bool)

(assert (=> b!1171737 m!1079607))

(declare-fun m!1079609 () Bool)

(assert (=> b!1171737 m!1079609))

(declare-fun m!1079611 () Bool)

(assert (=> b!1171736 m!1079611))

(declare-fun m!1079613 () Bool)

(assert (=> b!1171736 m!1079613))

(declare-fun m!1079615 () Bool)

(assert (=> b!1171736 m!1079615))

(declare-fun m!1079617 () Bool)

(assert (=> b!1171736 m!1079617))

(declare-fun m!1079619 () Bool)

(assert (=> b!1171723 m!1079619))

(declare-fun m!1079621 () Bool)

(assert (=> b!1171724 m!1079621))

(declare-fun m!1079623 () Bool)

(assert (=> mapNonEmpty!46022 m!1079623))

(declare-fun m!1079625 () Bool)

(assert (=> start!99390 m!1079625))

(declare-fun m!1079627 () Bool)

(assert (=> start!99390 m!1079627))

(declare-fun m!1079629 () Bool)

(assert (=> b!1171728 m!1079629))

(declare-fun m!1079631 () Bool)

(assert (=> b!1171733 m!1079631))

(declare-fun m!1079633 () Bool)

(assert (=> b!1171733 m!1079633))

(declare-fun m!1079635 () Bool)

(assert (=> b!1171744 m!1079635))

(declare-fun m!1079637 () Bool)

(assert (=> b!1171744 m!1079637))

(declare-fun m!1079639 () Bool)

(assert (=> b!1171744 m!1079639))

(declare-fun m!1079641 () Bool)

(assert (=> b!1171744 m!1079641))

(assert (=> b!1171744 m!1079599))

(declare-fun m!1079643 () Bool)

(assert (=> b!1171744 m!1079643))

(assert (=> b!1171744 m!1079599))

(declare-fun m!1079645 () Bool)

(assert (=> b!1171741 m!1079645))

(declare-fun m!1079647 () Bool)

(assert (=> b!1171735 m!1079647))

(declare-fun m!1079649 () Bool)

(assert (=> b!1171735 m!1079649))

(declare-fun m!1079651 () Bool)

(assert (=> b!1171735 m!1079651))

(declare-fun m!1079653 () Bool)

(assert (=> b!1171735 m!1079653))

(declare-fun m!1079655 () Bool)

(assert (=> b!1171727 m!1079655))

(declare-fun m!1079657 () Bool)

(assert (=> b!1171731 m!1079657))

(declare-fun m!1079659 () Bool)

(assert (=> b!1171739 m!1079659))

(check-sat b_and!40749 (not start!99390) tp_is_empty!29463 (not b!1171723) (not b!1171728) (not b_next!24933) (not b!1171744) (not b!1171732) (not b!1171736) (not b!1171739) (not mapNonEmpty!46022) (not b!1171743) (not b!1171741) (not b_lambda!20095) (not b!1171735) (not b!1171738) (not b!1171737) (not b!1171731) (not b!1171724) (not b!1171733) (not b!1171727))
(check-sat b_and!40749 (not b_next!24933))
