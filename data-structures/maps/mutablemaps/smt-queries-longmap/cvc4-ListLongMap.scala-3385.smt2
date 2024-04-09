; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46736 () Bool)

(assert start!46736)

(declare-fun b!515647 () Bool)

(declare-fun res!315365 () Bool)

(declare-fun e!301025 () Bool)

(assert (=> b!515647 (=> (not res!315365) (not e!301025))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515647 (= res!315365 (validKeyInArray!0 k!2280))))

(declare-fun b!515648 () Bool)

(declare-fun res!315363 () Bool)

(assert (=> b!515648 (=> (not res!315363) (not e!301025))))

(declare-datatypes ((array!33008 0))(
  ( (array!33009 (arr!15869 (Array (_ BitVec 32) (_ BitVec 64))) (size!16233 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33008)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!515648 (= res!315363 (validKeyInArray!0 (select (arr!15869 a!3235) j!176)))))

(declare-fun b!515649 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!301023 () Bool)

(declare-datatypes ((SeekEntryResult!4343 0))(
  ( (MissingZero!4343 (index!19560 (_ BitVec 32))) (Found!4343 (index!19561 (_ BitVec 32))) (Intermediate!4343 (undefined!5155 Bool) (index!19562 (_ BitVec 32)) (x!48549 (_ BitVec 32))) (Undefined!4343) (MissingVacant!4343 (index!19563 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33008 (_ BitVec 32)) SeekEntryResult!4343)

(assert (=> b!515649 (= e!301023 (= (seekEntryOrOpen!0 (select (arr!15869 a!3235) j!176) a!3235 mask!3524) (Found!4343 j!176)))))

(declare-fun b!515650 () Bool)

(declare-fun res!315370 () Bool)

(assert (=> b!515650 (=> (not res!315370) (not e!301025))))

(declare-fun arrayContainsKey!0 (array!33008 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515650 (= res!315370 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515651 () Bool)

(declare-fun res!315367 () Bool)

(declare-fun e!301026 () Bool)

(assert (=> b!515651 (=> (not res!315367) (not e!301026))))

(declare-datatypes ((List!10080 0))(
  ( (Nil!10077) (Cons!10076 (h!10974 (_ BitVec 64)) (t!16316 List!10080)) )
))
(declare-fun arrayNoDuplicates!0 (array!33008 (_ BitVec 32) List!10080) Bool)

(assert (=> b!515651 (= res!315367 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10077))))

(declare-fun b!515652 () Bool)

(declare-fun res!315371 () Bool)

(assert (=> b!515652 (=> (not res!315371) (not e!301025))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!515652 (= res!315371 (and (= (size!16233 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16233 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16233 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515653 () Bool)

(assert (=> b!515653 (= e!301025 e!301026)))

(declare-fun res!315361 () Bool)

(assert (=> b!515653 (=> (not res!315361) (not e!301026))))

(declare-fun lt!236108 () SeekEntryResult!4343)

(assert (=> b!515653 (= res!315361 (or (= lt!236108 (MissingZero!4343 i!1204)) (= lt!236108 (MissingVacant!4343 i!1204))))))

(assert (=> b!515653 (= lt!236108 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!515654 () Bool)

(declare-fun res!315366 () Bool)

(declare-fun e!301027 () Bool)

(assert (=> b!515654 (=> res!315366 e!301027)))

(declare-fun lt!236107 () SeekEntryResult!4343)

(assert (=> b!515654 (= res!315366 (or (undefined!5155 lt!236107) (not (is-Intermediate!4343 lt!236107))))))

(declare-fun b!515655 () Bool)

(assert (=> b!515655 (= e!301026 (not e!301027))))

(declare-fun res!315369 () Bool)

(assert (=> b!515655 (=> res!315369 e!301027)))

(declare-fun lt!236109 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33008 (_ BitVec 32)) SeekEntryResult!4343)

(assert (=> b!515655 (= res!315369 (= lt!236107 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236109 (select (store (arr!15869 a!3235) i!1204 k!2280) j!176) (array!33009 (store (arr!15869 a!3235) i!1204 k!2280) (size!16233 a!3235)) mask!3524)))))

(declare-fun lt!236110 () (_ BitVec 32))

(assert (=> b!515655 (= lt!236107 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236110 (select (arr!15869 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515655 (= lt!236109 (toIndex!0 (select (store (arr!15869 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!515655 (= lt!236110 (toIndex!0 (select (arr!15869 a!3235) j!176) mask!3524))))

(assert (=> b!515655 e!301023))

(declare-fun res!315368 () Bool)

(assert (=> b!515655 (=> (not res!315368) (not e!301023))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33008 (_ BitVec 32)) Bool)

(assert (=> b!515655 (= res!315368 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15936 0))(
  ( (Unit!15937) )
))
(declare-fun lt!236111 () Unit!15936)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33008 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15936)

(assert (=> b!515655 (= lt!236111 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515656 () Bool)

(declare-fun res!315362 () Bool)

(assert (=> b!515656 (=> (not res!315362) (not e!301026))))

(assert (=> b!515656 (= res!315362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!315364 () Bool)

(assert (=> start!46736 (=> (not res!315364) (not e!301025))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46736 (= res!315364 (validMask!0 mask!3524))))

(assert (=> start!46736 e!301025))

(assert (=> start!46736 true))

(declare-fun array_inv!11643 (array!33008) Bool)

(assert (=> start!46736 (array_inv!11643 a!3235)))

(declare-fun b!515657 () Bool)

(assert (=> b!515657 (= e!301027 true)))

(assert (=> b!515657 (and (bvslt (x!48549 lt!236107) #b01111111111111111111111111111110) (or (= (select (arr!15869 a!3235) (index!19562 lt!236107)) (select (arr!15869 a!3235) j!176)) (= (select (arr!15869 a!3235) (index!19562 lt!236107)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15869 a!3235) (index!19562 lt!236107)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!46736 res!315364) b!515652))

(assert (= (and b!515652 res!315371) b!515648))

(assert (= (and b!515648 res!315363) b!515647))

(assert (= (and b!515647 res!315365) b!515650))

(assert (= (and b!515650 res!315370) b!515653))

(assert (= (and b!515653 res!315361) b!515656))

(assert (= (and b!515656 res!315362) b!515651))

(assert (= (and b!515651 res!315367) b!515655))

(assert (= (and b!515655 res!315368) b!515649))

(assert (= (and b!515655 (not res!315369)) b!515654))

(assert (= (and b!515654 (not res!315366)) b!515657))

(declare-fun m!497081 () Bool)

(assert (=> b!515651 m!497081))

(declare-fun m!497083 () Bool)

(assert (=> b!515650 m!497083))

(declare-fun m!497085 () Bool)

(assert (=> start!46736 m!497085))

(declare-fun m!497087 () Bool)

(assert (=> start!46736 m!497087))

(declare-fun m!497089 () Bool)

(assert (=> b!515653 m!497089))

(declare-fun m!497091 () Bool)

(assert (=> b!515648 m!497091))

(assert (=> b!515648 m!497091))

(declare-fun m!497093 () Bool)

(assert (=> b!515648 m!497093))

(declare-fun m!497095 () Bool)

(assert (=> b!515657 m!497095))

(assert (=> b!515657 m!497091))

(declare-fun m!497097 () Bool)

(assert (=> b!515647 m!497097))

(declare-fun m!497099 () Bool)

(assert (=> b!515656 m!497099))

(assert (=> b!515649 m!497091))

(assert (=> b!515649 m!497091))

(declare-fun m!497101 () Bool)

(assert (=> b!515649 m!497101))

(declare-fun m!497103 () Bool)

(assert (=> b!515655 m!497103))

(declare-fun m!497105 () Bool)

(assert (=> b!515655 m!497105))

(declare-fun m!497107 () Bool)

(assert (=> b!515655 m!497107))

(assert (=> b!515655 m!497091))

(declare-fun m!497109 () Bool)

(assert (=> b!515655 m!497109))

(assert (=> b!515655 m!497091))

(declare-fun m!497111 () Bool)

(assert (=> b!515655 m!497111))

(assert (=> b!515655 m!497091))

(declare-fun m!497113 () Bool)

(assert (=> b!515655 m!497113))

(assert (=> b!515655 m!497107))

(declare-fun m!497115 () Bool)

(assert (=> b!515655 m!497115))

(assert (=> b!515655 m!497107))

(declare-fun m!497117 () Bool)

(assert (=> b!515655 m!497117))

(push 1)

