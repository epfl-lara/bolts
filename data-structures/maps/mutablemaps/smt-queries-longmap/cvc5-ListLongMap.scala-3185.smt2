; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44746 () Bool)

(assert start!44746)

(declare-fun res!293927 () Bool)

(declare-fun e!288465 () Bool)

(assert (=> start!44746 (=> (not res!293927) (not e!288465))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44746 (= res!293927 (validMask!0 mask!3524))))

(assert (=> start!44746 e!288465))

(assert (=> start!44746 true))

(declare-datatypes ((array!31765 0))(
  ( (array!31766 (arr!15267 (Array (_ BitVec 32) (_ BitVec 64))) (size!15631 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31765)

(declare-fun array_inv!11041 (array!31765) Bool)

(assert (=> start!44746 (array_inv!11041 a!3235)))

(declare-fun b!490835 () Bool)

(declare-fun res!293922 () Bool)

(assert (=> b!490835 (=> (not res!293922) (not e!288465))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!490835 (= res!293922 (and (= (size!15631 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15631 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15631 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490836 () Bool)

(declare-fun e!288462 () Bool)

(declare-fun e!288466 () Bool)

(assert (=> b!490836 (= e!288462 (not e!288466))))

(declare-fun res!293925 () Bool)

(assert (=> b!490836 (=> res!293925 e!288466)))

(declare-fun lt!221852 () array!31765)

(declare-fun lt!221851 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3741 0))(
  ( (MissingZero!3741 (index!17143 (_ BitVec 32))) (Found!3741 (index!17144 (_ BitVec 32))) (Intermediate!3741 (undefined!4553 Bool) (index!17145 (_ BitVec 32)) (x!46266 (_ BitVec 32))) (Undefined!3741) (MissingVacant!3741 (index!17146 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31765 (_ BitVec 32)) SeekEntryResult!3741)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490836 (= res!293925 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15267 a!3235) j!176) mask!3524) (select (arr!15267 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221851 mask!3524) lt!221851 lt!221852 mask!3524))))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!490836 (= lt!221851 (select (store (arr!15267 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!490836 (= lt!221852 (array!31766 (store (arr!15267 a!3235) i!1204 k!2280) (size!15631 a!3235)))))

(declare-fun lt!221847 () SeekEntryResult!3741)

(assert (=> b!490836 (= lt!221847 (Found!3741 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31765 (_ BitVec 32)) SeekEntryResult!3741)

(assert (=> b!490836 (= lt!221847 (seekEntryOrOpen!0 (select (arr!15267 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31765 (_ BitVec 32)) Bool)

(assert (=> b!490836 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14420 0))(
  ( (Unit!14421) )
))
(declare-fun lt!221849 () Unit!14420)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31765 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14420)

(assert (=> b!490836 (= lt!221849 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490837 () Bool)

(declare-fun res!293921 () Bool)

(assert (=> b!490837 (=> (not res!293921) (not e!288465))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490837 (= res!293921 (validKeyInArray!0 (select (arr!15267 a!3235) j!176)))))

(declare-fun b!490838 () Bool)

(declare-fun res!293924 () Bool)

(assert (=> b!490838 (=> (not res!293924) (not e!288462))))

(assert (=> b!490838 (= res!293924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490839 () Bool)

(declare-fun res!293928 () Bool)

(assert (=> b!490839 (=> (not res!293928) (not e!288465))))

(declare-fun arrayContainsKey!0 (array!31765 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490839 (= res!293928 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490840 () Bool)

(declare-fun e!288463 () Bool)

(assert (=> b!490840 (= e!288466 e!288463)))

(declare-fun res!293923 () Bool)

(assert (=> b!490840 (=> res!293923 e!288463)))

(assert (=> b!490840 (= res!293923 (bvslt mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!490840 (= lt!221847 (seekEntryOrOpen!0 lt!221851 lt!221852 mask!3524))))

(declare-fun lt!221848 () Unit!14420)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31765 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14420)

(assert (=> b!490840 (= lt!221848 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!490841 () Bool)

(declare-fun res!293926 () Bool)

(assert (=> b!490841 (=> (not res!293926) (not e!288462))))

(declare-datatypes ((List!9478 0))(
  ( (Nil!9475) (Cons!9474 (h!10336 (_ BitVec 64)) (t!15714 List!9478)) )
))
(declare-fun arrayNoDuplicates!0 (array!31765 (_ BitVec 32) List!9478) Bool)

(assert (=> b!490841 (= res!293926 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9475))))

(declare-fun b!490842 () Bool)

(assert (=> b!490842 (= e!288465 e!288462)))

(declare-fun res!293929 () Bool)

(assert (=> b!490842 (=> (not res!293929) (not e!288462))))

(declare-fun lt!221850 () SeekEntryResult!3741)

(assert (=> b!490842 (= res!293929 (or (= lt!221850 (MissingZero!3741 i!1204)) (= lt!221850 (MissingVacant!3741 i!1204))))))

(assert (=> b!490842 (= lt!221850 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!490843 () Bool)

(assert (=> b!490843 (= e!288463 (validKeyInArray!0 lt!221851))))

(declare-fun b!490844 () Bool)

(declare-fun res!293930 () Bool)

(assert (=> b!490844 (=> (not res!293930) (not e!288465))))

(assert (=> b!490844 (= res!293930 (validKeyInArray!0 k!2280))))

(assert (= (and start!44746 res!293927) b!490835))

(assert (= (and b!490835 res!293922) b!490837))

(assert (= (and b!490837 res!293921) b!490844))

(assert (= (and b!490844 res!293930) b!490839))

(assert (= (and b!490839 res!293928) b!490842))

(assert (= (and b!490842 res!293929) b!490838))

(assert (= (and b!490838 res!293924) b!490841))

(assert (= (and b!490841 res!293926) b!490836))

(assert (= (and b!490836 (not res!293925)) b!490840))

(assert (= (and b!490840 (not res!293923)) b!490843))

(declare-fun m!471259 () Bool)

(assert (=> start!44746 m!471259))

(declare-fun m!471261 () Bool)

(assert (=> start!44746 m!471261))

(declare-fun m!471263 () Bool)

(assert (=> b!490836 m!471263))

(declare-fun m!471265 () Bool)

(assert (=> b!490836 m!471265))

(declare-fun m!471267 () Bool)

(assert (=> b!490836 m!471267))

(declare-fun m!471269 () Bool)

(assert (=> b!490836 m!471269))

(declare-fun m!471271 () Bool)

(assert (=> b!490836 m!471271))

(declare-fun m!471273 () Bool)

(assert (=> b!490836 m!471273))

(declare-fun m!471275 () Bool)

(assert (=> b!490836 m!471275))

(declare-fun m!471277 () Bool)

(assert (=> b!490836 m!471277))

(assert (=> b!490836 m!471275))

(assert (=> b!490836 m!471273))

(assert (=> b!490836 m!471275))

(assert (=> b!490836 m!471275))

(declare-fun m!471279 () Bool)

(assert (=> b!490836 m!471279))

(declare-fun m!471281 () Bool)

(assert (=> b!490836 m!471281))

(assert (=> b!490836 m!471265))

(declare-fun m!471283 () Bool)

(assert (=> b!490839 m!471283))

(declare-fun m!471285 () Bool)

(assert (=> b!490838 m!471285))

(declare-fun m!471287 () Bool)

(assert (=> b!490841 m!471287))

(declare-fun m!471289 () Bool)

(assert (=> b!490844 m!471289))

(declare-fun m!471291 () Bool)

(assert (=> b!490843 m!471291))

(declare-fun m!471293 () Bool)

(assert (=> b!490842 m!471293))

(declare-fun m!471295 () Bool)

(assert (=> b!490840 m!471295))

(declare-fun m!471297 () Bool)

(assert (=> b!490840 m!471297))

(assert (=> b!490837 m!471275))

(assert (=> b!490837 m!471275))

(declare-fun m!471299 () Bool)

(assert (=> b!490837 m!471299))

(push 1)

