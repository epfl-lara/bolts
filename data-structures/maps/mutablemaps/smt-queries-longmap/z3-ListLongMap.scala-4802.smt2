; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65892 () Bool)

(assert start!65892)

(declare-datatypes ((array!42018 0))(
  ( (array!42019 (arr!20119 (Array (_ BitVec 32) (_ BitVec 64))) (size!20540 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42018)

(declare-datatypes ((SeekEntryResult!7726 0))(
  ( (MissingZero!7726 (index!33271 (_ BitVec 32))) (Found!7726 (index!33272 (_ BitVec 32))) (Intermediate!7726 (undefined!8538 Bool) (index!33273 (_ BitVec 32)) (x!64181 (_ BitVec 32))) (Undefined!7726) (MissingVacant!7726 (index!33274 (_ BitVec 32))) )
))
(declare-fun lt!338350 () SeekEntryResult!7726)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!759271 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!423302 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42018 (_ BitVec 32)) SeekEntryResult!7726)

(assert (=> b!759271 (= e!423302 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20119 a!3186) j!159) a!3186 mask!3328) lt!338350))))

(declare-fun b!759272 () Bool)

(declare-fun e!423296 () Bool)

(assert (=> b!759272 (= e!423296 (not true))))

(declare-fun e!423301 () Bool)

(assert (=> b!759272 e!423301))

(declare-fun res!513920 () Bool)

(assert (=> b!759272 (=> (not res!513920) (not e!423301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42018 (_ BitVec 32)) Bool)

(assert (=> b!759272 (= res!513920 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26292 0))(
  ( (Unit!26293) )
))
(declare-fun lt!338354 () Unit!26292)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42018 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26292)

(assert (=> b!759272 (= lt!338354 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!759273 () Bool)

(declare-fun e!423297 () Bool)

(declare-fun e!423298 () Bool)

(assert (=> b!759273 (= e!423297 e!423298)))

(declare-fun res!513918 () Bool)

(assert (=> b!759273 (=> (not res!513918) (not e!423298))))

(declare-fun lt!338353 () SeekEntryResult!7726)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!759273 (= res!513918 (or (= lt!338353 (MissingZero!7726 i!1173)) (= lt!338353 (MissingVacant!7726 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42018 (_ BitVec 32)) SeekEntryResult!7726)

(assert (=> b!759273 (= lt!338353 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!759274 () Bool)

(declare-fun res!513925 () Bool)

(assert (=> b!759274 (=> (not res!513925) (not e!423298))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!759274 (= res!513925 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20540 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20540 a!3186))))))

(declare-fun b!759276 () Bool)

(declare-fun res!513926 () Bool)

(assert (=> b!759276 (=> (not res!513926) (not e!423297))))

(assert (=> b!759276 (= res!513926 (and (= (size!20540 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20540 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20540 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!759277 () Bool)

(declare-fun e!423303 () Bool)

(declare-fun lt!338352 () SeekEntryResult!7726)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42018 (_ BitVec 32)) SeekEntryResult!7726)

(assert (=> b!759277 (= e!423303 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20119 a!3186) j!159) a!3186 mask!3328) lt!338352))))

(declare-fun b!759278 () Bool)

(declare-fun e!423299 () Bool)

(assert (=> b!759278 (= e!423298 e!423299)))

(declare-fun res!513923 () Bool)

(assert (=> b!759278 (=> (not res!513923) (not e!423299))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!759278 (= res!513923 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20119 a!3186) j!159) mask!3328) (select (arr!20119 a!3186) j!159) a!3186 mask!3328) lt!338350))))

