; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46006 () Bool)

(assert start!46006)

(declare-fun b!509049 () Bool)

(declare-fun res!310048 () Bool)

(declare-fun e!297730 () Bool)

(assert (=> b!509049 (=> (not res!310048) (not e!297730))))

(declare-datatypes ((array!32677 0))(
  ( (array!32678 (arr!15714 (Array (_ BitVec 32) (_ BitVec 64))) (size!16078 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32677)

(declare-datatypes ((List!9925 0))(
  ( (Nil!9922) (Cons!9921 (h!10798 (_ BitVec 64)) (t!16161 List!9925)) )
))
(declare-fun arrayNoDuplicates!0 (array!32677 (_ BitVec 32) List!9925) Bool)

(assert (=> b!509049 (= res!310048 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9922))))

(declare-fun b!509050 () Bool)

(declare-fun e!297729 () Bool)

(assert (=> b!509050 (= e!297729 e!297730)))

(declare-fun res!310052 () Bool)

(assert (=> b!509050 (=> (not res!310052) (not e!297730))))

(declare-datatypes ((SeekEntryResult!4188 0))(
  ( (MissingZero!4188 (index!18940 (_ BitVec 32))) (Found!4188 (index!18941 (_ BitVec 32))) (Intermediate!4188 (undefined!5000 Bool) (index!18942 (_ BitVec 32)) (x!47944 (_ BitVec 32))) (Undefined!4188) (MissingVacant!4188 (index!18943 (_ BitVec 32))) )
))
(declare-fun lt!232549 () SeekEntryResult!4188)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!509050 (= res!310052 (or (= lt!232549 (MissingZero!4188 i!1204)) (= lt!232549 (MissingVacant!4188 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32677 (_ BitVec 32)) SeekEntryResult!4188)

(assert (=> b!509050 (= lt!232549 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!310045 () Bool)

(assert (=> start!46006 (=> (not res!310045) (not e!297729))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46006 (= res!310045 (validMask!0 mask!3524))))

(assert (=> start!46006 e!297729))

(assert (=> start!46006 true))

(declare-fun array_inv!11488 (array!32677) Bool)

(assert (=> start!46006 (array_inv!11488 a!3235)))

(declare-fun b!509051 () Bool)

(declare-fun res!310049 () Bool)

(assert (=> b!509051 (=> (not res!310049) (not e!297729))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!509051 (= res!310049 (and (= (size!16078 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16078 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16078 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509052 () Bool)

(declare-fun res!310051 () Bool)

(assert (=> b!509052 (=> (not res!310051) (not e!297729))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509052 (= res!310051 (validKeyInArray!0 (select (arr!15714 a!3235) j!176)))))

(declare-fun b!509053 () Bool)

(declare-fun res!310044 () Bool)

(assert (=> b!509053 (=> (not res!310044) (not e!297729))))

(declare-fun arrayContainsKey!0 (array!32677 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509053 (= res!310044 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509054 () Bool)

(declare-fun res!310047 () Bool)

(assert (=> b!509054 (=> (not res!310047) (not e!297729))))

(assert (=> b!509054 (= res!310047 (validKeyInArray!0 k!2280))))

(declare-fun b!509055 () Bool)

(declare-fun res!310050 () Bool)

(assert (=> b!509055 (=> (not res!310050) (not e!297730))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32677 (_ BitVec 32)) Bool)

(assert (=> b!509055 (= res!310050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509056 () Bool)

(declare-fun e!297728 () Bool)

(assert (=> b!509056 (= e!297728 (= (seekEntryOrOpen!0 (select (arr!15714 a!3235) j!176) a!3235 mask!3524) (Found!4188 j!176)))))

(declare-fun b!509057 () Bool)

(assert (=> b!509057 (= e!297730 (not true))))

(declare-fun lt!232550 () (_ BitVec 32))

(declare-fun lt!232548 () SeekEntryResult!4188)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32677 (_ BitVec 32)) SeekEntryResult!4188)

(assert (=> b!509057 (= lt!232548 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232550 (select (store (arr!15714 a!3235) i!1204 k!2280) j!176) (array!32678 (store (arr!15714 a!3235) i!1204 k!2280) (size!16078 a!3235)) mask!3524))))

(declare-fun lt!232553 () (_ BitVec 32))

(declare-fun lt!232551 () SeekEntryResult!4188)

(assert (=> b!509057 (= lt!232551 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232553 (select (arr!15714 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509057 (= lt!232550 (toIndex!0 (select (store (arr!15714 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509057 (= lt!232553 (toIndex!0 (select (arr!15714 a!3235) j!176) mask!3524))))

(assert (=> b!509057 e!297728))

(declare-fun res!310046 () Bool)

(assert (=> b!509057 (=> (not res!310046) (not e!297728))))

(assert (=> b!509057 (= res!310046 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15626 0))(
  ( (Unit!15627) )
))
(declare-fun lt!232552 () Unit!15626)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32677 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15626)

(assert (=> b!509057 (= lt!232552 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46006 res!310045) b!509051))

(assert (= (and b!509051 res!310049) b!509052))

(assert (= (and b!509052 res!310051) b!509054))

(assert (= (and b!509054 res!310047) b!509053))

(assert (= (and b!509053 res!310044) b!509050))

(assert (= (and b!509050 res!310052) b!509055))

(assert (= (and b!509055 res!310050) b!509049))

(assert (= (and b!509049 res!310048) b!509057))

(assert (= (and b!509057 res!310046) b!509056))

(declare-fun m!489907 () Bool)

(assert (=> start!46006 m!489907))

(declare-fun m!489909 () Bool)

(assert (=> start!46006 m!489909))

(declare-fun m!489911 () Bool)

(assert (=> b!509050 m!489911))

(declare-fun m!489913 () Bool)

(assert (=> b!509052 m!489913))

(assert (=> b!509052 m!489913))

(declare-fun m!489915 () Bool)

(assert (=> b!509052 m!489915))

(declare-fun m!489917 () Bool)

(assert (=> b!509055 m!489917))

(declare-fun m!489919 () Bool)

(assert (=> b!509057 m!489919))

(declare-fun m!489921 () Bool)

(assert (=> b!509057 m!489921))

(declare-fun m!489923 () Bool)

(assert (=> b!509057 m!489923))

(declare-fun m!489925 () Bool)

(assert (=> b!509057 m!489925))

(assert (=> b!509057 m!489919))

(assert (=> b!509057 m!489913))

(declare-fun m!489927 () Bool)

(assert (=> b!509057 m!489927))

(assert (=> b!509057 m!489913))

(declare-fun m!489929 () Bool)

(assert (=> b!509057 m!489929))

(assert (=> b!509057 m!489913))

(declare-fun m!489931 () Bool)

(assert (=> b!509057 m!489931))

(assert (=> b!509057 m!489919))

(declare-fun m!489933 () Bool)

(assert (=> b!509057 m!489933))

(declare-fun m!489935 () Bool)

(assert (=> b!509049 m!489935))

(declare-fun m!489937 () Bool)

(assert (=> b!509054 m!489937))

(assert (=> b!509056 m!489913))

(assert (=> b!509056 m!489913))

(declare-fun m!489939 () Bool)

(assert (=> b!509056 m!489939))

(declare-fun m!489941 () Bool)

(assert (=> b!509053 m!489941))

(push 1)

