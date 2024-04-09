; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101282 () Bool)

(assert start!101282)

(declare-fun b_free!26169 () Bool)

(declare-fun b_next!26169 () Bool)

(assert (=> start!101282 (= b_free!26169 (not b_next!26169))))

(declare-fun tp!91529 () Bool)

(declare-fun b_and!43465 () Bool)

(assert (=> start!101282 (= tp!91529 b_and!43465)))

(declare-fun b!1215916 () Bool)

(declare-fun e!690402 () Bool)

(declare-fun tp_is_empty!30873 () Bool)

(assert (=> b!1215916 (= e!690402 tp_is_empty!30873)))

(declare-fun b!1215917 () Bool)

(declare-fun res!807466 () Bool)

(declare-fun e!690403 () Bool)

(assert (=> b!1215917 (=> (not res!807466) (not e!690403))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!78496 0))(
  ( (array!78497 (arr!37879 (Array (_ BitVec 32) (_ BitVec 64))) (size!38416 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78496)

(assert (=> b!1215917 (= res!807466 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38416 _keys!1208))))))

(declare-fun res!807464 () Bool)

(assert (=> start!101282 (=> (not res!807464) (not e!690403))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!101282 (= res!807464 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38416 _keys!1208))))))

(assert (=> start!101282 e!690403))

(assert (=> start!101282 tp_is_empty!30873))

(declare-fun array_inv!28742 (array!78496) Bool)

(assert (=> start!101282 (array_inv!28742 _keys!1208)))

(assert (=> start!101282 true))

(assert (=> start!101282 tp!91529))

(declare-datatypes ((V!46291 0))(
  ( (V!46292 (val!15493 Int)) )
))
(declare-datatypes ((ValueCell!14727 0))(
  ( (ValueCellFull!14727 (v!18147 V!46291)) (EmptyCell!14727) )
))
(declare-datatypes ((array!78498 0))(
  ( (array!78499 (arr!37880 (Array (_ BitVec 32) ValueCell!14727)) (size!38417 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78498)

(declare-fun e!690404 () Bool)

(declare-fun array_inv!28743 (array!78498) Bool)

(assert (=> start!101282 (and (array_inv!28743 _values!996) e!690404)))

(declare-fun b!1215918 () Bool)

(declare-fun res!807468 () Bool)

(assert (=> b!1215918 (=> (not res!807468) (not e!690403))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78496 (_ BitVec 32)) Bool)

(assert (=> b!1215918 (= res!807468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1215919 () Bool)

(declare-fun res!807459 () Bool)

(assert (=> b!1215919 (=> (not res!807459) (not e!690403))))

(declare-datatypes ((List!26878 0))(
  ( (Nil!26875) (Cons!26874 (h!28083 (_ BitVec 64)) (t!40034 List!26878)) )
))
(declare-fun arrayNoDuplicates!0 (array!78496 (_ BitVec 32) List!26878) Bool)

(assert (=> b!1215919 (= res!807459 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26875))))

(declare-fun b!1215920 () Bool)

(declare-fun e!690405 () Bool)

(assert (=> b!1215920 (= e!690405 tp_is_empty!30873)))

(declare-fun b!1215921 () Bool)

(declare-fun res!807462 () Bool)

(assert (=> b!1215921 (=> (not res!807462) (not e!690403))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1215921 (= res!807462 (validKeyInArray!0 k0!934))))

(declare-fun b!1215922 () Bool)

(declare-fun mapRes!48184 () Bool)

(assert (=> b!1215922 (= e!690404 (and e!690405 mapRes!48184))))

(declare-fun condMapEmpty!48184 () Bool)

(declare-fun mapDefault!48184 () ValueCell!14727)

(assert (=> b!1215922 (= condMapEmpty!48184 (= (arr!37880 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14727)) mapDefault!48184)))))

(declare-fun b!1215923 () Bool)

(declare-fun res!807461 () Bool)

(assert (=> b!1215923 (=> (not res!807461) (not e!690403))))

(assert (=> b!1215923 (= res!807461 (= (select (arr!37879 _keys!1208) i!673) k0!934))))

(declare-fun b!1215924 () Bool)

(declare-fun e!690408 () Bool)

(assert (=> b!1215924 (= e!690408 true)))

(declare-fun zeroValue!944 () V!46291)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46291)

(declare-fun lt!552705 () array!78496)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!20058 0))(
  ( (tuple2!20059 (_1!10039 (_ BitVec 64)) (_2!10039 V!46291)) )
))
(declare-datatypes ((List!26879 0))(
  ( (Nil!26876) (Cons!26875 (h!28084 tuple2!20058) (t!40035 List!26879)) )
))
(declare-datatypes ((ListLongMap!18039 0))(
  ( (ListLongMap!18040 (toList!9035 List!26879)) )
))
(declare-fun lt!552704 () ListLongMap!18039)

