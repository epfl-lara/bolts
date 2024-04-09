; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66400 () Bool)

(assert start!66400)

(declare-fun b!764822 () Bool)

(declare-fun res!517545 () Bool)

(declare-fun e!425990 () Bool)

(assert (=> b!764822 (=> (not res!517545) (not e!425990))))

(declare-datatypes ((array!42195 0))(
  ( (array!42196 (arr!20200 (Array (_ BitVec 32) (_ BitVec 64))) (size!20621 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42195)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!764822 (= res!517545 (and (= (size!20621 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20621 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20621 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!764823 () Bool)

(declare-fun e!425988 () Bool)

(declare-datatypes ((SeekEntryResult!7807 0))(
  ( (MissingZero!7807 (index!33595 (_ BitVec 32))) (Found!7807 (index!33596 (_ BitVec 32))) (Intermediate!7807 (undefined!8619 Bool) (index!33597 (_ BitVec 32)) (x!64525 (_ BitVec 32))) (Undefined!7807) (MissingVacant!7807 (index!33598 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42195 (_ BitVec 32)) SeekEntryResult!7807)

(assert (=> b!764823 (= e!425988 (= (seekEntryOrOpen!0 (select (arr!20200 a!3186) j!159) a!3186 mask!3328) (Found!7807 j!159)))))

(declare-fun b!764824 () Bool)

(declare-fun res!517542 () Bool)

(declare-fun e!425989 () Bool)

(assert (=> b!764824 (=> (not res!517542) (not e!425989))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42195 (_ BitVec 32)) Bool)

(assert (=> b!764824 (= res!517542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!764826 () Bool)

(declare-fun res!517537 () Bool)

(declare-fun e!425987 () Bool)

(assert (=> b!764826 (=> (not res!517537) (not e!425987))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!764826 (= res!517537 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20200 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!425985 () Bool)

(declare-fun b!764827 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!340313 () SeekEntryResult!7807)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42195 (_ BitVec 32)) SeekEntryResult!7807)

(assert (=> b!764827 (= e!425985 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20200 a!3186) j!159) a!3186 mask!3328) lt!340313))))

(declare-fun b!764828 () Bool)

(assert (=> b!764828 (= e!425989 e!425987)))

(declare-fun res!517543 () Bool)

(assert (=> b!764828 (=> (not res!517543) (not e!425987))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!764828 (= res!517543 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20200 a!3186) j!159) mask!3328) (select (arr!20200 a!3186) j!159) a!3186 mask!3328) lt!340313))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!764828 (= lt!340313 (Intermediate!7807 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!764829 () Bool)

(declare-fun res!517540 () Bool)

(assert (=> b!764829 (=> (not res!517540) (not e!425987))))

(assert (=> b!764829 (= res!517540 e!425985)))

(declare-fun c!84033 () Bool)

(assert (=> b!764829 (= c!84033 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!764830 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42195 (_ BitVec 32)) SeekEntryResult!7807)

(assert (=> b!764830 (= e!425985 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20200 a!3186) j!159) a!3186 mask!3328) (Found!7807 j!159)))))

(declare-fun b!764831 () Bool)

(declare-fun e!425984 () Bool)

(assert (=> b!764831 (= e!425984 (not true))))

(assert (=> b!764831 e!425988))

(declare-fun res!517536 () Bool)

(assert (=> b!764831 (=> (not res!517536) (not e!425988))))

(assert (=> b!764831 (= res!517536 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26340 0))(
  ( (Unit!26341) )
))
(declare-fun lt!340314 () Unit!26340)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42195 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26340)

(assert (=> b!764831 (= lt!340314 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!764832 () Bool)

(declare-fun res!517541 () Bool)

(assert (=> b!764832 (=> (not res!517541) (not e!425990))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42195 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!764832 (= res!517541 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!764833 () Bool)

(declare-fun res!517534 () Bool)

(assert (=> b!764833 (=> (not res!517534) (not e!425990))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!764833 (= res!517534 (validKeyInArray!0 (select (arr!20200 a!3186) j!159)))))

(declare-fun b!764834 () Bool)

(declare-fun res!517538 () Bool)

(assert (=> b!764834 (=> (not res!517538) (not e!425989))))

(declare-datatypes ((List!14255 0))(
  ( (Nil!14252) (Cons!14251 (h!15338 (_ BitVec 64)) (t!20578 List!14255)) )
))
(declare-fun arrayNoDuplicates!0 (array!42195 (_ BitVec 32) List!14255) Bool)

(assert (=> b!764834 (= res!517538 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14252))))

(declare-fun b!764835 () Bool)

(declare-fun res!517533 () Bool)

(assert (=> b!764835 (=> (not res!517533) (not e!425989))))

(assert (=> b!764835 (= res!517533 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20621 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20621 a!3186))))))

(declare-fun res!517539 () Bool)

(assert (=> start!66400 (=> (not res!517539) (not e!425990))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66400 (= res!517539 (validMask!0 mask!3328))))

(assert (=> start!66400 e!425990))

(assert (=> start!66400 true))

(declare-fun array_inv!15974 (array!42195) Bool)

(assert (=> start!66400 (array_inv!15974 a!3186)))

(declare-fun b!764825 () Bool)

(assert (=> b!764825 (= e!425987 e!425984)))

(declare-fun res!517532 () Bool)

(assert (=> b!764825 (=> (not res!517532) (not e!425984))))

(declare-fun lt!340312 () (_ BitVec 64))

(declare-fun lt!340311 () array!42195)

(assert (=> b!764825 (= res!517532 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340312 mask!3328) lt!340312 lt!340311 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340312 lt!340311 mask!3328)))))

