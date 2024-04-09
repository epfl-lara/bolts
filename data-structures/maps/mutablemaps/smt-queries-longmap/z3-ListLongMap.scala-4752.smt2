; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65592 () Bool)

(assert start!65592)

(declare-fun b!749189 () Bool)

(declare-fun e!418084 () Bool)

(declare-fun e!418091 () Bool)

(assert (=> b!749189 (= e!418084 e!418091)))

(declare-fun res!505603 () Bool)

(assert (=> b!749189 (=> (not res!505603) (not e!418091))))

(declare-datatypes ((SeekEntryResult!7576 0))(
  ( (MissingZero!7576 (index!32671 (_ BitVec 32))) (Found!7576 (index!32672 (_ BitVec 32))) (Intermediate!7576 (undefined!8388 Bool) (index!32673 (_ BitVec 32)) (x!63631 (_ BitVec 32))) (Undefined!7576) (MissingVacant!7576 (index!32674 (_ BitVec 32))) )
))
(declare-fun lt!333087 () SeekEntryResult!7576)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!749189 (= res!505603 (or (= lt!333087 (MissingZero!7576 i!1173)) (= lt!333087 (MissingVacant!7576 i!1173))))))

(declare-datatypes ((array!41718 0))(
  ( (array!41719 (arr!19969 (Array (_ BitVec 32) (_ BitVec 64))) (size!20390 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41718)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41718 (_ BitVec 32)) SeekEntryResult!7576)

(assert (=> b!749189 (= lt!333087 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!333084 () SeekEntryResult!7576)

(declare-fun b!749191 () Bool)

(declare-fun e!418090 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41718 (_ BitVec 32)) SeekEntryResult!7576)

(assert (=> b!749191 (= e!418090 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19969 a!3186) j!159) a!3186 mask!3328) lt!333084))))

(declare-fun b!749192 () Bool)

(declare-fun res!505599 () Bool)

(assert (=> b!749192 (=> (not res!505599) (not e!418084))))

(assert (=> b!749192 (= res!505599 (and (= (size!20390 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20390 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20390 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!749193 () Bool)

(declare-fun e!418092 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!749193 (= e!418092 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19969 a!3186) j!159) a!3186 mask!3328) (Found!7576 j!159)))))

(declare-fun b!749194 () Bool)

(declare-fun e!418086 () Bool)

(declare-fun e!418087 () Bool)

(assert (=> b!749194 (= e!418086 e!418087)))

(declare-fun res!505597 () Bool)

(assert (=> b!749194 (=> res!505597 e!418087)))

(declare-fun lt!333082 () (_ BitVec 64))

(declare-fun lt!333085 () (_ BitVec 64))

(assert (=> b!749194 (= res!505597 (= lt!333082 lt!333085))))