(assert (=> b!759278 (= lt!338350 (Intermediate!7726 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!759279 () Bool)

(declare-fun res!513927 () Bool)

(assert (=> b!759279 (=> (not res!513927) (not e!423297))))

(declare-fun arrayContainsKey!0 (array!42018 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!759279 (= res!513927 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!759280 () Bool)

(declare-fun res!513919 () Bool)

(assert (=> b!759280 (=> (not res!513919) (not e!423299))))

(assert (=> b!759280 (= res!513919 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20119 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!759281 () Bool)

(assert (=> b!759281 (= e!423301 e!423303)))

(declare-fun res!513916 () Bool)

(assert (=> b!759281 (=> (not res!513916) (not e!423303))))

(assert (=> b!759281 (= res!513916 (= (seekEntryOrOpen!0 (select (arr!20119 a!3186) j!159) a!3186 mask!3328) lt!338352))))

(assert (=> b!759281 (= lt!338352 (Found!7726 j!159))))

(declare-fun b!759282 () Bool)

(declare-fun res!513924 () Bool)

(assert (=> b!759282 (=> (not res!513924) (not e!423297))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!759282 (= res!513924 (validKeyInArray!0 k0!2102))))

(declare-fun b!759283 () Bool)

(declare-fun res!513917 () Bool)

(assert (=> b!759283 (=> (not res!513917) (not e!423299))))

(assert (=> b!759283 (= res!513917 e!423302)))

(declare-fun c!83058 () Bool)

(assert (=> b!759283 (= c!83058 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!759284 () Bool)

(assert (=> b!759284 (= e!423302 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20119 a!3186) j!159) a!3186 mask!3328) (Found!7726 j!159)))))

(declare-fun b!759285 () Bool)

(declare-fun res!513928 () Bool)

(assert (=> b!759285 (=> (not res!513928) (not e!423298))))

(declare-datatypes ((List!14174 0))(
  ( (Nil!14171) (Cons!14170 (h!15242 (_ BitVec 64)) (t!20497 List!14174)) )
))
(declare-fun arrayNoDuplicates!0 (array!42018 (_ BitVec 32) List!14174) Bool)

(assert (=> b!759285 (= res!513928 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14171))))

(declare-fun b!759286 () Bool)

(declare-fun res!513929 () Bool)

(assert (=> b!759286 (=> (not res!513929) (not e!423297))))

(assert (=> b!759286 (= res!513929 (validKeyInArray!0 (select (arr!20119 a!3186) j!159)))))

(declare-fun b!759287 () Bool)

(assert (=> b!759287 (= e!423299 e!423296)))

(declare-fun res!513922 () Bool)

(assert (=> b!759287 (=> (not res!513922) (not e!423296))))

(declare-fun lt!338349 () (_ BitVec 64))

(declare-fun lt!338351 () array!42018)

(assert (=> b!759287 (= res!513922 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338349 mask!3328) lt!338349 lt!338351 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338349 lt!338351 mask!3328)))))

(assert (=> b!759287 (= lt!338349 (select (store (arr!20119 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!759287 (= lt!338351 (array!42019 (store (arr!20119 a!3186) i!1173 k0!2102) (size!20540 a!3186)))))

(declare-fun b!759275 () Bool)

(declare-fun res!513930 () Bool)

(assert (=> b!759275 (=> (not res!513930) (not e!423298))))

(assert (=> b!759275 (= res!513930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!513921 () Bool)

(assert (=> start!65892 (=> (not res!513921) (not e!423297))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65892 (= res!513921 (validMask!0 mask!3328))))

(assert (=> start!65892 e!423297))

(assert (=> start!65892 true))

(declare-fun array_inv!15893 (array!42018) Bool)

(assert (=> start!65892 (array_inv!15893 a!3186)))

(assert (= (and start!65892 res!513921) b!759276))

(assert (= (and b!759276 res!513926) b!759286))

(assert (= (and b!759286 res!513929) b!759282))

(assert (= (and b!759282 res!513924) b!759279))

(assert (= (and b!759279 res!513927) b!759273))

(assert (= (and b!759273 res!513918) b!759275))

(assert (= (and b!759275 res!513930) b!759285))

(assert (= (and b!759285 res!513928) b!759274))

(assert (= (and b!759274 res!513925) b!759278))

(assert (= (and b!759278 res!513923) b!759280))

(assert (= (and b!759280 res!513919) b!759283))

(assert (= (and b!759283 c!83058) b!759271))

(assert (= (and b!759283 (not c!83058)) b!759284))

(assert (= (and b!759283 res!513917) b!759287))

(assert (= (and b!759287 res!513922) b!759272))

(assert (= (and b!759272 res!513920) b!759281))

(assert (= (and b!759281 res!513916) b!759277))

(declare-fun m!706733 () Bool)

(assert (=> b!759281 m!706733))

(assert (=> b!759281 m!706733))

(declare-fun m!706735 () Bool)

(assert (=> b!759281 m!706735))

(assert (=> b!759284 m!706733))

(assert (=> b!759284 m!706733))

(declare-fun m!706737 () Bool)

(assert (=> b!759284 m!706737))

(declare-fun m!706739 () Bool)

(assert (=> b!759282 m!706739))

(declare-fun m!706741 () Bool)

(assert (=> b!759279 m!706741))

(assert (=> b!759271 m!706733))

(assert (=> b!759271 m!706733))

(declare-fun m!706743 () Bool)

(assert (=> b!759271 m!706743))

(assert (=> b!759278 m!706733))

(assert (=> b!759278 m!706733))

(declare-fun m!706745 () Bool)

(assert (=> b!759278 m!706745))

(assert (=> b!759278 m!706745))

(assert (=> b!759278 m!706733))

(declare-fun m!706747 () Bool)

(assert (=> b!759278 m!706747))

(declare-fun m!706749 () Bool)

(assert (=> b!759287 m!706749))

(declare-fun m!706751 () Bool)

(assert (=> b!759287 m!706751))

(assert (=> b!759287 m!706749))

(declare-fun m!706753 () Bool)

(assert (=> b!759287 m!706753))

(declare-fun m!706755 () Bool)

(assert (=> b!759287 m!706755))

(declare-fun m!706757 () Bool)

(assert (=> b!759287 m!706757))

(declare-fun m!706759 () Bool)

(assert (=> b!759280 m!706759))

(declare-fun m!706761 () Bool)

(assert (=> b!759275 m!706761))

(declare-fun m!706763 () Bool)

(assert (=> b!759285 m!706763))

(declare-fun m!706765 () Bool)

(assert (=> b!759272 m!706765))

(declare-fun m!706767 () Bool)

(assert (=> b!759272 m!706767))

(declare-fun m!706769 () Bool)

(assert (=> start!65892 m!706769))

(declare-fun m!706771 () Bool)

(assert (=> start!65892 m!706771))

(assert (=> b!759286 m!706733))

(assert (=> b!759286 m!706733))

(declare-fun m!706773 () Bool)

(assert (=> b!759286 m!706773))

(assert (=> b!759277 m!706733))

(assert (=> b!759277 m!706733))

(declare-fun m!706775 () Bool)

(assert (=> b!759277 m!706775))

(declare-fun m!706777 () Bool)

(assert (=> b!759273 m!706777))

(check-sat (not b!759282) (not b!759272) (not b!759286) (not b!759287) (not b!759275) (not b!759277) (not b!759278) (not start!65892) (not b!759285) (not b!759281) (not b!759279) (not b!759273) (not b!759271) (not b!759284))
(check-sat)
