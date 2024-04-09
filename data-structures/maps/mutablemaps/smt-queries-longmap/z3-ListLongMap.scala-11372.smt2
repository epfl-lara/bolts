; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132170 () Bool)

(assert start!132170)

(declare-fun b_free!31851 () Bool)

(declare-fun b_next!31851 () Bool)

(assert (=> start!132170 (= b_free!31851 (not b_next!31851))))

(declare-fun tp!111806 () Bool)

(declare-fun b_and!51279 () Bool)

(assert (=> start!132170 (= tp!111806 b_and!51279)))

(declare-fun b!1549854 () Bool)

(declare-fun res!1061811 () Bool)

(declare-fun e!862760 () Bool)

(assert (=> b!1549854 (=> (not res!1061811) (not e!862760))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!103413 0))(
  ( (array!103414 (arr!49904 (Array (_ BitVec 32) (_ BitVec 64))) (size!50455 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103413)

(assert (=> b!1549854 (= res!1061811 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50455 _keys!618))))))

(declare-fun b!1549856 () Bool)

(declare-fun e!862758 () Bool)

(declare-fun tp_is_empty!38127 () Bool)

(assert (=> b!1549856 (= e!862758 tp_is_empty!38127)))

(declare-fun b!1549857 () Bool)

(declare-fun e!862755 () Bool)

(declare-fun e!862751 () Bool)

(assert (=> b!1549857 (= e!862755 e!862751)))

(declare-fun res!1061815 () Bool)

(declare-fun call!70612 () Bool)

(assert (=> b!1549857 (= res!1061815 call!70612)))

(assert (=> b!1549857 (=> (not res!1061815) (not e!862751))))

(declare-fun b!1549858 () Bool)

(declare-fun e!862762 () Bool)

(assert (=> b!1549858 (= e!862760 e!862762)))

(declare-fun res!1061808 () Bool)

(assert (=> b!1549858 (=> (not res!1061808) (not e!862762))))

(declare-fun e!862756 () Bool)

(assert (=> b!1549858 (= res!1061808 e!862756)))

(declare-fun res!1061813 () Bool)

(assert (=> b!1549858 (=> res!1061813 e!862756)))

(declare-fun lt!668099 () Bool)

(assert (=> b!1549858 (= res!1061813 lt!668099)))

(declare-datatypes ((Unit!51572 0))(
  ( (Unit!51573) )
))
(declare-fun lt!668105 () Unit!51572)

(declare-fun e!862759 () Unit!51572)

(assert (=> b!1549858 (= lt!668105 e!862759)))

(declare-fun c!142424 () Bool)

(assert (=> b!1549858 (= c!142424 (not lt!668099))))

(declare-fun e!862749 () Bool)

(assert (=> b!1549858 (= lt!668099 e!862749)))

(declare-fun res!1061806 () Bool)

(assert (=> b!1549858 (=> res!1061806 e!862749)))

(assert (=> b!1549858 (= res!1061806 (bvsge from!762 (size!50455 _keys!618)))))

(declare-datatypes ((V!59279 0))(
  ( (V!59280 (val!19141 Int)) )
))
(declare-datatypes ((tuple2!24802 0))(
  ( (tuple2!24803 (_1!12411 (_ BitVec 64)) (_2!12411 V!59279)) )
))
(declare-datatypes ((List!36297 0))(
  ( (Nil!36294) (Cons!36293 (h!37739 tuple2!24802) (t!51008 List!36297)) )
))
(declare-datatypes ((ListLongMap!22423 0))(
  ( (ListLongMap!22424 (toList!11227 List!36297)) )
))
(declare-fun lt!668104 () ListLongMap!22423)

(declare-fun e!862752 () ListLongMap!22423)

(assert (=> b!1549858 (= lt!668104 e!862752)))

(declare-fun c!142423 () Bool)

