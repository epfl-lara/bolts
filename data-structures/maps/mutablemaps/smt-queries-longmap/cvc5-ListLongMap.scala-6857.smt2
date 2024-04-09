; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86428 () Bool)

(assert start!86428)

(declare-fun b!999782 () Bool)

(declare-fun res!669416 () Bool)

(declare-fun e!563679 () Bool)

(assert (=> b!999782 (=> (not res!669416) (not e!563679))))

(declare-datatypes ((array!63181 0))(
  ( (array!63182 (arr!30412 (Array (_ BitVec 32) (_ BitVec 64))) (size!30915 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63181)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!999782 (= res!669416 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30915 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30915 a!3219))))))

(declare-fun b!999783 () Bool)

(declare-fun res!669426 () Bool)

(declare-fun e!563681 () Bool)

(assert (=> b!999783 (=> (not res!669426) (not e!563681))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999783 (= res!669426 (validKeyInArray!0 k!2224))))

(declare-fun b!999784 () Bool)

(declare-fun e!563678 () Bool)

(declare-fun mask!3464 () (_ BitVec 32))

(assert (=> b!999784 (= e!563678 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvsge index!1507 (bvadd #b00000000000000000000000000000001 mask!3464))))))

(declare-fun b!999785 () Bool)

(declare-fun res!669417 () Bool)

(assert (=> b!999785 (=> (not res!669417) (not e!563679))))

(declare-datatypes ((List!21214 0))(
  ( (Nil!21211) (Cons!21210 (h!22387 (_ BitVec 64)) (t!30223 List!21214)) )
))
(declare-fun arrayNoDuplicates!0 (array!63181 (_ BitVec 32) List!21214) Bool)

(assert (=> b!999785 (= res!669417 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21211))))

(declare-fun b!999786 () Bool)

(declare-fun res!669418 () Bool)

(assert (=> b!999786 (=> (not res!669418) (not e!563681))))

(declare-fun arrayContainsKey!0 (array!63181 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!999786 (= res!669418 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!999787 () Bool)

(declare-fun res!669423 () Bool)

(assert (=> b!999787 (=> (not res!669423) (not e!563681))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!999787 (= res!669423 (validKeyInArray!0 (select (arr!30412 a!3219) j!170)))))

(declare-fun b!999788 () Bool)

(assert (=> b!999788 (= e!563679 e!563678)))

(declare-fun res!669424 () Bool)

(assert (=> b!999788 (=> (not res!669424) (not e!563678))))

(declare-datatypes ((SeekEntryResult!9344 0))(
  ( (MissingZero!9344 (index!39746 (_ BitVec 32))) (Found!9344 (index!39747 (_ BitVec 32))) (Intermediate!9344 (undefined!10156 Bool) (index!39748 (_ BitVec 32)) (x!87213 (_ BitVec 32))) (Undefined!9344) (MissingVacant!9344 (index!39749 (_ BitVec 32))) )
))
(declare-fun lt!442099 () SeekEntryResult!9344)

(declare-fun lt!442100 () SeekEntryResult!9344)

(assert (=> b!999788 (= res!669424 (= lt!442099 lt!442100))))

(assert (=> b!999788 (= lt!442100 (Intermediate!9344 false resIndex!38 resX!38))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63181 (_ BitVec 32)) SeekEntryResult!9344)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999788 (= lt!442099 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30412 a!3219) j!170) mask!3464) (select (arr!30412 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!999789 () Bool)

(declare-fun res!669420 () Bool)

(assert (=> b!999789 (=> (not res!669420) (not e!563678))))

(assert (=> b!999789 (= res!669420 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30412 a!3219) j!170) a!3219 mask!3464) lt!442100))))

(declare-fun b!999790 () Bool)

(declare-fun res!669425 () Bool)

