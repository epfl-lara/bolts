; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65798 () Bool)

(assert start!65798)

(declare-fun b!756193 () Bool)

(declare-datatypes ((Unit!26118 0))(
  ( (Unit!26119) )
))
(declare-fun e!421688 () Unit!26118)

(declare-fun Unit!26120 () Unit!26118)

(assert (=> b!756193 (= e!421688 Unit!26120)))

(assert (=> b!756193 false))

(declare-fun b!756194 () Bool)

(declare-fun res!511368 () Bool)

(declare-fun e!421698 () Bool)

(assert (=> b!756194 (=> (not res!511368) (not e!421698))))

(declare-datatypes ((array!41924 0))(
  ( (array!41925 (arr!20072 (Array (_ BitVec 32) (_ BitVec 64))) (size!20493 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41924)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!756194 (= res!511368 (validKeyInArray!0 (select (arr!20072 a!3186) j!159)))))

(declare-fun e!421695 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!756195 () Bool)

(declare-datatypes ((SeekEntryResult!7679 0))(
  ( (MissingZero!7679 (index!33083 (_ BitVec 32))) (Found!7679 (index!33084 (_ BitVec 32))) (Intermediate!7679 (undefined!8491 Bool) (index!33085 (_ BitVec 32)) (x!64006 (_ BitVec 32))) (Undefined!7679) (MissingVacant!7679 (index!33086 (_ BitVec 32))) )
))
(declare-fun lt!336691 () SeekEntryResult!7679)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41924 (_ BitVec 32)) SeekEntryResult!7679)

(assert (=> b!756195 (= e!421695 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20072 a!3186) j!159) a!3186 mask!3328) lt!336691))))

(declare-fun b!756196 () Bool)

(declare-fun e!421696 () Bool)

(declare-fun e!421692 () Bool)

(assert (=> b!756196 (= e!421696 e!421692)))

(declare-fun res!511374 () Bool)

(assert (=> b!756196 (=> (not res!511374) (not e!421692))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!756196 (= res!511374 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20072 a!3186) j!159) mask!3328) (select (arr!20072 a!3186) j!159) a!3186 mask!3328) lt!336691))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!756196 (= lt!336691 (Intermediate!7679 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!756197 () Bool)

(declare-fun res!511370 () Bool)

(declare-fun e!421693 () Bool)

(assert (=> b!756197 (=> (not res!511370) (not e!421693))))

(declare-fun lt!336694 () (_ BitVec 64))

(declare-fun lt!336692 () array!41924)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41924 (_ BitVec 32)) SeekEntryResult!7679)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41924 (_ BitVec 32)) SeekEntryResult!7679)

(assert (=> b!756197 (= res!511370 (= (seekEntryOrOpen!0 lt!336694 lt!336692 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336694 lt!336692 mask!3328)))))

(declare-fun b!756198 () Bool)

(declare-fun e!421691 () Bool)

(assert (=> b!756198 (= e!421691 true)))

(assert (=> b!756198 e!421693))

(declare-fun res!511358 () Bool)

(assert (=> b!756198 (=> (not res!511358) (not e!421693))))

(declare-fun lt!336696 () (_ BitVec 64))

