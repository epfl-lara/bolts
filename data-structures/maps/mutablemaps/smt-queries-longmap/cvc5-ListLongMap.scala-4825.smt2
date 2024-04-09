; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66308 () Bool)

(assert start!66308)

(declare-fun b!763842 () Bool)

(declare-fun res!516911 () Bool)

(declare-fun e!425514 () Bool)

(assert (=> b!763842 (=> (not res!516911) (not e!425514))))

(declare-datatypes ((array!42166 0))(
  ( (array!42167 (arr!20187 (Array (_ BitVec 32) (_ BitVec 64))) (size!20608 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42166)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42166 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763842 (= res!516911 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!763843 () Bool)

(declare-fun e!425513 () Bool)

(assert (=> b!763843 (= e!425514 e!425513)))

(declare-fun res!516903 () Bool)

(assert (=> b!763843 (=> (not res!516903) (not e!425513))))

(declare-datatypes ((SeekEntryResult!7794 0))(
  ( (MissingZero!7794 (index!33543 (_ BitVec 32))) (Found!7794 (index!33544 (_ BitVec 32))) (Intermediate!7794 (undefined!8606 Bool) (index!33545 (_ BitVec 32)) (x!64471 (_ BitVec 32))) (Undefined!7794) (MissingVacant!7794 (index!33546 (_ BitVec 32))) )
))
(declare-fun lt!339957 () SeekEntryResult!7794)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!763843 (= res!516903 (or (= lt!339957 (MissingZero!7794 i!1173)) (= lt!339957 (MissingVacant!7794 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42166 (_ BitVec 32)) SeekEntryResult!7794)

(assert (=> b!763843 (= lt!339957 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!763845 () Bool)

(declare-fun e!425511 () Bool)

(assert (=> b!763845 (= e!425513 e!425511)))

(declare-fun res!516915 () Bool)

(assert (=> b!763845 (=> (not res!516915) (not e!425511))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!339955 () SeekEntryResult!7794)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42166 (_ BitVec 32)) SeekEntryResult!7794)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763845 (= res!516915 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20187 a!3186) j!159) mask!3328) (select (arr!20187 a!3186) j!159) a!3186 mask!3328) lt!339955))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763845 (= lt!339955 (Intermediate!7794 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!763846 () Bool)

(declare-fun res!516904 () Bool)

(assert (=> b!763846 (=> (not res!516904) (not e!425513))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!763846 (= res!516904 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20608 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20608 a!3186))))))

(declare-fun b!763847 () Bool)

(declare-fun res!516910 () Bool)

(assert (=> b!763847 (=> (not res!516910) (not e!425511))))

