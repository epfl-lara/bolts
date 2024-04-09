; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45620 () Bool)

(assert start!45620)

(declare-fun b!502288 () Bool)

(declare-fun res!303851 () Bool)

(declare-fun e!294217 () Bool)

(assert (=> b!502288 (=> (not res!303851) (not e!294217))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!502288 (= res!303851 (validKeyInArray!0 k!2280))))

(declare-fun b!502289 () Bool)

(declare-fun e!294216 () Bool)

(declare-fun e!294209 () Bool)

(assert (=> b!502289 (= e!294216 (not e!294209))))

(declare-fun res!303853 () Bool)

(assert (=> b!502289 (=> res!303853 e!294209)))

(declare-datatypes ((SeekEntryResult!4019 0))(
  ( (MissingZero!4019 (index!18264 (_ BitVec 32))) (Found!4019 (index!18265 (_ BitVec 32))) (Intermediate!4019 (undefined!4831 Bool) (index!18266 (_ BitVec 32)) (x!47319 (_ BitVec 32))) (Undefined!4019) (MissingVacant!4019 (index!18267 (_ BitVec 32))) )
))
(declare-fun lt!228377 () SeekEntryResult!4019)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!228374 () (_ BitVec 32))

(declare-datatypes ((array!32336 0))(
  ( (array!32337 (arr!15545 (Array (_ BitVec 32) (_ BitVec 64))) (size!15909 (_ BitVec 32))) )
))
(declare-fun lt!228368 () array!32336)

(declare-fun lt!228375 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32336 (_ BitVec 32)) SeekEntryResult!4019)

(assert (=> b!502289 (= res!303853 (= lt!228377 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228374 lt!228375 lt!228368 mask!3524)))))

(declare-fun a!3235 () array!32336)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!228371 () (_ BitVec 32))

