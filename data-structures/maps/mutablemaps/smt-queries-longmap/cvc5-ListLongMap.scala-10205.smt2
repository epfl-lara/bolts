; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120256 () Bool)

(assert start!120256)

(declare-fun b!1399255 () Bool)

(declare-fun res!938121 () Bool)

(declare-fun e!792196 () Bool)

(assert (=> b!1399255 (=> (not res!938121) (not e!792196))))

(declare-datatypes ((array!95646 0))(
  ( (array!95647 (arr!46171 (Array (_ BitVec 32) (_ BitVec 64))) (size!46722 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95646)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399255 (= res!938121 (validKeyInArray!0 (select (arr!46171 a!2901) j!112)))))

(declare-fun b!1399256 () Bool)

(declare-fun res!938120 () Bool)

(assert (=> b!1399256 (=> (not res!938120) (not e!792196))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95646 (_ BitVec 32)) Bool)

(assert (=> b!1399256 (= res!938120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1399257 () Bool)

(declare-fun e!792198 () Bool)

(assert (=> b!1399257 (= e!792198 (or (bvslt mask!2840 #b00000000000000000000000000000000) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(declare-fun e!792197 () Bool)

(assert (=> b!1399257 e!792197))

(declare-fun res!938117 () Bool)

(assert (=> b!1399257 (=> (not res!938117) (not e!792197))))

(declare-datatypes ((SeekEntryResult!10510 0))(
  ( (MissingZero!10510 (index!44413 (_ BitVec 32))) (Found!10510 (index!44414 (_ BitVec 32))) (Intermediate!10510 (undefined!11322 Bool) (index!44415 (_ BitVec 32)) (x!126064 (_ BitVec 32))) (Undefined!10510) (MissingVacant!10510 (index!44416 (_ BitVec 32))) )
))
(declare-fun lt!615428 () SeekEntryResult!10510)

(declare-fun lt!615430 () SeekEntryResult!10510)

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1399257 (= res!938117 (and (not (undefined!11322 lt!615428)) (= (index!44415 lt!615428) i!1037) (bvslt (x!126064 lt!615428) (x!126064 lt!615430)) (= (select (store (arr!46171 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44415 lt!615428)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!615431 () (_ BitVec 32))

(declare-datatypes ((Unit!46974 0))(
  ( (Unit!46975) )
))
(declare-fun lt!615429 () Unit!46974)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95646 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46974)

(assert (=> b!1399257 (= lt!615429 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615431 (x!126064 lt!615430) (index!44415 lt!615430) (x!126064 lt!615428) (index!44415 lt!615428) (undefined!11322 lt!615428) mask!2840))))

(declare-fun res!938116 () Bool)

(assert (=> start!120256 (=> (not res!938116) (not e!792196))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120256 (= res!938116 (validMask!0 mask!2840))))

(assert (=> start!120256 e!792196))

(assert (=> start!120256 true))

(declare-fun array_inv!35116 (array!95646) Bool)

(assert (=> start!120256 (array_inv!35116 a!2901)))

(declare-fun b!1399258 () Bool)

(declare-fun e!792195 () Bool)

(assert (=> b!1399258 (= e!792196 (not e!792195))))

(declare-fun res!938115 () Bool)

(assert (=> b!1399258 (=> res!938115 e!792195)))

(assert (=> b!1399258 (= res!938115 (or (not (is-Intermediate!10510 lt!615430)) (undefined!11322 lt!615430)))))

(declare-fun e!792199 () Bool)

(assert (=> b!1399258 e!792199))

(declare-fun res!938112 () Bool)

(assert (=> b!1399258 (=> (not res!938112) (not e!792199))))

(assert (=> b!1399258 (= res!938112 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!615427 () Unit!46974)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95646 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46974)

(assert (=> b!1399258 (= lt!615427 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95646 (_ BitVec 32)) SeekEntryResult!10510)

(assert (=> b!1399258 (= lt!615430 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615431 (select (arr!46171 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399258 (= lt!615431 (toIndex!0 (select (arr!46171 a!2901) j!112) mask!2840))))

(declare-fun b!1399259 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95646 (_ BitVec 32)) SeekEntryResult!10510)

(assert (=> b!1399259 (= e!792199 (= (seekEntryOrOpen!0 (select (arr!46171 a!2901) j!112) a!2901 mask!2840) (Found!10510 j!112)))))

(declare-fun b!1399260 () Bool)

(declare-fun res!938118 () Bool)

(assert (=> b!1399260 (=> (not res!938118) (not e!792196))))

(assert (=> b!1399260 (= res!938118 (validKeyInArray!0 (select (arr!46171 a!2901) i!1037)))))

(declare-fun b!1399261 () Bool)

(declare-fun res!938119 () Bool)

(assert (=> b!1399261 (=> (not res!938119) (not e!792196))))

(assert (=> b!1399261 (= res!938119 (and (= (size!46722 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46722 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46722 a!2901)) (not (= i!1037 j!112))))))

(declare-fun lt!615433 () (_ BitVec 64))

(declare-fun lt!615432 () array!95646)

(declare-fun b!1399262 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95646 (_ BitVec 32)) SeekEntryResult!10510)

(assert (=> b!1399262 (= e!792197 (= (seekEntryOrOpen!0 lt!615433 lt!615432 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126064 lt!615428) (index!44415 lt!615428) (index!44415 lt!615428) (select (arr!46171 a!2901) j!112) lt!615432 mask!2840)))))

(declare-fun b!1399263 () Bool)

(declare-fun res!938113 () Bool)

(assert (=> b!1399263 (=> (not res!938113) (not e!792196))))

(declare-datatypes ((List!32870 0))(
  ( (Nil!32867) (Cons!32866 (h!34111 (_ BitVec 64)) (t!47571 List!32870)) )
))
(declare-fun arrayNoDuplicates!0 (array!95646 (_ BitVec 32) List!32870) Bool)

(assert (=> b!1399263 (= res!938113 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32867))))

(declare-fun b!1399264 () Bool)

(assert (=> b!1399264 (= e!792195 e!792198)))

(declare-fun res!938114 () Bool)

(assert (=> b!1399264 (=> res!938114 e!792198)))

(assert (=> b!1399264 (= res!938114 (or (= lt!615430 lt!615428) (not (is-Intermediate!10510 lt!615428))))))

(assert (=> b!1399264 (= lt!615428 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615433 mask!2840) lt!615433 lt!615432 mask!2840))))

(assert (=> b!1399264 (= lt!615433 (select (store (arr!46171 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1399264 (= lt!615432 (array!95647 (store (arr!46171 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46722 a!2901)))))

(assert (= (and start!120256 res!938116) b!1399261))

(assert (= (and b!1399261 res!938119) b!1399260))

(assert (= (and b!1399260 res!938118) b!1399255))

(assert (= (and b!1399255 res!938121) b!1399256))

(assert (= (and b!1399256 res!938120) b!1399263))

(assert (= (and b!1399263 res!938113) b!1399258))

(assert (= (and b!1399258 res!938112) b!1399259))

(assert (= (and b!1399258 (not res!938115)) b!1399264))

(assert (= (and b!1399264 (not res!938114)) b!1399257))

(assert (= (and b!1399257 res!938117) b!1399262))

(declare-fun m!1286609 () Bool)

(assert (=> b!1399257 m!1286609))

(declare-fun m!1286611 () Bool)

(assert (=> b!1399257 m!1286611))

(declare-fun m!1286613 () Bool)

(assert (=> b!1399257 m!1286613))

(declare-fun m!1286615 () Bool)

(assert (=> b!1399256 m!1286615))

(declare-fun m!1286617 () Bool)

(assert (=> b!1399262 m!1286617))

(declare-fun m!1286619 () Bool)

(assert (=> b!1399262 m!1286619))

(assert (=> b!1399262 m!1286619))

(declare-fun m!1286621 () Bool)

(assert (=> b!1399262 m!1286621))

(assert (=> b!1399255 m!1286619))

(assert (=> b!1399255 m!1286619))

(declare-fun m!1286623 () Bool)

(assert (=> b!1399255 m!1286623))

(declare-fun m!1286625 () Bool)

(assert (=> start!120256 m!1286625))

(declare-fun m!1286627 () Bool)

(assert (=> start!120256 m!1286627))

(assert (=> b!1399258 m!1286619))

(declare-fun m!1286629 () Bool)

(assert (=> b!1399258 m!1286629))

(assert (=> b!1399258 m!1286619))

(assert (=> b!1399258 m!1286619))

(declare-fun m!1286631 () Bool)

(assert (=> b!1399258 m!1286631))

(declare-fun m!1286633 () Bool)

(assert (=> b!1399258 m!1286633))

(declare-fun m!1286635 () Bool)

(assert (=> b!1399258 m!1286635))

(assert (=> b!1399259 m!1286619))

(assert (=> b!1399259 m!1286619))

(declare-fun m!1286637 () Bool)

(assert (=> b!1399259 m!1286637))

(declare-fun m!1286639 () Bool)

(assert (=> b!1399263 m!1286639))

(declare-fun m!1286641 () Bool)

(assert (=> b!1399264 m!1286641))

(assert (=> b!1399264 m!1286641))

(declare-fun m!1286643 () Bool)

(assert (=> b!1399264 m!1286643))

(assert (=> b!1399264 m!1286609))

(declare-fun m!1286645 () Bool)

(assert (=> b!1399264 m!1286645))

(declare-fun m!1286647 () Bool)

(assert (=> b!1399260 m!1286647))

(assert (=> b!1399260 m!1286647))

(declare-fun m!1286649 () Bool)

(assert (=> b!1399260 m!1286649))

(push 1)

(assert (not b!1399259))

(assert (not b!1399258))

(assert (not b!1399262))

(assert (not b!1399257))

(assert (not b!1399264))

(assert (not b!1399260))

(assert (not b!1399263))

(assert (not b!1399256))

(assert (not b!1399255))

(assert (not start!120256))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!150971 () Bool)

(assert (=> d!150971 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!120256 d!150971))

(declare-fun d!150977 () Bool)

(assert (=> d!150977 (= (array_inv!35116 a!2901) (bvsge (size!46722 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!120256 d!150977))

(declare-fun b!1399348 () Bool)

(declare-fun e!792255 () Bool)

(declare-fun e!792257 () Bool)

(assert (=> b!1399348 (= e!792255 e!792257)))

(declare-fun lt!615483 () (_ BitVec 64))

(assert (=> b!1399348 (= lt!615483 (select (arr!46171 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!615484 () Unit!46974)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95646 (_ BitVec 64) (_ BitVec 32)) Unit!46974)

(assert (=> b!1399348 (= lt!615484 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!615483 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!95646 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1399348 (arrayContainsKey!0 a!2901 lt!615483 #b00000000000000000000000000000000)))

(declare-fun lt!615482 () Unit!46974)

(assert (=> b!1399348 (= lt!615482 lt!615484)))

(declare-fun res!938196 () Bool)

(assert (=> b!1399348 (= res!938196 (= (seekEntryOrOpen!0 (select (arr!46171 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10510 #b00000000000000000000000000000000)))))

(assert (=> b!1399348 (=> (not res!938196) (not e!792257))))

(declare-fun b!1399349 () Bool)

(declare-fun call!66891 () Bool)

(assert (=> b!1399349 (= e!792255 call!66891)))

(declare-fun b!1399350 () Bool)

(assert (=> b!1399350 (= e!792257 call!66891)))

(declare-fun b!1399351 () Bool)

(declare-fun e!792256 () Bool)

(assert (=> b!1399351 (= e!792256 e!792255)))

(declare-fun c!130037 () Bool)

(assert (=> b!1399351 (= c!130037 (validKeyInArray!0 (select (arr!46171 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!150979 () Bool)

(declare-fun res!938195 () Bool)

(assert (=> d!150979 (=> res!938195 e!792256)))

(assert (=> d!150979 (= res!938195 (bvsge #b00000000000000000000000000000000 (size!46722 a!2901)))))

(assert (=> d!150979 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!792256)))

(declare-fun bm!66888 () Bool)

(assert (=> bm!66888 (= call!66891 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!150979 (not res!938195)) b!1399351))

(assert (= (and b!1399351 c!130037) b!1399348))

(assert (= (and b!1399351 (not c!130037)) b!1399349))

(assert (= (and b!1399348 res!938196) b!1399350))

(assert (= (or b!1399350 b!1399349) bm!66888))

(declare-fun m!1286743 () Bool)

(assert (=> b!1399348 m!1286743))

(declare-fun m!1286745 () Bool)

(assert (=> b!1399348 m!1286745))

(declare-fun m!1286747 () Bool)

(assert (=> b!1399348 m!1286747))

(assert (=> b!1399348 m!1286743))

(declare-fun m!1286749 () Bool)

(assert (=> b!1399348 m!1286749))

(assert (=> b!1399351 m!1286743))

(assert (=> b!1399351 m!1286743))

(declare-fun m!1286751 () Bool)

(assert (=> b!1399351 m!1286751))

(declare-fun m!1286753 () Bool)

(assert (=> bm!66888 m!1286753))

(assert (=> b!1399256 d!150979))

(declare-fun d!150981 () Bool)

(assert (=> d!150981 (= (validKeyInArray!0 (select (arr!46171 a!2901) i!1037)) (and (not (= (select (arr!46171 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46171 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1399260 d!150981))

(declare-fun d!150983 () Bool)

(assert (=> d!150983 (= (validKeyInArray!0 (select (arr!46171 a!2901) j!112)) (and (not (= (select (arr!46171 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46171 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1399255 d!150983))

(declare-fun b!1399352 () Bool)

(declare-fun e!792258 () Bool)

(declare-fun e!792260 () Bool)

(assert (=> b!1399352 (= e!792258 e!792260)))

(declare-fun lt!615486 () (_ BitVec 64))

(assert (=> b!1399352 (= lt!615486 (select (arr!46171 a!2901) j!112))))

(declare-fun lt!615487 () Unit!46974)

(assert (=> b!1399352 (= lt!615487 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!615486 j!112))))

(assert (=> b!1399352 (arrayContainsKey!0 a!2901 lt!615486 #b00000000000000000000000000000000)))

(declare-fun lt!615485 () Unit!46974)

(assert (=> b!1399352 (= lt!615485 lt!615487)))

(declare-fun res!938198 () Bool)

(assert (=> b!1399352 (= res!938198 (= (seekEntryOrOpen!0 (select (arr!46171 a!2901) j!112) a!2901 mask!2840) (Found!10510 j!112)))))

(assert (=> b!1399352 (=> (not res!938198) (not e!792260))))

(declare-fun b!1399353 () Bool)

(declare-fun call!66892 () Bool)

(assert (=> b!1399353 (= e!792258 call!66892)))

(declare-fun b!1399354 () Bool)

(assert (=> b!1399354 (= e!792260 call!66892)))

(declare-fun b!1399355 () Bool)

(declare-fun e!792259 () Bool)

(assert (=> b!1399355 (= e!792259 e!792258)))

(declare-fun c!130038 () Bool)

(assert (=> b!1399355 (= c!130038 (validKeyInArray!0 (select (arr!46171 a!2901) j!112)))))

(declare-fun d!150985 () Bool)

(declare-fun res!938197 () Bool)

(assert (=> d!150985 (=> res!938197 e!792259)))

(assert (=> d!150985 (= res!938197 (bvsge j!112 (size!46722 a!2901)))))

(assert (=> d!150985 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!792259)))

(declare-fun bm!66889 () Bool)

(assert (=> bm!66889 (= call!66892 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!150985 (not res!938197)) b!1399355))

(assert (= (and b!1399355 c!130038) b!1399352))

(assert (= (and b!1399355 (not c!130038)) b!1399353))

(assert (= (and b!1399352 res!938198) b!1399354))

(assert (= (or b!1399354 b!1399353) bm!66889))

(assert (=> b!1399352 m!1286619))

(declare-fun m!1286755 () Bool)

(assert (=> b!1399352 m!1286755))

(declare-fun m!1286757 () Bool)

(assert (=> b!1399352 m!1286757))

(assert (=> b!1399352 m!1286619))

(assert (=> b!1399352 m!1286637))

(assert (=> b!1399355 m!1286619))

(assert (=> b!1399355 m!1286619))

(assert (=> b!1399355 m!1286623))

(declare-fun m!1286759 () Bool)

(assert (=> bm!66889 m!1286759))

(assert (=> b!1399258 d!150985))

(declare-fun d!150987 () Bool)

(assert (=> d!150987 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!615490 () Unit!46974)

(declare-fun choose!38 (array!95646 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46974)

(assert (=> d!150987 (= lt!615490 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150987 (validMask!0 mask!2840)))

(assert (=> d!150987 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!615490)))

(declare-fun bs!40736 () Bool)

(assert (= bs!40736 d!150987))

(assert (=> bs!40736 m!1286635))

(declare-fun m!1286761 () Bool)

(assert (=> bs!40736 m!1286761))

(assert (=> bs!40736 m!1286625))

(assert (=> b!1399258 d!150987))

(declare-fun b!1399392 () Bool)

(declare-fun e!792282 () SeekEntryResult!10510)

(assert (=> b!1399392 (= e!792282 (Intermediate!10510 false lt!615431 #b00000000000000000000000000000000))))

(declare-fun b!1399393 () Bool)

(declare-fun e!792281 () Bool)

(declare-fun e!792284 () Bool)

(assert (=> b!1399393 (= e!792281 e!792284)))

(declare-fun res!938207 () Bool)

(declare-fun lt!615504 () SeekEntryResult!10510)

(assert (=> b!1399393 (= res!938207 (and (is-Intermediate!10510 lt!615504) (not (undefined!11322 lt!615504)) (bvslt (x!126064 lt!615504) #b01111111111111111111111111111110) (bvsge (x!126064 lt!615504) #b00000000000000000000000000000000) (bvsge (x!126064 lt!615504) #b00000000000000000000000000000000)))))

(assert (=> b!1399393 (=> (not res!938207) (not e!792284))))

(declare-fun b!1399394 () Bool)

(declare-fun e!792283 () SeekEntryResult!10510)

(assert (=> b!1399394 (= e!792283 (Intermediate!10510 true lt!615431 #b00000000000000000000000000000000))))

(declare-fun b!1399395 () Bool)

(assert (=> b!1399395 (= e!792283 e!792282)))

(declare-fun c!130056 () Bool)

(declare-fun lt!615505 () (_ BitVec 64))

(assert (=> b!1399395 (= c!130056 (or (= lt!615505 (select (arr!46171 a!2901) j!112)) (= (bvadd lt!615505 lt!615505) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1399396 () Bool)

(assert (=> b!1399396 (= e!792281 (bvsge (x!126064 lt!615504) #b01111111111111111111111111111110))))

(declare-fun b!1399397 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399397 (= e!792282 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!615431 #b00000000000000000000000000000000 mask!2840) (select (arr!46171 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1399398 () Bool)

(assert (=> b!1399398 (and (bvsge (index!44415 lt!615504) #b00000000000000000000000000000000) (bvslt (index!44415 lt!615504) (size!46722 a!2901)))))

(declare-fun res!938206 () Bool)

(assert (=> b!1399398 (= res!938206 (= (select (arr!46171 a!2901) (index!44415 lt!615504)) (select (arr!46171 a!2901) j!112)))))

(declare-fun e!792280 () Bool)

(assert (=> b!1399398 (=> res!938206 e!792280)))

(assert (=> b!1399398 (= e!792284 e!792280)))

(declare-fun d!150989 () Bool)

(assert (=> d!150989 e!792281))

(declare-fun c!130055 () Bool)

(assert (=> d!150989 (= c!130055 (and (is-Intermediate!10510 lt!615504) (undefined!11322 lt!615504)))))

(assert (=> d!150989 (= lt!615504 e!792283)))

(declare-fun c!130054 () Bool)

(assert (=> d!150989 (= c!130054 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!150989 (= lt!615505 (select (arr!46171 a!2901) lt!615431))))

(assert (=> d!150989 (validMask!0 mask!2840)))

(assert (=> d!150989 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615431 (select (arr!46171 a!2901) j!112) a!2901 mask!2840) lt!615504)))

(declare-fun b!1399399 () Bool)

(assert (=> b!1399399 (and (bvsge (index!44415 lt!615504) #b00000000000000000000000000000000) (bvslt (index!44415 lt!615504) (size!46722 a!2901)))))

(assert (=> b!1399399 (= e!792280 (= (select (arr!46171 a!2901) (index!44415 lt!615504)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1399400 () Bool)

(assert (=> b!1399400 (and (bvsge (index!44415 lt!615504) #b00000000000000000000000000000000) (bvslt (index!44415 lt!615504) (size!46722 a!2901)))))

(declare-fun res!938205 () Bool)

(assert (=> b!1399400 (= res!938205 (= (select (arr!46171 a!2901) (index!44415 lt!615504)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1399400 (=> res!938205 e!792280)))

(assert (= (and d!150989 c!130054) b!1399394))

(assert (= (and d!150989 (not c!130054)) b!1399395))

(assert (= (and b!1399395 c!130056) b!1399392))

(assert (= (and b!1399395 (not c!130056)) b!1399397))

(assert (= (and d!150989 c!130055) b!1399396))

(assert (= (and d!150989 (not c!130055)) b!1399393))

(assert (= (and b!1399393 res!938207) b!1399398))

(assert (= (and b!1399398 (not res!938206)) b!1399400))

(assert (= (and b!1399400 (not res!938205)) b!1399399))

(declare-fun m!1286773 () Bool)

(assert (=> b!1399397 m!1286773))

(assert (=> b!1399397 m!1286773))

(assert (=> b!1399397 m!1286619))

(declare-fun m!1286775 () Bool)

(assert (=> b!1399397 m!1286775))

(declare-fun m!1286777 () Bool)

(assert (=> b!1399398 m!1286777))

(assert (=> b!1399400 m!1286777))

(declare-fun m!1286779 () Bool)

(assert (=> d!150989 m!1286779))

(assert (=> d!150989 m!1286625))

(assert (=> b!1399399 m!1286777))

(assert (=> b!1399258 d!150989))

(declare-fun d!150995 () Bool)

(declare-fun lt!615526 () (_ BitVec 32))

(declare-fun lt!615525 () (_ BitVec 32))

(assert (=> d!150995 (= lt!615526 (bvmul (bvxor lt!615525 (bvlshr lt!615525 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150995 (= lt!615525 ((_ extract 31 0) (bvand (bvxor (select (arr!46171 a!2901) j!112) (bvlshr (select (arr!46171 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150995 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!938208 (let ((h!34114 ((_ extract 31 0) (bvand (bvxor (select (arr!46171 a!2901) j!112) (bvlshr (select (arr!46171 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!126069 (bvmul (bvxor h!34114 (bvlshr h!34114 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!126069 (bvlshr x!126069 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!938208 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!938208 #b00000000000000000000000000000000))))))

(assert (=> d!150995 (= (toIndex!0 (select (arr!46171 a!2901) j!112) mask!2840) (bvand (bvxor lt!615526 (bvlshr lt!615526 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1399258 d!150995))

(declare-fun b!1399437 () Bool)

(declare-fun e!792305 () SeekEntryResult!10510)

(assert (=> b!1399437 (= e!792305 (Intermediate!10510 false (toIndex!0 lt!615433 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1399438 () Bool)

(declare-fun e!792304 () Bool)

(declare-fun e!792307 () Bool)

(assert (=> b!1399438 (= e!792304 e!792307)))

(declare-fun res!938211 () Bool)

(declare-fun lt!615527 () SeekEntryResult!10510)

(assert (=> b!1399438 (= res!938211 (and (is-Intermediate!10510 lt!615527) (not (undefined!11322 lt!615527)) (bvslt (x!126064 lt!615527) #b01111111111111111111111111111110) (bvsge (x!126064 lt!615527) #b00000000000000000000000000000000) (bvsge (x!126064 lt!615527) #b00000000000000000000000000000000)))))

(assert (=> b!1399438 (=> (not res!938211) (not e!792307))))

(declare-fun b!1399439 () Bool)

(declare-fun e!792306 () SeekEntryResult!10510)

(assert (=> b!1399439 (= e!792306 (Intermediate!10510 true (toIndex!0 lt!615433 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1399440 () Bool)

(assert (=> b!1399440 (= e!792306 e!792305)))

(declare-fun c!130077 () Bool)

(declare-fun lt!615528 () (_ BitVec 64))

(assert (=> b!1399440 (= c!130077 (or (= lt!615528 lt!615433) (= (bvadd lt!615528 lt!615528) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1399441 () Bool)

(assert (=> b!1399441 (= e!792304 (bvsge (x!126064 lt!615527) #b01111111111111111111111111111110))))

(declare-fun b!1399442 () Bool)

(assert (=> b!1399442 (= e!792305 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!615433 mask!2840) #b00000000000000000000000000000000 mask!2840) lt!615433 lt!615432 mask!2840))))

(declare-fun b!1399443 () Bool)

(assert (=> b!1399443 (and (bvsge (index!44415 lt!615527) #b00000000000000000000000000000000) (bvslt (index!44415 lt!615527) (size!46722 lt!615432)))))

(declare-fun res!938210 () Bool)

(assert (=> b!1399443 (= res!938210 (= (select (arr!46171 lt!615432) (index!44415 lt!615527)) lt!615433))))

(declare-fun e!792303 () Bool)

(assert (=> b!1399443 (=> res!938210 e!792303)))

(assert (=> b!1399443 (= e!792307 e!792303)))

(declare-fun d!150999 () Bool)

(assert (=> d!150999 e!792304))

(declare-fun c!130076 () Bool)

(assert (=> d!150999 (= c!130076 (and (is-Intermediate!10510 lt!615527) (undefined!11322 lt!615527)))))

(assert (=> d!150999 (= lt!615527 e!792306)))

(declare-fun c!130075 () Bool)

(assert (=> d!150999 (= c!130075 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!150999 (= lt!615528 (select (arr!46171 lt!615432) (toIndex!0 lt!615433 mask!2840)))))

(assert (=> d!150999 (validMask!0 mask!2840)))

(assert (=> d!150999 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615433 mask!2840) lt!615433 lt!615432 mask!2840) lt!615527)))

(declare-fun b!1399444 () Bool)

(assert (=> b!1399444 (and (bvsge (index!44415 lt!615527) #b00000000000000000000000000000000) (bvslt (index!44415 lt!615527) (size!46722 lt!615432)))))

(assert (=> b!1399444 (= e!792303 (= (select (arr!46171 lt!615432) (index!44415 lt!615527)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1399445 () Bool)

(assert (=> b!1399445 (and (bvsge (index!44415 lt!615527) #b00000000000000000000000000000000) (bvslt (index!44415 lt!615527) (size!46722 lt!615432)))))

(declare-fun res!938209 () Bool)

(assert (=> b!1399445 (= res!938209 (= (select (arr!46171 lt!615432) (index!44415 lt!615527)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1399445 (=> res!938209 e!792303)))

(assert (= (and d!150999 c!130075) b!1399439))

(assert (= (and d!150999 (not c!130075)) b!1399440))

(assert (= (and b!1399440 c!130077) b!1399437))

(assert (= (and b!1399440 (not c!130077)) b!1399442))

(assert (= (and d!150999 c!130076) b!1399441))

(assert (= (and d!150999 (not c!130076)) b!1399438))

(assert (= (and b!1399438 res!938211) b!1399443))

(assert (= (and b!1399443 (not res!938210)) b!1399445))

(assert (= (and b!1399445 (not res!938209)) b!1399444))

(assert (=> b!1399442 m!1286641))

(declare-fun m!1286803 () Bool)

(assert (=> b!1399442 m!1286803))

(assert (=> b!1399442 m!1286803))

(declare-fun m!1286805 () Bool)

(assert (=> b!1399442 m!1286805))

(declare-fun m!1286807 () Bool)

(assert (=> b!1399443 m!1286807))

(assert (=> b!1399445 m!1286807))

(assert (=> d!150999 m!1286641))

(declare-fun m!1286809 () Bool)

(assert (=> d!150999 m!1286809))

(assert (=> d!150999 m!1286625))

(assert (=> b!1399444 m!1286807))

(assert (=> b!1399264 d!150999))

(declare-fun d!151003 () Bool)

(declare-fun lt!615530 () (_ BitVec 32))

(declare-fun lt!615529 () (_ BitVec 32))

(assert (=> d!151003 (= lt!615530 (bvmul (bvxor lt!615529 (bvlshr lt!615529 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151003 (= lt!615529 ((_ extract 31 0) (bvand (bvxor lt!615433 (bvlshr lt!615433 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151003 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!938208 (let ((h!34114 ((_ extract 31 0) (bvand (bvxor lt!615433 (bvlshr lt!615433 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!126069 (bvmul (bvxor h!34114 (bvlshr h!34114 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!126069 (bvlshr x!126069 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!938208 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!938208 #b00000000000000000000000000000000))))))

(assert (=> d!151003 (= (toIndex!0 lt!615433 mask!2840) (bvand (bvxor lt!615530 (bvlshr lt!615530 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1399264 d!151003))

(declare-fun b!1399491 () Bool)

(declare-fun lt!615546 () SeekEntryResult!10510)

(declare-fun e!792338 () SeekEntryResult!10510)

(assert (=> b!1399491 (= e!792338 (seekKeyOrZeroReturnVacant!0 (x!126064 lt!615546) (index!44415 lt!615546) (index!44415 lt!615546) (select (arr!46171 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1399492 () Bool)

(declare-fun e!792337 () SeekEntryResult!10510)

(assert (=> b!1399492 (= e!792337 (Found!10510 (index!44415 lt!615546)))))

(declare-fun b!1399493 () Bool)

(declare-fun e!792336 () SeekEntryResult!10510)

(assert (=> b!1399493 (= e!792336 e!792337)))

(declare-fun lt!615545 () (_ BitVec 64))

(assert (=> b!1399493 (= lt!615545 (select (arr!46171 a!2901) (index!44415 lt!615546)))))

(declare-fun c!130095 () Bool)

(assert (=> b!1399493 (= c!130095 (= lt!615545 (select (arr!46171 a!2901) j!112)))))

(declare-fun b!1399494 () Bool)

(declare-fun c!130093 () Bool)

(assert (=> b!1399494 (= c!130093 (= lt!615545 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1399494 (= e!792337 e!792338)))

(declare-fun b!1399495 () Bool)

(assert (=> b!1399495 (= e!792336 Undefined!10510)))

(declare-fun d!151005 () Bool)

(declare-fun lt!615544 () SeekEntryResult!10510)

(assert (=> d!151005 (and (or (is-Undefined!10510 lt!615544) (not (is-Found!10510 lt!615544)) (and (bvsge (index!44414 lt!615544) #b00000000000000000000000000000000) (bvslt (index!44414 lt!615544) (size!46722 a!2901)))) (or (is-Undefined!10510 lt!615544) (is-Found!10510 lt!615544) (not (is-MissingZero!10510 lt!615544)) (and (bvsge (index!44413 lt!615544) #b00000000000000000000000000000000) (bvslt (index!44413 lt!615544) (size!46722 a!2901)))) (or (is-Undefined!10510 lt!615544) (is-Found!10510 lt!615544) (is-MissingZero!10510 lt!615544) (not (is-MissingVacant!10510 lt!615544)) (and (bvsge (index!44416 lt!615544) #b00000000000000000000000000000000) (bvslt (index!44416 lt!615544) (size!46722 a!2901)))) (or (is-Undefined!10510 lt!615544) (ite (is-Found!10510 lt!615544) (= (select (arr!46171 a!2901) (index!44414 lt!615544)) (select (arr!46171 a!2901) j!112)) (ite (is-MissingZero!10510 lt!615544) (= (select (arr!46171 a!2901) (index!44413 lt!615544)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10510 lt!615544) (= (select (arr!46171 a!2901) (index!44416 lt!615544)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151005 (= lt!615544 e!792336)))

(declare-fun c!130094 () Bool)

(assert (=> d!151005 (= c!130094 (and (is-Intermediate!10510 lt!615546) (undefined!11322 lt!615546)))))

(assert (=> d!151005 (= lt!615546 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46171 a!2901) j!112) mask!2840) (select (arr!46171 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151005 (validMask!0 mask!2840)))

(assert (=> d!151005 (= (seekEntryOrOpen!0 (select (arr!46171 a!2901) j!112) a!2901 mask!2840) lt!615544)))

(declare-fun b!1399496 () Bool)

(assert (=> b!1399496 (= e!792338 (MissingZero!10510 (index!44415 lt!615546)))))

(assert (= (and d!151005 c!130094) b!1399495))

(assert (= (and d!151005 (not c!130094)) b!1399493))

(assert (= (and b!1399493 c!130095) b!1399492))

(assert (= (and b!1399493 (not c!130095)) b!1399494))

(assert (= (and b!1399494 c!130093) b!1399496))

(assert (= (and b!1399494 (not c!130093)) b!1399491))

(assert (=> b!1399491 m!1286619))

(declare-fun m!1286821 () Bool)

(assert (=> b!1399491 m!1286821))

(declare-fun m!1286823 () Bool)

(assert (=> b!1399493 m!1286823))

(declare-fun m!1286825 () Bool)

(assert (=> d!151005 m!1286825))

(assert (=> d!151005 m!1286619))

(assert (=> d!151005 m!1286629))

(assert (=> d!151005 m!1286625))

(declare-fun m!1286827 () Bool)

(assert (=> d!151005 m!1286827))

(declare-fun m!1286829 () Bool)

(assert (=> d!151005 m!1286829))

(assert (=> d!151005 m!1286629))

(assert (=> d!151005 m!1286619))

(declare-fun m!1286831 () Bool)

(assert (=> d!151005 m!1286831))

(assert (=> b!1399259 d!151005))

(declare-fun e!792346 () SeekEntryResult!10510)

(declare-fun b!1399506 () Bool)

(declare-fun lt!615555 () SeekEntryResult!10510)

(assert (=> b!1399506 (= e!792346 (seekKeyOrZeroReturnVacant!0 (x!126064 lt!615555) (index!44415 lt!615555) (index!44415 lt!615555) lt!615433 lt!615432 mask!2840))))

(declare-fun b!1399507 () Bool)

(declare-fun e!792345 () SeekEntryResult!10510)

(assert (=> b!1399507 (= e!792345 (Found!10510 (index!44415 lt!615555)))))

(declare-fun b!1399508 () Bool)

(declare-fun e!792344 () SeekEntryResult!10510)

(assert (=> b!1399508 (= e!792344 e!792345)))

(declare-fun lt!615551 () (_ BitVec 64))

(assert (=> b!1399508 (= lt!615551 (select (arr!46171 lt!615432) (index!44415 lt!615555)))))

(declare-fun c!130101 () Bool)

(assert (=> b!1399508 (= c!130101 (= lt!615551 lt!615433))))

(declare-fun b!1399509 () Bool)

(declare-fun c!130099 () Bool)

(assert (=> b!1399509 (= c!130099 (= lt!615551 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1399509 (= e!792345 e!792346)))

(declare-fun b!1399510 () Bool)

(assert (=> b!1399510 (= e!792344 Undefined!10510)))

(declare-fun d!151011 () Bool)

(declare-fun lt!615549 () SeekEntryResult!10510)

(assert (=> d!151011 (and (or (is-Undefined!10510 lt!615549) (not (is-Found!10510 lt!615549)) (and (bvsge (index!44414 lt!615549) #b00000000000000000000000000000000) (bvslt (index!44414 lt!615549) (size!46722 lt!615432)))) (or (is-Undefined!10510 lt!615549) (is-Found!10510 lt!615549) (not (is-MissingZero!10510 lt!615549)) (and (bvsge (index!44413 lt!615549) #b00000000000000000000000000000000) (bvslt (index!44413 lt!615549) (size!46722 lt!615432)))) (or (is-Undefined!10510 lt!615549) (is-Found!10510 lt!615549) (is-MissingZero!10510 lt!615549) (not (is-MissingVacant!10510 lt!615549)) (and (bvsge (index!44416 lt!615549) #b00000000000000000000000000000000) (bvslt (index!44416 lt!615549) (size!46722 lt!615432)))) (or (is-Undefined!10510 lt!615549) (ite (is-Found!10510 lt!615549) (= (select (arr!46171 lt!615432) (index!44414 lt!615549)) lt!615433) (ite (is-MissingZero!10510 lt!615549) (= (select (arr!46171 lt!615432) (index!44413 lt!615549)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10510 lt!615549) (= (select (arr!46171 lt!615432) (index!44416 lt!615549)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151011 (= lt!615549 e!792344)))

(declare-fun c!130100 () Bool)

(assert (=> d!151011 (= c!130100 (and (is-Intermediate!10510 lt!615555) (undefined!11322 lt!615555)))))

(assert (=> d!151011 (= lt!615555 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615433 mask!2840) lt!615433 lt!615432 mask!2840))))

(assert (=> d!151011 (validMask!0 mask!2840)))

(assert (=> d!151011 (= (seekEntryOrOpen!0 lt!615433 lt!615432 mask!2840) lt!615549)))

(declare-fun b!1399511 () Bool)

(assert (=> b!1399511 (= e!792346 (MissingZero!10510 (index!44415 lt!615555)))))

(assert (= (and d!151011 c!130100) b!1399510))

(assert (= (and d!151011 (not c!130100)) b!1399508))

(assert (= (and b!1399508 c!130101) b!1399507))

(assert (= (and b!1399508 (not c!130101)) b!1399509))

(assert (= (and b!1399509 c!130099) b!1399511))

(assert (= (and b!1399509 (not c!130099)) b!1399506))

(declare-fun m!1286837 () Bool)

(assert (=> b!1399506 m!1286837))

(declare-fun m!1286839 () Bool)

(assert (=> b!1399508 m!1286839))

(declare-fun m!1286843 () Bool)

(assert (=> d!151011 m!1286843))

(assert (=> d!151011 m!1286641))

(assert (=> d!151011 m!1286625))

(declare-fun m!1286847 () Bool)

(assert (=> d!151011 m!1286847))

(declare-fun m!1286849 () Bool)

(assert (=> d!151011 m!1286849))

(assert (=> d!151011 m!1286641))

(assert (=> d!151011 m!1286643))

(assert (=> b!1399262 d!151011))

(declare-fun b!1399563 () Bool)

(declare-fun e!792377 () SeekEntryResult!10510)

(declare-fun e!792378 () SeekEntryResult!10510)

(assert (=> b!1399563 (= e!792377 e!792378)))

(declare-fun lt!615583 () (_ BitVec 64))

(declare-fun c!130120 () Bool)

(assert (=> b!1399563 (= c!130120 (= lt!615583 (select (arr!46171 a!2901) j!112)))))

(declare-fun e!792379 () SeekEntryResult!10510)

(declare-fun b!1399564 () Bool)

(assert (=> b!1399564 (= e!792379 (seekKeyOrZeroReturnVacant!0 (bvadd (x!126064 lt!615428) #b00000000000000000000000000000001) (nextIndex!0 (index!44415 lt!615428) (x!126064 lt!615428) mask!2840) (index!44415 lt!615428) (select (arr!46171 a!2901) j!112) lt!615432 mask!2840))))

(declare-fun b!1399565 () Bool)

(assert (=> b!1399565 (= e!792378 (Found!10510 (index!44415 lt!615428)))))

(declare-fun b!1399566 () Bool)

(assert (=> b!1399566 (= e!792377 Undefined!10510)))

(declare-fun b!1399567 () Bool)

(declare-fun c!130122 () Bool)

(assert (=> b!1399567 (= c!130122 (= lt!615583 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1399567 (= e!792378 e!792379)))

(declare-fun b!1399568 () Bool)

(assert (=> b!1399568 (= e!792379 (MissingVacant!10510 (index!44415 lt!615428)))))

(declare-fun lt!615584 () SeekEntryResult!10510)

(declare-fun d!151015 () Bool)

(assert (=> d!151015 (and (or (is-Undefined!10510 lt!615584) (not (is-Found!10510 lt!615584)) (and (bvsge (index!44414 lt!615584) #b00000000000000000000000000000000) (bvslt (index!44414 lt!615584) (size!46722 lt!615432)))) (or (is-Undefined!10510 lt!615584) (is-Found!10510 lt!615584) (not (is-MissingVacant!10510 lt!615584)) (not (= (index!44416 lt!615584) (index!44415 lt!615428))) (and (bvsge (index!44416 lt!615584) #b00000000000000000000000000000000) (bvslt (index!44416 lt!615584) (size!46722 lt!615432)))) (or (is-Undefined!10510 lt!615584) (ite (is-Found!10510 lt!615584) (= (select (arr!46171 lt!615432) (index!44414 lt!615584)) (select (arr!46171 a!2901) j!112)) (and (is-MissingVacant!10510 lt!615584) (= (index!44416 lt!615584) (index!44415 lt!615428)) (= (select (arr!46171 lt!615432) (index!44416 lt!615584)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!151015 (= lt!615584 e!792377)))

(declare-fun c!130121 () Bool)

(assert (=> d!151015 (= c!130121 (bvsge (x!126064 lt!615428) #b01111111111111111111111111111110))))

(assert (=> d!151015 (= lt!615583 (select (arr!46171 lt!615432) (index!44415 lt!615428)))))

(assert (=> d!151015 (validMask!0 mask!2840)))

(assert (=> d!151015 (= (seekKeyOrZeroReturnVacant!0 (x!126064 lt!615428) (index!44415 lt!615428) (index!44415 lt!615428) (select (arr!46171 a!2901) j!112) lt!615432 mask!2840) lt!615584)))

(assert (= (and d!151015 c!130121) b!1399566))

(assert (= (and d!151015 (not c!130121)) b!1399563))

(assert (= (and b!1399563 c!130120) b!1399565))

(assert (= (and b!1399563 (not c!130120)) b!1399567))

(assert (= (and b!1399567 c!130122) b!1399568))

(assert (= (and b!1399567 (not c!130122)) b!1399564))

(declare-fun m!1286865 () Bool)

(assert (=> b!1399564 m!1286865))

(assert (=> b!1399564 m!1286865))

(assert (=> b!1399564 m!1286619))

(declare-fun m!1286867 () Bool)

(assert (=> b!1399564 m!1286867))

(declare-fun m!1286869 () Bool)

(assert (=> d!151015 m!1286869))

(declare-fun m!1286871 () Bool)

(assert (=> d!151015 m!1286871))

(declare-fun m!1286873 () Bool)

(assert (=> d!151015 m!1286873))

(assert (=> d!151015 m!1286625))

(assert (=> b!1399262 d!151015))

(declare-fun d!151027 () Bool)

(assert (=> d!151027 (and (not (undefined!11322 lt!615428)) (= (index!44415 lt!615428) i!1037) (bvslt (x!126064 lt!615428) (x!126064 lt!615430)))))

(declare-fun lt!615598 () Unit!46974)

(declare-fun choose!62 (array!95646 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46974)

(assert (=> d!151027 (= lt!615598 (choose!62 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615431 (x!126064 lt!615430) (index!44415 lt!615430) (x!126064 lt!615428) (index!44415 lt!615428) (undefined!11322 lt!615428) mask!2840))))

(assert (=> d!151027 (validMask!0 mask!2840)))

(assert (=> d!151027 (= (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615431 (x!126064 lt!615430) (index!44415 lt!615430) (x!126064 lt!615428) (index!44415 lt!615428) (undefined!11322 lt!615428) mask!2840) lt!615598)))

(declare-fun bs!40739 () Bool)

(assert (= bs!40739 d!151027))

(declare-fun m!1286877 () Bool)

(assert (=> bs!40739 m!1286877))

(assert (=> bs!40739 m!1286625))

(assert (=> b!1399257 d!151027))

(declare-fun d!151031 () Bool)

(declare-fun res!938262 () Bool)

(declare-fun e!792404 () Bool)

(assert (=> d!151031 (=> res!938262 e!792404)))

(assert (=> d!151031 (= res!938262 (bvsge #b00000000000000000000000000000000 (size!46722 a!2901)))))

(assert (=> d!151031 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32867) e!792404)))

(declare-fun b!1399600 () Bool)

(declare-fun e!792405 () Bool)

(declare-fun call!66904 () Bool)

(assert (=> b!1399600 (= e!792405 call!66904)))

(declare-fun b!1399601 () Bool)

(declare-fun e!792403 () Bool)

(declare-fun contains!9801 (List!32870 (_ BitVec 64)) Bool)

(assert (=> b!1399601 (= e!792403 (contains!9801 Nil!32867 (select (arr!46171 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1399602 () Bool)

(declare-fun e!792402 () Bool)

(assert (=> b!1399602 (= e!792402 e!792405)))

(declare-fun c!130131 () Bool)

(assert (=> b!1399602 (= c!130131 (validKeyInArray!0 (select (arr!46171 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1399603 () Bool)

(assert (=> b!1399603 (= e!792404 e!792402)))

(declare-fun res!938263 () Bool)

(assert (=> b!1399603 (=> (not res!938263) (not e!792402))))

(assert (=> b!1399603 (= res!938263 (not e!792403))))

(declare-fun res!938264 () Bool)

(assert (=> b!1399603 (=> (not res!938264) (not e!792403))))

(assert (=> b!1399603 (= res!938264 (validKeyInArray!0 (select (arr!46171 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66901 () Bool)

(assert (=> bm!66901 (= call!66904 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130131 (Cons!32866 (select (arr!46171 a!2901) #b00000000000000000000000000000000) Nil!32867) Nil!32867)))))

(declare-fun b!1399604 () Bool)

(assert (=> b!1399604 (= e!792405 call!66904)))

(assert (= (and d!151031 (not res!938262)) b!1399603))

(assert (= (and b!1399603 res!938264) b!1399601))

(assert (= (and b!1399603 res!938263) b!1399602))

(assert (= (and b!1399602 c!130131) b!1399604))

(assert (= (and b!1399602 (not c!130131)) b!1399600))

(assert (= (or b!1399604 b!1399600) bm!66901))

(assert (=> b!1399601 m!1286743))

(assert (=> b!1399601 m!1286743))

(declare-fun m!1286895 () Bool)

(assert (=> b!1399601 m!1286895))

(assert (=> b!1399602 m!1286743))

(assert (=> b!1399602 m!1286743))

(assert (=> b!1399602 m!1286751))

(assert (=> b!1399603 m!1286743))

(assert (=> b!1399603 m!1286743))

(assert (=> b!1399603 m!1286751))

(assert (=> bm!66901 m!1286743))

(declare-fun m!1286897 () Bool)

(assert (=> bm!66901 m!1286897))

(assert (=> b!1399263 d!151031))

(push 1)

(assert (not b!1399352))

(assert (not b!1399564))

(assert (not d!151015))

(assert (not b!1399348))

(assert (not b!1399602))

(assert (not d!151011))

(assert (not b!1399491))

(assert (not b!1399351))

(assert (not d!150999))

(assert (not bm!66888))

(assert (not bm!66889))

(assert (not b!1399601))

(assert (not b!1399442))

(assert (not b!1399397))

(assert (not d!151005))

(assert (not bm!66901))

(assert (not d!150987))

(assert (not d!150989))

(assert (not b!1399506))

(assert (not b!1399603))

(assert (not b!1399355))

(assert (not d!151027))

(check-sat)

(pop 1)

