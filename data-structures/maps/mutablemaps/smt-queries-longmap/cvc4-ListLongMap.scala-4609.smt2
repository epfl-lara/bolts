; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64310 () Bool)

(assert start!64310)

(declare-fun b!722011 () Bool)

(declare-fun res!483913 () Bool)

(declare-fun e!404774 () Bool)

(assert (=> b!722011 (=> (not res!483913) (not e!404774))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40844 0))(
  ( (array!40845 (arr!19541 (Array (_ BitVec 32) (_ BitVec 64))) (size!19962 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40844)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!722011 (= res!483913 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19541 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!722012 () Bool)

(declare-fun e!404776 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7148 0))(
  ( (MissingZero!7148 (index!30959 (_ BitVec 32))) (Found!7148 (index!30960 (_ BitVec 32))) (Intermediate!7148 (undefined!7960 Bool) (index!30961 (_ BitVec 32)) (x!61990 (_ BitVec 32))) (Undefined!7148) (MissingVacant!7148 (index!30962 (_ BitVec 32))) )
))
(declare-fun lt!320180 () SeekEntryResult!7148)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40844 (_ BitVec 32)) SeekEntryResult!7148)

(assert (=> b!722012 (= e!404776 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19541 a!3186) j!159) a!3186 mask!3328) lt!320180))))

(declare-fun b!722013 () Bool)

(declare-fun res!483915 () Bool)

(declare-fun e!404775 () Bool)

(assert (=> b!722013 (=> (not res!483915) (not e!404775))))

(assert (=> b!722013 (= res!483915 (and (= (size!19962 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19962 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19962 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!722014 () Bool)

(declare-fun res!483909 () Bool)

(declare-fun e!404778 () Bool)

(assert (=> b!722014 (=> (not res!483909) (not e!404778))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40844 (_ BitVec 32)) Bool)

(assert (=> b!722014 (= res!483909 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722015 () Bool)

(assert (=> b!722015 (= e!404778 e!404774)))

(declare-fun res!483907 () Bool)

(assert (=> b!722015 (=> (not res!483907) (not e!404774))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722015 (= res!483907 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19541 a!3186) j!159) mask!3328) (select (arr!19541 a!3186) j!159) a!3186 mask!3328) lt!320180))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722015 (= lt!320180 (Intermediate!7148 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!722016 () Bool)

(declare-fun res!483914 () Bool)

(assert (=> b!722016 (=> (not res!483914) (not e!404775))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40844 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722016 (= res!483914 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!722017 () Bool)

(declare-fun res!483910 () Bool)

(assert (=> b!722017 (=> (not res!483910) (not e!404778))))

(declare-datatypes ((List!13596 0))(
  ( (Nil!13593) (Cons!13592 (h!14646 (_ BitVec 64)) (t!19919 List!13596)) )
))
(declare-fun arrayNoDuplicates!0 (array!40844 (_ BitVec 32) List!13596) Bool)

(assert (=> b!722017 (= res!483910 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13593))))

(declare-fun b!722018 () Bool)

(declare-fun res!483911 () Bool)

(assert (=> b!722018 (=> (not res!483911) (not e!404775))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722018 (= res!483911 (validKeyInArray!0 k!2102))))

(declare-fun b!722020 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40844 (_ BitVec 32)) SeekEntryResult!7148)

(assert (=> b!722020 (= e!404776 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19541 a!3186) j!159) a!3186 mask!3328) (Found!7148 j!159)))))

(declare-fun b!722021 () Bool)

(declare-fun res!483908 () Bool)

(assert (=> b!722021 (=> (not res!483908) (not e!404778))))

(assert (=> b!722021 (= res!483908 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19962 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19962 a!3186))))))

(declare-fun b!722022 () Bool)

(assert (=> b!722022 (= e!404775 e!404778)))

(declare-fun res!483905 () Bool)

(assert (=> b!722022 (=> (not res!483905) (not e!404778))))

(declare-fun lt!320179 () SeekEntryResult!7148)

