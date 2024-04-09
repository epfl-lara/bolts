; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71808 () Bool)

(assert start!71808)

(declare-fun b!834136 () Bool)

(declare-fun res!567340 () Bool)

(declare-fun e!465408 () Bool)

(assert (=> b!834136 (=> (not res!567340) (not e!465408))))

(declare-datatypes ((array!46662 0))(
  ( (array!46663 (arr!22361 (Array (_ BitVec 32) (_ BitVec 64))) (size!22782 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46662)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!834136 (= res!567340 (and (bvslt (size!22782 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22782 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834137 () Bool)

(declare-fun e!465410 () Bool)

(assert (=> b!834137 (= e!465410 false)))

(declare-fun lt!378841 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46662 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834137 (= lt!378841 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun lt!378848 () (_ BitVec 32))

(declare-fun lt!378846 () array!46662)

(assert (=> b!834137 (= lt!378848 (arrayCountValidKeys!0 lt!378846 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun call!36518 () (_ BitVec 32))

(declare-fun bm!36514 () Bool)

(declare-fun c!90796 () Bool)

(assert (=> bm!36514 (= call!36518 (arrayCountValidKeys!0 (ite c!90796 a!4227 lt!378846) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834139 () Bool)

(declare-datatypes ((Unit!28648 0))(
  ( (Unit!28649) )
))
(declare-fun e!465407 () Unit!28648)

(declare-fun lt!378849 () Unit!28648)

(assert (=> b!834139 (= e!465407 lt!378849)))

(declare-fun lt!378847 () Unit!28648)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46662 (_ BitVec 32) (_ BitVec 32)) Unit!28648)

(assert (=> b!834139 (= lt!378847 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36517 () (_ BitVec 32))

(declare-fun lt!378843 () (_ BitVec 32))

(assert (=> b!834139 (= call!36517 lt!378843)))

(assert (=> b!834139 (= lt!378849 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!378846 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!378840 () (_ BitVec 32))

(assert (=> b!834139 (= call!36518 lt!378840)))

(declare-fun b!834140 () Bool)

(declare-fun lt!378844 () Unit!28648)

(assert (=> b!834140 (= e!465407 lt!378844)))

(declare-fun lt!378845 () Unit!28648)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46662 (_ BitVec 32) (_ BitVec 32)) Unit!28648)

(assert (=> b!834140 (= lt!378845 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834140 (= call!36518 (bvadd #b00000000000000000000000000000001 lt!378843))))

(assert (=> b!834140 (= lt!378844 (lemmaValidKeyIncreasesNumOfKeys!0 lt!378846 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834140 (= call!36517 (bvadd #b00000000000000000000000000000001 lt!378840))))

(declare-fun b!834141 () Bool)

(declare-fun e!465409 () Bool)

(assert (=> b!834141 (= e!465408 e!465409)))

(declare-fun res!567338 () Bool)

(assert (=> b!834141 (=> (not res!567338) (not e!465409))))

(assert (=> b!834141 (= res!567338 (and (= lt!378840 lt!378843) (not (= to!390 (size!22782 a!4227)))))))

(assert (=> b!834141 (= lt!378843 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834141 (= lt!378840 (arrayCountValidKeys!0 lt!378846 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!834141 (= lt!378846 (array!46663 (store (arr!22361 a!4227) i!1466 k0!2968) (size!22782 a!4227)))))

(declare-fun b!834142 () Bool)

(declare-fun res!567335 () Bool)

(assert (=> b!834142 (=> (not res!567335) (not e!465408))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834142 (= res!567335 (not (validKeyInArray!0 (select (arr!22361 a!4227) i!1466))))))

(declare-fun b!834143 () Bool)

(assert (=> b!834143 (= e!465409 e!465410)))

(declare-fun res!567337 () Bool)

(assert (=> b!834143 (=> (not res!567337) (not e!465410))))

(assert (=> b!834143 (= res!567337 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22782 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!378842 () Unit!28648)

(assert (=> b!834143 (= lt!378842 e!465407)))

(assert (=> b!834143 (= c!90796 (validKeyInArray!0 (select (arr!22361 a!4227) to!390)))))

(declare-fun bm!36515 () Bool)

(assert (=> bm!36515 (= call!36517 (arrayCountValidKeys!0 (ite c!90796 lt!378846 a!4227) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun res!567339 () Bool)

(assert (=> start!71808 (=> (not res!567339) (not e!465408))))

(assert (=> start!71808 (= res!567339 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22782 a!4227))))))

(assert (=> start!71808 e!465408))

(assert (=> start!71808 true))

(declare-fun array_inv!17784 (array!46662) Bool)

(assert (=> start!71808 (array_inv!17784 a!4227)))

(declare-fun b!834138 () Bool)

(declare-fun res!567336 () Bool)

(assert (=> b!834138 (=> (not res!567336) (not e!465408))))

(assert (=> b!834138 (= res!567336 (validKeyInArray!0 k0!2968))))

(assert (= (and start!71808 res!567339) b!834142))

(assert (= (and b!834142 res!567335) b!834138))

(assert (= (and b!834138 res!567336) b!834136))

(assert (= (and b!834136 res!567340) b!834141))

(assert (= (and b!834141 res!567338) b!834143))

(assert (= (and b!834143 c!90796) b!834140))

(assert (= (and b!834143 (not c!90796)) b!834139))

(assert (= (or b!834140 b!834139) bm!36515))

(assert (= (or b!834140 b!834139) bm!36514))

(assert (= (and b!834143 res!567337) b!834137))

(declare-fun m!779189 () Bool)

(assert (=> bm!36515 m!779189))

(declare-fun m!779191 () Bool)

(assert (=> b!834142 m!779191))

(assert (=> b!834142 m!779191))

(declare-fun m!779193 () Bool)

(assert (=> b!834142 m!779193))

(declare-fun m!779195 () Bool)

(assert (=> b!834138 m!779195))

(declare-fun m!779197 () Bool)

(assert (=> b!834140 m!779197))

(declare-fun m!779199 () Bool)

(assert (=> b!834140 m!779199))

(declare-fun m!779201 () Bool)

(assert (=> start!71808 m!779201))

(declare-fun m!779203 () Bool)

(assert (=> b!834139 m!779203))

(declare-fun m!779205 () Bool)

(assert (=> b!834139 m!779205))

(declare-fun m!779207 () Bool)

(assert (=> b!834143 m!779207))

(assert (=> b!834143 m!779207))

(declare-fun m!779209 () Bool)

(assert (=> b!834143 m!779209))

(declare-fun m!779211 () Bool)

(assert (=> b!834137 m!779211))

(declare-fun m!779213 () Bool)

(assert (=> b!834137 m!779213))

(declare-fun m!779215 () Bool)

(assert (=> bm!36514 m!779215))

(declare-fun m!779217 () Bool)

(assert (=> b!834141 m!779217))

(declare-fun m!779219 () Bool)

(assert (=> b!834141 m!779219))

(declare-fun m!779221 () Bool)

(assert (=> b!834141 m!779221))

(check-sat (not b!834140) (not b!834138) (not b!834142) (not b!834143) (not start!71808) (not b!834137) (not bm!36514) (not b!834139) (not bm!36515) (not b!834141))
(check-sat)
