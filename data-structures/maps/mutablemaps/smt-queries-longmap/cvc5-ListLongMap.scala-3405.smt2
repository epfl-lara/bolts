; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47164 () Bool)

(assert start!47164)

(declare-fun b!519184 () Bool)

(declare-fun res!317894 () Bool)

(declare-fun e!302944 () Bool)

(assert (=> b!519184 (=> (not res!317894) (not e!302944))))

(declare-datatypes ((array!33139 0))(
  ( (array!33140 (arr!15927 (Array (_ BitVec 32) (_ BitVec 64))) (size!16291 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33139)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!519184 (= res!317894 (validKeyInArray!0 (select (arr!15927 a!3235) j!176)))))

(declare-fun res!317900 () Bool)

(assert (=> start!47164 (=> (not res!317900) (not e!302944))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47164 (= res!317900 (validMask!0 mask!3524))))

(assert (=> start!47164 e!302944))

(assert (=> start!47164 true))

(declare-fun array_inv!11701 (array!33139) Bool)

(assert (=> start!47164 (array_inv!11701 a!3235)))

(declare-fun b!519185 () Bool)

(declare-fun res!317896 () Bool)

(declare-fun e!302939 () Bool)

(assert (=> b!519185 (=> (not res!317896) (not e!302939))))

(declare-datatypes ((List!10138 0))(
  ( (Nil!10135) (Cons!10134 (h!11047 (_ BitVec 64)) (t!16374 List!10138)) )
))
(declare-fun arrayNoDuplicates!0 (array!33139 (_ BitVec 32) List!10138) Bool)

(assert (=> b!519185 (= res!317896 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10135))))

(declare-fun b!519186 () Bool)

(declare-fun res!317898 () Bool)

(assert (=> b!519186 (=> (not res!317898) (not e!302944))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33139 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!519186 (= res!317898 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!519187 () Bool)

(declare-fun e!302938 () Bool)

(assert (=> b!519187 (= e!302939 (not e!302938))))

(declare-fun res!317891 () Bool)

(assert (=> b!519187 (=> res!317891 e!302938)))

(declare-fun lt!237801 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4401 0))(
  ( (MissingZero!4401 (index!19798 (_ BitVec 32))) (Found!4401 (index!19799 (_ BitVec 32))) (Intermediate!4401 (undefined!5213 Bool) (index!19800 (_ BitVec 32)) (x!48803 (_ BitVec 32))) (Undefined!4401) (MissingVacant!4401 (index!19801 (_ BitVec 32))) )
))
(declare-fun lt!237795 () SeekEntryResult!4401)

(declare-fun lt!237802 () (_ BitVec 32))

(declare-fun lt!237799 () array!33139)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33139 (_ BitVec 32)) SeekEntryResult!4401)

(assert (=> b!519187 (= res!317891 (= lt!237795 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237802 lt!237801 lt!237799 mask!3524)))))

(declare-fun lt!237803 () (_ BitVec 32))

