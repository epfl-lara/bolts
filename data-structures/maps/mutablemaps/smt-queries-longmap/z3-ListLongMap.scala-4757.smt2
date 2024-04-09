; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65622 () Bool)

(assert start!65622)

(declare-fun res!506410 () Bool)

(declare-fun e!418587 () Bool)

(assert (=> start!65622 (=> (not res!506410) (not e!418587))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65622 (= res!506410 (validMask!0 mask!3328))))

(assert (=> start!65622 e!418587))

(assert (=> start!65622 true))

(declare-datatypes ((array!41748 0))(
  ( (array!41749 (arr!19984 (Array (_ BitVec 32) (_ BitVec 64))) (size!20405 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41748)

(declare-fun array_inv!15758 (array!41748) Bool)

(assert (=> start!65622 (array_inv!15758 a!3186)))

(declare-fun b!750179 () Bool)

(declare-fun e!418583 () Bool)

(assert (=> b!750179 (= e!418583 (bvsge mask!3328 #b00000000000000000000000000000000))))

(declare-fun e!418586 () Bool)

(assert (=> b!750179 e!418586))

(declare-fun res!506399 () Bool)

(assert (=> b!750179 (=> (not res!506399) (not e!418586))))

(declare-fun lt!333587 () (_ BitVec 64))

(assert (=> b!750179 (= res!506399 (= lt!333587 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25766 0))(
  ( (Unit!25767) )
))
(declare-fun lt!333584 () Unit!25766)

(declare-fun e!418582 () Unit!25766)

(assert (=> b!750179 (= lt!333584 e!418582)))

(declare-fun c!82271 () Bool)

(assert (=> b!750179 (= c!82271 (= lt!333587 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!750180 () Bool)

(declare-fun e!418577 () Bool)

(declare-fun e!418585 () Bool)

(assert (=> b!750180 (= e!418577 e!418585)))

(declare-fun res!506400 () Bool)

(assert (=> b!750180 (=> (not res!506400) (not e!418585))))

(declare-datatypes ((SeekEntryResult!7591 0))(
  ( (MissingZero!7591 (index!32731 (_ BitVec 32))) (Found!7591 (index!32732 (_ BitVec 32))) (Intermediate!7591 (undefined!8403 Bool) (index!32733 (_ BitVec 32)) (x!63686 (_ BitVec 32))) (Undefined!7591) (MissingVacant!7591 (index!32734 (_ BitVec 32))) )
))
(declare-fun lt!333579 () SeekEntryResult!7591)

(declare-fun lt!333583 () SeekEntryResult!7591)

(assert (=> b!750180 (= res!506400 (= lt!333579 lt!333583))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!333582 () array!41748)

(declare-fun lt!333581 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41748 (_ BitVec 32)) SeekEntryResult!7591)

(assert (=> b!750180 (= lt!333583 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333581 lt!333582 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!750180 (= lt!333579 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333581 mask!3328) lt!333581 lt!333582 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!750180 (= lt!333581 (select (store (arr!19984 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!750180 (= lt!333582 (array!41749 (store (arr!19984 a!3186) i!1173 k0!2102) (size!20405 a!3186)))))

(declare-fun b!750181 () Bool)

(declare-fun res!506402 () Bool)

(assert (=> b!750181 (=> (not res!506402) (not e!418587))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!750181 (= res!506402 (validKeyInArray!0 k0!2102))))

(declare-fun b!750182 () Bool)

(declare-fun res!506401 () Bool)

(assert (=> b!750182 (=> (not res!506401) (not e!418587))))

(declare-fun arrayContainsKey!0 (array!41748 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!750182 (= res!506401 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!750183 () Bool)

(declare-fun e!418579 () Bool)

(assert (=> b!750183 (= e!418579 e!418577)))

(declare-fun res!506409 () Bool)

(assert (=> b!750183 (=> (not res!506409) (not e!418577))))

(declare-fun lt!333580 () SeekEntryResult!7591)

(assert (=> b!750183 (= res!506409 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19984 a!3186) j!159) mask!3328) (select (arr!19984 a!3186) j!159) a!3186 mask!3328) lt!333580))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!750183 (= lt!333580 (Intermediate!7591 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!750184 () Bool)

(assert (=> b!750184 (= e!418587 e!418579)))

(declare-fun res!506405 () Bool)

(assert (=> b!750184 (=> (not res!506405) (not e!418579))))

(declare-fun lt!333586 () SeekEntryResult!7591)

(assert (=> b!750184 (= res!506405 (or (= lt!333586 (MissingZero!7591 i!1173)) (= lt!333586 (MissingVacant!7591 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41748 (_ BitVec 32)) SeekEntryResult!7591)

(assert (=> b!750184 (= lt!333586 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!750185 () Bool)

(declare-fun Unit!25768 () Unit!25766)

(assert (=> b!750185 (= e!418582 Unit!25768)))

(declare-fun b!750186 () Bool)

(declare-fun e!418580 () Bool)

(assert (=> b!750186 (= e!418580 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19984 a!3186) j!159) a!3186 mask!3328) lt!333580))))

(declare-fun b!750187 () Bool)

(declare-fun e!418581 () Bool)

(assert (=> b!750187 (= e!418585 (not e!418581))))

(declare-fun res!506408 () Bool)

(assert (=> b!750187 (=> res!506408 e!418581)))

(get-info :version)

(assert (=> b!750187 (= res!506408 (or (not ((_ is Intermediate!7591) lt!333583)) (bvslt x!1131 (x!63686 lt!333583)) (not (= x!1131 (x!63686 lt!333583))) (not (= index!1321 (index!32733 lt!333583)))))))

(declare-fun e!418584 () Bool)

(assert (=> b!750187 e!418584))

(declare-fun res!506406 () Bool)

(assert (=> b!750187 (=> (not res!506406) (not e!418584))))

(declare-fun lt!333577 () SeekEntryResult!7591)

(declare-fun lt!333585 () SeekEntryResult!7591)

(assert (=> b!750187 (= res!506406 (= lt!333577 lt!333585))))

(assert (=> b!750187 (= lt!333585 (Found!7591 j!159))))

(assert (=> b!750187 (= lt!333577 (seekEntryOrOpen!0 (select (arr!19984 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41748 (_ BitVec 32)) Bool)

(assert (=> b!750187 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333578 () Unit!25766)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41748 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25766)

(assert (=> b!750187 (= lt!333578 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!750188 () Bool)

(declare-fun Unit!25769 () Unit!25766)

(assert (=> b!750188 (= e!418582 Unit!25769)))

(assert (=> b!750188 false))

(declare-fun b!750189 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41748 (_ BitVec 32)) SeekEntryResult!7591)

(assert (=> b!750189 (= e!418586 (= (seekEntryOrOpen!0 lt!333581 lt!333582 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333581 lt!333582 mask!3328)))))

(declare-fun b!750190 () Bool)

(declare-fun res!506403 () Bool)

(assert (=> b!750190 (=> (not res!506403) (not e!418579))))

(declare-datatypes ((List!14039 0))(
  ( (Nil!14036) (Cons!14035 (h!15107 (_ BitVec 64)) (t!20362 List!14039)) )
))
(declare-fun arrayNoDuplicates!0 (array!41748 (_ BitVec 32) List!14039) Bool)

(assert (=> b!750190 (= res!506403 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14036))))

(declare-fun b!750191 () Bool)

(declare-fun res!506411 () Bool)

(assert (=> b!750191 (=> (not res!506411) (not e!418577))))

(assert (=> b!750191 (= res!506411 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19984 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!750192 () Bool)

(declare-fun res!506398 () Bool)

(assert (=> b!750192 (=> (not res!506398) (not e!418579))))

(assert (=> b!750192 (= res!506398 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!750193 () Bool)

(declare-fun res!506404 () Bool)

(assert (=> b!750193 (=> (not res!506404) (not e!418577))))

(assert (=> b!750193 (= res!506404 e!418580)))

(declare-fun c!82272 () Bool)

(assert (=> b!750193 (= c!82272 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!750194 () Bool)

(declare-fun res!506413 () Bool)

(assert (=> b!750194 (=> (not res!506413) (not e!418587))))

(assert (=> b!750194 (= res!506413 (and (= (size!20405 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20405 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20405 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!750195 () Bool)

(assert (=> b!750195 (= e!418581 e!418583)))

(declare-fun res!506414 () Bool)

(assert (=> b!750195 (=> res!506414 e!418583)))

(assert (=> b!750195 (= res!506414 (= lt!333587 lt!333581))))

(assert (=> b!750195 (= lt!333587 (select (store (arr!19984 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!750196 () Bool)

(declare-fun res!506415 () Bool)

(assert (=> b!750196 (=> res!506415 e!418581)))

(assert (=> b!750196 (= res!506415 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19984 a!3186) j!159) a!3186 mask!3328) lt!333585)))))

(declare-fun b!750197 () Bool)

(declare-fun res!506412 () Bool)

(assert (=> b!750197 (=> (not res!506412) (not e!418579))))

(assert (=> b!750197 (= res!506412 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20405 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20405 a!3186))))))

(declare-fun b!750198 () Bool)

(declare-fun res!506407 () Bool)

(assert (=> b!750198 (=> (not res!506407) (not e!418587))))

(assert (=> b!750198 (= res!506407 (validKeyInArray!0 (select (arr!19984 a!3186) j!159)))))

(declare-fun b!750199 () Bool)

(assert (=> b!750199 (= e!418584 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19984 a!3186) j!159) a!3186 mask!3328) lt!333585))))

(declare-fun b!750200 () Bool)

(assert (=> b!750200 (= e!418580 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19984 a!3186) j!159) a!3186 mask!3328) (Found!7591 j!159)))))

(assert (= (and start!65622 res!506410) b!750194))

(assert (= (and b!750194 res!506413) b!750198))

(assert (= (and b!750198 res!506407) b!750181))

(assert (= (and b!750181 res!506402) b!750182))

(assert (= (and b!750182 res!506401) b!750184))

(assert (= (and b!750184 res!506405) b!750192))

(assert (= (and b!750192 res!506398) b!750190))

(assert (= (and b!750190 res!506403) b!750197))

(assert (= (and b!750197 res!506412) b!750183))

(assert (= (and b!750183 res!506409) b!750191))

(assert (= (and b!750191 res!506411) b!750193))

(assert (= (and b!750193 c!82272) b!750186))

(assert (= (and b!750193 (not c!82272)) b!750200))

(assert (= (and b!750193 res!506404) b!750180))

(assert (= (and b!750180 res!506400) b!750187))

(assert (= (and b!750187 res!506406) b!750199))

(assert (= (and b!750187 (not res!506408)) b!750196))

(assert (= (and b!750196 (not res!506415)) b!750195))

(assert (= (and b!750195 (not res!506414)) b!750179))

(assert (= (and b!750179 c!82271) b!750188))

(assert (= (and b!750179 (not c!82271)) b!750185))

(assert (= (and b!750179 res!506399) b!750189))

(declare-fun m!699701 () Bool)

(assert (=> b!750195 m!699701))

(declare-fun m!699703 () Bool)

(assert (=> b!750195 m!699703))

(declare-fun m!699705 () Bool)

(assert (=> b!750182 m!699705))

(declare-fun m!699707 () Bool)

(assert (=> b!750184 m!699707))

(declare-fun m!699709 () Bool)

(assert (=> b!750199 m!699709))

(assert (=> b!750199 m!699709))

(declare-fun m!699711 () Bool)

(assert (=> b!750199 m!699711))

(declare-fun m!699713 () Bool)

(assert (=> b!750192 m!699713))

(declare-fun m!699715 () Bool)

(assert (=> b!750190 m!699715))

(assert (=> b!750187 m!699709))

(assert (=> b!750187 m!699709))

(declare-fun m!699717 () Bool)

(assert (=> b!750187 m!699717))

(declare-fun m!699719 () Bool)

(assert (=> b!750187 m!699719))

(declare-fun m!699721 () Bool)

(assert (=> b!750187 m!699721))

(assert (=> b!750198 m!699709))

(assert (=> b!750198 m!699709))

(declare-fun m!699723 () Bool)

(assert (=> b!750198 m!699723))

(declare-fun m!699725 () Bool)

(assert (=> b!750189 m!699725))

(declare-fun m!699727 () Bool)

(assert (=> b!750189 m!699727))

(assert (=> b!750186 m!699709))

(assert (=> b!750186 m!699709))

(declare-fun m!699729 () Bool)

(assert (=> b!750186 m!699729))

(assert (=> b!750200 m!699709))

(assert (=> b!750200 m!699709))

(declare-fun m!699731 () Bool)

(assert (=> b!750200 m!699731))

(declare-fun m!699733 () Bool)

(assert (=> start!65622 m!699733))

(declare-fun m!699735 () Bool)

(assert (=> start!65622 m!699735))

(declare-fun m!699737 () Bool)

(assert (=> b!750180 m!699737))

(declare-fun m!699739 () Bool)

(assert (=> b!750180 m!699739))

(assert (=> b!750180 m!699737))

(assert (=> b!750180 m!699701))

(declare-fun m!699741 () Bool)

(assert (=> b!750180 m!699741))

(declare-fun m!699743 () Bool)

(assert (=> b!750180 m!699743))

(declare-fun m!699745 () Bool)

(assert (=> b!750181 m!699745))

(declare-fun m!699747 () Bool)

(assert (=> b!750191 m!699747))

(assert (=> b!750183 m!699709))

(assert (=> b!750183 m!699709))

(declare-fun m!699749 () Bool)

(assert (=> b!750183 m!699749))

(assert (=> b!750183 m!699749))

(assert (=> b!750183 m!699709))

(declare-fun m!699751 () Bool)

(assert (=> b!750183 m!699751))

(assert (=> b!750196 m!699709))

(assert (=> b!750196 m!699709))

(assert (=> b!750196 m!699731))

(check-sat (not b!750182) (not b!750190) (not b!750180) (not b!750181) (not b!750198) (not start!65622) (not b!750192) (not b!750183) (not b!750187) (not b!750199) (not b!750186) (not b!750184) (not b!750196) (not b!750200) (not b!750189))
(check-sat)
