; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66210 () Bool)

(assert start!66210)

(declare-fun b!762014 () Bool)

(declare-fun res!515299 () Bool)

(declare-fun e!424839 () Bool)

(assert (=> b!762014 (=> (not res!515299) (not e!424839))))

(declare-datatypes ((array!42068 0))(
  ( (array!42069 (arr!20138 (Array (_ BitVec 32) (_ BitVec 64))) (size!20559 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42068)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42068 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762014 (= res!515299 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762015 () Bool)

(declare-fun res!515296 () Bool)

(assert (=> b!762015 (=> (not res!515296) (not e!424839))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762015 (= res!515296 (validKeyInArray!0 (select (arr!20138 a!3186) j!159)))))

(declare-fun b!762016 () Bool)

(declare-fun res!515301 () Bool)

(assert (=> b!762016 (=> (not res!515301) (not e!424839))))

(assert (=> b!762016 (= res!515301 (validKeyInArray!0 k!2102))))

(declare-fun b!762017 () Bool)

(declare-fun e!424840 () Bool)

(assert (=> b!762017 (= e!424840 false)))

(declare-fun lt!339460 () Bool)

(declare-datatypes ((List!14193 0))(
  ( (Nil!14190) (Cons!14189 (h!15273 (_ BitVec 64)) (t!20516 List!14193)) )
))
(declare-fun arrayNoDuplicates!0 (array!42068 (_ BitVec 32) List!14193) Bool)

(assert (=> b!762017 (= lt!339460 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14190))))

(declare-fun b!762018 () Bool)

(assert (=> b!762018 (= e!424839 e!424840)))

(declare-fun res!515295 () Bool)

(assert (=> b!762018 (=> (not res!515295) (not e!424840))))

(declare-datatypes ((SeekEntryResult!7745 0))(
  ( (MissingZero!7745 (index!33347 (_ BitVec 32))) (Found!7745 (index!33348 (_ BitVec 32))) (Intermediate!7745 (undefined!8557 Bool) (index!33349 (_ BitVec 32)) (x!64286 (_ BitVec 32))) (Undefined!7745) (MissingVacant!7745 (index!33350 (_ BitVec 32))) )
))
(declare-fun lt!339459 () SeekEntryResult!7745)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762018 (= res!515295 (or (= lt!339459 (MissingZero!7745 i!1173)) (= lt!339459 (MissingVacant!7745 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42068 (_ BitVec 32)) SeekEntryResult!7745)

(assert (=> b!762018 (= lt!339459 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!515300 () Bool)

(assert (=> start!66210 (=> (not res!515300) (not e!424839))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66210 (= res!515300 (validMask!0 mask!3328))))

(assert (=> start!66210 e!424839))

(declare-fun array_inv!15912 (array!42068) Bool)

(assert (=> start!66210 (array_inv!15912 a!3186)))

(assert (=> start!66210 true))

(declare-fun b!762019 () Bool)

(declare-fun res!515297 () Bool)

(assert (=> b!762019 (=> (not res!515297) (not e!424839))))

(assert (=> b!762019 (= res!515297 (and (= (size!20559 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20559 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20559 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762020 () Bool)

(declare-fun res!515298 () Bool)

(assert (=> b!762020 (=> (not res!515298) (not e!424840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42068 (_ BitVec 32)) Bool)

(assert (=> b!762020 (= res!515298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!66210 res!515300) b!762019))

(assert (= (and b!762019 res!515297) b!762015))

(assert (= (and b!762015 res!515296) b!762016))

(assert (= (and b!762016 res!515301) b!762014))

(assert (= (and b!762014 res!515299) b!762018))

(assert (= (and b!762018 res!515295) b!762020))

(assert (= (and b!762020 res!515298) b!762017))

(declare-fun m!708899 () Bool)

(assert (=> b!762015 m!708899))

(assert (=> b!762015 m!708899))

(declare-fun m!708901 () Bool)

(assert (=> b!762015 m!708901))

(declare-fun m!708903 () Bool)

(assert (=> start!66210 m!708903))

(declare-fun m!708905 () Bool)

(assert (=> start!66210 m!708905))

(declare-fun m!708907 () Bool)

(assert (=> b!762018 m!708907))

(declare-fun m!708909 () Bool)

(assert (=> b!762020 m!708909))

(declare-fun m!708911 () Bool)

(assert (=> b!762016 m!708911))

(declare-fun m!708913 () Bool)

(assert (=> b!762014 m!708913))

(declare-fun m!708915 () Bool)

(assert (=> b!762017 m!708915))

(push 1)

(assert (not start!66210))

(assert (not b!762014))

(assert (not b!762017))

(assert (not b!762016))

(assert (not b!762015))

