; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45074 () Bool)

(assert start!45074)

(declare-fun b!494411 () Bool)

(declare-fun res!297132 () Bool)

(declare-fun e!290146 () Bool)

(assert (=> b!494411 (=> (not res!297132) (not e!290146))))

(declare-datatypes ((array!31979 0))(
  ( (array!31980 (arr!15371 (Array (_ BitVec 32) (_ BitVec 64))) (size!15735 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31979)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31979 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494411 (= res!297132 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494412 () Bool)

(declare-fun res!297139 () Bool)

(assert (=> b!494412 (=> (not res!297139) (not e!290146))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494412 (= res!297139 (validKeyInArray!0 (select (arr!15371 a!3235) j!176)))))

(declare-fun b!494413 () Bool)

(declare-fun res!297138 () Bool)

(declare-fun e!290145 () Bool)

(assert (=> b!494413 (=> res!297138 e!290145)))

(declare-datatypes ((SeekEntryResult!3845 0))(
  ( (MissingZero!3845 (index!17559 (_ BitVec 32))) (Found!3845 (index!17560 (_ BitVec 32))) (Intermediate!3845 (undefined!4657 Bool) (index!17561 (_ BitVec 32)) (x!46654 (_ BitVec 32))) (Undefined!3845) (MissingVacant!3845 (index!17562 (_ BitVec 32))) )
))
(declare-fun lt!223835 () SeekEntryResult!3845)

(assert (=> b!494413 (= res!297138 (or (not (is-Intermediate!3845 lt!223835)) (not (undefined!4657 lt!223835))))))

(declare-fun b!494415 () Bool)

(assert (=> b!494415 (= e!290145 true)))

(declare-fun lt!223834 () SeekEntryResult!3845)

(assert (=> b!494415 (= lt!223834 Undefined!3845)))

(declare-fun b!494416 () Bool)

(declare-fun res!297140 () Bool)

(assert (=> b!494416 (=> (not res!297140) (not e!290146))))

(assert (=> b!494416 (= res!297140 (validKeyInArray!0 k!2280))))

(declare-fun b!494417 () Bool)

(declare-fun res!297134 () Bool)

(declare-fun e!290144 () Bool)

(assert (=> b!494417 (=> (not res!297134) (not e!290144))))

(declare-datatypes ((List!9582 0))(
  ( (Nil!9579) (Cons!9578 (h!10446 (_ BitVec 64)) (t!15818 List!9582)) )
))
(declare-fun arrayNoDuplicates!0 (array!31979 (_ BitVec 32) List!9582) Bool)

(assert (=> b!494417 (= res!297134 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9579))))

(declare-fun b!494418 () Bool)

(assert (=> b!494418 (= e!290144 (not e!290145))))

(declare-fun res!297133 () Bool)

(assert (=> b!494418 (=> res!297133 e!290145)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!223833 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31979 (_ BitVec 32)) SeekEntryResult!3845)

(assert (=> b!494418 (= res!297133 (= lt!223835 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223833 (select (store (arr!15371 a!3235) i!1204 k!2280) j!176) (array!31980 (store (arr!15371 a!3235) i!1204 k!2280) (size!15735 a!3235)) mask!3524)))))

(declare-fun lt!223837 () (_ BitVec 32))

(assert (=> b!494418 (= lt!223835 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223837 (select (arr!15371 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494418 (= lt!223833 (toIndex!0 (select (store (arr!15371 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!494418 (= lt!223837 (toIndex!0 (select (arr!15371 a!3235) j!176) mask!3524))))

(assert (=> b!494418 (= lt!223834 (Found!3845 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31979 (_ BitVec 32)) SeekEntryResult!3845)

(assert (=> b!494418 (= lt!223834 (seekEntryOrOpen!0 (select (arr!15371 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31979 (_ BitVec 32)) Bool)

(assert (=> b!494418 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14628 0))(
  ( (Unit!14629) )
))
(declare-fun lt!223836 () Unit!14628)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31979 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14628)

(assert (=> b!494418 (= lt!223836 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494419 () Bool)

(declare-fun res!297131 () Bool)

(assert (=> b!494419 (=> (not res!297131) (not e!290144))))

(assert (=> b!494419 (= res!297131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494420 () Bool)

(assert (=> b!494420 (= e!290146 e!290144)))

(declare-fun res!297137 () Bool)

(assert (=> b!494420 (=> (not res!297137) (not e!290144))))

(declare-fun lt!223838 () SeekEntryResult!3845)

(assert (=> b!494420 (= res!297137 (or (= lt!223838 (MissingZero!3845 i!1204)) (= lt!223838 (MissingVacant!3845 i!1204))))))

(assert (=> b!494420 (= lt!223838 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!297135 () Bool)

(assert (=> start!45074 (=> (not res!297135) (not e!290146))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45074 (= res!297135 (validMask!0 mask!3524))))

(assert (=> start!45074 e!290146))

(assert (=> start!45074 true))

(declare-fun array_inv!11145 (array!31979) Bool)

(assert (=> start!45074 (array_inv!11145 a!3235)))

(declare-fun b!494414 () Bool)

(declare-fun res!297136 () Bool)

(assert (=> b!494414 (=> (not res!297136) (not e!290146))))

(assert (=> b!494414 (= res!297136 (and (= (size!15735 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15735 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15735 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45074 res!297135) b!494414))

(assert (= (and b!494414 res!297136) b!494412))

(assert (= (and b!494412 res!297139) b!494416))

(assert (= (and b!494416 res!297140) b!494411))

(assert (= (and b!494411 res!297132) b!494420))

(assert (= (and b!494420 res!297137) b!494419))

(assert (= (and b!494419 res!297131) b!494417))

(assert (= (and b!494417 res!297134) b!494418))

(assert (= (and b!494418 (not res!297133)) b!494413))

(assert (= (and b!494413 (not res!297138)) b!494415))

(declare-fun m!475525 () Bool)

(assert (=> b!494420 m!475525))

(declare-fun m!475527 () Bool)

(assert (=> b!494416 m!475527))

(declare-fun m!475529 () Bool)

(assert (=> b!494418 m!475529))

(declare-fun m!475531 () Bool)

(assert (=> b!494418 m!475531))

(declare-fun m!475533 () Bool)

(assert (=> b!494418 m!475533))

(assert (=> b!494418 m!475533))

(declare-fun m!475535 () Bool)

(assert (=> b!494418 m!475535))

(declare-fun m!475537 () Bool)

(assert (=> b!494418 m!475537))

(declare-fun m!475539 () Bool)

(assert (=> b!494418 m!475539))

(assert (=> b!494418 m!475537))

(declare-fun m!475541 () Bool)

(assert (=> b!494418 m!475541))

(assert (=> b!494418 m!475533))

(declare-fun m!475543 () Bool)

(assert (=> b!494418 m!475543))

(assert (=> b!494418 m!475537))

(declare-fun m!475545 () Bool)

(assert (=> b!494418 m!475545))

(assert (=> b!494418 m!475537))

(declare-fun m!475547 () Bool)

(assert (=> b!494418 m!475547))

(assert (=> b!494412 m!475537))

(assert (=> b!494412 m!475537))

(declare-fun m!475549 () Bool)

(assert (=> b!494412 m!475549))

(declare-fun m!475551 () Bool)

(assert (=> b!494417 m!475551))

(declare-fun m!475553 () Bool)

(assert (=> b!494411 m!475553))

(declare-fun m!475555 () Bool)

(assert (=> start!45074 m!475555))

(declare-fun m!475557 () Bool)

(assert (=> start!45074 m!475557))

(declare-fun m!475559 () Bool)

(assert (=> b!494419 m!475559))

(push 1)

