; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66262 () Bool)

(assert start!66262)

(declare-fun b!762883 () Bool)

(declare-fun res!516085 () Bool)

(declare-fun e!425157 () Bool)

(assert (=> b!762883 (=> (not res!516085) (not e!425157))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42120 0))(
  ( (array!42121 (arr!20164 (Array (_ BitVec 32) (_ BitVec 64))) (size!20585 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42120)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762883 (= res!516085 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20164 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!762884 () Bool)

(declare-fun res!516088 () Bool)

(declare-fun e!425156 () Bool)

(assert (=> b!762884 (=> (not res!516088) (not e!425156))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42120 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762884 (= res!516088 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762885 () Bool)

(declare-fun res!516083 () Bool)

(assert (=> b!762885 (=> (not res!516083) (not e!425157))))

(declare-fun e!425155 () Bool)

(assert (=> b!762885 (= res!516083 e!425155)))

(declare-fun c!83787 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762885 (= c!83787 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!762886 () Bool)

(declare-fun res!516091 () Bool)

(declare-fun e!425158 () Bool)

(assert (=> b!762886 (=> (not res!516091) (not e!425158))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42120 (_ BitVec 32)) Bool)

(assert (=> b!762886 (= res!516091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762887 () Bool)

(assert (=> b!762887 (= e!425157 false)))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!339657 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762887 (= lt!339657 (toIndex!0 (select (store (arr!20164 a!3186) i!1173 k0!2102) j!159) mask!3328))))

(declare-fun b!762888 () Bool)

(declare-fun res!516087 () Bool)

(assert (=> b!762888 (=> (not res!516087) (not e!425158))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!762888 (= res!516087 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20585 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20585 a!3186))))))

(declare-datatypes ((SeekEntryResult!7771 0))(
  ( (MissingZero!7771 (index!33451 (_ BitVec 32))) (Found!7771 (index!33452 (_ BitVec 32))) (Intermediate!7771 (undefined!8583 Bool) (index!33453 (_ BitVec 32)) (x!64384 (_ BitVec 32))) (Undefined!7771) (MissingVacant!7771 (index!33454 (_ BitVec 32))) )
))
(declare-fun lt!339656 () SeekEntryResult!7771)

(declare-fun b!762889 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42120 (_ BitVec 32)) SeekEntryResult!7771)

(assert (=> b!762889 (= e!425155 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20164 a!3186) j!159) a!3186 mask!3328) lt!339656))))

(declare-fun b!762890 () Bool)

(declare-fun res!516090 () Bool)

(assert (=> b!762890 (=> (not res!516090) (not e!425156))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762890 (= res!516090 (validKeyInArray!0 k0!2102))))

(declare-fun b!762891 () Bool)

(assert (=> b!762891 (= e!425156 e!425158)))

(declare-fun res!516093 () Bool)

(assert (=> b!762891 (=> (not res!516093) (not e!425158))))

(declare-fun lt!339658 () SeekEntryResult!7771)

