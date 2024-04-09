; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45898 () Bool)

(assert start!45898)

(declare-fun b!508072 () Bool)

(declare-fun e!297257 () Bool)

(declare-fun e!297259 () Bool)

(assert (=> b!508072 (= e!297257 e!297259)))

(declare-fun res!309188 () Bool)

(assert (=> b!508072 (=> (not res!309188) (not e!297259))))

(declare-datatypes ((SeekEntryResult!4158 0))(
  ( (MissingZero!4158 (index!18820 (_ BitVec 32))) (Found!4158 (index!18821 (_ BitVec 32))) (Intermediate!4158 (undefined!4970 Bool) (index!18822 (_ BitVec 32)) (x!47834 (_ BitVec 32))) (Undefined!4158) (MissingVacant!4158 (index!18823 (_ BitVec 32))) )
))
(declare-fun lt!232153 () SeekEntryResult!4158)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508072 (= res!309188 (or (= lt!232153 (MissingZero!4158 i!1204)) (= lt!232153 (MissingVacant!4158 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32614 0))(
  ( (array!32615 (arr!15684 (Array (_ BitVec 32) (_ BitVec 64))) (size!16048 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32614)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32614 (_ BitVec 32)) SeekEntryResult!4158)

(assert (=> b!508072 (= lt!232153 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!508073 () Bool)

(declare-fun res!309183 () Bool)

(assert (=> b!508073 (=> (not res!309183) (not e!297259))))

(declare-datatypes ((List!9895 0))(
  ( (Nil!9892) (Cons!9891 (h!10768 (_ BitVec 64)) (t!16131 List!9895)) )
))
(declare-fun arrayNoDuplicates!0 (array!32614 (_ BitVec 32) List!9895) Bool)

(assert (=> b!508073 (= res!309183 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9892))))

(declare-fun b!508074 () Bool)

(declare-fun res!309187 () Bool)

(assert (=> b!508074 (=> (not res!309187) (not e!297259))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32614 (_ BitVec 32)) Bool)

(assert (=> b!508074 (= res!309187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!309185 () Bool)

(assert (=> start!45898 (=> (not res!309185) (not e!297257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45898 (= res!309185 (validMask!0 mask!3524))))

(assert (=> start!45898 e!297257))

(assert (=> start!45898 true))

(declare-fun array_inv!11458 (array!32614) Bool)

(assert (=> start!45898 (array_inv!11458 a!3235)))

(declare-fun b!508075 () Bool)

(declare-fun res!309181 () Bool)

(assert (=> b!508075 (=> (not res!309181) (not e!297257))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!508075 (= res!309181 (and (= (size!16048 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16048 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16048 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508076 () Bool)

(assert (=> b!508076 (= e!297259 (not true))))

(assert (=> b!508076 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15566 0))(
  ( (Unit!15567) )
))
(declare-fun lt!232154 () Unit!15566)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32614 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15566)

(assert (=> b!508076 (= lt!232154 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!508077 () Bool)

(declare-fun res!309184 () Bool)

(assert (=> b!508077 (=> (not res!309184) (not e!297257))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508077 (= res!309184 (validKeyInArray!0 (select (arr!15684 a!3235) j!176)))))

(declare-fun b!508078 () Bool)

(declare-fun res!309186 () Bool)

(assert (=> b!508078 (=> (not res!309186) (not e!297257))))

(declare-fun arrayContainsKey!0 (array!32614 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508078 (= res!309186 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508079 () Bool)

(declare-fun res!309182 () Bool)

(assert (=> b!508079 (=> (not res!309182) (not e!297257))))

(assert (=> b!508079 (= res!309182 (validKeyInArray!0 k!2280))))

(assert (= (and start!45898 res!309185) b!508075))

(assert (= (and b!508075 res!309181) b!508077))

(assert (= (and b!508077 res!309184) b!508079))

(assert (= (and b!508079 res!309182) b!508078))

(assert (= (and b!508078 res!309186) b!508072))

(assert (= (and b!508072 res!309188) b!508074))

(assert (= (and b!508074 res!309187) b!508073))

(assert (= (and b!508073 res!309183) b!508076))

(declare-fun m!488899 () Bool)

(assert (=> start!45898 m!488899))

(declare-fun m!488901 () Bool)

(assert (=> start!45898 m!488901))

(declare-fun m!488903 () Bool)

(assert (=> b!508072 m!488903))

(declare-fun m!488905 () Bool)

(assert (=> b!508078 m!488905))

(declare-fun m!488907 () Bool)

(assert (=> b!508076 m!488907))

(declare-fun m!488909 () Bool)

(assert (=> b!508076 m!488909))

(declare-fun m!488911 () Bool)

(assert (=> b!508073 m!488911))

(declare-fun m!488913 () Bool)

(assert (=> b!508077 m!488913))

(assert (=> b!508077 m!488913))

(declare-fun m!488915 () Bool)

(assert (=> b!508077 m!488915))

(declare-fun m!488917 () Bool)

(assert (=> b!508079 m!488917))

(declare-fun m!488919 () Bool)

(assert (=> b!508074 m!488919))

(push 1)