(declare-fun lt!668101 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1549858 (= c!142423 (and (not lt!668101) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1549858 (= lt!668101 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1549859 () Bool)

(declare-fun e!862754 () Bool)

(assert (=> b!1549859 (= e!862756 e!862754)))

(declare-fun res!1061809 () Bool)

(assert (=> b!1549859 (=> (not res!1061809) (not e!862754))))

(declare-fun contains!10104 (ListLongMap!22423 (_ BitVec 64)) Bool)

(assert (=> b!1549859 (= res!1061809 (contains!10104 lt!668104 (select (arr!49904 _keys!618) from!762)))))

(declare-fun zeroValue!436 () V!59279)

(declare-fun bm!70609 () Bool)

(declare-fun call!70615 () ListLongMap!22423)

(declare-fun minValue!436 () V!59279)

(declare-fun c!142420 () Bool)

(declare-fun call!70616 () ListLongMap!22423)

(declare-fun call!70614 () ListLongMap!22423)

(declare-fun call!70617 () ListLongMap!22423)

(declare-fun +!4939 (ListLongMap!22423 tuple2!24802) ListLongMap!22423)

(assert (=> bm!70609 (= call!70615 (+!4939 (ite c!142423 call!70614 (ite c!142420 call!70617 call!70616)) (ite (or c!142423 c!142420) (tuple2!24803 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24803 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1549860 () Bool)

(declare-fun Unit!51574 () Unit!51572)

(assert (=> b!1549860 (= e!862759 Unit!51574)))

(declare-fun b!1549861 () Bool)

(declare-fun res!1061807 () Bool)

(assert (=> b!1549861 (=> (not res!1061807) (not e!862762))))

(assert (=> b!1549861 (= res!1061807 e!862755)))

(declare-fun c!142422 () Bool)

(assert (=> b!1549861 (= c!142422 (not lt!668101))))

(declare-fun mapIsEmpty!58894 () Bool)

(declare-fun mapRes!58894 () Bool)

(assert (=> mapIsEmpty!58894 mapRes!58894))

(declare-fun b!1549862 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1549862 (= e!862749 (not (validKeyInArray!0 (select (arr!49904 _keys!618) from!762))))))

(declare-fun b!1549863 () Bool)

(declare-fun e!862761 () ListLongMap!22423)

(declare-fun call!70613 () ListLongMap!22423)

(assert (=> b!1549863 (= e!862761 call!70613)))

(declare-fun b!1549864 () Bool)

(declare-fun e!862757 () ListLongMap!22423)

(assert (=> b!1549864 (= e!862757 call!70613)))

(declare-fun bm!70610 () Bool)

(assert (=> bm!70610 (= call!70617 call!70614)))

(declare-fun b!1549865 () Bool)

(declare-fun lt!668095 () Unit!51572)

(assert (=> b!1549865 (= e!862759 lt!668095)))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18153 0))(
  ( (ValueCellFull!18153 (v!21939 V!59279)) (EmptyCell!18153) )
))
(declare-datatypes ((array!103415 0))(
  ( (array!103416 (arr!49905 (Array (_ BitVec 32) ValueCell!18153)) (size!50456 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103415)

(declare-fun lt!668097 () ListLongMap!22423)

(declare-fun getCurrentListMapNoExtraKeys!6659 (array!103413 array!103415 (_ BitVec 32) (_ BitVec 32) V!59279 V!59279 (_ BitVec 32) Int) ListLongMap!22423)

(assert (=> b!1549865 (= lt!668097 (getCurrentListMapNoExtraKeys!6659 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun lt!668100 () Unit!51572)

(declare-fun addStillContains!1284 (ListLongMap!22423 (_ BitVec 64) V!59279 (_ BitVec 64)) Unit!51572)

(assert (=> b!1549865 (= lt!668100 (addStillContains!1284 lt!668097 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49904 _keys!618) from!762)))))

(declare-fun lt!668094 () ListLongMap!22423)

(assert (=> b!1549865 (= lt!668094 (+!4939 lt!668097 (tuple2!24803 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(assert (=> b!1549865 (contains!10104 lt!668094 (select (arr!49904 _keys!618) from!762))))

(declare-fun addApplyDifferent!621 (ListLongMap!22423 (_ BitVec 64) V!59279 (_ BitVec 64)) Unit!51572)

(assert (=> b!1549865 (= lt!668095 (addApplyDifferent!621 lt!668097 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49904 _keys!618) from!762)))))

(declare-fun lt!668096 () V!59279)

(declare-fun apply!1118 (ListLongMap!22423 (_ BitVec 64)) V!59279)

(assert (=> b!1549865 (= lt!668096 (apply!1118 (+!4939 lt!668097 (tuple2!24803 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49904 _keys!618) from!762)))))

(declare-fun lt!668102 () V!59279)

(assert (=> b!1549865 (= lt!668102 (apply!1118 lt!668097 (select (arr!49904 _keys!618) from!762)))))

(assert (=> b!1549865 (= lt!668096 lt!668102)))

(declare-fun lt!668103 () Unit!51572)

(assert (=> b!1549865 (= lt!668103 (addApplyDifferent!621 lt!668097 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49904 _keys!618) from!762)))))

(assert (=> b!1549865 (= (apply!1118 lt!668094 (select (arr!49904 _keys!618) from!762)) lt!668102)))

(declare-fun b!1549866 () Bool)

(declare-fun res!1061810 () Bool)

(assert (=> b!1549866 (=> (not res!1061810) (not e!862760))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103413 (_ BitVec 32)) Bool)

(assert (=> b!1549866 (= res!1061810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1549855 () Bool)

(declare-fun e!862750 () Bool)

(assert (=> b!1549855 (= e!862750 tp_is_empty!38127)))

(declare-fun res!1061814 () Bool)

(assert (=> start!132170 (=> (not res!1061814) (not e!862760))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132170 (= res!1061814 (validMask!0 mask!926))))

(assert (=> start!132170 e!862760))

(declare-fun array_inv!38729 (array!103413) Bool)

(assert (=> start!132170 (array_inv!38729 _keys!618)))

(assert (=> start!132170 tp_is_empty!38127))

(assert (=> start!132170 true))

(assert (=> start!132170 tp!111806))

(declare-fun e!862748 () Bool)

(declare-fun array_inv!38730 (array!103415) Bool)

(assert (=> start!132170 (and (array_inv!38730 _values!470) e!862748)))

(declare-fun bm!70611 () Bool)

(assert (=> bm!70611 (= call!70612 (contains!10104 lt!668104 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1549867 () Bool)

(declare-fun c!142421 () Bool)

(assert (=> b!1549867 (= c!142421 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!668101))))

(assert (=> b!1549867 (= e!862761 e!862757)))

(declare-fun b!1549868 () Bool)

(assert (=> b!1549868 (= e!862752 e!862761)))

(assert (=> b!1549868 (= c!142420 (and (not lt!668101) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1549869 () Bool)

(assert (=> b!1549869 (= e!862762 false)))

(declare-fun lt!668098 () Bool)

(assert (=> b!1549869 (= lt!668098 (contains!10104 lt!668104 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1549870 () Bool)

(assert (=> b!1549870 (= e!862748 (and e!862758 mapRes!58894))))

(declare-fun condMapEmpty!58894 () Bool)

(declare-fun mapDefault!58894 () ValueCell!18153)

(assert (=> b!1549870 (= condMapEmpty!58894 (= (arr!49905 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18153)) mapDefault!58894)))))

(declare-fun b!1549871 () Bool)

(declare-fun res!1061812 () Bool)

(assert (=> b!1549871 (=> (not res!1061812) (not e!862762))))

(assert (=> b!1549871 (= res!1061812 (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1549872 () Bool)

(assert (=> b!1549872 (= e!862751 (= (apply!1118 lt!668104 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!436))))

(declare-fun b!1549873 () Bool)

(declare-fun res!1061816 () Bool)

(assert (=> b!1549873 (=> (not res!1061816) (not e!862760))))

(assert (=> b!1549873 (= res!1061816 (and (= (size!50456 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50455 _keys!618) (size!50456 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun bm!70612 () Bool)

(assert (=> bm!70612 (= call!70613 call!70615)))

(declare-fun b!1549874 () Bool)

(declare-fun get!26028 (ValueCell!18153 V!59279) V!59279)

(declare-fun dynLambda!3869 (Int (_ BitVec 64)) V!59279)

(assert (=> b!1549874 (= e!862754 (= (apply!1118 lt!668104 (select (arr!49904 _keys!618) from!762)) (get!26028 (select (arr!49905 _values!470) from!762) (dynLambda!3869 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!58894 () Bool)

(declare-fun tp!111805 () Bool)

(assert (=> mapNonEmpty!58894 (= mapRes!58894 (and tp!111805 e!862750))))

(declare-fun mapKey!58894 () (_ BitVec 32))

(declare-fun mapRest!58894 () (Array (_ BitVec 32) ValueCell!18153))

(declare-fun mapValue!58894 () ValueCell!18153)

(assert (=> mapNonEmpty!58894 (= (arr!49905 _values!470) (store mapRest!58894 mapKey!58894 mapValue!58894))))

(declare-fun b!1549875 () Bool)

(assert (=> b!1549875 (= e!862755 (not call!70612))))

(declare-fun bm!70613 () Bool)

(assert (=> bm!70613 (= call!70616 call!70617)))

(declare-fun b!1549876 () Bool)

(assert (=> b!1549876 (= e!862752 (+!4939 call!70615 (tuple2!24803 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1549877 () Bool)

(assert (=> b!1549877 (= e!862757 call!70616)))

(declare-fun b!1549878 () Bool)

(declare-fun res!1061805 () Bool)

(assert (=> b!1549878 (=> (not res!1061805) (not e!862760))))

(declare-datatypes ((List!36298 0))(
  ( (Nil!36295) (Cons!36294 (h!37740 (_ BitVec 64)) (t!51009 List!36298)) )
))
(declare-fun arrayNoDuplicates!0 (array!103413 (_ BitVec 32) List!36298) Bool)

(assert (=> b!1549878 (= res!1061805 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36295))))

(declare-fun bm!70614 () Bool)

(assert (=> bm!70614 (= call!70614 (getCurrentListMapNoExtraKeys!6659 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(assert (= (and start!132170 res!1061814) b!1549873))

(assert (= (and b!1549873 res!1061816) b!1549866))

(assert (= (and b!1549866 res!1061810) b!1549878))

(assert (= (and b!1549878 res!1061805) b!1549854))

(assert (= (and b!1549854 res!1061811) b!1549858))

(assert (= (and b!1549858 c!142423) b!1549876))

(assert (= (and b!1549858 (not c!142423)) b!1549868))

(assert (= (and b!1549868 c!142420) b!1549863))

(assert (= (and b!1549868 (not c!142420)) b!1549867))

(assert (= (and b!1549867 c!142421) b!1549864))

(assert (= (and b!1549867 (not c!142421)) b!1549877))

(assert (= (or b!1549864 b!1549877) bm!70613))

(assert (= (or b!1549863 bm!70613) bm!70610))

(assert (= (or b!1549863 b!1549864) bm!70612))

(assert (= (or b!1549876 bm!70610) bm!70614))

(assert (= (or b!1549876 bm!70612) bm!70609))

(assert (= (and b!1549858 (not res!1061806)) b!1549862))

(assert (= (and b!1549858 c!142424) b!1549865))

(assert (= (and b!1549858 (not c!142424)) b!1549860))

(assert (= (and b!1549858 (not res!1061813)) b!1549859))

(assert (= (and b!1549859 res!1061809) b!1549874))

(assert (= (and b!1549858 res!1061808) b!1549861))

(assert (= (and b!1549861 c!142422) b!1549857))

(assert (= (and b!1549861 (not c!142422)) b!1549875))

(assert (= (and b!1549857 res!1061815) b!1549872))

(assert (= (or b!1549857 b!1549875) bm!70611))

(assert (= (and b!1549861 res!1061807) b!1549871))

(assert (= (and b!1549871 res!1061812) b!1549869))

(assert (= (and b!1549870 condMapEmpty!58894) mapIsEmpty!58894))

(assert (= (and b!1549870 (not condMapEmpty!58894)) mapNonEmpty!58894))

(get-info :version)

(assert (= (and mapNonEmpty!58894 ((_ is ValueCellFull!18153) mapValue!58894)) b!1549855))

(assert (= (and b!1549870 ((_ is ValueCellFull!18153) mapDefault!58894)) b!1549856))

(assert (= start!132170 b!1549870))

(declare-fun b_lambda!24761 () Bool)

(assert (=> (not b_lambda!24761) (not b!1549874)))

(declare-fun t!51007 () Bool)

(declare-fun tb!12479 () Bool)

(assert (=> (and start!132170 (= defaultEntry!478 defaultEntry!478) t!51007) tb!12479))

(declare-fun result!26061 () Bool)

(assert (=> tb!12479 (= result!26061 tp_is_empty!38127)))

(assert (=> b!1549874 t!51007))

(declare-fun b_and!51281 () Bool)

(assert (= b_and!51279 (and (=> t!51007 result!26061) b_and!51281)))

(declare-fun m!1429017 () Bool)

(assert (=> b!1549866 m!1429017))

(declare-fun m!1429019 () Bool)

(assert (=> mapNonEmpty!58894 m!1429019))

(declare-fun m!1429021 () Bool)

(assert (=> bm!70609 m!1429021))

(declare-fun m!1429023 () Bool)

(assert (=> b!1549878 m!1429023))

(declare-fun m!1429025 () Bool)

(assert (=> start!132170 m!1429025))

(declare-fun m!1429027 () Bool)

(assert (=> start!132170 m!1429027))

(declare-fun m!1429029 () Bool)

(assert (=> start!132170 m!1429029))

(declare-fun m!1429031 () Bool)

(assert (=> bm!70611 m!1429031))

(declare-fun m!1429033 () Bool)

(assert (=> b!1549874 m!1429033))

(declare-fun m!1429035 () Bool)

(assert (=> b!1549874 m!1429035))

(assert (=> b!1549874 m!1429035))

(declare-fun m!1429037 () Bool)

(assert (=> b!1549874 m!1429037))

(declare-fun m!1429039 () Bool)

(assert (=> b!1549874 m!1429039))

(assert (=> b!1549874 m!1429033))

(assert (=> b!1549874 m!1429039))

(declare-fun m!1429041 () Bool)

(assert (=> b!1549874 m!1429041))

(assert (=> b!1549859 m!1429035))

(assert (=> b!1549859 m!1429035))

(declare-fun m!1429043 () Bool)

(assert (=> b!1549859 m!1429043))

(declare-fun m!1429045 () Bool)

(assert (=> b!1549869 m!1429045))

(declare-fun m!1429047 () Bool)

(assert (=> bm!70614 m!1429047))

(declare-fun m!1429049 () Bool)

(assert (=> b!1549865 m!1429049))

(assert (=> b!1549865 m!1429035))

(declare-fun m!1429051 () Bool)

(assert (=> b!1549865 m!1429051))

(assert (=> b!1549865 m!1429047))

(declare-fun m!1429053 () Bool)

(assert (=> b!1549865 m!1429053))

(assert (=> b!1549865 m!1429035))

(declare-fun m!1429055 () Bool)

(assert (=> b!1549865 m!1429055))

(assert (=> b!1549865 m!1429035))

(declare-fun m!1429057 () Bool)

(assert (=> b!1549865 m!1429057))

(assert (=> b!1549865 m!1429049))

(assert (=> b!1549865 m!1429035))

(declare-fun m!1429059 () Bool)

(assert (=> b!1549865 m!1429059))

(assert (=> b!1549865 m!1429035))

(declare-fun m!1429061 () Bool)

(assert (=> b!1549865 m!1429061))

(assert (=> b!1549865 m!1429035))

(assert (=> b!1549865 m!1429035))

(declare-fun m!1429063 () Bool)

(assert (=> b!1549865 m!1429063))

(assert (=> b!1549865 m!1429035))

(declare-fun m!1429065 () Bool)

(assert (=> b!1549865 m!1429065))

(declare-fun m!1429067 () Bool)

(assert (=> b!1549876 m!1429067))

(declare-fun m!1429069 () Bool)

(assert (=> b!1549872 m!1429069))

(assert (=> b!1549862 m!1429035))

(assert (=> b!1549862 m!1429035))

(declare-fun m!1429071 () Bool)

(assert (=> b!1549862 m!1429071))

(check-sat (not b!1549865) b_and!51281 (not b!1549869) (not bm!70609) (not b!1549876) (not b!1549878) (not b_lambda!24761) (not b!1549874) (not b!1549862) (not b!1549859) (not b!1549872) (not b!1549866) (not mapNonEmpty!58894) (not start!132170) tp_is_empty!38127 (not bm!70611) (not bm!70614) (not b_next!31851))
(check-sat b_and!51281 (not b_next!31851))
