; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66310 () Bool)

(assert start!66310)

(declare-fun b!763887 () Bool)

(declare-fun e!425533 () Bool)

(declare-fun e!425529 () Bool)

(assert (=> b!763887 (= e!425533 e!425529)))

(declare-fun res!516948 () Bool)

(assert (=> b!763887 (=> (not res!516948) (not e!425529))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!339968 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!42168 0))(
  ( (array!42169 (arr!20188 (Array (_ BitVec 32) (_ BitVec 64))) (size!20609 (_ BitVec 32))) )
))
(declare-fun lt!339970 () array!42168)

(declare-datatypes ((SeekEntryResult!7795 0))(
  ( (MissingZero!7795 (index!33547 (_ BitVec 32))) (Found!7795 (index!33548 (_ BitVec 32))) (Intermediate!7795 (undefined!8607 Bool) (index!33549 (_ BitVec 32)) (x!64472 (_ BitVec 32))) (Undefined!7795) (MissingVacant!7795 (index!33550 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42168 (_ BitVec 32)) SeekEntryResult!7795)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763887 (= res!516948 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339968 mask!3328) lt!339968 lt!339970 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339968 lt!339970 mask!3328)))))

(declare-fun a!3186 () array!42168)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!763887 (= lt!339968 (select (store (arr!20188 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!763887 (= lt!339970 (array!42169 (store (arr!20188 a!3186) i!1173 k0!2102) (size!20609 a!3186)))))

(declare-fun b!763888 () Bool)

(declare-fun res!516947 () Bool)

(declare-fun e!425534 () Bool)

(assert (=> b!763888 (=> (not res!516947) (not e!425534))))

(declare-fun arrayContainsKey!0 (array!42168 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763888 (= res!516947 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!763889 () Bool)

(assert (=> b!763889 (= e!425529 (and (bvsle #b00000000000000000000000000000000 (size!20609 a!3186)) (bvsgt j!159 (size!20609 a!3186))))))

(declare-fun b!763890 () Bool)

(declare-fun res!516953 () Bool)

(assert (=> b!763890 (=> (not res!516953) (not e!425533))))

(declare-fun e!425530 () Bool)

(assert (=> b!763890 (= res!516953 e!425530)))

(declare-fun c!83859 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763890 (= c!83859 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!763891 () Bool)

(declare-fun res!516950 () Bool)

(declare-fun e!425531 () Bool)

(assert (=> b!763891 (=> (not res!516950) (not e!425531))))

(declare-datatypes ((List!14243 0))(
  ( (Nil!14240) (Cons!14239 (h!15323 (_ BitVec 64)) (t!20566 List!14243)) )
))
(declare-fun arrayNoDuplicates!0 (array!42168 (_ BitVec 32) List!14243) Bool)

(assert (=> b!763891 (= res!516950 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14240))))

(declare-fun b!763892 () Bool)

(declare-fun res!516943 () Bool)

(assert (=> b!763892 (=> (not res!516943) (not e!425534))))

(assert (=> b!763892 (= res!516943 (and (= (size!20609 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20609 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20609 a!3186)) (not (= i!1173 j!159))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!763893 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42168 (_ BitVec 32)) SeekEntryResult!7795)

(assert (=> b!763893 (= e!425530 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20188 a!3186) j!159) a!3186 mask!3328) (Found!7795 j!159)))))

(declare-fun b!763894 () Bool)

(declare-fun res!516944 () Bool)

(assert (=> b!763894 (=> (not res!516944) (not e!425531))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42168 (_ BitVec 32)) Bool)

(assert (=> b!763894 (= res!516944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!763895 () Bool)

(declare-fun res!516954 () Bool)

(assert (=> b!763895 (=> (not res!516954) (not e!425534))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763895 (= res!516954 (validKeyInArray!0 (select (arr!20188 a!3186) j!159)))))

(declare-fun b!763896 () Bool)

(assert (=> b!763896 (= e!425531 e!425533)))

(declare-fun res!516945 () Bool)

(assert (=> b!763896 (=> (not res!516945) (not e!425533))))

(declare-fun lt!339967 () SeekEntryResult!7795)

(assert (=> b!763896 (= res!516945 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20188 a!3186) j!159) mask!3328) (select (arr!20188 a!3186) j!159) a!3186 mask!3328) lt!339967))))

(assert (=> b!763896 (= lt!339967 (Intermediate!7795 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!763897 () Bool)

(declare-fun res!516946 () Bool)

(assert (=> b!763897 (=> (not res!516946) (not e!425534))))

(assert (=> b!763897 (= res!516946 (validKeyInArray!0 k0!2102))))

(declare-fun b!763898 () Bool)

(declare-fun res!516952 () Bool)

(assert (=> b!763898 (=> (not res!516952) (not e!425531))))

(assert (=> b!763898 (= res!516952 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20609 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20609 a!3186))))))

(declare-fun b!763899 () Bool)

(assert (=> b!763899 (= e!425530 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20188 a!3186) j!159) a!3186 mask!3328) lt!339967))))

