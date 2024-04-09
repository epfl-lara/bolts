; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64530 () Bool)

(assert start!64530)

(declare-fun b!726010 () Bool)

(declare-fun e!406540 () Bool)

(declare-fun e!406544 () Bool)

(assert (=> b!726010 (= e!406540 e!406544)))

(declare-fun res!487179 () Bool)

(assert (=> b!726010 (=> (not res!487179) (not e!406544))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41001 0))(
  ( (array!41002 (arr!19618 (Array (_ BitVec 32) (_ BitVec 64))) (size!20039 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41001)

(declare-datatypes ((SeekEntryResult!7225 0))(
  ( (MissingZero!7225 (index!31267 (_ BitVec 32))) (Found!7225 (index!31268 (_ BitVec 32))) (Intermediate!7225 (undefined!8037 Bool) (index!31269 (_ BitVec 32)) (x!62284 (_ BitVec 32))) (Undefined!7225) (MissingVacant!7225 (index!31270 (_ BitVec 32))) )
))
(declare-fun lt!321554 () SeekEntryResult!7225)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41001 (_ BitVec 32)) SeekEntryResult!7225)

(assert (=> b!726010 (= res!487179 (= (seekEntryOrOpen!0 (select (arr!19618 a!3186) j!159) a!3186 mask!3328) lt!321554))))

(assert (=> b!726010 (= lt!321554 (Found!7225 j!159))))

(declare-fun b!726011 () Bool)

(declare-fun e!406539 () Bool)

(assert (=> b!726011 (= e!406539 (not true))))

(assert (=> b!726011 e!406540))

(declare-fun res!487170 () Bool)

(assert (=> b!726011 (=> (not res!487170) (not e!406540))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41001 (_ BitVec 32)) Bool)

(assert (=> b!726011 (= res!487170 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24768 0))(
  ( (Unit!24769) )
))
(declare-fun lt!321551 () Unit!24768)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41001 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24768)

(assert (=> b!726011 (= lt!321551 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!726012 () Bool)

(declare-fun e!406542 () Bool)

(declare-fun e!406543 () Bool)

(assert (=> b!726012 (= e!406542 e!406543)))

(declare-fun res!487173 () Bool)

(assert (=> b!726012 (=> (not res!487173) (not e!406543))))

(declare-fun lt!321550 () SeekEntryResult!7225)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!726012 (= res!487173 (or (= lt!321550 (MissingZero!7225 i!1173)) (= lt!321550 (MissingVacant!7225 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!726012 (= lt!321550 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!726013 () Bool)

(declare-fun e!406541 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41001 (_ BitVec 32)) SeekEntryResult!7225)

(assert (=> b!726013 (= e!406541 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19618 a!3186) j!159) a!3186 mask!3328) (Found!7225 j!159)))))

(declare-fun b!726014 () Bool)

(declare-fun e!406538 () Bool)

(assert (=> b!726014 (= e!406538 e!406539)))

(declare-fun res!487175 () Bool)

(assert (=> b!726014 (=> (not res!487175) (not e!406539))))

(declare-fun lt!321552 () array!41001)

(declare-fun lt!321553 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41001 (_ BitVec 32)) SeekEntryResult!7225)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726014 (= res!487175 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321553 mask!3328) lt!321553 lt!321552 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321553 lt!321552 mask!3328)))))

(assert (=> b!726014 (= lt!321553 (select (store (arr!19618 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!726014 (= lt!321552 (array!41002 (store (arr!19618 a!3186) i!1173 k0!2102) (size!20039 a!3186)))))

(declare-fun b!726015 () Bool)

(declare-fun res!487171 () Bool)

(assert (=> b!726015 (=> (not res!487171) (not e!406542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!726015 (= res!487171 (validKeyInArray!0 k0!2102))))

(declare-fun b!726016 () Bool)

(declare-fun res!487169 () Bool)

(assert (=> b!726016 (=> (not res!487169) (not e!406542))))

(assert (=> b!726016 (= res!487169 (validKeyInArray!0 (select (arr!19618 a!3186) j!159)))))

(declare-fun b!726017 () Bool)

(declare-fun res!487176 () Bool)

(assert (=> b!726017 (=> (not res!487176) (not e!406543))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!726017 (= res!487176 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20039 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20039 a!3186))))))

(declare-fun b!726018 () Bool)

(assert (=> b!726018 (= e!406543 e!406538)))

(declare-fun res!487172 () Bool)

(assert (=> b!726018 (=> (not res!487172) (not e!406538))))

(declare-fun lt!321549 () SeekEntryResult!7225)

(assert (=> b!726018 (= res!487172 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19618 a!3186) j!159) mask!3328) (select (arr!19618 a!3186) j!159) a!3186 mask!3328) lt!321549))))

(assert (=> b!726018 (= lt!321549 (Intermediate!7225 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!726019 () Bool)

(declare-fun res!487178 () Bool)

(assert (=> b!726019 (=> (not res!487178) (not e!406543))))

(assert (=> b!726019 (= res!487178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!726020 () Bool)

(assert (=> b!726020 (= e!406544 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19618 a!3186) j!159) a!3186 mask!3328) lt!321554))))

(declare-fun b!726021 () Bool)

(declare-fun res!487168 () Bool)

(assert (=> b!726021 (=> (not res!487168) (not e!406538))))

(assert (=> b!726021 (= res!487168 e!406541)))

(declare-fun c!79794 () Bool)

(assert (=> b!726021 (= c!79794 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!726022 () Bool)

(assert (=> b!726022 (= e!406541 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19618 a!3186) j!159) a!3186 mask!3328) lt!321549))))

