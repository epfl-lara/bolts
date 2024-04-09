; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65282 () Bool)

(assert start!65282)

(declare-fun b!740162 () Bool)

(declare-fun res!497838 () Bool)

(declare-fun e!413849 () Bool)

(assert (=> b!740162 (=> (not res!497838) (not e!413849))))

(declare-datatypes ((array!41408 0))(
  ( (array!41409 (arr!19814 (Array (_ BitVec 32) (_ BitVec 64))) (size!20235 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41408)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!740162 (= res!497838 (and (= (size!20235 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20235 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20235 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!740163 () Bool)

(declare-fun res!497835 () Bool)

(assert (=> b!740163 (=> (not res!497835) (not e!413849))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41408 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!740163 (= res!497835 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!740164 () Bool)

(declare-fun res!497836 () Bool)

(assert (=> b!740164 (=> (not res!497836) (not e!413849))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!740164 (= res!497836 (validKeyInArray!0 (select (arr!19814 a!3186) j!159)))))

(declare-fun b!740165 () Bool)

(declare-fun res!497844 () Bool)

(declare-fun e!413852 () Bool)

(assert (=> b!740165 (=> res!497844 e!413852)))

(declare-datatypes ((SeekEntryResult!7421 0))(
  ( (MissingZero!7421 (index!32051 (_ BitVec 32))) (Found!7421 (index!32052 (_ BitVec 32))) (Intermediate!7421 (undefined!8233 Bool) (index!32053 (_ BitVec 32)) (x!63060 (_ BitVec 32))) (Undefined!7421) (MissingVacant!7421 (index!32054 (_ BitVec 32))) )
))
(declare-fun lt!328812 () SeekEntryResult!7421)

(declare-fun lt!328802 () array!41408)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!328801 () (_ BitVec 32))

(declare-fun lt!328814 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41408 (_ BitVec 32)) SeekEntryResult!7421)

(assert (=> b!740165 (= res!497844 (not (= lt!328812 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328801 lt!328814 lt!328802 mask!3328))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!740166 () Bool)

(declare-fun e!413848 () Bool)

(declare-fun lt!328807 () SeekEntryResult!7421)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41408 (_ BitVec 32)) SeekEntryResult!7421)

(assert (=> b!740166 (= e!413848 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328801 resIntermediateIndex!5 (select (arr!19814 a!3186) j!159) a!3186 mask!3328) lt!328807)))))

(declare-fun b!740167 () Bool)

(declare-fun e!413853 () Bool)

(assert (=> b!740167 (= e!413849 e!413853)))

(declare-fun res!497830 () Bool)

(assert (=> b!740167 (=> (not res!497830) (not e!413853))))

(declare-fun lt!328805 () SeekEntryResult!7421)

(assert (=> b!740167 (= res!497830 (or (= lt!328805 (MissingZero!7421 i!1173)) (= lt!328805 (MissingVacant!7421 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41408 (_ BitVec 32)) SeekEntryResult!7421)

(assert (=> b!740167 (= lt!328805 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!740168 () Bool)

(declare-fun res!497841 () Bool)

(assert (=> b!740168 (=> (not res!497841) (not e!413853))))

(declare-datatypes ((List!13869 0))(
  ( (Nil!13866) (Cons!13865 (h!14937 (_ BitVec 64)) (t!20192 List!13869)) )
))
(declare-fun arrayNoDuplicates!0 (array!41408 (_ BitVec 32) List!13869) Bool)

(assert (=> b!740168 (= res!497841 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13866))))

(declare-fun res!497840 () Bool)

(assert (=> start!65282 (=> (not res!497840) (not e!413849))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65282 (= res!497840 (validMask!0 mask!3328))))

(assert (=> start!65282 e!413849))

(assert (=> start!65282 true))

(declare-fun array_inv!15588 (array!41408) Bool)

(assert (=> start!65282 (array_inv!15588 a!3186)))

(declare-fun e!413854 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!740169 () Bool)

(declare-fun lt!328813 () SeekEntryResult!7421)

(assert (=> b!740169 (= e!413854 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19814 a!3186) j!159) a!3186 mask!3328) lt!328813))))

(declare-fun b!740170 () Bool)

(assert (=> b!740170 (= e!413854 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19814 a!3186) j!159) a!3186 mask!3328) (Found!7421 j!159)))))

(declare-fun b!740171 () Bool)

(declare-fun res!497829 () Bool)

(declare-fun e!413855 () Bool)

(assert (=> b!740171 (=> (not res!497829) (not e!413855))))

(assert (=> b!740171 (= res!497829 e!413854)))

(declare-fun c!81549 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!740171 (= c!81549 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!740172 () Bool)

(declare-fun res!497842 () Bool)

(assert (=> b!740172 (=> (not res!497842) (not e!413855))))

(assert (=> b!740172 (= res!497842 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19814 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!740173 () Bool)

(declare-fun res!497839 () Bool)

(assert (=> b!740173 (=> (not res!497839) (not e!413849))))

(assert (=> b!740173 (= res!497839 (validKeyInArray!0 k!2102))))

(declare-fun b!740174 () Bool)

(assert (=> b!740174 (= e!413853 e!413855)))

(declare-fun res!497837 () Bool)

(assert (=> b!740174 (=> (not res!497837) (not e!413855))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740174 (= res!497837 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19814 a!3186) j!159) mask!3328) (select (arr!19814 a!3186) j!159) a!3186 mask!3328) lt!328813))))

