; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44618 () Bool)

(assert start!44618)

(declare-fun b!489104 () Bool)

(declare-fun res!292197 () Bool)

(declare-fun e!287693 () Bool)

(assert (=> b!489104 (=> (not res!292197) (not e!287693))))

(declare-datatypes ((array!31637 0))(
  ( (array!31638 (arr!15203 (Array (_ BitVec 32) (_ BitVec 64))) (size!15567 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31637)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31637 (_ BitVec 32)) Bool)

(assert (=> b!489104 (= res!292197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489105 () Bool)

(declare-fun res!292198 () Bool)

(declare-fun e!287692 () Bool)

(assert (=> b!489105 (=> (not res!292198) (not e!287692))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489105 (= res!292198 (validKeyInArray!0 (select (arr!15203 a!3235) j!176)))))

(declare-fun b!489106 () Bool)

(declare-fun e!287694 () Bool)

(declare-datatypes ((SeekEntryResult!3677 0))(
  ( (MissingZero!3677 (index!16887 (_ BitVec 32))) (Found!3677 (index!16888 (_ BitVec 32))) (Intermediate!3677 (undefined!4489 Bool) (index!16889 (_ BitVec 32)) (x!46026 (_ BitVec 32))) (Undefined!3677) (MissingVacant!3677 (index!16890 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31637 (_ BitVec 32)) SeekEntryResult!3677)

(assert (=> b!489106 (= e!287694 (= (seekEntryOrOpen!0 (select (arr!15203 a!3235) j!176) a!3235 mask!3524) (Found!3677 j!176)))))

(declare-fun b!489107 () Bool)

(declare-fun res!292194 () Bool)

(assert (=> b!489107 (=> (not res!292194) (not e!287693))))

(declare-datatypes ((List!9414 0))(
  ( (Nil!9411) (Cons!9410 (h!10272 (_ BitVec 64)) (t!15650 List!9414)) )
))
(declare-fun arrayNoDuplicates!0 (array!31637 (_ BitVec 32) List!9414) Bool)

(assert (=> b!489107 (= res!292194 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9411))))

(declare-fun res!292193 () Bool)

(assert (=> start!44618 (=> (not res!292193) (not e!287692))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44618 (= res!292193 (validMask!0 mask!3524))))

(assert (=> start!44618 e!287692))

(assert (=> start!44618 true))

(declare-fun array_inv!10977 (array!31637) Bool)

(assert (=> start!44618 (array_inv!10977 a!3235)))

(declare-fun b!489108 () Bool)

(declare-fun e!287691 () Bool)

(assert (=> b!489108 (= e!287693 (not e!287691))))

(declare-fun res!292196 () Bool)

(assert (=> b!489108 (=> res!292196 e!287691)))

(declare-fun lt!220698 () (_ BitVec 32))

(assert (=> b!489108 (= res!292196 (or (bvslt mask!3524 #b00000000000000000000000000000000) (bvslt lt!220698 #b00000000000000000000000000000000) (bvsge lt!220698 (bvadd #b00000000000000000000000000000001 mask!3524))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489108 (= lt!220698 (toIndex!0 (select (store (arr!15203 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489108 e!287694))

(declare-fun res!292191 () Bool)

(assert (=> b!489108 (=> (not res!292191) (not e!287694))))

(assert (=> b!489108 (= res!292191 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14292 0))(
  ( (Unit!14293) )
))
(declare-fun lt!220700 () Unit!14292)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31637 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14292)

(assert (=> b!489108 (= lt!220700 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489109 () Bool)

(assert (=> b!489109 (= e!287691 (validKeyInArray!0 (select (store (arr!15203 a!3235) i!1204 k!2280) j!176)))))

(declare-fun b!489110 () Bool)

(declare-fun res!292199 () Bool)

(assert (=> b!489110 (=> (not res!292199) (not e!287692))))

(declare-fun arrayContainsKey!0 (array!31637 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489110 (= res!292199 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489111 () Bool)

(declare-fun res!292195 () Bool)

(assert (=> b!489111 (=> (not res!292195) (not e!287692))))

(assert (=> b!489111 (= res!292195 (and (= (size!15567 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15567 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15567 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489112 () Bool)

(declare-fun res!292190 () Bool)

(assert (=> b!489112 (=> (not res!292190) (not e!287692))))

(assert (=> b!489112 (= res!292190 (validKeyInArray!0 k!2280))))

(declare-fun b!489113 () Bool)

(assert (=> b!489113 (= e!287692 e!287693)))

(declare-fun res!292192 () Bool)

(assert (=> b!489113 (=> (not res!292192) (not e!287693))))

(declare-fun lt!220699 () SeekEntryResult!3677)

(assert (=> b!489113 (= res!292192 (or (= lt!220699 (MissingZero!3677 i!1204)) (= lt!220699 (MissingVacant!3677 i!1204))))))

(assert (=> b!489113 (= lt!220699 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!44618 res!292193) b!489111))

(assert (= (and b!489111 res!292195) b!489105))

(assert (= (and b!489105 res!292198) b!489112))

(assert (= (and b!489112 res!292190) b!489110))

(assert (= (and b!489110 res!292199) b!489113))

(assert (= (and b!489113 res!292192) b!489104))

(assert (= (and b!489104 res!292197) b!489107))

(assert (= (and b!489107 res!292194) b!489108))

(assert (= (and b!489108 res!292191) b!489106))

(assert (= (and b!489108 (not res!292196)) b!489109))

(declare-fun m!468875 () Bool)

(assert (=> b!489112 m!468875))

(declare-fun m!468877 () Bool)

(assert (=> b!489108 m!468877))

(declare-fun m!468879 () Bool)

(assert (=> b!489108 m!468879))

(declare-fun m!468881 () Bool)

(assert (=> b!489108 m!468881))

(declare-fun m!468883 () Bool)

(assert (=> b!489108 m!468883))

(assert (=> b!489108 m!468881))

(declare-fun m!468885 () Bool)

(assert (=> b!489108 m!468885))

(assert (=> b!489109 m!468877))

(assert (=> b!489109 m!468881))

(assert (=> b!489109 m!468881))

(declare-fun m!468887 () Bool)

(assert (=> b!489109 m!468887))

(declare-fun m!468889 () Bool)

(assert (=> b!489104 m!468889))

(declare-fun m!468891 () Bool)

(assert (=> b!489106 m!468891))

(assert (=> b!489106 m!468891))

(declare-fun m!468893 () Bool)

(assert (=> b!489106 m!468893))

(declare-fun m!468895 () Bool)

(assert (=> b!489113 m!468895))

(assert (=> b!489105 m!468891))

(assert (=> b!489105 m!468891))

(declare-fun m!468897 () Bool)

(assert (=> b!489105 m!468897))

(declare-fun m!468899 () Bool)

(assert (=> b!489110 m!468899))

(declare-fun m!468901 () Bool)

(assert (=> start!44618 m!468901))

(declare-fun m!468903 () Bool)

(assert (=> start!44618 m!468903))

(declare-fun m!468905 () Bool)

(assert (=> b!489107 m!468905))

(push 1)

(assert (not start!44618))

(assert (not b!489109))

(assert (not b!489112))