(declare-fun b!726023 () Bool)

(declare-fun res!487174 () Bool)

(assert (=> b!726023 (=> (not res!487174) (not e!406542))))

(declare-fun arrayContainsKey!0 (array!41001 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!726023 (= res!487174 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!726024 () Bool)

(declare-fun res!487177 () Bool)

(assert (=> b!726024 (=> (not res!487177) (not e!406543))))

(declare-datatypes ((List!13673 0))(
  ( (Nil!13670) (Cons!13669 (h!14726 (_ BitVec 64)) (t!19996 List!13673)) )
))
(declare-fun arrayNoDuplicates!0 (array!41001 (_ BitVec 32) List!13673) Bool)

(assert (=> b!726024 (= res!487177 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13670))))

(declare-fun b!726025 () Bool)

(declare-fun res!487181 () Bool)

(assert (=> b!726025 (=> (not res!487181) (not e!406542))))

(assert (=> b!726025 (= res!487181 (and (= (size!20039 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20039 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20039 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!487180 () Bool)

(assert (=> start!64530 (=> (not res!487180) (not e!406542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64530 (= res!487180 (validMask!0 mask!3328))))

(assert (=> start!64530 e!406542))

(assert (=> start!64530 true))

(declare-fun array_inv!15392 (array!41001) Bool)

(assert (=> start!64530 (array_inv!15392 a!3186)))

(declare-fun b!726026 () Bool)

(declare-fun res!487182 () Bool)

(assert (=> b!726026 (=> (not res!487182) (not e!406538))))

(assert (=> b!726026 (= res!487182 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19618 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!64530 res!487180) b!726025))

(assert (= (and b!726025 res!487181) b!726016))

(assert (= (and b!726016 res!487169) b!726015))

(assert (= (and b!726015 res!487171) b!726023))

(assert (= (and b!726023 res!487174) b!726012))

(assert (= (and b!726012 res!487173) b!726019))

(assert (= (and b!726019 res!487178) b!726024))

(assert (= (and b!726024 res!487177) b!726017))

(assert (= (and b!726017 res!487176) b!726018))

(assert (= (and b!726018 res!487172) b!726026))

(assert (= (and b!726026 res!487182) b!726021))

(assert (= (and b!726021 c!79794) b!726022))

(assert (= (and b!726021 (not c!79794)) b!726013))

(assert (= (and b!726021 res!487168) b!726014))

(assert (= (and b!726014 res!487175) b!726011))

(assert (= (and b!726011 res!487170) b!726010))

(assert (= (and b!726010 res!487179) b!726020))

(declare-fun m!680201 () Bool)

(assert (=> b!726011 m!680201))

(declare-fun m!680203 () Bool)

(assert (=> b!726011 m!680203))

(declare-fun m!680205 () Bool)

(assert (=> b!726019 m!680205))

(declare-fun m!680207 () Bool)

(assert (=> b!726020 m!680207))

(assert (=> b!726020 m!680207))

(declare-fun m!680209 () Bool)

(assert (=> b!726020 m!680209))

(declare-fun m!680211 () Bool)

(assert (=> b!726012 m!680211))

(declare-fun m!680213 () Bool)

(assert (=> b!726023 m!680213))

(declare-fun m!680215 () Bool)

(assert (=> b!726024 m!680215))

(declare-fun m!680217 () Bool)

(assert (=> start!64530 m!680217))

(declare-fun m!680219 () Bool)

(assert (=> start!64530 m!680219))

(declare-fun m!680221 () Bool)

(assert (=> b!726015 m!680221))

(declare-fun m!680223 () Bool)

(assert (=> b!726026 m!680223))

(assert (=> b!726013 m!680207))

(assert (=> b!726013 m!680207))

(declare-fun m!680225 () Bool)

(assert (=> b!726013 m!680225))

(assert (=> b!726018 m!680207))

(assert (=> b!726018 m!680207))

(declare-fun m!680227 () Bool)

(assert (=> b!726018 m!680227))

(assert (=> b!726018 m!680227))

(assert (=> b!726018 m!680207))

(declare-fun m!680229 () Bool)

(assert (=> b!726018 m!680229))

(assert (=> b!726016 m!680207))

(assert (=> b!726016 m!680207))

(declare-fun m!680231 () Bool)

(assert (=> b!726016 m!680231))

(assert (=> b!726010 m!680207))

(assert (=> b!726010 m!680207))

(declare-fun m!680233 () Bool)

(assert (=> b!726010 m!680233))

(declare-fun m!680235 () Bool)

(assert (=> b!726014 m!680235))

(declare-fun m!680237 () Bool)

(assert (=> b!726014 m!680237))

(declare-fun m!680239 () Bool)

(assert (=> b!726014 m!680239))

(declare-fun m!680241 () Bool)

(assert (=> b!726014 m!680241))

(declare-fun m!680243 () Bool)

(assert (=> b!726014 m!680243))

(assert (=> b!726014 m!680237))

(assert (=> b!726022 m!680207))

(assert (=> b!726022 m!680207))

(declare-fun m!680245 () Bool)

(assert (=> b!726022 m!680245))

(check-sat (not b!726016) (not b!726022) (not b!726020) (not b!726013) (not b!726011) (not b!726014) (not b!726015) (not b!726023) (not start!64530) (not b!726010) (not b!726012) (not b!726019) (not b!726018) (not b!726024))
(check-sat)
