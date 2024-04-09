; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65228 () Bool)

(assert start!65228)

(declare-fun b!738210 () Bool)

(declare-datatypes ((Unit!25194 0))(
  ( (Unit!25195) )
))
(declare-fun e!412886 () Unit!25194)

(declare-fun Unit!25196 () Unit!25194)

(assert (=> b!738210 (= e!412886 Unit!25196)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41354 0))(
  ( (array!41355 (arr!19787 (Array (_ BitVec 32) (_ BitVec 64))) (size!20208 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41354)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7394 0))(
  ( (MissingZero!7394 (index!31943 (_ BitVec 32))) (Found!7394 (index!31944 (_ BitVec 32))) (Intermediate!7394 (undefined!8206 Bool) (index!31945 (_ BitVec 32)) (x!62961 (_ BitVec 32))) (Undefined!7394) (MissingVacant!7394 (index!31946 (_ BitVec 32))) )
))
(declare-fun lt!327674 () SeekEntryResult!7394)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41354 (_ BitVec 32)) SeekEntryResult!7394)

(assert (=> b!738210 (= lt!327674 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19787 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!327675 () (_ BitVec 32))

(declare-fun lt!327668 () SeekEntryResult!7394)

(assert (=> b!738210 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327675 resIntermediateIndex!5 (select (arr!19787 a!3186) j!159) a!3186 mask!3328) lt!327668)))

(declare-fun e!412876 () Bool)

(declare-fun b!738212 () Bool)

(declare-fun lt!327669 () SeekEntryResult!7394)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41354 (_ BitVec 32)) SeekEntryResult!7394)

(assert (=> b!738212 (= e!412876 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327675 (select (arr!19787 a!3186) j!159) a!3186 mask!3328) lt!327669)))))

(declare-fun b!738213 () Bool)

(declare-fun e!412887 () Bool)

(declare-fun e!412881 () Bool)

(assert (=> b!738213 (= e!412887 (not e!412881))))

(declare-fun res!496363 () Bool)

(assert (=> b!738213 (=> res!496363 e!412881)))

(declare-fun lt!327679 () SeekEntryResult!7394)

(assert (=> b!738213 (= res!496363 (or (not (is-Intermediate!7394 lt!327679)) (bvsge x!1131 (x!62961 lt!327679))))))

(assert (=> b!738213 (= lt!327668 (Found!7394 j!159))))

(declare-fun e!412883 () Bool)

(assert (=> b!738213 e!412883))

(declare-fun res!496373 () Bool)

(assert (=> b!738213 (=> (not res!496373) (not e!412883))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41354 (_ BitVec 32)) Bool)

(assert (=> b!738213 (= res!496373 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!327680 () Unit!25194)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41354 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25194)

(assert (=> b!738213 (= lt!327680 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!738214 () Bool)

(declare-fun e!412884 () Bool)

(assert (=> b!738214 (= e!412883 e!412884)))

(declare-fun res!496378 () Bool)

(assert (=> b!738214 (=> (not res!496378) (not e!412884))))

(declare-fun lt!327672 () SeekEntryResult!7394)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41354 (_ BitVec 32)) SeekEntryResult!7394)

(assert (=> b!738214 (= res!496378 (= (seekEntryOrOpen!0 (select (arr!19787 a!3186) j!159) a!3186 mask!3328) lt!327672))))

(assert (=> b!738214 (= lt!327672 (Found!7394 j!159))))

(declare-fun b!738215 () Bool)

(declare-fun Unit!25197 () Unit!25194)

(assert (=> b!738215 (= e!412886 Unit!25197)))

(assert (=> b!738215 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327675 (select (arr!19787 a!3186) j!159) a!3186 mask!3328) lt!327669)))

(declare-fun b!738216 () Bool)

(declare-fun res!496365 () Bool)

(declare-fun e!412882 () Bool)

(assert (=> b!738216 (=> (not res!496365) (not e!412882))))