(assert (=> b!502289 (= lt!228377 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228371 (select (arr!15545 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!502289 (= lt!228374 (toIndex!0 lt!228375 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!502289 (= lt!228375 (select (store (arr!15545 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!502289 (= lt!228371 (toIndex!0 (select (arr!15545 a!3235) j!176) mask!3524))))

(assert (=> b!502289 (= lt!228368 (array!32337 (store (arr!15545 a!3235) i!1204 k!2280) (size!15909 a!3235)))))

(declare-fun e!294214 () Bool)

(assert (=> b!502289 e!294214))

(declare-fun res!303856 () Bool)

(assert (=> b!502289 (=> (not res!303856) (not e!294214))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32336 (_ BitVec 32)) Bool)

(assert (=> b!502289 (= res!303856 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15166 0))(
  ( (Unit!15167) )
))
(declare-fun lt!228370 () Unit!15166)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32336 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15166)

(assert (=> b!502289 (= lt!228370 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!502290 () Bool)

(declare-fun res!303854 () Bool)

(assert (=> b!502290 (=> (not res!303854) (not e!294217))))

(assert (=> b!502290 (= res!303854 (and (= (size!15909 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15909 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15909 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!502291 () Bool)

(declare-fun e!294211 () Bool)

(assert (=> b!502291 (= e!294209 e!294211)))

(declare-fun res!303862 () Bool)

(assert (=> b!502291 (=> res!303862 e!294211)))

(assert (=> b!502291 (= res!303862 (or (bvsgt (x!47319 lt!228377) #b01111111111111111111111111111110) (bvslt lt!228371 #b00000000000000000000000000000000) (bvsge lt!228371 (size!15909 a!3235)) (bvslt (index!18266 lt!228377) #b00000000000000000000000000000000) (bvsge (index!18266 lt!228377) (size!15909 a!3235)) (not (= lt!228377 (Intermediate!4019 false (index!18266 lt!228377) (x!47319 lt!228377))))))))

(assert (=> b!502291 (= (index!18266 lt!228377) i!1204)))

(declare-fun lt!228372 () Unit!15166)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32336 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15166)

(assert (=> b!502291 (= lt!228372 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!228371 #b00000000000000000000000000000000 (index!18266 lt!228377) (x!47319 lt!228377) mask!3524))))

(assert (=> b!502291 (and (or (= (select (arr!15545 a!3235) (index!18266 lt!228377)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15545 a!3235) (index!18266 lt!228377)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15545 a!3235) (index!18266 lt!228377)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15545 a!3235) (index!18266 lt!228377)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228376 () Unit!15166)

(declare-fun e!294215 () Unit!15166)

(assert (=> b!502291 (= lt!228376 e!294215)))

(declare-fun c!59498 () Bool)

(assert (=> b!502291 (= c!59498 (= (select (arr!15545 a!3235) (index!18266 lt!228377)) (select (arr!15545 a!3235) j!176)))))

(assert (=> b!502291 (and (bvslt (x!47319 lt!228377) #b01111111111111111111111111111110) (or (= (select (arr!15545 a!3235) (index!18266 lt!228377)) (select (arr!15545 a!3235) j!176)) (= (select (arr!15545 a!3235) (index!18266 lt!228377)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15545 a!3235) (index!18266 lt!228377)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!502292 () Bool)

(assert (=> b!502292 (= e!294217 e!294216)))

(declare-fun res!303850 () Bool)

(assert (=> b!502292 (=> (not res!303850) (not e!294216))))

(declare-fun lt!228373 () SeekEntryResult!4019)

(assert (=> b!502292 (= res!303850 (or (= lt!228373 (MissingZero!4019 i!1204)) (= lt!228373 (MissingVacant!4019 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32336 (_ BitVec 32)) SeekEntryResult!4019)

(assert (=> b!502292 (= lt!228373 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!502293 () Bool)

(declare-fun res!303861 () Bool)

(assert (=> b!502293 (=> (not res!303861) (not e!294216))))

(assert (=> b!502293 (= res!303861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!502294 () Bool)

(declare-fun Unit!15168 () Unit!15166)

(assert (=> b!502294 (= e!294215 Unit!15168)))

(declare-fun lt!228369 () Unit!15166)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32336 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15166)

(assert (=> b!502294 (= lt!228369 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!228371 #b00000000000000000000000000000000 (index!18266 lt!228377) (x!47319 lt!228377) mask!3524))))

(declare-fun res!303860 () Bool)

(assert (=> b!502294 (= res!303860 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228371 lt!228375 lt!228368 mask!3524) (Intermediate!4019 false (index!18266 lt!228377) (x!47319 lt!228377))))))

(declare-fun e!294210 () Bool)

(assert (=> b!502294 (=> (not res!303860) (not e!294210))))

(assert (=> b!502294 e!294210))

(declare-fun b!502295 () Bool)

(declare-fun res!303859 () Bool)

(assert (=> b!502295 (=> (not res!303859) (not e!294217))))

(declare-fun arrayContainsKey!0 (array!32336 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!502295 (= res!303859 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!303849 () Bool)

(assert (=> start!45620 (=> (not res!303849) (not e!294217))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45620 (= res!303849 (validMask!0 mask!3524))))

(assert (=> start!45620 e!294217))

(assert (=> start!45620 true))

(declare-fun array_inv!11319 (array!32336) Bool)

(assert (=> start!45620 (array_inv!11319 a!3235)))

(declare-fun b!502296 () Bool)

(declare-fun res!303863 () Bool)

(assert (=> b!502296 (=> (not res!303863) (not e!294216))))

(declare-datatypes ((List!9756 0))(
  ( (Nil!9753) (Cons!9752 (h!10629 (_ BitVec 64)) (t!15992 List!9756)) )
))
(declare-fun arrayNoDuplicates!0 (array!32336 (_ BitVec 32) List!9756) Bool)

(assert (=> b!502296 (= res!303863 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9753))))

(declare-fun b!502297 () Bool)

(declare-fun res!303857 () Bool)

(assert (=> b!502297 (=> res!303857 e!294209)))

(assert (=> b!502297 (= res!303857 (or (undefined!4831 lt!228377) (not (is-Intermediate!4019 lt!228377))))))

(declare-fun b!502298 () Bool)

(assert (=> b!502298 (= e!294210 false)))

(declare-fun b!502299 () Bool)

(declare-fun res!303852 () Bool)

(assert (=> b!502299 (=> res!303852 e!294211)))

(declare-fun e!294212 () Bool)

(assert (=> b!502299 (= res!303852 e!294212)))

(declare-fun res!303858 () Bool)

(assert (=> b!502299 (=> (not res!303858) (not e!294212))))

(assert (=> b!502299 (= res!303858 (bvsgt #b00000000000000000000000000000000 (x!47319 lt!228377)))))

(declare-fun b!502300 () Bool)

(assert (=> b!502300 (= e!294211 true)))

(declare-fun lt!228367 () SeekEntryResult!4019)

(assert (=> b!502300 (= lt!228367 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228371 lt!228375 lt!228368 mask!3524))))

(declare-fun b!502301 () Bool)

(declare-fun Unit!15169 () Unit!15166)

(assert (=> b!502301 (= e!294215 Unit!15169)))

(declare-fun b!502302 () Bool)

(assert (=> b!502302 (= e!294214 (= (seekEntryOrOpen!0 (select (arr!15545 a!3235) j!176) a!3235 mask!3524) (Found!4019 j!176)))))

(declare-fun b!502303 () Bool)

(declare-fun res!303855 () Bool)

(assert (=> b!502303 (=> (not res!303855) (not e!294217))))

(assert (=> b!502303 (= res!303855 (validKeyInArray!0 (select (arr!15545 a!3235) j!176)))))

(declare-fun b!502304 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32336 (_ BitVec 32)) SeekEntryResult!4019)

(assert (=> b!502304 (= e!294212 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228371 (index!18266 lt!228377) (select (arr!15545 a!3235) j!176) a!3235 mask!3524) (Found!4019 j!176))))))

(assert (= (and start!45620 res!303849) b!502290))

(assert (= (and b!502290 res!303854) b!502303))

(assert (= (and b!502303 res!303855) b!502288))

(assert (= (and b!502288 res!303851) b!502295))

(assert (= (and b!502295 res!303859) b!502292))

(assert (= (and b!502292 res!303850) b!502293))

(assert (= (and b!502293 res!303861) b!502296))

(assert (= (and b!502296 res!303863) b!502289))

(assert (= (and b!502289 res!303856) b!502302))

(assert (= (and b!502289 (not res!303853)) b!502297))

(assert (= (and b!502297 (not res!303857)) b!502291))

(assert (= (and b!502291 c!59498) b!502294))

(assert (= (and b!502291 (not c!59498)) b!502301))

(assert (= (and b!502294 res!303860) b!502298))

(assert (= (and b!502291 (not res!303862)) b!502299))

(assert (= (and b!502299 res!303858) b!502304))

(assert (= (and b!502299 (not res!303852)) b!502300))

(declare-fun m!483255 () Bool)

(assert (=> b!502291 m!483255))

(declare-fun m!483257 () Bool)

(assert (=> b!502291 m!483257))

(declare-fun m!483259 () Bool)

(assert (=> b!502291 m!483259))

(declare-fun m!483261 () Bool)

(assert (=> start!45620 m!483261))

(declare-fun m!483263 () Bool)

(assert (=> start!45620 m!483263))

(declare-fun m!483265 () Bool)

(assert (=> b!502293 m!483265))

(declare-fun m!483267 () Bool)

(assert (=> b!502288 m!483267))

(assert (=> b!502304 m!483259))

(assert (=> b!502304 m!483259))

(declare-fun m!483269 () Bool)

(assert (=> b!502304 m!483269))

(assert (=> b!502289 m!483259))

(declare-fun m!483271 () Bool)

(assert (=> b!502289 m!483271))

(declare-fun m!483273 () Bool)

(assert (=> b!502289 m!483273))

(declare-fun m!483275 () Bool)

(assert (=> b!502289 m!483275))

(declare-fun m!483277 () Bool)

(assert (=> b!502289 m!483277))

(declare-fun m!483279 () Bool)

(assert (=> b!502289 m!483279))

(assert (=> b!502289 m!483259))

(declare-fun m!483281 () Bool)

(assert (=> b!502289 m!483281))

(assert (=> b!502289 m!483259))

(declare-fun m!483283 () Bool)

(assert (=> b!502289 m!483283))

(declare-fun m!483285 () Bool)

(assert (=> b!502289 m!483285))

(declare-fun m!483287 () Bool)

(assert (=> b!502294 m!483287))

(declare-fun m!483289 () Bool)

(assert (=> b!502294 m!483289))

(declare-fun m!483291 () Bool)

(assert (=> b!502295 m!483291))

(declare-fun m!483293 () Bool)

(assert (=> b!502292 m!483293))

(assert (=> b!502300 m!483289))

(declare-fun m!483295 () Bool)

(assert (=> b!502296 m!483295))

(assert (=> b!502303 m!483259))

(assert (=> b!502303 m!483259))

(declare-fun m!483297 () Bool)

(assert (=> b!502303 m!483297))

(assert (=> b!502302 m!483259))

(assert (=> b!502302 m!483259))

(declare-fun m!483299 () Bool)

(assert (=> b!502302 m!483299))

(push 1)

