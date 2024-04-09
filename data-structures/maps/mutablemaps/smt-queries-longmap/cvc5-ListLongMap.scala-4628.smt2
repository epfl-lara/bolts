; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64486 () Bool)

(assert start!64486)

(declare-fun b!724886 () Bool)

(declare-fun res!486177 () Bool)

(declare-fun e!406014 () Bool)

(assert (=> b!724886 (=> (not res!486177) (not e!406014))))

(declare-datatypes ((array!40957 0))(
  ( (array!40958 (arr!19596 (Array (_ BitVec 32) (_ BitVec 64))) (size!20017 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40957)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40957 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!724886 (= res!486177 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!724888 () Bool)

(declare-fun e!406008 () Bool)

(declare-fun e!406011 () Bool)

(assert (=> b!724888 (= e!406008 e!406011)))

(declare-fun res!486182 () Bool)

(assert (=> b!724888 (=> (not res!486182) (not e!406011))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!321163 () (_ BitVec 64))

(declare-fun lt!321160 () array!40957)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7203 0))(
  ( (MissingZero!7203 (index!31179 (_ BitVec 32))) (Found!7203 (index!31180 (_ BitVec 32))) (Intermediate!7203 (undefined!8015 Bool) (index!31181 (_ BitVec 32)) (x!62206 (_ BitVec 32))) (Undefined!7203) (MissingVacant!7203 (index!31182 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40957 (_ BitVec 32)) SeekEntryResult!7203)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!724888 (= res!486182 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321163 mask!3328) lt!321163 lt!321160 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321163 lt!321160 mask!3328)))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!724888 (= lt!321163 (select (store (arr!19596 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!724888 (= lt!321160 (array!40958 (store (arr!19596 a!3186) i!1173 k!2102) (size!20017 a!3186)))))

(declare-fun b!724889 () Bool)

(assert (=> b!724889 (= e!406011 (not true))))

(declare-fun e!406012 () Bool)

(assert (=> b!724889 e!406012))

(declare-fun res!486185 () Bool)

(assert (=> b!724889 (=> (not res!486185) (not e!406012))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40957 (_ BitVec 32)) Bool)

(assert (=> b!724889 (= res!486185 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24724 0))(
  ( (Unit!24725) )
))
(declare-fun lt!321164 () Unit!24724)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40957 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24724)

(assert (=> b!724889 (= lt!321164 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!724890 () Bool)

(declare-fun res!486181 () Bool)

(assert (=> b!724890 (=> (not res!486181) (not e!406008))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!724890 (= res!486181 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19596 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!724891 () Bool)

(declare-fun res!486176 () Bool)

(assert (=> b!724891 (=> (not res!486176) (not e!406014))))

(assert (=> b!724891 (= res!486176 (and (= (size!20017 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20017 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20017 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!724892 () Bool)

(declare-fun res!486183 () Bool)

(declare-fun e!406013 () Bool)

(assert (=> b!724892 (=> (not res!486183) (not e!406013))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!724892 (= res!486183 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20017 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20017 a!3186))))))

(declare-fun b!724893 () Bool)

(declare-fun res!486186 () Bool)

(assert (=> b!724893 (=> (not res!486186) (not e!406008))))

(declare-fun e!406010 () Bool)

(assert (=> b!724893 (= res!486186 e!406010)))

(declare-fun c!79728 () Bool)

(assert (=> b!724893 (= c!79728 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!724894 () Bool)

(declare-fun res!486187 () Bool)

(assert (=> b!724894 (=> (not res!486187) (not e!406014))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!724894 (= res!486187 (validKeyInArray!0 k!2102))))

(declare-fun b!724895 () Bool)

(assert (=> b!724895 (= e!406013 e!406008)))

(declare-fun res!486188 () Bool)

(assert (=> b!724895 (=> (not res!486188) (not e!406008))))

(declare-fun lt!321161 () SeekEntryResult!7203)

(assert (=> b!724895 (= res!486188 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19596 a!3186) j!159) mask!3328) (select (arr!19596 a!3186) j!159) a!3186 mask!3328) lt!321161))))

(assert (=> b!724895 (= lt!321161 (Intermediate!7203 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!724887 () Bool)

(declare-fun res!486180 () Bool)

(assert (=> b!724887 (=> (not res!486180) (not e!406013))))

(declare-datatypes ((List!13651 0))(
  ( (Nil!13648) (Cons!13647 (h!14704 (_ BitVec 64)) (t!19974 List!13651)) )
))
(declare-fun arrayNoDuplicates!0 (array!40957 (_ BitVec 32) List!13651) Bool)

(assert (=> b!724887 (= res!486180 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13648))))

(declare-fun res!486179 () Bool)

(assert (=> start!64486 (=> (not res!486179) (not e!406014))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64486 (= res!486179 (validMask!0 mask!3328))))

(assert (=> start!64486 e!406014))

(assert (=> start!64486 true))

(declare-fun array_inv!15370 (array!40957) Bool)

(assert (=> start!64486 (array_inv!15370 a!3186)))

(declare-fun b!724896 () Bool)

(assert (=> b!724896 (= e!406014 e!406013)))

(declare-fun res!486178 () Bool)

(assert (=> b!724896 (=> (not res!486178) (not e!406013))))

(declare-fun lt!321162 () SeekEntryResult!7203)

(assert (=> b!724896 (= res!486178 (or (= lt!321162 (MissingZero!7203 i!1173)) (= lt!321162 (MissingVacant!7203 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40957 (_ BitVec 32)) SeekEntryResult!7203)

(assert (=> b!724896 (= lt!321162 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!724897 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40957 (_ BitVec 32)) SeekEntryResult!7203)

(assert (=> b!724897 (= e!406010 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19596 a!3186) j!159) a!3186 mask!3328) (Found!7203 j!159)))))

(declare-fun b!724898 () Bool)

(assert (=> b!724898 (= e!406012 (= (seekEntryOrOpen!0 (select (arr!19596 a!3186) j!159) a!3186 mask!3328) (Found!7203 j!159)))))

(declare-fun b!724899 () Bool)

(assert (=> b!724899 (= e!406010 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19596 a!3186) j!159) a!3186 mask!3328) lt!321161))))

(declare-fun b!724900 () Bool)

(declare-fun res!486184 () Bool)

(assert (=> b!724900 (=> (not res!486184) (not e!406013))))

(assert (=> b!724900 (= res!486184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!724901 () Bool)

(declare-fun res!486189 () Bool)

(assert (=> b!724901 (=> (not res!486189) (not e!406014))))

(assert (=> b!724901 (= res!486189 (validKeyInArray!0 (select (arr!19596 a!3186) j!159)))))

(assert (= (and start!64486 res!486179) b!724891))

(assert (= (and b!724891 res!486176) b!724901))

(assert (= (and b!724901 res!486189) b!724894))

(assert (= (and b!724894 res!486187) b!724886))

(assert (= (and b!724886 res!486177) b!724896))

(assert (= (and b!724896 res!486178) b!724900))

(assert (= (and b!724900 res!486184) b!724887))

(assert (= (and b!724887 res!486180) b!724892))

(assert (= (and b!724892 res!486183) b!724895))

(assert (= (and b!724895 res!486188) b!724890))

(assert (= (and b!724890 res!486181) b!724893))

(assert (= (and b!724893 c!79728) b!724899))

(assert (= (and b!724893 (not c!79728)) b!724897))

(assert (= (and b!724893 res!486186) b!724888))

(assert (= (and b!724888 res!486182) b!724889))

(assert (= (and b!724889 res!486185) b!724898))

(declare-fun m!679189 () Bool)

(assert (=> b!724886 m!679189))

(declare-fun m!679191 () Bool)

(assert (=> b!724899 m!679191))

(assert (=> b!724899 m!679191))

(declare-fun m!679193 () Bool)

(assert (=> b!724899 m!679193))

(assert (=> b!724901 m!679191))

(assert (=> b!724901 m!679191))

(declare-fun m!679195 () Bool)

(assert (=> b!724901 m!679195))

(declare-fun m!679197 () Bool)

(assert (=> b!724887 m!679197))

(declare-fun m!679199 () Bool)

(assert (=> b!724896 m!679199))

(declare-fun m!679201 () Bool)

(assert (=> b!724894 m!679201))

(declare-fun m!679203 () Bool)

(assert (=> b!724889 m!679203))

(declare-fun m!679205 () Bool)

(assert (=> b!724889 m!679205))

(declare-fun m!679207 () Bool)

(assert (=> b!724888 m!679207))

(declare-fun m!679209 () Bool)

(assert (=> b!724888 m!679209))

(assert (=> b!724888 m!679207))

(declare-fun m!679211 () Bool)

(assert (=> b!724888 m!679211))

(declare-fun m!679213 () Bool)

(assert (=> b!724888 m!679213))

(declare-fun m!679215 () Bool)

(assert (=> b!724888 m!679215))

(assert (=> b!724897 m!679191))

(assert (=> b!724897 m!679191))

(declare-fun m!679217 () Bool)

(assert (=> b!724897 m!679217))

(declare-fun m!679219 () Bool)

(assert (=> b!724900 m!679219))

(declare-fun m!679221 () Bool)

(assert (=> b!724890 m!679221))

(declare-fun m!679223 () Bool)

(assert (=> start!64486 m!679223))

(declare-fun m!679225 () Bool)

(assert (=> start!64486 m!679225))

(assert (=> b!724898 m!679191))

(assert (=> b!724898 m!679191))

(declare-fun m!679227 () Bool)

(assert (=> b!724898 m!679227))

(assert (=> b!724895 m!679191))

(assert (=> b!724895 m!679191))

(declare-fun m!679229 () Bool)

(assert (=> b!724895 m!679229))

(assert (=> b!724895 m!679229))

(assert (=> b!724895 m!679191))

(declare-fun m!679231 () Bool)

(assert (=> b!724895 m!679231))

(push 1)

