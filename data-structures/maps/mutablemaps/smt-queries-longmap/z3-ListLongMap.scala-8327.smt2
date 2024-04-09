; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101400 () Bool)

(assert start!101400)

(declare-fun b_free!26235 () Bool)

(declare-fun b_next!26235 () Bool)

(assert (=> start!101400 (= b_free!26235 (not b_next!26235))))

(declare-fun tp!91734 () Bool)

(declare-fun b_and!43633 () Bool)

(assert (=> start!101400 (= tp!91734 b_and!43633)))

(declare-fun b!1217811 () Bool)

(declare-fun e!691440 () Bool)

(declare-fun tp_is_empty!30939 () Bool)

(assert (=> b!1217811 (= e!691440 tp_is_empty!30939)))

(declare-fun b!1217812 () Bool)

(declare-fun e!691444 () Bool)

(declare-fun e!691449 () Bool)

(assert (=> b!1217812 (= e!691444 e!691449)))

(declare-fun res!808836 () Bool)

(assert (=> b!1217812 (=> res!808836 e!691449)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1217812 (= res!808836 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46379 0))(
  ( (V!46380 (val!15526 Int)) )
))
(declare-fun zeroValue!944 () V!46379)

(declare-datatypes ((ValueCell!14760 0))(
  ( (ValueCellFull!14760 (v!18182 V!46379)) (EmptyCell!14760) )
))
(declare-datatypes ((array!78628 0))(
  ( (array!78629 (arr!37943 (Array (_ BitVec 32) ValueCell!14760)) (size!38480 (_ BitVec 32))) )
))
(declare-fun lt!553538 () array!78628)

(declare-datatypes ((array!78630 0))(
  ( (array!78631 (arr!37944 (Array (_ BitVec 32) (_ BitVec 64))) (size!38481 (_ BitVec 32))) )
))
(declare-fun lt!553535 () array!78630)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!20104 0))(
  ( (tuple2!20105 (_1!10062 (_ BitVec 64)) (_2!10062 V!46379)) )
))
(declare-datatypes ((List!26925 0))(
  ( (Nil!26922) (Cons!26921 (h!28130 tuple2!20104) (t!40147 List!26925)) )
))
(declare-datatypes ((ListLongMap!18085 0))(
  ( (ListLongMap!18086 (toList!9058 List!26925)) )
))
(declare-fun lt!553534 () ListLongMap!18085)

(declare-fun minValue!944 () V!46379)

(declare-fun getCurrentListMapNoExtraKeys!5462 (array!78630 array!78628 (_ BitVec 32) (_ BitVec 32) V!46379 V!46379 (_ BitVec 32) Int) ListLongMap!18085)

