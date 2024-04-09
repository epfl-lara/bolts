; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45090 () Bool)

(assert start!45090)

(declare-fun b!494651 () Bool)

(declare-fun res!297380 () Bool)

(declare-fun e!290240 () Bool)

(assert (=> b!494651 (=> (not res!297380) (not e!290240))))

(declare-datatypes ((array!31995 0))(
  ( (array!31996 (arr!15379 (Array (_ BitVec 32) (_ BitVec 64))) (size!15743 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31995)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31995 (_ BitVec 32)) Bool)

(assert (=> b!494651 (= res!297380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494652 () Bool)

(declare-fun res!297378 () Bool)

(declare-fun e!290241 () Bool)

(assert (=> b!494652 (=> (not res!297378) (not e!290241))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494652 (= res!297378 (validKeyInArray!0 (select (arr!15379 a!3235) j!176)))))

(declare-fun b!494653 () Bool)

(declare-fun res!297374 () Bool)

(assert (=> b!494653 (=> (not res!297374) (not e!290241))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!494653 (= res!297374 (validKeyInArray!0 k0!2280))))

(declare-fun b!494654 () Bool)

(declare-fun res!297372 () Bool)

(assert (=> b!494654 (=> (not res!297372) (not e!290240))))

(declare-datatypes ((List!9590 0))(
  ( (Nil!9587) (Cons!9586 (h!10454 (_ BitVec 64)) (t!15826 List!9590)) )
))
(declare-fun arrayNoDuplicates!0 (array!31995 (_ BitVec 32) List!9590) Bool)

(assert (=> b!494654 (= res!297372 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9587))))

(declare-fun res!297375 () Bool)

(assert (=> start!45090 (=> (not res!297375) (not e!290241))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45090 (= res!297375 (validMask!0 mask!3524))))

(assert (=> start!45090 e!290241))

(assert (=> start!45090 true))

(declare-fun array_inv!11153 (array!31995) Bool)

(assert (=> start!45090 (array_inv!11153 a!3235)))

(declare-fun b!494655 () Bool)

(declare-fun res!297371 () Bool)

(assert (=> b!494655 (=> (not res!297371) (not e!290241))))

(declare-fun arrayContainsKey!0 (array!31995 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494655 (= res!297371 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494656 () Bool)

(declare-fun e!290239 () Bool)

(assert (=> b!494656 (= e!290239 true)))

(declare-datatypes ((SeekEntryResult!3853 0))(
  ( (MissingZero!3853 (index!17591 (_ BitVec 32))) (Found!3853 (index!17592 (_ BitVec 32))) (Intermediate!3853 (undefined!4665 Bool) (index!17593 (_ BitVec 32)) (x!46686 (_ BitVec 32))) (Undefined!3853) (MissingVacant!3853 (index!17594 (_ BitVec 32))) )
))
(declare-fun lt!223982 () SeekEntryResult!3853)

(assert (=> b!494656 (= lt!223982 Undefined!3853)))

(declare-fun b!494657 () Bool)

(declare-fun res!297377 () Bool)

(assert (=> b!494657 (=> (not res!297377) (not e!290241))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!494657 (= res!297377 (and (= (size!15743 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15743 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15743 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494658 () Bool)

(assert (=> b!494658 (= e!290240 (not e!290239))))

(declare-fun res!297379 () Bool)

(assert (=> b!494658 (=> res!297379 e!290239)))

(declare-fun lt!223981 () SeekEntryResult!3853)

(declare-fun lt!223977 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31995 (_ BitVec 32)) SeekEntryResult!3853)

(assert (=> b!494658 (= res!297379 (= lt!223981 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223977 (select (store (arr!15379 a!3235) i!1204 k0!2280) j!176) (array!31996 (store (arr!15379 a!3235) i!1204 k0!2280) (size!15743 a!3235)) mask!3524)))))

(declare-fun lt!223978 () (_ BitVec 32))

(assert (=> b!494658 (= lt!223981 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223978 (select (arr!15379 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494658 (= lt!223977 (toIndex!0 (select (store (arr!15379 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!494658 (= lt!223978 (toIndex!0 (select (arr!15379 a!3235) j!176) mask!3524))))

(assert (=> b!494658 (= lt!223982 (Found!3853 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31995 (_ BitVec 32)) SeekEntryResult!3853)

(assert (=> b!494658 (= lt!223982 (seekEntryOrOpen!0 (select (arr!15379 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!494658 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14644 0))(
  ( (Unit!14645) )
))
(declare-fun lt!223980 () Unit!14644)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31995 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14644)

(assert (=> b!494658 (= lt!223980 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494659 () Bool)

(declare-fun res!297376 () Bool)

(assert (=> b!494659 (=> res!297376 e!290239)))

(get-info :version)

(assert (=> b!494659 (= res!297376 (or (not ((_ is Intermediate!3853) lt!223981)) (not (undefined!4665 lt!223981))))))

(declare-fun b!494660 () Bool)

(assert (=> b!494660 (= e!290241 e!290240)))

(declare-fun res!297373 () Bool)

(assert (=> b!494660 (=> (not res!297373) (not e!290240))))

(declare-fun lt!223979 () SeekEntryResult!3853)

(assert (=> b!494660 (= res!297373 (or (= lt!223979 (MissingZero!3853 i!1204)) (= lt!223979 (MissingVacant!3853 i!1204))))))

(assert (=> b!494660 (= lt!223979 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!45090 res!297375) b!494657))

(assert (= (and b!494657 res!297377) b!494652))

(assert (= (and b!494652 res!297378) b!494653))

(assert (= (and b!494653 res!297374) b!494655))

(assert (= (and b!494655 res!297371) b!494660))

(assert (= (and b!494660 res!297373) b!494651))

(assert (= (and b!494651 res!297380) b!494654))

(assert (= (and b!494654 res!297372) b!494658))

(assert (= (and b!494658 (not res!297379)) b!494659))

(assert (= (and b!494659 (not res!297376)) b!494656))

(declare-fun m!475813 () Bool)

(assert (=> b!494652 m!475813))

(assert (=> b!494652 m!475813))

(declare-fun m!475815 () Bool)

(assert (=> b!494652 m!475815))

(declare-fun m!475817 () Bool)

(assert (=> b!494651 m!475817))

(declare-fun m!475819 () Bool)

(assert (=> b!494660 m!475819))

(declare-fun m!475821 () Bool)

(assert (=> start!45090 m!475821))

(declare-fun m!475823 () Bool)

(assert (=> start!45090 m!475823))

(declare-fun m!475825 () Bool)

(assert (=> b!494658 m!475825))

(declare-fun m!475827 () Bool)

(assert (=> b!494658 m!475827))

(declare-fun m!475829 () Bool)

(assert (=> b!494658 m!475829))

(assert (=> b!494658 m!475829))

(declare-fun m!475831 () Bool)

(assert (=> b!494658 m!475831))

(assert (=> b!494658 m!475813))

(declare-fun m!475833 () Bool)

(assert (=> b!494658 m!475833))

(assert (=> b!494658 m!475813))

(declare-fun m!475835 () Bool)

(assert (=> b!494658 m!475835))

(assert (=> b!494658 m!475813))

(declare-fun m!475837 () Bool)

(assert (=> b!494658 m!475837))

(assert (=> b!494658 m!475813))

(declare-fun m!475839 () Bool)

(assert (=> b!494658 m!475839))

(assert (=> b!494658 m!475829))

(declare-fun m!475841 () Bool)

(assert (=> b!494658 m!475841))

(declare-fun m!475843 () Bool)

(assert (=> b!494655 m!475843))

(declare-fun m!475845 () Bool)

(assert (=> b!494653 m!475845))

(declare-fun m!475847 () Bool)

(assert (=> b!494654 m!475847))

(check-sat (not b!494651) (not b!494654) (not b!494660) (not start!45090) (not b!494652) (not b!494653) (not b!494658) (not b!494655))
(check-sat)
