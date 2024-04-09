; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67126 () Bool)

(assert start!67126)

(declare-fun b!774576 () Bool)

(declare-fun res!523864 () Bool)

(declare-fun e!431178 () Bool)

(assert (=> b!774576 (=> res!523864 e!431178)))

(declare-fun e!431177 () Bool)

(assert (=> b!774576 (= res!523864 e!431177)))

(declare-fun c!85766 () Bool)

(declare-fun lt!344993 () Bool)

(assert (=> b!774576 (= c!85766 lt!344993)))

(declare-fun b!774577 () Bool)

(declare-fun res!523850 () Bool)

(declare-fun e!431171 () Bool)

(assert (=> b!774577 (=> (not res!523850) (not e!431171))))

(declare-datatypes ((array!42436 0))(
  ( (array!42437 (arr!20310 (Array (_ BitVec 32) (_ BitVec 64))) (size!20731 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42436)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42436 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!774577 (= res!523850 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!774578 () Bool)

(declare-fun e!431179 () Bool)

(declare-fun e!431181 () Bool)

(assert (=> b!774578 (= e!431179 e!431181)))

(declare-fun res!523849 () Bool)

(assert (=> b!774578 (=> (not res!523849) (not e!431181))))

(declare-datatypes ((SeekEntryResult!7917 0))(
  ( (MissingZero!7917 (index!34035 (_ BitVec 32))) (Found!7917 (index!34036 (_ BitVec 32))) (Intermediate!7917 (undefined!8729 Bool) (index!34037 (_ BitVec 32)) (x!65013 (_ BitVec 32))) (Undefined!7917) (MissingVacant!7917 (index!34038 (_ BitVec 32))) )
))
(declare-fun lt!344995 () SeekEntryResult!7917)

(declare-fun lt!344991 () SeekEntryResult!7917)

(assert (=> b!774578 (= res!523849 (= lt!344995 lt!344991))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!345002 () array!42436)

(declare-fun lt!344999 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42436 (_ BitVec 32)) SeekEntryResult!7917)

(assert (=> b!774578 (= lt!344991 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344999 lt!345002 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!774578 (= lt!344995 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344999 mask!3328) lt!344999 lt!345002 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!774578 (= lt!344999 (select (store (arr!20310 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!774578 (= lt!345002 (array!42437 (store (arr!20310 a!3186) i!1173 k!2102) (size!20731 a!3186)))))

(declare-fun b!774579 () Bool)

(declare-fun lt!344992 () SeekEntryResult!7917)

(declare-fun lt!344994 () (_ BitVec 32))

(assert (=> b!774579 (= e!431177 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344994 (select (arr!20310 a!3186) j!159) a!3186 mask!3328) lt!344992)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!774580 () Bool)

(declare-fun lt!344998 () SeekEntryResult!7917)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42436 (_ BitVec 32)) SeekEntryResult!7917)

(assert (=> b!774580 (= e!431177 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344994 resIntermediateIndex!5 (select (arr!20310 a!3186) j!159) a!3186 mask!3328) lt!344998)))))

(declare-fun b!774581 () Bool)

(declare-fun e!431175 () Bool)

(assert (=> b!774581 (= e!431181 (not e!431175))))

(declare-fun res!523855 () Bool)

(assert (=> b!774581 (=> res!523855 e!431175)))

(assert (=> b!774581 (= res!523855 (or (not (is-Intermediate!7917 lt!344991)) (bvsge x!1131 (x!65013 lt!344991))))))

(assert (=> b!774581 (= lt!344998 (Found!7917 j!159))))

(declare-fun e!431180 () Bool)

(assert (=> b!774581 e!431180))

(declare-fun res!523861 () Bool)

(assert (=> b!774581 (=> (not res!523861) (not e!431180))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42436 (_ BitVec 32)) Bool)

(assert (=> b!774581 (= res!523861 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26704 0))(
  ( (Unit!26705) )
))
(declare-fun lt!344997 () Unit!26704)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42436 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26704)

(assert (=> b!774581 (= lt!344997 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!774582 () Bool)

(declare-fun res!523858 () Bool)

(declare-fun e!431174 () Bool)

(assert (=> b!774582 (=> (not res!523858) (not e!431174))))

(declare-datatypes ((List!14365 0))(
  ( (Nil!14362) (Cons!14361 (h!15469 (_ BitVec 64)) (t!20688 List!14365)) )
))
(declare-fun arrayNoDuplicates!0 (array!42436 (_ BitVec 32) List!14365) Bool)

(assert (=> b!774582 (= res!523858 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14362))))

(declare-fun b!774583 () Bool)

(declare-fun e!431176 () Unit!26704)

(declare-fun Unit!26706 () Unit!26704)

(assert (=> b!774583 (= e!431176 Unit!26706)))

(declare-fun lt!345000 () SeekEntryResult!7917)

(assert (=> b!774583 (= lt!345000 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20310 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!774583 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344994 resIntermediateIndex!5 (select (arr!20310 a!3186) j!159) a!3186 mask!3328) lt!344998)))

(declare-fun b!774584 () Bool)

(assert (=> b!774584 (= e!431174 e!431179)))

(declare-fun res!523851 () Bool)

(assert (=> b!774584 (=> (not res!523851) (not e!431179))))

(assert (=> b!774584 (= res!523851 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20310 a!3186) j!159) mask!3328) (select (arr!20310 a!3186) j!159) a!3186 mask!3328) lt!344992))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!774584 (= lt!344992 (Intermediate!7917 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!774585 () Bool)

(declare-fun res!523859 () Bool)

(assert (=> b!774585 (=> (not res!523859) (not e!431174))))

(assert (=> b!774585 (= res!523859 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20731 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20731 a!3186))))))

