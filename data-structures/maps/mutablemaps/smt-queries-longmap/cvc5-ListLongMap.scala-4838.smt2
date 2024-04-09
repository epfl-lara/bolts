; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66590 () Bool)

(assert start!66590)

(declare-fun b!767045 () Bool)

(declare-fun e!427166 () Bool)

(declare-fun e!427169 () Bool)

(assert (=> b!767045 (= e!427166 e!427169)))

(declare-fun res!519014 () Bool)

(assert (=> b!767045 (=> res!519014 e!427169)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!767045 (= res!519014 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!341230 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!767045 (= lt!341230 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!767046 () Bool)

(declare-fun res!519005 () Bool)

(declare-fun e!427167 () Bool)

(assert (=> b!767046 (=> (not res!519005) (not e!427167))))

(declare-datatypes ((array!42253 0))(
  ( (array!42254 (arr!20226 (Array (_ BitVec 32) (_ BitVec 64))) (size!20647 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42253)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!767046 (= res!519005 (validKeyInArray!0 (select (arr!20226 a!3186) j!159)))))

(declare-fun b!767047 () Bool)

(declare-fun res!519007 () Bool)

(declare-fun e!427168 () Bool)

(assert (=> b!767047 (=> (not res!519007) (not e!427168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42253 (_ BitVec 32)) Bool)

(assert (=> b!767047 (= res!519007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!767048 () Bool)

(declare-fun e!427172 () Bool)

(declare-fun e!427170 () Bool)

(assert (=> b!767048 (= e!427172 e!427170)))

(declare-fun res!519002 () Bool)

(assert (=> b!767048 (=> (not res!519002) (not e!427170))))

(declare-datatypes ((SeekEntryResult!7833 0))(
  ( (MissingZero!7833 (index!33699 (_ BitVec 32))) (Found!7833 (index!33700 (_ BitVec 32))) (Intermediate!7833 (undefined!8645 Bool) (index!33701 (_ BitVec 32)) (x!64644 (_ BitVec 32))) (Undefined!7833) (MissingVacant!7833 (index!33702 (_ BitVec 32))) )
))
(declare-fun lt!341229 () SeekEntryResult!7833)

(declare-fun lt!341233 () SeekEntryResult!7833)

(assert (=> b!767048 (= res!519002 (= lt!341229 lt!341233))))

(declare-fun lt!341235 () array!42253)

(declare-fun lt!341236 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42253 (_ BitVec 32)) SeekEntryResult!7833)

(assert (=> b!767048 (= lt!341233 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341236 lt!341235 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!767048 (= lt!341229 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341236 mask!3328) lt!341236 lt!341235 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!767048 (= lt!341236 (select (store (arr!20226 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!767048 (= lt!341235 (array!42254 (store (arr!20226 a!3186) i!1173 k!2102) (size!20647 a!3186)))))

(declare-fun b!767049 () Bool)

(assert (=> b!767049 (= e!427167 e!427168)))

(declare-fun res!519009 () Bool)

(assert (=> b!767049 (=> (not res!519009) (not e!427168))))

(declare-fun lt!341228 () SeekEntryResult!7833)

(assert (=> b!767049 (= res!519009 (or (= lt!341228 (MissingZero!7833 i!1173)) (= lt!341228 (MissingVacant!7833 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42253 (_ BitVec 32)) SeekEntryResult!7833)

(assert (=> b!767049 (= lt!341228 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun e!427164 () Bool)

(declare-fun lt!341232 () SeekEntryResult!7833)

(declare-fun b!767050 () Bool)

(assert (=> b!767050 (= e!427164 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20226 a!3186) j!159) a!3186 mask!3328) lt!341232))))

(declare-fun b!767051 () Bool)

(declare-fun e!427171 () Bool)

(declare-fun e!427165 () Bool)

(assert (=> b!767051 (= e!427171 e!427165)))

(declare-fun res!519006 () Bool)

(assert (=> b!767051 (=> (not res!519006) (not e!427165))))

(declare-fun lt!341234 () SeekEntryResult!7833)

(assert (=> b!767051 (= res!519006 (= (seekEntryOrOpen!0 (select (arr!20226 a!3186) j!159) a!3186 mask!3328) lt!341234))))

(assert (=> b!767051 (= lt!341234 (Found!7833 j!159))))

(declare-fun b!767052 () Bool)

(declare-fun res!519003 () Bool)

(assert (=> b!767052 (=> (not res!519003) (not e!427172))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!767052 (= res!519003 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20226 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!767053 () Bool)

(declare-fun res!519004 () Bool)

(assert (=> b!767053 (=> (not res!519004) (not e!427167))))

(assert (=> b!767053 (= res!519004 (and (= (size!20647 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20647 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20647 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!767054 () Bool)

(assert (=> b!767054 (= e!427170 (not e!427166))))

(declare-fun res!519010 () Bool)

(assert (=> b!767054 (=> res!519010 e!427166)))

(assert (=> b!767054 (= res!519010 (or (not (is-Intermediate!7833 lt!341233)) (bvsge x!1131 (x!64644 lt!341233))))))

(assert (=> b!767054 e!427171))

(declare-fun res!519015 () Bool)

(assert (=> b!767054 (=> (not res!519015) (not e!427171))))

(assert (=> b!767054 (= res!519015 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26392 0))(
  ( (Unit!26393) )
))
(declare-fun lt!341227 () Unit!26392)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42253 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26392)

(assert (=> b!767054 (= lt!341227 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!767055 () Bool)

(declare-fun res!519012 () Bool)

(assert (=> b!767055 (=> (not res!519012) (not e!427168))))

(declare-datatypes ((List!14281 0))(
  ( (Nil!14278) (Cons!14277 (h!15370 (_ BitVec 64)) (t!20604 List!14281)) )
))
(declare-fun arrayNoDuplicates!0 (array!42253 (_ BitVec 32) List!14281) Bool)

(assert (=> b!767055 (= res!519012 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14278))))

(declare-fun b!767056 () Bool)

(assert (=> b!767056 (= e!427169 true)))

(declare-fun lt!341231 () SeekEntryResult!7833)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42253 (_ BitVec 32)) SeekEntryResult!7833)

(assert (=> b!767056 (= lt!341231 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20226 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!767057 () Bool)

(declare-fun res!518999 () Bool)

(assert (=> b!767057 (=> (not res!518999) (not e!427167))))

(declare-fun arrayContainsKey!0 (array!42253 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!767057 (= res!518999 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!767059 () Bool)

(assert (=> b!767059 (= e!427165 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20226 a!3186) j!159) a!3186 mask!3328) lt!341234))))

(declare-fun b!767060 () Bool)

(assert (=> b!767060 (= e!427164 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20226 a!3186) j!159) a!3186 mask!3328) (Found!7833 j!159)))))

(declare-fun b!767061 () Bool)

(assert (=> b!767061 (= e!427168 e!427172)))

(declare-fun res!519011 () Bool)

(assert (=> b!767061 (=> (not res!519011) (not e!427172))))

(assert (=> b!767061 (= res!519011 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20226 a!3186) j!159) mask!3328) (select (arr!20226 a!3186) j!159) a!3186 mask!3328) lt!341232))))

(assert (=> b!767061 (= lt!341232 (Intermediate!7833 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!767062 () Bool)

(declare-fun res!519008 () Bool)

(assert (=> b!767062 (=> (not res!519008) (not e!427168))))

(assert (=> b!767062 (= res!519008 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20647 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20647 a!3186))))))

(declare-fun b!767063 () Bool)

(declare-fun res!519001 () Bool)

(assert (=> b!767063 (=> (not res!519001) (not e!427172))))

(assert (=> b!767063 (= res!519001 e!427164)))

(declare-fun c!84414 () Bool)

(assert (=> b!767063 (= c!84414 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!767058 () Bool)

(declare-fun res!519013 () Bool)

(assert (=> b!767058 (=> (not res!519013) (not e!427167))))

(assert (=> b!767058 (= res!519013 (validKeyInArray!0 k!2102))))

(declare-fun res!519000 () Bool)

(assert (=> start!66590 (=> (not res!519000) (not e!427167))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66590 (= res!519000 (validMask!0 mask!3328))))

(assert (=> start!66590 e!427167))

(assert (=> start!66590 true))

(declare-fun array_inv!16000 (array!42253) Bool)

(assert (=> start!66590 (array_inv!16000 a!3186)))

(assert (= (and start!66590 res!519000) b!767053))

(assert (= (and b!767053 res!519004) b!767046))

(assert (= (and b!767046 res!519005) b!767058))

(assert (= (and b!767058 res!519013) b!767057))

(assert (= (and b!767057 res!518999) b!767049))

(assert (= (and b!767049 res!519009) b!767047))

(assert (= (and b!767047 res!519007) b!767055))

(assert (= (and b!767055 res!519012) b!767062))

(assert (= (and b!767062 res!519008) b!767061))

(assert (= (and b!767061 res!519011) b!767052))

(assert (= (and b!767052 res!519003) b!767063))

(assert (= (and b!767063 c!84414) b!767050))

(assert (= (and b!767063 (not c!84414)) b!767060))

(assert (= (and b!767063 res!519001) b!767048))

(assert (= (and b!767048 res!519002) b!767054))

(assert (= (and b!767054 res!519015) b!767051))

(assert (= (and b!767051 res!519006) b!767059))

(assert (= (and b!767054 (not res!519010)) b!767045))

(assert (= (and b!767045 (not res!519014)) b!767056))

(declare-fun m!712937 () Bool)

(assert (=> b!767057 m!712937))

(declare-fun m!712939 () Bool)

(assert (=> b!767055 m!712939))

(declare-fun m!712941 () Bool)

(assert (=> b!767056 m!712941))

(assert (=> b!767056 m!712941))

(declare-fun m!712943 () Bool)

(assert (=> b!767056 m!712943))

(assert (=> b!767051 m!712941))

(assert (=> b!767051 m!712941))

(declare-fun m!712945 () Bool)

(assert (=> b!767051 m!712945))

(declare-fun m!712947 () Bool)

(assert (=> b!767045 m!712947))

(assert (=> b!767050 m!712941))

(assert (=> b!767050 m!712941))

(declare-fun m!712949 () Bool)

(assert (=> b!767050 m!712949))

(declare-fun m!712951 () Bool)

(assert (=> b!767058 m!712951))

(assert (=> b!767061 m!712941))

(assert (=> b!767061 m!712941))

(declare-fun m!712953 () Bool)

(assert (=> b!767061 m!712953))

(assert (=> b!767061 m!712953))

(assert (=> b!767061 m!712941))

(declare-fun m!712955 () Bool)

(assert (=> b!767061 m!712955))

(declare-fun m!712957 () Bool)

(assert (=> start!66590 m!712957))

(declare-fun m!712959 () Bool)

(assert (=> start!66590 m!712959))

(assert (=> b!767046 m!712941))

(assert (=> b!767046 m!712941))

(declare-fun m!712961 () Bool)

(assert (=> b!767046 m!712961))

(declare-fun m!712963 () Bool)

(assert (=> b!767054 m!712963))

(declare-fun m!712965 () Bool)

(assert (=> b!767054 m!712965))

(assert (=> b!767060 m!712941))

(assert (=> b!767060 m!712941))

(assert (=> b!767060 m!712943))

(declare-fun m!712967 () Bool)

(assert (=> b!767052 m!712967))

(declare-fun m!712969 () Bool)

(assert (=> b!767047 m!712969))

(declare-fun m!712971 () Bool)

(assert (=> b!767048 m!712971))

(declare-fun m!712973 () Bool)

(assert (=> b!767048 m!712973))

(declare-fun m!712975 () Bool)

(assert (=> b!767048 m!712975))

(declare-fun m!712977 () Bool)

(assert (=> b!767048 m!712977))

(assert (=> b!767048 m!712975))

(declare-fun m!712979 () Bool)

(assert (=> b!767048 m!712979))

(declare-fun m!712981 () Bool)

(assert (=> b!767049 m!712981))

(assert (=> b!767059 m!712941))

(assert (=> b!767059 m!712941))

(declare-fun m!712983 () Bool)

(assert (=> b!767059 m!712983))

(push 1)

