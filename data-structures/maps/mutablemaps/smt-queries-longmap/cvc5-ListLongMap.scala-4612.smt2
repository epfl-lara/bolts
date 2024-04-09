; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64324 () Bool)

(assert start!64324)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!404882 () Bool)

(declare-datatypes ((array!40858 0))(
  ( (array!40859 (arr!19548 (Array (_ BitVec 32) (_ BitVec 64))) (size!19969 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40858)

(declare-fun b!722305 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7155 0))(
  ( (MissingZero!7155 (index!30987 (_ BitVec 32))) (Found!7155 (index!30988 (_ BitVec 32))) (Intermediate!7155 (undefined!7967 Bool) (index!30989 (_ BitVec 32)) (x!62021 (_ BitVec 32))) (Undefined!7155) (MissingVacant!7155 (index!30990 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40858 (_ BitVec 32)) SeekEntryResult!7155)

(assert (=> b!722305 (= e!404882 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19548 a!3186) j!159) a!3186 mask!3328) (Found!7155 j!159)))))

(declare-fun b!722306 () Bool)

(declare-fun lt!320241 () SeekEntryResult!7155)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40858 (_ BitVec 32)) SeekEntryResult!7155)

(assert (=> b!722306 (= e!404882 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19548 a!3186) j!159) a!3186 mask!3328) lt!320241))))

(declare-fun b!722307 () Bool)

(declare-fun e!404880 () Bool)

(assert (=> b!722307 (= e!404880 false)))

(declare-fun lt!320240 () (_ BitVec 64))

(declare-fun lt!320239 () SeekEntryResult!7155)

(declare-fun lt!320238 () array!40858)

(assert (=> b!722307 (= lt!320239 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320240 lt!320238 mask!3328))))

(declare-fun lt!320242 () SeekEntryResult!7155)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722307 (= lt!320242 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320240 mask!3328) lt!320240 lt!320238 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!722307 (= lt!320240 (select (store (arr!19548 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!722307 (= lt!320238 (array!40859 (store (arr!19548 a!3186) i!1173 k!2102) (size!19969 a!3186)))))

(declare-fun res!484166 () Bool)

(declare-fun e!404879 () Bool)

(assert (=> start!64324 (=> (not res!484166) (not e!404879))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64324 (= res!484166 (validMask!0 mask!3328))))

(assert (=> start!64324 e!404879))

(assert (=> start!64324 true))

(declare-fun array_inv!15322 (array!40858) Bool)

(assert (=> start!64324 (array_inv!15322 a!3186)))

(declare-fun b!722308 () Bool)

(declare-fun res!484156 () Bool)

(assert (=> b!722308 (=> (not res!484156) (not e!404880))))

(assert (=> b!722308 (= res!484156 e!404882)))

(declare-fun c!79446 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722308 (= c!79446 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!722309 () Bool)

(declare-fun res!484162 () Bool)

(declare-fun e!404881 () Bool)

(assert (=> b!722309 (=> (not res!484162) (not e!404881))))

(assert (=> b!722309 (= res!484162 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19969 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19969 a!3186))))))

(declare-fun b!722310 () Bool)

(declare-fun res!484165 () Bool)

(assert (=> b!722310 (=> (not res!484165) (not e!404879))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722310 (= res!484165 (validKeyInArray!0 (select (arr!19548 a!3186) j!159)))))

(declare-fun b!722311 () Bool)

(declare-fun res!484158 () Bool)

(assert (=> b!722311 (=> (not res!484158) (not e!404879))))

