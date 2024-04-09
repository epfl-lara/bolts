; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48234 () Bool)

(assert start!48234)

(declare-fun res!326496 () Bool)

(declare-fun e!309112 () Bool)

(assert (=> start!48234 (=> (not res!326496) (not e!309112))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48234 (= res!326496 (validMask!0 mask!3216))))

(assert (=> start!48234 e!309112))

(assert (=> start!48234 true))

(declare-datatypes ((array!33615 0))(
  ( (array!33616 (arr!16150 (Array (_ BitVec 32) (_ BitVec 64))) (size!16514 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33615)

(declare-fun array_inv!11924 (array!33615) Bool)

(assert (=> start!48234 (array_inv!11924 a!3154)))

(declare-fun b!530638 () Bool)

(declare-fun res!326497 () Bool)

(assert (=> b!530638 (=> (not res!326497) (not e!309112))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530638 (= res!326497 (validKeyInArray!0 k0!1998))))

(declare-fun b!530639 () Bool)

(declare-fun res!326494 () Bool)

(assert (=> b!530639 (=> (not res!326494) (not e!309112))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!530639 (= res!326494 (validKeyInArray!0 (select (arr!16150 a!3154) j!147)))))

(declare-fun b!530640 () Bool)

(assert (=> b!530640 (= e!309112 false)))

(declare-datatypes ((SeekEntryResult!4615 0))(
  ( (MissingZero!4615 (index!20684 (_ BitVec 32))) (Found!4615 (index!20685 (_ BitVec 32))) (Intermediate!4615 (undefined!5427 Bool) (index!20686 (_ BitVec 32)) (x!49696 (_ BitVec 32))) (Undefined!4615) (MissingVacant!4615 (index!20687 (_ BitVec 32))) )
))
(declare-fun lt!244769 () SeekEntryResult!4615)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33615 (_ BitVec 32)) SeekEntryResult!4615)

(assert (=> b!530640 (= lt!244769 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!530641 () Bool)

(declare-fun res!326498 () Bool)

(assert (=> b!530641 (=> (not res!326498) (not e!309112))))

(declare-fun arrayContainsKey!0 (array!33615 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530641 (= res!326498 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530642 () Bool)

(declare-fun res!326495 () Bool)

(assert (=> b!530642 (=> (not res!326495) (not e!309112))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530642 (= res!326495 (and (= (size!16514 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16514 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16514 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48234 res!326496) b!530642))

(assert (= (and b!530642 res!326495) b!530639))

(assert (= (and b!530639 res!326494) b!530638))

(assert (= (and b!530638 res!326497) b!530641))

(assert (= (and b!530641 res!326498) b!530640))

(declare-fun m!511221 () Bool)

(assert (=> start!48234 m!511221))

(declare-fun m!511223 () Bool)

(assert (=> start!48234 m!511223))

(declare-fun m!511225 () Bool)

(assert (=> b!530640 m!511225))

(declare-fun m!511227 () Bool)

(assert (=> b!530641 m!511227))

(declare-fun m!511229 () Bool)

(assert (=> b!530638 m!511229))

(declare-fun m!511231 () Bool)

(assert (=> b!530639 m!511231))

(assert (=> b!530639 m!511231))

(declare-fun m!511233 () Bool)

(assert (=> b!530639 m!511233))

(check-sat (not start!48234) (not b!530639) (not b!530641) (not b!530638) (not b!530640))