(declare-fun b!774586 () Bool)

(assert (=> b!774586 (= e!431178 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42436 (_ BitVec 32)) SeekEntryResult!7917)

(assert (=> b!774586 (= (seekEntryOrOpen!0 lt!344999 lt!345002 mask!3328) lt!344998)))

(declare-fun lt!345003 () Unit!26704)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!42436 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26704)

(assert (=> b!774586 (= lt!345003 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k!2102 j!159 lt!344994 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun e!431173 () Bool)

(declare-fun b!774587 () Bool)

(assert (=> b!774587 (= e!431173 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20310 a!3186) j!159) a!3186 mask!3328) (Found!7917 j!159)))))

(declare-fun b!774588 () Bool)

(declare-fun res!523847 () Bool)

(assert (=> b!774588 (=> (not res!523847) (not e!431171))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!774588 (= res!523847 (validKeyInArray!0 (select (arr!20310 a!3186) j!159)))))

(declare-fun b!774589 () Bool)

(declare-fun res!523852 () Bool)

(assert (=> b!774589 (=> res!523852 e!431178)))

(assert (=> b!774589 (= res!523852 (not (= lt!344995 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344994 lt!344999 lt!345002 mask!3328))))))

(declare-fun res!523854 () Bool)

(assert (=> start!67126 (=> (not res!523854) (not e!431171))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67126 (= res!523854 (validMask!0 mask!3328))))

(assert (=> start!67126 e!431171))

(assert (=> start!67126 true))

(declare-fun array_inv!16084 (array!42436) Bool)

(assert (=> start!67126 (array_inv!16084 a!3186)))

(declare-fun b!774590 () Bool)

(declare-fun res!523856 () Bool)

(assert (=> b!774590 (=> (not res!523856) (not e!431179))))

(assert (=> b!774590 (= res!523856 e!431173)))

(declare-fun c!85765 () Bool)

(assert (=> b!774590 (= c!85765 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!774591 () Bool)

(declare-fun res!523863 () Bool)

(assert (=> b!774591 (=> (not res!523863) (not e!431174))))

(assert (=> b!774591 (= res!523863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!774592 () Bool)

(declare-fun Unit!26707 () Unit!26704)

(assert (=> b!774592 (= e!431176 Unit!26707)))

(assert (=> b!774592 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344994 (select (arr!20310 a!3186) j!159) a!3186 mask!3328) lt!344992)))

(declare-fun b!774593 () Bool)

(assert (=> b!774593 (= e!431173 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20310 a!3186) j!159) a!3186 mask!3328) lt!344992))))

