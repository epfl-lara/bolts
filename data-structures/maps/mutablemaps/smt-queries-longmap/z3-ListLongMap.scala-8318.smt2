; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101294 () Bool)

(assert start!101294)

(declare-fun b_free!26181 () Bool)

(declare-fun b_next!26181 () Bool)

(assert (=> start!101294 (= b_free!26181 (not b_next!26181))))

(declare-fun tp!91566 () Bool)

(declare-fun b_and!43489 () Bool)

(assert (=> start!101294 (= tp!91566 b_and!43489)))

(declare-fun b!1216180 () Bool)

(declare-fun res!807660 () Bool)

(declare-fun e!690533 () Bool)

(assert (=> b!1216180 (=> (not res!807660) (not e!690533))))

(declare-datatypes ((array!78518 0))(
  ( (array!78519 (arr!37890 (Array (_ BitVec 32) (_ BitVec 64))) (size!38427 (_ BitVec 32))) )
))
(declare-fun lt!552777 () array!78518)

(declare-datatypes ((List!26884 0))(
  ( (Nil!26881) (Cons!26880 (h!28089 (_ BitVec 64)) (t!40052 List!26884)) )
))
(declare-fun arrayNoDuplicates!0 (array!78518 (_ BitVec 32) List!26884) Bool)

