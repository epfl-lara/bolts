; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136748 () Bool)

(assert start!136748)

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun e!880350 () Bool)

(declare-fun b!1578293 () Bool)

(declare-datatypes ((SeekEntryResult!13766 0))(
  ( (MissingZero!13766 (index!57461 (_ BitVec 32))) (Found!13766 (index!57462 (_ BitVec 32))) (Intermediate!13766 (undefined!14578 Bool) (index!57463 (_ BitVec 32)) (x!142729 (_ BitVec 32))) (Undefined!13766) (MissingVacant!13766 (index!57464 (_ BitVec 32))) )
))
(declare-fun lt!676180 () SeekEntryResult!13766)

(declare-datatypes ((array!105714 0))(
  ( (array!105715 (arr!50963 (Array (_ BitVec 32) (_ BitVec 64))) (size!51514 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105714)

(get-info :version)

(assert (=> b!1578293 (= e!880350 (and (not ((_ is Undefined!13766) lt!676180)) (not ((_ is Found!13766) lt!676180)) ((_ is MissingVacant!13766) lt!676180) (= (index!57464 lt!676180) vacantSpotIndex!10) (or (bvslt (index!57464 lt!676180) #b00000000000000000000000000000000) (bvsge (index!57464 lt!676180) (size!51514 _keys!614)))))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun k0!772 () (_ BitVec 64))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105714 (_ BitVec 32)) SeekEntryResult!13766)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1578293 (= lt!676180 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!466) (nextIndex!0 ee!18 x!466 mask!918) vacantSpotIndex!10 k0!772 _keys!614 mask!918))))

(declare-fun b!1578291 () Bool)

(declare-fun res!1078424 () Bool)

(assert (=> b!1578291 (=> (not res!1078424) (not e!880350))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578291 (= res!1078424 (validKeyInArray!0 k0!772))))

(declare-fun res!1078422 () Bool)

(assert (=> start!136748 (=> (not res!1078422) (not e!880350))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136748 (= res!1078422 (validMask!0 mask!918))))

(assert (=> start!136748 e!880350))

(assert (=> start!136748 true))

(declare-fun array_inv!39608 (array!105714) Bool)

(assert (=> start!136748 (array_inv!39608 _keys!614)))

(declare-fun b!1578292 () Bool)

(declare-fun res!1078421 () Bool)

(assert (=> b!1578292 (=> (not res!1078421) (not e!880350))))

(assert (=> b!1578292 (= res!1078421 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50963 _keys!614) ee!18) k0!772)) (not (= (select (arr!50963 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1578290 () Bool)

(declare-fun res!1078423 () Bool)

(assert (=> b!1578290 (=> (not res!1078423) (not e!880350))))

(assert (=> b!1578290 (= res!1078423 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51514 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50963 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!136748 res!1078422) b!1578290))

(assert (= (and b!1578290 res!1078423) b!1578291))

(assert (= (and b!1578291 res!1078424) b!1578292))

(assert (= (and b!1578292 res!1078421) b!1578293))

(declare-fun m!1450423 () Bool)

(assert (=> b!1578290 m!1450423))

(declare-fun m!1450425 () Bool)

(assert (=> start!136748 m!1450425))

(declare-fun m!1450427 () Bool)

(assert (=> start!136748 m!1450427))

(declare-fun m!1450429 () Bool)

(assert (=> b!1578291 m!1450429))

(declare-fun m!1450431 () Bool)

(assert (=> b!1578293 m!1450431))

(assert (=> b!1578293 m!1450431))

(declare-fun m!1450433 () Bool)

(assert (=> b!1578293 m!1450433))

(declare-fun m!1450435 () Bool)

(assert (=> b!1578292 m!1450435))

(check-sat (not b!1578293) (not start!136748) (not b!1578291))
(check-sat)