(declare-fun b!774594 () Bool)

(declare-fun res!523846 () Bool)

(assert (=> b!774594 (=> (not res!523846) (not e!431171))))

(assert (=> b!774594 (= res!523846 (validKeyInArray!0 k!2102))))

(declare-fun b!774595 () Bool)

(declare-fun res!523848 () Bool)

(assert (=> b!774595 (=> (not res!523848) (not e!431171))))

(assert (=> b!774595 (= res!523848 (and (= (size!20731 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20731 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20731 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!774596 () Bool)

(assert (=> b!774596 (= e!431171 e!431174)))

(declare-fun res!523857 () Bool)

(assert (=> b!774596 (=> (not res!523857) (not e!431174))))

(declare-fun lt!345001 () SeekEntryResult!7917)

(assert (=> b!774596 (= res!523857 (or (= lt!345001 (MissingZero!7917 i!1173)) (= lt!345001 (MissingVacant!7917 i!1173))))))

(assert (=> b!774596 (= lt!345001 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!774597 () Bool)

(declare-fun e!431182 () Bool)

(assert (=> b!774597 (= e!431180 e!431182)))

(declare-fun res!523862 () Bool)

(assert (=> b!774597 (=> (not res!523862) (not e!431182))))

(declare-fun lt!344996 () SeekEntryResult!7917)

(assert (=> b!774597 (= res!523862 (= (seekEntryOrOpen!0 (select (arr!20310 a!3186) j!159) a!3186 mask!3328) lt!344996))))

(assert (=> b!774597 (= lt!344996 (Found!7917 j!159))))

(declare-fun b!774598 () Bool)

(declare-fun res!523860 () Bool)

(assert (=> b!774598 (=> (not res!523860) (not e!431179))))

(assert (=> b!774598 (= res!523860 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20310 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!774599 () Bool)

(assert (=> b!774599 (= e!431175 e!431178)))

(declare-fun res!523853 () Bool)

(assert (=> b!774599 (=> res!523853 e!431178)))

(assert (=> b!774599 (= res!523853 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!344994 #b00000000000000000000000000000000) (bvsge lt!344994 (size!20731 a!3186))))))

(declare-fun lt!345004 () Unit!26704)

(assert (=> b!774599 (= lt!345004 e!431176)))

(declare-fun c!85767 () Bool)

(assert (=> b!774599 (= c!85767 lt!344993)))

(assert (=> b!774599 (= lt!344993 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!774599 (= lt!344994 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!774600 () Bool)

(assert (=> b!774600 (= e!431182 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20310 a!3186) j!159) a!3186 mask!3328) lt!344996))))

(assert (= (and start!67126 res!523854) b!774595))

(assert (= (and b!774595 res!523848) b!774588))

(assert (= (and b!774588 res!523847) b!774594))

(assert (= (and b!774594 res!523846) b!774577))

(assert (= (and b!774577 res!523850) b!774596))

(assert (= (and b!774596 res!523857) b!774591))

(assert (= (and b!774591 res!523863) b!774582))

(assert (= (and b!774582 res!523858) b!774585))

(assert (= (and b!774585 res!523859) b!774584))

(assert (= (and b!774584 res!523851) b!774598))

(assert (= (and b!774598 res!523860) b!774590))

(assert (= (and b!774590 c!85765) b!774593))

(assert (= (and b!774590 (not c!85765)) b!774587))

(assert (= (and b!774590 res!523856) b!774578))

(assert (= (and b!774578 res!523849) b!774581))

(assert (= (and b!774581 res!523861) b!774597))

(assert (= (and b!774597 res!523862) b!774600))

(assert (= (and b!774581 (not res!523855)) b!774599))

(assert (= (and b!774599 c!85767) b!774592))

(assert (= (and b!774599 (not c!85767)) b!774583))

(assert (= (and b!774599 (not res!523853)) b!774576))

(assert (= (and b!774576 c!85766) b!774579))

(assert (= (and b!774576 (not c!85766)) b!774580))

(assert (= (and b!774576 (not res!523864)) b!774589))

(assert (= (and b!774589 (not res!523852)) b!774586))

(declare-fun m!719041 () Bool)

(assert (=> b!774599 m!719041))

(declare-fun m!719043 () Bool)

(assert (=> b!774577 m!719043))

(declare-fun m!719045 () Bool)

(assert (=> b!774578 m!719045))

(declare-fun m!719047 () Bool)

(assert (=> b!774578 m!719047))

(declare-fun m!719049 () Bool)

(assert (=> b!774578 m!719049))

(assert (=> b!774578 m!719045))

(declare-fun m!719051 () Bool)

(assert (=> b!774578 m!719051))

(declare-fun m!719053 () Bool)

(assert (=> b!774578 m!719053))

(declare-fun m!719055 () Bool)

(assert (=> b!774587 m!719055))

(assert (=> b!774587 m!719055))

(declare-fun m!719057 () Bool)

(assert (=> b!774587 m!719057))

(declare-fun m!719059 () Bool)

(assert (=> b!774589 m!719059))

(assert (=> b!774583 m!719055))

(assert (=> b!774583 m!719055))

(assert (=> b!774583 m!719057))

(assert (=> b!774583 m!719055))

(declare-fun m!719061 () Bool)

(assert (=> b!774583 m!719061))

(assert (=> b!774584 m!719055))

(assert (=> b!774584 m!719055))

(declare-fun m!719063 () Bool)

(assert (=> b!774584 m!719063))

(assert (=> b!774584 m!719063))

(assert (=> b!774584 m!719055))

(declare-fun m!719065 () Bool)

(assert (=> b!774584 m!719065))

(assert (=> b!774580 m!719055))

(assert (=> b!774580 m!719055))

(assert (=> b!774580 m!719061))

(assert (=> b!774579 m!719055))

(assert (=> b!774579 m!719055))

(declare-fun m!719067 () Bool)

(assert (=> b!774579 m!719067))

(declare-fun m!719069 () Bool)

(assert (=> b!774586 m!719069))

(declare-fun m!719071 () Bool)

(assert (=> b!774586 m!719071))

(declare-fun m!719073 () Bool)

(assert (=> b!774594 m!719073))

(declare-fun m!719075 () Bool)

(assert (=> b!774596 m!719075))

(declare-fun m!719077 () Bool)

(assert (=> b!774598 m!719077))

(declare-fun m!719079 () Bool)

(assert (=> b!774582 m!719079))

(assert (=> b!774588 m!719055))

(assert (=> b!774588 m!719055))

(declare-fun m!719081 () Bool)

(assert (=> b!774588 m!719081))

(declare-fun m!719083 () Bool)

(assert (=> start!67126 m!719083))

(declare-fun m!719085 () Bool)

(assert (=> start!67126 m!719085))

(assert (=> b!774593 m!719055))

(assert (=> b!774593 m!719055))

(declare-fun m!719087 () Bool)

(assert (=> b!774593 m!719087))

(assert (=> b!774597 m!719055))

(assert (=> b!774597 m!719055))

(declare-fun m!719089 () Bool)

(assert (=> b!774597 m!719089))

(assert (=> b!774592 m!719055))

(assert (=> b!774592 m!719055))

(assert (=> b!774592 m!719067))

(declare-fun m!719091 () Bool)

(assert (=> b!774591 m!719091))

(assert (=> b!774600 m!719055))

(assert (=> b!774600 m!719055))

(declare-fun m!719093 () Bool)

(assert (=> b!774600 m!719093))

(declare-fun m!719095 () Bool)

(assert (=> b!774581 m!719095))

(declare-fun m!719097 () Bool)

(assert (=> b!774581 m!719097))

(push 1)

