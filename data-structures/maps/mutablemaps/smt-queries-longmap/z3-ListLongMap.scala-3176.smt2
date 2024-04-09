; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44694 () Bool)

(assert start!44694)

(declare-fun b!490131 () Bool)

(declare-fun res!293217 () Bool)

(declare-fun e!288148 () Bool)

(assert (=> b!490131 (=> (not res!293217) (not e!288148))))

(declare-datatypes ((array!31713 0))(
  ( (array!31714 (arr!15241 (Array (_ BitVec 32) (_ BitVec 64))) (size!15605 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31713)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31713 (_ BitVec 32)) Bool)

(assert (=> b!490131 (= res!293217 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!293218 () Bool)

(declare-fun e!288149 () Bool)

(assert (=> start!44694 (=> (not res!293218) (not e!288149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44694 (= res!293218 (validMask!0 mask!3524))))

(assert (=> start!44694 e!288149))

(assert (=> start!44694 true))

(declare-fun array_inv!11015 (array!31713) Bool)

(assert (=> start!44694 (array_inv!11015 a!3235)))

(declare-fun b!490132 () Bool)

(assert (=> b!490132 (= e!288149 e!288148)))

(declare-fun res!293225 () Bool)

(assert (=> b!490132 (=> (not res!293225) (not e!288148))))

(declare-datatypes ((SeekEntryResult!3715 0))(
  ( (MissingZero!3715 (index!17039 (_ BitVec 32))) (Found!3715 (index!17040 (_ BitVec 32))) (Intermediate!3715 (undefined!4527 Bool) (index!17041 (_ BitVec 32)) (x!46168 (_ BitVec 32))) (Undefined!3715) (MissingVacant!3715 (index!17042 (_ BitVec 32))) )
))
(declare-fun lt!221382 () SeekEntryResult!3715)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!490132 (= res!293225 (or (= lt!221382 (MissingZero!3715 i!1204)) (= lt!221382 (MissingVacant!3715 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31713 (_ BitVec 32)) SeekEntryResult!3715)

(assert (=> b!490132 (= lt!221382 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!490133 () Bool)

(assert (=> b!490133 (= e!288148 (not true))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!221381 () SeekEntryResult!3715)

(declare-fun lt!221379 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31713 (_ BitVec 32)) SeekEntryResult!3715)

(assert (=> b!490133 (= lt!221381 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221379 (select (store (arr!15241 a!3235) i!1204 k0!2280) j!176) (array!31714 (store (arr!15241 a!3235) i!1204 k0!2280) (size!15605 a!3235)) mask!3524))))

(declare-fun lt!221383 () SeekEntryResult!3715)

(declare-fun lt!221384 () (_ BitVec 32))

(assert (=> b!490133 (= lt!221383 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221384 (select (arr!15241 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490133 (= lt!221379 (toIndex!0 (select (store (arr!15241 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!490133 (= lt!221384 (toIndex!0 (select (arr!15241 a!3235) j!176) mask!3524))))

(declare-fun e!288151 () Bool)

(assert (=> b!490133 e!288151))

(declare-fun res!293219 () Bool)

(assert (=> b!490133 (=> (not res!293219) (not e!288151))))

(assert (=> b!490133 (= res!293219 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14368 0))(
  ( (Unit!14369) )
))
(declare-fun lt!221380 () Unit!14368)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31713 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14368)

(assert (=> b!490133 (= lt!221380 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490134 () Bool)

(declare-fun res!293220 () Bool)

(assert (=> b!490134 (=> (not res!293220) (not e!288149))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490134 (= res!293220 (validKeyInArray!0 (select (arr!15241 a!3235) j!176)))))

(declare-fun b!490135 () Bool)

(declare-fun res!293222 () Bool)

(assert (=> b!490135 (=> (not res!293222) (not e!288148))))

(declare-datatypes ((List!9452 0))(
  ( (Nil!9449) (Cons!9448 (h!10310 (_ BitVec 64)) (t!15688 List!9452)) )
))
(declare-fun arrayNoDuplicates!0 (array!31713 (_ BitVec 32) List!9452) Bool)

(assert (=> b!490135 (= res!293222 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9449))))

(declare-fun b!490136 () Bool)

(declare-fun res!293224 () Bool)

(assert (=> b!490136 (=> (not res!293224) (not e!288149))))

(declare-fun arrayContainsKey!0 (array!31713 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490136 (= res!293224 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490137 () Bool)

(declare-fun res!293223 () Bool)

(assert (=> b!490137 (=> (not res!293223) (not e!288149))))

(assert (=> b!490137 (= res!293223 (and (= (size!15605 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15605 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15605 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490138 () Bool)

(assert (=> b!490138 (= e!288151 (= (seekEntryOrOpen!0 (select (arr!15241 a!3235) j!176) a!3235 mask!3524) (Found!3715 j!176)))))

(declare-fun b!490139 () Bool)

(declare-fun res!293221 () Bool)

(assert (=> b!490139 (=> (not res!293221) (not e!288149))))

(assert (=> b!490139 (= res!293221 (validKeyInArray!0 k0!2280))))

(assert (= (and start!44694 res!293218) b!490137))

(assert (= (and b!490137 res!293223) b!490134))

(assert (= (and b!490134 res!293220) b!490139))

(assert (= (and b!490139 res!293221) b!490136))

(assert (= (and b!490136 res!293224) b!490132))

(assert (= (and b!490132 res!293225) b!490131))

(assert (= (and b!490131 res!293217) b!490135))

(assert (= (and b!490135 res!293222) b!490133))

(assert (= (and b!490133 res!293219) b!490138))

(declare-fun m!470239 () Bool)

(assert (=> b!490133 m!470239))

(declare-fun m!470241 () Bool)

(assert (=> b!490133 m!470241))

(declare-fun m!470243 () Bool)

(assert (=> b!490133 m!470243))

(declare-fun m!470245 () Bool)

(assert (=> b!490133 m!470245))

(declare-fun m!470247 () Bool)

(assert (=> b!490133 m!470247))

(assert (=> b!490133 m!470245))

(declare-fun m!470249 () Bool)

(assert (=> b!490133 m!470249))

(assert (=> b!490133 m!470245))

(declare-fun m!470251 () Bool)

(assert (=> b!490133 m!470251))

(assert (=> b!490133 m!470243))

(declare-fun m!470253 () Bool)

(assert (=> b!490133 m!470253))

(assert (=> b!490133 m!470243))

(declare-fun m!470255 () Bool)

(assert (=> b!490133 m!470255))

(declare-fun m!470257 () Bool)

(assert (=> b!490132 m!470257))

(declare-fun m!470259 () Bool)

(assert (=> b!490139 m!470259))

(declare-fun m!470261 () Bool)

(assert (=> start!44694 m!470261))

(declare-fun m!470263 () Bool)

(assert (=> start!44694 m!470263))

(declare-fun m!470265 () Bool)

(assert (=> b!490136 m!470265))

(assert (=> b!490134 m!470245))

(assert (=> b!490134 m!470245))

(declare-fun m!470267 () Bool)

(assert (=> b!490134 m!470267))

(declare-fun m!470269 () Bool)

(assert (=> b!490135 m!470269))

(declare-fun m!470271 () Bool)

(assert (=> b!490131 m!470271))

(assert (=> b!490138 m!470245))

(assert (=> b!490138 m!470245))

(declare-fun m!470273 () Bool)

(assert (=> b!490138 m!470273))

(check-sat (not b!490132) (not b!490131) (not start!44694) (not b!490134) (not b!490135) (not b!490138) (not b!490136) (not b!490133) (not b!490139))
(check-sat)
