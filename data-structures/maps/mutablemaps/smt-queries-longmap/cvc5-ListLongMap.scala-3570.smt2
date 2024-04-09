; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49114 () Bool)

(assert start!49114)

(declare-fun b!540611 () Bool)

(declare-fun e!313166 () Bool)

(assert (=> b!540611 (= e!313166 false)))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34180 0))(
  ( (array!34181 (arr!16422 (Array (_ BitVec 32) (_ BitVec 64))) (size!16786 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34180)

(declare-datatypes ((SeekEntryResult!4887 0))(
  ( (MissingZero!4887 (index!21772 (_ BitVec 32))) (Found!4887 (index!21773 (_ BitVec 32))) (Intermediate!4887 (undefined!5699 Bool) (index!21774 (_ BitVec 32)) (x!50717 (_ BitVec 32))) (Undefined!4887) (MissingVacant!4887 (index!21775 (_ BitVec 32))) )
))
(declare-fun lt!247456 () SeekEntryResult!4887)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34180 (_ BitVec 32)) SeekEntryResult!4887)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540611 (= lt!247456 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16422 a!3154) j!147) mask!3216) (select (arr!16422 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540612 () Bool)

(declare-fun res!335655 () Bool)

(declare-fun e!313167 () Bool)

(assert (=> b!540612 (=> (not res!335655) (not e!313167))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540612 (= res!335655 (and (= (size!16786 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16786 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16786 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!540613 () Bool)

(declare-fun res!335653 () Bool)

(assert (=> b!540613 (=> (not res!335653) (not e!313166))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34180 (_ BitVec 32)) Bool)

(assert (=> b!540613 (= res!335653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!540614 () Bool)

(declare-fun res!335657 () Bool)

(assert (=> b!540614 (=> (not res!335657) (not e!313166))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!540614 (= res!335657 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16786 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16786 a!3154)) (= (select (arr!16422 a!3154) resIndex!32) (select (arr!16422 a!3154) j!147))))))

(declare-fun b!540615 () Bool)

(declare-fun res!335649 () Bool)

(assert (=> b!540615 (=> (not res!335649) (not e!313167))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540615 (= res!335649 (validKeyInArray!0 k!1998))))

(declare-fun res!335652 () Bool)

(assert (=> start!49114 (=> (not res!335652) (not e!313167))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49114 (= res!335652 (validMask!0 mask!3216))))

(assert (=> start!49114 e!313167))

(assert (=> start!49114 true))

(declare-fun array_inv!12196 (array!34180) Bool)

(assert (=> start!49114 (array_inv!12196 a!3154)))

(declare-fun b!540616 () Bool)

(declare-fun res!335650 () Bool)

(assert (=> b!540616 (=> (not res!335650) (not e!313167))))

(declare-fun arrayContainsKey!0 (array!34180 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540616 (= res!335650 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!540617 () Bool)

(declare-fun res!335651 () Bool)

(assert (=> b!540617 (=> (not res!335651) (not e!313167))))

(assert (=> b!540617 (= res!335651 (validKeyInArray!0 (select (arr!16422 a!3154) j!147)))))

(declare-fun b!540618 () Bool)

(declare-fun res!335654 () Bool)

(assert (=> b!540618 (=> (not res!335654) (not e!313166))))

(assert (=> b!540618 (= res!335654 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16422 a!3154) j!147) a!3154 mask!3216) (Intermediate!4887 false resIndex!32 resX!32)))))

(declare-fun b!540619 () Bool)

(declare-fun res!335656 () Bool)

(assert (=> b!540619 (=> (not res!335656) (not e!313166))))

(declare-datatypes ((List!10594 0))(
  ( (Nil!10591) (Cons!10590 (h!11539 (_ BitVec 64)) (t!16830 List!10594)) )
))
(declare-fun arrayNoDuplicates!0 (array!34180 (_ BitVec 32) List!10594) Bool)

(assert (=> b!540619 (= res!335656 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10591))))

(declare-fun b!540620 () Bool)

(assert (=> b!540620 (= e!313167 e!313166)))

(declare-fun res!335648 () Bool)

(assert (=> b!540620 (=> (not res!335648) (not e!313166))))

(declare-fun lt!247457 () SeekEntryResult!4887)

(assert (=> b!540620 (= res!335648 (or (= lt!247457 (MissingZero!4887 i!1153)) (= lt!247457 (MissingVacant!4887 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34180 (_ BitVec 32)) SeekEntryResult!4887)

(assert (=> b!540620 (= lt!247457 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(assert (= (and start!49114 res!335652) b!540612))

(assert (= (and b!540612 res!335655) b!540617))

(assert (= (and b!540617 res!335651) b!540615))

(assert (= (and b!540615 res!335649) b!540616))

(assert (= (and b!540616 res!335650) b!540620))

(assert (= (and b!540620 res!335648) b!540613))

(assert (= (and b!540613 res!335653) b!540619))

(assert (= (and b!540619 res!335656) b!540614))

(assert (= (and b!540614 res!335657) b!540618))

(assert (= (and b!540618 res!335654) b!540611))

(declare-fun m!519307 () Bool)

(assert (=> b!540620 m!519307))

(declare-fun m!519309 () Bool)

(assert (=> b!540611 m!519309))

(assert (=> b!540611 m!519309))

(declare-fun m!519311 () Bool)

(assert (=> b!540611 m!519311))

(assert (=> b!540611 m!519311))

(assert (=> b!540611 m!519309))

(declare-fun m!519313 () Bool)

(assert (=> b!540611 m!519313))

(assert (=> b!540617 m!519309))

(assert (=> b!540617 m!519309))

(declare-fun m!519315 () Bool)

(assert (=> b!540617 m!519315))

(declare-fun m!519317 () Bool)

(assert (=> b!540615 m!519317))

(declare-fun m!519319 () Bool)

(assert (=> b!540614 m!519319))

(assert (=> b!540614 m!519309))

(assert (=> b!540618 m!519309))

(assert (=> b!540618 m!519309))

(declare-fun m!519321 () Bool)

(assert (=> b!540618 m!519321))

(declare-fun m!519323 () Bool)

(assert (=> b!540619 m!519323))

(declare-fun m!519325 () Bool)

(assert (=> b!540616 m!519325))

(declare-fun m!519327 () Bool)

(assert (=> start!49114 m!519327))

(declare-fun m!519329 () Bool)

(assert (=> start!49114 m!519329))

(declare-fun m!519331 () Bool)

(assert (=> b!540613 m!519331))

(push 1)

