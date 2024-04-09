; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65898 () Bool)

(assert start!65898)

(declare-fun b!759424 () Bool)

(declare-fun e!423371 () Bool)

(declare-fun e!423375 () Bool)

(assert (=> b!759424 (= e!423371 e!423375)))

(declare-fun res!514063 () Bool)

(assert (=> b!759424 (=> (not res!514063) (not e!423375))))

(declare-datatypes ((array!42024 0))(
  ( (array!42025 (arr!20122 (Array (_ BitVec 32) (_ BitVec 64))) (size!20543 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42024)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7729 0))(
  ( (MissingZero!7729 (index!33283 (_ BitVec 32))) (Found!7729 (index!33284 (_ BitVec 32))) (Intermediate!7729 (undefined!8541 Bool) (index!33285 (_ BitVec 32)) (x!64192 (_ BitVec 32))) (Undefined!7729) (MissingVacant!7729 (index!33286 (_ BitVec 32))) )
))
(declare-fun lt!338408 () SeekEntryResult!7729)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42024 (_ BitVec 32)) SeekEntryResult!7729)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!759424 (= res!514063 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20122 a!3186) j!159) mask!3328) (select (arr!20122 a!3186) j!159) a!3186 mask!3328) lt!338408))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!759424 (= lt!338408 (Intermediate!7729 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!759425 () Bool)

(declare-fun res!514059 () Bool)

(declare-fun e!423373 () Bool)

(assert (=> b!759425 (=> (not res!514059) (not e!423373))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!759425 (= res!514059 (and (= (size!20543 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20543 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20543 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!759426 () Bool)

(declare-fun lt!338406 () SeekEntryResult!7729)

(declare-fun e!423372 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42024 (_ BitVec 32)) SeekEntryResult!7729)

(assert (=> b!759426 (= e!423372 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20122 a!3186) j!159) a!3186 mask!3328) lt!338406))))

(declare-fun b!759427 () Bool)

(declare-fun e!423374 () Bool)

(assert (=> b!759427 (= e!423375 e!423374)))

(declare-fun res!514064 () Bool)

(assert (=> b!759427 (=> (not res!514064) (not e!423374))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!338407 () array!42024)

(declare-fun lt!338405 () (_ BitVec 64))

(assert (=> b!759427 (= res!514064 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338405 mask!3328) lt!338405 lt!338407 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338405 lt!338407 mask!3328)))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!759427 (= lt!338405 (select (store (arr!20122 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!759427 (= lt!338407 (array!42025 (store (arr!20122 a!3186) i!1173 k0!2102) (size!20543 a!3186)))))

(declare-fun b!759428 () Bool)

(declare-fun res!514053 () Bool)

(assert (=> b!759428 (=> (not res!514053) (not e!423373))))

(declare-fun arrayContainsKey!0 (array!42024 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!759428 (= res!514053 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun e!423370 () Bool)

(declare-fun b!759429 () Bool)

(assert (=> b!759429 (= e!423370 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20122 a!3186) j!159) a!3186 mask!3328) lt!338408))))

(declare-fun b!759430 () Bool)

(assert (=> b!759430 (= e!423373 e!423371)))

(declare-fun res!514058 () Bool)

(assert (=> b!759430 (=> (not res!514058) (not e!423371))))

(declare-fun lt!338404 () SeekEntryResult!7729)

(assert (=> b!759430 (= res!514058 (or (= lt!338404 (MissingZero!7729 i!1173)) (= lt!338404 (MissingVacant!7729 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42024 (_ BitVec 32)) SeekEntryResult!7729)

(assert (=> b!759430 (= lt!338404 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!759431 () Bool)

(declare-fun e!423369 () Bool)

(assert (=> b!759431 (= e!423369 e!423372)))

(declare-fun res!514056 () Bool)

(assert (=> b!759431 (=> (not res!514056) (not e!423372))))

(assert (=> b!759431 (= res!514056 (= (seekEntryOrOpen!0 (select (arr!20122 a!3186) j!159) a!3186 mask!3328) lt!338406))))

(assert (=> b!759431 (= lt!338406 (Found!7729 j!159))))

(declare-fun b!759432 () Bool)

(declare-fun res!514051 () Bool)

(assert (=> b!759432 (=> (not res!514051) (not e!423373))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!759432 (= res!514051 (validKeyInArray!0 k0!2102))))

(declare-fun b!759433 () Bool)

(declare-fun res!514057 () Bool)

(assert (=> b!759433 (=> (not res!514057) (not e!423375))))

(assert (=> b!759433 (= res!514057 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20122 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!759434 () Bool)

(declare-fun res!514065 () Bool)

(assert (=> b!759434 (=> (not res!514065) (not e!423371))))

(assert (=> b!759434 (= res!514065 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20543 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20543 a!3186))))))

(declare-fun b!759435 () Bool)

(declare-fun res!514061 () Bool)

(assert (=> b!759435 (=> (not res!514061) (not e!423373))))

(assert (=> b!759435 (= res!514061 (validKeyInArray!0 (select (arr!20122 a!3186) j!159)))))

(declare-fun b!759436 () Bool)

(declare-fun res!514062 () Bool)

(assert (=> b!759436 (=> (not res!514062) (not e!423371))))

(declare-datatypes ((List!14177 0))(
  ( (Nil!14174) (Cons!14173 (h!15245 (_ BitVec 64)) (t!20500 List!14177)) )
))
(declare-fun arrayNoDuplicates!0 (array!42024 (_ BitVec 32) List!14177) Bool)

(assert (=> b!759436 (= res!514062 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14174))))

(declare-fun b!759437 () Bool)

(assert (=> b!759437 (= e!423374 (not true))))

(assert (=> b!759437 e!423369))

(declare-fun res!514060 () Bool)

(assert (=> b!759437 (=> (not res!514060) (not e!423369))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42024 (_ BitVec 32)) Bool)

(assert (=> b!759437 (= res!514060 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26298 0))(
  ( (Unit!26299) )
))
(declare-fun lt!338403 () Unit!26298)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42024 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26298)

(assert (=> b!759437 (= lt!338403 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!514055 () Bool)

(assert (=> start!65898 (=> (not res!514055) (not e!423373))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65898 (= res!514055 (validMask!0 mask!3328))))

(assert (=> start!65898 e!423373))

(assert (=> start!65898 true))

(declare-fun array_inv!15896 (array!42024) Bool)

(assert (=> start!65898 (array_inv!15896 a!3186)))

(declare-fun b!759438 () Bool)

(assert (=> b!759438 (= e!423370 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20122 a!3186) j!159) a!3186 mask!3328) (Found!7729 j!159)))))

(declare-fun b!759439 () Bool)

(declare-fun res!514054 () Bool)

(assert (=> b!759439 (=> (not res!514054) (not e!423375))))

(assert (=> b!759439 (= res!514054 e!423370)))

(declare-fun c!83067 () Bool)

(assert (=> b!759439 (= c!83067 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!759440 () Bool)

(declare-fun res!514052 () Bool)

(assert (=> b!759440 (=> (not res!514052) (not e!423371))))

(assert (=> b!759440 (= res!514052 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65898 res!514055) b!759425))

(assert (= (and b!759425 res!514059) b!759435))

(assert (= (and b!759435 res!514061) b!759432))

(assert (= (and b!759432 res!514051) b!759428))

(assert (= (and b!759428 res!514053) b!759430))

(assert (= (and b!759430 res!514058) b!759440))

(assert (= (and b!759440 res!514052) b!759436))

(assert (= (and b!759436 res!514062) b!759434))

(assert (= (and b!759434 res!514065) b!759424))

(assert (= (and b!759424 res!514063) b!759433))

(assert (= (and b!759433 res!514057) b!759439))

(assert (= (and b!759439 c!83067) b!759429))

(assert (= (and b!759439 (not c!83067)) b!759438))

(assert (= (and b!759439 res!514054) b!759427))

(assert (= (and b!759427 res!514064) b!759437))

(assert (= (and b!759437 res!514060) b!759431))

(assert (= (and b!759431 res!514056) b!759426))

(declare-fun m!706871 () Bool)

(assert (=> b!759428 m!706871))

(declare-fun m!706873 () Bool)

(assert (=> b!759429 m!706873))

(assert (=> b!759429 m!706873))

(declare-fun m!706875 () Bool)

(assert (=> b!759429 m!706875))

(assert (=> b!759435 m!706873))

(assert (=> b!759435 m!706873))

(declare-fun m!706877 () Bool)

(assert (=> b!759435 m!706877))

(declare-fun m!706879 () Bool)

(assert (=> b!759427 m!706879))

(declare-fun m!706881 () Bool)

(assert (=> b!759427 m!706881))

(declare-fun m!706883 () Bool)

(assert (=> b!759427 m!706883))

(assert (=> b!759427 m!706881))

(declare-fun m!706885 () Bool)

(assert (=> b!759427 m!706885))

(declare-fun m!706887 () Bool)

(assert (=> b!759427 m!706887))

(declare-fun m!706889 () Bool)

(assert (=> b!759440 m!706889))

(assert (=> b!759431 m!706873))

(assert (=> b!759431 m!706873))

(declare-fun m!706891 () Bool)

(assert (=> b!759431 m!706891))

(declare-fun m!706893 () Bool)

(assert (=> b!759436 m!706893))

(assert (=> b!759424 m!706873))

(assert (=> b!759424 m!706873))

(declare-fun m!706895 () Bool)

(assert (=> b!759424 m!706895))

(assert (=> b!759424 m!706895))

(assert (=> b!759424 m!706873))

(declare-fun m!706897 () Bool)

(assert (=> b!759424 m!706897))

(assert (=> b!759438 m!706873))

(assert (=> b!759438 m!706873))

(declare-fun m!706899 () Bool)

(assert (=> b!759438 m!706899))

(declare-fun m!706901 () Bool)

(assert (=> b!759432 m!706901))

(declare-fun m!706903 () Bool)

(assert (=> start!65898 m!706903))

(declare-fun m!706905 () Bool)

(assert (=> start!65898 m!706905))

(assert (=> b!759426 m!706873))

(assert (=> b!759426 m!706873))

(declare-fun m!706907 () Bool)

(assert (=> b!759426 m!706907))

(declare-fun m!706909 () Bool)

(assert (=> b!759433 m!706909))

(declare-fun m!706911 () Bool)

(assert (=> b!759430 m!706911))

(declare-fun m!706913 () Bool)

(assert (=> b!759437 m!706913))

(declare-fun m!706915 () Bool)

(assert (=> b!759437 m!706915))

(check-sat (not b!759437) (not b!759430) (not b!759440) (not b!759428) (not b!759435) (not b!759436) (not start!65898) (not b!759431) (not b!759424) (not b!759426) (not b!759429) (not b!759427) (not b!759432) (not b!759438))
(check-sat)
