; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49112 () Bool)

(assert start!49112)

(declare-fun b!540582 () Bool)

(declare-fun res!335622 () Bool)

(declare-fun e!313159 () Bool)

(assert (=> b!540582 (=> (not res!335622) (not e!313159))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540582 (= res!335622 (validKeyInArray!0 k!1998))))

(declare-fun b!540583 () Bool)

(declare-fun res!335618 () Bool)

(assert (=> b!540583 (=> (not res!335618) (not e!313159))))

(declare-datatypes ((array!34178 0))(
  ( (array!34179 (arr!16421 (Array (_ BitVec 32) (_ BitVec 64))) (size!16785 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34178)

(declare-fun arrayContainsKey!0 (array!34178 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540583 (= res!335618 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!540584 () Bool)

(declare-fun e!313157 () Bool)

(assert (=> b!540584 (= e!313159 e!313157)))

(declare-fun res!335620 () Bool)

(assert (=> b!540584 (=> (not res!335620) (not e!313157))))

(declare-datatypes ((SeekEntryResult!4886 0))(
  ( (MissingZero!4886 (index!21768 (_ BitVec 32))) (Found!4886 (index!21769 (_ BitVec 32))) (Intermediate!4886 (undefined!5698 Bool) (index!21770 (_ BitVec 32)) (x!50708 (_ BitVec 32))) (Undefined!4886) (MissingVacant!4886 (index!21771 (_ BitVec 32))) )
))
(declare-fun lt!247451 () SeekEntryResult!4886)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540584 (= res!335620 (or (= lt!247451 (MissingZero!4886 i!1153)) (= lt!247451 (MissingVacant!4886 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34178 (_ BitVec 32)) SeekEntryResult!4886)

(assert (=> b!540584 (= lt!247451 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!540585 () Bool)

(declare-fun res!335623 () Bool)

(assert (=> b!540585 (=> (not res!335623) (not e!313157))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34178 (_ BitVec 32)) SeekEntryResult!4886)

(assert (=> b!540585 (= res!335623 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16421 a!3154) j!147) a!3154 mask!3216) (Intermediate!4886 false resIndex!32 resX!32)))))

(declare-fun b!540586 () Bool)

(declare-fun res!335626 () Bool)

(assert (=> b!540586 (=> (not res!335626) (not e!313157))))

(declare-datatypes ((List!10593 0))(
  ( (Nil!10590) (Cons!10589 (h!11538 (_ BitVec 64)) (t!16829 List!10593)) )
))
(declare-fun arrayNoDuplicates!0 (array!34178 (_ BitVec 32) List!10593) Bool)

(assert (=> b!540586 (= res!335626 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10590))))

(declare-fun b!540587 () Bool)

(declare-fun res!335627 () Bool)

(assert (=> b!540587 (=> (not res!335627) (not e!313159))))

(assert (=> b!540587 (= res!335627 (and (= (size!16785 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16785 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16785 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!540588 () Bool)

(assert (=> b!540588 (= e!313157 false)))

(declare-fun lt!247450 () SeekEntryResult!4886)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540588 (= lt!247450 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16421 a!3154) j!147) mask!3216) (select (arr!16421 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540581 () Bool)

(declare-fun res!335624 () Bool)

(assert (=> b!540581 (=> (not res!335624) (not e!313157))))

(assert (=> b!540581 (= res!335624 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16785 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16785 a!3154)) (= (select (arr!16421 a!3154) resIndex!32) (select (arr!16421 a!3154) j!147))))))

(declare-fun res!335625 () Bool)

(assert (=> start!49112 (=> (not res!335625) (not e!313159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49112 (= res!335625 (validMask!0 mask!3216))))

(assert (=> start!49112 e!313159))

(assert (=> start!49112 true))

(declare-fun array_inv!12195 (array!34178) Bool)

(assert (=> start!49112 (array_inv!12195 a!3154)))

(declare-fun b!540589 () Bool)

(declare-fun res!335619 () Bool)

(assert (=> b!540589 (=> (not res!335619) (not e!313157))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34178 (_ BitVec 32)) Bool)

(assert (=> b!540589 (= res!335619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!540590 () Bool)

(declare-fun res!335621 () Bool)

(assert (=> b!540590 (=> (not res!335621) (not e!313159))))

(assert (=> b!540590 (= res!335621 (validKeyInArray!0 (select (arr!16421 a!3154) j!147)))))

(assert (= (and start!49112 res!335625) b!540587))

(assert (= (and b!540587 res!335627) b!540590))

(assert (= (and b!540590 res!335621) b!540582))

(assert (= (and b!540582 res!335622) b!540583))

(assert (= (and b!540583 res!335618) b!540584))

(assert (= (and b!540584 res!335620) b!540589))

(assert (= (and b!540589 res!335619) b!540586))

(assert (= (and b!540586 res!335626) b!540581))

(assert (= (and b!540581 res!335624) b!540585))

(assert (= (and b!540585 res!335623) b!540588))

(declare-fun m!519281 () Bool)

(assert (=> b!540589 m!519281))

(declare-fun m!519283 () Bool)

(assert (=> b!540590 m!519283))

(assert (=> b!540590 m!519283))

(declare-fun m!519285 () Bool)

(assert (=> b!540590 m!519285))

(assert (=> b!540585 m!519283))

(assert (=> b!540585 m!519283))

(declare-fun m!519287 () Bool)

(assert (=> b!540585 m!519287))

(declare-fun m!519289 () Bool)

(assert (=> b!540583 m!519289))

(declare-fun m!519291 () Bool)

(assert (=> b!540584 m!519291))

(declare-fun m!519293 () Bool)

(assert (=> b!540582 m!519293))

(declare-fun m!519295 () Bool)

(assert (=> b!540581 m!519295))

(assert (=> b!540581 m!519283))

(declare-fun m!519297 () Bool)

(assert (=> b!540586 m!519297))

(declare-fun m!519299 () Bool)

(assert (=> start!49112 m!519299))

(declare-fun m!519301 () Bool)

(assert (=> start!49112 m!519301))

(assert (=> b!540588 m!519283))

(assert (=> b!540588 m!519283))

(declare-fun m!519303 () Bool)

(assert (=> b!540588 m!519303))

(assert (=> b!540588 m!519303))

(assert (=> b!540588 m!519283))

(declare-fun m!519305 () Bool)

(assert (=> b!540588 m!519305))

(push 1)

(assert (not start!49112))

(assert (not b!540590))

(assert (not b!540588))

(assert (not b!540584))

(assert (not b!540586))

(assert (not b!540583))

(assert (not b!540589))

(assert (not b!540585))

(assert (not b!540582))

