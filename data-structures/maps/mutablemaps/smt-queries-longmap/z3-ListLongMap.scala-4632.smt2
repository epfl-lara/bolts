; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64512 () Bool)

(assert start!64512)

(declare-fun b!725542 () Bool)

(declare-fun res!486765 () Bool)

(declare-fun e!406313 () Bool)

(assert (=> b!725542 (=> (not res!486765) (not e!406313))))

(declare-datatypes ((array!40983 0))(
  ( (array!40984 (arr!19609 (Array (_ BitVec 32) (_ BitVec 64))) (size!20030 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40983)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40983 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!725542 (= res!486765 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!725543 () Bool)

(declare-fun e!406318 () Bool)

(assert (=> b!725543 (= e!406313 e!406318)))

(declare-fun res!486768 () Bool)

(assert (=> b!725543 (=> (not res!486768) (not e!406318))))

(declare-datatypes ((SeekEntryResult!7216 0))(
  ( (MissingZero!7216 (index!31231 (_ BitVec 32))) (Found!7216 (index!31232 (_ BitVec 32))) (Intermediate!7216 (undefined!8028 Bool) (index!31233 (_ BitVec 32)) (x!62251 (_ BitVec 32))) (Undefined!7216) (MissingVacant!7216 (index!31234 (_ BitVec 32))) )
))
(declare-fun lt!321389 () SeekEntryResult!7216)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!725543 (= res!486768 (or (= lt!321389 (MissingZero!7216 i!1173)) (= lt!321389 (MissingVacant!7216 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40983 (_ BitVec 32)) SeekEntryResult!7216)

(assert (=> b!725543 (= lt!321389 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!725544 () Bool)

(declare-fun e!406319 () Bool)

(assert (=> b!725544 (= e!406318 e!406319)))

(declare-fun res!486762 () Bool)

(assert (=> b!725544 (=> (not res!486762) (not e!406319))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!321392 () SeekEntryResult!7216)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40983 (_ BitVec 32)) SeekEntryResult!7216)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!725544 (= res!486762 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19609 a!3186) j!159) mask!3328) (select (arr!19609 a!3186) j!159) a!3186 mask!3328) lt!321392))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!725544 (= lt!321392 (Intermediate!7216 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!725545 () Bool)

(declare-fun res!486754 () Bool)

(assert (=> b!725545 (=> (not res!486754) (not e!406318))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!725545 (= res!486754 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20030 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20030 a!3186))))))

(declare-fun b!725546 () Bool)

(declare-fun res!486763 () Bool)

(assert (=> b!725546 (=> (not res!486763) (not e!406313))))

