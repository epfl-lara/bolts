; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100200 () Bool)

(assert start!100200)

(declare-fun b!1194489 () Bool)

(declare-fun res!794848 () Bool)

(declare-fun e!678870 () Bool)

(assert (=> b!1194489 (=> (not res!794848) (not e!678870))))

(declare-datatypes ((array!77286 0))(
  ( (array!77287 (arr!37288 (Array (_ BitVec 32) (_ BitVec 64))) (size!37825 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77286)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1194489 (= res!794848 (= (select (arr!37288 _keys!1208) i!673) k0!934))))

(declare-fun b!1194490 () Bool)

(declare-fun e!678869 () Bool)

(declare-fun tp_is_empty!30261 () Bool)

(assert (=> b!1194490 (= e!678869 tp_is_empty!30261)))

(declare-fun b!1194491 () Bool)

(declare-fun res!794850 () Bool)

(assert (=> b!1194491 (=> (not res!794850) (not e!678870))))

(assert (=> b!1194491 (= res!794850 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37825 _keys!1208))))))

(declare-fun b!1194492 () Bool)

(declare-fun res!794846 () Bool)

(assert (=> b!1194492 (=> (not res!794846) (not e!678870))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77286 (_ BitVec 32)) Bool)

(assert (=> b!1194492 (= res!794846 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun e!678867 () Bool)

(declare-fun b!1194493 () Bool)

(declare-fun arrayContainsKey!0 (array!77286 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1194493 (= e!678867 (not (arrayContainsKey!0 _keys!1208 k0!934 i!673)))))

(declare-fun b!1194494 () Bool)

(declare-fun res!794852 () Bool)

(assert (=> b!1194494 (=> (not res!794852) (not e!678870))))

(declare-datatypes ((List!26423 0))(
  ( (Nil!26420) (Cons!26419 (h!27628 (_ BitVec 64)) (t!39101 List!26423)) )
))
(declare-fun arrayNoDuplicates!0 (array!77286 (_ BitVec 32) List!26423) Bool)

(assert (=> b!1194494 (= res!794852 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26420))))

(declare-fun b!1194495 () Bool)

(declare-fun res!794851 () Bool)

(assert (=> b!1194495 (=> (not res!794851) (not e!678870))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45475 0))(
  ( (V!45476 (val!15187 Int)) )
))
(declare-datatypes ((ValueCell!14421 0))(
  ( (ValueCellFull!14421 (v!17826 V!45475)) (EmptyCell!14421) )
))
(declare-datatypes ((array!77288 0))(
  ( (array!77289 (arr!37289 (Array (_ BitVec 32) ValueCell!14421)) (size!37826 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77288)

(assert (=> b!1194495 (= res!794851 (and (= (size!37826 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37825 _keys!1208) (size!37826 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1194496 () Bool)

(declare-fun res!794856 () Bool)

(assert (=> b!1194496 (=> (not res!794856) (not e!678870))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1194496 (= res!794856 (validKeyInArray!0 k0!934))))

(declare-fun res!794854 () Bool)

(assert (=> start!100200 (=> (not res!794854) (not e!678870))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100200 (= res!794854 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37825 _keys!1208))))))

(assert (=> start!100200 e!678870))

(declare-fun array_inv!28326 (array!77286) Bool)

(assert (=> start!100200 (array_inv!28326 _keys!1208)))

(assert (=> start!100200 true))

(declare-fun e!678868 () Bool)

(declare-fun array_inv!28327 (array!77288) Bool)

(assert (=> start!100200 (and (array_inv!28327 _values!996) e!678868)))

(declare-fun mapIsEmpty!47222 () Bool)

(declare-fun mapRes!47222 () Bool)

(assert (=> mapIsEmpty!47222 mapRes!47222))

(declare-fun b!1194497 () Bool)

(declare-fun res!794849 () Bool)

(assert (=> b!1194497 (=> (not res!794849) (not e!678867))))

(declare-fun lt!542730 () array!77286)

(assert (=> b!1194497 (= res!794849 (arrayNoDuplicates!0 lt!542730 #b00000000000000000000000000000000 Nil!26420))))

(declare-fun b!1194498 () Bool)

(declare-fun res!794853 () Bool)

(assert (=> b!1194498 (=> (not res!794853) (not e!678870))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1194498 (= res!794853 (validMask!0 mask!1564))))

(declare-fun b!1194499 () Bool)

(declare-fun e!678872 () Bool)

(assert (=> b!1194499 (= e!678872 tp_is_empty!30261)))

(declare-fun b!1194500 () Bool)

(assert (=> b!1194500 (= e!678868 (and e!678869 mapRes!47222))))

(declare-fun condMapEmpty!47222 () Bool)

(declare-fun mapDefault!47222 () ValueCell!14421)

(assert (=> b!1194500 (= condMapEmpty!47222 (= (arr!37289 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14421)) mapDefault!47222)))))

(declare-fun b!1194501 () Bool)

(declare-fun res!794847 () Bool)

(assert (=> b!1194501 (=> (not res!794847) (not e!678867))))

(assert (=> b!1194501 (= res!794847 (bvslt (size!37825 _keys!1208) #b01111111111111111111111111111111))))

(declare-fun mapNonEmpty!47222 () Bool)

(declare-fun tp!89833 () Bool)

(assert (=> mapNonEmpty!47222 (= mapRes!47222 (and tp!89833 e!678872))))

(declare-fun mapRest!47222 () (Array (_ BitVec 32) ValueCell!14421))

(declare-fun mapKey!47222 () (_ BitVec 32))

(declare-fun mapValue!47222 () ValueCell!14421)

(assert (=> mapNonEmpty!47222 (= (arr!37289 _values!996) (store mapRest!47222 mapKey!47222 mapValue!47222))))

(declare-fun b!1194502 () Bool)

(assert (=> b!1194502 (= e!678870 e!678867)))

(declare-fun res!794855 () Bool)

(assert (=> b!1194502 (=> (not res!794855) (not e!678867))))

(assert (=> b!1194502 (= res!794855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542730 mask!1564))))

(assert (=> b!1194502 (= lt!542730 (array!77287 (store (arr!37288 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37825 _keys!1208)))))

(assert (= (and start!100200 res!794854) b!1194498))

(assert (= (and b!1194498 res!794853) b!1194495))

(assert (= (and b!1194495 res!794851) b!1194492))

(assert (= (and b!1194492 res!794846) b!1194494))

(assert (= (and b!1194494 res!794852) b!1194491))

(assert (= (and b!1194491 res!794850) b!1194496))

(assert (= (and b!1194496 res!794856) b!1194489))

(assert (= (and b!1194489 res!794848) b!1194502))

(assert (= (and b!1194502 res!794855) b!1194497))

(assert (= (and b!1194497 res!794849) b!1194501))

(assert (= (and b!1194501 res!794847) b!1194493))

(assert (= (and b!1194500 condMapEmpty!47222) mapIsEmpty!47222))

(assert (= (and b!1194500 (not condMapEmpty!47222)) mapNonEmpty!47222))

(get-info :version)

(assert (= (and mapNonEmpty!47222 ((_ is ValueCellFull!14421) mapValue!47222)) b!1194499))

(assert (= (and b!1194500 ((_ is ValueCellFull!14421) mapDefault!47222)) b!1194490))

(assert (= start!100200 b!1194500))

(declare-fun m!1102407 () Bool)

(assert (=> start!100200 m!1102407))

(declare-fun m!1102409 () Bool)

(assert (=> start!100200 m!1102409))

(declare-fun m!1102411 () Bool)

(assert (=> mapNonEmpty!47222 m!1102411))

(declare-fun m!1102413 () Bool)

(assert (=> b!1194497 m!1102413))

(declare-fun m!1102415 () Bool)

(assert (=> b!1194496 m!1102415))

(declare-fun m!1102417 () Bool)

(assert (=> b!1194493 m!1102417))

(declare-fun m!1102419 () Bool)

(assert (=> b!1194498 m!1102419))

(declare-fun m!1102421 () Bool)

(assert (=> b!1194502 m!1102421))

(declare-fun m!1102423 () Bool)

(assert (=> b!1194502 m!1102423))

(declare-fun m!1102425 () Bool)

(assert (=> b!1194489 m!1102425))

(declare-fun m!1102427 () Bool)

(assert (=> b!1194494 m!1102427))

(declare-fun m!1102429 () Bool)

(assert (=> b!1194492 m!1102429))

(check-sat (not mapNonEmpty!47222) (not b!1194496) tp_is_empty!30261 (not b!1194498) (not b!1194494) (not b!1194492) (not start!100200) (not b!1194497) (not b!1194493) (not b!1194502))
(check-sat)
(get-model)

(declare-fun d!132205 () Bool)

(assert (=> d!132205 (= (array_inv!28326 _keys!1208) (bvsge (size!37825 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!100200 d!132205))

(declare-fun d!132207 () Bool)

(assert (=> d!132207 (= (array_inv!28327 _values!996) (bvsge (size!37826 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!100200 d!132207))

(declare-fun d!132209 () Bool)

(assert (=> d!132209 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1194496 d!132209))

(declare-fun d!132211 () Bool)

(assert (=> d!132211 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1194498 d!132211))

(declare-fun b!1194553 () Bool)

(declare-fun e!678899 () Bool)

(declare-fun e!678898 () Bool)

(assert (=> b!1194553 (= e!678899 e!678898)))

(declare-fun lt!542742 () (_ BitVec 64))

(assert (=> b!1194553 (= lt!542742 (select (arr!37288 lt!542730) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!39546 0))(
  ( (Unit!39547) )
))
(declare-fun lt!542741 () Unit!39546)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77286 (_ BitVec 64) (_ BitVec 32)) Unit!39546)

(assert (=> b!1194553 (= lt!542741 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!542730 lt!542742 #b00000000000000000000000000000000))))

(assert (=> b!1194553 (arrayContainsKey!0 lt!542730 lt!542742 #b00000000000000000000000000000000)))

(declare-fun lt!542740 () Unit!39546)

(assert (=> b!1194553 (= lt!542740 lt!542741)))

(declare-fun res!794895 () Bool)

(declare-datatypes ((SeekEntryResult!9926 0))(
  ( (MissingZero!9926 (index!42074 (_ BitVec 32))) (Found!9926 (index!42075 (_ BitVec 32))) (Intermediate!9926 (undefined!10738 Bool) (index!42076 (_ BitVec 32)) (x!105649 (_ BitVec 32))) (Undefined!9926) (MissingVacant!9926 (index!42077 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!77286 (_ BitVec 32)) SeekEntryResult!9926)

(assert (=> b!1194553 (= res!794895 (= (seekEntryOrOpen!0 (select (arr!37288 lt!542730) #b00000000000000000000000000000000) lt!542730 mask!1564) (Found!9926 #b00000000000000000000000000000000)))))

(assert (=> b!1194553 (=> (not res!794895) (not e!678898))))

(declare-fun d!132213 () Bool)

(declare-fun res!794894 () Bool)

(declare-fun e!678897 () Bool)

(assert (=> d!132213 (=> res!794894 e!678897)))

(assert (=> d!132213 (= res!794894 (bvsge #b00000000000000000000000000000000 (size!37825 lt!542730)))))

(assert (=> d!132213 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542730 mask!1564) e!678897)))

(declare-fun b!1194554 () Bool)

(assert (=> b!1194554 (= e!678897 e!678899)))

(declare-fun c!117268 () Bool)

(assert (=> b!1194554 (= c!117268 (validKeyInArray!0 (select (arr!37288 lt!542730) #b00000000000000000000000000000000)))))

(declare-fun b!1194555 () Bool)

(declare-fun call!57145 () Bool)

(assert (=> b!1194555 (= e!678898 call!57145)))

(declare-fun b!1194556 () Bool)

(assert (=> b!1194556 (= e!678899 call!57145)))

(declare-fun bm!57142 () Bool)

(assert (=> bm!57142 (= call!57145 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!542730 mask!1564))))

(assert (= (and d!132213 (not res!794894)) b!1194554))

(assert (= (and b!1194554 c!117268) b!1194553))

(assert (= (and b!1194554 (not c!117268)) b!1194556))

(assert (= (and b!1194553 res!794895) b!1194555))

(assert (= (or b!1194555 b!1194556) bm!57142))

(declare-fun m!1102455 () Bool)

(assert (=> b!1194553 m!1102455))

(declare-fun m!1102457 () Bool)

(assert (=> b!1194553 m!1102457))

(declare-fun m!1102459 () Bool)

(assert (=> b!1194553 m!1102459))

(assert (=> b!1194553 m!1102455))

(declare-fun m!1102461 () Bool)

(assert (=> b!1194553 m!1102461))

(assert (=> b!1194554 m!1102455))

(assert (=> b!1194554 m!1102455))

(declare-fun m!1102463 () Bool)

(assert (=> b!1194554 m!1102463))

(declare-fun m!1102465 () Bool)

(assert (=> bm!57142 m!1102465))

(assert (=> b!1194502 d!132213))

(declare-fun b!1194567 () Bool)

(declare-fun e!678909 () Bool)

(declare-fun contains!6881 (List!26423 (_ BitVec 64)) Bool)

(assert (=> b!1194567 (= e!678909 (contains!6881 Nil!26420 (select (arr!37288 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1194568 () Bool)

(declare-fun e!678908 () Bool)

(declare-fun e!678910 () Bool)

(assert (=> b!1194568 (= e!678908 e!678910)))

(declare-fun c!117271 () Bool)

(assert (=> b!1194568 (= c!117271 (validKeyInArray!0 (select (arr!37288 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1194569 () Bool)

(declare-fun e!678911 () Bool)

(assert (=> b!1194569 (= e!678911 e!678908)))

(declare-fun res!794904 () Bool)

(assert (=> b!1194569 (=> (not res!794904) (not e!678908))))

(assert (=> b!1194569 (= res!794904 (not e!678909))))

(declare-fun res!794903 () Bool)

(assert (=> b!1194569 (=> (not res!794903) (not e!678909))))

(assert (=> b!1194569 (= res!794903 (validKeyInArray!0 (select (arr!37288 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!132215 () Bool)

(declare-fun res!794902 () Bool)

(assert (=> d!132215 (=> res!794902 e!678911)))

(assert (=> d!132215 (= res!794902 (bvsge #b00000000000000000000000000000000 (size!37825 _keys!1208)))))

(assert (=> d!132215 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26420) e!678911)))

(declare-fun bm!57145 () Bool)

(declare-fun call!57148 () Bool)

(assert (=> bm!57145 (= call!57148 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!117271 (Cons!26419 (select (arr!37288 _keys!1208) #b00000000000000000000000000000000) Nil!26420) Nil!26420)))))

(declare-fun b!1194570 () Bool)

(assert (=> b!1194570 (= e!678910 call!57148)))

(declare-fun b!1194571 () Bool)

(assert (=> b!1194571 (= e!678910 call!57148)))

(assert (= (and d!132215 (not res!794902)) b!1194569))

(assert (= (and b!1194569 res!794903) b!1194567))

(assert (= (and b!1194569 res!794904) b!1194568))

(assert (= (and b!1194568 c!117271) b!1194571))

(assert (= (and b!1194568 (not c!117271)) b!1194570))

(assert (= (or b!1194571 b!1194570) bm!57145))

(declare-fun m!1102467 () Bool)

(assert (=> b!1194567 m!1102467))

(assert (=> b!1194567 m!1102467))

(declare-fun m!1102469 () Bool)

(assert (=> b!1194567 m!1102469))

(assert (=> b!1194568 m!1102467))

(assert (=> b!1194568 m!1102467))

(declare-fun m!1102471 () Bool)

(assert (=> b!1194568 m!1102471))

(assert (=> b!1194569 m!1102467))

(assert (=> b!1194569 m!1102467))

(assert (=> b!1194569 m!1102471))

(assert (=> bm!57145 m!1102467))

(declare-fun m!1102473 () Bool)

(assert (=> bm!57145 m!1102473))

(assert (=> b!1194494 d!132215))

(declare-fun b!1194572 () Bool)

(declare-fun e!678914 () Bool)

(declare-fun e!678913 () Bool)

(assert (=> b!1194572 (= e!678914 e!678913)))

(declare-fun lt!542745 () (_ BitVec 64))

(assert (=> b!1194572 (= lt!542745 (select (arr!37288 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!542744 () Unit!39546)

(assert (=> b!1194572 (= lt!542744 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!542745 #b00000000000000000000000000000000))))

(assert (=> b!1194572 (arrayContainsKey!0 _keys!1208 lt!542745 #b00000000000000000000000000000000)))

(declare-fun lt!542743 () Unit!39546)

(assert (=> b!1194572 (= lt!542743 lt!542744)))

(declare-fun res!794906 () Bool)

(assert (=> b!1194572 (= res!794906 (= (seekEntryOrOpen!0 (select (arr!37288 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9926 #b00000000000000000000000000000000)))))

(assert (=> b!1194572 (=> (not res!794906) (not e!678913))))

(declare-fun d!132217 () Bool)

(declare-fun res!794905 () Bool)

(declare-fun e!678912 () Bool)

(assert (=> d!132217 (=> res!794905 e!678912)))

(assert (=> d!132217 (= res!794905 (bvsge #b00000000000000000000000000000000 (size!37825 _keys!1208)))))

(assert (=> d!132217 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!678912)))

(declare-fun b!1194573 () Bool)

(assert (=> b!1194573 (= e!678912 e!678914)))

(declare-fun c!117272 () Bool)

(assert (=> b!1194573 (= c!117272 (validKeyInArray!0 (select (arr!37288 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1194574 () Bool)

(declare-fun call!57149 () Bool)

(assert (=> b!1194574 (= e!678913 call!57149)))

(declare-fun b!1194575 () Bool)

(assert (=> b!1194575 (= e!678914 call!57149)))

(declare-fun bm!57146 () Bool)

(assert (=> bm!57146 (= call!57149 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(assert (= (and d!132217 (not res!794905)) b!1194573))

(assert (= (and b!1194573 c!117272) b!1194572))

(assert (= (and b!1194573 (not c!117272)) b!1194575))

(assert (= (and b!1194572 res!794906) b!1194574))

(assert (= (or b!1194574 b!1194575) bm!57146))

(assert (=> b!1194572 m!1102467))

(declare-fun m!1102475 () Bool)

(assert (=> b!1194572 m!1102475))

(declare-fun m!1102477 () Bool)

(assert (=> b!1194572 m!1102477))

(assert (=> b!1194572 m!1102467))

(declare-fun m!1102479 () Bool)

(assert (=> b!1194572 m!1102479))

(assert (=> b!1194573 m!1102467))

(assert (=> b!1194573 m!1102467))

(assert (=> b!1194573 m!1102471))

(declare-fun m!1102481 () Bool)

(assert (=> bm!57146 m!1102481))

(assert (=> b!1194492 d!132217))

(declare-fun d!132219 () Bool)

(declare-fun res!794911 () Bool)

(declare-fun e!678919 () Bool)

(assert (=> d!132219 (=> res!794911 e!678919)))

(assert (=> d!132219 (= res!794911 (= (select (arr!37288 _keys!1208) i!673) k0!934))))

(assert (=> d!132219 (= (arrayContainsKey!0 _keys!1208 k0!934 i!673) e!678919)))

(declare-fun b!1194580 () Bool)

(declare-fun e!678920 () Bool)

(assert (=> b!1194580 (= e!678919 e!678920)))

(declare-fun res!794912 () Bool)

(assert (=> b!1194580 (=> (not res!794912) (not e!678920))))

(assert (=> b!1194580 (= res!794912 (bvslt (bvadd i!673 #b00000000000000000000000000000001) (size!37825 _keys!1208)))))

(declare-fun b!1194581 () Bool)

(assert (=> b!1194581 (= e!678920 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd i!673 #b00000000000000000000000000000001)))))

(assert (= (and d!132219 (not res!794911)) b!1194580))

(assert (= (and b!1194580 res!794912) b!1194581))

(assert (=> d!132219 m!1102425))

(declare-fun m!1102483 () Bool)

(assert (=> b!1194581 m!1102483))

(assert (=> b!1194493 d!132219))

(declare-fun b!1194582 () Bool)

(declare-fun e!678922 () Bool)

(assert (=> b!1194582 (= e!678922 (contains!6881 Nil!26420 (select (arr!37288 lt!542730) #b00000000000000000000000000000000)))))

(declare-fun b!1194583 () Bool)

(declare-fun e!678921 () Bool)

(declare-fun e!678923 () Bool)

(assert (=> b!1194583 (= e!678921 e!678923)))

(declare-fun c!117273 () Bool)

(assert (=> b!1194583 (= c!117273 (validKeyInArray!0 (select (arr!37288 lt!542730) #b00000000000000000000000000000000)))))

(declare-fun b!1194584 () Bool)

(declare-fun e!678924 () Bool)

(assert (=> b!1194584 (= e!678924 e!678921)))

(declare-fun res!794915 () Bool)

(assert (=> b!1194584 (=> (not res!794915) (not e!678921))))

(assert (=> b!1194584 (= res!794915 (not e!678922))))

(declare-fun res!794914 () Bool)

(assert (=> b!1194584 (=> (not res!794914) (not e!678922))))

(assert (=> b!1194584 (= res!794914 (validKeyInArray!0 (select (arr!37288 lt!542730) #b00000000000000000000000000000000)))))

(declare-fun d!132221 () Bool)

(declare-fun res!794913 () Bool)

(assert (=> d!132221 (=> res!794913 e!678924)))

(assert (=> d!132221 (= res!794913 (bvsge #b00000000000000000000000000000000 (size!37825 lt!542730)))))

(assert (=> d!132221 (= (arrayNoDuplicates!0 lt!542730 #b00000000000000000000000000000000 Nil!26420) e!678924)))

(declare-fun bm!57147 () Bool)

(declare-fun call!57150 () Bool)

(assert (=> bm!57147 (= call!57150 (arrayNoDuplicates!0 lt!542730 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!117273 (Cons!26419 (select (arr!37288 lt!542730) #b00000000000000000000000000000000) Nil!26420) Nil!26420)))))

(declare-fun b!1194585 () Bool)

(assert (=> b!1194585 (= e!678923 call!57150)))

(declare-fun b!1194586 () Bool)

(assert (=> b!1194586 (= e!678923 call!57150)))

(assert (= (and d!132221 (not res!794913)) b!1194584))

(assert (= (and b!1194584 res!794914) b!1194582))

(assert (= (and b!1194584 res!794915) b!1194583))

(assert (= (and b!1194583 c!117273) b!1194586))

(assert (= (and b!1194583 (not c!117273)) b!1194585))

(assert (= (or b!1194586 b!1194585) bm!57147))

(assert (=> b!1194582 m!1102455))

(assert (=> b!1194582 m!1102455))

(declare-fun m!1102485 () Bool)

(assert (=> b!1194582 m!1102485))

(assert (=> b!1194583 m!1102455))

(assert (=> b!1194583 m!1102455))

(assert (=> b!1194583 m!1102463))

(assert (=> b!1194584 m!1102455))

(assert (=> b!1194584 m!1102455))

(assert (=> b!1194584 m!1102463))

(assert (=> bm!57147 m!1102455))

(declare-fun m!1102487 () Bool)

(assert (=> bm!57147 m!1102487))

(assert (=> b!1194497 d!132221))

(declare-fun b!1194593 () Bool)

(declare-fun e!678930 () Bool)

(assert (=> b!1194593 (= e!678930 tp_is_empty!30261)))

(declare-fun mapIsEmpty!47228 () Bool)

(declare-fun mapRes!47228 () Bool)

(assert (=> mapIsEmpty!47228 mapRes!47228))

(declare-fun condMapEmpty!47228 () Bool)

(declare-fun mapDefault!47228 () ValueCell!14421)

(assert (=> mapNonEmpty!47222 (= condMapEmpty!47228 (= mapRest!47222 ((as const (Array (_ BitVec 32) ValueCell!14421)) mapDefault!47228)))))

(declare-fun e!678929 () Bool)

(assert (=> mapNonEmpty!47222 (= tp!89833 (and e!678929 mapRes!47228))))

(declare-fun b!1194594 () Bool)

(assert (=> b!1194594 (= e!678929 tp_is_empty!30261)))

(declare-fun mapNonEmpty!47228 () Bool)

(declare-fun tp!89839 () Bool)

(assert (=> mapNonEmpty!47228 (= mapRes!47228 (and tp!89839 e!678930))))

(declare-fun mapValue!47228 () ValueCell!14421)

(declare-fun mapKey!47228 () (_ BitVec 32))

(declare-fun mapRest!47228 () (Array (_ BitVec 32) ValueCell!14421))

(assert (=> mapNonEmpty!47228 (= mapRest!47222 (store mapRest!47228 mapKey!47228 mapValue!47228))))

(assert (= (and mapNonEmpty!47222 condMapEmpty!47228) mapIsEmpty!47228))

(assert (= (and mapNonEmpty!47222 (not condMapEmpty!47228)) mapNonEmpty!47228))

(assert (= (and mapNonEmpty!47228 ((_ is ValueCellFull!14421) mapValue!47228)) b!1194593))

(assert (= (and mapNonEmpty!47222 ((_ is ValueCellFull!14421) mapDefault!47228)) b!1194594))

(declare-fun m!1102489 () Bool)

(assert (=> mapNonEmpty!47228 m!1102489))

(check-sat (not bm!57147) (not b!1194582) (not b!1194569) (not b!1194568) (not b!1194572) (not b!1194567) tp_is_empty!30261 (not bm!57145) (not b!1194581) (not mapNonEmpty!47228) (not b!1194553) (not bm!57146) (not b!1194584) (not bm!57142) (not b!1194554) (not b!1194573) (not b!1194583))
(check-sat)
