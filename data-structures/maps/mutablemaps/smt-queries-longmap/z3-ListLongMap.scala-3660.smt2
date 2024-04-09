; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50596 () Bool)

(assert start!50596)

(declare-fun b!552380 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!34775 0))(
  ( (array!34776 (arr!16693 (Array (_ BitVec 32) (_ BitVec 64))) (size!17057 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34775)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!318757 () Bool)

(declare-datatypes ((SeekEntryResult!5149 0))(
  ( (MissingZero!5149 (index!22823 (_ BitVec 32))) (Found!5149 (index!22824 (_ BitVec 32))) (Intermediate!5149 (undefined!5961 Bool) (index!22825 (_ BitVec 32)) (x!51786 (_ BitVec 32))) (Undefined!5149) (MissingVacant!5149 (index!22826 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34775 (_ BitVec 32)) SeekEntryResult!5149)

(assert (=> b!552380 (= e!318757 (= (seekEntryOrOpen!0 (select (arr!16693 a!3118) j!142) a!3118 mask!3119) (Found!5149 j!142)))))

(declare-fun b!552381 () Bool)

(declare-fun res!344943 () Bool)

(declare-fun e!318755 () Bool)

(assert (=> b!552381 (=> (not res!344943) (not e!318755))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552381 (= res!344943 (validKeyInArray!0 (select (arr!16693 a!3118) j!142)))))

(declare-fun b!552382 () Bool)

(declare-fun e!318756 () Bool)

(assert (=> b!552382 (= e!318755 e!318756)))

(declare-fun res!344948 () Bool)

(assert (=> b!552382 (=> (not res!344948) (not e!318756))))

(declare-fun lt!251180 () SeekEntryResult!5149)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!552382 (= res!344948 (or (= lt!251180 (MissingZero!5149 i!1132)) (= lt!251180 (MissingVacant!5149 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!552382 (= lt!251180 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!552383 () Bool)

(declare-fun res!344945 () Bool)

(assert (=> b!552383 (=> (not res!344945) (not e!318755))))

(assert (=> b!552383 (= res!344945 (validKeyInArray!0 k0!1914))))

(declare-fun b!552384 () Bool)

(declare-fun res!344949 () Bool)

(assert (=> b!552384 (=> (not res!344949) (not e!318755))))

(declare-fun arrayContainsKey!0 (array!34775 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552384 (= res!344949 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!552385 () Bool)

(assert (=> b!552385 (= e!318756 (not true))))

(assert (=> b!552385 e!318757))

(declare-fun res!344946 () Bool)

(assert (=> b!552385 (=> (not res!344946) (not e!318757))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34775 (_ BitVec 32)) Bool)

(assert (=> b!552385 (= res!344946 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17072 0))(
  ( (Unit!17073) )
))
(declare-fun lt!251179 () Unit!17072)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34775 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17072)

(assert (=> b!552385 (= lt!251179 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!552386 () Bool)

(declare-fun res!344951 () Bool)

(assert (=> b!552386 (=> (not res!344951) (not e!318756))))

(assert (=> b!552386 (= res!344951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!552387 () Bool)

(declare-fun res!344947 () Bool)

(assert (=> b!552387 (=> (not res!344947) (not e!318756))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34775 (_ BitVec 32)) SeekEntryResult!5149)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552387 (= res!344947 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16693 a!3118) j!142) mask!3119) (select (arr!16693 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16693 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16693 a!3118) i!1132 k0!1914) j!142) (array!34776 (store (arr!16693 a!3118) i!1132 k0!1914) (size!17057 a!3118)) mask!3119)))))

(declare-fun res!344950 () Bool)

(assert (=> start!50596 (=> (not res!344950) (not e!318755))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50596 (= res!344950 (validMask!0 mask!3119))))

(assert (=> start!50596 e!318755))

(assert (=> start!50596 true))

(declare-fun array_inv!12467 (array!34775) Bool)

(assert (=> start!50596 (array_inv!12467 a!3118)))

(declare-fun b!552388 () Bool)

(declare-fun res!344942 () Bool)

(assert (=> b!552388 (=> (not res!344942) (not e!318756))))

(declare-datatypes ((List!10826 0))(
  ( (Nil!10823) (Cons!10822 (h!11807 (_ BitVec 64)) (t!17062 List!10826)) )
))
(declare-fun arrayNoDuplicates!0 (array!34775 (_ BitVec 32) List!10826) Bool)

(assert (=> b!552388 (= res!344942 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10823))))

(declare-fun b!552389 () Bool)

(declare-fun res!344944 () Bool)

(assert (=> b!552389 (=> (not res!344944) (not e!318755))))

(assert (=> b!552389 (= res!344944 (and (= (size!17057 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17057 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17057 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50596 res!344950) b!552389))

(assert (= (and b!552389 res!344944) b!552381))

(assert (= (and b!552381 res!344943) b!552383))

(assert (= (and b!552383 res!344945) b!552384))

(assert (= (and b!552384 res!344949) b!552382))

(assert (= (and b!552382 res!344948) b!552386))

(assert (= (and b!552386 res!344951) b!552388))

(assert (= (and b!552388 res!344942) b!552387))

(assert (= (and b!552387 res!344947) b!552385))

(assert (= (and b!552385 res!344946) b!552380))

(declare-fun m!529333 () Bool)

(assert (=> b!552387 m!529333))

(declare-fun m!529335 () Bool)

(assert (=> b!552387 m!529335))

(assert (=> b!552387 m!529333))

(declare-fun m!529337 () Bool)

(assert (=> b!552387 m!529337))

(declare-fun m!529339 () Bool)

(assert (=> b!552387 m!529339))

(assert (=> b!552387 m!529337))

(declare-fun m!529341 () Bool)

(assert (=> b!552387 m!529341))

(assert (=> b!552387 m!529335))

(assert (=> b!552387 m!529333))

(declare-fun m!529343 () Bool)

(assert (=> b!552387 m!529343))

(declare-fun m!529345 () Bool)

(assert (=> b!552387 m!529345))

(assert (=> b!552387 m!529337))

(assert (=> b!552387 m!529339))

(declare-fun m!529347 () Bool)

(assert (=> b!552382 m!529347))

(declare-fun m!529349 () Bool)

(assert (=> b!552384 m!529349))

(declare-fun m!529351 () Bool)

(assert (=> b!552383 m!529351))

(declare-fun m!529353 () Bool)

(assert (=> start!50596 m!529353))

(declare-fun m!529355 () Bool)

(assert (=> start!50596 m!529355))

(assert (=> b!552380 m!529333))

(assert (=> b!552380 m!529333))

(declare-fun m!529357 () Bool)

(assert (=> b!552380 m!529357))

(declare-fun m!529359 () Bool)

(assert (=> b!552388 m!529359))

(assert (=> b!552381 m!529333))

(assert (=> b!552381 m!529333))

(declare-fun m!529361 () Bool)

(assert (=> b!552381 m!529361))

(declare-fun m!529363 () Bool)

(assert (=> b!552386 m!529363))

(declare-fun m!529365 () Bool)

(assert (=> b!552385 m!529365))

(declare-fun m!529367 () Bool)

(assert (=> b!552385 m!529367))

(check-sat (not b!552385) (not b!552381) (not b!552388) (not b!552380) (not b!552386) (not b!552383) (not b!552384) (not b!552387) (not start!50596) (not b!552382))
(check-sat)
