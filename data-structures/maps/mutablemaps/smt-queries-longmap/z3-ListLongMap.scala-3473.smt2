; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48198 () Bool)

(assert start!48198)

(declare-fun res!326218 () Bool)

(declare-fun e!309004 () Bool)

(assert (=> start!48198 (=> (not res!326218) (not e!309004))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48198 (= res!326218 (validMask!0 mask!3216))))

(assert (=> start!48198 e!309004))

(assert (=> start!48198 true))

(declare-datatypes ((array!33579 0))(
  ( (array!33580 (arr!16132 (Array (_ BitVec 32) (_ BitVec 64))) (size!16496 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33579)

(declare-fun array_inv!11906 (array!33579) Bool)

(assert (=> start!48198 (array_inv!11906 a!3154)))

(declare-fun b!530359 () Bool)

(assert (=> b!530359 (= e!309004 false)))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4597 0))(
  ( (MissingZero!4597 (index!20612 (_ BitVec 32))) (Found!4597 (index!20613 (_ BitVec 32))) (Intermediate!4597 (undefined!5409 Bool) (index!20614 (_ BitVec 32)) (x!49630 (_ BitVec 32))) (Undefined!4597) (MissingVacant!4597 (index!20615 (_ BitVec 32))) )
))
(declare-fun lt!244724 () SeekEntryResult!4597)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33579 (_ BitVec 32)) SeekEntryResult!4597)

(assert (=> b!530359 (= lt!244724 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!530360 () Bool)

(declare-fun res!326215 () Bool)

(assert (=> b!530360 (=> (not res!326215) (not e!309004))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530360 (= res!326215 (validKeyInArray!0 k0!1998))))

(declare-fun b!530361 () Bool)

(declare-fun res!326217 () Bool)

(assert (=> b!530361 (=> (not res!326217) (not e!309004))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!530361 (= res!326217 (validKeyInArray!0 (select (arr!16132 a!3154) j!147)))))

(declare-fun b!530362 () Bool)

(declare-fun res!326216 () Bool)

(assert (=> b!530362 (=> (not res!326216) (not e!309004))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530362 (= res!326216 (and (= (size!16496 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16496 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16496 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530363 () Bool)

(declare-fun res!326219 () Bool)

(assert (=> b!530363 (=> (not res!326219) (not e!309004))))

(declare-fun arrayContainsKey!0 (array!33579 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530363 (= res!326219 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48198 res!326218) b!530362))

(assert (= (and b!530362 res!326216) b!530361))

(assert (= (and b!530361 res!326217) b!530360))

(assert (= (and b!530360 res!326215) b!530363))

(assert (= (and b!530363 res!326219) b!530359))

(declare-fun m!510969 () Bool)

(assert (=> start!48198 m!510969))

(declare-fun m!510971 () Bool)

(assert (=> start!48198 m!510971))

(declare-fun m!510973 () Bool)

(assert (=> b!530361 m!510973))

(assert (=> b!530361 m!510973))

(declare-fun m!510975 () Bool)

(assert (=> b!530361 m!510975))

(declare-fun m!510977 () Bool)

(assert (=> b!530359 m!510977))

(declare-fun m!510979 () Bool)

(assert (=> b!530363 m!510979))

(declare-fun m!510981 () Bool)

(assert (=> b!530360 m!510981))

(check-sat (not start!48198) (not b!530360) (not b!530363) (not b!530359) (not b!530361))