(assert (=> b!519187 (= lt!237795 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237803 (select (arr!15927 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!519187 (= lt!237802 (toIndex!0 lt!237801 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!519187 (= lt!237801 (select (store (arr!15927 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!519187 (= lt!237803 (toIndex!0 (select (arr!15927 a!3235) j!176) mask!3524))))

(assert (=> b!519187 (= lt!237799 (array!33140 (store (arr!15927 a!3235) i!1204 k!2280) (size!16291 a!3235)))))

(declare-fun e!302941 () Bool)

(assert (=> b!519187 e!302941))

(declare-fun res!317899 () Bool)

(assert (=> b!519187 (=> (not res!317899) (not e!302941))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33139 (_ BitVec 32)) Bool)

(assert (=> b!519187 (= res!317899 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16070 0))(
  ( (Unit!16071) )
))
(declare-fun lt!237796 () Unit!16070)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33139 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16070)

(assert (=> b!519187 (= lt!237796 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!519188 () Bool)

(declare-fun res!317893 () Bool)

(assert (=> b!519188 (=> (not res!317893) (not e!302944))))

(assert (=> b!519188 (= res!317893 (and (= (size!16291 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16291 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16291 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!519189 () Bool)

(assert (=> b!519189 (= e!302944 e!302939)))

(declare-fun res!317897 () Bool)

(assert (=> b!519189 (=> (not res!317897) (not e!302939))))

(declare-fun lt!237798 () SeekEntryResult!4401)

(assert (=> b!519189 (= res!317897 (or (= lt!237798 (MissingZero!4401 i!1204)) (= lt!237798 (MissingVacant!4401 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33139 (_ BitVec 32)) SeekEntryResult!4401)

(assert (=> b!519189 (= lt!237798 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!519190 () Bool)

(declare-fun res!317895 () Bool)

(assert (=> b!519190 (=> res!317895 e!302938)))

(assert (=> b!519190 (= res!317895 (or (undefined!5213 lt!237795) (not (is-Intermediate!4401 lt!237795))))))

(declare-fun b!519191 () Bool)

(declare-fun e!302943 () Unit!16070)

(declare-fun Unit!16072 () Unit!16070)

(assert (=> b!519191 (= e!302943 Unit!16072)))

(declare-fun b!519192 () Bool)

(assert (=> b!519192 (= e!302941 (= (seekEntryOrOpen!0 (select (arr!15927 a!3235) j!176) a!3235 mask!3524) (Found!4401 j!176)))))

(declare-fun b!519193 () Bool)

(declare-fun res!317890 () Bool)

(assert (=> b!519193 (=> (not res!317890) (not e!302944))))

(assert (=> b!519193 (= res!317890 (validKeyInArray!0 k!2280))))

(declare-fun b!519194 () Bool)

(assert (=> b!519194 (= e!302938 (and (bvsge (index!19800 lt!237795) #b00000000000000000000000000000000) (bvslt (index!19800 lt!237795) (size!16291 a!3235))))))

(assert (=> b!519194 (or (= (select (arr!15927 a!3235) (index!19800 lt!237795)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15927 a!3235) (index!19800 lt!237795)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!237800 () Unit!16070)

(assert (=> b!519194 (= lt!237800 e!302943)))

(declare-fun c!60944 () Bool)

(assert (=> b!519194 (= c!60944 (= (select (arr!15927 a!3235) (index!19800 lt!237795)) (select (arr!15927 a!3235) j!176)))))

(assert (=> b!519194 (and (bvslt (x!48803 lt!237795) #b01111111111111111111111111111110) (or (= (select (arr!15927 a!3235) (index!19800 lt!237795)) (select (arr!15927 a!3235) j!176)) (= (select (arr!15927 a!3235) (index!19800 lt!237795)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15927 a!3235) (index!19800 lt!237795)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519195 () Bool)

(declare-fun e!302942 () Bool)

(assert (=> b!519195 (= e!302942 false)))

(declare-fun b!519196 () Bool)

(declare-fun Unit!16073 () Unit!16070)

(assert (=> b!519196 (= e!302943 Unit!16073)))

(declare-fun lt!237797 () Unit!16070)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33139 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16070)

(assert (=> b!519196 (= lt!237797 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!237803 #b00000000000000000000000000000000 (index!19800 lt!237795) (x!48803 lt!237795) mask!3524))))

(declare-fun res!317892 () Bool)

(assert (=> b!519196 (= res!317892 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237803 lt!237801 lt!237799 mask!3524) (Intermediate!4401 false (index!19800 lt!237795) (x!48803 lt!237795))))))

(assert (=> b!519196 (=> (not res!317892) (not e!302942))))

(assert (=> b!519196 e!302942))

(declare-fun b!519197 () Bool)

(declare-fun res!317889 () Bool)

(assert (=> b!519197 (=> (not res!317889) (not e!302939))))

(assert (=> b!519197 (= res!317889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!47164 res!317900) b!519188))

(assert (= (and b!519188 res!317893) b!519184))

(assert (= (and b!519184 res!317894) b!519193))

(assert (= (and b!519193 res!317890) b!519186))

(assert (= (and b!519186 res!317898) b!519189))

(assert (= (and b!519189 res!317897) b!519197))

(assert (= (and b!519197 res!317889) b!519185))

(assert (= (and b!519185 res!317896) b!519187))

(assert (= (and b!519187 res!317899) b!519192))

(assert (= (and b!519187 (not res!317891)) b!519190))

(assert (= (and b!519190 (not res!317895)) b!519194))

(assert (= (and b!519194 c!60944) b!519196))

(assert (= (and b!519194 (not c!60944)) b!519191))

(assert (= (and b!519196 res!317892) b!519195))

(declare-fun m!500413 () Bool)

(assert (=> b!519186 m!500413))

(declare-fun m!500415 () Bool)

(assert (=> b!519187 m!500415))

(declare-fun m!500417 () Bool)

(assert (=> b!519187 m!500417))

(declare-fun m!500419 () Bool)

(assert (=> b!519187 m!500419))

(declare-fun m!500421 () Bool)

(assert (=> b!519187 m!500421))

(declare-fun m!500423 () Bool)

(assert (=> b!519187 m!500423))

(assert (=> b!519187 m!500421))

(declare-fun m!500425 () Bool)

(assert (=> b!519187 m!500425))

(assert (=> b!519187 m!500421))

(declare-fun m!500427 () Bool)

(assert (=> b!519187 m!500427))

(declare-fun m!500429 () Bool)

(assert (=> b!519187 m!500429))

(declare-fun m!500431 () Bool)

(assert (=> b!519187 m!500431))

(assert (=> b!519192 m!500421))

(assert (=> b!519192 m!500421))

(declare-fun m!500433 () Bool)

(assert (=> b!519192 m!500433))

(declare-fun m!500435 () Bool)

(assert (=> start!47164 m!500435))

(declare-fun m!500437 () Bool)

(assert (=> start!47164 m!500437))

(declare-fun m!500439 () Bool)

(assert (=> b!519194 m!500439))

(assert (=> b!519194 m!500421))

(assert (=> b!519184 m!500421))

(assert (=> b!519184 m!500421))

(declare-fun m!500441 () Bool)

(assert (=> b!519184 m!500441))

(declare-fun m!500443 () Bool)

(assert (=> b!519196 m!500443))

(declare-fun m!500445 () Bool)

(assert (=> b!519196 m!500445))

(declare-fun m!500447 () Bool)

(assert (=> b!519189 m!500447))

(declare-fun m!500449 () Bool)

(assert (=> b!519193 m!500449))

(declare-fun m!500451 () Bool)

(assert (=> b!519197 m!500451))

(declare-fun m!500453 () Bool)

(assert (=> b!519185 m!500453))

(push 1)

(assert (not b!519189))

(assert (not b!519197))

(assert (not b!519196))

(assert (not b!519185))

(assert (not b!519184))

(assert (not b!519193))

(assert (not start!47164))

(assert (not b!519187))

(assert (not b!519186))

(assert (not b!519192))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!31748 () Bool)

(declare-fun call!31751 () Bool)

(declare-fun c!60968 () Bool)

(assert (=> bm!31748 (= call!31751 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60968 (Cons!10134 (select (arr!15927 a!3235) #b00000000000000000000000000000000) Nil!10135) Nil!10135)))))

(declare-fun b!519337 () Bool)

(declare-fun e!303026 () Bool)

(declare-fun contains!2761 (List!10138 (_ BitVec 64)) Bool)

(assert (=> b!519337 (= e!303026 (contains!2761 Nil!10135 (select (arr!15927 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!519338 () Bool)

(declare-fun e!303027 () Bool)

(declare-fun e!303025 () Bool)

(assert (=> b!519338 (= e!303027 e!303025)))

(assert (=> b!519338 (= c!60968 (validKeyInArray!0 (select (arr!15927 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!519339 () Bool)

(assert (=> b!519339 (= e!303025 call!31751)))

(declare-fun b!519340 () Bool)

(declare-fun e!303028 () Bool)

(assert (=> b!519340 (= e!303028 e!303027)))

(declare-fun res!317996 () Bool)

(assert (=> b!519340 (=> (not res!317996) (not e!303027))))

(assert (=> b!519340 (= res!317996 (not e!303026))))

(declare-fun res!317994 () Bool)

(assert (=> b!519340 (=> (not res!317994) (not e!303026))))

(assert (=> b!519340 (= res!317994 (validKeyInArray!0 (select (arr!15927 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!519341 () Bool)

(assert (=> b!519341 (= e!303025 call!31751)))

(declare-fun d!79953 () Bool)

(declare-fun res!317995 () Bool)

(assert (=> d!79953 (=> res!317995 e!303028)))

(assert (=> d!79953 (= res!317995 (bvsge #b00000000000000000000000000000000 (size!16291 a!3235)))))

(assert (=> d!79953 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10135) e!303028)))

(assert (= (and d!79953 (not res!317995)) b!519340))

(assert (= (and b!519340 res!317994) b!519337))

(assert (= (and b!519340 res!317996) b!519338))

(assert (= (and b!519338 c!60968) b!519341))

(assert (= (and b!519338 (not c!60968)) b!519339))

(assert (= (or b!519341 b!519339) bm!31748))

(declare-fun m!500567 () Bool)

(assert (=> bm!31748 m!500567))

(declare-fun m!500569 () Bool)

(assert (=> bm!31748 m!500569))

(assert (=> b!519337 m!500567))

(assert (=> b!519337 m!500567))

(declare-fun m!500571 () Bool)

(assert (=> b!519337 m!500571))

(assert (=> b!519338 m!500567))

(assert (=> b!519338 m!500567))

(declare-fun m!500573 () Bool)

(assert (=> b!519338 m!500573))

(assert (=> b!519340 m!500567))

(assert (=> b!519340 m!500567))

(assert (=> b!519340 m!500573))

(assert (=> b!519185 d!79953))

(declare-fun d!79957 () Bool)

(declare-fun e!303031 () Bool)

(assert (=> d!79957 e!303031))

(declare-fun res!318000 () Bool)

(assert (=> d!79957 (=> (not res!318000) (not e!303031))))

(assert (=> d!79957 (= res!318000 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16291 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16291 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16291 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16291 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16291 a!3235))))))

(declare-fun lt!237884 () Unit!16070)

(declare-fun choose!47 (array!33139 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16070)

(assert (=> d!79957 (= lt!237884 (choose!47 a!3235 i!1204 k!2280 j!176 lt!237803 #b00000000000000000000000000000000 (index!19800 lt!237795) (x!48803 lt!237795) mask!3524))))

(assert (=> d!79957 (validMask!0 mask!3524)))

(assert (=> d!79957 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!237803 #b00000000000000000000000000000000 (index!19800 lt!237795) (x!48803 lt!237795) mask!3524) lt!237884)))

(declare-fun b!519344 () Bool)

(assert (=> b!519344 (= e!303031 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237803 (select (store (arr!15927 a!3235) i!1204 k!2280) j!176) (array!33140 (store (arr!15927 a!3235) i!1204 k!2280) (size!16291 a!3235)) mask!3524) (Intermediate!4401 false (index!19800 lt!237795) (x!48803 lt!237795))))))

(assert (= (and d!79957 res!318000) b!519344))

(declare-fun m!500575 () Bool)

(assert (=> d!79957 m!500575))

(assert (=> d!79957 m!500435))

(assert (=> b!519344 m!500429))

(assert (=> b!519344 m!500417))

(assert (=> b!519344 m!500417))

(declare-fun m!500577 () Bool)

(assert (=> b!519344 m!500577))

(assert (=> b!519196 d!79957))

(declare-fun b!519433 () Bool)

(declare-fun e!303084 () Bool)

(declare-fun lt!237924 () SeekEntryResult!4401)

(assert (=> b!519433 (= e!303084 (bvsge (x!48803 lt!237924) #b01111111111111111111111111111110))))

(declare-fun b!519434 () Bool)

(declare-fun e!303085 () SeekEntryResult!4401)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!519434 (= e!303085 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237803 #b00000000000000000000000000000000 mask!3524) lt!237801 lt!237799 mask!3524))))

(declare-fun b!519435 () Bool)

(declare-fun e!303086 () SeekEntryResult!4401)

(assert (=> b!519435 (= e!303086 (Intermediate!4401 true lt!237803 #b00000000000000000000000000000000))))

(declare-fun b!519436 () Bool)

(declare-fun e!303088 () Bool)

(assert (=> b!519436 (= e!303084 e!303088)))

(declare-fun res!318035 () Bool)

(assert (=> b!519436 (= res!318035 (and (is-Intermediate!4401 lt!237924) (not (undefined!5213 lt!237924)) (bvslt (x!48803 lt!237924) #b01111111111111111111111111111110) (bvsge (x!48803 lt!237924) #b00000000000000000000000000000000) (bvsge (x!48803 lt!237924) #b00000000000000000000000000000000)))))

(assert (=> b!519436 (=> (not res!318035) (not e!303088))))

(declare-fun b!519437 () Bool)

(assert (=> b!519437 (and (bvsge (index!19800 lt!237924) #b00000000000000000000000000000000) (bvslt (index!19800 lt!237924) (size!16291 lt!237799)))))

(declare-fun e!303087 () Bool)

(assert (=> b!519437 (= e!303087 (= (select (arr!15927 lt!237799) (index!19800 lt!237924)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!519439 () Bool)

(assert (=> b!519439 (and (bvsge (index!19800 lt!237924) #b00000000000000000000000000000000) (bvslt (index!19800 lt!237924) (size!16291 lt!237799)))))

(declare-fun res!318034 () Bool)

(assert (=> b!519439 (= res!318034 (= (select (arr!15927 lt!237799) (index!19800 lt!237924)) lt!237801))))

(assert (=> b!519439 (=> res!318034 e!303087)))

(assert (=> b!519439 (= e!303088 e!303087)))

(declare-fun b!519440 () Bool)

(assert (=> b!519440 (and (bvsge (index!19800 lt!237924) #b00000000000000000000000000000000) (bvslt (index!19800 lt!237924) (size!16291 lt!237799)))))

(declare-fun res!318036 () Bool)

(assert (=> b!519440 (= res!318036 (= (select (arr!15927 lt!237799) (index!19800 lt!237924)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!519440 (=> res!318036 e!303087)))

(declare-fun b!519441 () Bool)

(assert (=> b!519441 (= e!303086 e!303085)))

(declare-fun c!60999 () Bool)

(declare-fun lt!237925 () (_ BitVec 64))

(assert (=> b!519441 (= c!60999 (or (= lt!237925 lt!237801) (= (bvadd lt!237925 lt!237925) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519438 () Bool)

(assert (=> b!519438 (= e!303085 (Intermediate!4401 false lt!237803 #b00000000000000000000000000000000))))

(declare-fun d!79965 () Bool)

(assert (=> d!79965 e!303084))

(declare-fun c!60997 () Bool)

(assert (=> d!79965 (= c!60997 (and (is-Intermediate!4401 lt!237924) (undefined!5213 lt!237924)))))

(assert (=> d!79965 (= lt!237924 e!303086)))

(declare-fun c!60998 () Bool)

(assert (=> d!79965 (= c!60998 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79965 (= lt!237925 (select (arr!15927 lt!237799) lt!237803))))

(assert (=> d!79965 (validMask!0 mask!3524)))

(assert (=> d!79965 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237803 lt!237801 lt!237799 mask!3524) lt!237924)))

(assert (= (and d!79965 c!60998) b!519435))

(assert (= (and d!79965 (not c!60998)) b!519441))

(assert (= (and b!519441 c!60999) b!519438))

(assert (= (and b!519441 (not c!60999)) b!519434))

(assert (= (and d!79965 c!60997) b!519433))

(assert (= (and d!79965 (not c!60997)) b!519436))

(assert (= (and b!519436 res!318035) b!519439))

(assert (= (and b!519439 (not res!318034)) b!519440))

(assert (= (and b!519440 (not res!318036)) b!519437))

(declare-fun m!500609 () Bool)

(assert (=> d!79965 m!500609))

(assert (=> d!79965 m!500435))

(declare-fun m!500611 () Bool)

(assert (=> b!519439 m!500611))

(assert (=> b!519440 m!500611))

(assert (=> b!519437 m!500611))

(declare-fun m!500613 () Bool)

(assert (=> b!519434 m!500613))

(assert (=> b!519434 m!500613))

(declare-fun m!500615 () Bool)

(assert (=> b!519434 m!500615))

(assert (=> b!519196 d!79965))

(declare-fun d!79983 () Bool)

(assert (=> d!79983 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47164 d!79983))

(declare-fun d!79997 () Bool)

(assert (=> d!79997 (= (array_inv!11701 a!3235) (bvsge (size!16291 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47164 d!79997))

(declare-fun d!79999 () Bool)

(declare-fun res!318047 () Bool)

(declare-fun e!303103 () Bool)

(assert (=> d!79999 (=> res!318047 e!303103)))

(assert (=> d!79999 (= res!318047 (= (select (arr!15927 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!79999 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!303103)))

(declare-fun b!519464 () Bool)

(declare-fun e!303104 () Bool)

(assert (=> b!519464 (= e!303103 e!303104)))

(declare-fun res!318048 () Bool)

(assert (=> b!519464 (=> (not res!318048) (not e!303104))))

(assert (=> b!519464 (= res!318048 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16291 a!3235)))))

(declare-fun b!519465 () Bool)

(assert (=> b!519465 (= e!303104 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79999 (not res!318047)) b!519464))

(assert (= (and b!519464 res!318048) b!519465))

(assert (=> d!79999 m!500567))

(declare-fun m!500635 () Bool)

(assert (=> b!519465 m!500635))

(assert (=> b!519186 d!79999))

(declare-fun b!519492 () Bool)

(declare-fun e!303122 () Bool)

(declare-fun e!303123 () Bool)

(assert (=> b!519492 (= e!303122 e!303123)))

(declare-fun c!61014 () Bool)

(assert (=> b!519492 (= c!61014 (validKeyInArray!0 (select (arr!15927 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!519493 () Bool)

(declare-fun e!303124 () Bool)

(declare-fun call!31758 () Bool)

(assert (=> b!519493 (= e!303124 call!31758)))

(declare-fun bm!31755 () Bool)

(assert (=> bm!31755 (= call!31758 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!519494 () Bool)

(assert (=> b!519494 (= e!303123 call!31758)))

(declare-fun b!519495 () Bool)

(assert (=> b!519495 (= e!303123 e!303124)))

(declare-fun lt!237950 () (_ BitVec 64))

(assert (=> b!519495 (= lt!237950 (select (arr!15927 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!237949 () Unit!16070)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33139 (_ BitVec 64) (_ BitVec 32)) Unit!16070)

(assert (=> b!519495 (= lt!237949 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!237950 #b00000000000000000000000000000000))))

(assert (=> b!519495 (arrayContainsKey!0 a!3235 lt!237950 #b00000000000000000000000000000000)))

(declare-fun lt!237951 () Unit!16070)

(assert (=> b!519495 (= lt!237951 lt!237949)))

(declare-fun res!318060 () Bool)

(assert (=> b!519495 (= res!318060 (= (seekEntryOrOpen!0 (select (arr!15927 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4401 #b00000000000000000000000000000000)))))

(assert (=> b!519495 (=> (not res!318060) (not e!303124))))

(declare-fun d!80001 () Bool)

(declare-fun res!318059 () Bool)

(assert (=> d!80001 (=> res!318059 e!303122)))

(assert (=> d!80001 (= res!318059 (bvsge #b00000000000000000000000000000000 (size!16291 a!3235)))))

(assert (=> d!80001 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!303122)))

(assert (= (and d!80001 (not res!318059)) b!519492))

(assert (= (and b!519492 c!61014) b!519495))

(assert (= (and b!519492 (not c!61014)) b!519494))

(assert (= (and b!519495 res!318060) b!519493))

(assert (= (or b!519493 b!519494) bm!31755))

(assert (=> b!519492 m!500567))

(assert (=> b!519492 m!500567))

(assert (=> b!519492 m!500573))

(declare-fun m!500661 () Bool)

(assert (=> bm!31755 m!500661))

(assert (=> b!519495 m!500567))

(declare-fun m!500663 () Bool)

(assert (=> b!519495 m!500663))

(declare-fun m!500665 () Bool)

(assert (=> b!519495 m!500665))

(assert (=> b!519495 m!500567))

(declare-fun m!500667 () Bool)

(assert (=> b!519495 m!500667))

(assert (=> b!519197 d!80001))

(declare-fun b!519541 () Bool)

(declare-fun c!61031 () Bool)

(declare-fun lt!237964 () (_ BitVec 64))

(assert (=> b!519541 (= c!61031 (= lt!237964 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303155 () SeekEntryResult!4401)

(declare-fun e!303157 () SeekEntryResult!4401)

(assert (=> b!519541 (= e!303155 e!303157)))

(declare-fun b!519542 () Bool)

(declare-fun lt!237965 () SeekEntryResult!4401)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33139 (_ BitVec 32)) SeekEntryResult!4401)

(assert (=> b!519542 (= e!303157 (seekKeyOrZeroReturnVacant!0 (x!48803 lt!237965) (index!19800 lt!237965) (index!19800 lt!237965) (select (arr!15927 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!519544 () Bool)

(declare-fun e!303156 () SeekEntryResult!4401)

(assert (=> b!519544 (= e!303156 e!303155)))

(assert (=> b!519544 (= lt!237964 (select (arr!15927 a!3235) (index!19800 lt!237965)))))

(declare-fun c!61030 () Bool)

(assert (=> b!519544 (= c!61030 (= lt!237964 (select (arr!15927 a!3235) j!176)))))

(declare-fun b!519545 () Bool)

(assert (=> b!519545 (= e!303156 Undefined!4401)))

(declare-fun b!519546 () Bool)

(assert (=> b!519546 (= e!303157 (MissingZero!4401 (index!19800 lt!237965)))))

(declare-fun b!519543 () Bool)

(assert (=> b!519543 (= e!303155 (Found!4401 (index!19800 lt!237965)))))

(declare-fun d!80013 () Bool)

(declare-fun lt!237966 () SeekEntryResult!4401)

(assert (=> d!80013 (and (or (is-Undefined!4401 lt!237966) (not (is-Found!4401 lt!237966)) (and (bvsge (index!19799 lt!237966) #b00000000000000000000000000000000) (bvslt (index!19799 lt!237966) (size!16291 a!3235)))) (or (is-Undefined!4401 lt!237966) (is-Found!4401 lt!237966) (not (is-MissingZero!4401 lt!237966)) (and (bvsge (index!19798 lt!237966) #b00000000000000000000000000000000) (bvslt (index!19798 lt!237966) (size!16291 a!3235)))) (or (is-Undefined!4401 lt!237966) (is-Found!4401 lt!237966) (is-MissingZero!4401 lt!237966) (not (is-MissingVacant!4401 lt!237966)) (and (bvsge (index!19801 lt!237966) #b00000000000000000000000000000000) (bvslt (index!19801 lt!237966) (size!16291 a!3235)))) (or (is-Undefined!4401 lt!237966) (ite (is-Found!4401 lt!237966) (= (select (arr!15927 a!3235) (index!19799 lt!237966)) (select (arr!15927 a!3235) j!176)) (ite (is-MissingZero!4401 lt!237966) (= (select (arr!15927 a!3235) (index!19798 lt!237966)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4401 lt!237966) (= (select (arr!15927 a!3235) (index!19801 lt!237966)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80013 (= lt!237966 e!303156)))

(declare-fun c!61032 () Bool)

(assert (=> d!80013 (= c!61032 (and (is-Intermediate!4401 lt!237965) (undefined!5213 lt!237965)))))

(assert (=> d!80013 (= lt!237965 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15927 a!3235) j!176) mask!3524) (select (arr!15927 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80013 (validMask!0 mask!3524)))

(assert (=> d!80013 (= (seekEntryOrOpen!0 (select (arr!15927 a!3235) j!176) a!3235 mask!3524) lt!237966)))

(assert (= (and d!80013 c!61032) b!519545))

(assert (= (and d!80013 (not c!61032)) b!519544))

(assert (= (and b!519544 c!61030) b!519543))

(assert (= (and b!519544 (not c!61030)) b!519541))

(assert (= (and b!519541 c!61031) b!519546))

(assert (= (and b!519541 (not c!61031)) b!519542))

(assert (=> b!519542 m!500421))

(declare-fun m!500679 () Bool)

(assert (=> b!519542 m!500679))

(declare-fun m!500681 () Bool)

(assert (=> b!519544 m!500681))

(assert (=> d!80013 m!500421))

(assert (=> d!80013 m!500423))

(declare-fun m!500683 () Bool)

(assert (=> d!80013 m!500683))

(assert (=> d!80013 m!500423))

(assert (=> d!80013 m!500421))

(declare-fun m!500685 () Bool)

(assert (=> d!80013 m!500685))

(declare-fun m!500687 () Bool)

(assert (=> d!80013 m!500687))

(declare-fun m!500689 () Bool)

(assert (=> d!80013 m!500689))

(assert (=> d!80013 m!500435))

(assert (=> b!519192 d!80013))

(declare-fun d!80021 () Bool)

(declare-fun lt!237978 () (_ BitVec 32))

(declare-fun lt!237977 () (_ BitVec 32))

(assert (=> d!80021 (= lt!237978 (bvmul (bvxor lt!237977 (bvlshr lt!237977 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80021 (= lt!237977 ((_ extract 31 0) (bvand (bvxor (select (arr!15927 a!3235) j!176) (bvlshr (select (arr!15927 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80021 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!318076 (let ((h!11052 ((_ extract 31 0) (bvand (bvxor (select (arr!15927 a!3235) j!176) (bvlshr (select (arr!15927 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48813 (bvmul (bvxor h!11052 (bvlshr h!11052 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48813 (bvlshr x!48813 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!318076 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!318076 #b00000000000000000000000000000000))))))

(assert (=> d!80021 (= (toIndex!0 (select (arr!15927 a!3235) j!176) mask!3524) (bvand (bvxor lt!237978 (bvlshr lt!237978 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!519187 d!80021))

(declare-fun b!519557 () Bool)

(declare-fun e!303164 () Bool)

(declare-fun lt!237979 () SeekEntryResult!4401)

(assert (=> b!519557 (= e!303164 (bvsge (x!48803 lt!237979) #b01111111111111111111111111111110))))

(declare-fun b!519558 () Bool)

(declare-fun e!303165 () SeekEntryResult!4401)

(assert (=> b!519558 (= e!303165 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237802 #b00000000000000000000000000000000 mask!3524) lt!237801 lt!237799 mask!3524))))

(declare-fun b!519559 () Bool)

(declare-fun e!303166 () SeekEntryResult!4401)

(assert (=> b!519559 (= e!303166 (Intermediate!4401 true lt!237802 #b00000000000000000000000000000000))))

(declare-fun b!519560 () Bool)

(declare-fun e!303168 () Bool)

(assert (=> b!519560 (= e!303164 e!303168)))

(declare-fun res!318080 () Bool)

(assert (=> b!519560 (= res!318080 (and (is-Intermediate!4401 lt!237979) (not (undefined!5213 lt!237979)) (bvslt (x!48803 lt!237979) #b01111111111111111111111111111110) (bvsge (x!48803 lt!237979) #b00000000000000000000000000000000) (bvsge (x!48803 lt!237979) #b00000000000000000000000000000000)))))

(assert (=> b!519560 (=> (not res!318080) (not e!303168))))

(declare-fun b!519561 () Bool)

(assert (=> b!519561 (and (bvsge (index!19800 lt!237979) #b00000000000000000000000000000000) (bvslt (index!19800 lt!237979) (size!16291 lt!237799)))))

(declare-fun e!303167 () Bool)

(assert (=> b!519561 (= e!303167 (= (select (arr!15927 lt!237799) (index!19800 lt!237979)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!519563 () Bool)

(assert (=> b!519563 (and (bvsge (index!19800 lt!237979) #b00000000000000000000000000000000) (bvslt (index!19800 lt!237979) (size!16291 lt!237799)))))

(declare-fun res!318079 () Bool)

(assert (=> b!519563 (= res!318079 (= (select (arr!15927 lt!237799) (index!19800 lt!237979)) lt!237801))))

(assert (=> b!519563 (=> res!318079 e!303167)))

(assert (=> b!519563 (= e!303168 e!303167)))

(declare-fun b!519564 () Bool)

(assert (=> b!519564 (and (bvsge (index!19800 lt!237979) #b00000000000000000000000000000000) (bvslt (index!19800 lt!237979) (size!16291 lt!237799)))))

(declare-fun res!318081 () Bool)

(assert (=> b!519564 (= res!318081 (= (select (arr!15927 lt!237799) (index!19800 lt!237979)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!519564 (=> res!318081 e!303167)))

(declare-fun b!519565 () Bool)

(assert (=> b!519565 (= e!303166 e!303165)))

(declare-fun c!61039 () Bool)

(declare-fun lt!237980 () (_ BitVec 64))

(assert (=> b!519565 (= c!61039 (or (= lt!237980 lt!237801) (= (bvadd lt!237980 lt!237980) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519562 () Bool)

(assert (=> b!519562 (= e!303165 (Intermediate!4401 false lt!237802 #b00000000000000000000000000000000))))

(declare-fun d!80027 () Bool)

(assert (=> d!80027 e!303164))

(declare-fun c!61037 () Bool)

(assert (=> d!80027 (= c!61037 (and (is-Intermediate!4401 lt!237979) (undefined!5213 lt!237979)))))

(assert (=> d!80027 (= lt!237979 e!303166)))

(declare-fun c!61038 () Bool)

(assert (=> d!80027 (= c!61038 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80027 (= lt!237980 (select (arr!15927 lt!237799) lt!237802))))

(assert (=> d!80027 (validMask!0 mask!3524)))

(assert (=> d!80027 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237802 lt!237801 lt!237799 mask!3524) lt!237979)))

(assert (= (and d!80027 c!61038) b!519559))

(assert (= (and d!80027 (not c!61038)) b!519565))

(assert (= (and b!519565 c!61039) b!519562))

(assert (= (and b!519565 (not c!61039)) b!519558))

(assert (= (and d!80027 c!61037) b!519557))

(assert (= (and d!80027 (not c!61037)) b!519560))

(assert (= (and b!519560 res!318080) b!519563))

(assert (= (and b!519563 (not res!318079)) b!519564))

(assert (= (and b!519564 (not res!318081)) b!519561))

(declare-fun m!500713 () Bool)

(assert (=> d!80027 m!500713))

(assert (=> d!80027 m!500435))

(declare-fun m!500715 () Bool)

(assert (=> b!519563 m!500715))

(assert (=> b!519564 m!500715))

(assert (=> b!519561 m!500715))

(declare-fun m!500717 () Bool)

(assert (=> b!519558 m!500717))

(assert (=> b!519558 m!500717))

(declare-fun m!500719 () Bool)

(assert (=> b!519558 m!500719))

(assert (=> b!519187 d!80027))

(declare-fun b!519566 () Bool)

(declare-fun e!303169 () Bool)

(declare-fun e!303170 () Bool)

(assert (=> b!519566 (= e!303169 e!303170)))

(declare-fun c!61040 () Bool)

(assert (=> b!519566 (= c!61040 (validKeyInArray!0 (select (arr!15927 a!3235) j!176)))))

(declare-fun b!519567 () Bool)

(declare-fun e!303171 () Bool)

(declare-fun call!31763 () Bool)

(assert (=> b!519567 (= e!303171 call!31763)))

(declare-fun bm!31760 () Bool)

(assert (=> bm!31760 (= call!31763 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!519568 () Bool)

(assert (=> b!519568 (= e!303170 call!31763)))

(declare-fun b!519569 () Bool)

(assert (=> b!519569 (= e!303170 e!303171)))

(declare-fun lt!237982 () (_ BitVec 64))

(assert (=> b!519569 (= lt!237982 (select (arr!15927 a!3235) j!176))))

(declare-fun lt!237981 () Unit!16070)

(assert (=> b!519569 (= lt!237981 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!237982 j!176))))

(assert (=> b!519569 (arrayContainsKey!0 a!3235 lt!237982 #b00000000000000000000000000000000)))

(declare-fun lt!237983 () Unit!16070)

(assert (=> b!519569 (= lt!237983 lt!237981)))

(declare-fun res!318083 () Bool)

(assert (=> b!519569 (= res!318083 (= (seekEntryOrOpen!0 (select (arr!15927 a!3235) j!176) a!3235 mask!3524) (Found!4401 j!176)))))

(assert (=> b!519569 (=> (not res!318083) (not e!303171))))

(declare-fun d!80029 () Bool)

(declare-fun res!318082 () Bool)

(assert (=> d!80029 (=> res!318082 e!303169)))

(assert (=> d!80029 (= res!318082 (bvsge j!176 (size!16291 a!3235)))))

(assert (=> d!80029 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!303169)))

(assert (= (and d!80029 (not res!318082)) b!519566))

(assert (= (and b!519566 c!61040) b!519569))

(assert (= (and b!519566 (not c!61040)) b!519568))

(assert (= (and b!519569 res!318083) b!519567))

(assert (= (or b!519567 b!519568) bm!31760))

(assert (=> b!519566 m!500421))

(assert (=> b!519566 m!500421))

(assert (=> b!519566 m!500441))

(declare-fun m!500721 () Bool)

(assert (=> bm!31760 m!500721))

(assert (=> b!519569 m!500421))

(declare-fun m!500723 () Bool)

(assert (=> b!519569 m!500723))

(declare-fun m!500725 () Bool)

(assert (=> b!519569 m!500725))

(assert (=> b!519569 m!500421))

(assert (=> b!519569 m!500433))

(assert (=> b!519187 d!80029))

(declare-fun d!80031 () Bool)

(declare-fun lt!237985 () (_ BitVec 32))

(declare-fun lt!237984 () (_ BitVec 32))

(assert (=> d!80031 (= lt!237985 (bvmul (bvxor lt!237984 (bvlshr lt!237984 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80031 (= lt!237984 ((_ extract 31 0) (bvand (bvxor lt!237801 (bvlshr lt!237801 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80031 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!318076 (let ((h!11052 ((_ extract 31 0) (bvand (bvxor lt!237801 (bvlshr lt!237801 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48813 (bvmul (bvxor h!11052 (bvlshr h!11052 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48813 (bvlshr x!48813 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!318076 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!318076 #b00000000000000000000000000000000))))))

(assert (=> d!80031 (= (toIndex!0 lt!237801 mask!3524) (bvand (bvxor lt!237985 (bvlshr lt!237985 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!519187 d!80031))

(declare-fun b!519570 () Bool)

(declare-fun e!303172 () Bool)

(declare-fun lt!237986 () SeekEntryResult!4401)

(assert (=> b!519570 (= e!303172 (bvsge (x!48803 lt!237986) #b01111111111111111111111111111110))))

(declare-fun e!303173 () SeekEntryResult!4401)

(declare-fun b!519571 () Bool)

(assert (=> b!519571 (= e!303173 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237803 #b00000000000000000000000000000000 mask!3524) (select (arr!15927 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!519572 () Bool)

(declare-fun e!303174 () SeekEntryResult!4401)

(assert (=> b!519572 (= e!303174 (Intermediate!4401 true lt!237803 #b00000000000000000000000000000000))))

(declare-fun b!519573 () Bool)

(declare-fun e!303176 () Bool)

(assert (=> b!519573 (= e!303172 e!303176)))

(declare-fun res!318085 () Bool)

(assert (=> b!519573 (= res!318085 (and (is-Intermediate!4401 lt!237986) (not (undefined!5213 lt!237986)) (bvslt (x!48803 lt!237986) #b01111111111111111111111111111110) (bvsge (x!48803 lt!237986) #b00000000000000000000000000000000) (bvsge (x!48803 lt!237986) #b00000000000000000000000000000000)))))

(assert (=> b!519573 (=> (not res!318085) (not e!303176))))

(declare-fun b!519574 () Bool)

(assert (=> b!519574 (and (bvsge (index!19800 lt!237986) #b00000000000000000000000000000000) (bvslt (index!19800 lt!237986) (size!16291 a!3235)))))

(declare-fun e!303175 () Bool)

(assert (=> b!519574 (= e!303175 (= (select (arr!15927 a!3235) (index!19800 lt!237986)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!519576 () Bool)

(assert (=> b!519576 (and (bvsge (index!19800 lt!237986) #b00000000000000000000000000000000) (bvslt (index!19800 lt!237986) (size!16291 a!3235)))))

(declare-fun res!318084 () Bool)

(assert (=> b!519576 (= res!318084 (= (select (arr!15927 a!3235) (index!19800 lt!237986)) (select (arr!15927 a!3235) j!176)))))

(assert (=> b!519576 (=> res!318084 e!303175)))

(assert (=> b!519576 (= e!303176 e!303175)))

(declare-fun b!519577 () Bool)

(assert (=> b!519577 (and (bvsge (index!19800 lt!237986) #b00000000000000000000000000000000) (bvslt (index!19800 lt!237986) (size!16291 a!3235)))))

(declare-fun res!318086 () Bool)

(assert (=> b!519577 (= res!318086 (= (select (arr!15927 a!3235) (index!19800 lt!237986)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!519577 (=> res!318086 e!303175)))

(declare-fun b!519578 () Bool)

(assert (=> b!519578 (= e!303174 e!303173)))

(declare-fun c!61043 () Bool)

(declare-fun lt!237987 () (_ BitVec 64))

(assert (=> b!519578 (= c!61043 (or (= lt!237987 (select (arr!15927 a!3235) j!176)) (= (bvadd lt!237987 lt!237987) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519575 () Bool)

(assert (=> b!519575 (= e!303173 (Intermediate!4401 false lt!237803 #b00000000000000000000000000000000))))

(declare-fun d!80033 () Bool)

(assert (=> d!80033 e!303172))

(declare-fun c!61041 () Bool)

(assert (=> d!80033 (= c!61041 (and (is-Intermediate!4401 lt!237986) (undefined!5213 lt!237986)))))

(assert (=> d!80033 (= lt!237986 e!303174)))

(declare-fun c!61042 () Bool)

(assert (=> d!80033 (= c!61042 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80033 (= lt!237987 (select (arr!15927 a!3235) lt!237803))))

(assert (=> d!80033 (validMask!0 mask!3524)))

(assert (=> d!80033 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237803 (select (arr!15927 a!3235) j!176) a!3235 mask!3524) lt!237986)))

(assert (= (and d!80033 c!61042) b!519572))

(assert (= (and d!80033 (not c!61042)) b!519578))

(assert (= (and b!519578 c!61043) b!519575))

(assert (= (and b!519578 (not c!61043)) b!519571))

(assert (= (and d!80033 c!61041) b!519570))

(assert (= (and d!80033 (not c!61041)) b!519573))

(assert (= (and b!519573 res!318085) b!519576))

(assert (= (and b!519576 (not res!318084)) b!519577))

(assert (= (and b!519577 (not res!318086)) b!519574))

(declare-fun m!500727 () Bool)

(assert (=> d!80033 m!500727))

(assert (=> d!80033 m!500435))

(declare-fun m!500729 () Bool)

(assert (=> b!519576 m!500729))

(assert (=> b!519577 m!500729))

(assert (=> b!519574 m!500729))

(assert (=> b!519571 m!500613))

(assert (=> b!519571 m!500613))

(assert (=> b!519571 m!500421))

(declare-fun m!500731 () Bool)

(assert (=> b!519571 m!500731))

(assert (=> b!519187 d!80033))

(declare-fun d!80035 () Bool)

(assert (=> d!80035 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!237990 () Unit!16070)

(declare-fun choose!38 (array!33139 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16070)

(assert (=> d!80035 (= lt!237990 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80035 (validMask!0 mask!3524)))

(assert (=> d!80035 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!237990)))

(declare-fun bs!16373 () Bool)

(assert (= bs!16373 d!80035))

(assert (=> bs!16373 m!500425))

(declare-fun m!500733 () Bool)

(assert (=> bs!16373 m!500733))

(assert (=> bs!16373 m!500435))

(assert (=> b!519187 d!80035))

(declare-fun d!80037 () Bool)

(assert (=> d!80037 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!519193 d!80037))

(declare-fun b!519579 () Bool)

(declare-fun c!61045 () Bool)

(declare-fun lt!237993 () (_ BitVec 64))

(assert (=> b!519579 (= c!61045 (= lt!237993 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303177 () SeekEntryResult!4401)

(declare-fun e!303179 () SeekEntryResult!4401)

(assert (=> b!519579 (= e!303177 e!303179)))

(declare-fun b!519580 () Bool)

(declare-fun lt!237994 () SeekEntryResult!4401)

(assert (=> b!519580 (= e!303179 (seekKeyOrZeroReturnVacant!0 (x!48803 lt!237994) (index!19800 lt!237994) (index!19800 lt!237994) k!2280 a!3235 mask!3524))))

(declare-fun b!519582 () Bool)

(declare-fun e!303178 () SeekEntryResult!4401)

(assert (=> b!519582 (= e!303178 e!303177)))

(assert (=> b!519582 (= lt!237993 (select (arr!15927 a!3235) (index!19800 lt!237994)))))

(declare-fun c!61044 () Bool)

(assert (=> b!519582 (= c!61044 (= lt!237993 k!2280))))

(declare-fun b!519583 () Bool)

(assert (=> b!519583 (= e!303178 Undefined!4401)))

(declare-fun b!519584 () Bool)

(assert (=> b!519584 (= e!303179 (MissingZero!4401 (index!19800 lt!237994)))))

(declare-fun b!519581 () Bool)

(assert (=> b!519581 (= e!303177 (Found!4401 (index!19800 lt!237994)))))

(declare-fun d!80039 () Bool)

(declare-fun lt!237995 () SeekEntryResult!4401)

(assert (=> d!80039 (and (or (is-Undefined!4401 lt!237995) (not (is-Found!4401 lt!237995)) (and (bvsge (index!19799 lt!237995) #b00000000000000000000000000000000) (bvslt (index!19799 lt!237995) (size!16291 a!3235)))) (or (is-Undefined!4401 lt!237995) (is-Found!4401 lt!237995) (not (is-MissingZero!4401 lt!237995)) (and (bvsge (index!19798 lt!237995) #b00000000000000000000000000000000) (bvslt (index!19798 lt!237995) (size!16291 a!3235)))) (or (is-Undefined!4401 lt!237995) (is-Found!4401 lt!237995) (is-MissingZero!4401 lt!237995) (not (is-MissingVacant!4401 lt!237995)) (and (bvsge (index!19801 lt!237995) #b00000000000000000000000000000000) (bvslt (index!19801 lt!237995) (size!16291 a!3235)))) (or (is-Undefined!4401 lt!237995) (ite (is-Found!4401 lt!237995) (= (select (arr!15927 a!3235) (index!19799 lt!237995)) k!2280) (ite (is-MissingZero!4401 lt!237995) (= (select (arr!15927 a!3235) (index!19798 lt!237995)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4401 lt!237995) (= (select (arr!15927 a!3235) (index!19801 lt!237995)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80039 (= lt!237995 e!303178)))

(declare-fun c!61046 () Bool)

(assert (=> d!80039 (= c!61046 (and (is-Intermediate!4401 lt!237994) (undefined!5213 lt!237994)))))

(assert (=> d!80039 (= lt!237994 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!80039 (validMask!0 mask!3524)))

(assert (=> d!80039 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!237995)))

(assert (= (and d!80039 c!61046) b!519583))

(assert (= (and d!80039 (not c!61046)) b!519582))

(assert (= (and b!519582 c!61044) b!519581))

(assert (= (and b!519582 (not c!61044)) b!519579))

(assert (= (and b!519579 c!61045) b!519584))

(assert (= (and b!519579 (not c!61045)) b!519580))

(declare-fun m!500735 () Bool)

(assert (=> b!519580 m!500735))

(declare-fun m!500737 () Bool)

(assert (=> b!519582 m!500737))

(declare-fun m!500739 () Bool)

(assert (=> d!80039 m!500739))

(declare-fun m!500741 () Bool)

(assert (=> d!80039 m!500741))

(assert (=> d!80039 m!500739))

(declare-fun m!500743 () Bool)

(assert (=> d!80039 m!500743))

(declare-fun m!500745 () Bool)

(assert (=> d!80039 m!500745))

(declare-fun m!500747 () Bool)

(assert (=> d!80039 m!500747))

(assert (=> d!80039 m!500435))

(assert (=> b!519189 d!80039))

(declare-fun d!80041 () Bool)

(assert (=> d!80041 (= (validKeyInArray!0 (select (arr!15927 a!3235) j!176)) (and (not (= (select (arr!15927 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15927 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!519184 d!80041))

(push 1)