(assert (=> b!756198 (= res!511358 (= lt!336696 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336690 () Unit!26118)

(assert (=> b!756198 (= lt!336690 e!421688)))

(declare-fun c!82799 () Bool)

(assert (=> b!756198 (= c!82799 (= lt!336696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!756199 () Bool)

(declare-fun lt!336698 () SeekEntryResult!7679)

(declare-fun lt!336687 () SeekEntryResult!7679)

(assert (=> b!756199 (= e!421693 (= lt!336698 lt!336687))))

(declare-fun b!756201 () Bool)

(declare-fun e!421687 () Bool)

(declare-fun e!421694 () Bool)

(assert (=> b!756201 (= e!421687 e!421694)))

(declare-fun res!511357 () Bool)

(assert (=> b!756201 (=> res!511357 e!421694)))

(declare-fun lt!336689 () SeekEntryResult!7679)

(assert (=> b!756201 (= res!511357 (not (= lt!336687 lt!336689)))))

(assert (=> b!756201 (= lt!336687 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20072 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!756202 () Bool)

(declare-fun res!511371 () Bool)

(assert (=> b!756202 (=> (not res!511371) (not e!421696))))

(assert (=> b!756202 (= res!511371 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20493 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20493 a!3186))))))

(declare-fun b!756203 () Bool)

(declare-fun e!421690 () Bool)

(assert (=> b!756203 (= e!421690 (not e!421687))))

(declare-fun res!511361 () Bool)

(assert (=> b!756203 (=> res!511361 e!421687)))

(declare-fun lt!336688 () SeekEntryResult!7679)

(assert (=> b!756203 (= res!511361 (or (not (is-Intermediate!7679 lt!336688)) (bvslt x!1131 (x!64006 lt!336688)) (not (= x!1131 (x!64006 lt!336688))) (not (= index!1321 (index!33085 lt!336688)))))))

(declare-fun e!421697 () Bool)

(assert (=> b!756203 e!421697))

(declare-fun res!511359 () Bool)

(assert (=> b!756203 (=> (not res!511359) (not e!421697))))

(assert (=> b!756203 (= res!511359 (= lt!336698 lt!336689))))

(assert (=> b!756203 (= lt!336689 (Found!7679 j!159))))

(assert (=> b!756203 (= lt!336698 (seekEntryOrOpen!0 (select (arr!20072 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41924 (_ BitVec 32)) Bool)

(assert (=> b!756203 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!336697 () Unit!26118)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41924 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26118)

(assert (=> b!756203 (= lt!336697 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!756204 () Bool)

(declare-fun res!511356 () Bool)

(assert (=> b!756204 (=> (not res!511356) (not e!421698))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41924 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!756204 (= res!511356 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!756205 () Bool)

(assert (=> b!756205 (= e!421695 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20072 a!3186) j!159) a!3186 mask!3328) (Found!7679 j!159)))))

(declare-fun b!756206 () Bool)

(declare-fun res!511365 () Bool)

(assert (=> b!756206 (=> (not res!511365) (not e!421696))))

(assert (=> b!756206 (= res!511365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!511360 () Bool)

(assert (=> start!65798 (=> (not res!511360) (not e!421698))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65798 (= res!511360 (validMask!0 mask!3328))))

(assert (=> start!65798 e!421698))

(assert (=> start!65798 true))

(declare-fun array_inv!15846 (array!41924) Bool)

(assert (=> start!65798 (array_inv!15846 a!3186)))

(declare-fun b!756200 () Bool)

(declare-fun res!511364 () Bool)

(assert (=> b!756200 (=> (not res!511364) (not e!421696))))

(declare-datatypes ((List!14127 0))(
  ( (Nil!14124) (Cons!14123 (h!15195 (_ BitVec 64)) (t!20450 List!14127)) )
))
(declare-fun arrayNoDuplicates!0 (array!41924 (_ BitVec 32) List!14127) Bool)

(assert (=> b!756200 (= res!511364 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14124))))

(declare-fun b!756207 () Bool)

(declare-fun res!511373 () Bool)

(assert (=> b!756207 (=> (not res!511373) (not e!421698))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!756207 (= res!511373 (and (= (size!20493 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20493 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20493 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!756208 () Bool)

(assert (=> b!756208 (= e!421697 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20072 a!3186) j!159) a!3186 mask!3328) lt!336689))))

(declare-fun b!756209 () Bool)

(assert (=> b!756209 (= e!421692 e!421690)))

(declare-fun res!511372 () Bool)

(assert (=> b!756209 (=> (not res!511372) (not e!421690))))

(declare-fun lt!336693 () SeekEntryResult!7679)

(assert (=> b!756209 (= res!511372 (= lt!336693 lt!336688))))

(assert (=> b!756209 (= lt!336688 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336694 lt!336692 mask!3328))))

(assert (=> b!756209 (= lt!336693 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336694 mask!3328) lt!336694 lt!336692 mask!3328))))

(assert (=> b!756209 (= lt!336694 (select (store (arr!20072 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!756209 (= lt!336692 (array!41925 (store (arr!20072 a!3186) i!1173 k!2102) (size!20493 a!3186)))))

(declare-fun b!756210 () Bool)

(declare-fun res!511369 () Bool)

(assert (=> b!756210 (=> (not res!511369) (not e!421692))))

(assert (=> b!756210 (= res!511369 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20072 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!756211 () Bool)

(declare-fun res!511363 () Bool)

(assert (=> b!756211 (=> (not res!511363) (not e!421698))))

(assert (=> b!756211 (= res!511363 (validKeyInArray!0 k!2102))))

(declare-fun b!756212 () Bool)

(declare-fun Unit!26121 () Unit!26118)

(assert (=> b!756212 (= e!421688 Unit!26121)))

(declare-fun b!756213 () Bool)

(assert (=> b!756213 (= e!421694 e!421691)))

(declare-fun res!511366 () Bool)

(assert (=> b!756213 (=> res!511366 e!421691)))

(assert (=> b!756213 (= res!511366 (= lt!336696 lt!336694))))

(assert (=> b!756213 (= lt!336696 (select (store (arr!20072 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!756214 () Bool)

(assert (=> b!756214 (= e!421698 e!421696)))

(declare-fun res!511362 () Bool)

(assert (=> b!756214 (=> (not res!511362) (not e!421696))))

(declare-fun lt!336695 () SeekEntryResult!7679)

(assert (=> b!756214 (= res!511362 (or (= lt!336695 (MissingZero!7679 i!1173)) (= lt!336695 (MissingVacant!7679 i!1173))))))

(assert (=> b!756214 (= lt!336695 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!756215 () Bool)

(declare-fun res!511367 () Bool)

(assert (=> b!756215 (=> (not res!511367) (not e!421692))))

(assert (=> b!756215 (= res!511367 e!421695)))

(declare-fun c!82800 () Bool)

(assert (=> b!756215 (= c!82800 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!65798 res!511360) b!756207))

(assert (= (and b!756207 res!511373) b!756194))

(assert (= (and b!756194 res!511368) b!756211))

(assert (= (and b!756211 res!511363) b!756204))

(assert (= (and b!756204 res!511356) b!756214))

(assert (= (and b!756214 res!511362) b!756206))

(assert (= (and b!756206 res!511365) b!756200))

(assert (= (and b!756200 res!511364) b!756202))

(assert (= (and b!756202 res!511371) b!756196))

(assert (= (and b!756196 res!511374) b!756210))

(assert (= (and b!756210 res!511369) b!756215))

(assert (= (and b!756215 c!82800) b!756195))

(assert (= (and b!756215 (not c!82800)) b!756205))

(assert (= (and b!756215 res!511367) b!756209))

(assert (= (and b!756209 res!511372) b!756203))

(assert (= (and b!756203 res!511359) b!756208))

(assert (= (and b!756203 (not res!511361)) b!756201))

(assert (= (and b!756201 (not res!511357)) b!756213))

(assert (= (and b!756213 (not res!511366)) b!756198))

(assert (= (and b!756198 c!82799) b!756193))

(assert (= (and b!756198 (not c!82799)) b!756212))

(assert (= (and b!756198 res!511358) b!756197))

(assert (= (and b!756197 res!511370) b!756199))

(declare-fun m!704277 () Bool)

(assert (=> b!756196 m!704277))

(assert (=> b!756196 m!704277))

(declare-fun m!704279 () Bool)

(assert (=> b!756196 m!704279))

(assert (=> b!756196 m!704279))

(assert (=> b!756196 m!704277))

(declare-fun m!704281 () Bool)

(assert (=> b!756196 m!704281))

(assert (=> b!756205 m!704277))

(assert (=> b!756205 m!704277))

(declare-fun m!704283 () Bool)

(assert (=> b!756205 m!704283))

(declare-fun m!704285 () Bool)

(assert (=> b!756211 m!704285))

(declare-fun m!704287 () Bool)

(assert (=> b!756214 m!704287))

(assert (=> b!756194 m!704277))

(assert (=> b!756194 m!704277))

(declare-fun m!704289 () Bool)

(assert (=> b!756194 m!704289))

(declare-fun m!704291 () Bool)

(assert (=> b!756206 m!704291))

(declare-fun m!704293 () Bool)

(assert (=> b!756210 m!704293))

(declare-fun m!704295 () Bool)

(assert (=> b!756209 m!704295))

(declare-fun m!704297 () Bool)

(assert (=> b!756209 m!704297))

(assert (=> b!756209 m!704295))

(declare-fun m!704299 () Bool)

(assert (=> b!756209 m!704299))

(declare-fun m!704301 () Bool)

(assert (=> b!756209 m!704301))

(declare-fun m!704303 () Bool)

(assert (=> b!756209 m!704303))

(assert (=> b!756208 m!704277))

(assert (=> b!756208 m!704277))

(declare-fun m!704305 () Bool)

(assert (=> b!756208 m!704305))

(assert (=> b!756203 m!704277))

(assert (=> b!756203 m!704277))

(declare-fun m!704307 () Bool)

(assert (=> b!756203 m!704307))

(declare-fun m!704309 () Bool)

(assert (=> b!756203 m!704309))

(declare-fun m!704311 () Bool)

(assert (=> b!756203 m!704311))

(assert (=> b!756195 m!704277))

(assert (=> b!756195 m!704277))

(declare-fun m!704313 () Bool)

(assert (=> b!756195 m!704313))

(declare-fun m!704315 () Bool)

(assert (=> b!756200 m!704315))

(declare-fun m!704317 () Bool)

(assert (=> b!756204 m!704317))

(assert (=> b!756201 m!704277))

(assert (=> b!756201 m!704277))

(assert (=> b!756201 m!704283))

(declare-fun m!704319 () Bool)

(assert (=> start!65798 m!704319))

(declare-fun m!704321 () Bool)

(assert (=> start!65798 m!704321))

(declare-fun m!704323 () Bool)

(assert (=> b!756197 m!704323))

(declare-fun m!704325 () Bool)

(assert (=> b!756197 m!704325))

(assert (=> b!756213 m!704297))

(declare-fun m!704327 () Bool)

(assert (=> b!756213 m!704327))

(push 1)