(assert (=> b!762891 (= res!516093 (or (= lt!339658 (MissingZero!7771 i!1173)) (= lt!339658 (MissingVacant!7771 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42120 (_ BitVec 32)) SeekEntryResult!7771)

(assert (=> b!762891 (= lt!339658 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!762892 () Bool)

(declare-fun res!516086 () Bool)

(assert (=> b!762892 (=> (not res!516086) (not e!425156))))

(assert (=> b!762892 (= res!516086 (validKeyInArray!0 (select (arr!20164 a!3186) j!159)))))

(declare-fun b!762893 () Bool)

(assert (=> b!762893 (= e!425158 e!425157)))

(declare-fun res!516082 () Bool)

(assert (=> b!762893 (=> (not res!516082) (not e!425157))))

(assert (=> b!762893 (= res!516082 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20164 a!3186) j!159) mask!3328) (select (arr!20164 a!3186) j!159) a!3186 mask!3328) lt!339656))))

(assert (=> b!762893 (= lt!339656 (Intermediate!7771 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!762894 () Bool)

(declare-fun res!516089 () Bool)

(assert (=> b!762894 (=> (not res!516089) (not e!425156))))

(assert (=> b!762894 (= res!516089 (and (= (size!20585 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20585 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20585 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!516092 () Bool)

(assert (=> start!66262 (=> (not res!516092) (not e!425156))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66262 (= res!516092 (validMask!0 mask!3328))))

(assert (=> start!66262 e!425156))

(assert (=> start!66262 true))

(declare-fun array_inv!15938 (array!42120) Bool)

(assert (=> start!66262 (array_inv!15938 a!3186)))

(declare-fun b!762895 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42120 (_ BitVec 32)) SeekEntryResult!7771)

(assert (=> b!762895 (= e!425155 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20164 a!3186) j!159) a!3186 mask!3328) (Found!7771 j!159)))))

(declare-fun b!762896 () Bool)

(declare-fun res!516084 () Bool)

(assert (=> b!762896 (=> (not res!516084) (not e!425158))))

(declare-datatypes ((List!14219 0))(
  ( (Nil!14216) (Cons!14215 (h!15299 (_ BitVec 64)) (t!20542 List!14219)) )
))
(declare-fun arrayNoDuplicates!0 (array!42120 (_ BitVec 32) List!14219) Bool)

(assert (=> b!762896 (= res!516084 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14216))))

(assert (= (and start!66262 res!516092) b!762894))

(assert (= (and b!762894 res!516089) b!762892))

(assert (= (and b!762892 res!516086) b!762890))

(assert (= (and b!762890 res!516090) b!762884))

(assert (= (and b!762884 res!516088) b!762891))

(assert (= (and b!762891 res!516093) b!762886))

(assert (= (and b!762886 res!516091) b!762896))

(assert (= (and b!762896 res!516084) b!762888))

(assert (= (and b!762888 res!516087) b!762893))

(assert (= (and b!762893 res!516082) b!762883))

(assert (= (and b!762883 res!516085) b!762885))

(assert (= (and b!762885 c!83787) b!762889))

(assert (= (and b!762885 (not c!83787)) b!762895))

(assert (= (and b!762885 res!516083) b!762887))

(declare-fun m!709545 () Bool)

(assert (=> start!66262 m!709545))

(declare-fun m!709547 () Bool)

(assert (=> start!66262 m!709547))

(declare-fun m!709549 () Bool)

(assert (=> b!762886 m!709549))

(declare-fun m!709551 () Bool)

(assert (=> b!762883 m!709551))

(declare-fun m!709553 () Bool)

(assert (=> b!762890 m!709553))

(declare-fun m!709555 () Bool)

(assert (=> b!762895 m!709555))

(assert (=> b!762895 m!709555))

(declare-fun m!709557 () Bool)

(assert (=> b!762895 m!709557))

(assert (=> b!762892 m!709555))

(assert (=> b!762892 m!709555))

(declare-fun m!709559 () Bool)

(assert (=> b!762892 m!709559))

(declare-fun m!709561 () Bool)

(assert (=> b!762896 m!709561))

(declare-fun m!709563 () Bool)

(assert (=> b!762884 m!709563))

(declare-fun m!709565 () Bool)

(assert (=> b!762887 m!709565))

(declare-fun m!709567 () Bool)

(assert (=> b!762887 m!709567))

(assert (=> b!762887 m!709567))

(declare-fun m!709569 () Bool)

(assert (=> b!762887 m!709569))

(assert (=> b!762889 m!709555))

(assert (=> b!762889 m!709555))

(declare-fun m!709571 () Bool)

(assert (=> b!762889 m!709571))

(declare-fun m!709573 () Bool)

(assert (=> b!762891 m!709573))

(assert (=> b!762893 m!709555))

(assert (=> b!762893 m!709555))

(declare-fun m!709575 () Bool)

(assert (=> b!762893 m!709575))

(assert (=> b!762893 m!709575))

(assert (=> b!762893 m!709555))

(declare-fun m!709577 () Bool)

(assert (=> b!762893 m!709577))

(check-sat (not b!762892) (not start!66262) (not b!762887) (not b!762891) (not b!762896) (not b!762895) (not b!762890) (not b!762893) (not b!762889) (not b!762886) (not b!762884))
(check-sat)