(declare-fun arrayContainsKey!0 (array!40858 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722311 (= res!484158 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!722312 () Bool)

(declare-fun res!484161 () Bool)

(assert (=> b!722312 (=> (not res!484161) (not e!404881))))

(declare-datatypes ((List!13603 0))(
  ( (Nil!13600) (Cons!13599 (h!14653 (_ BitVec 64)) (t!19926 List!13603)) )
))
(declare-fun arrayNoDuplicates!0 (array!40858 (_ BitVec 32) List!13603) Bool)

(assert (=> b!722312 (= res!484161 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13600))))

(declare-fun b!722313 () Bool)

(declare-fun res!484157 () Bool)

(assert (=> b!722313 (=> (not res!484157) (not e!404879))))

(assert (=> b!722313 (= res!484157 (and (= (size!19969 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19969 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19969 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!722314 () Bool)

(declare-fun res!484159 () Bool)

(assert (=> b!722314 (=> (not res!484159) (not e!404879))))

(assert (=> b!722314 (= res!484159 (validKeyInArray!0 k!2102))))

(declare-fun b!722315 () Bool)

(declare-fun res!484160 () Bool)

(assert (=> b!722315 (=> (not res!484160) (not e!404881))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40858 (_ BitVec 32)) Bool)

(assert (=> b!722315 (= res!484160 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722316 () Bool)

(assert (=> b!722316 (= e!404879 e!404881)))

(declare-fun res!484163 () Bool)

(assert (=> b!722316 (=> (not res!484163) (not e!404881))))

(declare-fun lt!320243 () SeekEntryResult!7155)

(assert (=> b!722316 (= res!484163 (or (= lt!320243 (MissingZero!7155 i!1173)) (= lt!320243 (MissingVacant!7155 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40858 (_ BitVec 32)) SeekEntryResult!7155)

(assert (=> b!722316 (= lt!320243 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!722317 () Bool)

(assert (=> b!722317 (= e!404881 e!404880)))

(declare-fun res!484164 () Bool)

(assert (=> b!722317 (=> (not res!484164) (not e!404880))))

(assert (=> b!722317 (= res!484164 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19548 a!3186) j!159) mask!3328) (select (arr!19548 a!3186) j!159) a!3186 mask!3328) lt!320241))))

(assert (=> b!722317 (= lt!320241 (Intermediate!7155 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!722318 () Bool)

(declare-fun res!484167 () Bool)

(assert (=> b!722318 (=> (not res!484167) (not e!404880))))

(assert (=> b!722318 (= res!484167 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19548 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!64324 res!484166) b!722313))

(assert (= (and b!722313 res!484157) b!722310))

(assert (= (and b!722310 res!484165) b!722314))

(assert (= (and b!722314 res!484159) b!722311))

(assert (= (and b!722311 res!484158) b!722316))

(assert (= (and b!722316 res!484163) b!722315))

(assert (= (and b!722315 res!484160) b!722312))

(assert (= (and b!722312 res!484161) b!722309))

(assert (= (and b!722309 res!484162) b!722317))

(assert (= (and b!722317 res!484164) b!722318))

(assert (= (and b!722318 res!484167) b!722308))

(assert (= (and b!722308 c!79446) b!722306))

(assert (= (and b!722308 (not c!79446)) b!722305))

(assert (= (and b!722308 res!484156) b!722307))

(declare-fun m!676933 () Bool)

(assert (=> b!722310 m!676933))

(assert (=> b!722310 m!676933))

(declare-fun m!676935 () Bool)

(assert (=> b!722310 m!676935))

(declare-fun m!676937 () Bool)

(assert (=> b!722311 m!676937))

(assert (=> b!722306 m!676933))

(assert (=> b!722306 m!676933))

(declare-fun m!676939 () Bool)

(assert (=> b!722306 m!676939))

(declare-fun m!676941 () Bool)

(assert (=> b!722315 m!676941))

(assert (=> b!722305 m!676933))

(assert (=> b!722305 m!676933))

(declare-fun m!676943 () Bool)

(assert (=> b!722305 m!676943))

(declare-fun m!676945 () Bool)

(assert (=> b!722312 m!676945))

(declare-fun m!676947 () Bool)

(assert (=> start!64324 m!676947))

(declare-fun m!676949 () Bool)

(assert (=> start!64324 m!676949))

(declare-fun m!676951 () Bool)

(assert (=> b!722314 m!676951))

(declare-fun m!676953 () Bool)

(assert (=> b!722307 m!676953))

(declare-fun m!676955 () Bool)

(assert (=> b!722307 m!676955))

(assert (=> b!722307 m!676953))

(declare-fun m!676957 () Bool)

(assert (=> b!722307 m!676957))

(declare-fun m!676959 () Bool)

(assert (=> b!722307 m!676959))

(declare-fun m!676961 () Bool)

(assert (=> b!722307 m!676961))

(assert (=> b!722317 m!676933))

(assert (=> b!722317 m!676933))

(declare-fun m!676963 () Bool)

(assert (=> b!722317 m!676963))

(assert (=> b!722317 m!676963))

(assert (=> b!722317 m!676933))

(declare-fun m!676965 () Bool)

(assert (=> b!722317 m!676965))

(declare-fun m!676967 () Bool)

(assert (=> b!722318 m!676967))

(declare-fun m!676969 () Bool)

(assert (=> b!722316 m!676969))

(push 1)

