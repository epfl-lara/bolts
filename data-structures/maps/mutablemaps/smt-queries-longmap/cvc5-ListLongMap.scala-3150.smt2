; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44380 () Bool)

(assert start!44380)

(declare-fun b!487440 () Bool)

(declare-fun res!290870 () Bool)

(declare-fun e!286815 () Bool)

(assert (=> b!487440 (=> (not res!290870) (not e!286815))))

(declare-datatypes ((array!31546 0))(
  ( (array!31547 (arr!15162 (Array (_ BitVec 32) (_ BitVec 64))) (size!15526 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31546)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487440 (= res!290870 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!487442 () Bool)

(declare-fun res!290868 () Bool)

(assert (=> b!487442 (=> (not res!290868) (not e!286815))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487442 (= res!290868 (validKeyInArray!0 (select (arr!15162 a!3235) j!176)))))

(declare-fun b!487443 () Bool)

(declare-fun e!286814 () Bool)

(assert (=> b!487443 (= e!286815 e!286814)))

(declare-fun res!290864 () Bool)

(assert (=> b!487443 (=> (not res!290864) (not e!286814))))

(declare-datatypes ((SeekEntryResult!3636 0))(
  ( (MissingZero!3636 (index!16723 (_ BitVec 32))) (Found!3636 (index!16724 (_ BitVec 32))) (Intermediate!3636 (undefined!4448 Bool) (index!16725 (_ BitVec 32)) (x!45875 (_ BitVec 32))) (Undefined!3636) (MissingVacant!3636 (index!16726 (_ BitVec 32))) )
))
(declare-fun lt!220069 () SeekEntryResult!3636)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!487443 (= res!290864 (or (= lt!220069 (MissingZero!3636 i!1204)) (= lt!220069 (MissingVacant!3636 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31546 (_ BitVec 32)) SeekEntryResult!3636)

(assert (=> b!487443 (= lt!220069 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!487444 () Bool)

(declare-fun res!290866 () Bool)

(assert (=> b!487444 (=> (not res!290866) (not e!286814))))

(declare-datatypes ((List!9373 0))(
  ( (Nil!9370) (Cons!9369 (h!10225 (_ BitVec 64)) (t!15609 List!9373)) )
))
(declare-fun arrayNoDuplicates!0 (array!31546 (_ BitVec 32) List!9373) Bool)

(assert (=> b!487444 (= res!290866 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9370))))

(declare-fun b!487445 () Bool)

(assert (=> b!487445 (= e!286814 (not true))))

(declare-fun lt!220068 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!487445 (= lt!220068 (toIndex!0 (select (arr!15162 a!3235) j!176) mask!3524))))

(declare-fun e!286816 () Bool)

(assert (=> b!487445 e!286816))

(declare-fun res!290869 () Bool)

(assert (=> b!487445 (=> (not res!290869) (not e!286816))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31546 (_ BitVec 32)) Bool)

(assert (=> b!487445 (= res!290869 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14210 0))(
  ( (Unit!14211) )
))
(declare-fun lt!220070 () Unit!14210)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31546 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14210)

(assert (=> b!487445 (= lt!220070 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!487446 () Bool)

(declare-fun res!290863 () Bool)

(assert (=> b!487446 (=> (not res!290863) (not e!286814))))

(assert (=> b!487446 (= res!290863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!290865 () Bool)

(assert (=> start!44380 (=> (not res!290865) (not e!286815))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44380 (= res!290865 (validMask!0 mask!3524))))

(assert (=> start!44380 e!286815))

(assert (=> start!44380 true))

(declare-fun array_inv!10936 (array!31546) Bool)

(assert (=> start!44380 (array_inv!10936 a!3235)))

(declare-fun b!487441 () Bool)

(assert (=> b!487441 (= e!286816 (= (seekEntryOrOpen!0 (select (arr!15162 a!3235) j!176) a!3235 mask!3524) (Found!3636 j!176)))))

(declare-fun b!487447 () Bool)

(declare-fun res!290867 () Bool)

(assert (=> b!487447 (=> (not res!290867) (not e!286815))))

(assert (=> b!487447 (= res!290867 (and (= (size!15526 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15526 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15526 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!487448 () Bool)

(declare-fun res!290862 () Bool)

(assert (=> b!487448 (=> (not res!290862) (not e!286815))))

(assert (=> b!487448 (= res!290862 (validKeyInArray!0 k!2280))))

(assert (= (and start!44380 res!290865) b!487447))

(assert (= (and b!487447 res!290867) b!487442))

(assert (= (and b!487442 res!290868) b!487448))

(assert (= (and b!487448 res!290862) b!487440))

(assert (= (and b!487440 res!290870) b!487443))

(assert (= (and b!487443 res!290864) b!487446))

(assert (= (and b!487446 res!290863) b!487444))

(assert (= (and b!487444 res!290866) b!487445))

(assert (= (and b!487445 res!290869) b!487441))

(declare-fun m!467269 () Bool)

(assert (=> b!487442 m!467269))

(assert (=> b!487442 m!467269))

(declare-fun m!467271 () Bool)

(assert (=> b!487442 m!467271))

(assert (=> b!487445 m!467269))

(assert (=> b!487445 m!467269))

(declare-fun m!467273 () Bool)

(assert (=> b!487445 m!467273))

(declare-fun m!467275 () Bool)

(assert (=> b!487445 m!467275))

(declare-fun m!467277 () Bool)

(assert (=> b!487445 m!467277))

(declare-fun m!467279 () Bool)

(assert (=> b!487446 m!467279))

(declare-fun m!467281 () Bool)

(assert (=> start!44380 m!467281))

(declare-fun m!467283 () Bool)

(assert (=> start!44380 m!467283))

(declare-fun m!467285 () Bool)

(assert (=> b!487440 m!467285))

(assert (=> b!487441 m!467269))

(assert (=> b!487441 m!467269))

(declare-fun m!467287 () Bool)

(assert (=> b!487441 m!467287))

(declare-fun m!467289 () Bool)

(assert (=> b!487448 m!467289))

(declare-fun m!467291 () Bool)

(assert (=> b!487443 m!467291))

(declare-fun m!467293 () Bool)

(assert (=> b!487444 m!467293))

(push 1)

