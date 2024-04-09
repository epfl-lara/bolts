; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65536 () Bool)

(assert start!65536)

(declare-fun b!747404 () Bool)

(declare-fun res!504148 () Bool)

(declare-fun e!417307 () Bool)

(assert (=> b!747404 (=> (not res!504148) (not e!417307))))

(declare-datatypes ((array!41662 0))(
  ( (array!41663 (arr!19941 (Array (_ BitVec 32) (_ BitVec 64))) (size!20362 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41662)

(declare-datatypes ((List!13996 0))(
  ( (Nil!13993) (Cons!13992 (h!15064 (_ BitVec 64)) (t!20319 List!13996)) )
))
(declare-fun arrayNoDuplicates!0 (array!41662 (_ BitVec 32) List!13996) Bool)

(assert (=> b!747404 (= res!504148 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13993))))

(declare-fun b!747405 () Bool)

(declare-fun res!504156 () Bool)

(declare-fun e!417301 () Bool)

(assert (=> b!747405 (=> (not res!504156) (not e!417301))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!747405 (= res!504156 (validKeyInArray!0 k!2102))))

(declare-fun b!747406 () Bool)

(declare-fun res!504150 () Bool)

(assert (=> b!747406 (=> (not res!504150) (not e!417301))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!747406 (= res!504150 (and (= (size!20362 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20362 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20362 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!747407 () Bool)

(declare-fun res!504147 () Bool)

(declare-fun e!417308 () Bool)

(assert (=> b!747407 (=> res!504147 e!417308)))

(declare-fun lt!332241 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!747407 (= res!504147 (= (select (store (arr!19941 a!3186) i!1173 k!2102) index!1321) lt!332241))))

(declare-fun b!747408 () Bool)

(declare-fun res!504141 () Bool)

(assert (=> b!747408 (=> (not res!504141) (not e!417307))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!747408 (= res!504141 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20362 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20362 a!3186))))))

(declare-fun b!747409 () Bool)

(declare-datatypes ((Unit!25594 0))(
  ( (Unit!25595) )
))
(declare-fun e!417305 () Unit!25594)

(declare-fun Unit!25596 () Unit!25594)

(assert (=> b!747409 (= e!417305 Unit!25596)))

(assert (=> b!747409 false))

(declare-fun b!747410 () Bool)

(declare-fun res!504142 () Bool)

(assert (=> b!747410 (=> (not res!504142) (not e!417301))))

(assert (=> b!747410 (= res!504142 (validKeyInArray!0 (select (arr!19941 a!3186) j!159)))))

(declare-fun b!747411 () Bool)

(assert (=> b!747411 (= e!417301 e!417307)))

(declare-fun res!504139 () Bool)

(assert (=> b!747411 (=> (not res!504139) (not e!417307))))

(declare-datatypes ((SeekEntryResult!7548 0))(
  ( (MissingZero!7548 (index!32559 (_ BitVec 32))) (Found!7548 (index!32560 (_ BitVec 32))) (Intermediate!7548 (undefined!8360 Bool) (index!32561 (_ BitVec 32)) (x!63531 (_ BitVec 32))) (Undefined!7548) (MissingVacant!7548 (index!32562 (_ BitVec 32))) )
))
(declare-fun lt!332242 () SeekEntryResult!7548)

(assert (=> b!747411 (= res!504139 (or (= lt!332242 (MissingZero!7548 i!1173)) (= lt!332242 (MissingVacant!7548 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41662 (_ BitVec 32)) SeekEntryResult!7548)

(assert (=> b!747411 (= lt!332242 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!747412 () Bool)

(declare-fun res!504152 () Bool)

(assert (=> b!747412 (=> (not res!504152) (not e!417301))))

(declare-fun arrayContainsKey!0 (array!41662 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!747412 (= res!504152 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!747413 () Bool)

(declare-fun res!504143 () Bool)

(declare-fun e!417302 () Bool)

(assert (=> b!747413 (=> (not res!504143) (not e!417302))))

(assert (=> b!747413 (= res!504143 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19941 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!747414 () Bool)

(assert (=> b!747414 (= e!417307 e!417302)))

(declare-fun res!504151 () Bool)

(assert (=> b!747414 (=> (not res!504151) (not e!417302))))

(declare-fun lt!332237 () SeekEntryResult!7548)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41662 (_ BitVec 32)) SeekEntryResult!7548)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!747414 (= res!504151 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19941 a!3186) j!159) mask!3328) (select (arr!19941 a!3186) j!159) a!3186 mask!3328) lt!332237))))

(assert (=> b!747414 (= lt!332237 (Intermediate!7548 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!747415 () Bool)

(declare-fun e!417306 () Bool)

(assert (=> b!747415 (= e!417306 (validKeyInArray!0 lt!332241))))

(declare-fun b!747416 () Bool)

(declare-fun res!504146 () Bool)

(assert (=> b!747416 (=> (not res!504146) (not e!417302))))

(declare-fun e!417309 () Bool)

(assert (=> b!747416 (= res!504146 e!417309)))

(declare-fun c!82013 () Bool)

(assert (=> b!747416 (= c!82013 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!747417 () Bool)

(declare-fun res!504149 () Bool)

(assert (=> b!747417 (=> (not res!504149) (not e!417307))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41662 (_ BitVec 32)) Bool)

(assert (=> b!747417 (= res!504149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!747418 () Bool)

(declare-fun e!417303 () Bool)

(assert (=> b!747418 (= e!417303 (not e!417308))))

(declare-fun res!504140 () Bool)

(assert (=> b!747418 (=> res!504140 e!417308)))

(declare-fun lt!332245 () SeekEntryResult!7548)

(assert (=> b!747418 (= res!504140 (or (not (is-Intermediate!7548 lt!332245)) (bvslt x!1131 (x!63531 lt!332245)) (not (= x!1131 (x!63531 lt!332245))) (not (= index!1321 (index!32561 lt!332245)))))))

(declare-fun e!417304 () Bool)

(assert (=> b!747418 e!417304))

(declare-fun res!504153 () Bool)

(assert (=> b!747418 (=> (not res!504153) (not e!417304))))

(declare-fun lt!332243 () SeekEntryResult!7548)

(declare-fun lt!332240 () SeekEntryResult!7548)

(assert (=> b!747418 (= res!504153 (= lt!332243 lt!332240))))

(assert (=> b!747418 (= lt!332240 (Found!7548 j!159))))

(assert (=> b!747418 (= lt!332243 (seekEntryOrOpen!0 (select (arr!19941 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!747418 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332244 () Unit!25594)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41662 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25594)

(assert (=> b!747418 (= lt!332244 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!747419 () Bool)

(assert (=> b!747419 (= e!417309 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19941 a!3186) j!159) a!3186 mask!3328) lt!332237))))

(declare-fun b!747420 () Bool)

(declare-fun res!504154 () Bool)

(assert (=> b!747420 (=> res!504154 e!417308)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41662 (_ BitVec 32)) SeekEntryResult!7548)

(assert (=> b!747420 (= res!504154 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19941 a!3186) j!159) a!3186 mask!3328) lt!332240)))))

(declare-fun b!747421 () Bool)

(assert (=> b!747421 (= e!417308 e!417306)))

(declare-fun res!504155 () Bool)

(assert (=> b!747421 (=> res!504155 e!417306)))

(assert (=> b!747421 (= res!504155 (bvslt mask!3328 #b00000000000000000000000000000000))))

(assert (=> b!747421 (= (select (store (arr!19941 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332239 () Unit!25594)

(assert (=> b!747421 (= lt!332239 e!417305)))

(declare-fun c!82014 () Bool)

(assert (=> b!747421 (= c!82014 (= (select (store (arr!19941 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!747422 () Bool)

(assert (=> b!747422 (= e!417309 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19941 a!3186) j!159) a!3186 mask!3328) (Found!7548 j!159)))))

(declare-fun res!504144 () Bool)

(assert (=> start!65536 (=> (not res!504144) (not e!417301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65536 (= res!504144 (validMask!0 mask!3328))))

(assert (=> start!65536 e!417301))

(assert (=> start!65536 true))

(declare-fun array_inv!15715 (array!41662) Bool)

(assert (=> start!65536 (array_inv!15715 a!3186)))

(declare-fun b!747423 () Bool)

(assert (=> b!747423 (= e!417302 e!417303)))

(declare-fun res!504145 () Bool)

(assert (=> b!747423 (=> (not res!504145) (not e!417303))))

(declare-fun lt!332246 () SeekEntryResult!7548)

(assert (=> b!747423 (= res!504145 (= lt!332246 lt!332245))))

(declare-fun lt!332238 () array!41662)

(assert (=> b!747423 (= lt!332245 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332241 lt!332238 mask!3328))))

(assert (=> b!747423 (= lt!332246 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332241 mask!3328) lt!332241 lt!332238 mask!3328))))

(assert (=> b!747423 (= lt!332241 (select (store (arr!19941 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!747423 (= lt!332238 (array!41663 (store (arr!19941 a!3186) i!1173 k!2102) (size!20362 a!3186)))))

(declare-fun b!747424 () Bool)

(declare-fun Unit!25597 () Unit!25594)

(assert (=> b!747424 (= e!417305 Unit!25597)))

(declare-fun b!747425 () Bool)

(assert (=> b!747425 (= e!417304 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19941 a!3186) j!159) a!3186 mask!3328) lt!332240))))

(assert (= (and start!65536 res!504144) b!747406))

(assert (= (and b!747406 res!504150) b!747410))

(assert (= (and b!747410 res!504142) b!747405))

(assert (= (and b!747405 res!504156) b!747412))

(assert (= (and b!747412 res!504152) b!747411))

(assert (= (and b!747411 res!504139) b!747417))

(assert (= (and b!747417 res!504149) b!747404))

(assert (= (and b!747404 res!504148) b!747408))

(assert (= (and b!747408 res!504141) b!747414))

(assert (= (and b!747414 res!504151) b!747413))

(assert (= (and b!747413 res!504143) b!747416))

(assert (= (and b!747416 c!82013) b!747419))

(assert (= (and b!747416 (not c!82013)) b!747422))

(assert (= (and b!747416 res!504146) b!747423))

(assert (= (and b!747423 res!504145) b!747418))

(assert (= (and b!747418 res!504153) b!747425))

(assert (= (and b!747418 (not res!504140)) b!747420))

(assert (= (and b!747420 (not res!504154)) b!747407))

(assert (= (and b!747407 (not res!504147)) b!747421))

(assert (= (and b!747421 c!82014) b!747409))

(assert (= (and b!747421 (not c!82014)) b!747424))

(assert (= (and b!747421 (not res!504155)) b!747415))

(declare-fun m!697561 () Bool)

(assert (=> b!747419 m!697561))

(assert (=> b!747419 m!697561))

(declare-fun m!697563 () Bool)

(assert (=> b!747419 m!697563))

(declare-fun m!697565 () Bool)

(assert (=> b!747405 m!697565))

(assert (=> b!747414 m!697561))

(assert (=> b!747414 m!697561))

(declare-fun m!697567 () Bool)

(assert (=> b!747414 m!697567))

(assert (=> b!747414 m!697567))

(assert (=> b!747414 m!697561))

(declare-fun m!697569 () Bool)

(assert (=> b!747414 m!697569))

(assert (=> b!747418 m!697561))

(assert (=> b!747418 m!697561))

(declare-fun m!697571 () Bool)

(assert (=> b!747418 m!697571))

(declare-fun m!697573 () Bool)

(assert (=> b!747418 m!697573))

(declare-fun m!697575 () Bool)

(assert (=> b!747418 m!697575))

(declare-fun m!697577 () Bool)

(assert (=> start!65536 m!697577))

(declare-fun m!697579 () Bool)

(assert (=> start!65536 m!697579))

(assert (=> b!747420 m!697561))

(assert (=> b!747420 m!697561))

(declare-fun m!697581 () Bool)

(assert (=> b!747420 m!697581))

(declare-fun m!697583 () Bool)

(assert (=> b!747415 m!697583))

(declare-fun m!697585 () Bool)

(assert (=> b!747413 m!697585))

(assert (=> b!747422 m!697561))

(assert (=> b!747422 m!697561))

(assert (=> b!747422 m!697581))

(declare-fun m!697587 () Bool)

(assert (=> b!747412 m!697587))

(assert (=> b!747425 m!697561))

(assert (=> b!747425 m!697561))

(declare-fun m!697589 () Bool)

(assert (=> b!747425 m!697589))

(declare-fun m!697591 () Bool)

(assert (=> b!747423 m!697591))

(declare-fun m!697593 () Bool)

(assert (=> b!747423 m!697593))

(declare-fun m!697595 () Bool)

(assert (=> b!747423 m!697595))

(assert (=> b!747423 m!697593))

(declare-fun m!697597 () Bool)

(assert (=> b!747423 m!697597))

(declare-fun m!697599 () Bool)

(assert (=> b!747423 m!697599))

(assert (=> b!747421 m!697591))

(declare-fun m!697601 () Bool)

(assert (=> b!747421 m!697601))

(declare-fun m!697603 () Bool)

(assert (=> b!747411 m!697603))

(assert (=> b!747407 m!697591))

(assert (=> b!747407 m!697601))

(assert (=> b!747410 m!697561))

(assert (=> b!747410 m!697561))

(declare-fun m!697605 () Bool)

(assert (=> b!747410 m!697605))

(declare-fun m!697607 () Bool)

(assert (=> b!747417 m!697607))

(declare-fun m!697609 () Bool)

(assert (=> b!747404 m!697609))

(push 1)