(assert (=> b!738216 (= res!496365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!738217 () Bool)

(assert (=> b!738217 (= e!412876 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327675 resIntermediateIndex!5 (select (arr!19787 a!3186) j!159) a!3186 mask!3328) lt!327668)))))

(declare-fun b!738218 () Bool)

(declare-fun e!412885 () Bool)

(assert (=> b!738218 (= e!412881 e!412885)))

(declare-fun res!496379 () Bool)

(assert (=> b!738218 (=> res!496379 e!412885)))

(assert (=> b!738218 (= res!496379 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327675 #b00000000000000000000000000000000) (bvsge lt!327675 (size!20208 a!3186))))))

(declare-fun lt!327667 () Unit!25194)

(assert (=> b!738218 (= lt!327667 e!412886)))

(declare-fun c!81305 () Bool)

(declare-fun lt!327673 () Bool)

(assert (=> b!738218 (= c!81305 lt!327673)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!738218 (= lt!327673 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738218 (= lt!327675 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!738219 () Bool)

(declare-fun e!412879 () Bool)

(assert (=> b!738219 (= e!412879 e!412882)))

(declare-fun res!496364 () Bool)

(assert (=> b!738219 (=> (not res!496364) (not e!412882))))

(declare-fun lt!327676 () SeekEntryResult!7394)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!738219 (= res!496364 (or (= lt!327676 (MissingZero!7394 i!1173)) (= lt!327676 (MissingVacant!7394 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!738219 (= lt!327676 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!738220 () Bool)

(declare-fun res!496367 () Bool)

(assert (=> b!738220 (=> (not res!496367) (not e!412879))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!738220 (= res!496367 (validKeyInArray!0 k!2102))))

(declare-fun b!738221 () Bool)

(declare-fun res!496375 () Bool)

(declare-fun e!412880 () Bool)

(assert (=> b!738221 (=> (not res!496375) (not e!412880))))

(assert (=> b!738221 (= res!496375 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19787 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!738222 () Bool)

(declare-fun res!496372 () Bool)

(assert (=> b!738222 (=> (not res!496372) (not e!412879))))

(declare-fun arrayContainsKey!0 (array!41354 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!738222 (= res!496372 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!738223 () Bool)

(declare-fun res!496368 () Bool)

(assert (=> b!738223 (=> (not res!496368) (not e!412879))))

(assert (=> b!738223 (= res!496368 (and (= (size!20208 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20208 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20208 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!738224 () Bool)

(assert (=> b!738224 (= e!412885 true)))

(declare-fun lt!327678 () array!41354)

(declare-fun lt!327670 () SeekEntryResult!7394)

(declare-fun lt!327677 () (_ BitVec 64))

(assert (=> b!738224 (= lt!327670 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327675 lt!327677 lt!327678 mask!3328))))

(declare-fun b!738225 () Bool)

(declare-fun res!496380 () Bool)

(assert (=> b!738225 (=> (not res!496380) (not e!412879))))

(assert (=> b!738225 (= res!496380 (validKeyInArray!0 (select (arr!19787 a!3186) j!159)))))

(declare-fun b!738226 () Bool)

(assert (=> b!738226 (= e!412882 e!412880)))

(declare-fun res!496366 () Bool)

(assert (=> b!738226 (=> (not res!496366) (not e!412880))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738226 (= res!496366 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19787 a!3186) j!159) mask!3328) (select (arr!19787 a!3186) j!159) a!3186 mask!3328) lt!327669))))

(assert (=> b!738226 (= lt!327669 (Intermediate!7394 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!496377 () Bool)

(assert (=> start!65228 (=> (not res!496377) (not e!412879))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65228 (= res!496377 (validMask!0 mask!3328))))

(assert (=> start!65228 e!412879))

(assert (=> start!65228 true))

(declare-fun array_inv!15561 (array!41354) Bool)

(assert (=> start!65228 (array_inv!15561 a!3186)))

(declare-fun b!738211 () Bool)

(assert (=> b!738211 (= e!412880 e!412887)))

(declare-fun res!496376 () Bool)

(assert (=> b!738211 (=> (not res!496376) (not e!412887))))

(declare-fun lt!327671 () SeekEntryResult!7394)

(assert (=> b!738211 (= res!496376 (= lt!327671 lt!327679))))

(assert (=> b!738211 (= lt!327679 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327677 lt!327678 mask!3328))))

(assert (=> b!738211 (= lt!327671 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327677 mask!3328) lt!327677 lt!327678 mask!3328))))

(assert (=> b!738211 (= lt!327677 (select (store (arr!19787 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!738211 (= lt!327678 (array!41355 (store (arr!19787 a!3186) i!1173 k!2102) (size!20208 a!3186)))))

(declare-fun e!412878 () Bool)

(declare-fun b!738227 () Bool)

(assert (=> b!738227 (= e!412878 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19787 a!3186) j!159) a!3186 mask!3328) lt!327669))))

(declare-fun b!738228 () Bool)

(declare-fun res!496374 () Bool)

(assert (=> b!738228 (=> res!496374 e!412885)))

(assert (=> b!738228 (= res!496374 e!412876)))

(declare-fun c!81304 () Bool)

(assert (=> b!738228 (= c!81304 lt!327673)))

(declare-fun b!738229 () Bool)

(declare-fun res!496369 () Bool)

(assert (=> b!738229 (=> (not res!496369) (not e!412882))))

(declare-datatypes ((List!13842 0))(
  ( (Nil!13839) (Cons!13838 (h!14910 (_ BitVec 64)) (t!20165 List!13842)) )
))
(declare-fun arrayNoDuplicates!0 (array!41354 (_ BitVec 32) List!13842) Bool)

(assert (=> b!738229 (= res!496369 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13839))))

(declare-fun b!738230 () Bool)

(assert (=> b!738230 (= e!412878 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19787 a!3186) j!159) a!3186 mask!3328) (Found!7394 j!159)))))

(declare-fun b!738231 () Bool)

(declare-fun res!496371 () Bool)

(assert (=> b!738231 (=> (not res!496371) (not e!412880))))

(assert (=> b!738231 (= res!496371 e!412878)))

(declare-fun c!81306 () Bool)

(assert (=> b!738231 (= c!81306 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!738232 () Bool)

(declare-fun res!496370 () Bool)

(assert (=> b!738232 (=> (not res!496370) (not e!412882))))

(assert (=> b!738232 (= res!496370 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20208 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20208 a!3186))))))

(declare-fun b!738233 () Bool)

(assert (=> b!738233 (= e!412884 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19787 a!3186) j!159) a!3186 mask!3328) lt!327672))))

(assert (= (and start!65228 res!496377) b!738223))

(assert (= (and b!738223 res!496368) b!738225))

(assert (= (and b!738225 res!496380) b!738220))

(assert (= (and b!738220 res!496367) b!738222))

(assert (= (and b!738222 res!496372) b!738219))

(assert (= (and b!738219 res!496364) b!738216))

(assert (= (and b!738216 res!496365) b!738229))

(assert (= (and b!738229 res!496369) b!738232))

(assert (= (and b!738232 res!496370) b!738226))

(assert (= (and b!738226 res!496366) b!738221))

(assert (= (and b!738221 res!496375) b!738231))

(assert (= (and b!738231 c!81306) b!738227))

(assert (= (and b!738231 (not c!81306)) b!738230))

(assert (= (and b!738231 res!496371) b!738211))

(assert (= (and b!738211 res!496376) b!738213))

(assert (= (and b!738213 res!496373) b!738214))

(assert (= (and b!738214 res!496378) b!738233))

(assert (= (and b!738213 (not res!496363)) b!738218))

(assert (= (and b!738218 c!81305) b!738215))

(assert (= (and b!738218 (not c!81305)) b!738210))

(assert (= (and b!738218 (not res!496379)) b!738228))

(assert (= (and b!738228 c!81304) b!738212))

(assert (= (and b!738228 (not c!81304)) b!738217))

(assert (= (and b!738228 (not res!496374)) b!738224))

(declare-fun m!689965 () Bool)

(assert (=> b!738227 m!689965))

(assert (=> b!738227 m!689965))

(declare-fun m!689967 () Bool)

(assert (=> b!738227 m!689967))

(assert (=> b!738210 m!689965))

(assert (=> b!738210 m!689965))

(declare-fun m!689969 () Bool)

(assert (=> b!738210 m!689969))

(assert (=> b!738210 m!689965))

(declare-fun m!689971 () Bool)

(assert (=> b!738210 m!689971))

(declare-fun m!689973 () Bool)

(assert (=> b!738213 m!689973))

(declare-fun m!689975 () Bool)

(assert (=> b!738213 m!689975))

(declare-fun m!689977 () Bool)

(assert (=> b!738229 m!689977))

(assert (=> b!738215 m!689965))

(assert (=> b!738215 m!689965))

(declare-fun m!689979 () Bool)

(assert (=> b!738215 m!689979))

(assert (=> b!738233 m!689965))

(assert (=> b!738233 m!689965))

(declare-fun m!689981 () Bool)

(assert (=> b!738233 m!689981))

(assert (=> b!738217 m!689965))

(assert (=> b!738217 m!689965))

(assert (=> b!738217 m!689971))

(declare-fun m!689983 () Bool)

(assert (=> b!738218 m!689983))

(assert (=> b!738212 m!689965))

(assert (=> b!738212 m!689965))

(assert (=> b!738212 m!689979))

(declare-fun m!689985 () Bool)

(assert (=> b!738221 m!689985))

(declare-fun m!689987 () Bool)

(assert (=> b!738216 m!689987))

(assert (=> b!738230 m!689965))

(assert (=> b!738230 m!689965))

(assert (=> b!738230 m!689969))

(declare-fun m!689989 () Bool)

(assert (=> b!738219 m!689989))

(declare-fun m!689991 () Bool)

(assert (=> b!738211 m!689991))

(declare-fun m!689993 () Bool)

(assert (=> b!738211 m!689993))

(declare-fun m!689995 () Bool)

(assert (=> b!738211 m!689995))

(declare-fun m!689997 () Bool)

(assert (=> b!738211 m!689997))

(assert (=> b!738211 m!689991))

(declare-fun m!689999 () Bool)

(assert (=> b!738211 m!689999))

(assert (=> b!738214 m!689965))

(assert (=> b!738214 m!689965))

(declare-fun m!690001 () Bool)

(assert (=> b!738214 m!690001))

(declare-fun m!690003 () Bool)

(assert (=> b!738224 m!690003))

(declare-fun m!690005 () Bool)

(assert (=> b!738222 m!690005))

(assert (=> b!738226 m!689965))

(assert (=> b!738226 m!689965))

(declare-fun m!690007 () Bool)

(assert (=> b!738226 m!690007))

(assert (=> b!738226 m!690007))

(assert (=> b!738226 m!689965))

(declare-fun m!690009 () Bool)

(assert (=> b!738226 m!690009))

(declare-fun m!690011 () Bool)

(assert (=> b!738220 m!690011))

(declare-fun m!690013 () Bool)

(assert (=> start!65228 m!690013))

(declare-fun m!690015 () Bool)

(assert (=> start!65228 m!690015))

(assert (=> b!738225 m!689965))

(assert (=> b!738225 m!689965))

(declare-fun m!690017 () Bool)

(assert (=> b!738225 m!690017))

(push 1)

(assert (not b!738220))

(assert (not b!738233))

(assert (not b!738226))

(assert (not b!738218))

(assert (not b!738216))

(assert (not b!738217))

(assert (not b!738227))

(assert (not b!738213))

(assert (not b!738230))

(assert (not b!738211))

(assert (not start!65228))

(assert (not b!738215))

(assert (not b!738222))

(assert (not b!738225))

(assert (not b!738214))

(assert (not b!738210))

(assert (not b!738224))

(assert (not b!738219))

(assert (not b!738212))

(assert (not b!738229))

(check-sat)

(pop 1)

(push 1)

(check-sat)