(assert (=> b!740174 (= lt!328813 (Intermediate!7421 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!740175 () Bool)

(declare-fun e!413850 () Bool)

(declare-fun e!413857 () Bool)

(assert (=> b!740175 (= e!413850 (not e!413857))))

(declare-fun res!497834 () Bool)

(assert (=> b!740175 (=> res!497834 e!413857)))

(declare-fun lt!328806 () SeekEntryResult!7421)

(assert (=> b!740175 (= res!497834 (or (not (is-Intermediate!7421 lt!328806)) (bvsge x!1131 (x!63060 lt!328806))))))

(assert (=> b!740175 (= lt!328807 (Found!7421 j!159))))

(declare-fun e!413859 () Bool)

(assert (=> b!740175 e!413859))

(declare-fun res!497833 () Bool)

(assert (=> b!740175 (=> (not res!497833) (not e!413859))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41408 (_ BitVec 32)) Bool)

(assert (=> b!740175 (= res!497833 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25302 0))(
  ( (Unit!25303) )
))
(declare-fun lt!328811 () Unit!25302)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41408 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25302)

(assert (=> b!740175 (= lt!328811 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!740176 () Bool)

(declare-fun e!413856 () Unit!25302)

(declare-fun Unit!25304 () Unit!25302)

(assert (=> b!740176 (= e!413856 Unit!25304)))

(declare-fun lt!328809 () SeekEntryResult!7421)

(assert (=> b!740176 (= lt!328809 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19814 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!740176 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328801 resIntermediateIndex!5 (select (arr!19814 a!3186) j!159) a!3186 mask!3328) lt!328807)))

(declare-fun b!740177 () Bool)

(declare-fun e!413858 () Bool)

(assert (=> b!740177 (= e!413859 e!413858)))

(declare-fun res!497843 () Bool)

(assert (=> b!740177 (=> (not res!497843) (not e!413858))))

(declare-fun lt!328804 () SeekEntryResult!7421)

(assert (=> b!740177 (= res!497843 (= (seekEntryOrOpen!0 (select (arr!19814 a!3186) j!159) a!3186 mask!3328) lt!328804))))

(assert (=> b!740177 (= lt!328804 (Found!7421 j!159))))

(declare-fun b!740178 () Bool)

(declare-fun res!497845 () Bool)

(assert (=> b!740178 (=> (not res!497845) (not e!413853))))

(assert (=> b!740178 (= res!497845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!740179 () Bool)

(assert (=> b!740179 (= e!413855 e!413850)))

(declare-fun res!497831 () Bool)

(assert (=> b!740179 (=> (not res!497831) (not e!413850))))

(assert (=> b!740179 (= res!497831 (= lt!328812 lt!328806))))

(assert (=> b!740179 (= lt!328806 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328814 lt!328802 mask!3328))))

(assert (=> b!740179 (= lt!328812 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328814 mask!3328) lt!328814 lt!328802 mask!3328))))

(assert (=> b!740179 (= lt!328814 (select (store (arr!19814 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!740179 (= lt!328802 (array!41409 (store (arr!19814 a!3186) i!1173 k!2102) (size!20235 a!3186)))))

(declare-fun b!740180 () Bool)

(assert (=> b!740180 (= e!413858 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19814 a!3186) j!159) a!3186 mask!3328) lt!328804))))

(declare-fun b!740181 () Bool)

(declare-fun res!497846 () Bool)

(assert (=> b!740181 (=> (not res!497846) (not e!413853))))

(assert (=> b!740181 (= res!497846 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20235 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20235 a!3186))))))

