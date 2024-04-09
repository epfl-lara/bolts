; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67814 () Bool)

(assert start!67814)

(declare-fun b!788072 () Bool)

(declare-fun res!533986 () Bool)

(declare-fun e!438055 () Bool)

(assert (=> b!788072 (=> (not res!533986) (not e!438055))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!42809 0))(
  ( (array!42810 (arr!20489 (Array (_ BitVec 32) (_ BitVec 64))) (size!20910 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42809)

(assert (=> b!788072 (= res!533986 (and (= (size!20910 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20910 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20910 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!788073 () Bool)

(declare-fun e!438056 () Bool)

(declare-fun e!438048 () Bool)

(assert (=> b!788073 (= e!438056 e!438048)))

(declare-fun res!533982 () Bool)

(assert (=> b!788073 (=> res!533982 e!438048)))

(declare-datatypes ((SeekEntryResult!8096 0))(
  ( (MissingZero!8096 (index!34751 (_ BitVec 32))) (Found!8096 (index!34752 (_ BitVec 32))) (Intermediate!8096 (undefined!8908 Bool) (index!34753 (_ BitVec 32)) (x!65709 (_ BitVec 32))) (Undefined!8096) (MissingVacant!8096 (index!34754 (_ BitVec 32))) )
))
(declare-fun lt!351622 () SeekEntryResult!8096)

(declare-fun lt!351619 () SeekEntryResult!8096)

(assert (=> b!788073 (= res!533982 (not (= lt!351622 lt!351619)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42809 (_ BitVec 32)) SeekEntryResult!8096)

(assert (=> b!788073 (= lt!351622 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20489 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!788074 () Bool)

(declare-fun e!438053 () Bool)

(declare-fun e!438054 () Bool)

(assert (=> b!788074 (= e!438053 e!438054)))

(declare-fun res!533993 () Bool)

(assert (=> b!788074 (=> (not res!533993) (not e!438054))))

(declare-fun lt!351623 () SeekEntryResult!8096)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42809 (_ BitVec 32)) SeekEntryResult!8096)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!788074 (= res!533993 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20489 a!3186) j!159) mask!3328) (select (arr!20489 a!3186) j!159) a!3186 mask!3328) lt!351623))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!788074 (= lt!351623 (Intermediate!8096 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!788075 () Bool)

(declare-fun res!533980 () Bool)

(assert (=> b!788075 (=> (not res!533980) (not e!438055))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42809 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!788075 (= res!533980 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!788076 () Bool)

(declare-fun e!438049 () Bool)

(assert (=> b!788076 (= e!438049 (= (select (arr!20489 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!438050 () Bool)

(assert (=> b!788076 e!438050))

(declare-fun res!533983 () Bool)

(assert (=> b!788076 (=> (not res!533983) (not e!438050))))

(declare-fun lt!351616 () (_ BitVec 64))

(assert (=> b!788076 (= res!533983 (= lt!351616 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27294 0))(
  ( (Unit!27295) )
))
(declare-fun lt!351624 () Unit!27294)

(declare-fun e!438058 () Unit!27294)

(assert (=> b!788076 (= lt!351624 e!438058)))

(declare-fun c!87456 () Bool)

(assert (=> b!788076 (= c!87456 (= lt!351616 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!438057 () Bool)

(declare-fun b!788077 () Bool)

(assert (=> b!788077 (= e!438057 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20489 a!3186) j!159) a!3186 mask!3328) (Found!8096 j!159)))))

(declare-fun b!788078 () Bool)

(declare-fun res!533978 () Bool)

(assert (=> b!788078 (=> (not res!533978) (not e!438054))))

(assert (=> b!788078 (= res!533978 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20489 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!788079 () Bool)

(declare-fun res!533987 () Bool)

(assert (=> b!788079 (=> (not res!533987) (not e!438053))))

(declare-datatypes ((List!14544 0))(
  ( (Nil!14541) (Cons!14540 (h!15663 (_ BitVec 64)) (t!20867 List!14544)) )
))
(declare-fun arrayNoDuplicates!0 (array!42809 (_ BitVec 32) List!14544) Bool)

(assert (=> b!788079 (= res!533987 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14541))))

(declare-fun b!788080 () Bool)

(assert (=> b!788080 (= e!438057 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20489 a!3186) j!159) a!3186 mask!3328) lt!351623))))

(declare-fun b!788081 () Bool)

(declare-fun e!438052 () Bool)

(assert (=> b!788081 (= e!438052 (not e!438056))))

(declare-fun res!533995 () Bool)

(assert (=> b!788081 (=> res!533995 e!438056)))

(declare-fun lt!351620 () SeekEntryResult!8096)

(assert (=> b!788081 (= res!533995 (or (not (is-Intermediate!8096 lt!351620)) (bvslt x!1131 (x!65709 lt!351620)) (not (= x!1131 (x!65709 lt!351620))) (not (= index!1321 (index!34753 lt!351620)))))))

(declare-fun e!438047 () Bool)

(assert (=> b!788081 e!438047))

(declare-fun res!533989 () Bool)

(assert (=> b!788081 (=> (not res!533989) (not e!438047))))

(declare-fun lt!351615 () SeekEntryResult!8096)

(assert (=> b!788081 (= res!533989 (= lt!351615 lt!351619))))

(assert (=> b!788081 (= lt!351619 (Found!8096 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42809 (_ BitVec 32)) SeekEntryResult!8096)

(assert (=> b!788081 (= lt!351615 (seekEntryOrOpen!0 (select (arr!20489 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42809 (_ BitVec 32)) Bool)

(assert (=> b!788081 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!351614 () Unit!27294)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42809 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27294)

(assert (=> b!788081 (= lt!351614 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!788082 () Bool)

(declare-fun res!533981 () Bool)

(assert (=> b!788082 (=> (not res!533981) (not e!438054))))

(assert (=> b!788082 (= res!533981 e!438057)))

(declare-fun c!87455 () Bool)

(assert (=> b!788082 (= c!87455 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!788083 () Bool)

(declare-fun res!533991 () Bool)

(assert (=> b!788083 (=> (not res!533991) (not e!438053))))

(assert (=> b!788083 (= res!533991 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!788084 () Bool)

(assert (=> b!788084 (= e!438055 e!438053)))

(declare-fun res!533994 () Bool)

(assert (=> b!788084 (=> (not res!533994) (not e!438053))))

(declare-fun lt!351618 () SeekEntryResult!8096)

(assert (=> b!788084 (= res!533994 (or (= lt!351618 (MissingZero!8096 i!1173)) (= lt!351618 (MissingVacant!8096 i!1173))))))

(assert (=> b!788084 (= lt!351618 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!788085 () Bool)

(assert (=> b!788085 (= e!438047 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20489 a!3186) j!159) a!3186 mask!3328) lt!351619))))

(declare-fun b!788086 () Bool)

(assert (=> b!788086 (= e!438048 e!438049)))

(declare-fun res!533985 () Bool)

(assert (=> b!788086 (=> res!533985 e!438049)))

(declare-fun lt!351617 () (_ BitVec 64))

(assert (=> b!788086 (= res!533985 (= lt!351616 lt!351617))))

(assert (=> b!788086 (= lt!351616 (select (store (arr!20489 a!3186) i!1173 k!2102) index!1321))))

(declare-fun res!533984 () Bool)

(assert (=> start!67814 (=> (not res!533984) (not e!438055))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67814 (= res!533984 (validMask!0 mask!3328))))

(assert (=> start!67814 e!438055))

(assert (=> start!67814 true))

(declare-fun array_inv!16263 (array!42809) Bool)

(assert (=> start!67814 (array_inv!16263 a!3186)))

(declare-fun b!788087 () Bool)

(declare-fun res!533992 () Bool)

(assert (=> b!788087 (=> (not res!533992) (not e!438055))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!788087 (= res!533992 (validKeyInArray!0 k!2102))))

(declare-fun b!788088 () Bool)

(declare-fun Unit!27296 () Unit!27294)

(assert (=> b!788088 (= e!438058 Unit!27296)))

(declare-fun b!788089 () Bool)

(declare-fun res!533979 () Bool)

(assert (=> b!788089 (=> (not res!533979) (not e!438055))))

(assert (=> b!788089 (= res!533979 (validKeyInArray!0 (select (arr!20489 a!3186) j!159)))))

(declare-fun b!788090 () Bool)

(assert (=> b!788090 (= e!438050 (= lt!351615 lt!351622))))

(declare-fun b!788091 () Bool)

(declare-fun Unit!27297 () Unit!27294)

(assert (=> b!788091 (= e!438058 Unit!27297)))

(assert (=> b!788091 false))

(declare-fun b!788092 () Bool)

(declare-fun res!533977 () Bool)

(assert (=> b!788092 (=> (not res!533977) (not e!438053))))

(assert (=> b!788092 (= res!533977 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20910 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20910 a!3186))))))

(declare-fun b!788093 () Bool)

(assert (=> b!788093 (= e!438054 e!438052)))

(declare-fun res!533990 () Bool)

(assert (=> b!788093 (=> (not res!533990) (not e!438052))))

(declare-fun lt!351625 () SeekEntryResult!8096)

(assert (=> b!788093 (= res!533990 (= lt!351625 lt!351620))))

(declare-fun lt!351621 () array!42809)

(assert (=> b!788093 (= lt!351620 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351617 lt!351621 mask!3328))))

(assert (=> b!788093 (= lt!351625 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351617 mask!3328) lt!351617 lt!351621 mask!3328))))

(assert (=> b!788093 (= lt!351617 (select (store (arr!20489 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!788093 (= lt!351621 (array!42810 (store (arr!20489 a!3186) i!1173 k!2102) (size!20910 a!3186)))))

(declare-fun b!788094 () Bool)

(declare-fun res!533988 () Bool)

(assert (=> b!788094 (=> (not res!533988) (not e!438050))))

(assert (=> b!788094 (= res!533988 (= (seekEntryOrOpen!0 lt!351617 lt!351621 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351617 lt!351621 mask!3328)))))

(assert (= (and start!67814 res!533984) b!788072))

(assert (= (and b!788072 res!533986) b!788089))

(assert (= (and b!788089 res!533979) b!788087))

(assert (= (and b!788087 res!533992) b!788075))

(assert (= (and b!788075 res!533980) b!788084))

(assert (= (and b!788084 res!533994) b!788083))

(assert (= (and b!788083 res!533991) b!788079))

(assert (= (and b!788079 res!533987) b!788092))

(assert (= (and b!788092 res!533977) b!788074))

(assert (= (and b!788074 res!533993) b!788078))

(assert (= (and b!788078 res!533978) b!788082))

(assert (= (and b!788082 c!87455) b!788080))

(assert (= (and b!788082 (not c!87455)) b!788077))

(assert (= (and b!788082 res!533981) b!788093))

(assert (= (and b!788093 res!533990) b!788081))

(assert (= (and b!788081 res!533989) b!788085))

(assert (= (and b!788081 (not res!533995)) b!788073))

(assert (= (and b!788073 (not res!533982)) b!788086))

(assert (= (and b!788086 (not res!533985)) b!788076))

(assert (= (and b!788076 c!87456) b!788091))

(assert (= (and b!788076 (not c!87456)) b!788088))

(assert (= (and b!788076 res!533983) b!788094))

(assert (= (and b!788094 res!533988) b!788090))

(declare-fun m!729541 () Bool)

(assert (=> b!788087 m!729541))

(declare-fun m!729543 () Bool)

(assert (=> b!788075 m!729543))

(declare-fun m!729545 () Bool)

(assert (=> b!788079 m!729545))

(declare-fun m!729547 () Bool)

(assert (=> b!788089 m!729547))

(assert (=> b!788089 m!729547))

(declare-fun m!729549 () Bool)

(assert (=> b!788089 m!729549))

(declare-fun m!729551 () Bool)

(assert (=> b!788083 m!729551))

(assert (=> b!788073 m!729547))

(assert (=> b!788073 m!729547))

(declare-fun m!729553 () Bool)

(assert (=> b!788073 m!729553))

(assert (=> b!788074 m!729547))

(assert (=> b!788074 m!729547))

(declare-fun m!729555 () Bool)

(assert (=> b!788074 m!729555))

(assert (=> b!788074 m!729555))

(assert (=> b!788074 m!729547))

(declare-fun m!729557 () Bool)

(assert (=> b!788074 m!729557))

(declare-fun m!729559 () Bool)

(assert (=> b!788076 m!729559))

(declare-fun m!729561 () Bool)

(assert (=> b!788093 m!729561))

(declare-fun m!729563 () Bool)

(assert (=> b!788093 m!729563))

(declare-fun m!729565 () Bool)

(assert (=> b!788093 m!729565))

(declare-fun m!729567 () Bool)

(assert (=> b!788093 m!729567))

(declare-fun m!729569 () Bool)

(assert (=> b!788093 m!729569))

(assert (=> b!788093 m!729567))

(assert (=> b!788081 m!729547))

(assert (=> b!788081 m!729547))

(declare-fun m!729571 () Bool)

(assert (=> b!788081 m!729571))

(declare-fun m!729573 () Bool)

(assert (=> b!788081 m!729573))

(declare-fun m!729575 () Bool)

(assert (=> b!788081 m!729575))

(assert (=> b!788086 m!729563))

(declare-fun m!729577 () Bool)

(assert (=> b!788086 m!729577))

(declare-fun m!729579 () Bool)

(assert (=> b!788078 m!729579))

(declare-fun m!729581 () Bool)

(assert (=> b!788084 m!729581))

(declare-fun m!729583 () Bool)

(assert (=> start!67814 m!729583))

(declare-fun m!729585 () Bool)

(assert (=> start!67814 m!729585))

(assert (=> b!788085 m!729547))

(assert (=> b!788085 m!729547))

(declare-fun m!729587 () Bool)

(assert (=> b!788085 m!729587))

(assert (=> b!788080 m!729547))

(assert (=> b!788080 m!729547))

(declare-fun m!729589 () Bool)

(assert (=> b!788080 m!729589))

(assert (=> b!788077 m!729547))

(assert (=> b!788077 m!729547))

(assert (=> b!788077 m!729553))

(declare-fun m!729591 () Bool)

(assert (=> b!788094 m!729591))

(declare-fun m!729593 () Bool)

(assert (=> b!788094 m!729593))

(push 1)

