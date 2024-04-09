; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65350 () Bool)

(assert start!65350)

(declare-fun b!742131 () Bool)

(declare-fun res!499484 () Bool)

(declare-fun e!414793 () Bool)

(assert (=> b!742131 (=> (not res!499484) (not e!414793))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!742131 (= res!499484 (validKeyInArray!0 k!2102))))

(declare-fun b!742132 () Bool)

(declare-fun e!414787 () Bool)

(assert (=> b!742132 (= e!414787 true)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41476 0))(
  ( (array!41477 (arr!19848 (Array (_ BitVec 32) (_ BitVec 64))) (size!20269 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41476)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7455 0))(
  ( (MissingZero!7455 (index!32187 (_ BitVec 32))) (Found!7455 (index!32188 (_ BitVec 32))) (Intermediate!7455 (undefined!8267 Bool) (index!32189 (_ BitVec 32)) (x!63190 (_ BitVec 32))) (Undefined!7455) (MissingVacant!7455 (index!32190 (_ BitVec 32))) )
))
(declare-fun lt!329698 () SeekEntryResult!7455)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41476 (_ BitVec 32)) SeekEntryResult!7455)

(assert (=> b!742132 (= lt!329698 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19848 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!742133 () Bool)

(declare-fun e!414788 () Bool)

(assert (=> b!742133 (= e!414788 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19848 a!3186) j!159) a!3186 mask!3328) (Found!7455 j!159)))))

(declare-fun b!742134 () Bool)

(declare-fun e!414790 () Bool)

(assert (=> b!742134 (= e!414790 (not e!414787))))

(declare-fun res!499483 () Bool)

(assert (=> b!742134 (=> res!499483 e!414787)))

(declare-fun lt!329702 () SeekEntryResult!7455)

(assert (=> b!742134 (= res!499483 (or (not (is-Intermediate!7455 lt!329702)) (bvslt x!1131 (x!63190 lt!329702)) (not (= x!1131 (x!63190 lt!329702))) (not (= index!1321 (index!32189 lt!329702)))))))

(declare-fun e!414789 () Bool)

(assert (=> b!742134 e!414789))

(declare-fun res!499492 () Bool)

(assert (=> b!742134 (=> (not res!499492) (not e!414789))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41476 (_ BitVec 32)) Bool)

(assert (=> b!742134 (= res!499492 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25390 0))(
  ( (Unit!25391) )
))
(declare-fun lt!329705 () Unit!25390)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41476 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25390)

