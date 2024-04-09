; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46020 () Bool)

(assert start!46020)

(declare-fun b!509238 () Bool)

(declare-fun res!310235 () Bool)

(declare-fun e!297812 () Bool)

(assert (=> b!509238 (=> (not res!310235) (not e!297812))))

(declare-datatypes ((array!32691 0))(
  ( (array!32692 (arr!15721 (Array (_ BitVec 32) (_ BitVec 64))) (size!16085 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32691)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32691 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509238 (= res!310235 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509239 () Bool)

(declare-fun res!310238 () Bool)

(declare-fun e!297811 () Bool)

(assert (=> b!509239 (=> (not res!310238) (not e!297811))))

(declare-datatypes ((List!9932 0))(
  ( (Nil!9929) (Cons!9928 (h!10805 (_ BitVec 64)) (t!16168 List!9932)) )
))
(declare-fun arrayNoDuplicates!0 (array!32691 (_ BitVec 32) List!9932) Bool)

(assert (=> b!509239 (= res!310238 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9929))))

(declare-fun b!509241 () Bool)

(declare-fun res!310239 () Bool)

(assert (=> b!509241 (=> (not res!310239) (not e!297812))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!509241 (= res!310239 (and (= (size!16085 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16085 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16085 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509242 () Bool)

(assert (=> b!509242 (= e!297811 (not true))))

(declare-fun lt!232678 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4195 0))(
  ( (MissingZero!4195 (index!18968 (_ BitVec 32))) (Found!4195 (index!18969 (_ BitVec 32))) (Intermediate!4195 (undefined!5007 Bool) (index!18970 (_ BitVec 32)) (x!47967 (_ BitVec 32))) (Undefined!4195) (MissingVacant!4195 (index!18971 (_ BitVec 32))) )
))
(declare-fun lt!232676 () SeekEntryResult!4195)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32691 (_ BitVec 32)) SeekEntryResult!4195)

(assert (=> b!509242 (= lt!232676 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232678 (select (store (arr!15721 a!3235) i!1204 k0!2280) j!176) (array!32692 (store (arr!15721 a!3235) i!1204 k0!2280) (size!16085 a!3235)) mask!3524))))

(declare-fun lt!232675 () SeekEntryResult!4195)

(declare-fun lt!232677 () (_ BitVec 32))

(assert (=> b!509242 (= lt!232675 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232677 (select (arr!15721 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509242 (= lt!232678 (toIndex!0 (select (store (arr!15721 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!509242 (= lt!232677 (toIndex!0 (select (arr!15721 a!3235) j!176) mask!3524))))

(declare-fun e!297814 () Bool)

(assert (=> b!509242 e!297814))

(declare-fun res!310241 () Bool)

(assert (=> b!509242 (=> (not res!310241) (not e!297814))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32691 (_ BitVec 32)) Bool)

(assert (=> b!509242 (= res!310241 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15640 0))(
  ( (Unit!15641) )
))
(declare-fun lt!232674 () Unit!15640)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32691 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15640)

(assert (=> b!509242 (= lt!232674 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509243 () Bool)

(assert (=> b!509243 (= e!297812 e!297811)))

(declare-fun res!310237 () Bool)

(assert (=> b!509243 (=> (not res!310237) (not e!297811))))

(declare-fun lt!232679 () SeekEntryResult!4195)

(assert (=> b!509243 (= res!310237 (or (= lt!232679 (MissingZero!4195 i!1204)) (= lt!232679 (MissingVacant!4195 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32691 (_ BitVec 32)) SeekEntryResult!4195)

(assert (=> b!509243 (= lt!232679 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!509244 () Bool)

(declare-fun res!310234 () Bool)

(assert (=> b!509244 (=> (not res!310234) (not e!297812))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509244 (= res!310234 (validKeyInArray!0 (select (arr!15721 a!3235) j!176)))))

(declare-fun b!509240 () Bool)

(declare-fun res!310233 () Bool)

(assert (=> b!509240 (=> (not res!310233) (not e!297811))))

(assert (=> b!509240 (= res!310233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!310240 () Bool)

(assert (=> start!46020 (=> (not res!310240) (not e!297812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46020 (= res!310240 (validMask!0 mask!3524))))

(assert (=> start!46020 e!297812))

(assert (=> start!46020 true))

(declare-fun array_inv!11495 (array!32691) Bool)

(assert (=> start!46020 (array_inv!11495 a!3235)))

(declare-fun b!509245 () Bool)

(declare-fun res!310236 () Bool)

(assert (=> b!509245 (=> (not res!310236) (not e!297812))))

(assert (=> b!509245 (= res!310236 (validKeyInArray!0 k0!2280))))

(declare-fun b!509246 () Bool)

(assert (=> b!509246 (= e!297814 (= (seekEntryOrOpen!0 (select (arr!15721 a!3235) j!176) a!3235 mask!3524) (Found!4195 j!176)))))

(assert (= (and start!46020 res!310240) b!509241))

(assert (= (and b!509241 res!310239) b!509244))

(assert (= (and b!509244 res!310234) b!509245))

(assert (= (and b!509245 res!310236) b!509238))

(assert (= (and b!509238 res!310235) b!509243))

(assert (= (and b!509243 res!310237) b!509240))

(assert (= (and b!509240 res!310233) b!509239))

(assert (= (and b!509239 res!310238) b!509242))

(assert (= (and b!509242 res!310241) b!509246))

(declare-fun m!490159 () Bool)

(assert (=> b!509238 m!490159))

(declare-fun m!490161 () Bool)

(assert (=> b!509240 m!490161))

(declare-fun m!490163 () Bool)

(assert (=> b!509245 m!490163))

(declare-fun m!490165 () Bool)

(assert (=> start!46020 m!490165))

(declare-fun m!490167 () Bool)

(assert (=> start!46020 m!490167))

(declare-fun m!490169 () Bool)

(assert (=> b!509244 m!490169))

(assert (=> b!509244 m!490169))

(declare-fun m!490171 () Bool)

(assert (=> b!509244 m!490171))

(assert (=> b!509246 m!490169))

(assert (=> b!509246 m!490169))

(declare-fun m!490173 () Bool)

(assert (=> b!509246 m!490173))

(declare-fun m!490175 () Bool)

(assert (=> b!509243 m!490175))

(declare-fun m!490177 () Bool)

(assert (=> b!509242 m!490177))

(declare-fun m!490179 () Bool)

(assert (=> b!509242 m!490179))

(declare-fun m!490181 () Bool)

(assert (=> b!509242 m!490181))

(assert (=> b!509242 m!490169))

(declare-fun m!490183 () Bool)

(assert (=> b!509242 m!490183))

(assert (=> b!509242 m!490169))

(declare-fun m!490185 () Bool)

(assert (=> b!509242 m!490185))

(assert (=> b!509242 m!490181))

(declare-fun m!490187 () Bool)

(assert (=> b!509242 m!490187))

(assert (=> b!509242 m!490169))

(declare-fun m!490189 () Bool)

(assert (=> b!509242 m!490189))

(assert (=> b!509242 m!490181))

(declare-fun m!490191 () Bool)

(assert (=> b!509242 m!490191))

(declare-fun m!490193 () Bool)

(assert (=> b!509239 m!490193))

(check-sat (not b!509246) (not b!509239) (not b!509242) (not b!509240) (not start!46020) (not b!509244) (not b!509238) (not b!509243) (not b!509245))
(check-sat)