(assert (=> b!1217812 (= lt!553534 (getCurrentListMapNoExtraKeys!5462 lt!553535 lt!553538 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78628)

(declare-fun lt!553533 () V!46379)

(assert (=> b!1217812 (= lt!553538 (array!78629 (store (arr!37943 _values!996) i!673 (ValueCellFull!14760 lt!553533)) (size!38480 _values!996)))))

(declare-fun dynLambda!3366 (Int (_ BitVec 64)) V!46379)

(assert (=> b!1217812 (= lt!553533 (dynLambda!3366 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!78630)

(declare-fun lt!553536 () ListLongMap!18085)

(assert (=> b!1217812 (= lt!553536 (getCurrentListMapNoExtraKeys!5462 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1217813 () Bool)

(declare-fun res!808832 () Bool)

(declare-fun e!691441 () Bool)

(assert (=> b!1217813 (=> (not res!808832) (not e!691441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1217813 (= res!808832 (validMask!0 mask!1564))))

(declare-fun b!1217814 () Bool)

(declare-fun e!691443 () Bool)

(declare-fun e!691448 () Bool)

(assert (=> b!1217814 (= e!691443 e!691448)))

(declare-fun res!808835 () Bool)

(assert (=> b!1217814 (=> res!808835 e!691448)))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1217814 (= res!808835 (not (= (select (arr!37944 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1217816 () Bool)

(declare-fun arrayContainsKey!0 (array!78630 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1217816 (= e!691448 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1217817 () Bool)

(declare-fun e!691445 () Bool)

(assert (=> b!1217817 (= e!691445 true)))

(assert (=> b!1217817 e!691443))

(declare-fun res!808826 () Bool)

(assert (=> b!1217817 (=> (not res!808826) (not e!691443))))

(declare-fun lt!553539 () ListLongMap!18085)

(declare-fun +!4039 (ListLongMap!18085 tuple2!20104) ListLongMap!18085)

(declare-fun get!19379 (ValueCell!14760 V!46379) V!46379)

(assert (=> b!1217817 (= res!808826 (= lt!553534 (+!4039 lt!553539 (tuple2!20105 (select (arr!37944 _keys!1208) from!1455) (get!19379 (select (arr!37943 _values!996) from!1455) lt!553533)))))))

(declare-fun b!1217818 () Bool)

(declare-fun res!808824 () Bool)

(assert (=> b!1217818 (=> (not res!808824) (not e!691441))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1217818 (= res!808824 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!48289 () Bool)

(declare-fun mapRes!48289 () Bool)

(assert (=> mapIsEmpty!48289 mapRes!48289))

(declare-fun b!1217819 () Bool)

(declare-fun res!808828 () Bool)

(assert (=> b!1217819 (=> (not res!808828) (not e!691441))))

(assert (=> b!1217819 (= res!808828 (= (select (arr!37944 _keys!1208) i!673) k0!934))))

(declare-fun b!1217820 () Bool)

(declare-fun res!808823 () Bool)

(assert (=> b!1217820 (=> (not res!808823) (not e!691441))))

(assert (=> b!1217820 (= res!808823 (and (= (size!38480 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38481 _keys!1208) (size!38480 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1217821 () Bool)

(declare-fun e!691446 () Bool)

(declare-fun e!691447 () Bool)

(assert (=> b!1217821 (= e!691446 (and e!691447 mapRes!48289))))

(declare-fun condMapEmpty!48289 () Bool)

(declare-fun mapDefault!48289 () ValueCell!14760)

(assert (=> b!1217821 (= condMapEmpty!48289 (= (arr!37943 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14760)) mapDefault!48289)))))

(declare-fun b!1217822 () Bool)

(declare-fun res!808825 () Bool)

(declare-fun e!691442 () Bool)

(assert (=> b!1217822 (=> (not res!808825) (not e!691442))))

(declare-datatypes ((List!26926 0))(
  ( (Nil!26923) (Cons!26922 (h!28131 (_ BitVec 64)) (t!40148 List!26926)) )
))
(declare-fun arrayNoDuplicates!0 (array!78630 (_ BitVec 32) List!26926) Bool)

(assert (=> b!1217822 (= res!808825 (arrayNoDuplicates!0 lt!553535 #b00000000000000000000000000000000 Nil!26923))))

(declare-fun b!1217823 () Bool)

(assert (=> b!1217823 (= e!691441 e!691442)))

(declare-fun res!808834 () Bool)

(assert (=> b!1217823 (=> (not res!808834) (not e!691442))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78630 (_ BitVec 32)) Bool)

(assert (=> b!1217823 (= res!808834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!553535 mask!1564))))

(assert (=> b!1217823 (= lt!553535 (array!78631 (store (arr!37944 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38481 _keys!1208)))))

(declare-fun b!1217815 () Bool)

(assert (=> b!1217815 (= e!691449 e!691445)))

(declare-fun res!808829 () Bool)

(assert (=> b!1217815 (=> res!808829 e!691445)))

(assert (=> b!1217815 (= res!808829 (not (validKeyInArray!0 (select (arr!37944 _keys!1208) from!1455))))))

(declare-fun lt!553537 () ListLongMap!18085)

(assert (=> b!1217815 (= lt!553537 lt!553539)))

(declare-fun lt!553540 () ListLongMap!18085)

(declare-fun -!1919 (ListLongMap!18085 (_ BitVec 64)) ListLongMap!18085)

(assert (=> b!1217815 (= lt!553539 (-!1919 lt!553540 k0!934))))

(assert (=> b!1217815 (= lt!553537 (getCurrentListMapNoExtraKeys!5462 lt!553535 lt!553538 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1217815 (= lt!553540 (getCurrentListMapNoExtraKeys!5462 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40302 0))(
  ( (Unit!40303) )
))
(declare-fun lt!553541 () Unit!40302)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1121 (array!78630 array!78628 (_ BitVec 32) (_ BitVec 32) V!46379 V!46379 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40302)

(assert (=> b!1217815 (= lt!553541 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1121 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!808833 () Bool)

(assert (=> start!101400 (=> (not res!808833) (not e!691441))))

(assert (=> start!101400 (= res!808833 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38481 _keys!1208))))))

(assert (=> start!101400 e!691441))

(assert (=> start!101400 tp_is_empty!30939))

(declare-fun array_inv!28792 (array!78630) Bool)

(assert (=> start!101400 (array_inv!28792 _keys!1208)))

(assert (=> start!101400 true))

(assert (=> start!101400 tp!91734))

(declare-fun array_inv!28793 (array!78628) Bool)

(assert (=> start!101400 (and (array_inv!28793 _values!996) e!691446)))

(declare-fun b!1217824 () Bool)

(declare-fun res!808830 () Bool)

(assert (=> b!1217824 (=> (not res!808830) (not e!691441))))

(assert (=> b!1217824 (= res!808830 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1217825 () Bool)

(assert (=> b!1217825 (= e!691447 tp_is_empty!30939)))

(declare-fun b!1217826 () Bool)

(declare-fun res!808837 () Bool)

(assert (=> b!1217826 (=> (not res!808837) (not e!691441))))

(assert (=> b!1217826 (= res!808837 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26923))))

(declare-fun mapNonEmpty!48289 () Bool)

(declare-fun tp!91733 () Bool)

(assert (=> mapNonEmpty!48289 (= mapRes!48289 (and tp!91733 e!691440))))

(declare-fun mapKey!48289 () (_ BitVec 32))

(declare-fun mapValue!48289 () ValueCell!14760)

(declare-fun mapRest!48289 () (Array (_ BitVec 32) ValueCell!14760))

(assert (=> mapNonEmpty!48289 (= (arr!37943 _values!996) (store mapRest!48289 mapKey!48289 mapValue!48289))))

(declare-fun b!1217827 () Bool)

(declare-fun res!808827 () Bool)

(assert (=> b!1217827 (=> (not res!808827) (not e!691441))))

(assert (=> b!1217827 (= res!808827 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38481 _keys!1208))))))

(declare-fun b!1217828 () Bool)

(assert (=> b!1217828 (= e!691442 (not e!691444))))

(declare-fun res!808831 () Bool)

(assert (=> b!1217828 (=> res!808831 e!691444)))

(assert (=> b!1217828 (= res!808831 (bvsgt from!1455 i!673))))

(assert (=> b!1217828 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!553532 () Unit!40302)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78630 (_ BitVec 64) (_ BitVec 32)) Unit!40302)

(assert (=> b!1217828 (= lt!553532 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!101400 res!808833) b!1217813))

(assert (= (and b!1217813 res!808832) b!1217820))

(assert (= (and b!1217820 res!808823) b!1217824))

(assert (= (and b!1217824 res!808830) b!1217826))

(assert (= (and b!1217826 res!808837) b!1217827))

(assert (= (and b!1217827 res!808827) b!1217818))

(assert (= (and b!1217818 res!808824) b!1217819))

(assert (= (and b!1217819 res!808828) b!1217823))

(assert (= (and b!1217823 res!808834) b!1217822))

(assert (= (and b!1217822 res!808825) b!1217828))

(assert (= (and b!1217828 (not res!808831)) b!1217812))

(assert (= (and b!1217812 (not res!808836)) b!1217815))

(assert (= (and b!1217815 (not res!808829)) b!1217817))

(assert (= (and b!1217817 res!808826) b!1217814))

(assert (= (and b!1217814 (not res!808835)) b!1217816))

(assert (= (and b!1217821 condMapEmpty!48289) mapIsEmpty!48289))

(assert (= (and b!1217821 (not condMapEmpty!48289)) mapNonEmpty!48289))

(get-info :version)

(assert (= (and mapNonEmpty!48289 ((_ is ValueCellFull!14760) mapValue!48289)) b!1217811))

(assert (= (and b!1217821 ((_ is ValueCellFull!14760) mapDefault!48289)) b!1217825))

(assert (= start!101400 b!1217821))

(declare-fun b_lambda!21997 () Bool)

(assert (=> (not b_lambda!21997) (not b!1217812)))

(declare-fun t!40146 () Bool)

(declare-fun tb!11043 () Bool)

(assert (=> (and start!101400 (= defaultEntry!1004 defaultEntry!1004) t!40146) tb!11043))

(declare-fun result!22679 () Bool)

(assert (=> tb!11043 (= result!22679 tp_is_empty!30939)))

(assert (=> b!1217812 t!40146))

(declare-fun b_and!43635 () Bool)

(assert (= b_and!43633 (and (=> t!40146 result!22679) b_and!43635)))

(declare-fun m!1122615 () Bool)

(assert (=> b!1217815 m!1122615))

(declare-fun m!1122617 () Bool)

(assert (=> b!1217815 m!1122617))

(declare-fun m!1122619 () Bool)

(assert (=> b!1217815 m!1122619))

(declare-fun m!1122621 () Bool)

(assert (=> b!1217815 m!1122621))

(assert (=> b!1217815 m!1122621))

(declare-fun m!1122623 () Bool)

(assert (=> b!1217815 m!1122623))

(declare-fun m!1122625 () Bool)

(assert (=> b!1217815 m!1122625))

(declare-fun m!1122627 () Bool)

(assert (=> mapNonEmpty!48289 m!1122627))

(declare-fun m!1122629 () Bool)

(assert (=> b!1217828 m!1122629))

(declare-fun m!1122631 () Bool)

(assert (=> b!1217828 m!1122631))

(assert (=> b!1217817 m!1122621))

(declare-fun m!1122633 () Bool)

(assert (=> b!1217817 m!1122633))

(assert (=> b!1217817 m!1122633))

(declare-fun m!1122635 () Bool)

(assert (=> b!1217817 m!1122635))

(declare-fun m!1122637 () Bool)

(assert (=> b!1217817 m!1122637))

(declare-fun m!1122639 () Bool)

(assert (=> b!1217819 m!1122639))

(declare-fun m!1122641 () Bool)

(assert (=> start!101400 m!1122641))

(declare-fun m!1122643 () Bool)

(assert (=> start!101400 m!1122643))

(declare-fun m!1122645 () Bool)

(assert (=> b!1217813 m!1122645))

(declare-fun m!1122647 () Bool)

(assert (=> b!1217826 m!1122647))

(declare-fun m!1122649 () Bool)

(assert (=> b!1217812 m!1122649))

(declare-fun m!1122651 () Bool)

(assert (=> b!1217812 m!1122651))

(declare-fun m!1122653 () Bool)

(assert (=> b!1217812 m!1122653))

(declare-fun m!1122655 () Bool)

(assert (=> b!1217812 m!1122655))

(declare-fun m!1122657 () Bool)

(assert (=> b!1217824 m!1122657))

(declare-fun m!1122659 () Bool)

(assert (=> b!1217816 m!1122659))

(declare-fun m!1122661 () Bool)

(assert (=> b!1217818 m!1122661))

(declare-fun m!1122663 () Bool)

(assert (=> b!1217822 m!1122663))

(assert (=> b!1217814 m!1122621))

(declare-fun m!1122665 () Bool)

(assert (=> b!1217823 m!1122665))

(declare-fun m!1122667 () Bool)

(assert (=> b!1217823 m!1122667))

(check-sat (not b!1217828) (not b!1217817) (not start!101400) (not b!1217812) (not b_next!26235) (not b!1217823) (not b_lambda!21997) (not b!1217822) (not b!1217815) (not mapNonEmpty!48289) b_and!43635 (not b!1217816) (not b!1217818) (not b!1217813) tp_is_empty!30939 (not b!1217826) (not b!1217824))
(check-sat b_and!43635 (not b_next!26235))
