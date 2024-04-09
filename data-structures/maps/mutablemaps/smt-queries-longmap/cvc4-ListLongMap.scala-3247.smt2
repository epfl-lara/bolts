; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45302 () Bool)

(assert start!45302)

(declare-fun b!497497 () Bool)

(declare-fun res!300004 () Bool)

(declare-fun e!291601 () Bool)

(assert (=> b!497497 (=> (not res!300004) (not e!291601))))

(declare-datatypes ((array!32150 0))(
  ( (array!32151 (arr!15455 (Array (_ BitVec 32) (_ BitVec 64))) (size!15819 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32150)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32150 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!497497 (= res!300004 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!497498 () Bool)

(declare-fun res!300010 () Bool)

(declare-fun e!291595 () Bool)

(assert (=> b!497498 (=> (not res!300010) (not e!291595))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32150 (_ BitVec 32)) Bool)

(assert (=> b!497498 (= res!300010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!497499 () Bool)

(declare-fun e!291600 () Bool)

(assert (=> b!497499 (= e!291600 (or (bvslt mask!3524 #b00000000000000000000000000000000) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(declare-datatypes ((SeekEntryResult!3929 0))(
  ( (MissingZero!3929 (index!17895 (_ BitVec 32))) (Found!3929 (index!17896 (_ BitVec 32))) (Intermediate!3929 (undefined!4741 Bool) (index!17897 (_ BitVec 32)) (x!46968 (_ BitVec 32))) (Undefined!3929) (MissingVacant!3929 (index!17898 (_ BitVec 32))) )
))
(declare-fun lt!225326 () SeekEntryResult!3929)

(assert (=> b!497499 (and (or (= (select (arr!15455 a!3235) (index!17897 lt!225326)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15455 a!3235) (index!17897 lt!225326)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15455 a!3235) (index!17897 lt!225326)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15455 a!3235) (index!17897 lt!225326)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!14806 0))(
  ( (Unit!14807) )
))
(declare-fun lt!225320 () Unit!14806)

(declare-fun e!291599 () Unit!14806)

(assert (=> b!497499 (= lt!225320 e!291599)))

(declare-fun c!59024 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!497499 (= c!59024 (= (select (arr!15455 a!3235) (index!17897 lt!225326)) (select (arr!15455 a!3235) j!176)))))

(assert (=> b!497499 (and (bvslt (x!46968 lt!225326) #b01111111111111111111111111111110) (or (= (select (arr!15455 a!3235) (index!17897 lt!225326)) (select (arr!15455 a!3235) j!176)) (= (select (arr!15455 a!3235) (index!17897 lt!225326)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15455 a!3235) (index!17897 lt!225326)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!497500 () Bool)

(declare-fun res!300007 () Bool)

(assert (=> b!497500 (=> res!300007 e!291600)))

(assert (=> b!497500 (= res!300007 (or (undefined!4741 lt!225326) (not (is-Intermediate!3929 lt!225326))))))

(declare-fun b!497501 () Bool)

(declare-fun Unit!14808 () Unit!14806)

(assert (=> b!497501 (= e!291599 Unit!14808)))

(declare-fun b!497502 () Bool)

(declare-fun Unit!14809 () Unit!14806)

(assert (=> b!497502 (= e!291599 Unit!14809)))

(declare-fun lt!225325 () (_ BitVec 32))

(declare-fun lt!225324 () Unit!14806)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32150 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14806)

(assert (=> b!497502 (= lt!225324 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!225325 #b00000000000000000000000000000000 (index!17897 lt!225326) (x!46968 lt!225326) mask!3524))))

(declare-fun lt!225321 () array!32150)

(declare-fun res!300001 () Bool)

(declare-fun lt!225322 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32150 (_ BitVec 32)) SeekEntryResult!3929)

(assert (=> b!497502 (= res!300001 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225325 lt!225322 lt!225321 mask!3524) (Intermediate!3929 false (index!17897 lt!225326) (x!46968 lt!225326))))))

(declare-fun e!291597 () Bool)

(assert (=> b!497502 (=> (not res!300001) (not e!291597))))

(assert (=> b!497502 e!291597))

(declare-fun b!497503 () Bool)

(declare-fun e!291598 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32150 (_ BitVec 32)) SeekEntryResult!3929)

(assert (=> b!497503 (= e!291598 (= (seekEntryOrOpen!0 (select (arr!15455 a!3235) j!176) a!3235 mask!3524) (Found!3929 j!176)))))

(declare-fun res!300002 () Bool)

(assert (=> start!45302 (=> (not res!300002) (not e!291601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45302 (= res!300002 (validMask!0 mask!3524))))

(assert (=> start!45302 e!291601))

(assert (=> start!45302 true))

(declare-fun array_inv!11229 (array!32150) Bool)

(assert (=> start!45302 (array_inv!11229 a!3235)))

(declare-fun b!497504 () Bool)

(declare-fun res!300003 () Bool)

(assert (=> b!497504 (=> (not res!300003) (not e!291601))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!497504 (= res!300003 (validKeyInArray!0 (select (arr!15455 a!3235) j!176)))))

(declare-fun b!497505 () Bool)

(assert (=> b!497505 (= e!291597 false)))

(declare-fun b!497506 () Bool)

(declare-fun res!300005 () Bool)

(assert (=> b!497506 (=> (not res!300005) (not e!291595))))

(declare-datatypes ((List!9666 0))(
  ( (Nil!9663) (Cons!9662 (h!10533 (_ BitVec 64)) (t!15902 List!9666)) )
))
(declare-fun arrayNoDuplicates!0 (array!32150 (_ BitVec 32) List!9666) Bool)

(assert (=> b!497506 (= res!300005 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9663))))

(declare-fun b!497507 () Bool)

(assert (=> b!497507 (= e!291595 (not e!291600))))

(declare-fun res!300000 () Bool)

(assert (=> b!497507 (=> res!300000 e!291600)))

(declare-fun lt!225318 () (_ BitVec 32))

(assert (=> b!497507 (= res!300000 (= lt!225326 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225318 lt!225322 lt!225321 mask!3524)))))

(assert (=> b!497507 (= lt!225326 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225325 (select (arr!15455 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!497507 (= lt!225318 (toIndex!0 lt!225322 mask!3524))))

(assert (=> b!497507 (= lt!225322 (select (store (arr!15455 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!497507 (= lt!225325 (toIndex!0 (select (arr!15455 a!3235) j!176) mask!3524))))

(assert (=> b!497507 (= lt!225321 (array!32151 (store (arr!15455 a!3235) i!1204 k!2280) (size!15819 a!3235)))))

(assert (=> b!497507 e!291598))

(declare-fun res!300011 () Bool)

(assert (=> b!497507 (=> (not res!300011) (not e!291598))))

(assert (=> b!497507 (= res!300011 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!225319 () Unit!14806)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32150 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14806)

(assert (=> b!497507 (= lt!225319 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!497508 () Bool)

(declare-fun res!300008 () Bool)

(assert (=> b!497508 (=> (not res!300008) (not e!291601))))

(assert (=> b!497508 (= res!300008 (validKeyInArray!0 k!2280))))

(declare-fun b!497509 () Bool)

(declare-fun res!300009 () Bool)

(assert (=> b!497509 (=> (not res!300009) (not e!291601))))

(assert (=> b!497509 (= res!300009 (and (= (size!15819 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15819 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15819 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!497510 () Bool)

(assert (=> b!497510 (= e!291601 e!291595)))

(declare-fun res!300006 () Bool)

(assert (=> b!497510 (=> (not res!300006) (not e!291595))))

(declare-fun lt!225323 () SeekEntryResult!3929)

(assert (=> b!497510 (= res!300006 (or (= lt!225323 (MissingZero!3929 i!1204)) (= lt!225323 (MissingVacant!3929 i!1204))))))

(assert (=> b!497510 (= lt!225323 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!45302 res!300002) b!497509))

(assert (= (and b!497509 res!300009) b!497504))

(assert (= (and b!497504 res!300003) b!497508))

(assert (= (and b!497508 res!300008) b!497497))

(assert (= (and b!497497 res!300004) b!497510))

(assert (= (and b!497510 res!300006) b!497498))

(assert (= (and b!497498 res!300010) b!497506))

(assert (= (and b!497506 res!300005) b!497507))

(assert (= (and b!497507 res!300011) b!497503))

(assert (= (and b!497507 (not res!300000)) b!497500))

(assert (= (and b!497500 (not res!300007)) b!497499))

(assert (= (and b!497499 c!59024) b!497502))

(assert (= (and b!497499 (not c!59024)) b!497501))

(assert (= (and b!497502 res!300001) b!497505))

(declare-fun m!478921 () Bool)

(assert (=> start!45302 m!478921))

(declare-fun m!478923 () Bool)

(assert (=> start!45302 m!478923))

(declare-fun m!478925 () Bool)

(assert (=> b!497503 m!478925))

(assert (=> b!497503 m!478925))

(declare-fun m!478927 () Bool)

(assert (=> b!497503 m!478927))

(declare-fun m!478929 () Bool)

(assert (=> b!497498 m!478929))

(declare-fun m!478931 () Bool)

(assert (=> b!497506 m!478931))

(declare-fun m!478933 () Bool)

(assert (=> b!497507 m!478933))

(declare-fun m!478935 () Bool)

(assert (=> b!497507 m!478935))

(declare-fun m!478937 () Bool)

(assert (=> b!497507 m!478937))

(assert (=> b!497507 m!478925))

(declare-fun m!478939 () Bool)

(assert (=> b!497507 m!478939))

(assert (=> b!497507 m!478925))

(declare-fun m!478941 () Bool)

(assert (=> b!497507 m!478941))

(assert (=> b!497507 m!478925))

(declare-fun m!478943 () Bool)

(assert (=> b!497507 m!478943))

(declare-fun m!478945 () Bool)

(assert (=> b!497507 m!478945))

(declare-fun m!478947 () Bool)

(assert (=> b!497507 m!478947))

(declare-fun m!478949 () Bool)

(assert (=> b!497508 m!478949))

(declare-fun m!478951 () Bool)

(assert (=> b!497510 m!478951))

(assert (=> b!497504 m!478925))

(assert (=> b!497504 m!478925))

(declare-fun m!478953 () Bool)

(assert (=> b!497504 m!478953))

(declare-fun m!478955 () Bool)

(assert (=> b!497502 m!478955))

(declare-fun m!478957 () Bool)

(assert (=> b!497502 m!478957))

(declare-fun m!478959 () Bool)

(assert (=> b!497499 m!478959))

(assert (=> b!497499 m!478925))

(declare-fun m!478961 () Bool)

(assert (=> b!497497 m!478961))

(push 1)

(assert (not start!45302))

(assert (not b!497507))

(assert (not b!497508))

(assert (not b!497503))

(assert (not b!497506))

(assert (not b!497497))

(assert (not b!497510))

(assert (not b!497498))

(assert (not b!497502))

(assert (not b!497504))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!497548 () Bool)

(declare-fun e!291632 () Bool)

(declare-fun contains!2721 (List!9666 (_ BitVec 64)) Bool)

(assert (=> b!497548 (= e!291632 (contains!2721 Nil!9663 (select (arr!15455 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!497549 () Bool)

(declare-fun e!291631 () Bool)

(declare-fun e!291633 () Bool)

(assert (=> b!497549 (= e!291631 e!291633)))

(declare-fun res!300036 () Bool)

(assert (=> b!497549 (=> (not res!300036) (not e!291633))))

(assert (=> b!497549 (= res!300036 (not e!291632))))

(declare-fun res!300035 () Bool)

(assert (=> b!497549 (=> (not res!300035) (not e!291632))))

(assert (=> b!497549 (= res!300035 (validKeyInArray!0 (select (arr!15455 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!497550 () Bool)

(declare-fun e!291634 () Bool)

(declare-fun call!31436 () Bool)

(assert (=> b!497550 (= e!291634 call!31436)))

(declare-fun b!497551 () Bool)

(assert (=> b!497551 (= e!291633 e!291634)))

(declare-fun c!59033 () Bool)

(assert (=> b!497551 (= c!59033 (validKeyInArray!0 (select (arr!15455 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31433 () Bool)

(assert (=> bm!31433 (= call!31436 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!59033 (Cons!9662 (select (arr!15455 a!3235) #b00000000000000000000000000000000) Nil!9663) Nil!9663)))))

(declare-fun d!78257 () Bool)

(declare-fun res!300034 () Bool)

(assert (=> d!78257 (=> res!300034 e!291631)))

(assert (=> d!78257 (= res!300034 (bvsge #b00000000000000000000000000000000 (size!15819 a!3235)))))

(assert (=> d!78257 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9663) e!291631)))

(declare-fun b!497552 () Bool)

(assert (=> b!497552 (= e!291634 call!31436)))

(assert (= (and d!78257 (not res!300034)) b!497549))

(assert (= (and b!497549 res!300035) b!497548))

(assert (= (and b!497549 res!300036) b!497551))

(assert (= (and b!497551 c!59033) b!497550))

(assert (= (and b!497551 (not c!59033)) b!497552))

(assert (= (or b!497550 b!497552) bm!31433))

(declare-fun m!478977 () Bool)

(assert (=> b!497548 m!478977))

(assert (=> b!497548 m!478977))

(declare-fun m!478979 () Bool)

(assert (=> b!497548 m!478979))

(assert (=> b!497549 m!478977))

(assert (=> b!497549 m!478977))

(declare-fun m!478981 () Bool)

(assert (=> b!497549 m!478981))

(assert (=> b!497551 m!478977))

(assert (=> b!497551 m!478977))

(assert (=> b!497551 m!478981))

(assert (=> bm!31433 m!478977))

(declare-fun m!478983 () Bool)

(assert (=> bm!31433 m!478983))

(assert (=> b!497506 d!78257))

(declare-fun b!497601 () Bool)

(declare-fun e!291661 () SeekEntryResult!3929)

(declare-fun lt!225362 () SeekEntryResult!3929)

(assert (=> b!497601 (= e!291661 (MissingZero!3929 (index!17897 lt!225362)))))

(declare-fun b!497602 () Bool)

(declare-fun c!59052 () Bool)

(declare-fun lt!225363 () (_ BitVec 64))

(assert (=> b!497602 (= c!59052 (= lt!225363 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!291663 () SeekEntryResult!3929)

(assert (=> b!497602 (= e!291663 e!291661)))

(declare-fun b!497603 () Bool)

(assert (=> b!497603 (= e!291663 (Found!3929 (index!17897 lt!225362)))))

(declare-fun b!497604 () Bool)

(declare-fun e!291662 () SeekEntryResult!3929)

(assert (=> b!497604 (= e!291662 e!291663)))

(assert (=> b!497604 (= lt!225363 (select (arr!15455 a!3235) (index!17897 lt!225362)))))

(declare-fun c!59054 () Bool)

(assert (=> b!497604 (= c!59054 (= lt!225363 k!2280))))

(declare-fun b!497605 () Bool)

(assert (=> b!497605 (= e!291662 Undefined!3929)))

(declare-fun b!497606 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32150 (_ BitVec 32)) SeekEntryResult!3929)

(assert (=> b!497606 (= e!291661 (seekKeyOrZeroReturnVacant!0 (x!46968 lt!225362) (index!17897 lt!225362) (index!17897 lt!225362) k!2280 a!3235 mask!3524))))

(declare-fun d!78261 () Bool)

(declare-fun lt!225361 () SeekEntryResult!3929)

(assert (=> d!78261 (and (or (is-Undefined!3929 lt!225361) (not (is-Found!3929 lt!225361)) (and (bvsge (index!17896 lt!225361) #b00000000000000000000000000000000) (bvslt (index!17896 lt!225361) (size!15819 a!3235)))) (or (is-Undefined!3929 lt!225361) (is-Found!3929 lt!225361) (not (is-MissingZero!3929 lt!225361)) (and (bvsge (index!17895 lt!225361) #b00000000000000000000000000000000) (bvslt (index!17895 lt!225361) (size!15819 a!3235)))) (or (is-Undefined!3929 lt!225361) (is-Found!3929 lt!225361) (is-MissingZero!3929 lt!225361) (not (is-MissingVacant!3929 lt!225361)) (and (bvsge (index!17898 lt!225361) #b00000000000000000000000000000000) (bvslt (index!17898 lt!225361) (size!15819 a!3235)))) (or (is-Undefined!3929 lt!225361) (ite (is-Found!3929 lt!225361) (= (select (arr!15455 a!3235) (index!17896 lt!225361)) k!2280) (ite (is-MissingZero!3929 lt!225361) (= (select (arr!15455 a!3235) (index!17895 lt!225361)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3929 lt!225361) (= (select (arr!15455 a!3235) (index!17898 lt!225361)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78261 (= lt!225361 e!291662)))

(declare-fun c!59053 () Bool)

(assert (=> d!78261 (= c!59053 (and (is-Intermediate!3929 lt!225362) (undefined!4741 lt!225362)))))

(assert (=> d!78261 (= lt!225362 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!78261 (validMask!0 mask!3524)))

(assert (=> d!78261 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!225361)))

(assert (= (and d!78261 c!59053) b!497605))

(assert (= (and d!78261 (not c!59053)) b!497604))

(assert (= (and b!497604 c!59054) b!497603))

(assert (= (and b!497604 (not c!59054)) b!497602))

(assert (= (and b!497602 c!59052) b!497601))

(assert (= (and b!497602 (not c!59052)) b!497606))

(declare-fun m!479003 () Bool)

(assert (=> b!497604 m!479003))

(declare-fun m!479005 () Bool)

(assert (=> b!497606 m!479005))

(declare-fun m!479007 () Bool)

(assert (=> d!78261 m!479007))

(assert (=> d!78261 m!478921))

(declare-fun m!479009 () Bool)

(assert (=> d!78261 m!479009))

(declare-fun m!479011 () Bool)

(assert (=> d!78261 m!479011))

(assert (=> d!78261 m!479009))

(declare-fun m!479013 () Bool)

(assert (=> d!78261 m!479013))

(declare-fun m!479015 () Bool)

(assert (=> d!78261 m!479015))

(assert (=> b!497510 d!78261))

(declare-fun d!78275 () Bool)

(assert (=> d!78275 (= (validKeyInArray!0 (select (arr!15455 a!3235) j!176)) (and (not (= (select (arr!15455 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15455 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!497504 d!78275))

(declare-fun b!497619 () Bool)

(declare-fun e!291670 () SeekEntryResult!3929)

(declare-fun lt!225371 () SeekEntryResult!3929)

(assert (=> b!497619 (= e!291670 (MissingZero!3929 (index!17897 lt!225371)))))

(declare-fun b!497620 () Bool)

(declare-fun c!59061 () Bool)

(declare-fun lt!225372 () (_ BitVec 64))

(assert (=> b!497620 (= c!59061 (= lt!225372 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!291672 () SeekEntryResult!3929)

(assert (=> b!497620 (= e!291672 e!291670)))

(declare-fun b!497621 () Bool)

(assert (=> b!497621 (= e!291672 (Found!3929 (index!17897 lt!225371)))))

(declare-fun b!497622 () Bool)

(declare-fun e!291671 () SeekEntryResult!3929)

(assert (=> b!497622 (= e!291671 e!291672)))

(assert (=> b!497622 (= lt!225372 (select (arr!15455 a!3235) (index!17897 lt!225371)))))

(declare-fun c!59063 () Bool)

(assert (=> b!497622 (= c!59063 (= lt!225372 (select (arr!15455 a!3235) j!176)))))

(declare-fun b!497623 () Bool)

(assert (=> b!497623 (= e!291671 Undefined!3929)))

(declare-fun b!497624 () Bool)

(assert (=> b!497624 (= e!291670 (seekKeyOrZeroReturnVacant!0 (x!46968 lt!225371) (index!17897 lt!225371) (index!17897 lt!225371) (select (arr!15455 a!3235) j!176) a!3235 mask!3524))))

(declare-fun d!78277 () Bool)

(declare-fun lt!225370 () SeekEntryResult!3929)

(assert (=> d!78277 (and (or (is-Undefined!3929 lt!225370) (not (is-Found!3929 lt!225370)) (and (bvsge (index!17896 lt!225370) #b00000000000000000000000000000000) (bvslt (index!17896 lt!225370) (size!15819 a!3235)))) (or (is-Undefined!3929 lt!225370) (is-Found!3929 lt!225370) (not (is-MissingZero!3929 lt!225370)) (and (bvsge (index!17895 lt!225370) #b00000000000000000000000000000000) (bvslt (index!17895 lt!225370) (size!15819 a!3235)))) (or (is-Undefined!3929 lt!225370) (is-Found!3929 lt!225370) (is-MissingZero!3929 lt!225370) (not (is-MissingVacant!3929 lt!225370)) (and (bvsge (index!17898 lt!225370) #b00000000000000000000000000000000) (bvslt (index!17898 lt!225370) (size!15819 a!3235)))) (or (is-Undefined!3929 lt!225370) (ite (is-Found!3929 lt!225370) (= (select (arr!15455 a!3235) (index!17896 lt!225370)) (select (arr!15455 a!3235) j!176)) (ite (is-MissingZero!3929 lt!225370) (= (select (arr!15455 a!3235) (index!17895 lt!225370)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3929 lt!225370) (= (select (arr!15455 a!3235) (index!17898 lt!225370)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78277 (= lt!225370 e!291671)))

(declare-fun c!59062 () Bool)

(assert (=> d!78277 (= c!59062 (and (is-Intermediate!3929 lt!225371) (undefined!4741 lt!225371)))))

(assert (=> d!78277 (= lt!225371 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15455 a!3235) j!176) mask!3524) (select (arr!15455 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!78277 (validMask!0 mask!3524)))

(assert (=> d!78277 (= (seekEntryOrOpen!0 (select (arr!15455 a!3235) j!176) a!3235 mask!3524) lt!225370)))

(assert (= (and d!78277 c!59062) b!497623))

(assert (= (and d!78277 (not c!59062)) b!497622))

(assert (= (and b!497622 c!59063) b!497621))

(assert (= (and b!497622 (not c!59063)) b!497620))

(assert (= (and b!497620 c!59061) b!497619))

(assert (= (and b!497620 (not c!59061)) b!497624))

(declare-fun m!479017 () Bool)

(assert (=> b!497622 m!479017))

(assert (=> b!497624 m!478925))

(declare-fun m!479019 () Bool)

(assert (=> b!497624 m!479019))

(declare-fun m!479021 () Bool)

(assert (=> d!78277 m!479021))

(assert (=> d!78277 m!478921))

(assert (=> d!78277 m!478939))

(assert (=> d!78277 m!478925))

(declare-fun m!479023 () Bool)

(assert (=> d!78277 m!479023))

(assert (=> d!78277 m!478925))

(assert (=> d!78277 m!478939))

(declare-fun m!479025 () Bool)

(assert (=> d!78277 m!479025))

(declare-fun m!479027 () Bool)

(assert (=> d!78277 m!479027))

(assert (=> b!497503 d!78277))

(declare-fun b!497640 () Bool)

(declare-fun e!291684 () Bool)

(declare-fun call!31439 () Bool)

(assert (=> b!497640 (= e!291684 call!31439)))

(declare-fun bm!31436 () Bool)

(assert (=> bm!31436 (= call!31439 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!497641 () Bool)

(declare-fun e!291683 () Bool)

(assert (=> b!497641 (= e!291683 e!291684)))

(declare-fun lt!225383 () (_ BitVec 64))

(assert (=> b!497641 (= lt!225383 (select (arr!15455 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!225384 () Unit!14806)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32150 (_ BitVec 64) (_ BitVec 32)) Unit!14806)

(assert (=> b!497641 (= lt!225384 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!225383 #b00000000000000000000000000000000))))

(assert (=> b!497641 (arrayContainsKey!0 a!3235 lt!225383 #b00000000000000000000000000000000)))

(declare-fun lt!225382 () Unit!14806)

(assert (=> b!497641 (= lt!225382 lt!225384)))

(declare-fun res!300054 () Bool)

(assert (=> b!497641 (= res!300054 (= (seekEntryOrOpen!0 (select (arr!15455 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3929 #b00000000000000000000000000000000)))))

(assert (=> b!497641 (=> (not res!300054) (not e!291684))))

(declare-fun b!497642 () Bool)

(declare-fun e!291682 () Bool)

(assert (=> b!497642 (= e!291682 e!291683)))

(declare-fun c!59069 () Bool)

(assert (=> b!497642 (= c!59069 (validKeyInArray!0 (select (arr!15455 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!78279 () Bool)

(declare-fun res!300053 () Bool)

(assert (=> d!78279 (=> res!300053 e!291682)))

(assert (=> d!78279 (= res!300053 (bvsge #b00000000000000000000000000000000 (size!15819 a!3235)))))

(assert (=> d!78279 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!291682)))

(declare-fun b!497639 () Bool)

(assert (=> b!497639 (= e!291683 call!31439)))

(assert (= (and d!78279 (not res!300053)) b!497642))

(assert (= (and b!497642 c!59069) b!497641))

(assert (= (and b!497642 (not c!59069)) b!497639))

(assert (= (and b!497641 res!300054) b!497640))

(assert (= (or b!497640 b!497639) bm!31436))

(declare-fun m!479041 () Bool)

(assert (=> bm!31436 m!479041))

(assert (=> b!497641 m!478977))

(declare-fun m!479043 () Bool)

(assert (=> b!497641 m!479043))

(declare-fun m!479045 () Bool)

(assert (=> b!497641 m!479045))

(assert (=> b!497641 m!478977))

(declare-fun m!479047 () Bool)

(assert (=> b!497641 m!479047))

(assert (=> b!497642 m!478977))

(assert (=> b!497642 m!478977))

(assert (=> b!497642 m!478981))

(assert (=> b!497498 d!78279))

(declare-fun d!78285 () Bool)

(declare-fun res!300059 () Bool)

(declare-fun e!291689 () Bool)

(assert (=> d!78285 (=> res!300059 e!291689)))

(assert (=> d!78285 (= res!300059 (= (select (arr!15455 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!78285 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!291689)))

(declare-fun b!497647 () Bool)

(declare-fun e!291690 () Bool)

(assert (=> b!497647 (= e!291689 e!291690)))

(declare-fun res!300060 () Bool)

(assert (=> b!497647 (=> (not res!300060) (not e!291690))))

(assert (=> b!497647 (= res!300060 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15819 a!3235)))))

(declare-fun b!497648 () Bool)

(assert (=> b!497648 (= e!291690 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!78285 (not res!300059)) b!497647))

(assert (= (and b!497647 res!300060) b!497648))

(assert (=> d!78285 m!478977))

(declare-fun m!479049 () Bool)

(assert (=> b!497648 m!479049))

(assert (=> b!497497 d!78285))

(declare-fun d!78287 () Bool)

(assert (=> d!78287 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!497508 d!78287))

(declare-fun d!78289 () Bool)

(assert (=> d!78289 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!45302 d!78289))

(declare-fun d!78295 () Bool)

(assert (=> d!78295 (= (array_inv!11229 a!3235) (bvsge (size!15819 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!45302 d!78295))

(declare-fun d!78297 () Bool)

(declare-fun lt!225402 () (_ BitVec 32))

(declare-fun lt!225401 () (_ BitVec 32))

(assert (=> d!78297 (= lt!225402 (bvmul (bvxor lt!225401 (bvlshr lt!225401 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78297 (= lt!225401 ((_ extract 31 0) (bvand (bvxor (select (arr!15455 a!3235) j!176) (bvlshr (select (arr!15455 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78297 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!300064 (let ((h!10535 ((_ extract 31 0) (bvand (bvxor (select (arr!15455 a!3235) j!176) (bvlshr (select (arr!15455 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46972 (bvmul (bvxor h!10535 (bvlshr h!10535 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46972 (bvlshr x!46972 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!300064 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!300064 #b00000000000000000000000000000000))))))

(assert (=> d!78297 (= (toIndex!0 (select (arr!15455 a!3235) j!176) mask!3524) (bvand (bvxor lt!225402 (bvlshr lt!225402 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!497507 d!78297))

(declare-fun d!78301 () Bool)

(declare-fun lt!225404 () (_ BitVec 32))

(declare-fun lt!225403 () (_ BitVec 32))

(assert (=> d!78301 (= lt!225404 (bvmul (bvxor lt!225403 (bvlshr lt!225403 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78301 (= lt!225403 ((_ extract 31 0) (bvand (bvxor lt!225322 (bvlshr lt!225322 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78301 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!300064 (let ((h!10535 ((_ extract 31 0) (bvand (bvxor lt!225322 (bvlshr lt!225322 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46972 (bvmul (bvxor h!10535 (bvlshr h!10535 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46972 (bvlshr x!46972 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!300064 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!300064 #b00000000000000000000000000000000))))))

(assert (=> d!78301 (= (toIndex!0 lt!225322 mask!3524) (bvand (bvxor lt!225404 (bvlshr lt!225404 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!497507 d!78301))

(declare-fun b!497755 () Bool)

(declare-fun e!291760 () SeekEntryResult!3929)

(assert (=> b!497755 (= e!291760 (Intermediate!3929 false lt!225325 #b00000000000000000000000000000000))))

(declare-fun b!497756 () Bool)

(declare-fun lt!225436 () SeekEntryResult!3929)

(assert (=> b!497756 (and (bvsge (index!17897 lt!225436) #b00000000000000000000000000000000) (bvslt (index!17897 lt!225436) (size!15819 a!3235)))))

(declare-fun res!300101 () Bool)

(assert (=> b!497756 (= res!300101 (= (select (arr!15455 a!3235) (index!17897 lt!225436)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!291759 () Bool)

(assert (=> b!497756 (=> res!300101 e!291759)))

(declare-fun b!497757 () Bool)

(declare-fun e!291757 () SeekEntryResult!3929)

(assert (=> b!497757 (= e!291757 e!291760)))

(declare-fun c!59106 () Bool)

(declare-fun lt!225435 () (_ BitVec 64))

(assert (=> b!497757 (= c!59106 (or (= lt!225435 (select (arr!15455 a!3235) j!176)) (= (bvadd lt!225435 lt!225435) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!497758 () Bool)

(assert (=> b!497758 (and (bvsge (index!17897 lt!225436) #b00000000000000000000000000000000) (bvslt (index!17897 lt!225436) (size!15819 a!3235)))))

(declare-fun res!300102 () Bool)

(assert (=> b!497758 (= res!300102 (= (select (arr!15455 a!3235) (index!17897 lt!225436)) (select (arr!15455 a!3235) j!176)))))

(assert (=> b!497758 (=> res!300102 e!291759)))

(declare-fun e!291758 () Bool)

(assert (=> b!497758 (= e!291758 e!291759)))

(declare-fun b!497760 () Bool)

(declare-fun e!291761 () Bool)

(assert (=> b!497760 (= e!291761 (bvsge (x!46968 lt!225436) #b01111111111111111111111111111110))))

(declare-fun b!497761 () Bool)

(assert (=> b!497761 (and (bvsge (index!17897 lt!225436) #b00000000000000000000000000000000) (bvslt (index!17897 lt!225436) (size!15819 a!3235)))))

(assert (=> b!497761 (= e!291759 (= (select (arr!15455 a!3235) (index!17897 lt!225436)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!497759 () Bool)

(assert (=> b!497759 (= e!291757 (Intermediate!3929 true lt!225325 #b00000000000000000000000000000000))))

(declare-fun d!78303 () Bool)

(assert (=> d!78303 e!291761))

(declare-fun c!59105 () Bool)

(assert (=> d!78303 (= c!59105 (and (is-Intermediate!3929 lt!225436) (undefined!4741 lt!225436)))))

(assert (=> d!78303 (= lt!225436 e!291757)))

(declare-fun c!59104 () Bool)

(assert (=> d!78303 (= c!59104 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!78303 (= lt!225435 (select (arr!15455 a!3235) lt!225325))))

(assert (=> d!78303 (validMask!0 mask!3524)))

(assert (=> d!78303 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225325 (select (arr!15455 a!3235) j!176) a!3235 mask!3524) lt!225436)))

(declare-fun b!497762 () Bool)

(assert (=> b!497762 (= e!291761 e!291758)))

(declare-fun res!300103 () Bool)

(assert (=> b!497762 (= res!300103 (and (is-Intermediate!3929 lt!225436) (not (undefined!4741 lt!225436)) (bvslt (x!46968 lt!225436) #b01111111111111111111111111111110) (bvsge (x!46968 lt!225436) #b00000000000000000000000000000000) (bvsge (x!46968 lt!225436) #b00000000000000000000000000000000)))))

(assert (=> b!497762 (=> (not res!300103) (not e!291758))))

(declare-fun b!497763 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!497763 (= e!291760 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!225325 #b00000000000000000000000000000000 mask!3524) (select (arr!15455 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!78303 c!59104) b!497759))

(assert (= (and d!78303 (not c!59104)) b!497757))

(assert (= (and b!497757 c!59106) b!497755))

(assert (= (and b!497757 (not c!59106)) b!497763))

(assert (= (and d!78303 c!59105) b!497760))

(assert (= (and d!78303 (not c!59105)) b!497762))

(assert (= (and b!497762 res!300103) b!497758))

(assert (= (and b!497758 (not res!300102)) b!497756))

(assert (= (and b!497756 (not res!300101)) b!497761))

(declare-fun m!479121 () Bool)

(assert (=> b!497763 m!479121))

(assert (=> b!497763 m!479121))

(assert (=> b!497763 m!478925))

(declare-fun m!479123 () Bool)

(assert (=> b!497763 m!479123))

(declare-fun m!479125 () Bool)

(assert (=> d!78303 m!479125))

(assert (=> d!78303 m!478921))

(declare-fun m!479127 () Bool)

(assert (=> b!497756 m!479127))

(assert (=> b!497758 m!479127))

