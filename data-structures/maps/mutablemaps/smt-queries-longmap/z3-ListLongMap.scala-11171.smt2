; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130602 () Bool)

(assert start!130602)

(declare-fun b!1532286 () Bool)

(declare-fun res!1049564 () Bool)

(declare-fun e!853762 () Bool)

(assert (=> b!1532286 (=> (not res!1049564) (not e!853762))))

(declare-datatypes ((array!101708 0))(
  ( (array!101709 (arr!49070 (Array (_ BitVec 32) (_ BitVec 64))) (size!49621 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101708)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101708 (_ BitVec 32)) Bool)

(assert (=> b!1532286 (= res!1049564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1049568 () Bool)

(assert (=> start!130602 (=> (not res!1049568) (not e!853762))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130602 (= res!1049568 (validMask!0 mask!2480))))

(assert (=> start!130602 e!853762))

(assert (=> start!130602 true))

(declare-fun array_inv!38015 (array!101708) Bool)

(assert (=> start!130602 (array_inv!38015 a!2792)))

(declare-fun b!1532287 () Bool)

(declare-fun res!1049565 () Bool)

(assert (=> b!1532287 (=> (not res!1049565) (not e!853762))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532287 (= res!1049565 (validKeyInArray!0 (select (arr!49070 a!2792) i!951)))))

(declare-fun b!1532288 () Bool)

(declare-fun res!1049567 () Bool)

(assert (=> b!1532288 (=> (not res!1049567) (not e!853762))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1532288 (= res!1049567 (and (= (size!49621 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49621 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49621 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532289 () Bool)

(declare-fun res!1049566 () Bool)

(assert (=> b!1532289 (=> (not res!1049566) (not e!853762))))

(assert (=> b!1532289 (= res!1049566 (validKeyInArray!0 (select (arr!49070 a!2792) j!64)))))

(declare-fun b!1532290 () Bool)

(assert (=> b!1532290 (= e!853762 (and (bvsle #b00000000000000000000000000000000 (size!49621 a!2792)) (bvsge (size!49621 a!2792) #b01111111111111111111111111111111)))))

(assert (= (and start!130602 res!1049568) b!1532288))

(assert (= (and b!1532288 res!1049567) b!1532287))

(assert (= (and b!1532287 res!1049565) b!1532289))

(assert (= (and b!1532289 res!1049566) b!1532286))

(assert (= (and b!1532286 res!1049564) b!1532290))

(declare-fun m!1415063 () Bool)

(assert (=> b!1532286 m!1415063))

(declare-fun m!1415065 () Bool)

(assert (=> start!130602 m!1415065))

(declare-fun m!1415067 () Bool)

(assert (=> start!130602 m!1415067))

(declare-fun m!1415069 () Bool)

(assert (=> b!1532287 m!1415069))

(assert (=> b!1532287 m!1415069))

(declare-fun m!1415071 () Bool)

(assert (=> b!1532287 m!1415071))

(declare-fun m!1415073 () Bool)

(assert (=> b!1532289 m!1415073))

(assert (=> b!1532289 m!1415073))

(declare-fun m!1415075 () Bool)

(assert (=> b!1532289 m!1415075))

(check-sat (not b!1532289) (not start!130602) (not b!1532286) (not b!1532287))
(check-sat)
(get-model)

(declare-fun d!159961 () Bool)

(assert (=> d!159961 (= (validKeyInArray!0 (select (arr!49070 a!2792) j!64)) (and (not (= (select (arr!49070 a!2792) j!64) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49070 a!2792) j!64) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1532289 d!159961))

(declare-fun d!159963 () Bool)

(assert (=> d!159963 (= (validMask!0 mask!2480) (and (or (= mask!2480 #b00000000000000000000000000000111) (= mask!2480 #b00000000000000000000000000001111) (= mask!2480 #b00000000000000000000000000011111) (= mask!2480 #b00000000000000000000000000111111) (= mask!2480 #b00000000000000000000000001111111) (= mask!2480 #b00000000000000000000000011111111) (= mask!2480 #b00000000000000000000000111111111) (= mask!2480 #b00000000000000000000001111111111) (= mask!2480 #b00000000000000000000011111111111) (= mask!2480 #b00000000000000000000111111111111) (= mask!2480 #b00000000000000000001111111111111) (= mask!2480 #b00000000000000000011111111111111) (= mask!2480 #b00000000000000000111111111111111) (= mask!2480 #b00000000000000001111111111111111) (= mask!2480 #b00000000000000011111111111111111) (= mask!2480 #b00000000000000111111111111111111) (= mask!2480 #b00000000000001111111111111111111) (= mask!2480 #b00000000000011111111111111111111) (= mask!2480 #b00000000000111111111111111111111) (= mask!2480 #b00000000001111111111111111111111) (= mask!2480 #b00000000011111111111111111111111) (= mask!2480 #b00000000111111111111111111111111) (= mask!2480 #b00000001111111111111111111111111) (= mask!2480 #b00000011111111111111111111111111) (= mask!2480 #b00000111111111111111111111111111) (= mask!2480 #b00001111111111111111111111111111) (= mask!2480 #b00011111111111111111111111111111) (= mask!2480 #b00111111111111111111111111111111)) (bvsle mask!2480 #b00111111111111111111111111111111)))))

(assert (=> start!130602 d!159963))

(declare-fun d!159971 () Bool)

(assert (=> d!159971 (= (array_inv!38015 a!2792) (bvsge (size!49621 a!2792) #b00000000000000000000000000000000))))

(assert (=> start!130602 d!159971))

(declare-fun d!159973 () Bool)

(declare-fun res!1049589 () Bool)

(declare-fun e!853777 () Bool)

(assert (=> d!159973 (=> res!1049589 e!853777)))

(assert (=> d!159973 (= res!1049589 (bvsge #b00000000000000000000000000000000 (size!49621 a!2792)))))

(assert (=> d!159973 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480) e!853777)))

(declare-fun b!1532314 () Bool)

(declare-fun e!853778 () Bool)

(assert (=> b!1532314 (= e!853777 e!853778)))

(declare-fun c!140924 () Bool)

(assert (=> b!1532314 (= c!140924 (validKeyInArray!0 (select (arr!49070 a!2792) #b00000000000000000000000000000000)))))

(declare-fun bm!68550 () Bool)

(declare-fun call!68553 () Bool)

(assert (=> bm!68550 (= call!68553 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2792 mask!2480))))

(declare-fun b!1532315 () Bool)

(declare-fun e!853776 () Bool)

(assert (=> b!1532315 (= e!853778 e!853776)))

(declare-fun lt!663567 () (_ BitVec 64))

(assert (=> b!1532315 (= lt!663567 (select (arr!49070 a!2792) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51238 0))(
  ( (Unit!51239) )
))
(declare-fun lt!663568 () Unit!51238)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101708 (_ BitVec 64) (_ BitVec 32)) Unit!51238)

(assert (=> b!1532315 (= lt!663568 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2792 lt!663567 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101708 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1532315 (arrayContainsKey!0 a!2792 lt!663567 #b00000000000000000000000000000000)))

(declare-fun lt!663566 () Unit!51238)

(assert (=> b!1532315 (= lt!663566 lt!663568)))

(declare-fun res!1049588 () Bool)

(declare-datatypes ((SeekEntryResult!13249 0))(
  ( (MissingZero!13249 (index!55390 (_ BitVec 32))) (Found!13249 (index!55391 (_ BitVec 32))) (Intermediate!13249 (undefined!14061 Bool) (index!55392 (_ BitVec 32)) (x!137110 (_ BitVec 32))) (Undefined!13249) (MissingVacant!13249 (index!55393 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101708 (_ BitVec 32)) SeekEntryResult!13249)

(assert (=> b!1532315 (= res!1049588 (= (seekEntryOrOpen!0 (select (arr!49070 a!2792) #b00000000000000000000000000000000) a!2792 mask!2480) (Found!13249 #b00000000000000000000000000000000)))))

(assert (=> b!1532315 (=> (not res!1049588) (not e!853776))))

(declare-fun b!1532316 () Bool)

(assert (=> b!1532316 (= e!853778 call!68553)))

(declare-fun b!1532317 () Bool)

(assert (=> b!1532317 (= e!853776 call!68553)))

(assert (= (and d!159973 (not res!1049589)) b!1532314))

(assert (= (and b!1532314 c!140924) b!1532315))

(assert (= (and b!1532314 (not c!140924)) b!1532316))

(assert (= (and b!1532315 res!1049588) b!1532317))

(assert (= (or b!1532317 b!1532316) bm!68550))

(declare-fun m!1415091 () Bool)

(assert (=> b!1532314 m!1415091))

(assert (=> b!1532314 m!1415091))

(declare-fun m!1415093 () Bool)

(assert (=> b!1532314 m!1415093))

(declare-fun m!1415095 () Bool)

(assert (=> bm!68550 m!1415095))

(assert (=> b!1532315 m!1415091))

(declare-fun m!1415097 () Bool)

(assert (=> b!1532315 m!1415097))

(declare-fun m!1415099 () Bool)

(assert (=> b!1532315 m!1415099))

(assert (=> b!1532315 m!1415091))

(declare-fun m!1415101 () Bool)

(assert (=> b!1532315 m!1415101))

(assert (=> b!1532286 d!159973))

(declare-fun d!159983 () Bool)

(assert (=> d!159983 (= (validKeyInArray!0 (select (arr!49070 a!2792) i!951)) (and (not (= (select (arr!49070 a!2792) i!951) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49070 a!2792) i!951) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1532287 d!159983))

(check-sat (not b!1532314) (not bm!68550) (not b!1532315))
(check-sat)
