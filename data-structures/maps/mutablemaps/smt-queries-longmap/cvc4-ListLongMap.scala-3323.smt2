; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45896 () Bool)

(assert start!45896)

(declare-fun b!508050 () Bool)

(declare-fun e!297249 () Bool)

(assert (=> b!508050 (= e!297249 false)))

(declare-fun lt!232147 () Bool)

(declare-datatypes ((array!32612 0))(
  ( (array!32613 (arr!15683 (Array (_ BitVec 32) (_ BitVec 64))) (size!16047 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32612)

(declare-datatypes ((List!9894 0))(
  ( (Nil!9891) (Cons!9890 (h!10767 (_ BitVec 64)) (t!16130 List!9894)) )
))
(declare-fun arrayNoDuplicates!0 (array!32612 (_ BitVec 32) List!9894) Bool)

(assert (=> b!508050 (= lt!232147 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9891))))

(declare-fun b!508051 () Bool)

(declare-fun res!309162 () Bool)

(declare-fun e!297248 () Bool)

(assert (=> b!508051 (=> (not res!309162) (not e!297248))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508051 (= res!309162 (validKeyInArray!0 (select (arr!15683 a!3235) j!176)))))

(declare-fun b!508052 () Bool)

(declare-fun res!309160 () Bool)

(assert (=> b!508052 (=> (not res!309160) (not e!297248))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32612 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508052 (= res!309160 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508053 () Bool)

(declare-fun res!309159 () Bool)

(assert (=> b!508053 (=> (not res!309159) (not e!297248))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508053 (= res!309159 (and (= (size!16047 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16047 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16047 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508054 () Bool)

(declare-fun res!309164 () Bool)

(assert (=> b!508054 (=> (not res!309164) (not e!297249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32612 (_ BitVec 32)) Bool)

(assert (=> b!508054 (= res!309164 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508055 () Bool)

(assert (=> b!508055 (= e!297248 e!297249)))

(declare-fun res!309158 () Bool)

(assert (=> b!508055 (=> (not res!309158) (not e!297249))))

(declare-datatypes ((SeekEntryResult!4157 0))(
  ( (MissingZero!4157 (index!18816 (_ BitVec 32))) (Found!4157 (index!18817 (_ BitVec 32))) (Intermediate!4157 (undefined!4969 Bool) (index!18818 (_ BitVec 32)) (x!47825 (_ BitVec 32))) (Undefined!4157) (MissingVacant!4157 (index!18819 (_ BitVec 32))) )
))
(declare-fun lt!232148 () SeekEntryResult!4157)

(assert (=> b!508055 (= res!309158 (or (= lt!232148 (MissingZero!4157 i!1204)) (= lt!232148 (MissingVacant!4157 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32612 (_ BitVec 32)) SeekEntryResult!4157)

(assert (=> b!508055 (= lt!232148 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!309161 () Bool)

(assert (=> start!45896 (=> (not res!309161) (not e!297248))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45896 (= res!309161 (validMask!0 mask!3524))))

(assert (=> start!45896 e!297248))

(assert (=> start!45896 true))

(declare-fun array_inv!11457 (array!32612) Bool)

(assert (=> start!45896 (array_inv!11457 a!3235)))

(declare-fun b!508049 () Bool)

(declare-fun res!309163 () Bool)

(assert (=> b!508049 (=> (not res!309163) (not e!297248))))

(assert (=> b!508049 (= res!309163 (validKeyInArray!0 k!2280))))

(assert (= (and start!45896 res!309161) b!508053))

(assert (= (and b!508053 res!309159) b!508051))

(assert (= (and b!508051 res!309162) b!508049))

(assert (= (and b!508049 res!309163) b!508052))

(assert (= (and b!508052 res!309160) b!508055))

(assert (= (and b!508055 res!309158) b!508054))

(assert (= (and b!508054 res!309164) b!508050))

(declare-fun m!488881 () Bool)

(assert (=> b!508049 m!488881))

(declare-fun m!488883 () Bool)

(assert (=> b!508051 m!488883))

(assert (=> b!508051 m!488883))

(declare-fun m!488885 () Bool)

(assert (=> b!508051 m!488885))

(declare-fun m!488887 () Bool)

(assert (=> b!508052 m!488887))

(declare-fun m!488889 () Bool)

(assert (=> b!508055 m!488889))

(declare-fun m!488891 () Bool)

(assert (=> b!508054 m!488891))

(declare-fun m!488893 () Bool)

(assert (=> b!508050 m!488893))

(declare-fun m!488895 () Bool)

(assert (=> start!45896 m!488895))

(declare-fun m!488897 () Bool)

(assert (=> start!45896 m!488897))

(push 1)