(declare-fun getCurrentListMapNoExtraKeys!5440 (array!78496 array!78498 (_ BitVec 32) (_ BitVec 32) V!46291 V!46291 (_ BitVec 32) Int) ListLongMap!18039)

(declare-fun dynLambda!3349 (Int (_ BitVec 64)) V!46291)

(assert (=> b!1215924 (= lt!552704 (getCurrentListMapNoExtraKeys!5440 lt!552705 (array!78499 (store (arr!37880 _values!996) i!673 (ValueCellFull!14727 (dynLambda!3349 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38417 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552707 () ListLongMap!18039)

(assert (=> b!1215924 (= lt!552707 (getCurrentListMapNoExtraKeys!5440 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!48184 () Bool)

(declare-fun tp!91530 () Bool)

(assert (=> mapNonEmpty!48184 (= mapRes!48184 (and tp!91530 e!690402))))

(declare-fun mapKey!48184 () (_ BitVec 32))

(declare-fun mapValue!48184 () ValueCell!14727)

(declare-fun mapRest!48184 () (Array (_ BitVec 32) ValueCell!14727))

(assert (=> mapNonEmpty!48184 (= (arr!37880 _values!996) (store mapRest!48184 mapKey!48184 mapValue!48184))))

(declare-fun b!1215925 () Bool)

(declare-fun res!807469 () Bool)

(assert (=> b!1215925 (=> (not res!807469) (not e!690403))))

(assert (=> b!1215925 (= res!807469 (and (= (size!38417 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38416 _keys!1208) (size!38417 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1215926 () Bool)

(declare-fun res!807460 () Bool)

(assert (=> b!1215926 (=> (not res!807460) (not e!690403))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1215926 (= res!807460 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!48184 () Bool)

(assert (=> mapIsEmpty!48184 mapRes!48184))

(declare-fun b!1215927 () Bool)

(declare-fun e!690407 () Bool)

(assert (=> b!1215927 (= e!690407 (not e!690408))))

(declare-fun res!807463 () Bool)

(assert (=> b!1215927 (=> res!807463 e!690408)))

(assert (=> b!1215927 (= res!807463 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78496 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1215927 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40254 0))(
  ( (Unit!40255) )
))
(declare-fun lt!552706 () Unit!40254)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78496 (_ BitVec 64) (_ BitVec 32)) Unit!40254)

(assert (=> b!1215927 (= lt!552706 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1215928 () Bool)

(assert (=> b!1215928 (= e!690403 e!690407)))

(declare-fun res!807465 () Bool)

(assert (=> b!1215928 (=> (not res!807465) (not e!690407))))

(assert (=> b!1215928 (= res!807465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552705 mask!1564))))

(assert (=> b!1215928 (= lt!552705 (array!78497 (store (arr!37879 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38416 _keys!1208)))))

(declare-fun b!1215929 () Bool)

(declare-fun res!807467 () Bool)

(assert (=> b!1215929 (=> (not res!807467) (not e!690407))))

(assert (=> b!1215929 (= res!807467 (arrayNoDuplicates!0 lt!552705 #b00000000000000000000000000000000 Nil!26875))))

(assert (= (and start!101282 res!807464) b!1215926))

(assert (= (and b!1215926 res!807460) b!1215925))

(assert (= (and b!1215925 res!807469) b!1215918))

(assert (= (and b!1215918 res!807468) b!1215919))

(assert (= (and b!1215919 res!807459) b!1215917))

(assert (= (and b!1215917 res!807466) b!1215921))

(assert (= (and b!1215921 res!807462) b!1215923))

(assert (= (and b!1215923 res!807461) b!1215928))

(assert (= (and b!1215928 res!807465) b!1215929))

(assert (= (and b!1215929 res!807467) b!1215927))

(assert (= (and b!1215927 (not res!807463)) b!1215924))

(assert (= (and b!1215922 condMapEmpty!48184) mapIsEmpty!48184))

(assert (= (and b!1215922 (not condMapEmpty!48184)) mapNonEmpty!48184))

(get-info :version)

(assert (= (and mapNonEmpty!48184 ((_ is ValueCellFull!14727) mapValue!48184)) b!1215916))

(assert (= (and b!1215922 ((_ is ValueCellFull!14727) mapDefault!48184)) b!1215920))

(assert (= start!101282 b!1215922))

(declare-fun b_lambda!21855 () Bool)

(assert (=> (not b_lambda!21855) (not b!1215924)))

(declare-fun t!40033 () Bool)

(declare-fun tb!10977 () Bool)

(assert (=> (and start!101282 (= defaultEntry!1004 defaultEntry!1004) t!40033) tb!10977))

(declare-fun result!22543 () Bool)

(assert (=> tb!10977 (= result!22543 tp_is_empty!30873)))

(assert (=> b!1215924 t!40033))

(declare-fun b_and!43467 () Bool)

(assert (= b_and!43465 (and (=> t!40033 result!22543) b_and!43467)))

(declare-fun m!1120803 () Bool)

(assert (=> b!1215926 m!1120803))

(declare-fun m!1120805 () Bool)

(assert (=> b!1215928 m!1120805))

(declare-fun m!1120807 () Bool)

(assert (=> b!1215928 m!1120807))

(declare-fun m!1120809 () Bool)

(assert (=> b!1215918 m!1120809))

(declare-fun m!1120811 () Bool)

(assert (=> b!1215924 m!1120811))

(declare-fun m!1120813 () Bool)

(assert (=> b!1215924 m!1120813))

(declare-fun m!1120815 () Bool)

(assert (=> b!1215924 m!1120815))

(declare-fun m!1120817 () Bool)

(assert (=> b!1215924 m!1120817))

(declare-fun m!1120819 () Bool)

(assert (=> b!1215923 m!1120819))

(declare-fun m!1120821 () Bool)

(assert (=> b!1215919 m!1120821))

(declare-fun m!1120823 () Bool)

(assert (=> b!1215927 m!1120823))

(declare-fun m!1120825 () Bool)

(assert (=> b!1215927 m!1120825))

(declare-fun m!1120827 () Bool)

(assert (=> mapNonEmpty!48184 m!1120827))

(declare-fun m!1120829 () Bool)

(assert (=> b!1215921 m!1120829))

(declare-fun m!1120831 () Bool)

(assert (=> b!1215929 m!1120831))

(declare-fun m!1120833 () Bool)

(assert (=> start!101282 m!1120833))

(declare-fun m!1120835 () Bool)

(assert (=> start!101282 m!1120835))

(check-sat (not mapNonEmpty!48184) (not b!1215929) (not start!101282) (not b!1215927) b_and!43467 (not b!1215919) (not b!1215918) (not b!1215928) tp_is_empty!30873 (not b_lambda!21855) (not b!1215924) (not b_next!26169) (not b!1215926) (not b!1215921))
(check-sat b_and!43467 (not b_next!26169))