(assert (=> b!999790 (=> (not res!669425) (not e!563681))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!999790 (= res!669425 (and (= (size!30915 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30915 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30915 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!999791 () Bool)

(assert (=> b!999791 (= e!563681 e!563679)))

(declare-fun res!669421 () Bool)

(assert (=> b!999791 (=> (not res!669421) (not e!563679))))

(declare-fun lt!442101 () SeekEntryResult!9344)

(assert (=> b!999791 (= res!669421 (or (= lt!442101 (MissingVacant!9344 i!1194)) (= lt!442101 (MissingZero!9344 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63181 (_ BitVec 32)) SeekEntryResult!9344)

(assert (=> b!999791 (= lt!442101 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun res!669427 () Bool)

(assert (=> start!86428 (=> (not res!669427) (not e!563681))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86428 (= res!669427 (validMask!0 mask!3464))))

(assert (=> start!86428 e!563681))

(declare-fun array_inv!23402 (array!63181) Bool)

(assert (=> start!86428 (array_inv!23402 a!3219)))

(assert (=> start!86428 true))

(declare-fun b!999792 () Bool)

(declare-fun res!669419 () Bool)

(assert (=> b!999792 (=> (not res!669419) (not e!563679))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63181 (_ BitVec 32)) Bool)

(assert (=> b!999792 (= res!669419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!999793 () Bool)

(declare-fun res!669422 () Bool)

(assert (=> b!999793 (=> (not res!669422) (not e!563678))))

(assert (=> b!999793 (= res!669422 (not (= lt!442099 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30412 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30412 a!3219) i!1194 k!2224) j!170) (array!63182 (store (arr!30412 a!3219) i!1194 k!2224) (size!30915 a!3219)) mask!3464))))))

(assert (= (and start!86428 res!669427) b!999790))

(assert (= (and b!999790 res!669425) b!999787))

(assert (= (and b!999787 res!669423) b!999783))

(assert (= (and b!999783 res!669426) b!999786))

(assert (= (and b!999786 res!669418) b!999791))

(assert (= (and b!999791 res!669421) b!999792))

(assert (= (and b!999792 res!669419) b!999785))

(assert (= (and b!999785 res!669417) b!999782))

(assert (= (and b!999782 res!669416) b!999788))

(assert (= (and b!999788 res!669424) b!999789))

(assert (= (and b!999789 res!669420) b!999793))

(assert (= (and b!999793 res!669422) b!999784))

(declare-fun m!926103 () Bool)

(assert (=> b!999786 m!926103))

(declare-fun m!926105 () Bool)

(assert (=> b!999787 m!926105))

(assert (=> b!999787 m!926105))

(declare-fun m!926107 () Bool)

(assert (=> b!999787 m!926107))

(declare-fun m!926109 () Bool)

(assert (=> b!999792 m!926109))

(declare-fun m!926111 () Bool)

(assert (=> b!999783 m!926111))

(declare-fun m!926113 () Bool)

(assert (=> b!999785 m!926113))

(assert (=> b!999789 m!926105))

(assert (=> b!999789 m!926105))

(declare-fun m!926115 () Bool)

(assert (=> b!999789 m!926115))

(declare-fun m!926117 () Bool)

(assert (=> b!999791 m!926117))

(declare-fun m!926119 () Bool)

(assert (=> start!86428 m!926119))

(declare-fun m!926121 () Bool)

(assert (=> start!86428 m!926121))

(declare-fun m!926123 () Bool)

(assert (=> b!999793 m!926123))

(declare-fun m!926125 () Bool)

(assert (=> b!999793 m!926125))

(assert (=> b!999793 m!926125))

(declare-fun m!926127 () Bool)

(assert (=> b!999793 m!926127))

(assert (=> b!999793 m!926127))

(assert (=> b!999793 m!926125))

(declare-fun m!926129 () Bool)

(assert (=> b!999793 m!926129))

(assert (=> b!999788 m!926105))

(assert (=> b!999788 m!926105))

(declare-fun m!926131 () Bool)

(assert (=> b!999788 m!926131))

(assert (=> b!999788 m!926131))

(assert (=> b!999788 m!926105))

(declare-fun m!926133 () Bool)

(assert (=> b!999788 m!926133))

(push 1)

(assert (not b!999785))

(assert (not b!999788))

(assert (not b!999787))

(assert (not b!999791))

(assert (not b!999789))

(assert (not b!999792))

(assert (not b!999786))

(assert (not b!999793))

(assert (not start!86428))

(assert (not b!999783))

(check-sat)

(pop 1)

(push 1)

(check-sat)

