; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44770 () Bool)

(assert start!44770)

(declare-fun b!491166 () Bool)

(declare-fun res!294252 () Bool)

(declare-fun e!288615 () Bool)

(assert (=> b!491166 (=> (not res!294252) (not e!288615))))

(declare-datatypes ((array!31789 0))(
  ( (array!31790 (arr!15279 (Array (_ BitVec 32) (_ BitVec 64))) (size!15643 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31789)

(declare-datatypes ((List!9490 0))(
  ( (Nil!9487) (Cons!9486 (h!10348 (_ BitVec 64)) (t!15726 List!9490)) )
))
(declare-fun arrayNoDuplicates!0 (array!31789 (_ BitVec 32) List!9490) Bool)

(assert (=> b!491166 (= res!294252 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9487))))

(declare-fun b!491167 () Bool)

(declare-fun res!294256 () Bool)

(assert (=> b!491167 (=> (not res!294256) (not e!288615))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31789 (_ BitVec 32)) Bool)

(assert (=> b!491167 (= res!294256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491168 () Bool)

(declare-fun res!294253 () Bool)

(declare-fun e!288613 () Bool)

(assert (=> b!491168 (=> (not res!294253) (not e!288613))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491168 (= res!294253 (validKeyInArray!0 k!2280))))

(declare-fun b!491169 () Bool)

(declare-fun e!288614 () Bool)

(assert (=> b!491169 (= e!288615 (not e!288614))))

(declare-fun res!294258 () Bool)

(assert (=> b!491169 (=> res!294258 e!288614)))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!222067 () (_ BitVec 64))

(declare-fun lt!222068 () array!31789)

(declare-datatypes ((SeekEntryResult!3753 0))(
  ( (MissingZero!3753 (index!17191 (_ BitVec 32))) (Found!3753 (index!17192 (_ BitVec 32))) (Intermediate!3753 (undefined!4565 Bool) (index!17193 (_ BitVec 32)) (x!46310 (_ BitVec 32))) (Undefined!3753) (MissingVacant!3753 (index!17194 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31789 (_ BitVec 32)) SeekEntryResult!3753)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491169 (= res!294258 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15279 a!3235) j!176) mask!3524) (select (arr!15279 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!222067 mask!3524) lt!222067 lt!222068 mask!3524))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!491169 (= lt!222067 (select (store (arr!15279 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!491169 (= lt!222068 (array!31790 (store (arr!15279 a!3235) i!1204 k!2280) (size!15643 a!3235)))))

(declare-fun lt!222064 () SeekEntryResult!3753)

(assert (=> b!491169 (= lt!222064 (Found!3753 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31789 (_ BitVec 32)) SeekEntryResult!3753)

(assert (=> b!491169 (= lt!222064 (seekEntryOrOpen!0 (select (arr!15279 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!491169 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14444 0))(
  ( (Unit!14445) )
))
(declare-fun lt!222065 () Unit!14444)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31789 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14444)

(assert (=> b!491169 (= lt!222065 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491170 () Bool)

(assert (=> b!491170 (= e!288614 true)))

(assert (=> b!491170 (= lt!222064 (seekEntryOrOpen!0 lt!222067 lt!222068 mask!3524))))

(declare-fun lt!222063 () Unit!14444)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31789 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14444)

(assert (=> b!491170 (= lt!222063 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!491171 () Bool)

(assert (=> b!491171 (= e!288613 e!288615)))

(declare-fun res!294255 () Bool)

(assert (=> b!491171 (=> (not res!294255) (not e!288615))))

(declare-fun lt!222066 () SeekEntryResult!3753)

(assert (=> b!491171 (= res!294255 (or (= lt!222066 (MissingZero!3753 i!1204)) (= lt!222066 (MissingVacant!3753 i!1204))))))

(assert (=> b!491171 (= lt!222066 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!491173 () Bool)

(declare-fun res!294260 () Bool)

(assert (=> b!491173 (=> (not res!294260) (not e!288613))))

(assert (=> b!491173 (= res!294260 (and (= (size!15643 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15643 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15643 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!491174 () Bool)

(declare-fun res!294254 () Bool)

(assert (=> b!491174 (=> (not res!294254) (not e!288613))))

(declare-fun arrayContainsKey!0 (array!31789 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491174 (= res!294254 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!294259 () Bool)

(assert (=> start!44770 (=> (not res!294259) (not e!288613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44770 (= res!294259 (validMask!0 mask!3524))))

(assert (=> start!44770 e!288613))

(assert (=> start!44770 true))

(declare-fun array_inv!11053 (array!31789) Bool)

(assert (=> start!44770 (array_inv!11053 a!3235)))

(declare-fun b!491172 () Bool)

(declare-fun res!294257 () Bool)

(assert (=> b!491172 (=> (not res!294257) (not e!288613))))

(assert (=> b!491172 (= res!294257 (validKeyInArray!0 (select (arr!15279 a!3235) j!176)))))

(assert (= (and start!44770 res!294259) b!491173))

(assert (= (and b!491173 res!294260) b!491172))

(assert (= (and b!491172 res!294257) b!491168))

(assert (= (and b!491168 res!294253) b!491174))

(assert (= (and b!491174 res!294254) b!491171))

(assert (= (and b!491171 res!294255) b!491167))

(assert (= (and b!491167 res!294256) b!491166))

(assert (= (and b!491166 res!294252) b!491169))

(assert (= (and b!491169 (not res!294258)) b!491170))

(declare-fun m!471745 () Bool)

(assert (=> b!491167 m!471745))

(declare-fun m!471747 () Bool)

(assert (=> start!44770 m!471747))

(declare-fun m!471749 () Bool)

(assert (=> start!44770 m!471749))

(declare-fun m!471751 () Bool)

(assert (=> b!491166 m!471751))

(declare-fun m!471753 () Bool)

(assert (=> b!491171 m!471753))

(declare-fun m!471755 () Bool)

(assert (=> b!491168 m!471755))

(declare-fun m!471757 () Bool)

(assert (=> b!491172 m!471757))

(assert (=> b!491172 m!471757))

(declare-fun m!471759 () Bool)

(assert (=> b!491172 m!471759))

(declare-fun m!471761 () Bool)

(assert (=> b!491169 m!471761))

(declare-fun m!471763 () Bool)

(assert (=> b!491169 m!471763))

(declare-fun m!471765 () Bool)

(assert (=> b!491169 m!471765))

(declare-fun m!471767 () Bool)

(assert (=> b!491169 m!471767))

(assert (=> b!491169 m!471757))

(declare-fun m!471769 () Bool)

(assert (=> b!491169 m!471769))

(declare-fun m!471771 () Bool)

(assert (=> b!491169 m!471771))

(declare-fun m!471773 () Bool)

(assert (=> b!491169 m!471773))

(assert (=> b!491169 m!471757))

(assert (=> b!491169 m!471767))

(assert (=> b!491169 m!471757))

(declare-fun m!471775 () Bool)

(assert (=> b!491169 m!471775))

(assert (=> b!491169 m!471757))

(declare-fun m!471777 () Bool)

(assert (=> b!491169 m!471777))

(assert (=> b!491169 m!471771))

(declare-fun m!471779 () Bool)

(assert (=> b!491174 m!471779))

(declare-fun m!471781 () Bool)

(assert (=> b!491170 m!471781))

(declare-fun m!471783 () Bool)

(assert (=> b!491170 m!471783))

(push 1)

