; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129920 () Bool)

(assert start!129920)

(declare-fun b!1524383 () Bool)

(declare-fun res!1043178 () Bool)

(declare-fun e!849785 () Bool)

(assert (=> b!1524383 (=> (not res!1043178) (not e!849785))))

(declare-datatypes ((array!101386 0))(
  ( (array!101387 (arr!48918 (Array (_ BitVec 32) (_ BitVec 64))) (size!49469 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101386)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1524383 (= res!1043178 (validKeyInArray!0 (select (arr!48918 a!2804) j!70)))))

(declare-fun b!1524384 () Bool)

(declare-fun res!1043175 () Bool)

(assert (=> b!1524384 (=> (not res!1043175) (not e!849785))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1524384 (= res!1043175 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49469 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49469 a!2804))))))

(declare-fun b!1524385 () Bool)

(declare-fun res!1043174 () Bool)

(assert (=> b!1524385 (=> (not res!1043174) (not e!849785))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101386 (_ BitVec 32)) Bool)

(assert (=> b!1524385 (= res!1043174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1043183 () Bool)

(assert (=> start!129920 (=> (not res!1043183) (not e!849785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129920 (= res!1043183 (validMask!0 mask!2512))))

(assert (=> start!129920 e!849785))

(assert (=> start!129920 true))

(declare-fun array_inv!37863 (array!101386) Bool)

(assert (=> start!129920 (array_inv!37863 a!2804)))

(declare-fun b!1524386 () Bool)

(declare-fun res!1043180 () Bool)

(declare-fun e!849783 () Bool)

(assert (=> b!1524386 (=> (not res!1043180) (not e!849783))))

(declare-fun i!961 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13104 0))(
  ( (MissingZero!13104 (index!54810 (_ BitVec 32))) (Found!13104 (index!54811 (_ BitVec 32))) (Intermediate!13104 (undefined!13916 Bool) (index!54812 (_ BitVec 32)) (x!136503 (_ BitVec 32))) (Undefined!13104) (MissingVacant!13104 (index!54813 (_ BitVec 32))) )
))
(declare-fun lt!660255 () SeekEntryResult!13104)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101386 (_ BitVec 32)) SeekEntryResult!13104)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1524386 (= res!1043180 (= lt!660255 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101387 (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49469 a!2804)) mask!2512)))))

(declare-fun b!1524387 () Bool)

(declare-fun res!1043184 () Bool)

(assert (=> b!1524387 (=> (not res!1043184) (not e!849785))))

(declare-datatypes ((List!35581 0))(
  ( (Nil!35578) (Cons!35577 (h!37005 (_ BitVec 64)) (t!50282 List!35581)) )
))
(declare-fun arrayNoDuplicates!0 (array!101386 (_ BitVec 32) List!35581) Bool)

(assert (=> b!1524387 (= res!1043184 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35578))))

(declare-fun b!1524388 () Bool)

(declare-fun res!1043181 () Bool)

(assert (=> b!1524388 (=> (not res!1043181) (not e!849785))))