(assert (=> b!764825 (= lt!340312 (select (store (arr!20200 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!764825 (= lt!340311 (array!42196 (store (arr!20200 a!3186) i!1173 k0!2102) (size!20621 a!3186)))))

(declare-fun b!764836 () Bool)

(assert (=> b!764836 (= e!425990 e!425989)))

(declare-fun res!517535 () Bool)

(assert (=> b!764836 (=> (not res!517535) (not e!425989))))

(declare-fun lt!340315 () SeekEntryResult!7807)

(assert (=> b!764836 (= res!517535 (or (= lt!340315 (MissingZero!7807 i!1173)) (= lt!340315 (MissingVacant!7807 i!1173))))))

(assert (=> b!764836 (= lt!340315 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!764837 () Bool)

(declare-fun res!517544 () Bool)

(assert (=> b!764837 (=> (not res!517544) (not e!425990))))

(assert (=> b!764837 (= res!517544 (validKeyInArray!0 k0!2102))))

(assert (= (and start!66400 res!517539) b!764822))

(assert (= (and b!764822 res!517545) b!764833))

(assert (= (and b!764833 res!517534) b!764837))

(assert (= (and b!764837 res!517544) b!764832))

(assert (= (and b!764832 res!517541) b!764836))

(assert (= (and b!764836 res!517535) b!764824))

(assert (= (and b!764824 res!517542) b!764834))

(assert (= (and b!764834 res!517538) b!764835))

(assert (= (and b!764835 res!517533) b!764828))

(assert (= (and b!764828 res!517543) b!764826))

(assert (= (and b!764826 res!517537) b!764829))

(assert (= (and b!764829 c!84033) b!764827))

(assert (= (and b!764829 (not c!84033)) b!764830))

(assert (= (and b!764829 res!517540) b!764825))

(assert (= (and b!764825 res!517532) b!764831))

(assert (= (and b!764831 res!517536) b!764823))

(declare-fun m!711127 () Bool)

(assert (=> b!764832 m!711127))

(declare-fun m!711129 () Bool)

(assert (=> b!764827 m!711129))

(assert (=> b!764827 m!711129))

(declare-fun m!711131 () Bool)

(assert (=> b!764827 m!711131))

(declare-fun m!711133 () Bool)

(assert (=> b!764831 m!711133))

(declare-fun m!711135 () Bool)

(assert (=> b!764831 m!711135))

(assert (=> b!764830 m!711129))

(assert (=> b!764830 m!711129))

(declare-fun m!711137 () Bool)

(assert (=> b!764830 m!711137))

(declare-fun m!711139 () Bool)

(assert (=> b!764836 m!711139))

(declare-fun m!711141 () Bool)

(assert (=> b!764825 m!711141))

(assert (=> b!764825 m!711141))

(declare-fun m!711143 () Bool)

(assert (=> b!764825 m!711143))

(declare-fun m!711145 () Bool)

(assert (=> b!764825 m!711145))

(declare-fun m!711147 () Bool)

(assert (=> b!764825 m!711147))

(declare-fun m!711149 () Bool)

(assert (=> b!764825 m!711149))

(assert (=> b!764823 m!711129))

(assert (=> b!764823 m!711129))

(declare-fun m!711151 () Bool)

(assert (=> b!764823 m!711151))

(declare-fun m!711153 () Bool)

(assert (=> b!764837 m!711153))

(declare-fun m!711155 () Bool)

(assert (=> b!764834 m!711155))

(declare-fun m!711157 () Bool)

(assert (=> b!764826 m!711157))

(assert (=> b!764828 m!711129))

(assert (=> b!764828 m!711129))

(declare-fun m!711159 () Bool)

(assert (=> b!764828 m!711159))

(assert (=> b!764828 m!711159))

(assert (=> b!764828 m!711129))

(declare-fun m!711161 () Bool)

(assert (=> b!764828 m!711161))

(declare-fun m!711163 () Bool)

(assert (=> b!764824 m!711163))

(assert (=> b!764833 m!711129))

(assert (=> b!764833 m!711129))

(declare-fun m!711165 () Bool)

(assert (=> b!764833 m!711165))

(declare-fun m!711167 () Bool)

(assert (=> start!66400 m!711167))

(declare-fun m!711169 () Bool)

(assert (=> start!66400 m!711169))

(check-sat (not b!764828) (not b!764836) (not b!764830) (not b!764834) (not b!764823) (not b!764825) (not b!764832) (not b!764831) (not start!66400) (not b!764833) (not b!764837) (not b!764824) (not b!764827))
(check-sat)