(assert (=> b!1216180 (= res!807660 (arrayNoDuplicates!0 lt!552777 #b00000000000000000000000000000000 Nil!26881))))

(declare-fun b!1216181 () Bool)

(declare-fun res!807664 () Bool)

(declare-fun e!690534 () Bool)

(assert (=> b!1216181 (=> (not res!807664) (not e!690534))))

(declare-fun _keys!1208 () array!78518)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78518 (_ BitVec 32)) Bool)

(assert (=> b!1216181 (= res!807664 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1216182 () Bool)

(declare-fun e!690531 () Bool)

(assert (=> b!1216182 (= e!690533 (not e!690531))))

(declare-fun res!807663 () Bool)

(assert (=> b!1216182 (=> res!807663 e!690531)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1216182 (= res!807663 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78518 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1216182 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40260 0))(
  ( (Unit!40261) )
))
(declare-fun lt!552778 () Unit!40260)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78518 (_ BitVec 64) (_ BitVec 32)) Unit!40260)

(assert (=> b!1216182 (= lt!552778 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1216183 () Bool)

(assert (=> b!1216183 (= e!690531 (or (= from!1455 i!673) (bvsge from!1455 i!673) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!38427 _keys!1208)) (bvslt (bvsub (size!38427 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (bvsub (size!38427 _keys!1208) from!1455))))))

(declare-datatypes ((V!46307 0))(
  ( (V!46308 (val!15499 Int)) )
))
(declare-fun zeroValue!944 () V!46307)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46307)

(declare-datatypes ((ValueCell!14733 0))(
  ( (ValueCellFull!14733 (v!18153 V!46307)) (EmptyCell!14733) )
))
(declare-datatypes ((array!78520 0))(
  ( (array!78521 (arr!37891 (Array (_ BitVec 32) ValueCell!14733)) (size!38428 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78520)

(declare-datatypes ((tuple2!20064 0))(
  ( (tuple2!20065 (_1!10042 (_ BitVec 64)) (_2!10042 V!46307)) )
))
(declare-datatypes ((List!26885 0))(
  ( (Nil!26882) (Cons!26881 (h!28090 tuple2!20064) (t!40053 List!26885)) )
))
(declare-datatypes ((ListLongMap!18045 0))(
  ( (ListLongMap!18046 (toList!9038 List!26885)) )
))
(declare-fun lt!552776 () ListLongMap!18045)

(declare-fun getCurrentListMapNoExtraKeys!5443 (array!78518 array!78520 (_ BitVec 32) (_ BitVec 32) V!46307 V!46307 (_ BitVec 32) Int) ListLongMap!18045)

(declare-fun dynLambda!3352 (Int (_ BitVec 64)) V!46307)

(assert (=> b!1216183 (= lt!552776 (getCurrentListMapNoExtraKeys!5443 lt!552777 (array!78521 (store (arr!37891 _values!996) i!673 (ValueCellFull!14733 (dynLambda!3352 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38428 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552779 () ListLongMap!18045)

(assert (=> b!1216183 (= lt!552779 (getCurrentListMapNoExtraKeys!5443 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1216184 () Bool)

(declare-fun e!690532 () Bool)

(declare-fun tp_is_empty!30885 () Bool)

(assert (=> b!1216184 (= e!690532 tp_is_empty!30885)))

(declare-fun b!1216185 () Bool)

(declare-fun res!807657 () Bool)

(assert (=> b!1216185 (=> (not res!807657) (not e!690534))))

(assert (=> b!1216185 (= res!807657 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38427 _keys!1208))))))

(declare-fun b!1216186 () Bool)

(declare-fun res!807659 () Bool)

(assert (=> b!1216186 (=> (not res!807659) (not e!690534))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1216186 (= res!807659 (validMask!0 mask!1564))))

(declare-fun b!1216187 () Bool)

(declare-fun res!807662 () Bool)

(assert (=> b!1216187 (=> (not res!807662) (not e!690534))))

(assert (=> b!1216187 (= res!807662 (and (= (size!38428 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38427 _keys!1208) (size!38428 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!807666 () Bool)

(assert (=> start!101294 (=> (not res!807666) (not e!690534))))

(assert (=> start!101294 (= res!807666 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38427 _keys!1208))))))

(assert (=> start!101294 e!690534))

(assert (=> start!101294 tp_is_empty!30885))

(declare-fun array_inv!28750 (array!78518) Bool)

(assert (=> start!101294 (array_inv!28750 _keys!1208)))

(assert (=> start!101294 true))

(assert (=> start!101294 tp!91566))

(declare-fun e!690530 () Bool)

(declare-fun array_inv!28751 (array!78520) Bool)

(assert (=> start!101294 (and (array_inv!28751 _values!996) e!690530)))

(declare-fun b!1216188 () Bool)

(declare-fun res!807667 () Bool)

(assert (=> b!1216188 (=> (not res!807667) (not e!690534))))

(assert (=> b!1216188 (= res!807667 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26881))))

(declare-fun b!1216189 () Bool)

(declare-fun res!807661 () Bool)

(assert (=> b!1216189 (=> (not res!807661) (not e!690534))))

(assert (=> b!1216189 (= res!807661 (= (select (arr!37890 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!48202 () Bool)

(declare-fun mapRes!48202 () Bool)

(assert (=> mapIsEmpty!48202 mapRes!48202))

(declare-fun b!1216190 () Bool)

(declare-fun e!690529 () Bool)

(assert (=> b!1216190 (= e!690529 tp_is_empty!30885)))

(declare-fun b!1216191 () Bool)

(declare-fun res!807658 () Bool)

(assert (=> b!1216191 (=> (not res!807658) (not e!690534))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1216191 (= res!807658 (validKeyInArray!0 k0!934))))

(declare-fun b!1216192 () Bool)

(assert (=> b!1216192 (= e!690530 (and e!690529 mapRes!48202))))

(declare-fun condMapEmpty!48202 () Bool)

(declare-fun mapDefault!48202 () ValueCell!14733)

(assert (=> b!1216192 (= condMapEmpty!48202 (= (arr!37891 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14733)) mapDefault!48202)))))

(declare-fun b!1216193 () Bool)

(assert (=> b!1216193 (= e!690534 e!690533)))

(declare-fun res!807665 () Bool)

(assert (=> b!1216193 (=> (not res!807665) (not e!690533))))

(assert (=> b!1216193 (= res!807665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552777 mask!1564))))

(assert (=> b!1216193 (= lt!552777 (array!78519 (store (arr!37890 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38427 _keys!1208)))))

(declare-fun mapNonEmpty!48202 () Bool)

(declare-fun tp!91565 () Bool)

(assert (=> mapNonEmpty!48202 (= mapRes!48202 (and tp!91565 e!690532))))

(declare-fun mapKey!48202 () (_ BitVec 32))

(declare-fun mapValue!48202 () ValueCell!14733)

(declare-fun mapRest!48202 () (Array (_ BitVec 32) ValueCell!14733))

(assert (=> mapNonEmpty!48202 (= (arr!37891 _values!996) (store mapRest!48202 mapKey!48202 mapValue!48202))))

(assert (= (and start!101294 res!807666) b!1216186))

(assert (= (and b!1216186 res!807659) b!1216187))

(assert (= (and b!1216187 res!807662) b!1216181))

(assert (= (and b!1216181 res!807664) b!1216188))

(assert (= (and b!1216188 res!807667) b!1216185))

(assert (= (and b!1216185 res!807657) b!1216191))

(assert (= (and b!1216191 res!807658) b!1216189))

(assert (= (and b!1216189 res!807661) b!1216193))

(assert (= (and b!1216193 res!807665) b!1216180))

(assert (= (and b!1216180 res!807660) b!1216182))

(assert (= (and b!1216182 (not res!807663)) b!1216183))

(assert (= (and b!1216192 condMapEmpty!48202) mapIsEmpty!48202))

(assert (= (and b!1216192 (not condMapEmpty!48202)) mapNonEmpty!48202))

(get-info :version)

(assert (= (and mapNonEmpty!48202 ((_ is ValueCellFull!14733) mapValue!48202)) b!1216184))

(assert (= (and b!1216192 ((_ is ValueCellFull!14733) mapDefault!48202)) b!1216190))

(assert (= start!101294 b!1216192))

(declare-fun b_lambda!21867 () Bool)

(assert (=> (not b_lambda!21867) (not b!1216183)))

(declare-fun t!40051 () Bool)

(declare-fun tb!10989 () Bool)

(assert (=> (and start!101294 (= defaultEntry!1004 defaultEntry!1004) t!40051) tb!10989))

(declare-fun result!22567 () Bool)

(assert (=> tb!10989 (= result!22567 tp_is_empty!30885)))

(assert (=> b!1216183 t!40051))

(declare-fun b_and!43491 () Bool)

(assert (= b_and!43489 (and (=> t!40051 result!22567) b_and!43491)))

(declare-fun m!1121007 () Bool)

(assert (=> b!1216186 m!1121007))

(declare-fun m!1121009 () Bool)

(assert (=> b!1216193 m!1121009))

(declare-fun m!1121011 () Bool)

(assert (=> b!1216193 m!1121011))

(declare-fun m!1121013 () Bool)

(assert (=> b!1216182 m!1121013))

(declare-fun m!1121015 () Bool)

(assert (=> b!1216182 m!1121015))

(declare-fun m!1121017 () Bool)

(assert (=> b!1216191 m!1121017))

(declare-fun m!1121019 () Bool)

(assert (=> b!1216189 m!1121019))

(declare-fun m!1121021 () Bool)

(assert (=> b!1216183 m!1121021))

(declare-fun m!1121023 () Bool)

(assert (=> b!1216183 m!1121023))

(declare-fun m!1121025 () Bool)

(assert (=> b!1216183 m!1121025))

(declare-fun m!1121027 () Bool)

(assert (=> b!1216183 m!1121027))

(declare-fun m!1121029 () Bool)

(assert (=> b!1216188 m!1121029))

(declare-fun m!1121031 () Bool)

(assert (=> mapNonEmpty!48202 m!1121031))

(declare-fun m!1121033 () Bool)

(assert (=> b!1216180 m!1121033))

(declare-fun m!1121035 () Bool)

(assert (=> b!1216181 m!1121035))

(declare-fun m!1121037 () Bool)

(assert (=> start!101294 m!1121037))

(declare-fun m!1121039 () Bool)

(assert (=> start!101294 m!1121039))

(check-sat (not b!1216182) (not b!1216180) (not b!1216193) (not start!101294) (not b!1216188) tp_is_empty!30885 (not b!1216186) (not mapNonEmpty!48202) b_and!43491 (not b!1216181) (not b!1216183) (not b_lambda!21867) (not b!1216191) (not b_next!26181))
(check-sat b_and!43491 (not b_next!26181))