(assert (=> b!725546 (= res!486763 (and (= (size!20030 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20030 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20030 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!725547 () Bool)

(declare-fun e!406316 () Bool)

(assert (=> b!725547 (= e!406316 (not (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(declare-fun e!406317 () Bool)

(assert (=> b!725547 e!406317))

(declare-fun res!486764 () Bool)

(assert (=> b!725547 (=> (not res!486764) (not e!406317))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40983 (_ BitVec 32)) Bool)

(assert (=> b!725547 (= res!486764 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24750 0))(
  ( (Unit!24751) )
))
(declare-fun lt!321391 () Unit!24750)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40983 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24750)

(assert (=> b!725547 (= lt!321391 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!725548 () Bool)

(declare-fun res!486757 () Bool)

(assert (=> b!725548 (=> (not res!486757) (not e!406318))))

(declare-datatypes ((List!13664 0))(
  ( (Nil!13661) (Cons!13660 (h!14717 (_ BitVec 64)) (t!19987 List!13664)) )
))
(declare-fun arrayNoDuplicates!0 (array!40983 (_ BitVec 32) List!13664) Bool)

(assert (=> b!725548 (= res!486757 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13661))))

(declare-fun res!486760 () Bool)

(assert (=> start!64512 (=> (not res!486760) (not e!406313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64512 (= res!486760 (validMask!0 mask!3328))))

(assert (=> start!64512 e!406313))

(assert (=> start!64512 true))

(declare-fun array_inv!15383 (array!40983) Bool)

(assert (=> start!64512 (array_inv!15383 a!3186)))

(declare-fun e!406315 () Bool)

(declare-fun lt!321388 () SeekEntryResult!7216)

(declare-fun b!725549 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40983 (_ BitVec 32)) SeekEntryResult!7216)

(assert (=> b!725549 (= e!406315 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19609 a!3186) j!159) a!3186 mask!3328) lt!321388))))

(declare-fun b!725550 () Bool)

(declare-fun res!486755 () Bool)

(assert (=> b!725550 (=> (not res!486755) (not e!406319))))

(assert (=> b!725550 (= res!486755 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19609 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!725551 () Bool)

(declare-fun res!486756 () Bool)

(assert (=> b!725551 (=> (not res!486756) (not e!406319))))

(declare-fun e!406320 () Bool)

(assert (=> b!725551 (= res!486756 e!406320)))

(declare-fun c!79767 () Bool)

(assert (=> b!725551 (= c!79767 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!725552 () Bool)

(assert (=> b!725552 (= e!406319 e!406316)))

(declare-fun res!486758 () Bool)

(assert (=> b!725552 (=> (not res!486758) (not e!406316))))

(declare-fun lt!321387 () array!40983)

(declare-fun lt!321390 () (_ BitVec 64))

(assert (=> b!725552 (= res!486758 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321390 mask!3328) lt!321390 lt!321387 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321390 lt!321387 mask!3328)))))

(assert (=> b!725552 (= lt!321390 (select (store (arr!19609 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!725552 (= lt!321387 (array!40984 (store (arr!19609 a!3186) i!1173 k0!2102) (size!20030 a!3186)))))

(declare-fun b!725553 () Bool)

(assert (=> b!725553 (= e!406320 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19609 a!3186) j!159) a!3186 mask!3328) lt!321392))))

(declare-fun b!725554 () Bool)

(assert (=> b!725554 (= e!406317 e!406315)))

(declare-fun res!486759 () Bool)

(assert (=> b!725554 (=> (not res!486759) (not e!406315))))

(assert (=> b!725554 (= res!486759 (= (seekEntryOrOpen!0 (select (arr!19609 a!3186) j!159) a!3186 mask!3328) lt!321388))))

(assert (=> b!725554 (= lt!321388 (Found!7216 j!159))))

(declare-fun b!725555 () Bool)

(declare-fun res!486761 () Bool)

(assert (=> b!725555 (=> (not res!486761) (not e!406313))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!725555 (= res!486761 (validKeyInArray!0 k0!2102))))

(declare-fun b!725556 () Bool)

(declare-fun res!486766 () Bool)

(assert (=> b!725556 (=> (not res!486766) (not e!406313))))

(assert (=> b!725556 (= res!486766 (validKeyInArray!0 (select (arr!19609 a!3186) j!159)))))

(declare-fun b!725557 () Bool)

(assert (=> b!725557 (= e!406320 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19609 a!3186) j!159) a!3186 mask!3328) (Found!7216 j!159)))))

(declare-fun b!725558 () Bool)

(declare-fun res!486767 () Bool)

(assert (=> b!725558 (=> (not res!486767) (not e!406318))))

(assert (=> b!725558 (= res!486767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!64512 res!486760) b!725546))

(assert (= (and b!725546 res!486763) b!725556))

(assert (= (and b!725556 res!486766) b!725555))

(assert (= (and b!725555 res!486761) b!725542))

(assert (= (and b!725542 res!486765) b!725543))

(assert (= (and b!725543 res!486768) b!725558))

(assert (= (and b!725558 res!486767) b!725548))

(assert (= (and b!725548 res!486757) b!725545))

(assert (= (and b!725545 res!486754) b!725544))

(assert (= (and b!725544 res!486762) b!725550))

(assert (= (and b!725550 res!486755) b!725551))

(assert (= (and b!725551 c!79767) b!725553))

(assert (= (and b!725551 (not c!79767)) b!725557))

(assert (= (and b!725551 res!486756) b!725552))

(assert (= (and b!725552 res!486758) b!725547))

(assert (= (and b!725547 res!486764) b!725554))

(assert (= (and b!725554 res!486759) b!725549))

(declare-fun m!679781 () Bool)

(assert (=> b!725549 m!679781))

(assert (=> b!725549 m!679781))

(declare-fun m!679783 () Bool)

(assert (=> b!725549 m!679783))

(declare-fun m!679785 () Bool)

(assert (=> b!725550 m!679785))

(declare-fun m!679787 () Bool)

(assert (=> b!725543 m!679787))

(assert (=> b!725554 m!679781))

(assert (=> b!725554 m!679781))

(declare-fun m!679789 () Bool)

(assert (=> b!725554 m!679789))

(assert (=> b!725556 m!679781))

(assert (=> b!725556 m!679781))

(declare-fun m!679791 () Bool)

(assert (=> b!725556 m!679791))

(declare-fun m!679793 () Bool)

(assert (=> b!725547 m!679793))

(declare-fun m!679795 () Bool)

(assert (=> b!725547 m!679795))

(declare-fun m!679797 () Bool)

(assert (=> b!725552 m!679797))

(declare-fun m!679799 () Bool)

(assert (=> b!725552 m!679799))

(declare-fun m!679801 () Bool)

(assert (=> b!725552 m!679801))

(declare-fun m!679803 () Bool)

(assert (=> b!725552 m!679803))

(assert (=> b!725552 m!679803))

(declare-fun m!679805 () Bool)

(assert (=> b!725552 m!679805))

(declare-fun m!679807 () Bool)

(assert (=> b!725542 m!679807))

(declare-fun m!679809 () Bool)

(assert (=> b!725558 m!679809))

(declare-fun m!679811 () Bool)

(assert (=> b!725555 m!679811))

(assert (=> b!725544 m!679781))

(assert (=> b!725544 m!679781))

(declare-fun m!679813 () Bool)

(assert (=> b!725544 m!679813))

(assert (=> b!725544 m!679813))

(assert (=> b!725544 m!679781))

(declare-fun m!679815 () Bool)

(assert (=> b!725544 m!679815))

(declare-fun m!679817 () Bool)

(assert (=> b!725548 m!679817))

(assert (=> b!725553 m!679781))

(assert (=> b!725553 m!679781))

(declare-fun m!679819 () Bool)

(assert (=> b!725553 m!679819))

(declare-fun m!679821 () Bool)

(assert (=> start!64512 m!679821))

(declare-fun m!679823 () Bool)

(assert (=> start!64512 m!679823))

(assert (=> b!725557 m!679781))

(assert (=> b!725557 m!679781))

(declare-fun m!679825 () Bool)

(assert (=> b!725557 m!679825))

(check-sat (not b!725542) (not b!725553) (not b!725555) (not start!64512) (not b!725544) (not b!725558) (not b!725556) (not b!725554) (not b!725548) (not b!725557) (not b!725543) (not b!725552) (not b!725547) (not b!725549))
(check-sat)
