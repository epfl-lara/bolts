; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65544 () Bool)

(assert start!65544)

(declare-fun b!747663 () Bool)

(declare-fun res!504354 () Bool)

(declare-fun e!417422 () Bool)

(assert (=> b!747663 (=> res!504354 e!417422)))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!332365 () (_ BitVec 64))

(declare-datatypes ((array!41670 0))(
  ( (array!41671 (arr!19945 (Array (_ BitVec 32) (_ BitVec 64))) (size!20366 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41670)

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!747663 (= res!504354 (= (select (store (arr!19945 a!3186) i!1173 k0!2102) index!1321) lt!332365))))

(declare-fun b!747664 () Bool)

(declare-fun res!504351 () Bool)

(declare-fun e!417418 () Bool)

(assert (=> b!747664 (=> (not res!504351) (not e!417418))))

(declare-fun arrayContainsKey!0 (array!41670 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!747664 (= res!504351 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!747665 () Bool)

(declare-datatypes ((Unit!25610 0))(
  ( (Unit!25611) )
))
(declare-fun e!417420 () Unit!25610)

(declare-fun Unit!25612 () Unit!25610)

(assert (=> b!747665 (= e!417420 Unit!25612)))

(declare-fun b!747666 () Bool)

(declare-fun e!417415 () Bool)

(assert (=> b!747666 (= e!417418 e!417415)))

(declare-fun res!504359 () Bool)

(assert (=> b!747666 (=> (not res!504359) (not e!417415))))

(declare-datatypes ((SeekEntryResult!7552 0))(
  ( (MissingZero!7552 (index!32575 (_ BitVec 32))) (Found!7552 (index!32576 (_ BitVec 32))) (Intermediate!7552 (undefined!8364 Bool) (index!32577 (_ BitVec 32)) (x!63543 (_ BitVec 32))) (Undefined!7552) (MissingVacant!7552 (index!32578 (_ BitVec 32))) )
))
(declare-fun lt!332357 () SeekEntryResult!7552)

(assert (=> b!747666 (= res!504359 (or (= lt!332357 (MissingZero!7552 i!1173)) (= lt!332357 (MissingVacant!7552 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41670 (_ BitVec 32)) SeekEntryResult!7552)

(assert (=> b!747666 (= lt!332357 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!747667 () Bool)

(declare-fun res!504362 () Bool)

(assert (=> b!747667 (=> (not res!504362) (not e!417415))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41670 (_ BitVec 32)) Bool)

(assert (=> b!747667 (= res!504362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!747668 () Bool)

(declare-fun e!417423 () Bool)

(declare-fun e!417419 () Bool)

(assert (=> b!747668 (= e!417423 e!417419)))

(declare-fun res!504360 () Bool)

(assert (=> b!747668 (=> (not res!504360) (not e!417419))))

(declare-fun lt!332359 () SeekEntryResult!7552)

(declare-fun lt!332364 () SeekEntryResult!7552)

(assert (=> b!747668 (= res!504360 (= lt!332359 lt!332364))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!332361 () array!41670)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41670 (_ BitVec 32)) SeekEntryResult!7552)

(assert (=> b!747668 (= lt!332364 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332365 lt!332361 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!747668 (= lt!332359 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332365 mask!3328) lt!332365 lt!332361 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!747668 (= lt!332365 (select (store (arr!19945 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!747668 (= lt!332361 (array!41671 (store (arr!19945 a!3186) i!1173 k0!2102) (size!20366 a!3186)))))

(declare-fun b!747669 () Bool)

(declare-fun e!417417 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41670 (_ BitVec 32)) SeekEntryResult!7552)

(assert (=> b!747669 (= e!417417 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19945 a!3186) j!159) a!3186 mask!3328) (Found!7552 j!159)))))

(declare-fun b!747670 () Bool)

(declare-fun res!504350 () Bool)

(assert (=> b!747670 (=> res!504350 e!417422)))

(declare-fun lt!332362 () SeekEntryResult!7552)

(assert (=> b!747670 (= res!504350 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19945 a!3186) j!159) a!3186 mask!3328) lt!332362)))))

(declare-fun b!747671 () Bool)

(assert (=> b!747671 (= e!417419 (not e!417422))))

(declare-fun res!504357 () Bool)

(assert (=> b!747671 (=> res!504357 e!417422)))

(get-info :version)

(assert (=> b!747671 (= res!504357 (or (not ((_ is Intermediate!7552) lt!332364)) (bvslt x!1131 (x!63543 lt!332364)) (not (= x!1131 (x!63543 lt!332364))) (not (= index!1321 (index!32577 lt!332364)))))))

(declare-fun e!417416 () Bool)

(assert (=> b!747671 e!417416))

(declare-fun res!504358 () Bool)

(assert (=> b!747671 (=> (not res!504358) (not e!417416))))

(declare-fun lt!332366 () SeekEntryResult!7552)

(assert (=> b!747671 (= res!504358 (= lt!332366 lt!332362))))

(assert (=> b!747671 (= lt!332362 (Found!7552 j!159))))

(assert (=> b!747671 (= lt!332366 (seekEntryOrOpen!0 (select (arr!19945 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!747671 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332358 () Unit!25610)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41670 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25610)

(assert (=> b!747671 (= lt!332358 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!747672 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!747672 (= e!417416 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19945 a!3186) j!159) a!3186 mask!3328) lt!332362))))

(declare-fun b!747673 () Bool)

(declare-fun res!504361 () Bool)

(assert (=> b!747673 (=> (not res!504361) (not e!417415))))

(declare-datatypes ((List!14000 0))(
  ( (Nil!13997) (Cons!13996 (h!15068 (_ BitVec 64)) (t!20323 List!14000)) )
))
(declare-fun arrayNoDuplicates!0 (array!41670 (_ BitVec 32) List!14000) Bool)

(assert (=> b!747673 (= res!504361 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13997))))

(declare-fun b!747674 () Bool)

(declare-fun res!504364 () Bool)

(assert (=> b!747674 (=> (not res!504364) (not e!417418))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!747674 (= res!504364 (validKeyInArray!0 k0!2102))))

(declare-fun b!747676 () Bool)

(declare-fun res!504353 () Bool)

(assert (=> b!747676 (=> (not res!504353) (not e!417423))))

(assert (=> b!747676 (= res!504353 e!417417)))

(declare-fun c!82037 () Bool)

(assert (=> b!747676 (= c!82037 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!747677 () Bool)

(assert (=> b!747677 (= e!417415 e!417423)))

(declare-fun res!504366 () Bool)

(assert (=> b!747677 (=> (not res!504366) (not e!417423))))

(declare-fun lt!332363 () SeekEntryResult!7552)

(assert (=> b!747677 (= res!504366 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19945 a!3186) j!159) mask!3328) (select (arr!19945 a!3186) j!159) a!3186 mask!3328) lt!332363))))

(assert (=> b!747677 (= lt!332363 (Intermediate!7552 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!747678 () Bool)

(declare-fun res!504363 () Bool)

(assert (=> b!747678 (=> (not res!504363) (not e!417418))))

(assert (=> b!747678 (= res!504363 (and (= (size!20366 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20366 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20366 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!747679 () Bool)

(assert (=> b!747679 (= e!417422 true)))

(assert (=> b!747679 (= (select (store (arr!19945 a!3186) i!1173 k0!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332360 () Unit!25610)

(assert (=> b!747679 (= lt!332360 e!417420)))

(declare-fun c!82038 () Bool)

(assert (=> b!747679 (= c!82038 (= (select (store (arr!19945 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!747680 () Bool)

(declare-fun Unit!25613 () Unit!25610)

(assert (=> b!747680 (= e!417420 Unit!25613)))

(assert (=> b!747680 false))

(declare-fun b!747681 () Bool)

(declare-fun res!504352 () Bool)

(assert (=> b!747681 (=> (not res!504352) (not e!417423))))

(assert (=> b!747681 (= res!504352 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19945 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!504365 () Bool)

(assert (=> start!65544 (=> (not res!504365) (not e!417418))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65544 (= res!504365 (validMask!0 mask!3328))))

(assert (=> start!65544 e!417418))

(assert (=> start!65544 true))

(declare-fun array_inv!15719 (array!41670) Bool)

(assert (=> start!65544 (array_inv!15719 a!3186)))

(declare-fun b!747675 () Bool)

(assert (=> b!747675 (= e!417417 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19945 a!3186) j!159) a!3186 mask!3328) lt!332363))))

(declare-fun b!747682 () Bool)

(declare-fun res!504356 () Bool)

(assert (=> b!747682 (=> (not res!504356) (not e!417418))))

(assert (=> b!747682 (= res!504356 (validKeyInArray!0 (select (arr!19945 a!3186) j!159)))))

(declare-fun b!747683 () Bool)

(declare-fun res!504355 () Bool)

(assert (=> b!747683 (=> (not res!504355) (not e!417415))))

(assert (=> b!747683 (= res!504355 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20366 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20366 a!3186))))))

(assert (= (and start!65544 res!504365) b!747678))

(assert (= (and b!747678 res!504363) b!747682))

(assert (= (and b!747682 res!504356) b!747674))

(assert (= (and b!747674 res!504364) b!747664))

(assert (= (and b!747664 res!504351) b!747666))

(assert (= (and b!747666 res!504359) b!747667))

(assert (= (and b!747667 res!504362) b!747673))

(assert (= (and b!747673 res!504361) b!747683))

(assert (= (and b!747683 res!504355) b!747677))

(assert (= (and b!747677 res!504366) b!747681))

(assert (= (and b!747681 res!504352) b!747676))

(assert (= (and b!747676 c!82037) b!747675))

(assert (= (and b!747676 (not c!82037)) b!747669))

(assert (= (and b!747676 res!504353) b!747668))

(assert (= (and b!747668 res!504360) b!747671))

(assert (= (and b!747671 res!504358) b!747672))

(assert (= (and b!747671 (not res!504357)) b!747670))

(assert (= (and b!747670 (not res!504350)) b!747663))

(assert (= (and b!747663 (not res!504354)) b!747679))

(assert (= (and b!747679 c!82038) b!747680))

(assert (= (and b!747679 (not c!82038)) b!747665))

(declare-fun m!697759 () Bool)

(assert (=> b!747666 m!697759))

(declare-fun m!697761 () Bool)

(assert (=> start!65544 m!697761))

(declare-fun m!697763 () Bool)

(assert (=> start!65544 m!697763))

(declare-fun m!697765 () Bool)

(assert (=> b!747667 m!697765))

(declare-fun m!697767 () Bool)

(assert (=> b!747669 m!697767))

(assert (=> b!747669 m!697767))

(declare-fun m!697769 () Bool)

(assert (=> b!747669 m!697769))

(declare-fun m!697771 () Bool)

(assert (=> b!747668 m!697771))

(declare-fun m!697773 () Bool)

(assert (=> b!747668 m!697773))

(assert (=> b!747668 m!697771))

(declare-fun m!697775 () Bool)

(assert (=> b!747668 m!697775))

(declare-fun m!697777 () Bool)

(assert (=> b!747668 m!697777))

(declare-fun m!697779 () Bool)

(assert (=> b!747668 m!697779))

(assert (=> b!747679 m!697773))

(declare-fun m!697781 () Bool)

(assert (=> b!747679 m!697781))

(assert (=> b!747682 m!697767))

(assert (=> b!747682 m!697767))

(declare-fun m!697783 () Bool)

(assert (=> b!747682 m!697783))

(assert (=> b!747663 m!697773))

(assert (=> b!747663 m!697781))

(declare-fun m!697785 () Bool)

(assert (=> b!747673 m!697785))

(assert (=> b!747672 m!697767))

(assert (=> b!747672 m!697767))

(declare-fun m!697787 () Bool)

(assert (=> b!747672 m!697787))

(assert (=> b!747670 m!697767))

(assert (=> b!747670 m!697767))

(assert (=> b!747670 m!697769))

(declare-fun m!697789 () Bool)

(assert (=> b!747674 m!697789))

(declare-fun m!697791 () Bool)

(assert (=> b!747664 m!697791))

(assert (=> b!747675 m!697767))

(assert (=> b!747675 m!697767))

(declare-fun m!697793 () Bool)

(assert (=> b!747675 m!697793))

(assert (=> b!747671 m!697767))

(assert (=> b!747671 m!697767))

(declare-fun m!697795 () Bool)

(assert (=> b!747671 m!697795))

(declare-fun m!697797 () Bool)

(assert (=> b!747671 m!697797))

(declare-fun m!697799 () Bool)

(assert (=> b!747671 m!697799))

(declare-fun m!697801 () Bool)

(assert (=> b!747681 m!697801))

(assert (=> b!747677 m!697767))

(assert (=> b!747677 m!697767))

(declare-fun m!697803 () Bool)

(assert (=> b!747677 m!697803))

(assert (=> b!747677 m!697803))

(assert (=> b!747677 m!697767))

(declare-fun m!697805 () Bool)

(assert (=> b!747677 m!697805))

(check-sat (not b!747670) (not b!747674) (not b!747672) (not b!747677) (not start!65544) (not b!747669) (not b!747664) (not b!747668) (not b!747671) (not b!747666) (not b!747682) (not b!747667) (not b!747673) (not b!747675))
(check-sat)
