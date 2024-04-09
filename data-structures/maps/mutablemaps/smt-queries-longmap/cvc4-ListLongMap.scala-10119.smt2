; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119252 () Bool)

(assert start!119252)

(declare-fun b!1390516 () Bool)

(declare-fun res!930786 () Bool)

(declare-fun e!787471 () Bool)

(assert (=> b!1390516 (=> (not res!930786) (not e!787471))))

(declare-datatypes ((array!95107 0))(
  ( (array!95108 (arr!45915 (Array (_ BitVec 32) (_ BitVec 64))) (size!46466 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95107)

(declare-datatypes ((List!32614 0))(
  ( (Nil!32611) (Cons!32610 (h!33828 (_ BitVec 64)) (t!47315 List!32614)) )
))
(declare-fun arrayNoDuplicates!0 (array!95107 (_ BitVec 32) List!32614) Bool)

(assert (=> b!1390516 (= res!930786 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32611))))

(declare-fun b!1390517 () Bool)

(declare-fun res!930789 () Bool)

(assert (=> b!1390517 (=> (not res!930789) (not e!787471))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1390517 (= res!930789 (and (= (size!46466 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46466 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46466 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390518 () Bool)

(declare-fun res!930792 () Bool)

(assert (=> b!1390518 (=> (not res!930792) (not e!787471))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390518 (= res!930792 (validKeyInArray!0 (select (arr!45915 a!2901) i!1037)))))

(declare-fun b!1390519 () Bool)

(declare-datatypes ((SeekEntryResult!10254 0))(
  ( (MissingZero!10254 (index!43386 (_ BitVec 32))) (Found!10254 (index!43387 (_ BitVec 32))) (Intermediate!10254 (undefined!11066 Bool) (index!43388 (_ BitVec 32)) (x!125063 (_ BitVec 32))) (Undefined!10254) (MissingVacant!10254 (index!43389 (_ BitVec 32))) )
))
(declare-fun lt!610810 () SeekEntryResult!10254)

(assert (=> b!1390519 (= e!787471 (not (or (not (is-Intermediate!10254 lt!610810)) (undefined!11066 lt!610810) (bvslt mask!2840 #b00000000000000000000000000000000) (bvsle mask!2840 #b00111111111111111111111111111111))))))

(declare-fun e!787470 () Bool)

(assert (=> b!1390519 e!787470))

(declare-fun res!930788 () Bool)

(assert (=> b!1390519 (=> (not res!930788) (not e!787470))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95107 (_ BitVec 32)) Bool)

(assert (=> b!1390519 (= res!930788 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46462 0))(
  ( (Unit!46463) )
))
(declare-fun lt!610809 () Unit!46462)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95107 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46462)

(assert (=> b!1390519 (= lt!610809 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95107 (_ BitVec 32)) SeekEntryResult!10254)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390519 (= lt!610810 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45915 a!2901) j!112) mask!2840) (select (arr!45915 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390520 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95107 (_ BitVec 32)) SeekEntryResult!10254)

(assert (=> b!1390520 (= e!787470 (= (seekEntryOrOpen!0 (select (arr!45915 a!2901) j!112) a!2901 mask!2840) (Found!10254 j!112)))))

(declare-fun b!1390521 () Bool)

(declare-fun res!930790 () Bool)

(assert (=> b!1390521 (=> (not res!930790) (not e!787471))))

(assert (=> b!1390521 (= res!930790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!930787 () Bool)

(assert (=> start!119252 (=> (not res!930787) (not e!787471))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119252 (= res!930787 (validMask!0 mask!2840))))

(assert (=> start!119252 e!787471))

(assert (=> start!119252 true))

(declare-fun array_inv!34860 (array!95107) Bool)

(assert (=> start!119252 (array_inv!34860 a!2901)))

(declare-fun b!1390522 () Bool)

(declare-fun res!930791 () Bool)

(assert (=> b!1390522 (=> (not res!930791) (not e!787471))))

(assert (=> b!1390522 (= res!930791 (validKeyInArray!0 (select (arr!45915 a!2901) j!112)))))

(assert (= (and start!119252 res!930787) b!1390517))

(assert (= (and b!1390517 res!930789) b!1390518))

(assert (= (and b!1390518 res!930792) b!1390522))

(assert (= (and b!1390522 res!930791) b!1390521))

(assert (= (and b!1390521 res!930790) b!1390516))

(assert (= (and b!1390516 res!930786) b!1390519))

(assert (= (and b!1390519 res!930788) b!1390520))

(declare-fun m!1276461 () Bool)

(assert (=> b!1390521 m!1276461))

(declare-fun m!1276463 () Bool)

(assert (=> b!1390518 m!1276463))

(assert (=> b!1390518 m!1276463))

(declare-fun m!1276465 () Bool)

(assert (=> b!1390518 m!1276465))

(declare-fun m!1276467 () Bool)

(assert (=> start!119252 m!1276467))

(declare-fun m!1276469 () Bool)

(assert (=> start!119252 m!1276469))

(declare-fun m!1276471 () Bool)

(assert (=> b!1390519 m!1276471))

(declare-fun m!1276473 () Bool)

(assert (=> b!1390519 m!1276473))

(assert (=> b!1390519 m!1276471))

(declare-fun m!1276475 () Bool)

(assert (=> b!1390519 m!1276475))

(assert (=> b!1390519 m!1276473))

(assert (=> b!1390519 m!1276471))

(declare-fun m!1276477 () Bool)

(assert (=> b!1390519 m!1276477))

(declare-fun m!1276479 () Bool)

(assert (=> b!1390519 m!1276479))

(assert (=> b!1390522 m!1276471))

(assert (=> b!1390522 m!1276471))

(declare-fun m!1276481 () Bool)

(assert (=> b!1390522 m!1276481))

(assert (=> b!1390520 m!1276471))

(assert (=> b!1390520 m!1276471))

(declare-fun m!1276483 () Bool)

(assert (=> b!1390520 m!1276483))

(declare-fun m!1276485 () Bool)

(assert (=> b!1390516 m!1276485))

(push 1)

(assert (not start!119252))

(assert (not b!1390518))

(assert (not b!1390519))

(assert (not b!1390520))

(assert (not b!1390522))

(assert (not b!1390516))

(assert (not b!1390521))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1390543 () Bool)

(declare-fun e!787486 () Bool)

(declare-fun e!787487 () Bool)

(assert (=> b!1390543 (= e!787486 e!787487)))

(declare-fun lt!610823 () (_ BitVec 64))

(assert (=> b!1390543 (= lt!610823 (select (arr!45915 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!610825 () Unit!46462)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95107 (_ BitVec 64) (_ BitVec 32)) Unit!46462)

(assert (=> b!1390543 (= lt!610825 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!610823 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!95107 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1390543 (arrayContainsKey!0 a!2901 lt!610823 #b00000000000000000000000000000000)))

(declare-fun lt!610824 () Unit!46462)

(assert (=> b!1390543 (= lt!610824 lt!610825)))

(declare-fun res!930798 () Bool)

(assert (=> b!1390543 (= res!930798 (= (seekEntryOrOpen!0 (select (arr!45915 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10254 #b00000000000000000000000000000000)))))

(assert (=> b!1390543 (=> (not res!930798) (not e!787487))))

(declare-fun bm!66696 () Bool)

(declare-fun call!66699 () Bool)

(assert (=> bm!66696 (= call!66699 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1390544 () Bool)

(assert (=> b!1390544 (= e!787486 call!66699)))

(declare-fun d!150135 () Bool)

(declare-fun res!930797 () Bool)

(declare-fun e!787485 () Bool)

(assert (=> d!150135 (=> res!930797 e!787485)))

(assert (=> d!150135 (= res!930797 (bvsge #b00000000000000000000000000000000 (size!46466 a!2901)))))

(assert (=> d!150135 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!787485)))

(declare-fun b!1390545 () Bool)

(assert (=> b!1390545 (= e!787485 e!787486)))

(declare-fun c!129320 () Bool)

(assert (=> b!1390545 (= c!129320 (validKeyInArray!0 (select (arr!45915 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1390546 () Bool)

(assert (=> b!1390546 (= e!787487 call!66699)))

(assert (= (and d!150135 (not res!930797)) b!1390545))

(assert (= (and b!1390545 c!129320) b!1390543))

(assert (= (and b!1390545 (not c!129320)) b!1390544))

(assert (= (and b!1390543 res!930798) b!1390546))

(assert (= (or b!1390546 b!1390544) bm!66696))

(declare-fun m!1276487 () Bool)

(assert (=> b!1390543 m!1276487))

(declare-fun m!1276489 () Bool)

(assert (=> b!1390543 m!1276489))

(declare-fun m!1276491 () Bool)

(assert (=> b!1390543 m!1276491))

(assert (=> b!1390543 m!1276487))

(declare-fun m!1276493 () Bool)

(assert (=> b!1390543 m!1276493))

(declare-fun m!1276495 () Bool)

(assert (=> bm!66696 m!1276495))

(assert (=> b!1390545 m!1276487))

(assert (=> b!1390545 m!1276487))

(declare-fun m!1276497 () Bool)

(assert (=> b!1390545 m!1276497))

(assert (=> b!1390521 d!150135))

(declare-fun b!1390607 () Bool)

(declare-fun c!129347 () Bool)

(declare-fun lt!610867 () (_ BitVec 64))

(assert (=> b!1390607 (= c!129347 (= lt!610867 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!787525 () SeekEntryResult!10254)

(declare-fun e!787524 () SeekEntryResult!10254)

(assert (=> b!1390607 (= e!787525 e!787524)))

(declare-fun b!1390608 () Bool)

(declare-fun lt!610866 () SeekEntryResult!10254)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95107 (_ BitVec 32)) SeekEntryResult!10254)

(assert (=> b!1390608 (= e!787524 (seekKeyOrZeroReturnVacant!0 (x!125063 lt!610866) (index!43388 lt!610866) (index!43388 lt!610866) (select (arr!45915 a!2901) j!112) a!2901 mask!2840))))

(declare-fun d!150137 () Bool)

(declare-fun lt!610865 () SeekEntryResult!10254)

(assert (=> d!150137 (and (or (is-Undefined!10254 lt!610865) (not (is-Found!10254 lt!610865)) (and (bvsge (index!43387 lt!610865) #b00000000000000000000000000000000) (bvslt (index!43387 lt!610865) (size!46466 a!2901)))) (or (is-Undefined!10254 lt!610865) (is-Found!10254 lt!610865) (not (is-MissingZero!10254 lt!610865)) (and (bvsge (index!43386 lt!610865) #b00000000000000000000000000000000) (bvslt (index!43386 lt!610865) (size!46466 a!2901)))) (or (is-Undefined!10254 lt!610865) (is-Found!10254 lt!610865) (is-MissingZero!10254 lt!610865) (not (is-MissingVacant!10254 lt!610865)) (and (bvsge (index!43389 lt!610865) #b00000000000000000000000000000000) (bvslt (index!43389 lt!610865) (size!46466 a!2901)))) (or (is-Undefined!10254 lt!610865) (ite (is-Found!10254 lt!610865) (= (select (arr!45915 a!2901) (index!43387 lt!610865)) (select (arr!45915 a!2901) j!112)) (ite (is-MissingZero!10254 lt!610865) (= (select (arr!45915 a!2901) (index!43386 lt!610865)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10254 lt!610865) (= (select (arr!45915 a!2901) (index!43389 lt!610865)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!787526 () SeekEntryResult!10254)

(assert (=> d!150137 (= lt!610865 e!787526)))

(declare-fun c!129345 () Bool)

(assert (=> d!150137 (= c!129345 (and (is-Intermediate!10254 lt!610866) (undefined!11066 lt!610866)))))

(assert (=> d!150137 (= lt!610866 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45915 a!2901) j!112) mask!2840) (select (arr!45915 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150137 (validMask!0 mask!2840)))

(assert (=> d!150137 (= (seekEntryOrOpen!0 (select (arr!45915 a!2901) j!112) a!2901 mask!2840) lt!610865)))

(declare-fun b!1390609 () Bool)

(assert (=> b!1390609 (= e!787526 Undefined!10254)))

(declare-fun b!1390610 () Bool)

(assert (=> b!1390610 (= e!787524 (MissingZero!10254 (index!43388 lt!610866)))))

(declare-fun b!1390611 () Bool)

(assert (=> b!1390611 (= e!787525 (Found!10254 (index!43388 lt!610866)))))

(declare-fun b!1390612 () Bool)

(assert (=> b!1390612 (= e!787526 e!787525)))

(assert (=> b!1390612 (= lt!610867 (select (arr!45915 a!2901) (index!43388 lt!610866)))))

(declare-fun c!129346 () Bool)

(assert (=> b!1390612 (= c!129346 (= lt!610867 (select (arr!45915 a!2901) j!112)))))

(assert (= (and d!150137 c!129345) b!1390609))

(assert (= (and d!150137 (not c!129345)) b!1390612))

(assert (= (and b!1390612 c!129346) b!1390611))

(assert (= (and b!1390612 (not c!129346)) b!1390607))

(assert (= (and b!1390607 c!129347) b!1390610))

(assert (= (and b!1390607 (not c!129347)) b!1390608))

(assert (=> b!1390608 m!1276471))

(declare-fun m!1276533 () Bool)

(assert (=> b!1390608 m!1276533))

(declare-fun m!1276535 () Bool)

(assert (=> d!150137 m!1276535))

(declare-fun m!1276537 () Bool)

(assert (=> d!150137 m!1276537))

(declare-fun m!1276539 () Bool)

(assert (=> d!150137 m!1276539))

(assert (=> d!150137 m!1276467))

(assert (=> d!150137 m!1276471))

(assert (=> d!150137 m!1276473))

(assert (=> d!150137 m!1276473))

(assert (=> d!150137 m!1276471))

(assert (=> d!150137 m!1276477))

(declare-fun m!1276541 () Bool)

(assert (=> b!1390612 m!1276541))

(assert (=> b!1390520 d!150137))

(declare-fun d!150149 () Bool)

(assert (=> d!150149 (= (validKeyInArray!0 (select (arr!45915 a!2901) j!112)) (and (not (= (select (arr!45915 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45915 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1390522 d!150149))

(declare-fun bm!66705 () Bool)

(declare-fun call!66708 () Bool)

(declare-fun c!129350 () Bool)

(assert (=> bm!66705 (= call!66708 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129350 (Cons!32610 (select (arr!45915 a!2901) #b00000000000000000000000000000000) Nil!32611) Nil!32611)))))

(declare-fun d!150151 () Bool)

(declare-fun res!930817 () Bool)

(declare-fun e!787535 () Bool)

(assert (=> d!150151 (=> res!930817 e!787535)))

(assert (=> d!150151 (= res!930817 (bvsge #b00000000000000000000000000000000 (size!46466 a!2901)))))

(assert (=> d!150151 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32611) e!787535)))

(declare-fun b!1390623 () Bool)

(declare-fun e!787538 () Bool)

(declare-fun e!787536 () Bool)

(assert (=> b!1390623 (= e!787538 e!787536)))

(assert (=> b!1390623 (= c!129350 (validKeyInArray!0 (select (arr!45915 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1390624 () Bool)

(assert (=> b!1390624 (= e!787536 call!66708)))

(declare-fun b!1390625 () Bool)

(assert (=> b!1390625 (= e!787535 e!787538)))

(declare-fun res!930819 () Bool)

(assert (=> b!1390625 (=> (not res!930819) (not e!787538))))

(declare-fun e!787537 () Bool)

(assert (=> b!1390625 (= res!930819 (not e!787537))))

(declare-fun res!930818 () Bool)

(assert (=> b!1390625 (=> (not res!930818) (not e!787537))))

(assert (=> b!1390625 (= res!930818 (validKeyInArray!0 (select (arr!45915 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1390626 () Bool)

(declare-fun contains!9774 (List!32614 (_ BitVec 64)) Bool)

(assert (=> b!1390626 (= e!787537 (contains!9774 Nil!32611 (select (arr!45915 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1390627 () Bool)

(assert (=> b!1390627 (= e!787536 call!66708)))

(assert (= (and d!150151 (not res!930817)) b!1390625))

(assert (= (and b!1390625 res!930818) b!1390626))

(assert (= (and b!1390625 res!930819) b!1390623))

(assert (= (and b!1390623 c!129350) b!1390624))

(assert (= (and b!1390623 (not c!129350)) b!1390627))

(assert (= (or b!1390624 b!1390627) bm!66705))

(assert (=> bm!66705 m!1276487))

(declare-fun m!1276545 () Bool)

(assert (=> bm!66705 m!1276545))

(assert (=> b!1390623 m!1276487))

(assert (=> b!1390623 m!1276487))

(assert (=> b!1390623 m!1276497))

(assert (=> b!1390625 m!1276487))

(assert (=> b!1390625 m!1276487))

(assert (=> b!1390625 m!1276497))

(assert (=> b!1390626 m!1276487))

(assert (=> b!1390626 m!1276487))

(declare-fun m!1276547 () Bool)

(assert (=> b!1390626 m!1276547))

(assert (=> b!1390516 d!150151))

(declare-fun d!150155 () Bool)

(assert (=> d!150155 (= (validKeyInArray!0 (select (arr!45915 a!2901) i!1037)) (and (not (= (select (arr!45915 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45915 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1390518 d!150155))

(declare-fun d!150157 () Bool)

(assert (=> d!150157 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119252 d!150157))

(declare-fun d!150159 () Bool)

(assert (=> d!150159 (= (array_inv!34860 a!2901) (bvsge (size!46466 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119252 d!150159))

(declare-fun b!1390673 () Bool)

(declare-fun e!787565 () Bool)

(declare-fun e!787566 () Bool)

(assert (=> b!1390673 (= e!787565 e!787566)))

(declare-fun lt!610881 () (_ BitVec 64))

(assert (=> b!1390673 (= lt!610881 (select (arr!45915 a!2901) j!112))))

(declare-fun lt!610883 () Unit!46462)

(assert (=> b!1390673 (= lt!610883 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!610881 j!112))))

(assert (=> b!1390673 (arrayContainsKey!0 a!2901 lt!610881 #b00000000000000000000000000000000)))

(declare-fun lt!610882 () Unit!46462)

(assert (=> b!1390673 (= lt!610882 lt!610883)))

(declare-fun res!930836 () Bool)

(assert (=> b!1390673 (= res!930836 (= (seekEntryOrOpen!0 (select (arr!45915 a!2901) j!112) a!2901 mask!2840) (Found!10254 j!112)))))

(assert (=> b!1390673 (=> (not res!930836) (not e!787566))))

(declare-fun call!66709 () Bool)

(declare-fun bm!66706 () Bool)

(assert (=> bm!66706 (= call!66709 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1390674 () Bool)

(assert (=> b!1390674 (= e!787565 call!66709)))

(declare-fun d!150163 () Bool)

(declare-fun res!930835 () Bool)

(declare-fun e!787564 () Bool)

(assert (=> d!150163 (=> res!930835 e!787564)))

(assert (=> d!150163 (= res!930835 (bvsge j!112 (size!46466 a!2901)))))

(assert (=> d!150163 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!787564)))

(declare-fun b!1390675 () Bool)

(assert (=> b!1390675 (= e!787564 e!787565)))

(declare-fun c!129366 () Bool)

(assert (=> b!1390675 (= c!129366 (validKeyInArray!0 (select (arr!45915 a!2901) j!112)))))

(declare-fun b!1390676 () Bool)

(assert (=> b!1390676 (= e!787566 call!66709)))

(assert (= (and d!150163 (not res!930835)) b!1390675))

(assert (= (and b!1390675 c!129366) b!1390673))

(assert (= (and b!1390675 (not c!129366)) b!1390674))

(assert (= (and b!1390673 res!930836) b!1390676))

(assert (= (or b!1390676 b!1390674) bm!66706))

(assert (=> b!1390673 m!1276471))

(declare-fun m!1276557 () Bool)

(assert (=> b!1390673 m!1276557))

(declare-fun m!1276559 () Bool)

(assert (=> b!1390673 m!1276559))

(assert (=> b!1390673 m!1276471))

(assert (=> b!1390673 m!1276483))

(declare-fun m!1276561 () Bool)

(assert (=> bm!66706 m!1276561))

(assert (=> b!1390675 m!1276471))

(assert (=> b!1390675 m!1276471))

(assert (=> b!1390675 m!1276481))

(assert (=> b!1390519 d!150163))

(declare-fun d!150165 () Bool)

(assert (=> d!150165 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!610894 () Unit!46462)

(declare-fun choose!38 (array!95107 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46462)

(assert (=> d!150165 (= lt!610894 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150165 (validMask!0 mask!2840)))

(assert (=> d!150165 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!610894)))

(declare-fun bs!40450 () Bool)

(assert (= bs!40450 d!150165))

(assert (=> bs!40450 m!1276479))

