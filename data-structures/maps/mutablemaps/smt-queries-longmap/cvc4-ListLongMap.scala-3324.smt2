; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45902 () Bool)

(assert start!45902)

(declare-fun b!508120 () Bool)

(declare-fun e!297276 () Bool)

(assert (=> b!508120 (= e!297276 (not true))))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((array!32618 0))(
  ( (array!32619 (arr!15686 (Array (_ BitVec 32) (_ BitVec 64))) (size!16050 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32618)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32618 (_ BitVec 32)) Bool)

(assert (=> b!508120 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15570 0))(
  ( (Unit!15571) )
))
(declare-fun lt!232165 () Unit!15570)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32618 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15570)

(assert (=> b!508120 (= lt!232165 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!309232 () Bool)

(declare-fun e!297277 () Bool)

(assert (=> start!45902 (=> (not res!309232) (not e!297277))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45902 (= res!309232 (validMask!0 mask!3524))))

(assert (=> start!45902 e!297277))

(assert (=> start!45902 true))

(declare-fun array_inv!11460 (array!32618) Bool)

(assert (=> start!45902 (array_inv!11460 a!3235)))

(declare-fun b!508121 () Bool)

(assert (=> b!508121 (= e!297277 e!297276)))

(declare-fun res!309236 () Bool)

(assert (=> b!508121 (=> (not res!309236) (not e!297276))))

(declare-datatypes ((SeekEntryResult!4160 0))(
  ( (MissingZero!4160 (index!18828 (_ BitVec 32))) (Found!4160 (index!18829 (_ BitVec 32))) (Intermediate!4160 (undefined!4972 Bool) (index!18830 (_ BitVec 32)) (x!47836 (_ BitVec 32))) (Undefined!4160) (MissingVacant!4160 (index!18831 (_ BitVec 32))) )
))
(declare-fun lt!232166 () SeekEntryResult!4160)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508121 (= res!309236 (or (= lt!232166 (MissingZero!4160 i!1204)) (= lt!232166 (MissingVacant!4160 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32618 (_ BitVec 32)) SeekEntryResult!4160)

(assert (=> b!508121 (= lt!232166 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!508122 () Bool)

(declare-fun res!309229 () Bool)

(assert (=> b!508122 (=> (not res!309229) (not e!297277))))

(declare-fun arrayContainsKey!0 (array!32618 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508122 (= res!309229 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508123 () Bool)

(declare-fun res!309230 () Bool)

(assert (=> b!508123 (=> (not res!309230) (not e!297277))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508123 (= res!309230 (validKeyInArray!0 k!2280))))

(declare-fun b!508124 () Bool)

(declare-fun res!309234 () Bool)

(assert (=> b!508124 (=> (not res!309234) (not e!297277))))

(assert (=> b!508124 (= res!309234 (validKeyInArray!0 (select (arr!15686 a!3235) j!176)))))

(declare-fun b!508125 () Bool)

(declare-fun res!309235 () Bool)

(assert (=> b!508125 (=> (not res!309235) (not e!297276))))

(declare-datatypes ((List!9897 0))(
  ( (Nil!9894) (Cons!9893 (h!10770 (_ BitVec 64)) (t!16133 List!9897)) )
))
(declare-fun arrayNoDuplicates!0 (array!32618 (_ BitVec 32) List!9897) Bool)

(assert (=> b!508125 (= res!309235 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9894))))

(declare-fun b!508126 () Bool)

(declare-fun res!309233 () Bool)

(assert (=> b!508126 (=> (not res!309233) (not e!297276))))

(assert (=> b!508126 (= res!309233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508127 () Bool)

(declare-fun res!309231 () Bool)

(assert (=> b!508127 (=> (not res!309231) (not e!297277))))

(assert (=> b!508127 (= res!309231 (and (= (size!16050 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16050 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16050 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45902 res!309232) b!508127))

(assert (= (and b!508127 res!309231) b!508124))

(assert (= (and b!508124 res!309234) b!508123))

(assert (= (and b!508123 res!309230) b!508122))

(assert (= (and b!508122 res!309229) b!508121))

(assert (= (and b!508121 res!309236) b!508126))

(assert (= (and b!508126 res!309233) b!508125))

(assert (= (and b!508125 res!309235) b!508120))

(declare-fun m!488943 () Bool)

(assert (=> b!508121 m!488943))

(declare-fun m!488945 () Bool)

(assert (=> b!508122 m!488945))

(declare-fun m!488947 () Bool)

(assert (=> start!45902 m!488947))

(declare-fun m!488949 () Bool)

(assert (=> start!45902 m!488949))

(declare-fun m!488951 () Bool)

(assert (=> b!508123 m!488951))

(declare-fun m!488953 () Bool)

(assert (=> b!508126 m!488953))

(declare-fun m!488955 () Bool)

(assert (=> b!508120 m!488955))

(declare-fun m!488957 () Bool)

(assert (=> b!508120 m!488957))

(declare-fun m!488959 () Bool)

(assert (=> b!508125 m!488959))

(declare-fun m!488961 () Bool)

(assert (=> b!508124 m!488961))

(assert (=> b!508124 m!488961))

(declare-fun m!488963 () Bool)

(assert (=> b!508124 m!488963))

(push 1)

(assert (not b!508120))

(assert (not b!508121))

(assert (not b!508124))

(assert (not b!508123))

(assert (not b!508125))

