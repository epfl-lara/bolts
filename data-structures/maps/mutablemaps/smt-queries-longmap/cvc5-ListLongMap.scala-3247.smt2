; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45298 () Bool)

(assert start!45298)

(declare-fun b!497413 () Bool)

(declare-fun e!291553 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!497413 (= e!291553 (or (bvslt mask!3524 #b00000000000000000000000000000000) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(declare-datatypes ((array!32146 0))(
  ( (array!32147 (arr!15453 (Array (_ BitVec 32) (_ BitVec 64))) (size!15817 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32146)

(declare-datatypes ((SeekEntryResult!3927 0))(
  ( (MissingZero!3927 (index!17887 (_ BitVec 32))) (Found!3927 (index!17888 (_ BitVec 32))) (Intermediate!3927 (undefined!4739 Bool) (index!17889 (_ BitVec 32)) (x!46966 (_ BitVec 32))) (Undefined!3927) (MissingVacant!3927 (index!17890 (_ BitVec 32))) )
))
(declare-fun lt!225268 () SeekEntryResult!3927)

(assert (=> b!497413 (and (or (= (select (arr!15453 a!3235) (index!17889 lt!225268)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15453 a!3235) (index!17889 lt!225268)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15453 a!3235) (index!17889 lt!225268)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15453 a!3235) (index!17889 lt!225268)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!14798 0))(
  ( (Unit!14799) )
))
(declare-fun lt!225265 () Unit!14798)

(declare-fun e!291559 () Unit!14798)

(assert (=> b!497413 (= lt!225265 e!291559)))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun c!59018 () Bool)

(assert (=> b!497413 (= c!59018 (= (select (arr!15453 a!3235) (index!17889 lt!225268)) (select (arr!15453 a!3235) j!176)))))

(assert (=> b!497413 (and (bvslt (x!46966 lt!225268) #b01111111111111111111111111111110) (or (= (select (arr!15453 a!3235) (index!17889 lt!225268)) (select (arr!15453 a!3235) j!176)) (= (select (arr!15453 a!3235) (index!17889 lt!225268)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15453 a!3235) (index!17889 lt!225268)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!299930 () Bool)

(declare-fun e!291556 () Bool)

(assert (=> start!45298 (=> (not res!299930) (not e!291556))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45298 (= res!299930 (validMask!0 mask!3524))))

(assert (=> start!45298 e!291556))

(assert (=> start!45298 true))

(declare-fun array_inv!11227 (array!32146) Bool)

(assert (=> start!45298 (array_inv!11227 a!3235)))

(declare-fun b!497414 () Bool)

(declare-fun e!291558 () Bool)

(assert (=> b!497414 (= e!291558 (not e!291553))))

(declare-fun res!299933 () Bool)

(assert (=> b!497414 (=> res!299933 e!291553)))

(declare-fun lt!225269 () (_ BitVec 32))

(declare-fun lt!225270 () array!32146)

(declare-fun lt!225266 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32146 (_ BitVec 32)) SeekEntryResult!3927)

(assert (=> b!497414 (= res!299933 (= lt!225268 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225269 lt!225266 lt!225270 mask!3524)))))

(declare-fun lt!225272 () (_ BitVec 32))

(assert (=> b!497414 (= lt!225268 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225272 (select (arr!15453 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!497414 (= lt!225269 (toIndex!0 lt!225266 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!497414 (= lt!225266 (select (store (arr!15453 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!497414 (= lt!225272 (toIndex!0 (select (arr!15453 a!3235) j!176) mask!3524))))

(assert (=> b!497414 (= lt!225270 (array!32147 (store (arr!15453 a!3235) i!1204 k!2280) (size!15817 a!3235)))))

(declare-fun e!291555 () Bool)

(assert (=> b!497414 e!291555))

(declare-fun res!299935 () Bool)

(assert (=> b!497414 (=> (not res!299935) (not e!291555))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32146 (_ BitVec 32)) Bool)

(assert (=> b!497414 (= res!299935 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!225271 () Unit!14798)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32146 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14798)

(assert (=> b!497414 (= lt!225271 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!497415 () Bool)

(declare-fun e!291554 () Bool)

(assert (=> b!497415 (= e!291554 false)))

(declare-fun b!497416 () Bool)

(declare-fun res!299938 () Bool)

(assert (=> b!497416 (=> (not res!299938) (not e!291556))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!497416 (= res!299938 (validKeyInArray!0 (select (arr!15453 a!3235) j!176)))))

(declare-fun b!497417 () Bool)

(declare-fun res!299934 () Bool)

(assert (=> b!497417 (=> (not res!299934) (not e!291556))))

(assert (=> b!497417 (= res!299934 (validKeyInArray!0 k!2280))))

(declare-fun b!497418 () Bool)

(declare-fun res!299929 () Bool)

(assert (=> b!497418 (=> (not res!299929) (not e!291556))))

(declare-fun arrayContainsKey!0 (array!32146 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!497418 (= res!299929 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!497419 () Bool)

(declare-fun res!299931 () Bool)

(assert (=> b!497419 (=> (not res!299931) (not e!291558))))

(declare-datatypes ((List!9664 0))(
  ( (Nil!9661) (Cons!9660 (h!10531 (_ BitVec 64)) (t!15900 List!9664)) )
))
(declare-fun arrayNoDuplicates!0 (array!32146 (_ BitVec 32) List!9664) Bool)

(assert (=> b!497419 (= res!299931 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9661))))

(declare-fun b!497420 () Bool)

(declare-fun res!299937 () Bool)

(assert (=> b!497420 (=> (not res!299937) (not e!291558))))

(assert (=> b!497420 (= res!299937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!497421 () Bool)

(declare-fun res!299936 () Bool)

(assert (=> b!497421 (=> res!299936 e!291553)))

(assert (=> b!497421 (= res!299936 (or (undefined!4739 lt!225268) (not (is-Intermediate!3927 lt!225268))))))

(declare-fun b!497422 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32146 (_ BitVec 32)) SeekEntryResult!3927)

(assert (=> b!497422 (= e!291555 (= (seekEntryOrOpen!0 (select (arr!15453 a!3235) j!176) a!3235 mask!3524) (Found!3927 j!176)))))

(declare-fun b!497423 () Bool)

(declare-fun Unit!14800 () Unit!14798)

(assert (=> b!497423 (= e!291559 Unit!14800)))

(declare-fun b!497424 () Bool)

(assert (=> b!497424 (= e!291556 e!291558)))

(declare-fun res!299928 () Bool)

(assert (=> b!497424 (=> (not res!299928) (not e!291558))))

(declare-fun lt!225267 () SeekEntryResult!3927)

(assert (=> b!497424 (= res!299928 (or (= lt!225267 (MissingZero!3927 i!1204)) (= lt!225267 (MissingVacant!3927 i!1204))))))

(assert (=> b!497424 (= lt!225267 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!497425 () Bool)

(declare-fun res!299939 () Bool)

(assert (=> b!497425 (=> (not res!299939) (not e!291556))))

(assert (=> b!497425 (= res!299939 (and (= (size!15817 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15817 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15817 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!497426 () Bool)

(declare-fun Unit!14801 () Unit!14798)

(assert (=> b!497426 (= e!291559 Unit!14801)))

(declare-fun lt!225264 () Unit!14798)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32146 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14798)

(assert (=> b!497426 (= lt!225264 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!225272 #b00000000000000000000000000000000 (index!17889 lt!225268) (x!46966 lt!225268) mask!3524))))

(declare-fun res!299932 () Bool)

(assert (=> b!497426 (= res!299932 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225272 lt!225266 lt!225270 mask!3524) (Intermediate!3927 false (index!17889 lt!225268) (x!46966 lt!225268))))))

(assert (=> b!497426 (=> (not res!299932) (not e!291554))))

(assert (=> b!497426 e!291554))

(assert (= (and start!45298 res!299930) b!497425))

(assert (= (and b!497425 res!299939) b!497416))

(assert (= (and b!497416 res!299938) b!497417))

(assert (= (and b!497417 res!299934) b!497418))

(assert (= (and b!497418 res!299929) b!497424))

(assert (= (and b!497424 res!299928) b!497420))

(assert (= (and b!497420 res!299937) b!497419))

(assert (= (and b!497419 res!299931) b!497414))

(assert (= (and b!497414 res!299935) b!497422))

(assert (= (and b!497414 (not res!299933)) b!497421))

(assert (= (and b!497421 (not res!299936)) b!497413))

(assert (= (and b!497413 c!59018) b!497426))

(assert (= (and b!497413 (not c!59018)) b!497423))

(assert (= (and b!497426 res!299932) b!497415))

(declare-fun m!478837 () Bool)

(assert (=> b!497422 m!478837))

(assert (=> b!497422 m!478837))

(declare-fun m!478839 () Bool)

(assert (=> b!497422 m!478839))

(declare-fun m!478841 () Bool)

(assert (=> b!497420 m!478841))

(declare-fun m!478843 () Bool)

(assert (=> b!497426 m!478843))

(declare-fun m!478845 () Bool)

(assert (=> b!497426 m!478845))

(declare-fun m!478847 () Bool)

(assert (=> start!45298 m!478847))

(declare-fun m!478849 () Bool)

(assert (=> start!45298 m!478849))

(declare-fun m!478851 () Bool)

(assert (=> b!497424 m!478851))

(assert (=> b!497416 m!478837))

(assert (=> b!497416 m!478837))

(declare-fun m!478853 () Bool)

(assert (=> b!497416 m!478853))

(declare-fun m!478855 () Bool)

(assert (=> b!497414 m!478855))

(declare-fun m!478857 () Bool)

(assert (=> b!497414 m!478857))

(assert (=> b!497414 m!478837))

(declare-fun m!478859 () Bool)

(assert (=> b!497414 m!478859))

(assert (=> b!497414 m!478837))

(declare-fun m!478861 () Bool)

(assert (=> b!497414 m!478861))

(declare-fun m!478863 () Bool)

(assert (=> b!497414 m!478863))

(declare-fun m!478865 () Bool)

(assert (=> b!497414 m!478865))

(assert (=> b!497414 m!478837))

(declare-fun m!478867 () Bool)

(assert (=> b!497414 m!478867))

(declare-fun m!478869 () Bool)

(assert (=> b!497414 m!478869))

(declare-fun m!478871 () Bool)

(assert (=> b!497419 m!478871))

(declare-fun m!478873 () Bool)

(assert (=> b!497413 m!478873))

(assert (=> b!497413 m!478837))

(declare-fun m!478875 () Bool)

(assert (=> b!497417 m!478875))

(declare-fun m!478877 () Bool)

(assert (=> b!497418 m!478877))

(push 1)

(assert (not b!497419))

(assert (not b!497426))

(assert (not b!497416))

(assert (not b!497418))

(assert (not b!497417))

(assert (not b!497424))

(assert (not b!497420))

(assert (not start!45298))

(assert (not b!497422))

(assert (not b!497414))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!78263 () Bool)

(assert (=> d!78263 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!497417 d!78263))

(declare-fun b!497625 () Bool)

(declare-fun e!291675 () SeekEntryResult!3927)

(declare-fun e!291674 () SeekEntryResult!3927)

(assert (=> b!497625 (= e!291675 e!291674)))

(declare-fun lt!225373 () (_ BitVec 64))

(declare-fun lt!225375 () SeekEntryResult!3927)

(assert (=> b!497625 (= lt!225373 (select (arr!15453 a!3235) (index!17889 lt!225375)))))

(declare-fun c!59066 () Bool)

(assert (=> b!497625 (= c!59066 (= lt!225373 (select (arr!15453 a!3235) j!176)))))

(declare-fun b!497626 () Bool)

(declare-fun e!291673 () SeekEntryResult!3927)

(assert (=> b!497626 (= e!291673 (MissingZero!3927 (index!17889 lt!225375)))))

(declare-fun b!497627 () Bool)

(assert (=> b!497627 (= e!291674 (Found!3927 (index!17889 lt!225375)))))

(declare-fun b!497628 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32146 (_ BitVec 32)) SeekEntryResult!3927)

(assert (=> b!497628 (= e!291673 (seekKeyOrZeroReturnVacant!0 (x!46966 lt!225375) (index!17889 lt!225375) (index!17889 lt!225375) (select (arr!15453 a!3235) j!176) a!3235 mask!3524))))

(declare-fun d!78265 () Bool)

(declare-fun lt!225374 () SeekEntryResult!3927)

(assert (=> d!78265 (and (or (is-Undefined!3927 lt!225374) (not (is-Found!3927 lt!225374)) (and (bvsge (index!17888 lt!225374) #b00000000000000000000000000000000) (bvslt (index!17888 lt!225374) (size!15817 a!3235)))) (or (is-Undefined!3927 lt!225374) (is-Found!3927 lt!225374) (not (is-MissingZero!3927 lt!225374)) (and (bvsge (index!17887 lt!225374) #b00000000000000000000000000000000) (bvslt (index!17887 lt!225374) (size!15817 a!3235)))) (or (is-Undefined!3927 lt!225374) (is-Found!3927 lt!225374) (is-MissingZero!3927 lt!225374) (not (is-MissingVacant!3927 lt!225374)) (and (bvsge (index!17890 lt!225374) #b00000000000000000000000000000000) (bvslt (index!17890 lt!225374) (size!15817 a!3235)))) (or (is-Undefined!3927 lt!225374) (ite (is-Found!3927 lt!225374) (= (select (arr!15453 a!3235) (index!17888 lt!225374)) (select (arr!15453 a!3235) j!176)) (ite (is-MissingZero!3927 lt!225374) (= (select (arr!15453 a!3235) (index!17887 lt!225374)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3927 lt!225374) (= (select (arr!15453 a!3235) (index!17890 lt!225374)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78265 (= lt!225374 e!291675)))

(declare-fun c!59065 () Bool)

(assert (=> d!78265 (= c!59065 (and (is-Intermediate!3927 lt!225375) (undefined!4739 lt!225375)))))

(assert (=> d!78265 (= lt!225375 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15453 a!3235) j!176) mask!3524) (select (arr!15453 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!78265 (validMask!0 mask!3524)))

(assert (=> d!78265 (= (seekEntryOrOpen!0 (select (arr!15453 a!3235) j!176) a!3235 mask!3524) lt!225374)))

(declare-fun b!497629 () Bool)

(assert (=> b!497629 (= e!291675 Undefined!3927)))

(declare-fun b!497630 () Bool)

(declare-fun c!59064 () Bool)

(assert (=> b!497630 (= c!59064 (= lt!225373 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!497630 (= e!291674 e!291673)))

(assert (= (and d!78265 c!59065) b!497629))

(assert (= (and d!78265 (not c!59065)) b!497625))

(assert (= (and b!497625 c!59066) b!497627))

(assert (= (and b!497625 (not c!59066)) b!497630))

(assert (= (and b!497630 c!59064) b!497626))

(assert (= (and b!497630 (not c!59064)) b!497628))

(declare-fun m!479029 () Bool)

(assert (=> b!497625 m!479029))

(assert (=> b!497628 m!478837))

(declare-fun m!479031 () Bool)

(assert (=> b!497628 m!479031))

(assert (=> d!78265 m!478837))

(assert (=> d!78265 m!478859))

(declare-fun m!479033 () Bool)

(assert (=> d!78265 m!479033))

(assert (=> d!78265 m!478847))

(declare-fun m!479035 () Bool)

(assert (=> d!78265 m!479035))

(declare-fun m!479037 () Bool)

(assert (=> d!78265 m!479037))

(assert (=> d!78265 m!478859))

(assert (=> d!78265 m!478837))

(declare-fun m!479039 () Bool)

(assert (=> d!78265 m!479039))

(assert (=> b!497422 d!78265))

(declare-fun d!78281 () Bool)

(assert (=> d!78281 (= (validKeyInArray!0 (select (arr!15453 a!3235) j!176)) (and (not (= (select (arr!15453 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15453 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!497416 d!78281))

(declare-fun d!78283 () Bool)

(declare-fun e!291699 () Bool)

(assert (=> d!78283 e!291699))

(declare-fun res!300063 () Bool)

(assert (=> d!78283 (=> (not res!300063) (not e!291699))))

(assert (=> d!78283 (= res!300063 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!15817 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15817 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!15817 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15817 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15817 a!3235))))))

(declare-fun lt!225393 () Unit!14798)

(declare-fun choose!47 (array!32146 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14798)

(assert (=> d!78283 (= lt!225393 (choose!47 a!3235 i!1204 k!2280 j!176 lt!225272 #b00000000000000000000000000000000 (index!17889 lt!225268) (x!46966 lt!225268) mask!3524))))

(assert (=> d!78283 (validMask!0 mask!3524)))

(assert (=> d!78283 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!225272 #b00000000000000000000000000000000 (index!17889 lt!225268) (x!46966 lt!225268) mask!3524) lt!225393)))

(declare-fun b!497663 () Bool)

(assert (=> b!497663 (= e!291699 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225272 (select (store (arr!15453 a!3235) i!1204 k!2280) j!176) (array!32147 (store (arr!15453 a!3235) i!1204 k!2280) (size!15817 a!3235)) mask!3524) (Intermediate!3927 false (index!17889 lt!225268) (x!46966 lt!225268))))))

(assert (= (and d!78283 res!300063) b!497663))

(declare-fun m!479051 () Bool)

(assert (=> d!78283 m!479051))

(assert (=> d!78283 m!478847))

(assert (=> b!497663 m!478855))

(assert (=> b!497663 m!478857))

(assert (=> b!497663 m!478857))

(declare-fun m!479053 () Bool)

(assert (=> b!497663 m!479053))

(assert (=> b!497426 d!78283))

(declare-fun b!497694 () Bool)

(declare-fun lt!225412 () SeekEntryResult!3927)

(assert (=> b!497694 (and (bvsge (index!17889 lt!225412) #b00000000000000000000000000000000) (bvslt (index!17889 lt!225412) (size!15817 lt!225270)))))

(declare-fun e!291717 () Bool)

(assert (=> b!497694 (= e!291717 (= (select (arr!15453 lt!225270) (index!17889 lt!225412)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!497695 () Bool)

(declare-fun e!291718 () SeekEntryResult!3927)

(assert (=> b!497695 (= e!291718 (Intermediate!3927 true lt!225272 #b00000000000000000000000000000000))))

(declare-fun d!78291 () Bool)

(declare-fun e!291716 () Bool)

(assert (=> d!78291 e!291716))

(declare-fun c!59090 () Bool)

(assert (=> d!78291 (= c!59090 (and (is-Intermediate!3927 lt!225412) (undefined!4739 lt!225412)))))

(assert (=> d!78291 (= lt!225412 e!291718)))

(declare-fun c!59089 () Bool)

(assert (=> d!78291 (= c!59089 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!225413 () (_ BitVec 64))

(assert (=> d!78291 (= lt!225413 (select (arr!15453 lt!225270) lt!225272))))

(assert (=> d!78291 (validMask!0 mask!3524)))

(assert (=> d!78291 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225272 lt!225266 lt!225270 mask!3524) lt!225412)))

(declare-fun b!497696 () Bool)

(declare-fun e!291719 () SeekEntryResult!3927)

(assert (=> b!497696 (= e!291719 (Intermediate!3927 false lt!225272 #b00000000000000000000000000000000))))

(declare-fun b!497697 () Bool)

(assert (=> b!497697 (= e!291718 e!291719)))

(declare-fun c!59088 () Bool)

(assert (=> b!497697 (= c!59088 (or (= lt!225413 lt!225266) (= (bvadd lt!225413 lt!225413) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!497698 () Bool)

(declare-fun e!291720 () Bool)

(assert (=> b!497698 (= e!291716 e!291720)))

(declare-fun res!300072 () Bool)

(assert (=> b!497698 (= res!300072 (and (is-Intermediate!3927 lt!225412) (not (undefined!4739 lt!225412)) (bvslt (x!46966 lt!225412) #b01111111111111111111111111111110) (bvsge (x!46966 lt!225412) #b00000000000000000000000000000000) (bvsge (x!46966 lt!225412) #b00000000000000000000000000000000)))))

(assert (=> b!497698 (=> (not res!300072) (not e!291720))))

(declare-fun b!497699 () Bool)

(assert (=> b!497699 (= e!291716 (bvsge (x!46966 lt!225412) #b01111111111111111111111111111110))))

(declare-fun b!497700 () Bool)

(assert (=> b!497700 (and (bvsge (index!17889 lt!225412) #b00000000000000000000000000000000) (bvslt (index!17889 lt!225412) (size!15817 lt!225270)))))

(declare-fun res!300073 () Bool)

(assert (=> b!497700 (= res!300073 (= (select (arr!15453 lt!225270) (index!17889 lt!225412)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!497700 (=> res!300073 e!291717)))

(declare-fun b!497701 () Bool)

(assert (=> b!497701 (and (bvsge (index!17889 lt!225412) #b00000000000000000000000000000000) (bvslt (index!17889 lt!225412) (size!15817 lt!225270)))))

(declare-fun res!300071 () Bool)

(assert (=> b!497701 (= res!300071 (= (select (arr!15453 lt!225270) (index!17889 lt!225412)) lt!225266))))

(assert (=> b!497701 (=> res!300071 e!291717)))

(assert (=> b!497701 (= e!291720 e!291717)))

(declare-fun b!497702 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!497702 (= e!291719 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!225272 #b00000000000000000000000000000000 mask!3524) lt!225266 lt!225270 mask!3524))))

(assert (= (and d!78291 c!59089) b!497695))

(assert (= (and d!78291 (not c!59089)) b!497697))

(assert (= (and b!497697 c!59088) b!497696))

(assert (= (and b!497697 (not c!59088)) b!497702))

(assert (= (and d!78291 c!59090) b!497699))

(assert (= (and d!78291 (not c!59090)) b!497698))

(assert (= (and b!497698 res!300072) b!497701))

(assert (= (and b!497701 (not res!300071)) b!497700))

(assert (= (and b!497700 (not res!300073)) b!497694))

(declare-fun m!479081 () Bool)

(assert (=> b!497700 m!479081))

(assert (=> b!497694 m!479081))

(declare-fun m!479083 () Bool)

(assert (=> b!497702 m!479083))

(assert (=> b!497702 m!479083))

(declare-fun m!479085 () Bool)

(assert (=> b!497702 m!479085))

(assert (=> b!497701 m!479081))

(declare-fun m!479087 () Bool)

(assert (=> d!78291 m!479087))

(assert (=> d!78291 m!478847))

(assert (=> b!497426 d!78291))

(declare-fun b!497745 () Bool)

(declare-fun e!291749 () Bool)

(declare-fun call!31443 () Bool)

(assert (=> b!497745 (= e!291749 call!31443)))

(declare-fun b!497746 () Bool)

(declare-fun e!291750 () Bool)

(assert (=> b!497746 (= e!291749 e!291750)))

(declare-fun lt!225432 () (_ BitVec 64))

(assert (=> b!497746 (= lt!225432 (select (arr!15453 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!225433 () Unit!14798)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32146 (_ BitVec 64) (_ BitVec 32)) Unit!14798)

(assert (=> b!497746 (= lt!225433 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!225432 #b00000000000000000000000000000000))))

(assert (=> b!497746 (arrayContainsKey!0 a!3235 lt!225432 #b00000000000000000000000000000000)))

(declare-fun lt!225434 () Unit!14798)

(assert (=> b!497746 (= lt!225434 lt!225433)))

(declare-fun res!300093 () Bool)

(assert (=> b!497746 (= res!300093 (= (seekEntryOrOpen!0 (select (arr!15453 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3927 #b00000000000000000000000000000000)))))

(assert (=> b!497746 (=> (not res!300093) (not e!291750))))

(declare-fun d!78311 () Bool)

(declare-fun res!300092 () Bool)

(declare-fun e!291748 () Bool)

(assert (=> d!78311 (=> res!300092 e!291748)))

(assert (=> d!78311 (= res!300092 (bvsge #b00000000000000000000000000000000 (size!15817 a!3235)))))

(assert (=> d!78311 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!291748)))

(declare-fun bm!31440 () Bool)

(assert (=> bm!31440 (= call!31443 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!497747 () Bool)

(assert (=> b!497747 (= e!291750 call!31443)))

(declare-fun b!497748 () Bool)

(assert (=> b!497748 (= e!291748 e!291749)))

(declare-fun c!59103 () Bool)

(assert (=> b!497748 (= c!59103 (validKeyInArray!0 (select (arr!15453 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!78311 (not res!300092)) b!497748))

(assert (= (and b!497748 c!59103) b!497746))

(assert (= (and b!497748 (not c!59103)) b!497745))

(assert (= (and b!497746 res!300093) b!497747))

(assert (= (or b!497747 b!497745) bm!31440))

(declare-fun m!479107 () Bool)

(assert (=> b!497746 m!479107))

(declare-fun m!479109 () Bool)

(assert (=> b!497746 m!479109))

(declare-fun m!479111 () Bool)

(assert (=> b!497746 m!479111))

(assert (=> b!497746 m!479107))

(declare-fun m!479113 () Bool)

(assert (=> b!497746 m!479113))

(declare-fun m!479115 () Bool)

(assert (=> bm!31440 m!479115))

(assert (=> b!497748 m!479107))

(assert (=> b!497748 m!479107))

(declare-fun m!479117 () Bool)

(assert (=> b!497748 m!479117))

(assert (=> b!497420 d!78311))

(declare-fun d!78319 () Bool)

(declare-fun lt!225445 () (_ BitVec 32))

(declare-fun lt!225444 () (_ BitVec 32))

(assert (=> d!78319 (= lt!225445 (bvmul (bvxor lt!225444 (bvlshr lt!225444 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78319 (= lt!225444 ((_ extract 31 0) (bvand (bvxor (select (arr!15453 a!3235) j!176) (bvlshr (select (arr!15453 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78319 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!300098 (let ((h!10536 ((_ extract 31 0) (bvand (bvxor (select (arr!15453 a!3235) j!176) (bvlshr (select (arr!15453 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46976 (bvmul (bvxor h!10536 (bvlshr h!10536 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46976 (bvlshr x!46976 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!300098 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!300098 #b00000000000000000000000000000000))))))

(assert (=> d!78319 (= (toIndex!0 (select (arr!15453 a!3235) j!176) mask!3524) (bvand (bvxor lt!225445 (bvlshr lt!225445 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!497414 d!78319))

(declare-fun b!497768 () Bool)

(declare-fun e!291766 () Bool)

(declare-fun call!31445 () Bool)

(assert (=> b!497768 (= e!291766 call!31445)))

(declare-fun b!497769 () Bool)

(declare-fun e!291767 () Bool)

(assert (=> b!497769 (= e!291766 e!291767)))

(declare-fun lt!225446 () (_ BitVec 64))

(assert (=> b!497769 (= lt!225446 (select (arr!15453 a!3235) j!176))))

(declare-fun lt!225447 () Unit!14798)

(assert (=> b!497769 (= lt!225447 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!225446 j!176))))

(assert (=> b!497769 (arrayContainsKey!0 a!3235 lt!225446 #b00000000000000000000000000000000)))

(declare-fun lt!225448 () Unit!14798)

(assert (=> b!497769 (= lt!225448 lt!225447)))

(declare-fun res!300107 () Bool)

(assert (=> b!497769 (= res!300107 (= (seekEntryOrOpen!0 (select (arr!15453 a!3235) j!176) a!3235 mask!3524) (Found!3927 j!176)))))

(assert (=> b!497769 (=> (not res!300107) (not e!291767))))

(declare-fun d!78327 () Bool)

(declare-fun res!300106 () Bool)

(declare-fun e!291765 () Bool)

(assert (=> d!78327 (=> res!300106 e!291765)))

(assert (=> d!78327 (= res!300106 (bvsge j!176 (size!15817 a!3235)))))

(assert (=> d!78327 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!291765)))

(declare-fun bm!31442 () Bool)

(assert (=> bm!31442 (= call!31445 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!497770 () Bool)

(assert (=> b!497770 (= e!291767 call!31445)))

(declare-fun b!497771 () Bool)

(assert (=> b!497771 (= e!291765 e!291766)))

(declare-fun c!59108 () Bool)

(assert (=> b!497771 (= c!59108 (validKeyInArray!0 (select (arr!15453 a!3235) j!176)))))

(assert (= (and d!78327 (not res!300106)) b!497771))

(assert (= (and b!497771 c!59108) b!497769))

(assert (= (and b!497771 (not c!59108)) b!497768))

(assert (= (and b!497769 res!300107) b!497770))

(assert (= (or b!497770 b!497768) bm!31442))

(assert (=> b!497769 m!478837))

(declare-fun m!479135 () Bool)

(assert (=> b!497769 m!479135))

(declare-fun m!479137 () Bool)

(assert (=> b!497769 m!479137))

(assert (=> b!497769 m!478837))

(assert (=> b!497769 m!478839))

(declare-fun m!479139 () Bool)

(assert (=> bm!31442 m!479139))

(assert (=> b!497771 m!478837))

(assert (=> b!497771 m!478837))

(assert (=> b!497771 m!478853))

(assert (=> b!497414 d!78327))

(declare-fun b!497772 () Bool)

(declare-fun lt!225449 () SeekEntryResult!3927)

(assert (=> b!497772 (and (bvsge (index!17889 lt!225449) #b00000000000000000000000000000000) (bvslt (index!17889 lt!225449) (size!15817 a!3235)))))

(declare-fun e!291769 () Bool)

(assert (=> b!497772 (= e!291769 (= (select (arr!15453 a!3235) (index!17889 lt!225449)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!497773 () Bool)

(declare-fun e!291770 () SeekEntryResult!3927)

(assert (=> b!497773 (= e!291770 (Intermediate!3927 true lt!225272 #b00000000000000000000000000000000))))

(declare-fun d!78329 () Bool)

(declare-fun e!291768 () Bool)

(assert (=> d!78329 e!291768))

(declare-fun c!59111 () Bool)

(assert (=> d!78329 (= c!59111 (and (is-Intermediate!3927 lt!225449) (undefined!4739 lt!225449)))))

(assert (=> d!78329 (= lt!225449 e!291770)))

(declare-fun c!59110 () Bool)

(assert (=> d!78329 (= c!59110 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!225450 () (_ BitVec 64))

(assert (=> d!78329 (= lt!225450 (select (arr!15453 a!3235) lt!225272))))

(assert (=> d!78329 (validMask!0 mask!3524)))

(assert (=> d!78329 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225272 (select (arr!15453 a!3235) j!176) a!3235 mask!3524) lt!225449)))

(declare-fun b!497774 () Bool)

(declare-fun e!291771 () SeekEntryResult!3927)

(assert (=> b!497774 (= e!291771 (Intermediate!3927 false lt!225272 #b00000000000000000000000000000000))))

(declare-fun b!497775 () Bool)

(assert (=> b!497775 (= e!291770 e!291771)))

(declare-fun c!59109 () Bool)

(assert (=> b!497775 (= c!59109 (or (= lt!225450 (select (arr!15453 a!3235) j!176)) (= (bvadd lt!225450 lt!225450) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!497776 () Bool)

(declare-fun e!291772 () Bool)

(assert (=> b!497776 (= e!291768 e!291772)))

(declare-fun res!300109 () Bool)

(assert (=> b!497776 (= res!300109 (and (is-Intermediate!3927 lt!225449) (not (undefined!4739 lt!225449)) (bvslt (x!46966 lt!225449) #b01111111111111111111111111111110) (bvsge (x!46966 lt!225449) #b00000000000000000000000000000000) (bvsge (x!46966 lt!225449) #b00000000000000000000000000000000)))))

(assert (=> b!497776 (=> (not res!300109) (not e!291772))))

(declare-fun b!497777 () Bool)

(assert (=> b!497777 (= e!291768 (bvsge (x!46966 lt!225449) #b01111111111111111111111111111110))))

(declare-fun b!497778 () Bool)

(assert (=> b!497778 (and (bvsge (index!17889 lt!225449) #b00000000000000000000000000000000) (bvslt (index!17889 lt!225449) (size!15817 a!3235)))))

(declare-fun res!300110 () Bool)

(assert (=> b!497778 (= res!300110 (= (select (arr!15453 a!3235) (index!17889 lt!225449)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!497778 (=> res!300110 e!291769)))

(declare-fun b!497779 () Bool)

(assert (=> b!497779 (and (bvsge (index!17889 lt!225449) #b00000000000000000000000000000000) (bvslt (index!17889 lt!225449) (size!15817 a!3235)))))

(declare-fun res!300108 () Bool)

(assert (=> b!497779 (= res!300108 (= (select (arr!15453 a!3235) (index!17889 lt!225449)) (select (arr!15453 a!3235) j!176)))))

(assert (=> b!497779 (=> res!300108 e!291769)))

(assert (=> b!497779 (= e!291772 e!291769)))

(declare-fun b!497780 () Bool)

(assert (=> b!497780 (= e!291771 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!225272 #b00000000000000000000000000000000 mask!3524) (select (arr!15453 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!78329 c!59110) b!497773))

(assert (= (and d!78329 (not c!59110)) b!497775))

(assert (= (and b!497775 c!59109) b!497774))

(assert (= (and b!497775 (not c!59109)) b!497780))

(assert (= (and d!78329 c!59111) b!497777))

(assert (= (and d!78329 (not c!59111)) b!497776))

(assert (= (and b!497776 res!300109) b!497779))

(assert (= (and b!497779 (not res!300108)) b!497778))

(assert (= (and b!497778 (not res!300110)) b!497772))

(declare-fun m!479141 () Bool)

(assert (=> b!497778 m!479141))

(assert (=> b!497772 m!479141))

(assert (=> b!497780 m!479083))

(assert (=> b!497780 m!479083))

(assert (=> b!497780 m!478837))

(declare-fun m!479143 () Bool)

(assert (=> b!497780 m!479143))

(assert (=> b!497779 m!479141))

(declare-fun m!479145 () Bool)

(assert (=> d!78329 m!479145))

(assert (=> d!78329 m!478847))

(assert (=> b!497414 d!78329))

(declare-fun d!78331 () Bool)

(assert (=> d!78331 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!225458 () Unit!14798)

(declare-fun choose!38 (array!32146 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14798)

(assert (=> d!78331 (= lt!225458 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!78331 (validMask!0 mask!3524)))

(assert (=> d!78331 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!225458)))

(declare-fun bs!15851 () Bool)

(assert (= bs!15851 d!78331))

(assert (=> bs!15851 m!478861))

(declare-fun m!479157 () Bool)

(assert (=> bs!15851 m!479157))

(assert (=> bs!15851 m!478847))

(assert (=> b!497414 d!78331))

(declare-fun d!78337 () Bool)

(declare-fun lt!225460 () (_ BitVec 32))

(declare-fun lt!225459 () (_ BitVec 32))

(assert (=> d!78337 (= lt!225460 (bvmul (bvxor lt!225459 (bvlshr lt!225459 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78337 (= lt!225459 ((_ extract 31 0) (bvand (bvxor lt!225266 (bvlshr lt!225266 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78337 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!300098 (let ((h!10536 ((_ extract 31 0) (bvand (bvxor lt!225266 (bvlshr lt!225266 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46976 (bvmul (bvxor h!10536 (bvlshr h!10536 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46976 (bvlshr x!46976 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!300098 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!300098 #b00000000000000000000000000000000))))))

(assert (=> d!78337 (= (toIndex!0 lt!225266 mask!3524) (bvand (bvxor lt!225460 (bvlshr lt!225460 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!497414 d!78337))

(declare-fun b!497790 () Bool)

(declare-fun lt!225461 () SeekEntryResult!3927)

(assert (=> b!497790 (and (bvsge (index!17889 lt!225461) #b00000000000000000000000000000000) (bvslt (index!17889 lt!225461) (size!15817 lt!225270)))))

(declare-fun e!291779 () Bool)

(assert (=> b!497790 (= e!291779 (= (select (arr!15453 lt!225270) (index!17889 lt!225461)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!497791 () Bool)

(declare-fun e!291780 () SeekEntryResult!3927)

(assert (=> b!497791 (= e!291780 (Intermediate!3927 true lt!225269 #b00000000000000000000000000000000))))

(declare-fun d!78339 () Bool)

(declare-fun e!291778 () Bool)

(assert (=> d!78339 e!291778))

(declare-fun c!59117 () Bool)

(assert (=> d!78339 (= c!59117 (and (is-Intermediate!3927 lt!225461) (undefined!4739 lt!225461)))))

(assert (=> d!78339 (= lt!225461 e!291780)))

(declare-fun c!59116 () Bool)

(assert (=> d!78339 (= c!59116 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!225462 () (_ BitVec 64))

(assert (=> d!78339 (= lt!225462 (select (arr!15453 lt!225270) lt!225269))))

(assert (=> d!78339 (validMask!0 mask!3524)))

(assert (=> d!78339 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225269 lt!225266 lt!225270 mask!3524) lt!225461)))

(declare-fun b!497792 () Bool)

(declare-fun e!291781 () SeekEntryResult!3927)

(assert (=> b!497792 (= e!291781 (Intermediate!3927 false lt!225269 #b00000000000000000000000000000000))))

(declare-fun b!497793 () Bool)

(assert (=> b!497793 (= e!291780 e!291781)))

(declare-fun c!59115 () Bool)

(assert (=> b!497793 (= c!59115 (or (= lt!225462 lt!225266) (= (bvadd lt!225462 lt!225462) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!497794 () Bool)

(declare-fun e!291782 () Bool)

(assert (=> b!497794 (= e!291778 e!291782)))

(declare-fun res!300115 () Bool)

(assert (=> b!497794 (= res!300115 (and (is-Intermediate!3927 lt!225461) (not (undefined!4739 lt!225461)) (bvslt (x!46966 lt!225461) #b01111111111111111111111111111110) (bvsge (x!46966 lt!225461) #b00000000000000000000000000000000) (bvsge (x!46966 lt!225461) #b00000000000000000000000000000000)))))

(assert (=> b!497794 (=> (not res!300115) (not e!291782))))

(declare-fun b!497795 () Bool)

(assert (=> b!497795 (= e!291778 (bvsge (x!46966 lt!225461) #b01111111111111111111111111111110))))

(declare-fun b!497796 () Bool)

(assert (=> b!497796 (and (bvsge (index!17889 lt!225461) #b00000000000000000000000000000000) (bvslt (index!17889 lt!225461) (size!15817 lt!225270)))))

(declare-fun res!300116 () Bool)

(assert (=> b!497796 (= res!300116 (= (select (arr!15453 lt!225270) (index!17889 lt!225461)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!497796 (=> res!300116 e!291779)))

(declare-fun b!497797 () Bool)

(assert (=> b!497797 (and (bvsge (index!17889 lt!225461) #b00000000000000000000000000000000) (bvslt (index!17889 lt!225461) (size!15817 lt!225270)))))

(declare-fun res!300114 () Bool)

(assert (=> b!497797 (= res!300114 (= (select (arr!15453 lt!225270) (index!17889 lt!225461)) lt!225266))))

(assert (=> b!497797 (=> res!300114 e!291779)))

(assert (=> b!497797 (= e!291782 e!291779)))

(declare-fun b!497798 () Bool)

(assert (=> b!497798 (= e!291781 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!225269 #b00000000000000000000000000000000 mask!3524) lt!225266 lt!225270 mask!3524))))

(assert (= (and d!78339 c!59116) b!497791))

(assert (= (and d!78339 (not c!59116)) b!497793))

(assert (= (and b!497793 c!59115) b!497792))

(assert (= (and b!497793 (not c!59115)) b!497798))

(assert (= (and d!78339 c!59117) b!497795))

(assert (= (and d!78339 (not c!59117)) b!497794))

(assert (= (and b!497794 res!300115) b!497797))

(assert (= (and b!497797 (not res!300114)) b!497796))

(assert (= (and b!497796 (not res!300116)) b!497790))

(declare-fun m!479159 () Bool)

(assert (=> b!497796 m!479159))

(assert (=> b!497790 m!479159))

(declare-fun m!479161 () Bool)

(assert (=> b!497798 m!479161))

(assert (=> b!497798 m!479161))

(declare-fun m!479163 () Bool)

(assert (=> b!497798 m!479163))

(assert (=> b!497797 m!479159))

(declare-fun m!479165 () Bool)

(assert (=> d!78339 m!479165))

(assert (=> d!78339 m!478847))

(assert (=> b!497414 d!78339))

(declare-fun b!497821 () Bool)

(declare-fun e!291799 () Bool)

(declare-fun contains!2722 (List!9664 (_ BitVec 64)) Bool)

(assert (=> b!497821 (= e!291799 (contains!2722 Nil!9661 (select (arr!15453 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!497822 () Bool)

(declare-fun e!291802 () Bool)

(declare-fun call!31448 () Bool)

(assert (=> b!497822 (= e!291802 call!31448)))

(declare-fun b!497823 () Bool)

(declare-fun e!291800 () Bool)

(assert (=> b!497823 (= e!291800 e!291802)))

(declare-fun c!59123 () Bool)

(assert (=> b!497823 (= c!59123 (validKeyInArray!0 (select (arr!15453 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31445 () Bool)

(assert (=> bm!31445 (= call!31448 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!59123 (Cons!9660 (select (arr!15453 a!3235) #b00000000000000000000000000000000) Nil!9661) Nil!9661)))))

(declare-fun d!78341 () Bool)

(declare-fun res!300130 () Bool)

(declare-fun e!291801 () Bool)

(assert (=> d!78341 (=> res!300130 e!291801)))

(assert (=> d!78341 (= res!300130 (bvsge #b00000000000000000000000000000000 (size!15817 a!3235)))))

