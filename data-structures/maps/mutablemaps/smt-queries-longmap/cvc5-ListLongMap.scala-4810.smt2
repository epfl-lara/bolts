; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66218 () Bool)

(assert start!66218)

(declare-fun b!762120 () Bool)

(declare-fun res!515405 () Bool)

(declare-fun e!424875 () Bool)

(assert (=> b!762120 (=> (not res!515405) (not e!424875))))

(declare-datatypes ((array!42076 0))(
  ( (array!42077 (arr!20142 (Array (_ BitVec 32) (_ BitVec 64))) (size!20563 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42076)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!762120 (= res!515405 (and (= (size!20563 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20563 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20563 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762121 () Bool)

(declare-fun res!515404 () Bool)

(declare-fun e!424877 () Bool)

(assert (=> b!762121 (=> (not res!515404) (not e!424877))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42076 (_ BitVec 32)) Bool)

(assert (=> b!762121 (= res!515404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762122 () Bool)

(declare-fun res!515402 () Bool)

(assert (=> b!762122 (=> (not res!515402) (not e!424877))))

(declare-datatypes ((List!14197 0))(
  ( (Nil!14194) (Cons!14193 (h!15277 (_ BitVec 64)) (t!20520 List!14197)) )
))
(declare-fun arrayNoDuplicates!0 (array!42076 (_ BitVec 32) List!14197) Bool)

(assert (=> b!762122 (= res!515402 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14194))))

(declare-fun res!515401 () Bool)

(assert (=> start!66218 (=> (not res!515401) (not e!424875))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66218 (= res!515401 (validMask!0 mask!3328))))

(assert (=> start!66218 e!424875))

(assert (=> start!66218 true))

(declare-fun array_inv!15916 (array!42076) Bool)

(assert (=> start!66218 (array_inv!15916 a!3186)))

(declare-fun b!762123 () Bool)

(declare-fun res!515403 () Bool)

(assert (=> b!762123 (=> (not res!515403) (not e!424875))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42076 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762123 (= res!515403 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762124 () Bool)

(declare-fun res!515408 () Bool)

(assert (=> b!762124 (=> (not res!515408) (not e!424875))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762124 (= res!515408 (validKeyInArray!0 k!2102))))

(declare-fun b!762125 () Bool)

(assert (=> b!762125 (= e!424877 false)))

(declare-datatypes ((SeekEntryResult!7749 0))(
  ( (MissingZero!7749 (index!33363 (_ BitVec 32))) (Found!7749 (index!33364 (_ BitVec 32))) (Intermediate!7749 (undefined!8561 Bool) (index!33365 (_ BitVec 32)) (x!64306 (_ BitVec 32))) (Undefined!7749) (MissingVacant!7749 (index!33366 (_ BitVec 32))) )
))
(declare-fun lt!339483 () SeekEntryResult!7749)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42076 (_ BitVec 32)) SeekEntryResult!7749)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762125 (= lt!339483 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20142 a!3186) j!159) mask!3328) (select (arr!20142 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!762126 () Bool)

(assert (=> b!762126 (= e!424875 e!424877)))

(declare-fun res!515407 () Bool)

(assert (=> b!762126 (=> (not res!515407) (not e!424877))))

(declare-fun lt!339484 () SeekEntryResult!7749)

(assert (=> b!762126 (= res!515407 (or (= lt!339484 (MissingZero!7749 i!1173)) (= lt!339484 (MissingVacant!7749 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42076 (_ BitVec 32)) SeekEntryResult!7749)

(assert (=> b!762126 (= lt!339484 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!762127 () Bool)

(declare-fun res!515409 () Bool)

(assert (=> b!762127 (=> (not res!515409) (not e!424875))))

(assert (=> b!762127 (= res!515409 (validKeyInArray!0 (select (arr!20142 a!3186) j!159)))))

(declare-fun b!762128 () Bool)

(declare-fun res!515406 () Bool)

(assert (=> b!762128 (=> (not res!515406) (not e!424877))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762128 (= res!515406 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20563 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20563 a!3186))))))

(assert (= (and start!66218 res!515401) b!762120))

(assert (= (and b!762120 res!515405) b!762127))

(assert (= (and b!762127 res!515409) b!762124))

(assert (= (and b!762124 res!515408) b!762123))

(assert (= (and b!762123 res!515403) b!762126))

(assert (= (and b!762126 res!515407) b!762121))

(assert (= (and b!762121 res!515404) b!762122))

(assert (= (and b!762122 res!515402) b!762128))

(assert (= (and b!762128 res!515406) b!762125))

(declare-fun m!708977 () Bool)

(assert (=> b!762126 m!708977))

(declare-fun m!708979 () Bool)

(assert (=> b!762125 m!708979))

(assert (=> b!762125 m!708979))

(declare-fun m!708981 () Bool)

(assert (=> b!762125 m!708981))

(assert (=> b!762125 m!708981))

(assert (=> b!762125 m!708979))

(declare-fun m!708983 () Bool)

(assert (=> b!762125 m!708983))

(declare-fun m!708985 () Bool)

(assert (=> b!762123 m!708985))

(declare-fun m!708987 () Bool)

(assert (=> b!762124 m!708987))

(declare-fun m!708989 () Bool)

(assert (=> b!762121 m!708989))

(declare-fun m!708991 () Bool)

(assert (=> b!762122 m!708991))

(assert (=> b!762127 m!708979))

(assert (=> b!762127 m!708979))

(declare-fun m!708993 () Bool)

(assert (=> b!762127 m!708993))

(declare-fun m!708995 () Bool)

(assert (=> start!66218 m!708995))

(declare-fun m!708997 () Bool)

(assert (=> start!66218 m!708997))

(push 1)

(assert (not b!762124))

(assert (not b!762126))

(assert (not b!762125))

(assert (not b!762121))

(assert (not b!762123))

(assert (not start!66218))

