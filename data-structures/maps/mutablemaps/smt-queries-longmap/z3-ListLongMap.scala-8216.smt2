; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100226 () Bool)

(assert start!100226)

(declare-fun b!1194777 () Bool)

(declare-fun res!795060 () Bool)

(declare-fun e!679019 () Bool)

(assert (=> b!1194777 (=> (not res!795060) (not e!679019))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1194777 (= res!795060 (validKeyInArray!0 k0!934))))

(declare-fun b!1194778 () Bool)

(declare-fun res!795064 () Bool)

(assert (=> b!1194778 (=> (not res!795064) (not e!679019))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1194778 (= res!795064 (validMask!0 mask!1564))))

(declare-fun b!1194779 () Bool)

(declare-fun res!795059 () Bool)

(assert (=> b!1194779 (=> (not res!795059) (not e!679019))))

(declare-datatypes ((array!77308 0))(
  ( (array!77309 (arr!37298 (Array (_ BitVec 32) (_ BitVec 64))) (size!37835 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77308)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45491 0))(
  ( (V!45492 (val!15193 Int)) )
))
(declare-datatypes ((ValueCell!14427 0))(
  ( (ValueCellFull!14427 (v!17832 V!45491)) (EmptyCell!14427) )
))
(declare-datatypes ((array!77310 0))(
  ( (array!77311 (arr!37299 (Array (_ BitVec 32) ValueCell!14427)) (size!37836 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77310)

(assert (=> b!1194779 (= res!795059 (and (= (size!37836 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37835 _keys!1208) (size!37836 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!47243 () Bool)

(declare-fun mapRes!47243 () Bool)

(declare-fun tp!89854 () Bool)

(declare-fun e!679017 () Bool)

(assert (=> mapNonEmpty!47243 (= mapRes!47243 (and tp!89854 e!679017))))

(declare-fun mapValue!47243 () ValueCell!14427)

(declare-fun mapRest!47243 () (Array (_ BitVec 32) ValueCell!14427))

(declare-fun mapKey!47243 () (_ BitVec 32))

(assert (=> mapNonEmpty!47243 (= (arr!37299 _values!996) (store mapRest!47243 mapKey!47243 mapValue!47243))))

(declare-fun b!1194780 () Bool)

(declare-fun res!795062 () Bool)

(declare-fun e!679015 () Bool)

(assert (=> b!1194780 (=> (not res!795062) (not e!679015))))

(declare-fun lt!542774 () array!77308)

(declare-datatypes ((List!26427 0))(
  ( (Nil!26424) (Cons!26423 (h!27632 (_ BitVec 64)) (t!39105 List!26427)) )
))
(declare-fun arrayNoDuplicates!0 (array!77308 (_ BitVec 32) List!26427) Bool)

(assert (=> b!1194780 (= res!795062 (arrayNoDuplicates!0 lt!542774 #b00000000000000000000000000000000 Nil!26424))))

(declare-fun b!1194781 () Bool)

(declare-fun e!679020 () Bool)

(declare-fun e!679018 () Bool)

(assert (=> b!1194781 (= e!679020 (and e!679018 mapRes!47243))))

(declare-fun condMapEmpty!47243 () Bool)

(declare-fun mapDefault!47243 () ValueCell!14427)

(assert (=> b!1194781 (= condMapEmpty!47243 (= (arr!37299 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14427)) mapDefault!47243)))))

(declare-fun b!1194782 () Bool)

(declare-fun res!795063 () Bool)

(assert (=> b!1194782 (=> (not res!795063) (not e!679019))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1194782 (= res!795063 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37835 _keys!1208))))))

(declare-fun b!1194783 () Bool)

(declare-fun tp_is_empty!30273 () Bool)

(assert (=> b!1194783 (= e!679017 tp_is_empty!30273)))

(declare-fun res!795065 () Bool)

(assert (=> start!100226 (=> (not res!795065) (not e!679019))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100226 (= res!795065 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37835 _keys!1208))))))

(assert (=> start!100226 e!679019))

(declare-fun array_inv!28334 (array!77308) Bool)

(assert (=> start!100226 (array_inv!28334 _keys!1208)))

(assert (=> start!100226 true))

(declare-fun array_inv!28335 (array!77310) Bool)

(assert (=> start!100226 (and (array_inv!28335 _values!996) e!679020)))

(declare-fun b!1194784 () Bool)

(declare-fun res!795057 () Bool)

(assert (=> b!1194784 (=> (not res!795057) (not e!679019))))

(assert (=> b!1194784 (= res!795057 (= (select (arr!37298 _keys!1208) i!673) k0!934))))

(declare-fun b!1194785 () Bool)

(declare-fun res!795061 () Bool)

(assert (=> b!1194785 (=> (not res!795061) (not e!679019))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77308 (_ BitVec 32)) Bool)

(assert (=> b!1194785 (= res!795061 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1194786 () Bool)

(assert (=> b!1194786 (= e!679015 (not (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!37835 _keys!1208)) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000))))))

(declare-fun arrayContainsKey!0 (array!77308 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1194786 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39552 0))(
  ( (Unit!39553) )
))
(declare-fun lt!542775 () Unit!39552)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77308 (_ BitVec 64) (_ BitVec 32)) Unit!39552)

(assert (=> b!1194786 (= lt!542775 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1194787 () Bool)

(assert (=> b!1194787 (= e!679019 e!679015)))

(declare-fun res!795056 () Bool)

(assert (=> b!1194787 (=> (not res!795056) (not e!679015))))

(assert (=> b!1194787 (= res!795056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542774 mask!1564))))

(assert (=> b!1194787 (= lt!542774 (array!77309 (store (arr!37298 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37835 _keys!1208)))))

(declare-fun mapIsEmpty!47243 () Bool)

(assert (=> mapIsEmpty!47243 mapRes!47243))

(declare-fun b!1194788 () Bool)

(assert (=> b!1194788 (= e!679018 tp_is_empty!30273)))

(declare-fun b!1194789 () Bool)

(declare-fun res!795058 () Bool)

(assert (=> b!1194789 (=> (not res!795058) (not e!679019))))

(assert (=> b!1194789 (= res!795058 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26424))))

(assert (= (and start!100226 res!795065) b!1194778))

(assert (= (and b!1194778 res!795064) b!1194779))

(assert (= (and b!1194779 res!795059) b!1194785))

(assert (= (and b!1194785 res!795061) b!1194789))

(assert (= (and b!1194789 res!795058) b!1194782))

(assert (= (and b!1194782 res!795063) b!1194777))

(assert (= (and b!1194777 res!795060) b!1194784))

(assert (= (and b!1194784 res!795057) b!1194787))

(assert (= (and b!1194787 res!795056) b!1194780))

(assert (= (and b!1194780 res!795062) b!1194786))

(assert (= (and b!1194781 condMapEmpty!47243) mapIsEmpty!47243))

(assert (= (and b!1194781 (not condMapEmpty!47243)) mapNonEmpty!47243))

(get-info :version)

(assert (= (and mapNonEmpty!47243 ((_ is ValueCellFull!14427) mapValue!47243)) b!1194783))

(assert (= (and b!1194781 ((_ is ValueCellFull!14427) mapDefault!47243)) b!1194788))

(assert (= start!100226 b!1194781))

(declare-fun m!1102595 () Bool)

(assert (=> b!1194778 m!1102595))

(declare-fun m!1102597 () Bool)

(assert (=> mapNonEmpty!47243 m!1102597))

(declare-fun m!1102599 () Bool)

(assert (=> b!1194784 m!1102599))

(declare-fun m!1102601 () Bool)

(assert (=> b!1194780 m!1102601))

(declare-fun m!1102603 () Bool)

(assert (=> b!1194777 m!1102603))

(declare-fun m!1102605 () Bool)

(assert (=> b!1194785 m!1102605))

(declare-fun m!1102607 () Bool)

(assert (=> b!1194789 m!1102607))

(declare-fun m!1102609 () Bool)

(assert (=> start!100226 m!1102609))

(declare-fun m!1102611 () Bool)

(assert (=> start!100226 m!1102611))

(declare-fun m!1102613 () Bool)

(assert (=> b!1194786 m!1102613))

(declare-fun m!1102615 () Bool)

(assert (=> b!1194786 m!1102615))

(declare-fun m!1102617 () Bool)

(assert (=> b!1194787 m!1102617))

(declare-fun m!1102619 () Bool)

(assert (=> b!1194787 m!1102619))

(check-sat tp_is_empty!30273 (not b!1194780) (not start!100226) (not b!1194786) (not b!1194778) (not b!1194777) (not b!1194785) (not b!1194789) (not b!1194787) (not mapNonEmpty!47243))
(check-sat)
(get-model)

(declare-fun d!132227 () Bool)

(assert (=> d!132227 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1194778 d!132227))

(declare-fun d!132229 () Bool)

(declare-fun res!795100 () Bool)

(declare-fun e!679043 () Bool)

(assert (=> d!132229 (=> res!795100 e!679043)))

(assert (=> d!132229 (= res!795100 (= (select (arr!37298 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!132229 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!679043)))

(declare-fun b!1194833 () Bool)

(declare-fun e!679044 () Bool)

(assert (=> b!1194833 (= e!679043 e!679044)))

(declare-fun res!795101 () Bool)

(assert (=> b!1194833 (=> (not res!795101) (not e!679044))))

(assert (=> b!1194833 (= res!795101 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!37835 _keys!1208)))))

(declare-fun b!1194834 () Bool)

(assert (=> b!1194834 (= e!679044 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!132229 (not res!795100)) b!1194833))

(assert (= (and b!1194833 res!795101) b!1194834))

(declare-fun m!1102647 () Bool)

(assert (=> d!132229 m!1102647))

(declare-fun m!1102649 () Bool)

(assert (=> b!1194834 m!1102649))

(assert (=> b!1194786 d!132229))

(declare-fun d!132231 () Bool)

(assert (=> d!132231 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!542784 () Unit!39552)

(declare-fun choose!13 (array!77308 (_ BitVec 64) (_ BitVec 32)) Unit!39552)

(assert (=> d!132231 (= lt!542784 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!132231 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!132231 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!542784)))

(declare-fun bs!33883 () Bool)

(assert (= bs!33883 d!132231))

(assert (=> bs!33883 m!1102613))

(declare-fun m!1102651 () Bool)

(assert (=> bs!33883 m!1102651))

(assert (=> b!1194786 d!132231))

(declare-fun d!132233 () Bool)

(assert (=> d!132233 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1194777 d!132233))

(declare-fun bm!57150 () Bool)

(declare-fun call!57153 () Bool)

(assert (=> bm!57150 (= call!57153 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!542774 mask!1564))))

(declare-fun b!1194843 () Bool)

(declare-fun e!679051 () Bool)

(declare-fun e!679053 () Bool)

(assert (=> b!1194843 (= e!679051 e!679053)))

(declare-fun c!117276 () Bool)

(assert (=> b!1194843 (= c!117276 (validKeyInArray!0 (select (arr!37298 lt!542774) #b00000000000000000000000000000000)))))

(declare-fun d!132235 () Bool)

(declare-fun res!795106 () Bool)

(assert (=> d!132235 (=> res!795106 e!679051)))

(assert (=> d!132235 (= res!795106 (bvsge #b00000000000000000000000000000000 (size!37835 lt!542774)))))

(assert (=> d!132235 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542774 mask!1564) e!679051)))

(declare-fun b!1194844 () Bool)

(assert (=> b!1194844 (= e!679053 call!57153)))

(declare-fun b!1194845 () Bool)

(declare-fun e!679052 () Bool)

(assert (=> b!1194845 (= e!679052 call!57153)))

(declare-fun b!1194846 () Bool)

(assert (=> b!1194846 (= e!679053 e!679052)))

(declare-fun lt!542792 () (_ BitVec 64))

(assert (=> b!1194846 (= lt!542792 (select (arr!37298 lt!542774) #b00000000000000000000000000000000))))

(declare-fun lt!542793 () Unit!39552)

(assert (=> b!1194846 (= lt!542793 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!542774 lt!542792 #b00000000000000000000000000000000))))

(assert (=> b!1194846 (arrayContainsKey!0 lt!542774 lt!542792 #b00000000000000000000000000000000)))

(declare-fun lt!542791 () Unit!39552)

(assert (=> b!1194846 (= lt!542791 lt!542793)))

(declare-fun res!795107 () Bool)

(declare-datatypes ((SeekEntryResult!9927 0))(
  ( (MissingZero!9927 (index!42078 (_ BitVec 32))) (Found!9927 (index!42079 (_ BitVec 32))) (Intermediate!9927 (undefined!10739 Bool) (index!42080 (_ BitVec 32)) (x!105668 (_ BitVec 32))) (Undefined!9927) (MissingVacant!9927 (index!42081 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!77308 (_ BitVec 32)) SeekEntryResult!9927)

(assert (=> b!1194846 (= res!795107 (= (seekEntryOrOpen!0 (select (arr!37298 lt!542774) #b00000000000000000000000000000000) lt!542774 mask!1564) (Found!9927 #b00000000000000000000000000000000)))))

(assert (=> b!1194846 (=> (not res!795107) (not e!679052))))

(assert (= (and d!132235 (not res!795106)) b!1194843))

(assert (= (and b!1194843 c!117276) b!1194846))

(assert (= (and b!1194843 (not c!117276)) b!1194844))

(assert (= (and b!1194846 res!795107) b!1194845))

(assert (= (or b!1194845 b!1194844) bm!57150))

(declare-fun m!1102653 () Bool)

(assert (=> bm!57150 m!1102653))

(declare-fun m!1102655 () Bool)

(assert (=> b!1194843 m!1102655))

(assert (=> b!1194843 m!1102655))

(declare-fun m!1102657 () Bool)

(assert (=> b!1194843 m!1102657))

(assert (=> b!1194846 m!1102655))

(declare-fun m!1102659 () Bool)

(assert (=> b!1194846 m!1102659))

(declare-fun m!1102661 () Bool)

(assert (=> b!1194846 m!1102661))

(assert (=> b!1194846 m!1102655))

(declare-fun m!1102663 () Bool)

(assert (=> b!1194846 m!1102663))

(assert (=> b!1194787 d!132235))

(declare-fun b!1194857 () Bool)

(declare-fun e!679065 () Bool)

(declare-fun e!679064 () Bool)

(assert (=> b!1194857 (= e!679065 e!679064)))

(declare-fun res!795116 () Bool)

(assert (=> b!1194857 (=> (not res!795116) (not e!679064))))

(declare-fun e!679062 () Bool)

(assert (=> b!1194857 (= res!795116 (not e!679062))))

(declare-fun res!795114 () Bool)

(assert (=> b!1194857 (=> (not res!795114) (not e!679062))))

(assert (=> b!1194857 (= res!795114 (validKeyInArray!0 (select (arr!37298 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1194858 () Bool)

(declare-fun e!679063 () Bool)

(declare-fun call!57156 () Bool)

(assert (=> b!1194858 (= e!679063 call!57156)))

(declare-fun b!1194859 () Bool)

(assert (=> b!1194859 (= e!679063 call!57156)))

(declare-fun bm!57153 () Bool)

(declare-fun c!117279 () Bool)

(assert (=> bm!57153 (= call!57156 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!117279 (Cons!26423 (select (arr!37298 _keys!1208) #b00000000000000000000000000000000) Nil!26424) Nil!26424)))))

(declare-fun d!132237 () Bool)

(declare-fun res!795115 () Bool)

(assert (=> d!132237 (=> res!795115 e!679065)))

(assert (=> d!132237 (= res!795115 (bvsge #b00000000000000000000000000000000 (size!37835 _keys!1208)))))

(assert (=> d!132237 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26424) e!679065)))

(declare-fun b!1194860 () Bool)

(declare-fun contains!6882 (List!26427 (_ BitVec 64)) Bool)

(assert (=> b!1194860 (= e!679062 (contains!6882 Nil!26424 (select (arr!37298 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1194861 () Bool)

(assert (=> b!1194861 (= e!679064 e!679063)))

(assert (=> b!1194861 (= c!117279 (validKeyInArray!0 (select (arr!37298 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!132237 (not res!795115)) b!1194857))

(assert (= (and b!1194857 res!795114) b!1194860))

(assert (= (and b!1194857 res!795116) b!1194861))

(assert (= (and b!1194861 c!117279) b!1194859))

(assert (= (and b!1194861 (not c!117279)) b!1194858))

(assert (= (or b!1194859 b!1194858) bm!57153))

(assert (=> b!1194857 m!1102647))

(assert (=> b!1194857 m!1102647))

(declare-fun m!1102665 () Bool)

(assert (=> b!1194857 m!1102665))

(assert (=> bm!57153 m!1102647))

(declare-fun m!1102667 () Bool)

(assert (=> bm!57153 m!1102667))

(assert (=> b!1194860 m!1102647))

(assert (=> b!1194860 m!1102647))

(declare-fun m!1102669 () Bool)

(assert (=> b!1194860 m!1102669))

(assert (=> b!1194861 m!1102647))

(assert (=> b!1194861 m!1102647))

(assert (=> b!1194861 m!1102665))

(assert (=> b!1194789 d!132237))

(declare-fun bm!57154 () Bool)

(declare-fun call!57157 () Bool)

(assert (=> bm!57154 (= call!57157 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1194862 () Bool)

(declare-fun e!679066 () Bool)

(declare-fun e!679068 () Bool)

(assert (=> b!1194862 (= e!679066 e!679068)))

(declare-fun c!117280 () Bool)

(assert (=> b!1194862 (= c!117280 (validKeyInArray!0 (select (arr!37298 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!132239 () Bool)

(declare-fun res!795117 () Bool)

(assert (=> d!132239 (=> res!795117 e!679066)))

(assert (=> d!132239 (= res!795117 (bvsge #b00000000000000000000000000000000 (size!37835 _keys!1208)))))

(assert (=> d!132239 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!679066)))

(declare-fun b!1194863 () Bool)

(assert (=> b!1194863 (= e!679068 call!57157)))

(declare-fun b!1194864 () Bool)

(declare-fun e!679067 () Bool)

(assert (=> b!1194864 (= e!679067 call!57157)))

(declare-fun b!1194865 () Bool)

(assert (=> b!1194865 (= e!679068 e!679067)))

(declare-fun lt!542795 () (_ BitVec 64))

(assert (=> b!1194865 (= lt!542795 (select (arr!37298 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!542796 () Unit!39552)

(assert (=> b!1194865 (= lt!542796 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!542795 #b00000000000000000000000000000000))))

(assert (=> b!1194865 (arrayContainsKey!0 _keys!1208 lt!542795 #b00000000000000000000000000000000)))

(declare-fun lt!542794 () Unit!39552)

(assert (=> b!1194865 (= lt!542794 lt!542796)))

(declare-fun res!795118 () Bool)

(assert (=> b!1194865 (= res!795118 (= (seekEntryOrOpen!0 (select (arr!37298 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9927 #b00000000000000000000000000000000)))))

(assert (=> b!1194865 (=> (not res!795118) (not e!679067))))

(assert (= (and d!132239 (not res!795117)) b!1194862))

(assert (= (and b!1194862 c!117280) b!1194865))

(assert (= (and b!1194862 (not c!117280)) b!1194863))

(assert (= (and b!1194865 res!795118) b!1194864))

(assert (= (or b!1194864 b!1194863) bm!57154))

(declare-fun m!1102671 () Bool)

(assert (=> bm!57154 m!1102671))

(assert (=> b!1194862 m!1102647))

(assert (=> b!1194862 m!1102647))

(assert (=> b!1194862 m!1102665))

(assert (=> b!1194865 m!1102647))

(declare-fun m!1102673 () Bool)

(assert (=> b!1194865 m!1102673))

(declare-fun m!1102675 () Bool)

(assert (=> b!1194865 m!1102675))

(assert (=> b!1194865 m!1102647))

(declare-fun m!1102677 () Bool)

(assert (=> b!1194865 m!1102677))

(assert (=> b!1194785 d!132239))

(declare-fun d!132241 () Bool)

(assert (=> d!132241 (= (array_inv!28334 _keys!1208) (bvsge (size!37835 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!100226 d!132241))

(declare-fun d!132243 () Bool)

(assert (=> d!132243 (= (array_inv!28335 _values!996) (bvsge (size!37836 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!100226 d!132243))

(declare-fun b!1194866 () Bool)

(declare-fun e!679072 () Bool)

(declare-fun e!679071 () Bool)

(assert (=> b!1194866 (= e!679072 e!679071)))

(declare-fun res!795121 () Bool)

(assert (=> b!1194866 (=> (not res!795121) (not e!679071))))

(declare-fun e!679069 () Bool)

(assert (=> b!1194866 (= res!795121 (not e!679069))))

(declare-fun res!795119 () Bool)

(assert (=> b!1194866 (=> (not res!795119) (not e!679069))))

(assert (=> b!1194866 (= res!795119 (validKeyInArray!0 (select (arr!37298 lt!542774) #b00000000000000000000000000000000)))))

(declare-fun b!1194867 () Bool)

(declare-fun e!679070 () Bool)

(declare-fun call!57158 () Bool)

(assert (=> b!1194867 (= e!679070 call!57158)))

(declare-fun b!1194868 () Bool)

(assert (=> b!1194868 (= e!679070 call!57158)))

(declare-fun bm!57155 () Bool)

(declare-fun c!117281 () Bool)

(assert (=> bm!57155 (= call!57158 (arrayNoDuplicates!0 lt!542774 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!117281 (Cons!26423 (select (arr!37298 lt!542774) #b00000000000000000000000000000000) Nil!26424) Nil!26424)))))

(declare-fun d!132245 () Bool)

(declare-fun res!795120 () Bool)

(assert (=> d!132245 (=> res!795120 e!679072)))

(assert (=> d!132245 (= res!795120 (bvsge #b00000000000000000000000000000000 (size!37835 lt!542774)))))

(assert (=> d!132245 (= (arrayNoDuplicates!0 lt!542774 #b00000000000000000000000000000000 Nil!26424) e!679072)))

(declare-fun b!1194869 () Bool)

(assert (=> b!1194869 (= e!679069 (contains!6882 Nil!26424 (select (arr!37298 lt!542774) #b00000000000000000000000000000000)))))

(declare-fun b!1194870 () Bool)

(assert (=> b!1194870 (= e!679071 e!679070)))

(assert (=> b!1194870 (= c!117281 (validKeyInArray!0 (select (arr!37298 lt!542774) #b00000000000000000000000000000000)))))

(assert (= (and d!132245 (not res!795120)) b!1194866))

(assert (= (and b!1194866 res!795119) b!1194869))

(assert (= (and b!1194866 res!795121) b!1194870))

(assert (= (and b!1194870 c!117281) b!1194868))

(assert (= (and b!1194870 (not c!117281)) b!1194867))

(assert (= (or b!1194868 b!1194867) bm!57155))

(assert (=> b!1194866 m!1102655))

(assert (=> b!1194866 m!1102655))

(assert (=> b!1194866 m!1102657))

(assert (=> bm!57155 m!1102655))

(declare-fun m!1102679 () Bool)

(assert (=> bm!57155 m!1102679))

(assert (=> b!1194869 m!1102655))

(assert (=> b!1194869 m!1102655))

(declare-fun m!1102681 () Bool)

(assert (=> b!1194869 m!1102681))

(assert (=> b!1194870 m!1102655))

(assert (=> b!1194870 m!1102655))

(assert (=> b!1194870 m!1102657))

(assert (=> b!1194780 d!132245))

(declare-fun b!1194878 () Bool)

(declare-fun e!679077 () Bool)

(assert (=> b!1194878 (= e!679077 tp_is_empty!30273)))

(declare-fun condMapEmpty!47249 () Bool)

(declare-fun mapDefault!47249 () ValueCell!14427)

(assert (=> mapNonEmpty!47243 (= condMapEmpty!47249 (= mapRest!47243 ((as const (Array (_ BitVec 32) ValueCell!14427)) mapDefault!47249)))))

(declare-fun mapRes!47249 () Bool)

(assert (=> mapNonEmpty!47243 (= tp!89854 (and e!679077 mapRes!47249))))

(declare-fun mapNonEmpty!47249 () Bool)

(declare-fun tp!89860 () Bool)

(declare-fun e!679078 () Bool)

(assert (=> mapNonEmpty!47249 (= mapRes!47249 (and tp!89860 e!679078))))

(declare-fun mapRest!47249 () (Array (_ BitVec 32) ValueCell!14427))

(declare-fun mapValue!47249 () ValueCell!14427)

(declare-fun mapKey!47249 () (_ BitVec 32))

(assert (=> mapNonEmpty!47249 (= mapRest!47243 (store mapRest!47249 mapKey!47249 mapValue!47249))))

(declare-fun b!1194877 () Bool)

(assert (=> b!1194877 (= e!679078 tp_is_empty!30273)))

(declare-fun mapIsEmpty!47249 () Bool)

(assert (=> mapIsEmpty!47249 mapRes!47249))

(assert (= (and mapNonEmpty!47243 condMapEmpty!47249) mapIsEmpty!47249))

(assert (= (and mapNonEmpty!47243 (not condMapEmpty!47249)) mapNonEmpty!47249))

(assert (= (and mapNonEmpty!47249 ((_ is ValueCellFull!14427) mapValue!47249)) b!1194877))

(assert (= (and mapNonEmpty!47243 ((_ is ValueCellFull!14427) mapDefault!47249)) b!1194878))

(declare-fun m!1102683 () Bool)

(assert (=> mapNonEmpty!47249 m!1102683))

(check-sat (not bm!57150) (not b!1194861) (not bm!57155) (not b!1194843) (not b!1194869) (not b!1194865) (not mapNonEmpty!47249) (not b!1194870) (not b!1194862) (not b!1194857) tp_is_empty!30273 (not b!1194834) (not d!132231) (not bm!57153) (not b!1194866) (not bm!57154) (not b!1194846) (not b!1194860))
(check-sat)