(assert (=> b!749194 (= lt!333082 (select (store (arr!19969 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!749195 () Bool)

(assert (=> b!749195 (= e!418087 true)))

(declare-fun e!418083 () Bool)

(assert (=> b!749195 e!418083))

(declare-fun res!505594 () Bool)

(assert (=> b!749195 (=> (not res!505594) (not e!418083))))

(assert (=> b!749195 (= res!505594 (= lt!333082 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25706 0))(
  ( (Unit!25707) )
))
(declare-fun lt!333091 () Unit!25706)

(declare-fun e!418082 () Unit!25706)

(assert (=> b!749195 (= lt!333091 e!418082)))

(declare-fun c!82182 () Bool)

(assert (=> b!749195 (= c!82182 (= lt!333082 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!749196 () Bool)

(declare-fun Unit!25708 () Unit!25706)

(assert (=> b!749196 (= e!418082 Unit!25708)))

(declare-fun b!749197 () Bool)

(declare-fun res!505591 () Bool)

(assert (=> b!749197 (=> (not res!505591) (not e!418084))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!749197 (= res!505591 (validKeyInArray!0 k0!2102))))

(declare-fun b!749198 () Bool)

(declare-fun res!505590 () Bool)

(declare-fun e!418085 () Bool)

(assert (=> b!749198 (=> (not res!505590) (not e!418085))))

(assert (=> b!749198 (= res!505590 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19969 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!749199 () Bool)

(declare-fun Unit!25709 () Unit!25706)

(assert (=> b!749199 (= e!418082 Unit!25709)))

(assert (=> b!749199 false))

(declare-fun b!749200 () Bool)

(declare-fun res!505605 () Bool)

(assert (=> b!749200 (=> (not res!505605) (not e!418084))))

(declare-fun arrayContainsKey!0 (array!41718 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!749200 (= res!505605 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!749201 () Bool)

(declare-fun lt!333086 () array!41718)

(assert (=> b!749201 (= e!418083 (= (seekEntryOrOpen!0 lt!333085 lt!333086 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333085 lt!333086 mask!3328)))))

(declare-fun res!505602 () Bool)

(assert (=> start!65592 (=> (not res!505602) (not e!418084))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65592 (= res!505602 (validMask!0 mask!3328))))

(assert (=> start!65592 e!418084))

(assert (=> start!65592 true))

(declare-fun array_inv!15743 (array!41718) Bool)

(assert (=> start!65592 (array_inv!15743 a!3186)))

(declare-fun b!749190 () Bool)

(declare-fun e!418089 () Bool)

(assert (=> b!749190 (= e!418089 (not e!418086))))

(declare-fun res!505598 () Bool)

(assert (=> b!749190 (=> res!505598 e!418086)))

(declare-fun lt!333088 () SeekEntryResult!7576)

(get-info :version)

(assert (=> b!749190 (= res!505598 (or (not ((_ is Intermediate!7576) lt!333088)) (bvslt x!1131 (x!63631 lt!333088)) (not (= x!1131 (x!63631 lt!333088))) (not (= index!1321 (index!32673 lt!333088)))))))

(assert (=> b!749190 e!418090))

(declare-fun res!505589 () Bool)

(assert (=> b!749190 (=> (not res!505589) (not e!418090))))

(declare-fun lt!333090 () SeekEntryResult!7576)

(assert (=> b!749190 (= res!505589 (= lt!333090 lt!333084))))

(assert (=> b!749190 (= lt!333084 (Found!7576 j!159))))

(assert (=> b!749190 (= lt!333090 (seekEntryOrOpen!0 (select (arr!19969 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41718 (_ BitVec 32)) Bool)

(assert (=> b!749190 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333089 () Unit!25706)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41718 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25706)

(assert (=> b!749190 (= lt!333089 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!749202 () Bool)

(declare-fun res!505604 () Bool)

(assert (=> b!749202 (=> (not res!505604) (not e!418091))))

(assert (=> b!749202 (= res!505604 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20390 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20390 a!3186))))))

(declare-fun b!749203 () Bool)

(declare-fun res!505596 () Bool)

(assert (=> b!749203 (=> (not res!505596) (not e!418091))))

(assert (=> b!749203 (= res!505596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!749204 () Bool)

(declare-fun res!505601 () Bool)

(assert (=> b!749204 (=> (not res!505601) (not e!418084))))

(assert (=> b!749204 (= res!505601 (validKeyInArray!0 (select (arr!19969 a!3186) j!159)))))

(declare-fun b!749205 () Bool)

(declare-fun res!505593 () Bool)

(assert (=> b!749205 (=> (not res!505593) (not e!418091))))

(declare-datatypes ((List!14024 0))(
  ( (Nil!14021) (Cons!14020 (h!15092 (_ BitVec 64)) (t!20347 List!14024)) )
))
(declare-fun arrayNoDuplicates!0 (array!41718 (_ BitVec 32) List!14024) Bool)

(assert (=> b!749205 (= res!505593 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14021))))

(declare-fun b!749206 () Bool)

(declare-fun res!505592 () Bool)

(assert (=> b!749206 (=> (not res!505592) (not e!418085))))

(assert (=> b!749206 (= res!505592 e!418092)))

(declare-fun c!82181 () Bool)

(assert (=> b!749206 (= c!82181 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!749207 () Bool)

(assert (=> b!749207 (= e!418091 e!418085)))

(declare-fun res!505588 () Bool)

(assert (=> b!749207 (=> (not res!505588) (not e!418085))))

(declare-fun lt!333083 () SeekEntryResult!7576)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41718 (_ BitVec 32)) SeekEntryResult!7576)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!749207 (= res!505588 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19969 a!3186) j!159) mask!3328) (select (arr!19969 a!3186) j!159) a!3186 mask!3328) lt!333083))))

(assert (=> b!749207 (= lt!333083 (Intermediate!7576 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!749208 () Bool)

(assert (=> b!749208 (= e!418092 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19969 a!3186) j!159) a!3186 mask!3328) lt!333083))))

(declare-fun b!749209 () Bool)

(declare-fun res!505595 () Bool)

(assert (=> b!749209 (=> res!505595 e!418086)))

(assert (=> b!749209 (= res!505595 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19969 a!3186) j!159) a!3186 mask!3328) lt!333084)))))

(declare-fun b!749210 () Bool)

(assert (=> b!749210 (= e!418085 e!418089)))

(declare-fun res!505600 () Bool)

(assert (=> b!749210 (=> (not res!505600) (not e!418089))))

(declare-fun lt!333092 () SeekEntryResult!7576)

(assert (=> b!749210 (= res!505600 (= lt!333092 lt!333088))))

(assert (=> b!749210 (= lt!333088 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333085 lt!333086 mask!3328))))

(assert (=> b!749210 (= lt!333092 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333085 mask!3328) lt!333085 lt!333086 mask!3328))))

(assert (=> b!749210 (= lt!333085 (select (store (arr!19969 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!749210 (= lt!333086 (array!41719 (store (arr!19969 a!3186) i!1173 k0!2102) (size!20390 a!3186)))))

(assert (= (and start!65592 res!505602) b!749192))

(assert (= (and b!749192 res!505599) b!749204))

(assert (= (and b!749204 res!505601) b!749197))

(assert (= (and b!749197 res!505591) b!749200))

(assert (= (and b!749200 res!505605) b!749189))

(assert (= (and b!749189 res!505603) b!749203))

(assert (= (and b!749203 res!505596) b!749205))

(assert (= (and b!749205 res!505593) b!749202))

(assert (= (and b!749202 res!505604) b!749207))

(assert (= (and b!749207 res!505588) b!749198))

(assert (= (and b!749198 res!505590) b!749206))

(assert (= (and b!749206 c!82181) b!749208))

(assert (= (and b!749206 (not c!82181)) b!749193))

(assert (= (and b!749206 res!505592) b!749210))

(assert (= (and b!749210 res!505600) b!749190))

(assert (= (and b!749190 res!505589) b!749191))

(assert (= (and b!749190 (not res!505598)) b!749209))

(assert (= (and b!749209 (not res!505595)) b!749194))

(assert (= (and b!749194 (not res!505597)) b!749195))

(assert (= (and b!749195 c!82182) b!749199))

(assert (= (and b!749195 (not c!82182)) b!749196))

(assert (= (and b!749195 res!505594) b!749201))

(declare-fun m!698921 () Bool)

(assert (=> b!749190 m!698921))

(assert (=> b!749190 m!698921))

(declare-fun m!698923 () Bool)

(assert (=> b!749190 m!698923))

(declare-fun m!698925 () Bool)

(assert (=> b!749190 m!698925))

(declare-fun m!698927 () Bool)

(assert (=> b!749190 m!698927))

(declare-fun m!698929 () Bool)

(assert (=> b!749205 m!698929))

(declare-fun m!698931 () Bool)

(assert (=> b!749194 m!698931))

(declare-fun m!698933 () Bool)

(assert (=> b!749194 m!698933))

(declare-fun m!698935 () Bool)

(assert (=> b!749210 m!698935))

(assert (=> b!749210 m!698931))

(declare-fun m!698937 () Bool)

(assert (=> b!749210 m!698937))

(assert (=> b!749210 m!698935))

(declare-fun m!698939 () Bool)

(assert (=> b!749210 m!698939))

(declare-fun m!698941 () Bool)

(assert (=> b!749210 m!698941))

(declare-fun m!698943 () Bool)

(assert (=> b!749200 m!698943))

(assert (=> b!749204 m!698921))

(assert (=> b!749204 m!698921))

(declare-fun m!698945 () Bool)

(assert (=> b!749204 m!698945))

(declare-fun m!698947 () Bool)

(assert (=> b!749201 m!698947))

(declare-fun m!698949 () Bool)

(assert (=> b!749201 m!698949))

(assert (=> b!749208 m!698921))

(assert (=> b!749208 m!698921))

(declare-fun m!698951 () Bool)

(assert (=> b!749208 m!698951))

(assert (=> b!749207 m!698921))

(assert (=> b!749207 m!698921))

(declare-fun m!698953 () Bool)

(assert (=> b!749207 m!698953))

(assert (=> b!749207 m!698953))

(assert (=> b!749207 m!698921))

(declare-fun m!698955 () Bool)

(assert (=> b!749207 m!698955))

(assert (=> b!749209 m!698921))

(assert (=> b!749209 m!698921))

(declare-fun m!698957 () Bool)

(assert (=> b!749209 m!698957))

(declare-fun m!698959 () Bool)

(assert (=> b!749189 m!698959))

(declare-fun m!698961 () Bool)

(assert (=> b!749197 m!698961))

(assert (=> b!749191 m!698921))

(assert (=> b!749191 m!698921))

(declare-fun m!698963 () Bool)

(assert (=> b!749191 m!698963))

(declare-fun m!698965 () Bool)

(assert (=> start!65592 m!698965))

(declare-fun m!698967 () Bool)

(assert (=> start!65592 m!698967))

(declare-fun m!698969 () Bool)

(assert (=> b!749203 m!698969))

(assert (=> b!749193 m!698921))

(assert (=> b!749193 m!698921))

(assert (=> b!749193 m!698957))

(declare-fun m!698971 () Bool)

(assert (=> b!749198 m!698971))

(check-sat (not b!749208) (not b!749193) (not b!749201) (not start!65592) (not b!749207) (not b!749203) (not b!749209) (not b!749189) (not b!749200) (not b!749205) (not b!749210) (not b!749197) (not b!749190) (not b!749204) (not b!749191))
(check-sat)
