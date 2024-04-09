; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64750 () Bool)

(assert start!64750)

(declare-fun res!490820 () Bool)

(declare-fun e!408757 () Bool)

(assert (=> start!64750 (=> (not res!490820) (not e!408757))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64750 (= res!490820 (validMask!0 mask!3328))))

(assert (=> start!64750 e!408757))

(assert (=> start!64750 true))

(declare-datatypes ((array!41152 0))(
  ( (array!41153 (arr!19692 (Array (_ BitVec 32) (_ BitVec 64))) (size!20113 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41152)

(declare-fun array_inv!15466 (array!41152) Bool)

(assert (=> start!64750 (array_inv!15466 a!3186)))

(declare-fun b!730392 () Bool)

(declare-fun res!490817 () Bool)

(assert (=> b!730392 (=> (not res!490817) (not e!408757))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!730392 (= res!490817 (validKeyInArray!0 (select (arr!19692 a!3186) j!159)))))

(declare-fun b!730393 () Bool)

(declare-fun e!408765 () Bool)

(declare-fun e!408758 () Bool)

(assert (=> b!730393 (= e!408765 e!408758)))

(declare-fun res!490825 () Bool)

(assert (=> b!730393 (=> (not res!490825) (not e!408758))))

(declare-datatypes ((SeekEntryResult!7299 0))(
  ( (MissingZero!7299 (index!31563 (_ BitVec 32))) (Found!7299 (index!31564 (_ BitVec 32))) (Intermediate!7299 (undefined!8111 Bool) (index!31565 (_ BitVec 32)) (x!62570 (_ BitVec 32))) (Undefined!7299) (MissingVacant!7299 (index!31566 (_ BitVec 32))) )
))
(declare-fun lt!323664 () SeekEntryResult!7299)

(declare-fun lt!323667 () SeekEntryResult!7299)

(assert (=> b!730393 (= res!490825 (= lt!323664 lt!323667))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!323665 () array!41152)

(declare-fun lt!323668 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41152 (_ BitVec 32)) SeekEntryResult!7299)

(assert (=> b!730393 (= lt!323667 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323668 lt!323665 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730393 (= lt!323664 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323668 mask!3328) lt!323668 lt!323665 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!730393 (= lt!323668 (select (store (arr!19692 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!730393 (= lt!323665 (array!41153 (store (arr!19692 a!3186) i!1173 k!2102) (size!20113 a!3186)))))

(declare-fun b!730394 () Bool)

(declare-fun res!490815 () Bool)

(assert (=> b!730394 (=> (not res!490815) (not e!408757))))

(assert (=> b!730394 (= res!490815 (and (= (size!20113 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20113 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20113 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!730395 () Bool)

(declare-fun res!490826 () Bool)

(declare-fun e!408761 () Bool)

(assert (=> b!730395 (=> (not res!490826) (not e!408761))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!730395 (= res!490826 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20113 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20113 a!3186))))))

(declare-fun b!730396 () Bool)

(declare-fun res!490818 () Bool)

(assert (=> b!730396 (=> (not res!490818) (not e!408765))))

(assert (=> b!730396 (= res!490818 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19692 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!730397 () Bool)

(declare-fun e!408762 () Bool)

(assert (=> b!730397 (= e!408758 (not e!408762))))

(declare-fun res!490830 () Bool)

(assert (=> b!730397 (=> res!490830 e!408762)))

(assert (=> b!730397 (= res!490830 (or (not (is-Intermediate!7299 lt!323667)) (bvsge x!1131 (x!62570 lt!323667))))))

(declare-fun e!408760 () Bool)

(assert (=> b!730397 e!408760))

(declare-fun res!490828 () Bool)

(assert (=> b!730397 (=> (not res!490828) (not e!408760))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41152 (_ BitVec 32)) Bool)

(assert (=> b!730397 (= res!490828 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24916 0))(
  ( (Unit!24917) )
))
(declare-fun lt!323672 () Unit!24916)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41152 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24916)

(assert (=> b!730397 (= lt!323672 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!730398 () Bool)

(assert (=> b!730398 (= e!408762 true)))

(declare-fun lt!323666 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730398 (= lt!323666 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!730399 () Bool)

(declare-fun e!408763 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41152 (_ BitVec 32)) SeekEntryResult!7299)

(assert (=> b!730399 (= e!408763 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19692 a!3186) j!159) a!3186 mask!3328) (Found!7299 j!159)))))

(declare-fun b!730400 () Bool)

(declare-fun res!490821 () Bool)

(assert (=> b!730400 (=> (not res!490821) (not e!408761))))

(assert (=> b!730400 (= res!490821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!730401 () Bool)

(assert (=> b!730401 (= e!408757 e!408761)))

(declare-fun res!490824 () Bool)

(assert (=> b!730401 (=> (not res!490824) (not e!408761))))

(declare-fun lt!323671 () SeekEntryResult!7299)

(assert (=> b!730401 (= res!490824 (or (= lt!323671 (MissingZero!7299 i!1173)) (= lt!323671 (MissingVacant!7299 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41152 (_ BitVec 32)) SeekEntryResult!7299)

(assert (=> b!730401 (= lt!323671 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!730402 () Bool)

(declare-fun res!490822 () Bool)

(assert (=> b!730402 (=> (not res!490822) (not e!408757))))

(assert (=> b!730402 (= res!490822 (validKeyInArray!0 k!2102))))

(declare-fun b!730403 () Bool)

(declare-fun res!490827 () Bool)

(assert (=> b!730403 (=> (not res!490827) (not e!408765))))

(assert (=> b!730403 (= res!490827 e!408763)))

(declare-fun c!80163 () Bool)

(assert (=> b!730403 (= c!80163 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!730404 () Bool)

(declare-fun lt!323670 () SeekEntryResult!7299)

(declare-fun e!408759 () Bool)

(assert (=> b!730404 (= e!408759 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19692 a!3186) j!159) a!3186 mask!3328) lt!323670))))

(declare-fun b!730405 () Bool)

(assert (=> b!730405 (= e!408761 e!408765)))

(declare-fun res!490823 () Bool)

(assert (=> b!730405 (=> (not res!490823) (not e!408765))))

(declare-fun lt!323669 () SeekEntryResult!7299)

(assert (=> b!730405 (= res!490823 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19692 a!3186) j!159) mask!3328) (select (arr!19692 a!3186) j!159) a!3186 mask!3328) lt!323669))))

(assert (=> b!730405 (= lt!323669 (Intermediate!7299 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!730406 () Bool)

(declare-fun res!490829 () Bool)

(assert (=> b!730406 (=> (not res!490829) (not e!408761))))

(declare-datatypes ((List!13747 0))(
  ( (Nil!13744) (Cons!13743 (h!14803 (_ BitVec 64)) (t!20070 List!13747)) )
))
(declare-fun arrayNoDuplicates!0 (array!41152 (_ BitVec 32) List!13747) Bool)

(assert (=> b!730406 (= res!490829 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13744))))

(declare-fun b!730407 () Bool)

(assert (=> b!730407 (= e!408763 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19692 a!3186) j!159) a!3186 mask!3328) lt!323669))))

(declare-fun b!730408 () Bool)

(declare-fun res!490816 () Bool)

(assert (=> b!730408 (=> (not res!490816) (not e!408757))))

(declare-fun arrayContainsKey!0 (array!41152 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!730408 (= res!490816 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!730409 () Bool)

(assert (=> b!730409 (= e!408760 e!408759)))

(declare-fun res!490819 () Bool)

(assert (=> b!730409 (=> (not res!490819) (not e!408759))))

(assert (=> b!730409 (= res!490819 (= (seekEntryOrOpen!0 (select (arr!19692 a!3186) j!159) a!3186 mask!3328) lt!323670))))

(assert (=> b!730409 (= lt!323670 (Found!7299 j!159))))

(assert (= (and start!64750 res!490820) b!730394))

(assert (= (and b!730394 res!490815) b!730392))

(assert (= (and b!730392 res!490817) b!730402))

(assert (= (and b!730402 res!490822) b!730408))

(assert (= (and b!730408 res!490816) b!730401))

(assert (= (and b!730401 res!490824) b!730400))

(assert (= (and b!730400 res!490821) b!730406))

(assert (= (and b!730406 res!490829) b!730395))

(assert (= (and b!730395 res!490826) b!730405))

(assert (= (and b!730405 res!490823) b!730396))

(assert (= (and b!730396 res!490818) b!730403))

(assert (= (and b!730403 c!80163) b!730407))

(assert (= (and b!730403 (not c!80163)) b!730399))

(assert (= (and b!730403 res!490827) b!730393))

(assert (= (and b!730393 res!490825) b!730397))

(assert (= (and b!730397 res!490828) b!730409))

(assert (= (and b!730409 res!490819) b!730404))

(assert (= (and b!730397 (not res!490830)) b!730398))

(declare-fun m!684013 () Bool)

(assert (=> b!730409 m!684013))

(assert (=> b!730409 m!684013))

(declare-fun m!684015 () Bool)

(assert (=> b!730409 m!684015))

(declare-fun m!684017 () Bool)

(assert (=> b!730400 m!684017))

(declare-fun m!684019 () Bool)

(assert (=> b!730401 m!684019))

(assert (=> b!730404 m!684013))

(assert (=> b!730404 m!684013))

(declare-fun m!684021 () Bool)

(assert (=> b!730404 m!684021))

(declare-fun m!684023 () Bool)

(assert (=> b!730398 m!684023))

(declare-fun m!684025 () Bool)

(assert (=> b!730397 m!684025))

(declare-fun m!684027 () Bool)

(assert (=> b!730397 m!684027))

(assert (=> b!730392 m!684013))

(assert (=> b!730392 m!684013))

(declare-fun m!684029 () Bool)

(assert (=> b!730392 m!684029))

(declare-fun m!684031 () Bool)

(assert (=> b!730408 m!684031))

(assert (=> b!730405 m!684013))

(assert (=> b!730405 m!684013))

(declare-fun m!684033 () Bool)

(assert (=> b!730405 m!684033))

(assert (=> b!730405 m!684033))

(assert (=> b!730405 m!684013))

(declare-fun m!684035 () Bool)

(assert (=> b!730405 m!684035))

(declare-fun m!684037 () Bool)

(assert (=> b!730396 m!684037))

(declare-fun m!684039 () Bool)

(assert (=> b!730402 m!684039))

(assert (=> b!730399 m!684013))

(assert (=> b!730399 m!684013))

(declare-fun m!684041 () Bool)

(assert (=> b!730399 m!684041))

(declare-fun m!684043 () Bool)

(assert (=> b!730393 m!684043))

(declare-fun m!684045 () Bool)

(assert (=> b!730393 m!684045))

(declare-fun m!684047 () Bool)

(assert (=> b!730393 m!684047))

(declare-fun m!684049 () Bool)

(assert (=> b!730393 m!684049))

(assert (=> b!730393 m!684045))

(declare-fun m!684051 () Bool)

(assert (=> b!730393 m!684051))

(declare-fun m!684053 () Bool)

(assert (=> b!730406 m!684053))

(assert (=> b!730407 m!684013))

(assert (=> b!730407 m!684013))

(declare-fun m!684055 () Bool)

(assert (=> b!730407 m!684055))

(declare-fun m!684057 () Bool)

(assert (=> start!64750 m!684057))

(declare-fun m!684059 () Bool)

(assert (=> start!64750 m!684059))

(push 1)

