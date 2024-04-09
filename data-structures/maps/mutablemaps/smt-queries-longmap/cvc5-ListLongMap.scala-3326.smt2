; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45958 () Bool)

(assert start!45958)

(declare-fun b!508401 () Bool)

(declare-fun res!309401 () Bool)

(declare-fun e!297442 () Bool)

(assert (=> b!508401 (=> (not res!309401) (not e!297442))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508401 (= res!309401 (validKeyInArray!0 k!2280))))

(declare-fun b!508402 () Bool)

(declare-fun res!309403 () Bool)

(declare-fun e!297439 () Bool)

(assert (=> b!508402 (=> (not res!309403) (not e!297439))))

(declare-datatypes ((array!32629 0))(
  ( (array!32630 (arr!15690 (Array (_ BitVec 32) (_ BitVec 64))) (size!16054 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32629)

(declare-datatypes ((List!9901 0))(
  ( (Nil!9898) (Cons!9897 (h!10774 (_ BitVec 64)) (t!16137 List!9901)) )
))
(declare-fun arrayNoDuplicates!0 (array!32629 (_ BitVec 32) List!9901) Bool)

(assert (=> b!508402 (= res!309403 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9898))))

(declare-fun b!508403 () Bool)

(declare-fun res!309398 () Bool)

(assert (=> b!508403 (=> (not res!309398) (not e!297439))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32629 (_ BitVec 32)) Bool)

(assert (=> b!508403 (= res!309398 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508404 () Bool)

(declare-fun res!309402 () Bool)

(assert (=> b!508404 (=> (not res!309402) (not e!297442))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!508404 (= res!309402 (and (= (size!16054 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16054 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16054 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508405 () Bool)

(declare-fun res!309397 () Bool)

(assert (=> b!508405 (=> (not res!309397) (not e!297442))))

(declare-fun arrayContainsKey!0 (array!32629 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508405 (= res!309397 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508406 () Bool)

(assert (=> b!508406 (= e!297442 e!297439)))

(declare-fun res!309404 () Bool)

(assert (=> b!508406 (=> (not res!309404) (not e!297439))))

(declare-datatypes ((SeekEntryResult!4164 0))(
  ( (MissingZero!4164 (index!18844 (_ BitVec 32))) (Found!4164 (index!18845 (_ BitVec 32))) (Intermediate!4164 (undefined!4976 Bool) (index!18846 (_ BitVec 32)) (x!47856 (_ BitVec 32))) (Undefined!4164) (MissingVacant!4164 (index!18847 (_ BitVec 32))) )
))
(declare-fun lt!232271 () SeekEntryResult!4164)

(assert (=> b!508406 (= res!309404 (or (= lt!232271 (MissingZero!4164 i!1204)) (= lt!232271 (MissingVacant!4164 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32629 (_ BitVec 32)) SeekEntryResult!4164)

(assert (=> b!508406 (= lt!232271 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!309396 () Bool)

(assert (=> start!45958 (=> (not res!309396) (not e!297442))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45958 (= res!309396 (validMask!0 mask!3524))))

(assert (=> start!45958 e!297442))

(assert (=> start!45958 true))

(declare-fun array_inv!11464 (array!32629) Bool)

(assert (=> start!45958 (array_inv!11464 a!3235)))

(declare-fun b!508407 () Bool)

(declare-fun res!309399 () Bool)

(assert (=> b!508407 (=> (not res!309399) (not e!297442))))

(assert (=> b!508407 (= res!309399 (validKeyInArray!0 (select (arr!15690 a!3235) j!176)))))

(declare-fun b!508408 () Bool)

(assert (=> b!508408 (= e!297439 (not true))))

(declare-fun e!297440 () Bool)

(assert (=> b!508408 e!297440))

(declare-fun res!309400 () Bool)

(assert (=> b!508408 (=> (not res!309400) (not e!297440))))

(assert (=> b!508408 (= res!309400 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15578 0))(
  ( (Unit!15579) )
))
(declare-fun lt!232270 () Unit!15578)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32629 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15578)

(assert (=> b!508408 (= lt!232270 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!508409 () Bool)

(assert (=> b!508409 (= e!297440 (= (seekEntryOrOpen!0 (select (arr!15690 a!3235) j!176) a!3235 mask!3524) (Found!4164 j!176)))))

(assert (= (and start!45958 res!309396) b!508404))

(assert (= (and b!508404 res!309402) b!508407))

(assert (= (and b!508407 res!309399) b!508401))

(assert (= (and b!508401 res!309401) b!508405))

(assert (= (and b!508405 res!309397) b!508406))

(assert (= (and b!508406 res!309404) b!508403))

(assert (= (and b!508403 res!309398) b!508402))

(assert (= (and b!508402 res!309403) b!508408))

(assert (= (and b!508408 res!309400) b!508409))

(declare-fun m!489199 () Bool)

(assert (=> start!45958 m!489199))

(declare-fun m!489201 () Bool)

(assert (=> start!45958 m!489201))

(declare-fun m!489203 () Bool)

(assert (=> b!508402 m!489203))

(declare-fun m!489205 () Bool)

(assert (=> b!508401 m!489205))

(declare-fun m!489207 () Bool)

(assert (=> b!508406 m!489207))

(declare-fun m!489209 () Bool)

(assert (=> b!508408 m!489209))

(declare-fun m!489211 () Bool)

(assert (=> b!508408 m!489211))

(declare-fun m!489213 () Bool)

(assert (=> b!508407 m!489213))

(assert (=> b!508407 m!489213))

(declare-fun m!489215 () Bool)

(assert (=> b!508407 m!489215))

(assert (=> b!508409 m!489213))

(assert (=> b!508409 m!489213))

(declare-fun m!489217 () Bool)

(assert (=> b!508409 m!489217))

(declare-fun m!489219 () Bool)

(assert (=> b!508405 m!489219))

(declare-fun m!489221 () Bool)

(assert (=> b!508403 m!489221))

(push 1)

(assert (not b!508401))

(assert (not b!508407))

(assert (not b!508403))

(assert (not b!508409))

(assert (not start!45958))

(assert (not b!508405))

(assert (not b!508406))

(assert (not b!508402))

(assert (not b!508408))

(check-sat)