(declare-fun b!763901 () Bool)

(declare-fun res!516942 () Bool)

(assert (=> b!763901 (=> (not res!516942) (not e!425533))))

(assert (=> b!763901 (= res!516942 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20188 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!763900 () Bool)

(assert (=> b!763900 (= e!425534 e!425531)))

(declare-fun res!516951 () Bool)

(assert (=> b!763900 (=> (not res!516951) (not e!425531))))

(declare-fun lt!339969 () SeekEntryResult!7795)

(assert (=> b!763900 (= res!516951 (or (= lt!339969 (MissingZero!7795 i!1173)) (= lt!339969 (MissingVacant!7795 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42168 (_ BitVec 32)) SeekEntryResult!7795)

(assert (=> b!763900 (= lt!339969 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!516949 () Bool)

(assert (=> start!66310 (=> (not res!516949) (not e!425534))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66310 (= res!516949 (validMask!0 mask!3328))))

(assert (=> start!66310 e!425534))

(assert (=> start!66310 true))

(declare-fun array_inv!15962 (array!42168) Bool)

(assert (=> start!66310 (array_inv!15962 a!3186)))

(assert (= (and start!66310 res!516949) b!763892))

(assert (= (and b!763892 res!516943) b!763895))

(assert (= (and b!763895 res!516954) b!763897))

(assert (= (and b!763897 res!516946) b!763888))

(assert (= (and b!763888 res!516947) b!763900))

(assert (= (and b!763900 res!516951) b!763894))

(assert (= (and b!763894 res!516944) b!763891))

(assert (= (and b!763891 res!516950) b!763898))

(assert (= (and b!763898 res!516952) b!763896))

(assert (= (and b!763896 res!516945) b!763901))

(assert (= (and b!763901 res!516942) b!763890))

(assert (= (and b!763890 c!83859) b!763899))

(assert (= (and b!763890 (not c!83859)) b!763893))

(assert (= (and b!763890 res!516953) b!763887))

(assert (= (and b!763887 res!516948) b!763889))

(declare-fun m!710377 () Bool)

(assert (=> b!763896 m!710377))

(assert (=> b!763896 m!710377))

(declare-fun m!710379 () Bool)

(assert (=> b!763896 m!710379))

(assert (=> b!763896 m!710379))

(assert (=> b!763896 m!710377))

(declare-fun m!710381 () Bool)

(assert (=> b!763896 m!710381))

(declare-fun m!710383 () Bool)

(assert (=> b!763887 m!710383))

(declare-fun m!710385 () Bool)

(assert (=> b!763887 m!710385))

(declare-fun m!710387 () Bool)

(assert (=> b!763887 m!710387))

(declare-fun m!710389 () Bool)

(assert (=> b!763887 m!710389))

(declare-fun m!710391 () Bool)

(assert (=> b!763887 m!710391))

(assert (=> b!763887 m!710383))

(assert (=> b!763899 m!710377))

(assert (=> b!763899 m!710377))

(declare-fun m!710393 () Bool)

(assert (=> b!763899 m!710393))

(assert (=> b!763893 m!710377))

(assert (=> b!763893 m!710377))

(declare-fun m!710395 () Bool)

(assert (=> b!763893 m!710395))

(declare-fun m!710397 () Bool)

(assert (=> b!763888 m!710397))

(declare-fun m!710399 () Bool)

(assert (=> b!763894 m!710399))

(declare-fun m!710401 () Bool)

(assert (=> b!763901 m!710401))

(declare-fun m!710403 () Bool)

(assert (=> b!763897 m!710403))

(declare-fun m!710405 () Bool)

(assert (=> b!763891 m!710405))

(declare-fun m!710407 () Bool)

(assert (=> start!66310 m!710407))

(declare-fun m!710409 () Bool)

(assert (=> start!66310 m!710409))

(assert (=> b!763895 m!710377))

(assert (=> b!763895 m!710377))

(declare-fun m!710411 () Bool)

(assert (=> b!763895 m!710411))

(declare-fun m!710413 () Bool)

(assert (=> b!763900 m!710413))

(check-sat (not b!763887) (not b!763888) (not start!66310) (not b!763896) (not b!763893) (not b!763891) (not b!763897) (not b!763894) (not b!763900) (not b!763899) (not b!763895))
(check-sat)