(assert (=> b!722022 (= res!483905 (or (= lt!320179 (MissingZero!7148 i!1173)) (= lt!320179 (MissingVacant!7148 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40844 (_ BitVec 32)) SeekEntryResult!7148)

(assert (=> b!722022 (= lt!320179 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!722023 () Bool)

(declare-fun res!483906 () Bool)

(assert (=> b!722023 (=> (not res!483906) (not e!404775))))

(assert (=> b!722023 (= res!483906 (validKeyInArray!0 (select (arr!19541 a!3186) j!159)))))

(declare-fun b!722024 () Bool)

(declare-fun res!483904 () Bool)

(assert (=> b!722024 (=> (not res!483904) (not e!404774))))

(assert (=> b!722024 (= res!483904 e!404776)))

(declare-fun c!79425 () Bool)

(assert (=> b!722024 (= c!79425 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!483912 () Bool)

(assert (=> start!64310 (=> (not res!483912) (not e!404775))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64310 (= res!483912 (validMask!0 mask!3328))))

(assert (=> start!64310 e!404775))

(assert (=> start!64310 true))

(declare-fun array_inv!15315 (array!40844) Bool)

(assert (=> start!64310 (array_inv!15315 a!3186)))

(declare-fun b!722019 () Bool)

(assert (=> b!722019 (= e!404774 (and (bvsge mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(assert (= (and start!64310 res!483912) b!722013))

(assert (= (and b!722013 res!483915) b!722023))

(assert (= (and b!722023 res!483906) b!722018))

(assert (= (and b!722018 res!483911) b!722016))

(assert (= (and b!722016 res!483914) b!722022))

(assert (= (and b!722022 res!483905) b!722014))

(assert (= (and b!722014 res!483909) b!722017))

(assert (= (and b!722017 res!483910) b!722021))

(assert (= (and b!722021 res!483908) b!722015))

(assert (= (and b!722015 res!483907) b!722011))

(assert (= (and b!722011 res!483913) b!722024))

(assert (= (and b!722024 c!79425) b!722012))

(assert (= (and b!722024 (not c!79425)) b!722020))

(assert (= (and b!722024 res!483904) b!722019))

(declare-fun m!676719 () Bool)

(assert (=> b!722012 m!676719))

(assert (=> b!722012 m!676719))

(declare-fun m!676721 () Bool)

(assert (=> b!722012 m!676721))

(declare-fun m!676723 () Bool)

(assert (=> b!722018 m!676723))

(assert (=> b!722023 m!676719))

(assert (=> b!722023 m!676719))

(declare-fun m!676725 () Bool)

(assert (=> b!722023 m!676725))

(declare-fun m!676727 () Bool)

(assert (=> b!722017 m!676727))

(assert (=> b!722020 m!676719))

(assert (=> b!722020 m!676719))

(declare-fun m!676729 () Bool)

(assert (=> b!722020 m!676729))

(declare-fun m!676731 () Bool)

(assert (=> b!722011 m!676731))

(declare-fun m!676733 () Bool)

(assert (=> b!722016 m!676733))

(declare-fun m!676735 () Bool)

(assert (=> start!64310 m!676735))

(declare-fun m!676737 () Bool)

(assert (=> start!64310 m!676737))

(declare-fun m!676739 () Bool)

(assert (=> b!722014 m!676739))

(declare-fun m!676741 () Bool)

(assert (=> b!722022 m!676741))

(assert (=> b!722015 m!676719))

(assert (=> b!722015 m!676719))

(declare-fun m!676743 () Bool)

(assert (=> b!722015 m!676743))

(assert (=> b!722015 m!676743))

(assert (=> b!722015 m!676719))

(declare-fun m!676745 () Bool)

(assert (=> b!722015 m!676745))

(push 1)

(assert (not b!722022))

(assert (not b!722016))

(assert (not b!722015))

(assert (not b!722017))

(assert (not b!722023))

(assert (not b!722018))

(assert (not b!722014))

(assert (not b!722020))

(assert (not b!722012))

(assert (not start!64310))

(check-sat)

(pop 1)

(push 1)

(check-sat)

