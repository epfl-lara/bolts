; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48606 () Bool)

(assert start!48606)

(declare-fun b!533360 () Bool)

(declare-fun res!328715 () Bool)

(declare-fun e!310339 () Bool)

(assert (=> b!533360 (=> (not res!328715) (not e!310339))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33774 0))(
  ( (array!33775 (arr!16222 (Array (_ BitVec 32) (_ BitVec 64))) (size!16586 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33774)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533360 (= res!328715 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16586 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16586 a!3154)) (= (select (arr!16222 a!3154) resIndex!32) (select (arr!16222 a!3154) j!147))))))

(declare-fun b!533361 () Bool)

(declare-fun res!328722 () Bool)

(declare-fun e!310337 () Bool)

(assert (=> b!533361 (=> (not res!328722) (not e!310337))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533361 (= res!328722 (and (= (size!16586 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16586 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16586 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533363 () Bool)

(declare-fun res!328723 () Bool)

(assert (=> b!533363 (=> (not res!328723) (not e!310339))))

(declare-datatypes ((List!10394 0))(
  ( (Nil!10391) (Cons!10390 (h!11333 (_ BitVec 64)) (t!16630 List!10394)) )
))
(declare-fun arrayNoDuplicates!0 (array!33774 (_ BitVec 32) List!10394) Bool)

(assert (=> b!533363 (= res!328723 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10391))))

(declare-fun b!533364 () Bool)

(declare-fun res!328717 () Bool)

(assert (=> b!533364 (=> (not res!328717) (not e!310339))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33774 (_ BitVec 32)) Bool)

(assert (=> b!533364 (= res!328717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533365 () Bool)

(declare-fun res!328716 () Bool)

(assert (=> b!533365 (=> (not res!328716) (not e!310337))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533365 (= res!328716 (validKeyInArray!0 k0!1998))))

(declare-fun res!328724 () Bool)

(assert (=> start!48606 (=> (not res!328724) (not e!310337))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48606 (= res!328724 (validMask!0 mask!3216))))

(assert (=> start!48606 e!310337))

(assert (=> start!48606 true))

(declare-fun array_inv!11996 (array!33774) Bool)

(assert (=> start!48606 (array_inv!11996 a!3154)))

(declare-fun b!533362 () Bool)

(assert (=> b!533362 (= e!310337 e!310339)))

(declare-fun res!328719 () Bool)

(assert (=> b!533362 (=> (not res!328719) (not e!310339))))

(declare-datatypes ((SeekEntryResult!4687 0))(
  ( (MissingZero!4687 (index!20972 (_ BitVec 32))) (Found!4687 (index!20973 (_ BitVec 32))) (Intermediate!4687 (undefined!5499 Bool) (index!20974 (_ BitVec 32)) (x!49969 (_ BitVec 32))) (Undefined!4687) (MissingVacant!4687 (index!20975 (_ BitVec 32))) )
))
(declare-fun lt!245420 () SeekEntryResult!4687)

(assert (=> b!533362 (= res!328719 (or (= lt!245420 (MissingZero!4687 i!1153)) (= lt!245420 (MissingVacant!4687 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33774 (_ BitVec 32)) SeekEntryResult!4687)

(assert (=> b!533362 (= lt!245420 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!533366 () Bool)

(declare-fun res!328718 () Bool)

(assert (=> b!533366 (=> (not res!328718) (not e!310339))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33774 (_ BitVec 32)) SeekEntryResult!4687)

(assert (=> b!533366 (= res!328718 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16222 a!3154) j!147) a!3154 mask!3216) (Intermediate!4687 false resIndex!32 resX!32)))))

(declare-fun b!533367 () Bool)

(assert (=> b!533367 (= e!310339 (and (bvsge mask!3216 #b00000000000000000000000000000000) (bvslt index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsgt x!1030 #b01111111111111111111111111111110)))))

(declare-fun b!533368 () Bool)

(declare-fun res!328721 () Bool)

(assert (=> b!533368 (=> (not res!328721) (not e!310337))))

(assert (=> b!533368 (= res!328721 (validKeyInArray!0 (select (arr!16222 a!3154) j!147)))))

(declare-fun b!533369 () Bool)

(declare-fun res!328720 () Bool)

(assert (=> b!533369 (=> (not res!328720) (not e!310337))))

(declare-fun arrayContainsKey!0 (array!33774 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533369 (= res!328720 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48606 res!328724) b!533361))

(assert (= (and b!533361 res!328722) b!533368))

(assert (= (and b!533368 res!328721) b!533365))

(assert (= (and b!533365 res!328716) b!533369))

(assert (= (and b!533369 res!328720) b!533362))

(assert (= (and b!533362 res!328719) b!533364))

(assert (= (and b!533364 res!328717) b!533363))

(assert (= (and b!533363 res!328723) b!533360))

(assert (= (and b!533360 res!328715) b!533366))

(assert (= (and b!533366 res!328718) b!533367))

(declare-fun m!513245 () Bool)

(assert (=> b!533360 m!513245))

(declare-fun m!513247 () Bool)

(assert (=> b!533360 m!513247))

(declare-fun m!513249 () Bool)

(assert (=> b!533362 m!513249))

(assert (=> b!533368 m!513247))

(assert (=> b!533368 m!513247))

(declare-fun m!513251 () Bool)

(assert (=> b!533368 m!513251))

(declare-fun m!513253 () Bool)

(assert (=> b!533363 m!513253))

(declare-fun m!513255 () Bool)

(assert (=> b!533369 m!513255))

(declare-fun m!513257 () Bool)

(assert (=> b!533364 m!513257))

(assert (=> b!533366 m!513247))

(assert (=> b!533366 m!513247))

(declare-fun m!513259 () Bool)

(assert (=> b!533366 m!513259))

(declare-fun m!513261 () Bool)

(assert (=> b!533365 m!513261))

(declare-fun m!513263 () Bool)

(assert (=> start!48606 m!513263))

(declare-fun m!513265 () Bool)

(assert (=> start!48606 m!513265))

(check-sat (not b!533364) (not b!533366) (not b!533369) (not start!48606) (not b!533368) (not b!533365) (not b!533363) (not b!533362))
(check-sat)
