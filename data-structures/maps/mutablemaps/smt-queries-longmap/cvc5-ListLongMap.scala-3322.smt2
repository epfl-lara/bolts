; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45886 () Bool)

(assert start!45886)

(declare-fun b!507937 () Bool)

(declare-fun res!309047 () Bool)

(declare-fun e!297204 () Bool)

(assert (=> b!507937 (=> (not res!309047) (not e!297204))))

(declare-datatypes ((array!32602 0))(
  ( (array!32603 (arr!15678 (Array (_ BitVec 32) (_ BitVec 64))) (size!16042 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32602)

(declare-datatypes ((List!9889 0))(
  ( (Nil!9886) (Cons!9885 (h!10762 (_ BitVec 64)) (t!16125 List!9889)) )
))
(declare-fun arrayNoDuplicates!0 (array!32602 (_ BitVec 32) List!9889) Bool)

(assert (=> b!507937 (= res!309047 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9886))))

(declare-fun b!507938 () Bool)

(declare-fun res!309050 () Bool)

(declare-fun e!297203 () Bool)

(assert (=> b!507938 (=> (not res!309050) (not e!297203))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!507938 (= res!309050 (and (= (size!16042 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16042 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16042 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507939 () Bool)

(declare-fun res!309053 () Bool)

(assert (=> b!507939 (=> (not res!309053) (not e!297203))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32602 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507939 (= res!309053 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507940 () Bool)

(declare-fun res!309046 () Bool)

(assert (=> b!507940 (=> (not res!309046) (not e!297203))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507940 (= res!309046 (validKeyInArray!0 k!2280))))

(declare-fun b!507941 () Bool)

(declare-fun res!309052 () Bool)

(assert (=> b!507941 (=> (not res!309052) (not e!297203))))

(assert (=> b!507941 (= res!309052 (validKeyInArray!0 (select (arr!15678 a!3235) j!176)))))

(declare-fun res!309048 () Bool)

(assert (=> start!45886 (=> (not res!309048) (not e!297203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45886 (= res!309048 (validMask!0 mask!3524))))

(assert (=> start!45886 e!297203))

(assert (=> start!45886 true))

(declare-fun array_inv!11452 (array!32602) Bool)

(assert (=> start!45886 (array_inv!11452 a!3235)))

(declare-fun b!507942 () Bool)

(assert (=> b!507942 (= e!297203 e!297204)))

(declare-fun res!309051 () Bool)

(assert (=> b!507942 (=> (not res!309051) (not e!297204))))

(declare-datatypes ((SeekEntryResult!4152 0))(
  ( (MissingZero!4152 (index!18796 (_ BitVec 32))) (Found!4152 (index!18797 (_ BitVec 32))) (Intermediate!4152 (undefined!4964 Bool) (index!18798 (_ BitVec 32)) (x!47812 (_ BitVec 32))) (Undefined!4152) (MissingVacant!4152 (index!18799 (_ BitVec 32))) )
))
(declare-fun lt!232124 () SeekEntryResult!4152)

(assert (=> b!507942 (= res!309051 (or (= lt!232124 (MissingZero!4152 i!1204)) (= lt!232124 (MissingVacant!4152 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32602 (_ BitVec 32)) SeekEntryResult!4152)

(assert (=> b!507942 (= lt!232124 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!507943 () Bool)

(assert (=> b!507943 (= e!297204 (and (bvsle #b00000000000000000000000000000000 (size!16042 a!3235)) (bvsgt j!176 (size!16042 a!3235))))))

(declare-fun b!507944 () Bool)

(declare-fun res!309049 () Bool)

(assert (=> b!507944 (=> (not res!309049) (not e!297204))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32602 (_ BitVec 32)) Bool)

(assert (=> b!507944 (= res!309049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45886 res!309048) b!507938))

(assert (= (and b!507938 res!309050) b!507941))

(assert (= (and b!507941 res!309052) b!507940))

(assert (= (and b!507940 res!309046) b!507939))

(assert (= (and b!507939 res!309053) b!507942))

(assert (= (and b!507942 res!309051) b!507944))

(assert (= (and b!507944 res!309049) b!507937))

(assert (= (and b!507937 res!309047) b!507943))

(declare-fun m!488791 () Bool)

(assert (=> start!45886 m!488791))

(declare-fun m!488793 () Bool)

(assert (=> start!45886 m!488793))

(declare-fun m!488795 () Bool)

(assert (=> b!507944 m!488795))

(declare-fun m!488797 () Bool)

(assert (=> b!507937 m!488797))

(declare-fun m!488799 () Bool)

(assert (=> b!507941 m!488799))

(assert (=> b!507941 m!488799))

(declare-fun m!488801 () Bool)

(assert (=> b!507941 m!488801))

(declare-fun m!488803 () Bool)

(assert (=> b!507940 m!488803))

(declare-fun m!488805 () Bool)

(assert (=> b!507939 m!488805))

(declare-fun m!488807 () Bool)

(assert (=> b!507942 m!488807))

(push 1)

(assert (not b!507940))

(assert (not b!507944))

(assert (not b!507941))

(assert (not b!507939))

(assert (not b!507937))

(assert (not b!507942))

(assert (not start!45886))

(check-sat)

(pop 1)

(push 1)

(check-sat)

