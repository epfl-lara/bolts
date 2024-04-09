; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52408 () Bool)

(assert start!52408)

(declare-fun b!571373 () Bool)

(declare-fun e!328634 () Bool)

(declare-fun e!328632 () Bool)

(assert (=> b!571373 (= e!328634 e!328632)))

(declare-fun res!361040 () Bool)

(assert (=> b!571373 (=> (not res!361040) (not e!328632))))

(declare-datatypes ((array!35759 0))(
  ( (array!35760 (arr!17164 (Array (_ BitVec 32) (_ BitVec 64))) (size!17528 (_ BitVec 32))) )
))
(declare-fun lt!260596 () array!35759)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!260598 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5620 0))(
  ( (MissingZero!5620 (index!24707 (_ BitVec 32))) (Found!5620 (index!24708 (_ BitVec 32))) (Intermediate!5620 (undefined!6432 Bool) (index!24709 (_ BitVec 32)) (x!53612 (_ BitVec 32))) (Undefined!5620) (MissingVacant!5620 (index!24710 (_ BitVec 32))) )
))
(declare-fun lt!260595 () SeekEntryResult!5620)

(declare-fun lt!260600 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35759 (_ BitVec 32)) SeekEntryResult!5620)

(assert (=> b!571373 (= res!361040 (= lt!260595 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260598 lt!260600 lt!260596 mask!3119)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!260601 () (_ BitVec 32))

(declare-fun a!3118 () array!35759)

(assert (=> b!571373 (= lt!260595 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260601 (select (arr!17164 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!571373 (= lt!260598 (toIndex!0 lt!260600 mask!3119))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!571373 (= lt!260600 (select (store (arr!17164 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!571373 (= lt!260601 (toIndex!0 (select (arr!17164 a!3118) j!142) mask!3119))))

(assert (=> b!571373 (= lt!260596 (array!35760 (store (arr!17164 a!3118) i!1132 k0!1914) (size!17528 a!3118)))))

(declare-fun b!571374 () Bool)

(declare-fun e!328636 () Bool)

(declare-fun e!328635 () Bool)

(assert (=> b!571374 (= e!328636 e!328635)))

(declare-fun res!361037 () Bool)

(assert (=> b!571374 (=> (not res!361037) (not e!328635))))

(declare-fun lt!260599 () SeekEntryResult!5620)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35759 (_ BitVec 32)) SeekEntryResult!5620)

(assert (=> b!571374 (= res!361037 (= lt!260599 (seekKeyOrZeroReturnVacant!0 (x!53612 lt!260595) (index!24709 lt!260595) (index!24709 lt!260595) (select (arr!17164 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!571375 () Bool)

(declare-fun res!361034 () Bool)

(assert (=> b!571375 (=> (not res!361034) (not e!328634))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35759 (_ BitVec 32)) Bool)

(assert (=> b!571375 (= res!361034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!571376 () Bool)

(assert (=> b!571376 (= e!328632 (not true))))

(declare-fun e!328639 () Bool)

(assert (=> b!571376 e!328639))

(declare-fun res!361043 () Bool)

(assert (=> b!571376 (=> (not res!361043) (not e!328639))))

(assert (=> b!571376 (= res!361043 (= lt!260599 (Found!5620 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35759 (_ BitVec 32)) SeekEntryResult!5620)

(assert (=> b!571376 (= lt!260599 (seekEntryOrOpen!0 (select (arr!17164 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!571376 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17942 0))(
  ( (Unit!17943) )
))
(declare-fun lt!260597 () Unit!17942)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35759 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17942)

(assert (=> b!571376 (= lt!260597 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!571377 () Bool)

(declare-fun e!328637 () Bool)

(assert (=> b!571377 (= e!328637 e!328634)))

(declare-fun res!361038 () Bool)

(assert (=> b!571377 (=> (not res!361038) (not e!328634))))

(declare-fun lt!260602 () SeekEntryResult!5620)

(assert (=> b!571377 (= res!361038 (or (= lt!260602 (MissingZero!5620 i!1132)) (= lt!260602 (MissingVacant!5620 i!1132))))))

(assert (=> b!571377 (= lt!260602 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!571378 () Bool)

(declare-fun e!328638 () Bool)

(assert (=> b!571378 (= e!328638 e!328636)))

(declare-fun res!361039 () Bool)

(assert (=> b!571378 (=> res!361039 e!328636)))

(declare-fun lt!260603 () (_ BitVec 64))

(assert (=> b!571378 (= res!361039 (or (= lt!260603 (select (arr!17164 a!3118) j!142)) (= lt!260603 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!571378 (= lt!260603 (select (arr!17164 a!3118) (index!24709 lt!260595)))))

(declare-fun b!571379 () Bool)

(assert (=> b!571379 (= e!328639 e!328638)))

(declare-fun res!361033 () Bool)

(assert (=> b!571379 (=> res!361033 e!328638)))

(get-info :version)

(assert (=> b!571379 (= res!361033 (or (undefined!6432 lt!260595) (not ((_ is Intermediate!5620) lt!260595))))))

(declare-fun b!571380 () Bool)

(declare-fun res!361031 () Bool)

(assert (=> b!571380 (=> (not res!361031) (not e!328637))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!571380 (= res!361031 (validKeyInArray!0 k0!1914))))

(declare-fun b!571381 () Bool)

(declare-fun res!361041 () Bool)

(assert (=> b!571381 (=> (not res!361041) (not e!328637))))

(declare-fun arrayContainsKey!0 (array!35759 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!571381 (= res!361041 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!571382 () Bool)

(declare-fun res!361036 () Bool)

(assert (=> b!571382 (=> (not res!361036) (not e!328637))))

(assert (=> b!571382 (= res!361036 (validKeyInArray!0 (select (arr!17164 a!3118) j!142)))))

(declare-fun res!361032 () Bool)

(assert (=> start!52408 (=> (not res!361032) (not e!328637))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52408 (= res!361032 (validMask!0 mask!3119))))

(assert (=> start!52408 e!328637))

(assert (=> start!52408 true))

(declare-fun array_inv!12938 (array!35759) Bool)

(assert (=> start!52408 (array_inv!12938 a!3118)))

(declare-fun b!571383 () Bool)

(declare-fun res!361035 () Bool)

(assert (=> b!571383 (=> (not res!361035) (not e!328637))))

(assert (=> b!571383 (= res!361035 (and (= (size!17528 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17528 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17528 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!571384 () Bool)

(assert (=> b!571384 (= e!328635 (= (seekEntryOrOpen!0 lt!260600 lt!260596 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53612 lt!260595) (index!24709 lt!260595) (index!24709 lt!260595) lt!260600 lt!260596 mask!3119)))))

(declare-fun b!571385 () Bool)

(declare-fun res!361042 () Bool)

(assert (=> b!571385 (=> (not res!361042) (not e!328634))))

(declare-datatypes ((List!11297 0))(
  ( (Nil!11294) (Cons!11293 (h!12320 (_ BitVec 64)) (t!17533 List!11297)) )
))
(declare-fun arrayNoDuplicates!0 (array!35759 (_ BitVec 32) List!11297) Bool)

(assert (=> b!571385 (= res!361042 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11294))))

(assert (= (and start!52408 res!361032) b!571383))

(assert (= (and b!571383 res!361035) b!571382))

(assert (= (and b!571382 res!361036) b!571380))

(assert (= (and b!571380 res!361031) b!571381))

(assert (= (and b!571381 res!361041) b!571377))

(assert (= (and b!571377 res!361038) b!571375))

(assert (= (and b!571375 res!361034) b!571385))

(assert (= (and b!571385 res!361042) b!571373))

(assert (= (and b!571373 res!361040) b!571376))

(assert (= (and b!571376 res!361043) b!571379))

(assert (= (and b!571379 (not res!361033)) b!571378))

(assert (= (and b!571378 (not res!361039)) b!571374))

(assert (= (and b!571374 res!361037) b!571384))

(declare-fun m!550275 () Bool)

(assert (=> b!571380 m!550275))

(declare-fun m!550277 () Bool)

(assert (=> start!52408 m!550277))

(declare-fun m!550279 () Bool)

(assert (=> start!52408 m!550279))

(declare-fun m!550281 () Bool)

(assert (=> b!571378 m!550281))

(declare-fun m!550283 () Bool)

(assert (=> b!571378 m!550283))

(assert (=> b!571374 m!550281))

(assert (=> b!571374 m!550281))

(declare-fun m!550285 () Bool)

(assert (=> b!571374 m!550285))

(assert (=> b!571382 m!550281))

(assert (=> b!571382 m!550281))

(declare-fun m!550287 () Bool)

(assert (=> b!571382 m!550287))

(declare-fun m!550289 () Bool)

(assert (=> b!571381 m!550289))

(declare-fun m!550291 () Bool)

(assert (=> b!571385 m!550291))

(declare-fun m!550293 () Bool)

(assert (=> b!571375 m!550293))

(assert (=> b!571373 m!550281))

(declare-fun m!550295 () Bool)

(assert (=> b!571373 m!550295))

(assert (=> b!571373 m!550281))

(declare-fun m!550297 () Bool)

(assert (=> b!571373 m!550297))

(assert (=> b!571373 m!550281))

(declare-fun m!550299 () Bool)

(assert (=> b!571373 m!550299))

(declare-fun m!550301 () Bool)

(assert (=> b!571373 m!550301))

(declare-fun m!550303 () Bool)

(assert (=> b!571373 m!550303))

(declare-fun m!550305 () Bool)

(assert (=> b!571373 m!550305))

(declare-fun m!550307 () Bool)

(assert (=> b!571384 m!550307))

(declare-fun m!550309 () Bool)

(assert (=> b!571384 m!550309))

(assert (=> b!571376 m!550281))

(assert (=> b!571376 m!550281))

(declare-fun m!550311 () Bool)

(assert (=> b!571376 m!550311))

(declare-fun m!550313 () Bool)

(assert (=> b!571376 m!550313))

(declare-fun m!550315 () Bool)

(assert (=> b!571376 m!550315))

(declare-fun m!550317 () Bool)

(assert (=> b!571377 m!550317))

(check-sat (not b!571380) (not b!571376) (not start!52408) (not b!571382) (not b!571377) (not b!571374) (not b!571384) (not b!571381) (not b!571385) (not b!571373) (not b!571375))
(check-sat)