(assert (=> b!1524388 (= res!1043181 (and (= (size!49469 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49469 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49469 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1524389 () Bool)

(declare-fun e!849781 () Bool)

(assert (=> b!1524389 (= e!849783 (not e!849781))))

(declare-fun res!1043173 () Bool)

(assert (=> b!1524389 (=> res!1043173 e!849781)))

(assert (=> b!1524389 (= res!1043173 (or (not (= (select (arr!48918 a!2804) j!70) (select (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48918 a!2804) index!487) (select (arr!48918 a!2804) j!70)) (not (= (select (arr!48918 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!849784 () Bool)

(assert (=> b!1524389 e!849784))

(declare-fun res!1043179 () Bool)

(assert (=> b!1524389 (=> (not res!1043179) (not e!849784))))

(assert (=> b!1524389 (= res!1043179 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50948 0))(
  ( (Unit!50949) )
))
(declare-fun lt!660254 () Unit!50948)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101386 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50948)

(assert (=> b!1524389 (= lt!660254 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1524390 () Bool)

(declare-fun res!1043182 () Bool)

(assert (=> b!1524390 (=> (not res!1043182) (not e!849783))))

(declare-fun lt!660256 () SeekEntryResult!13104)

(assert (=> b!1524390 (= res!1043182 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48918 a!2804) j!70) a!2804 mask!2512) lt!660256))))

(declare-fun b!1524391 () Bool)

(declare-fun res!1043177 () Bool)

(assert (=> b!1524391 (=> (not res!1043177) (not e!849785))))

(assert (=> b!1524391 (= res!1043177 (validKeyInArray!0 (select (arr!48918 a!2804) i!961)))))

(declare-fun b!1524392 () Bool)

(assert (=> b!1524392 (= e!849785 e!849783)))

(declare-fun res!1043176 () Bool)

(assert (=> b!1524392 (=> (not res!1043176) (not e!849783))))

(assert (=> b!1524392 (= res!1043176 (= lt!660255 lt!660256))))

(assert (=> b!1524392 (= lt!660256 (Intermediate!13104 false resIndex!21 resX!21))))

(assert (=> b!1524392 (= lt!660255 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48918 a!2804) j!70) mask!2512) (select (arr!48918 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524393 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101386 (_ BitVec 32)) SeekEntryResult!13104)

(assert (=> b!1524393 (= e!849784 (= (seekEntry!0 (select (arr!48918 a!2804) j!70) a!2804 mask!2512) (Found!13104 j!70)))))

(declare-fun b!1524394 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101386 (_ BitVec 32)) SeekEntryResult!13104)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101386 (_ BitVec 32)) SeekEntryResult!13104)

(assert (=> b!1524394 (= e!849781 (= (seekEntryOrOpen!0 (select (arr!48918 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48918 a!2804) j!70) a!2804 mask!2512)))))

(assert (= (and start!129920 res!1043183) b!1524388))

(assert (= (and b!1524388 res!1043181) b!1524391))

(assert (= (and b!1524391 res!1043177) b!1524383))

(assert (= (and b!1524383 res!1043178) b!1524385))

(assert (= (and b!1524385 res!1043174) b!1524387))

(assert (= (and b!1524387 res!1043184) b!1524384))

(assert (= (and b!1524384 res!1043175) b!1524392))

(assert (= (and b!1524392 res!1043176) b!1524390))

(assert (= (and b!1524390 res!1043182) b!1524386))

(assert (= (and b!1524386 res!1043180) b!1524389))

(assert (= (and b!1524389 res!1043179) b!1524393))

(assert (= (and b!1524389 (not res!1043173)) b!1524394))

(declare-fun m!1407489 () Bool)

(assert (=> b!1524390 m!1407489))

(assert (=> b!1524390 m!1407489))

(declare-fun m!1407491 () Bool)

(assert (=> b!1524390 m!1407491))

(assert (=> b!1524392 m!1407489))

(assert (=> b!1524392 m!1407489))

(declare-fun m!1407493 () Bool)

(assert (=> b!1524392 m!1407493))

(assert (=> b!1524392 m!1407493))

(assert (=> b!1524392 m!1407489))

(declare-fun m!1407495 () Bool)

(assert (=> b!1524392 m!1407495))

(declare-fun m!1407497 () Bool)

(assert (=> b!1524387 m!1407497))

(declare-fun m!1407499 () Bool)

(assert (=> start!129920 m!1407499))

(declare-fun m!1407501 () Bool)

(assert (=> start!129920 m!1407501))

(assert (=> b!1524383 m!1407489))

(assert (=> b!1524383 m!1407489))

(declare-fun m!1407503 () Bool)

(assert (=> b!1524383 m!1407503))

(declare-fun m!1407505 () Bool)

(assert (=> b!1524386 m!1407505))

(declare-fun m!1407507 () Bool)

(assert (=> b!1524386 m!1407507))

(assert (=> b!1524386 m!1407507))

(declare-fun m!1407509 () Bool)

(assert (=> b!1524386 m!1407509))

(assert (=> b!1524386 m!1407509))

(assert (=> b!1524386 m!1407507))

(declare-fun m!1407511 () Bool)

(assert (=> b!1524386 m!1407511))

(declare-fun m!1407513 () Bool)

(assert (=> b!1524385 m!1407513))

(assert (=> b!1524394 m!1407489))

(assert (=> b!1524394 m!1407489))

(declare-fun m!1407515 () Bool)

(assert (=> b!1524394 m!1407515))

(assert (=> b!1524394 m!1407489))

(declare-fun m!1407517 () Bool)

(assert (=> b!1524394 m!1407517))

(assert (=> b!1524393 m!1407489))

(assert (=> b!1524393 m!1407489))

(declare-fun m!1407519 () Bool)

(assert (=> b!1524393 m!1407519))

(declare-fun m!1407521 () Bool)

(assert (=> b!1524391 m!1407521))

(assert (=> b!1524391 m!1407521))

(declare-fun m!1407523 () Bool)

(assert (=> b!1524391 m!1407523))

(assert (=> b!1524389 m!1407489))

(declare-fun m!1407525 () Bool)

(assert (=> b!1524389 m!1407525))

(assert (=> b!1524389 m!1407505))

(declare-fun m!1407527 () Bool)

(assert (=> b!1524389 m!1407527))

(assert (=> b!1524389 m!1407507))

(declare-fun m!1407529 () Bool)

(assert (=> b!1524389 m!1407529))

(push 1)

(assert (not b!1524393))

(assert (not b!1524389))

(assert (not b!1524392))

(assert (not b!1524390))

(assert (not b!1524391))

(assert (not start!129920))

(assert (not b!1524387))

(assert (not b!1524383))

(assert (not b!1524394))

(assert (not b!1524386))

(assert (not b!1524385))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1524498 () Bool)

(declare-fun lt!660299 () SeekEntryResult!13104)

(assert (=> b!1524498 (and (bvsge (index!54812 lt!660299) #b00000000000000000000000000000000) (bvslt (index!54812 lt!660299) (size!49469 a!2804)))))

(declare-fun e!849853 () Bool)

(assert (=> b!1524498 (= e!849853 (= (select (arr!48918 a!2804) (index!54812 lt!660299)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!159283 () Bool)

(declare-fun e!849851 () Bool)

(assert (=> d!159283 e!849851))

(declare-fun c!140193 () Bool)

(assert (=> d!159283 (= c!140193 (and (is-Intermediate!13104 lt!660299) (undefined!13916 lt!660299)))))

(declare-fun e!849852 () SeekEntryResult!13104)

(assert (=> d!159283 (= lt!660299 e!849852)))

(declare-fun c!140192 () Bool)

(assert (=> d!159283 (= c!140192 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!660300 () (_ BitVec 64))

(assert (=> d!159283 (= lt!660300 (select (arr!48918 a!2804) index!487))))

(assert (=> d!159283 (validMask!0 mask!2512)))

(assert (=> d!159283 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48918 a!2804) j!70) a!2804 mask!2512) lt!660299)))

(declare-fun b!1524499 () Bool)

(assert (=> b!1524499 (= e!849851 (bvsge (x!136503 lt!660299) #b01111111111111111111111111111110))))

(declare-fun b!1524500 () Bool)

(assert (=> b!1524500 (and (bvsge (index!54812 lt!660299) #b00000000000000000000000000000000) (bvslt (index!54812 lt!660299) (size!49469 a!2804)))))

(declare-fun res!1043222 () Bool)

(assert (=> b!1524500 (= res!1043222 (= (select (arr!48918 a!2804) (index!54812 lt!660299)) (select (arr!48918 a!2804) j!70)))))

(assert (=> b!1524500 (=> res!1043222 e!849853)))

(declare-fun e!849850 () Bool)

(assert (=> b!1524500 (= e!849850 e!849853)))

(declare-fun b!1524501 () Bool)

(assert (=> b!1524501 (and (bvsge (index!54812 lt!660299) #b00000000000000000000000000000000) (bvslt (index!54812 lt!660299) (size!49469 a!2804)))))

(declare-fun res!1043223 () Bool)

(assert (=> b!1524501 (= res!1043223 (= (select (arr!48918 a!2804) (index!54812 lt!660299)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1524501 (=> res!1043223 e!849853)))

(declare-fun b!1524502 () Bool)

(assert (=> b!1524502 (= e!849852 (Intermediate!13104 true index!487 x!534))))

(declare-fun e!849849 () SeekEntryResult!13104)

(declare-fun b!1524503 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1524503 (= e!849849 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48918 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524504 () Bool)

(assert (=> b!1524504 (= e!849849 (Intermediate!13104 false index!487 x!534))))

(declare-fun b!1524505 () Bool)

(assert (=> b!1524505 (= e!849852 e!849849)))

(declare-fun c!140191 () Bool)

(assert (=> b!1524505 (= c!140191 (or (= lt!660300 (select (arr!48918 a!2804) j!70)) (= (bvadd lt!660300 lt!660300) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1524506 () Bool)

(assert (=> b!1524506 (= e!849851 e!849850)))

(declare-fun res!1043221 () Bool)

(assert (=> b!1524506 (= res!1043221 (and (is-Intermediate!13104 lt!660299) (not (undefined!13916 lt!660299)) (bvslt (x!136503 lt!660299) #b01111111111111111111111111111110) (bvsge (x!136503 lt!660299) #b00000000000000000000000000000000) (bvsge (x!136503 lt!660299) x!534)))))

(assert (=> b!1524506 (=> (not res!1043221) (not e!849850))))

(assert (= (and d!159283 c!140192) b!1524502))

(assert (= (and d!159283 (not c!140192)) b!1524505))

(assert (= (and b!1524505 c!140191) b!1524504))

(assert (= (and b!1524505 (not c!140191)) b!1524503))

(assert (= (and d!159283 c!140193) b!1524499))

(assert (= (and d!159283 (not c!140193)) b!1524506))

(assert (= (and b!1524506 res!1043221) b!1524500))

(assert (= (and b!1524500 (not res!1043222)) b!1524501))

(assert (= (and b!1524501 (not res!1043223)) b!1524498))

(assert (=> d!159283 m!1407527))

(assert (=> d!159283 m!1407499))

(declare-fun m!1407579 () Bool)

(assert (=> b!1524498 m!1407579))

(declare-fun m!1407583 () Bool)

(assert (=> b!1524503 m!1407583))

(assert (=> b!1524503 m!1407583))

(assert (=> b!1524503 m!1407489))

(declare-fun m!1407585 () Bool)

(assert (=> b!1524503 m!1407585))

(assert (=> b!1524500 m!1407579))

(assert (=> b!1524501 m!1407579))

(assert (=> b!1524390 d!159283))

(declare-fun b!1524530 () Bool)

(declare-fun e!849874 () Bool)

(declare-fun e!849872 () Bool)

(assert (=> b!1524530 (= e!849874 e!849872)))

(declare-fun lt!660311 () (_ BitVec 64))

(assert (=> b!1524530 (= lt!660311 (select (arr!48918 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!660309 () Unit!50948)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101386 (_ BitVec 64) (_ BitVec 32)) Unit!50948)

(assert (=> b!1524530 (= lt!660309 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!660311 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101386 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1524530 (arrayContainsKey!0 a!2804 lt!660311 #b00000000000000000000000000000000)))

(declare-fun lt!660310 () Unit!50948)

(assert (=> b!1524530 (= lt!660310 lt!660309)))

(declare-fun res!1043237 () Bool)

(assert (=> b!1524530 (= res!1043237 (= (seekEntryOrOpen!0 (select (arr!48918 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13104 #b00000000000000000000000000000000)))))

(assert (=> b!1524530 (=> (not res!1043237) (not e!849872))))

(declare-fun b!1524531 () Bool)

(declare-fun call!68437 () Bool)

(assert (=> b!1524531 (= e!849874 call!68437)))

(declare-fun d!159297 () Bool)

(declare-fun res!1043238 () Bool)

(declare-fun e!849873 () Bool)

(assert (=> d!159297 (=> res!1043238 e!849873)))

(assert (=> d!159297 (= res!1043238 (bvsge #b00000000000000000000000000000000 (size!49469 a!2804)))))

(assert (=> d!159297 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!849873)))

(declare-fun b!1524532 () Bool)

(assert (=> b!1524532 (= e!849872 call!68437)))

(declare-fun b!1524533 () Bool)

(assert (=> b!1524533 (= e!849873 e!849874)))

(declare-fun c!140199 () Bool)

(assert (=> b!1524533 (= c!140199 (validKeyInArray!0 (select (arr!48918 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68434 () Bool)

(assert (=> bm!68434 (= call!68437 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(assert (= (and d!159297 (not res!1043238)) b!1524533))

(assert (= (and b!1524533 c!140199) b!1524530))

(assert (= (and b!1524533 (not c!140199)) b!1524531))

(assert (= (and b!1524530 res!1043237) b!1524532))

(assert (= (or b!1524532 b!1524531) bm!68434))

(declare-fun m!1407595 () Bool)

(assert (=> b!1524530 m!1407595))

(declare-fun m!1407597 () Bool)

(assert (=> b!1524530 m!1407597))

(declare-fun m!1407599 () Bool)

(assert (=> b!1524530 m!1407599))

(assert (=> b!1524530 m!1407595))

(declare-fun m!1407601 () Bool)

(assert (=> b!1524530 m!1407601))

(assert (=> b!1524533 m!1407595))

(assert (=> b!1524533 m!1407595))

(declare-fun m!1407603 () Bool)

(assert (=> b!1524533 m!1407603))

(declare-fun m!1407605 () Bool)

(assert (=> bm!68434 m!1407605))

(assert (=> b!1524385 d!159297))

(declare-fun d!159307 () Bool)

(assert (=> d!159307 (= (validKeyInArray!0 (select (arr!48918 a!2804) i!961)) (and (not (= (select (arr!48918 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48918 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1524391 d!159307))

(declare-fun b!1524546 () Bool)

(declare-fun lt!660316 () SeekEntryResult!13104)

(assert (=> b!1524546 (and (bvsge (index!54812 lt!660316) #b00000000000000000000000000000000) (bvslt (index!54812 lt!660316) (size!49469 (array!101387 (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49469 a!2804)))))))

(declare-fun e!849885 () Bool)

(assert (=> b!1524546 (= e!849885 (= (select (arr!48918 (array!101387 (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49469 a!2804))) (index!54812 lt!660316)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!159309 () Bool)

(declare-fun e!849883 () Bool)

(assert (=> d!159309 e!849883))

(declare-fun c!140208 () Bool)

(assert (=> d!159309 (= c!140208 (and (is-Intermediate!13104 lt!660316) (undefined!13916 lt!660316)))))

(declare-fun e!849884 () SeekEntryResult!13104)

(assert (=> d!159309 (= lt!660316 e!849884)))

(declare-fun c!140207 () Bool)

(assert (=> d!159309 (= c!140207 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!660317 () (_ BitVec 64))

(assert (=> d!159309 (= lt!660317 (select (arr!48918 (array!101387 (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49469 a!2804))) (toIndex!0 (select (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!159309 (validMask!0 mask!2512)))

(assert (=> d!159309 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101387 (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49469 a!2804)) mask!2512) lt!660316)))

(declare-fun b!1524547 () Bool)

(assert (=> b!1524547 (= e!849883 (bvsge (x!136503 lt!660316) #b01111111111111111111111111111110))))

(declare-fun b!1524548 () Bool)

(assert (=> b!1524548 (and (bvsge (index!54812 lt!660316) #b00000000000000000000000000000000) (bvslt (index!54812 lt!660316) (size!49469 (array!101387 (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49469 a!2804)))))))

(declare-fun res!1043240 () Bool)

(assert (=> b!1524548 (= res!1043240 (= (select (arr!48918 (array!101387 (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49469 a!2804))) (index!54812 lt!660316)) (select (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(assert (=> b!1524548 (=> res!1043240 e!849885)))

(declare-fun e!849882 () Bool)

(assert (=> b!1524548 (= e!849882 e!849885)))

(declare-fun b!1524549 () Bool)

(assert (=> b!1524549 (and (bvsge (index!54812 lt!660316) #b00000000000000000000000000000000) (bvslt (index!54812 lt!660316) (size!49469 (array!101387 (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49469 a!2804)))))))

(declare-fun res!1043241 () Bool)

(assert (=> b!1524549 (= res!1043241 (= (select (arr!48918 (array!101387 (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49469 a!2804))) (index!54812 lt!660316)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1524549 (=> res!1043241 e!849885)))

(declare-fun b!1524550 () Bool)

(assert (=> b!1524550 (= e!849884 (Intermediate!13104 true (toIndex!0 (select (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun e!849881 () SeekEntryResult!13104)

(declare-fun b!1524551 () Bool)

(assert (=> b!1524551 (= e!849881 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101387 (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49469 a!2804)) mask!2512))))

(declare-fun b!1524552 () Bool)

(assert (=> b!1524552 (= e!849881 (Intermediate!13104 false (toIndex!0 (select (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1524553 () Bool)

(assert (=> b!1524553 (= e!849884 e!849881)))

(declare-fun c!140206 () Bool)

(assert (=> b!1524553 (= c!140206 (or (= lt!660317 (select (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!660317 lt!660317) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1524554 () Bool)

(assert (=> b!1524554 (= e!849883 e!849882)))

(declare-fun res!1043239 () Bool)

(assert (=> b!1524554 (= res!1043239 (and (is-Intermediate!13104 lt!660316) (not (undefined!13916 lt!660316)) (bvslt (x!136503 lt!660316) #b01111111111111111111111111111110) (bvsge (x!136503 lt!660316) #b00000000000000000000000000000000) (bvsge (x!136503 lt!660316) #b00000000000000000000000000000000)))))

(assert (=> b!1524554 (=> (not res!1043239) (not e!849882))))

(assert (= (and d!159309 c!140207) b!1524550))

(assert (= (and d!159309 (not c!140207)) b!1524553))

(assert (= (and b!1524553 c!140206) b!1524552))

(assert (= (and b!1524553 (not c!140206)) b!1524551))

(assert (= (and d!159309 c!140208) b!1524547))

(assert (= (and d!159309 (not c!140208)) b!1524554))

(assert (= (and b!1524554 res!1043239) b!1524548))

(assert (= (and b!1524548 (not res!1043240)) b!1524549))

(assert (= (and b!1524549 (not res!1043241)) b!1524546))

(assert (=> d!159309 m!1407509))

(declare-fun m!1407607 () Bool)

(assert (=> d!159309 m!1407607))

(assert (=> d!159309 m!1407499))

(declare-fun m!1407609 () Bool)

(assert (=> b!1524546 m!1407609))

(assert (=> b!1524551 m!1407509))

(declare-fun m!1407611 () Bool)

(assert (=> b!1524551 m!1407611))

(assert (=> b!1524551 m!1407611))

(assert (=> b!1524551 m!1407507))

(declare-fun m!1407613 () Bool)

(assert (=> b!1524551 m!1407613))

(assert (=> b!1524548 m!1407609))

(assert (=> b!1524549 m!1407609))

(assert (=> b!1524386 d!159309))

(declare-fun d!159311 () Bool)

(declare-fun lt!660325 () (_ BitVec 32))

(declare-fun lt!660324 () (_ BitVec 32))

(assert (=> d!159311 (= lt!660325 (bvmul (bvxor lt!660324 (bvlshr lt!660324 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159311 (= lt!660324 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159311 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1043242 (let ((h!37007 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136508 (bvmul (bvxor h!37007 (bvlshr h!37007 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136508 (bvlshr x!136508 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1043242 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1043242 #b00000000000000000000000000000000))))))

(assert (=> d!159311 (= (toIndex!0 (select (store (arr!48918 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!660325 (bvlshr lt!660325 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1524386 d!159311))

(declare-fun b!1524561 () Bool)

(declare-fun lt!660326 () SeekEntryResult!13104)

(assert (=> b!1524561 (and (bvsge (index!54812 lt!660326) #b00000000000000000000000000000000) (bvslt (index!54812 lt!660326) (size!49469 a!2804)))))

(declare-fun e!849893 () Bool)

(assert (=> b!1524561 (= e!849893 (= (select (arr!48918 a!2804) (index!54812 lt!660326)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!159315 () Bool)

(declare-fun e!849891 () Bool)

(assert (=> d!159315 e!849891))

(declare-fun c!140214 () Bool)

(assert (=> d!159315 (= c!140214 (and (is-Intermediate!13104 lt!660326) (undefined!13916 lt!660326)))))

(declare-fun e!849892 () SeekEntryResult!13104)

(assert (=> d!159315 (= lt!660326 e!849892)))

(declare-fun c!140213 () Bool)

(assert (=> d!159315 (= c!140213 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!660327 () (_ BitVec 64))

(assert (=> d!159315 (= lt!660327 (select (arr!48918 a!2804) (toIndex!0 (select (arr!48918 a!2804) j!70) mask!2512)))))

(assert (=> d!159315 (validMask!0 mask!2512)))

(assert (=> d!159315 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48918 a!2804) j!70) mask!2512) (select (arr!48918 a!2804) j!70) a!2804 mask!2512) lt!660326)))

(declare-fun b!1524562 () Bool)

(assert (=> b!1524562 (= e!849891 (bvsge (x!136503 lt!660326) #b01111111111111111111111111111110))))

(declare-fun b!1524563 () Bool)

(assert (=> b!1524563 (and (bvsge (index!54812 lt!660326) #b00000000000000000000000000000000) (bvslt (index!54812 lt!660326) (size!49469 a!2804)))))

(declare-fun res!1043244 () Bool)

(assert (=> b!1524563 (= res!1043244 (= (select (arr!48918 a!2804) (index!54812 lt!660326)) (select (arr!48918 a!2804) j!70)))))

(assert (=> b!1524563 (=> res!1043244 e!849893)))

(declare-fun e!849890 () Bool)

(assert (=> b!1524563 (= e!849890 e!849893)))

(declare-fun b!1524564 () Bool)

(assert (=> b!1524564 (and (bvsge (index!54812 lt!660326) #b00000000000000000000000000000000) (bvslt (index!54812 lt!660326) (size!49469 a!2804)))))

(declare-fun res!1043245 () Bool)

(assert (=> b!1524564 (= res!1043245 (= (select (arr!48918 a!2804) (index!54812 lt!660326)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1524564 (=> res!1043245 e!849893)))

(declare-fun b!1524565 () Bool)

(assert (=> b!1524565 (= e!849892 (Intermediate!13104 true (toIndex!0 (select (arr!48918 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun e!849889 () SeekEntryResult!13104)

(declare-fun b!1524566 () Bool)

(assert (=> b!1524566 (= e!849889 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48918 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48918 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524567 () Bool)

(assert (=> b!1524567 (= e!849889 (Intermediate!13104 false (toIndex!0 (select (arr!48918 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1524568 () Bool)

(assert (=> b!1524568 (= e!849892 e!849889)))

(declare-fun c!140212 () Bool)

(assert (=> b!1524568 (= c!140212 (or (= lt!660327 (select (arr!48918 a!2804) j!70)) (= (bvadd lt!660327 lt!660327) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1524569 () Bool)

(assert (=> b!1524569 (= e!849891 e!849890)))

(declare-fun res!1043243 () Bool)

(assert (=> b!1524569 (= res!1043243 (and (is-Intermediate!13104 lt!660326) (not (undefined!13916 lt!660326)) (bvslt (x!136503 lt!660326) #b01111111111111111111111111111110) (bvsge (x!136503 lt!660326) #b00000000000000000000000000000000) (bvsge (x!136503 lt!660326) #b00000000000000000000000000000000)))))

(assert (=> b!1524569 (=> (not res!1043243) (not e!849890))))

(assert (= (and d!159315 c!140213) b!1524565))

(assert (= (and d!159315 (not c!140213)) b!1524568))

(assert (= (and b!1524568 c!140212) b!1524567))

(assert (= (and b!1524568 (not c!140212)) b!1524566))

(assert (= (and d!159315 c!140214) b!1524562))

(assert (= (and d!159315 (not c!140214)) b!1524569))

(assert (= (and b!1524569 res!1043243) b!1524563))

(assert (= (and b!1524563 (not res!1043244)) b!1524564))

(assert (= (and b!1524564 (not res!1043245)) b!1524561))

(assert (=> d!159315 m!1407493))

(declare-fun m!1407623 () Bool)

(assert (=> d!159315 m!1407623))

(assert (=> d!159315 m!1407499))

(declare-fun m!1407625 () Bool)

(assert (=> b!1524561 m!1407625))

(assert (=> b!1524566 m!1407493))

(declare-fun m!1407627 () Bool)

(assert (=> b!1524566 m!1407627))

(assert (=> b!1524566 m!1407627))

(assert (=> b!1524566 m!1407489))

(declare-fun m!1407629 () Bool)

(assert (=> b!1524566 m!1407629))

(assert (=> b!1524563 m!1407625))

(assert (=> b!1524564 m!1407625))

(assert (=> b!1524392 d!159315))

(declare-fun d!159317 () Bool)

(declare-fun lt!660335 () (_ BitVec 32))

(declare-fun lt!660334 () (_ BitVec 32))

(assert (=> d!159317 (= lt!660335 (bvmul (bvxor lt!660334 (bvlshr lt!660334 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159317 (= lt!660334 ((_ extract 31 0) (bvand (bvxor (select (arr!48918 a!2804) j!70) (bvlshr (select (arr!48918 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159317 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1043242 (let ((h!37007 ((_ extract 31 0) (bvand (bvxor (select (arr!48918 a!2804) j!70) (bvlshr (select (arr!48918 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136508 (bvmul (bvxor h!37007 (bvlshr h!37007 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136508 (bvlshr x!136508 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1043242 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1043242 #b00000000000000000000000000000000))))))

(assert (=> d!159317 (= (toIndex!0 (select (arr!48918 a!2804) j!70) mask!2512) (bvand (bvxor lt!660335 (bvlshr lt!660335 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1524392 d!159317))

(declare-fun b!1524598 () Bool)

(declare-fun e!849911 () Bool)

(declare-fun e!849912 () Bool)

(assert (=> b!1524598 (= e!849911 e!849912)))

(declare-fun res!1043254 () Bool)

(assert (=> b!1524598 (=> (not res!1043254) (not e!849912))))

(declare-fun e!849914 () Bool)

(assert (=> b!1524598 (= res!1043254 (not e!849914))))

(declare-fun res!1043252 () Bool)

(assert (=> b!1524598 (=> (not res!1043252) (not e!849914))))

(assert (=> b!1524598 (= res!1043252 (validKeyInArray!0 (select (arr!48918 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1524599 () Bool)

(declare-fun e!849913 () Bool)

(declare-fun call!68440 () Bool)

(assert (=> b!1524599 (= e!849913 call!68440)))

(declare-fun bm!68437 () Bool)

(declare-fun c!140226 () Bool)

(assert (=> bm!68437 (= call!68440 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!140226 (Cons!35577 (select (arr!48918 a!2804) #b00000000000000000000000000000000) Nil!35578) Nil!35578)))))

(declare-fun d!159319 () Bool)

(declare-fun res!1043253 () Bool)

(assert (=> d!159319 (=> res!1043253 e!849911)))

(assert (=> d!159319 (= res!1043253 (bvsge #b00000000000000000000000000000000 (size!49469 a!2804)))))

(assert (=> d!159319 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35578) e!849911)))

(declare-fun b!1524600 () Bool)

(assert (=> b!1524600 (= e!849913 call!68440)))

(declare-fun b!1524601 () Bool)