(declare-fun b!740182 () Bool)

(assert (=> b!740182 (= e!413852 true)))

(assert (=> b!740182 (= (seekEntryOrOpen!0 lt!328814 lt!328802 mask!3328) lt!328807)))

(declare-fun lt!328808 () Unit!25302)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!41408 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25302)

(assert (=> b!740182 (= lt!328808 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k!2102 j!159 lt!328801 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun b!740183 () Bool)

(assert (=> b!740183 (= e!413857 e!413852)))

(declare-fun res!497847 () Bool)

(assert (=> b!740183 (=> res!497847 e!413852)))

(assert (=> b!740183 (= res!497847 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328801 #b00000000000000000000000000000000) (bvsge lt!328801 (size!20235 a!3186))))))

(declare-fun lt!328803 () Unit!25302)

(assert (=> b!740183 (= lt!328803 e!413856)))

(declare-fun c!81548 () Bool)

(declare-fun lt!328810 () Bool)

(assert (=> b!740183 (= c!81548 lt!328810)))

(assert (=> b!740183 (= lt!328810 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740183 (= lt!328801 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!740184 () Bool)

(declare-fun Unit!25305 () Unit!25302)

(assert (=> b!740184 (= e!413856 Unit!25305)))

(assert (=> b!740184 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328801 (select (arr!19814 a!3186) j!159) a!3186 mask!3328) lt!328813)))

(declare-fun b!740185 () Bool)

(assert (=> b!740185 (= e!413848 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328801 (select (arr!19814 a!3186) j!159) a!3186 mask!3328) lt!328813)))))

(declare-fun b!740186 () Bool)

(declare-fun res!497832 () Bool)

(assert (=> b!740186 (=> res!497832 e!413852)))

(assert (=> b!740186 (= res!497832 e!413848)))

(declare-fun c!81547 () Bool)

(assert (=> b!740186 (= c!81547 lt!328810)))

(assert (= (and start!65282 res!497840) b!740162))

(assert (= (and b!740162 res!497838) b!740164))

(assert (= (and b!740164 res!497836) b!740173))

(assert (= (and b!740173 res!497839) b!740163))

(assert (= (and b!740163 res!497835) b!740167))

(assert (= (and b!740167 res!497830) b!740178))

(assert (= (and b!740178 res!497845) b!740168))

(assert (= (and b!740168 res!497841) b!740181))

(assert (= (and b!740181 res!497846) b!740174))

(assert (= (and b!740174 res!497837) b!740172))

(assert (= (and b!740172 res!497842) b!740171))

(assert (= (and b!740171 c!81549) b!740169))

(assert (= (and b!740171 (not c!81549)) b!740170))

(assert (= (and b!740171 res!497829) b!740179))

(assert (= (and b!740179 res!497831) b!740175))

(assert (= (and b!740175 res!497833) b!740177))

(assert (= (and b!740177 res!497843) b!740180))

(assert (= (and b!740175 (not res!497834)) b!740183))

(assert (= (and b!740183 c!81548) b!740184))

(assert (= (and b!740183 (not c!81548)) b!740176))

(assert (= (and b!740183 (not res!497847)) b!740186))

(assert (= (and b!740186 c!81547) b!740185))

(assert (= (and b!740186 (not c!81547)) b!740166))

(assert (= (and b!740186 (not res!497832)) b!740165))

(assert (= (and b!740165 (not res!497844)) b!740182))

(declare-fun m!691431 () Bool)

(assert (=> b!740168 m!691431))

(declare-fun m!691433 () Bool)

(assert (=> b!740172 m!691433))

(declare-fun m!691435 () Bool)

(assert (=> b!740175 m!691435))

(declare-fun m!691437 () Bool)

(assert (=> b!740175 m!691437))

(declare-fun m!691439 () Bool)

(assert (=> b!740178 m!691439))

(declare-fun m!691441 () Bool)

(assert (=> b!740176 m!691441))

(assert (=> b!740176 m!691441))

(declare-fun m!691443 () Bool)

(assert (=> b!740176 m!691443))

(assert (=> b!740176 m!691441))

(declare-fun m!691445 () Bool)

(assert (=> b!740176 m!691445))

(assert (=> b!740170 m!691441))

(assert (=> b!740170 m!691441))

(assert (=> b!740170 m!691443))

(assert (=> b!740166 m!691441))

(assert (=> b!740166 m!691441))

(assert (=> b!740166 m!691445))

(assert (=> b!740185 m!691441))

(assert (=> b!740185 m!691441))

(declare-fun m!691447 () Bool)

(assert (=> b!740185 m!691447))

(declare-fun m!691449 () Bool)

(assert (=> b!740163 m!691449))

(assert (=> b!740169 m!691441))

(assert (=> b!740169 m!691441))

(declare-fun m!691451 () Bool)

(assert (=> b!740169 m!691451))

(declare-fun m!691453 () Bool)

(assert (=> b!740179 m!691453))

(declare-fun m!691455 () Bool)

(assert (=> b!740179 m!691455))

(declare-fun m!691457 () Bool)

(assert (=> b!740179 m!691457))

(declare-fun m!691459 () Bool)

(assert (=> b!740179 m!691459))

(assert (=> b!740179 m!691453))

(declare-fun m!691461 () Bool)

(assert (=> b!740179 m!691461))

(assert (=> b!740164 m!691441))

(assert (=> b!740164 m!691441))

(declare-fun m!691463 () Bool)

(assert (=> b!740164 m!691463))

(assert (=> b!740180 m!691441))

(assert (=> b!740180 m!691441))

(declare-fun m!691465 () Bool)

(assert (=> b!740180 m!691465))

(declare-fun m!691467 () Bool)

(assert (=> start!65282 m!691467))

(declare-fun m!691469 () Bool)

(assert (=> start!65282 m!691469))

(assert (=> b!740174 m!691441))

(assert (=> b!740174 m!691441))

(declare-fun m!691471 () Bool)

(assert (=> b!740174 m!691471))

(assert (=> b!740174 m!691471))

(assert (=> b!740174 m!691441))

(declare-fun m!691473 () Bool)

(assert (=> b!740174 m!691473))

(assert (=> b!740177 m!691441))

(assert (=> b!740177 m!691441))

(declare-fun m!691475 () Bool)

(assert (=> b!740177 m!691475))

(declare-fun m!691477 () Bool)

(assert (=> b!740182 m!691477))

(declare-fun m!691479 () Bool)

(assert (=> b!740182 m!691479))

(assert (=> b!740184 m!691441))

(assert (=> b!740184 m!691441))

(assert (=> b!740184 m!691447))

(declare-fun m!691481 () Bool)

(assert (=> b!740165 m!691481))

(declare-fun m!691483 () Bool)

(assert (=> b!740167 m!691483))

(declare-fun m!691485 () Bool)

(assert (=> b!740183 m!691485))

(declare-fun m!691487 () Bool)

(assert (=> b!740173 m!691487))

(push 1)

