; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71946 () Bool)

(assert start!71946)

(declare-fun res!568555 () Bool)

(declare-fun e!466150 () Bool)

(assert (=> start!71946 (=> (not res!568555) (not e!466150))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46800 0))(
  ( (array!46801 (arr!22430 (Array (_ BitVec 32) (_ BitVec 64))) (size!22851 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46800)

(assert (=> start!71946 (= res!568555 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22851 a!4227))))))

(assert (=> start!71946 e!466150))

(assert (=> start!71946 true))

(declare-fun array_inv!17853 (array!46800) Bool)

(assert (=> start!71946 (array_inv!17853 a!4227)))

(declare-fun bm!36712 () Bool)

(declare-fun to!390 () (_ BitVec 32))

(declare-fun call!36715 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46800 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36712 (= call!36715 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835553 () Bool)

(declare-fun res!568556 () Bool)

(assert (=> b!835553 (=> (not res!568556) (not e!466150))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835553 (= res!568556 (not (validKeyInArray!0 (select (arr!22430 a!4227) i!1466))))))

(declare-fun b!835554 () Bool)

(declare-fun e!466148 () Bool)

(assert (=> b!835554 (= e!466148 false)))

(declare-datatypes ((Unit!28738 0))(
  ( (Unit!28739) )
))
(declare-fun lt!379893 () Unit!28738)

(declare-fun e!466151 () Unit!28738)

(assert (=> b!835554 (= lt!379893 e!466151)))

(declare-fun c!90895 () Bool)

(assert (=> b!835554 (= c!90895 (validKeyInArray!0 (select (arr!22430 a!4227) to!390)))))

(declare-fun b!835555 () Bool)

(declare-fun lt!379892 () Unit!28738)

(assert (=> b!835555 (= e!466151 lt!379892)))

(declare-fun lt!379898 () Unit!28738)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46800 (_ BitVec 32) (_ BitVec 32)) Unit!28738)

(assert (=> b!835555 (= lt!379898 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!379895 () (_ BitVec 32))

(assert (=> b!835555 (= call!36715 (bvadd #b00000000000000000000000000000001 lt!379895))))

(declare-fun lt!379896 () array!46800)

(assert (=> b!835555 (= lt!379892 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379896 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36716 () (_ BitVec 32))

(declare-fun lt!379899 () (_ BitVec 32))

(assert (=> b!835555 (= call!36716 (bvadd #b00000000000000000000000000000001 lt!379899))))

(declare-fun b!835556 () Bool)

(declare-fun res!568558 () Bool)

(assert (=> b!835556 (=> (not res!568558) (not e!466150))))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!835556 (= res!568558 (validKeyInArray!0 k0!2968))))

(declare-fun b!835557 () Bool)

(assert (=> b!835557 (= e!466150 e!466148)))

(declare-fun res!568554 () Bool)

(assert (=> b!835557 (=> (not res!568554) (not e!466148))))

(assert (=> b!835557 (= res!568554 (and (= lt!379899 lt!379895) (not (= to!390 (size!22851 a!4227)))))))

(assert (=> b!835557 (= lt!379895 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835557 (= lt!379899 (arrayCountValidKeys!0 lt!379896 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835557 (= lt!379896 (array!46801 (store (arr!22430 a!4227) i!1466 k0!2968) (size!22851 a!4227)))))

(declare-fun b!835558 () Bool)

(declare-fun lt!379894 () Unit!28738)

(assert (=> b!835558 (= e!466151 lt!379894)))

(declare-fun lt!379897 () Unit!28738)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46800 (_ BitVec 32) (_ BitVec 32)) Unit!28738)

(assert (=> b!835558 (= lt!379897 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835558 (= call!36715 lt!379895)))

(assert (=> b!835558 (= lt!379894 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379896 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835558 (= call!36716 lt!379899)))

(declare-fun bm!36713 () Bool)

(assert (=> bm!36713 (= call!36716 (arrayCountValidKeys!0 lt!379896 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835559 () Bool)

(declare-fun res!568557 () Bool)

(assert (=> b!835559 (=> (not res!568557) (not e!466150))))

(assert (=> b!835559 (= res!568557 (and (bvslt (size!22851 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22851 a!4227)) (bvsgt to!390 i!1466)))))

(assert (= (and start!71946 res!568555) b!835553))

(assert (= (and b!835553 res!568556) b!835556))

(assert (= (and b!835556 res!568558) b!835559))

(assert (= (and b!835559 res!568557) b!835557))

(assert (= (and b!835557 res!568554) b!835554))

(assert (= (and b!835554 c!90895) b!835555))

(assert (= (and b!835554 (not c!90895)) b!835558))

(assert (= (or b!835555 b!835558) bm!36713))

(assert (= (or b!835555 b!835558) bm!36712))

(declare-fun m!780919 () Bool)

(assert (=> b!835557 m!780919))

(declare-fun m!780921 () Bool)

(assert (=> b!835557 m!780921))

(declare-fun m!780923 () Bool)

(assert (=> b!835557 m!780923))

(declare-fun m!780925 () Bool)

(assert (=> b!835556 m!780925))

(declare-fun m!780927 () Bool)

(assert (=> b!835558 m!780927))

(declare-fun m!780929 () Bool)

(assert (=> b!835558 m!780929))

(declare-fun m!780931 () Bool)

(assert (=> bm!36712 m!780931))

(declare-fun m!780933 () Bool)

(assert (=> b!835553 m!780933))

(assert (=> b!835553 m!780933))

(declare-fun m!780935 () Bool)

(assert (=> b!835553 m!780935))

(declare-fun m!780937 () Bool)

(assert (=> start!71946 m!780937))

(declare-fun m!780939 () Bool)

(assert (=> bm!36713 m!780939))

(declare-fun m!780941 () Bool)

(assert (=> b!835554 m!780941))

(assert (=> b!835554 m!780941))

(declare-fun m!780943 () Bool)

(assert (=> b!835554 m!780943))

(declare-fun m!780945 () Bool)

(assert (=> b!835555 m!780945))

(declare-fun m!780947 () Bool)

(assert (=> b!835555 m!780947))

(check-sat (not start!71946) (not b!835554) (not bm!36712) (not bm!36713) (not b!835558) (not b!835557) (not b!835556) (not b!835553) (not b!835555))
(check-sat)