(assert (=> b!763847 (= res!516910 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20187 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!763848 () Bool)

(declare-fun res!516914 () Bool)

(assert (=> b!763848 (=> (not res!516914) (not e!425514))))

(assert (=> b!763848 (= res!516914 (and (= (size!20608 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20608 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20608 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!763849 () Bool)

(declare-fun e!425512 () Bool)

(assert (=> b!763849 (= e!425512 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20187 a!3186) j!159) a!3186 mask!3328) lt!339955))))

(declare-fun b!763850 () Bool)

(declare-fun res!516908 () Bool)

(assert (=> b!763850 (=> (not res!516908) (not e!425514))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763850 (= res!516908 (validKeyInArray!0 (select (arr!20187 a!3186) j!159)))))

(declare-fun b!763851 () Bool)

(declare-fun res!516907 () Bool)

(assert (=> b!763851 (=> (not res!516907) (not e!425513))))

(declare-datatypes ((List!14242 0))(
  ( (Nil!14239) (Cons!14238 (h!15322 (_ BitVec 64)) (t!20565 List!14242)) )
))
(declare-fun arrayNoDuplicates!0 (array!42166 (_ BitVec 32) List!14242) Bool)

(assert (=> b!763851 (= res!516907 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14239))))

(declare-fun b!763852 () Bool)

(declare-fun res!516913 () Bool)

(assert (=> b!763852 (=> (not res!516913) (not e!425511))))

(assert (=> b!763852 (= res!516913 e!425512)))

(declare-fun c!83856 () Bool)

(assert (=> b!763852 (= c!83856 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!763853 () Bool)

(declare-fun e!425516 () Bool)

(assert (=> b!763853 (= e!425511 e!425516)))

(declare-fun res!516906 () Bool)

(assert (=> b!763853 (=> (not res!516906) (not e!425516))))

(declare-fun lt!339958 () array!42166)

(declare-fun lt!339956 () (_ BitVec 64))

(assert (=> b!763853 (= res!516906 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339956 mask!3328) lt!339956 lt!339958 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339956 lt!339958 mask!3328)))))

(assert (=> b!763853 (= lt!339956 (select (store (arr!20187 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!763853 (= lt!339958 (array!42167 (store (arr!20187 a!3186) i!1173 k!2102) (size!20608 a!3186)))))

(declare-fun b!763854 () Bool)

(declare-fun res!516905 () Bool)

(assert (=> b!763854 (=> (not res!516905) (not e!425513))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42166 (_ BitVec 32)) Bool)

(assert (=> b!763854 (= res!516905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!516909 () Bool)

(assert (=> start!66308 (=> (not res!516909) (not e!425514))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66308 (= res!516909 (validMask!0 mask!3328))))

(assert (=> start!66308 e!425514))

(assert (=> start!66308 true))

(declare-fun array_inv!15961 (array!42166) Bool)

(assert (=> start!66308 (array_inv!15961 a!3186)))

(declare-fun b!763844 () Bool)

(assert (=> b!763844 (= e!425516 (and (bvsle #b00000000000000000000000000000000 (size!20608 a!3186)) (bvsgt j!159 (size!20608 a!3186))))))

(declare-fun b!763855 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42166 (_ BitVec 32)) SeekEntryResult!7794)

(assert (=> b!763855 (= e!425512 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20187 a!3186) j!159) a!3186 mask!3328) (Found!7794 j!159)))))

(declare-fun b!763856 () Bool)

(declare-fun res!516912 () Bool)

(assert (=> b!763856 (=> (not res!516912) (not e!425514))))

(assert (=> b!763856 (= res!516912 (validKeyInArray!0 k!2102))))

(assert (= (and start!66308 res!516909) b!763848))

(assert (= (and b!763848 res!516914) b!763850))

(assert (= (and b!763850 res!516908) b!763856))

(assert (= (and b!763856 res!516912) b!763842))

(assert (= (and b!763842 res!516911) b!763843))

(assert (= (and b!763843 res!516903) b!763854))

(assert (= (and b!763854 res!516905) b!763851))

(assert (= (and b!763851 res!516907) b!763846))

(assert (= (and b!763846 res!516904) b!763845))

(assert (= (and b!763845 res!516915) b!763847))

(assert (= (and b!763847 res!516910) b!763852))

(assert (= (and b!763852 c!83856) b!763849))

(assert (= (and b!763852 (not c!83856)) b!763855))

(assert (= (and b!763852 res!516913) b!763853))

(assert (= (and b!763853 res!516906) b!763844))

(declare-fun m!710339 () Bool)

(assert (=> b!763845 m!710339))

(assert (=> b!763845 m!710339))

(declare-fun m!710341 () Bool)

(assert (=> b!763845 m!710341))

(assert (=> b!763845 m!710341))

(assert (=> b!763845 m!710339))

(declare-fun m!710343 () Bool)

(assert (=> b!763845 m!710343))

(assert (=> b!763855 m!710339))

(assert (=> b!763855 m!710339))

(declare-fun m!710345 () Bool)

(assert (=> b!763855 m!710345))

(declare-fun m!710347 () Bool)

(assert (=> b!763847 m!710347))

(declare-fun m!710349 () Bool)

(assert (=> b!763851 m!710349))

(declare-fun m!710351 () Bool)

(assert (=> b!763843 m!710351))

(declare-fun m!710353 () Bool)

(assert (=> b!763853 m!710353))

(declare-fun m!710355 () Bool)

(assert (=> b!763853 m!710355))

(declare-fun m!710357 () Bool)

(assert (=> b!763853 m!710357))

(declare-fun m!710359 () Bool)

(assert (=> b!763853 m!710359))

(assert (=> b!763853 m!710353))

(declare-fun m!710361 () Bool)

(assert (=> b!763853 m!710361))

(assert (=> b!763850 m!710339))

(assert (=> b!763850 m!710339))

(declare-fun m!710363 () Bool)

(assert (=> b!763850 m!710363))

(declare-fun m!710365 () Bool)

(assert (=> start!66308 m!710365))

(declare-fun m!710367 () Bool)

(assert (=> start!66308 m!710367))

(declare-fun m!710369 () Bool)

(assert (=> b!763854 m!710369))

(assert (=> b!763849 m!710339))

(assert (=> b!763849 m!710339))

(declare-fun m!710371 () Bool)

(assert (=> b!763849 m!710371))

(declare-fun m!710373 () Bool)

(assert (=> b!763842 m!710373))

(declare-fun m!710375 () Bool)

(assert (=> b!763856 m!710375))

(push 1)

(assert (not b!763845))

(assert (not start!66308))

(assert (not b!763850))

(assert (not b!763842))

(assert (not b!763856))

(assert (not b!763854))

(assert (not b!763855))

(assert (not b!763849))

(assert (not b!763843))

(assert (not b!763851))

(assert (not b!763853))

(check-sat)

(pop 1)

(push 1)

(check-sat)

