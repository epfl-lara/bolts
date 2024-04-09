; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45050 () Bool)

(assert start!45050)

(declare-fun b!494051 () Bool)

(declare-fun res!296773 () Bool)

(declare-fun e!290002 () Bool)

(assert (=> b!494051 (=> res!296773 e!290002)))

(declare-datatypes ((SeekEntryResult!3833 0))(
  ( (MissingZero!3833 (index!17511 (_ BitVec 32))) (Found!3833 (index!17512 (_ BitVec 32))) (Intermediate!3833 (undefined!4645 Bool) (index!17513 (_ BitVec 32)) (x!46610 (_ BitVec 32))) (Undefined!3833) (MissingVacant!3833 (index!17514 (_ BitVec 32))) )
))
(declare-fun lt!223620 () SeekEntryResult!3833)

(assert (=> b!494051 (= res!296773 (or (not (is-Intermediate!3833 lt!223620)) (not (undefined!4645 lt!223620))))))

(declare-fun b!494052 () Bool)

(declare-fun res!296776 () Bool)

(declare-fun e!290000 () Bool)

(assert (=> b!494052 (=> (not res!296776) (not e!290000))))

(declare-datatypes ((array!31955 0))(
  ( (array!31956 (arr!15359 (Array (_ BitVec 32) (_ BitVec 64))) (size!15723 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31955)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494052 (= res!296776 (validKeyInArray!0 (select (arr!15359 a!3235) j!176)))))

(declare-fun b!494053 () Bool)

(declare-fun res!296778 () Bool)

(assert (=> b!494053 (=> (not res!296778) (not e!290000))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!494053 (= res!296778 (validKeyInArray!0 k!2280))))

(declare-fun b!494054 () Bool)

(declare-fun e!289999 () Bool)

(assert (=> b!494054 (= e!290000 e!289999)))

(declare-fun res!296771 () Bool)

(assert (=> b!494054 (=> (not res!296771) (not e!289999))))

(declare-fun lt!223618 () SeekEntryResult!3833)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!494054 (= res!296771 (or (= lt!223618 (MissingZero!3833 i!1204)) (= lt!223618 (MissingVacant!3833 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31955 (_ BitVec 32)) SeekEntryResult!3833)

(assert (=> b!494054 (= lt!223618 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!494055 () Bool)

(declare-fun res!296779 () Bool)

(assert (=> b!494055 (=> (not res!296779) (not e!289999))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31955 (_ BitVec 32)) Bool)

(assert (=> b!494055 (= res!296779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494056 () Bool)

(declare-fun res!296775 () Bool)

(assert (=> b!494056 (=> (not res!296775) (not e!289999))))

(declare-datatypes ((List!9570 0))(
  ( (Nil!9567) (Cons!9566 (h!10434 (_ BitVec 64)) (t!15806 List!9570)) )
))
(declare-fun arrayNoDuplicates!0 (array!31955 (_ BitVec 32) List!9570) Bool)

(assert (=> b!494056 (= res!296775 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9567))))

(declare-fun b!494057 () Bool)

(assert (=> b!494057 (= e!290002 true)))

(declare-fun lt!223617 () SeekEntryResult!3833)

(assert (=> b!494057 (= lt!223617 Undefined!3833)))

(declare-fun res!296777 () Bool)

(assert (=> start!45050 (=> (not res!296777) (not e!290000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45050 (= res!296777 (validMask!0 mask!3524))))

(assert (=> start!45050 e!290000))

(assert (=> start!45050 true))

(declare-fun array_inv!11133 (array!31955) Bool)

(assert (=> start!45050 (array_inv!11133 a!3235)))

(declare-fun b!494058 () Bool)

(assert (=> b!494058 (= e!289999 (not e!290002))))

(declare-fun res!296772 () Bool)

(assert (=> b!494058 (=> res!296772 e!290002)))

(declare-fun lt!223622 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31955 (_ BitVec 32)) SeekEntryResult!3833)

(assert (=> b!494058 (= res!296772 (= lt!223620 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223622 (select (store (arr!15359 a!3235) i!1204 k!2280) j!176) (array!31956 (store (arr!15359 a!3235) i!1204 k!2280) (size!15723 a!3235)) mask!3524)))))

(declare-fun lt!223621 () (_ BitVec 32))

(assert (=> b!494058 (= lt!223620 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223621 (select (arr!15359 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494058 (= lt!223622 (toIndex!0 (select (store (arr!15359 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!494058 (= lt!223621 (toIndex!0 (select (arr!15359 a!3235) j!176) mask!3524))))

(assert (=> b!494058 (= lt!223617 (Found!3833 j!176))))

(assert (=> b!494058 (= lt!223617 (seekEntryOrOpen!0 (select (arr!15359 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!494058 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14604 0))(
  ( (Unit!14605) )
))
(declare-fun lt!223619 () Unit!14604)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31955 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14604)

(assert (=> b!494058 (= lt!223619 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494059 () Bool)

(declare-fun res!296780 () Bool)

(assert (=> b!494059 (=> (not res!296780) (not e!290000))))

(assert (=> b!494059 (= res!296780 (and (= (size!15723 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15723 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15723 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494060 () Bool)

(declare-fun res!296774 () Bool)

(assert (=> b!494060 (=> (not res!296774) (not e!290000))))

(declare-fun arrayContainsKey!0 (array!31955 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494060 (= res!296774 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!45050 res!296777) b!494059))

(assert (= (and b!494059 res!296780) b!494052))

(assert (= (and b!494052 res!296776) b!494053))

(assert (= (and b!494053 res!296778) b!494060))

(assert (= (and b!494060 res!296774) b!494054))

(assert (= (and b!494054 res!296771) b!494055))

(assert (= (and b!494055 res!296779) b!494056))

(assert (= (and b!494056 res!296775) b!494058))

(assert (= (and b!494058 (not res!296772)) b!494051))

(assert (= (and b!494051 (not res!296773)) b!494057))

(declare-fun m!475093 () Bool)

(assert (=> b!494056 m!475093))

(declare-fun m!475095 () Bool)

(assert (=> b!494052 m!475095))

(assert (=> b!494052 m!475095))

(declare-fun m!475097 () Bool)

(assert (=> b!494052 m!475097))

(declare-fun m!475099 () Bool)

(assert (=> b!494060 m!475099))

(declare-fun m!475101 () Bool)

(assert (=> b!494055 m!475101))

(declare-fun m!475103 () Bool)

(assert (=> b!494054 m!475103))

(declare-fun m!475105 () Bool)

(assert (=> start!45050 m!475105))

(declare-fun m!475107 () Bool)

(assert (=> start!45050 m!475107))

(declare-fun m!475109 () Bool)

(assert (=> b!494053 m!475109))

(declare-fun m!475111 () Bool)

(assert (=> b!494058 m!475111))

(declare-fun m!475113 () Bool)

(assert (=> b!494058 m!475113))

(declare-fun m!475115 () Bool)

(assert (=> b!494058 m!475115))

(assert (=> b!494058 m!475095))

(declare-fun m!475117 () Bool)

(assert (=> b!494058 m!475117))

(assert (=> b!494058 m!475095))

(declare-fun m!475119 () Bool)

(assert (=> b!494058 m!475119))

(assert (=> b!494058 m!475095))

(declare-fun m!475121 () Bool)

(assert (=> b!494058 m!475121))

(assert (=> b!494058 m!475095))

(declare-fun m!475123 () Bool)

(assert (=> b!494058 m!475123))

(assert (=> b!494058 m!475115))

(declare-fun m!475125 () Bool)

(assert (=> b!494058 m!475125))

(assert (=> b!494058 m!475115))

(declare-fun m!475127 () Bool)

(assert (=> b!494058 m!475127))

(push 1)

