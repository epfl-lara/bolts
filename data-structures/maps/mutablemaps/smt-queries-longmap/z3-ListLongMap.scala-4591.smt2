; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64080 () Bool)

(assert start!64080)

(declare-fun b!719348 () Bool)

(declare-fun e!403666 () Bool)

(declare-fun e!403667 () Bool)

(assert (=> b!719348 (= e!403666 e!403667)))

(declare-fun res!481888 () Bool)

(assert (=> b!719348 (=> (not res!481888) (not e!403667))))

(declare-datatypes ((SeekEntryResult!7093 0))(
  ( (MissingZero!7093 (index!30739 (_ BitVec 32))) (Found!7093 (index!30740 (_ BitVec 32))) (Intermediate!7093 (undefined!7905 Bool) (index!30741 (_ BitVec 32)) (x!61773 (_ BitVec 32))) (Undefined!7093) (MissingVacant!7093 (index!30742 (_ BitVec 32))) )
))
(declare-fun lt!319565 () SeekEntryResult!7093)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719348 (= res!481888 (or (= lt!319565 (MissingZero!7093 i!1173)) (= lt!319565 (MissingVacant!7093 i!1173))))))

(declare-datatypes ((array!40728 0))(
  ( (array!40729 (arr!19486 (Array (_ BitVec 32) (_ BitVec 64))) (size!19907 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40728)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40728 (_ BitVec 32)) SeekEntryResult!7093)

(assert (=> b!719348 (= lt!319565 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!719349 () Bool)

(declare-fun res!481887 () Bool)

(assert (=> b!719349 (=> (not res!481887) (not e!403666))))

(declare-fun arrayContainsKey!0 (array!40728 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719349 (= res!481887 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719350 () Bool)

(declare-fun res!481881 () Bool)

(assert (=> b!719350 (=> (not res!481881) (not e!403666))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!719350 (= res!481881 (and (= (size!19907 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19907 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19907 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!481889 () Bool)

(assert (=> start!64080 (=> (not res!481889) (not e!403666))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64080 (= res!481889 (validMask!0 mask!3328))))

(assert (=> start!64080 e!403666))

(assert (=> start!64080 true))

(declare-fun array_inv!15260 (array!40728) Bool)

(assert (=> start!64080 (array_inv!15260 a!3186)))

(declare-fun b!719351 () Bool)

(declare-fun res!481883 () Bool)

(assert (=> b!719351 (=> (not res!481883) (not e!403667))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40728 (_ BitVec 32)) SeekEntryResult!7093)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719351 (= res!481883 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19486 a!3186) j!159) mask!3328) (select (arr!19486 a!3186) j!159) a!3186 mask!3328) (Intermediate!7093 false resIntermediateIndex!5 resIntermediateX!5)))))

(declare-fun b!719352 () Bool)

(declare-fun res!481890 () Bool)

(assert (=> b!719352 (=> (not res!481890) (not e!403667))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40728 (_ BitVec 32)) Bool)

(assert (=> b!719352 (= res!481890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun b!719353 () Bool)

(assert (=> b!719353 (= e!403667 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19486 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsgt x!1131 resIntermediateX!5) (bvslt mask!3328 #b00000000000000000000000000000000)))))

(declare-fun b!719354 () Bool)

(declare-fun res!481884 () Bool)

(assert (=> b!719354 (=> (not res!481884) (not e!403666))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719354 (= res!481884 (validKeyInArray!0 k0!2102))))

(declare-fun b!719355 () Bool)

(declare-fun res!481885 () Bool)

(assert (=> b!719355 (=> (not res!481885) (not e!403667))))

(declare-datatypes ((List!13541 0))(
  ( (Nil!13538) (Cons!13537 (h!14585 (_ BitVec 64)) (t!19864 List!13541)) )
))
(declare-fun arrayNoDuplicates!0 (array!40728 (_ BitVec 32) List!13541) Bool)

(assert (=> b!719355 (= res!481885 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13538))))

(declare-fun b!719356 () Bool)

(declare-fun res!481886 () Bool)

(assert (=> b!719356 (=> (not res!481886) (not e!403667))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!719356 (= res!481886 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19907 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19907 a!3186))))))

(declare-fun b!719357 () Bool)

(declare-fun res!481882 () Bool)

(assert (=> b!719357 (=> (not res!481882) (not e!403666))))

(assert (=> b!719357 (= res!481882 (validKeyInArray!0 (select (arr!19486 a!3186) j!159)))))

(assert (= (and start!64080 res!481889) b!719350))

(assert (= (and b!719350 res!481881) b!719357))

(assert (= (and b!719357 res!481882) b!719354))

(assert (= (and b!719354 res!481884) b!719349))

(assert (= (and b!719349 res!481887) b!719348))

(assert (= (and b!719348 res!481888) b!719352))

(assert (= (and b!719352 res!481890) b!719355))

(assert (= (and b!719355 res!481885) b!719356))

(assert (= (and b!719356 res!481886) b!719351))

(assert (= (and b!719351 res!481883) b!719353))

(declare-fun m!674845 () Bool)

(assert (=> b!719355 m!674845))

(declare-fun m!674847 () Bool)

(assert (=> b!719354 m!674847))

(declare-fun m!674849 () Bool)

(assert (=> b!719353 m!674849))

(declare-fun m!674851 () Bool)

(assert (=> b!719351 m!674851))

(assert (=> b!719351 m!674851))

(declare-fun m!674853 () Bool)

(assert (=> b!719351 m!674853))

(assert (=> b!719351 m!674853))

(assert (=> b!719351 m!674851))

(declare-fun m!674855 () Bool)

(assert (=> b!719351 m!674855))

(assert (=> b!719357 m!674851))

(assert (=> b!719357 m!674851))

(declare-fun m!674857 () Bool)

(assert (=> b!719357 m!674857))

(declare-fun m!674859 () Bool)

(assert (=> b!719349 m!674859))

(declare-fun m!674861 () Bool)

(assert (=> start!64080 m!674861))

(declare-fun m!674863 () Bool)

(assert (=> start!64080 m!674863))

(declare-fun m!674865 () Bool)

(assert (=> b!719348 m!674865))

(declare-fun m!674867 () Bool)

(assert (=> b!719352 m!674867))

(check-sat (not start!64080) (not b!719351) (not b!719352) (not b!719348) (not b!719354) (not b!719349) (not b!719357) (not b!719355))
(check-sat)
