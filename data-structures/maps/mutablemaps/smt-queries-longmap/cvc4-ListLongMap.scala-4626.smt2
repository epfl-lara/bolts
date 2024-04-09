; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64478 () Bool)

(assert start!64478)

(declare-fun b!724694 () Bool)

(declare-fun res!486021 () Bool)

(declare-fun e!405925 () Bool)

(assert (=> b!724694 (=> (not res!486021) (not e!405925))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!724694 (= res!486021 (validKeyInArray!0 k!2102))))

(declare-fun b!724695 () Bool)

(declare-fun res!486014 () Bool)

(assert (=> b!724695 (=> (not res!486014) (not e!405925))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!40949 0))(
  ( (array!40950 (arr!19592 (Array (_ BitVec 32) (_ BitVec 64))) (size!20013 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40949)

(assert (=> b!724695 (= res!486014 (and (= (size!20013 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20013 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20013 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!724696 () Bool)

(declare-fun res!486012 () Bool)

(declare-fun e!405927 () Bool)

(assert (=> b!724696 (=> (not res!486012) (not e!405927))))

(declare-fun e!405930 () Bool)

(assert (=> b!724696 (= res!486012 e!405930)))

(declare-fun c!79716 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!724696 (= c!79716 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!724697 () Bool)

(declare-fun res!486019 () Bool)

(declare-fun e!405924 () Bool)

(assert (=> b!724697 (=> (not res!486019) (not e!405924))))

(declare-datatypes ((List!13647 0))(
  ( (Nil!13644) (Cons!13643 (h!14700 (_ BitVec 64)) (t!19970 List!13647)) )
))
(declare-fun arrayNoDuplicates!0 (array!40949 (_ BitVec 32) List!13647) Bool)

(assert (=> b!724697 (= res!486019 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13644))))

(declare-fun b!724698 () Bool)

(declare-fun res!486013 () Bool)

(assert (=> b!724698 (=> (not res!486013) (not e!405925))))

(declare-fun arrayContainsKey!0 (array!40949 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!724698 (= res!486013 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!724699 () Bool)

(declare-fun res!486018 () Bool)

(assert (=> b!724699 (=> (not res!486018) (not e!405924))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40949 (_ BitVec 32)) Bool)

(assert (=> b!724699 (= res!486018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun e!405929 () Bool)

(declare-fun b!724700 () Bool)

(declare-datatypes ((SeekEntryResult!7199 0))(
  ( (MissingZero!7199 (index!31163 (_ BitVec 32))) (Found!7199 (index!31164 (_ BitVec 32))) (Intermediate!7199 (undefined!8011 Bool) (index!31165 (_ BitVec 32)) (x!62186 (_ BitVec 32))) (Undefined!7199) (MissingVacant!7199 (index!31166 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40949 (_ BitVec 32)) SeekEntryResult!7199)

(assert (=> b!724700 (= e!405929 (= (seekEntryOrOpen!0 (select (arr!19592 a!3186) j!159) a!3186 mask!3328) (Found!7199 j!159)))))

(declare-fun b!724701 () Bool)

(assert (=> b!724701 (= e!405925 e!405924)))

(declare-fun res!486017 () Bool)

(assert (=> b!724701 (=> (not res!486017) (not e!405924))))

(declare-fun lt!321103 () SeekEntryResult!7199)

(assert (=> b!724701 (= res!486017 (or (= lt!321103 (MissingZero!7199 i!1173)) (= lt!321103 (MissingVacant!7199 i!1173))))))

(assert (=> b!724701 (= lt!321103 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!724702 () Bool)

(assert (=> b!724702 (= e!405924 e!405927)))

(declare-fun res!486020 () Bool)

(assert (=> b!724702 (=> (not res!486020) (not e!405927))))

(declare-fun lt!321100 () SeekEntryResult!7199)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40949 (_ BitVec 32)) SeekEntryResult!7199)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!724702 (= res!486020 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19592 a!3186) j!159) mask!3328) (select (arr!19592 a!3186) j!159) a!3186 mask!3328) lt!321100))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!724702 (= lt!321100 (Intermediate!7199 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!724703 () Bool)

(declare-fun e!405926 () Bool)

(assert (=> b!724703 (= e!405927 e!405926)))

(declare-fun res!486008 () Bool)

(assert (=> b!724703 (=> (not res!486008) (not e!405926))))

(declare-fun lt!321102 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!321101 () array!40949)

(assert (=> b!724703 (= res!486008 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321102 mask!3328) lt!321102 lt!321101 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321102 lt!321101 mask!3328)))))

(assert (=> b!724703 (= lt!321102 (select (store (arr!19592 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!724703 (= lt!321101 (array!40950 (store (arr!19592 a!3186) i!1173 k!2102) (size!20013 a!3186)))))

(declare-fun b!724704 () Bool)

(assert (=> b!724704 (= e!405930 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19592 a!3186) j!159) a!3186 mask!3328) lt!321100))))

(declare-fun b!724705 () Bool)

(declare-fun res!486010 () Bool)

(assert (=> b!724705 (=> (not res!486010) (not e!405927))))

(assert (=> b!724705 (= res!486010 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19592 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!724706 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40949 (_ BitVec 32)) SeekEntryResult!7199)

(assert (=> b!724706 (= e!405930 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19592 a!3186) j!159) a!3186 mask!3328) (Found!7199 j!159)))))

(declare-fun b!724707 () Bool)

(assert (=> b!724707 (= e!405926 (not true))))

(assert (=> b!724707 e!405929))

(declare-fun res!486009 () Bool)

(assert (=> b!724707 (=> (not res!486009) (not e!405929))))

(assert (=> b!724707 (= res!486009 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24716 0))(
  ( (Unit!24717) )
))
(declare-fun lt!321104 () Unit!24716)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40949 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24716)

(assert (=> b!724707 (= lt!321104 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!724708 () Bool)

(declare-fun res!486011 () Bool)

(assert (=> b!724708 (=> (not res!486011) (not e!405925))))

(assert (=> b!724708 (= res!486011 (validKeyInArray!0 (select (arr!19592 a!3186) j!159)))))

(declare-fun res!486015 () Bool)

(assert (=> start!64478 (=> (not res!486015) (not e!405925))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64478 (= res!486015 (validMask!0 mask!3328))))

(assert (=> start!64478 e!405925))

(assert (=> start!64478 true))

(declare-fun array_inv!15366 (array!40949) Bool)

(assert (=> start!64478 (array_inv!15366 a!3186)))

(declare-fun b!724709 () Bool)

(declare-fun res!486016 () Bool)

(assert (=> b!724709 (=> (not res!486016) (not e!405924))))

(assert (=> b!724709 (= res!486016 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20013 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20013 a!3186))))))

(assert (= (and start!64478 res!486015) b!724695))

(assert (= (and b!724695 res!486014) b!724708))

(assert (= (and b!724708 res!486011) b!724694))

(assert (= (and b!724694 res!486021) b!724698))

(assert (= (and b!724698 res!486013) b!724701))

(assert (= (and b!724701 res!486017) b!724699))

(assert (= (and b!724699 res!486018) b!724697))

(assert (= (and b!724697 res!486019) b!724709))

(assert (= (and b!724709 res!486016) b!724702))

(assert (= (and b!724702 res!486020) b!724705))

(assert (= (and b!724705 res!486010) b!724696))

(assert (= (and b!724696 c!79716) b!724704))

(assert (= (and b!724696 (not c!79716)) b!724706))

(assert (= (and b!724696 res!486012) b!724703))

(assert (= (and b!724703 res!486008) b!724707))

(assert (= (and b!724707 res!486009) b!724700))

(declare-fun m!679013 () Bool)

(assert (=> b!724707 m!679013))

(declare-fun m!679015 () Bool)

(assert (=> b!724707 m!679015))

(declare-fun m!679017 () Bool)

(assert (=> b!724694 m!679017))

(declare-fun m!679019 () Bool)

(assert (=> b!724708 m!679019))

(assert (=> b!724708 m!679019))

(declare-fun m!679021 () Bool)

(assert (=> b!724708 m!679021))

(declare-fun m!679023 () Bool)

(assert (=> b!724698 m!679023))

(declare-fun m!679025 () Bool)

(assert (=> b!724703 m!679025))

(declare-fun m!679027 () Bool)

(assert (=> b!724703 m!679027))

(declare-fun m!679029 () Bool)

(assert (=> b!724703 m!679029))

(declare-fun m!679031 () Bool)

(assert (=> b!724703 m!679031))

(declare-fun m!679033 () Bool)

(assert (=> b!724703 m!679033))

(assert (=> b!724703 m!679025))

(declare-fun m!679035 () Bool)

(assert (=> b!724701 m!679035))

(declare-fun m!679037 () Bool)

(assert (=> b!724697 m!679037))

(declare-fun m!679039 () Bool)

(assert (=> b!724705 m!679039))

(assert (=> b!724706 m!679019))

(assert (=> b!724706 m!679019))

(declare-fun m!679041 () Bool)

(assert (=> b!724706 m!679041))

(assert (=> b!724700 m!679019))

(assert (=> b!724700 m!679019))

(declare-fun m!679043 () Bool)

(assert (=> b!724700 m!679043))

(declare-fun m!679045 () Bool)

(assert (=> b!724699 m!679045))

(assert (=> b!724704 m!679019))

(assert (=> b!724704 m!679019))

(declare-fun m!679047 () Bool)

(assert (=> b!724704 m!679047))

(declare-fun m!679049 () Bool)

(assert (=> start!64478 m!679049))

(declare-fun m!679051 () Bool)

(assert (=> start!64478 m!679051))

(assert (=> b!724702 m!679019))

(assert (=> b!724702 m!679019))

(declare-fun m!679053 () Bool)

(assert (=> b!724702 m!679053))

(assert (=> b!724702 m!679053))

(assert (=> b!724702 m!679019))

(declare-fun m!679055 () Bool)

(assert (=> b!724702 m!679055))

(push 1)