(assert (=> b!742134 (= lt!329705 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!742135 () Bool)

(declare-fun e!414795 () Bool)

(assert (=> b!742135 (= e!414795 e!414790)))

(declare-fun res!499487 () Bool)

(assert (=> b!742135 (=> (not res!499487) (not e!414790))))

(declare-fun lt!329701 () SeekEntryResult!7455)

(assert (=> b!742135 (= res!499487 (= lt!329701 lt!329702))))

(declare-fun lt!329700 () array!41476)

(declare-fun lt!329699 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41476 (_ BitVec 32)) SeekEntryResult!7455)

(assert (=> b!742135 (= lt!329702 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329699 lt!329700 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!742135 (= lt!329701 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329699 mask!3328) lt!329699 lt!329700 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!742135 (= lt!329699 (select (store (arr!19848 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!742135 (= lt!329700 (array!41477 (store (arr!19848 a!3186) i!1173 k!2102) (size!20269 a!3186)))))

(declare-fun res!499489 () Bool)

(assert (=> start!65350 (=> (not res!499489) (not e!414793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65350 (= res!499489 (validMask!0 mask!3328))))

(assert (=> start!65350 e!414793))

(assert (=> start!65350 true))

(declare-fun array_inv!15622 (array!41476) Bool)

(assert (=> start!65350 (array_inv!15622 a!3186)))

(declare-fun b!742136 () Bool)

(declare-fun res!499488 () Bool)

(assert (=> b!742136 (=> (not res!499488) (not e!414793))))

(declare-fun arrayContainsKey!0 (array!41476 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!742136 (= res!499488 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!742137 () Bool)

(declare-fun lt!329704 () SeekEntryResult!7455)

(assert (=> b!742137 (= e!414788 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19848 a!3186) j!159) a!3186 mask!3328) lt!329704))))

(declare-fun b!742138 () Bool)

(declare-fun e!414792 () Bool)

(assert (=> b!742138 (= e!414793 e!414792)))

(declare-fun res!499490 () Bool)

(assert (=> b!742138 (=> (not res!499490) (not e!414792))))

(declare-fun lt!329703 () SeekEntryResult!7455)

(assert (=> b!742138 (= res!499490 (or (= lt!329703 (MissingZero!7455 i!1173)) (= lt!329703 (MissingVacant!7455 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41476 (_ BitVec 32)) SeekEntryResult!7455)

(assert (=> b!742138 (= lt!329703 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!742139 () Bool)

(assert (=> b!742139 (= e!414792 e!414795)))

(declare-fun res!499497 () Bool)

(assert (=> b!742139 (=> (not res!499497) (not e!414795))))

(assert (=> b!742139 (= res!499497 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19848 a!3186) j!159) mask!3328) (select (arr!19848 a!3186) j!159) a!3186 mask!3328) lt!329704))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!742139 (= lt!329704 (Intermediate!7455 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!742140 () Bool)

(declare-fun res!499491 () Bool)

(assert (=> b!742140 (=> (not res!499491) (not e!414793))))

(assert (=> b!742140 (= res!499491 (validKeyInArray!0 (select (arr!19848 a!3186) j!159)))))

(declare-fun b!742141 () Bool)

(declare-fun res!499493 () Bool)

(assert (=> b!742141 (=> (not res!499493) (not e!414795))))

(assert (=> b!742141 (= res!499493 e!414788)))

(declare-fun c!81705 () Bool)

(assert (=> b!742141 (= c!81705 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!742142 () Bool)

(declare-fun res!499486 () Bool)

(assert (=> b!742142 (=> (not res!499486) (not e!414792))))

(declare-datatypes ((List!13903 0))(
  ( (Nil!13900) (Cons!13899 (h!14971 (_ BitVec 64)) (t!20226 List!13903)) )
))
(declare-fun arrayNoDuplicates!0 (array!41476 (_ BitVec 32) List!13903) Bool)

(assert (=> b!742142 (= res!499486 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13900))))

(declare-fun b!742143 () Bool)

(declare-fun res!499485 () Bool)

(assert (=> b!742143 (=> (not res!499485) (not e!414795))))

(assert (=> b!742143 (= res!499485 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19848 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!742144 () Bool)

(declare-fun res!499496 () Bool)

(assert (=> b!742144 (=> (not res!499496) (not e!414793))))

(assert (=> b!742144 (= res!499496 (and (= (size!20269 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20269 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20269 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!742145 () Bool)

(declare-fun res!499495 () Bool)

(assert (=> b!742145 (=> (not res!499495) (not e!414792))))

(assert (=> b!742145 (= res!499495 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20269 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20269 a!3186))))))

(declare-fun b!742146 () Bool)

(declare-fun e!414791 () Bool)

(assert (=> b!742146 (= e!414789 e!414791)))

(declare-fun res!499494 () Bool)

(assert (=> b!742146 (=> (not res!499494) (not e!414791))))

(declare-fun lt!329697 () SeekEntryResult!7455)

(assert (=> b!742146 (= res!499494 (= (seekEntryOrOpen!0 (select (arr!19848 a!3186) j!159) a!3186 mask!3328) lt!329697))))

(assert (=> b!742146 (= lt!329697 (Found!7455 j!159))))

(declare-fun b!742147 () Bool)

(assert (=> b!742147 (= e!414791 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19848 a!3186) j!159) a!3186 mask!3328) lt!329697))))

(declare-fun b!742148 () Bool)

(declare-fun res!499482 () Bool)

(assert (=> b!742148 (=> (not res!499482) (not e!414792))))

(assert (=> b!742148 (= res!499482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65350 res!499489) b!742144))

(assert (= (and b!742144 res!499496) b!742140))

(assert (= (and b!742140 res!499491) b!742131))

(assert (= (and b!742131 res!499484) b!742136))

(assert (= (and b!742136 res!499488) b!742138))

(assert (= (and b!742138 res!499490) b!742148))

(assert (= (and b!742148 res!499482) b!742142))

(assert (= (and b!742142 res!499486) b!742145))

(assert (= (and b!742145 res!499495) b!742139))

(assert (= (and b!742139 res!499497) b!742143))

(assert (= (and b!742143 res!499485) b!742141))

(assert (= (and b!742141 c!81705) b!742137))

(assert (= (and b!742141 (not c!81705)) b!742133))

(assert (= (and b!742141 res!499493) b!742135))

(assert (= (and b!742135 res!499487) b!742134))

(assert (= (and b!742134 res!499492) b!742146))

(assert (= (and b!742146 res!499494) b!742147))

(assert (= (and b!742134 (not res!499483)) b!742132))

(declare-fun m!693121 () Bool)

(assert (=> b!742137 m!693121))

(assert (=> b!742137 m!693121))

(declare-fun m!693123 () Bool)

(assert (=> b!742137 m!693123))

(declare-fun m!693125 () Bool)

(assert (=> b!742134 m!693125))

(declare-fun m!693127 () Bool)

(assert (=> b!742134 m!693127))

(declare-fun m!693129 () Bool)

(assert (=> start!65350 m!693129))

(declare-fun m!693131 () Bool)

(assert (=> start!65350 m!693131))

(declare-fun m!693133 () Bool)

(assert (=> b!742148 m!693133))

(declare-fun m!693135 () Bool)

(assert (=> b!742131 m!693135))

(assert (=> b!742140 m!693121))

(assert (=> b!742140 m!693121))

(declare-fun m!693137 () Bool)

(assert (=> b!742140 m!693137))

(declare-fun m!693139 () Bool)

(assert (=> b!742143 m!693139))

(declare-fun m!693141 () Bool)

(assert (=> b!742136 m!693141))

(declare-fun m!693143 () Bool)

(assert (=> b!742135 m!693143))

(declare-fun m!693145 () Bool)

(assert (=> b!742135 m!693145))

(declare-fun m!693147 () Bool)

(assert (=> b!742135 m!693147))

(declare-fun m!693149 () Bool)

(assert (=> b!742135 m!693149))

(declare-fun m!693151 () Bool)

(assert (=> b!742135 m!693151))

(assert (=> b!742135 m!693145))

(assert (=> b!742132 m!693121))

(assert (=> b!742132 m!693121))

(declare-fun m!693153 () Bool)

(assert (=> b!742132 m!693153))

(declare-fun m!693155 () Bool)

(assert (=> b!742138 m!693155))

(assert (=> b!742147 m!693121))

(assert (=> b!742147 m!693121))

(declare-fun m!693157 () Bool)

(assert (=> b!742147 m!693157))

(assert (=> b!742146 m!693121))

(assert (=> b!742146 m!693121))

(declare-fun m!693159 () Bool)

(assert (=> b!742146 m!693159))

(declare-fun m!693161 () Bool)

(assert (=> b!742142 m!693161))

(assert (=> b!742133 m!693121))

(assert (=> b!742133 m!693121))

(assert (=> b!742133 m!693153))

(assert (=> b!742139 m!693121))

(assert (=> b!742139 m!693121))

(declare-fun m!693163 () Bool)

(assert (=> b!742139 m!693163))

(assert (=> b!742139 m!693163))

(assert (=> b!742139 m!693121))

(declare-fun m!693165 () Bool)

(assert (=> b!742139 m!693165))

(push 1)

