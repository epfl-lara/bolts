; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49120 () Bool)

(assert start!49120)

(declare-fun res!335747 () Bool)

(declare-fun e!313193 () Bool)

(assert (=> start!49120 (=> (not res!335747) (not e!313193))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49120 (= res!335747 (validMask!0 mask!3216))))

(assert (=> start!49120 e!313193))

(assert (=> start!49120 true))

(declare-datatypes ((array!34186 0))(
  ( (array!34187 (arr!16425 (Array (_ BitVec 32) (_ BitVec 64))) (size!16789 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34186)

(declare-fun array_inv!12199 (array!34186) Bool)

(assert (=> start!49120 (array_inv!12199 a!3154)))

(declare-fun b!540701 () Bool)

(declare-fun res!335742 () Bool)

(declare-fun e!313194 () Bool)

(assert (=> b!540701 (=> (not res!335742) (not e!313194))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!540701 (= res!335742 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16789 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16789 a!3154)) (= (select (arr!16425 a!3154) resIndex!32) (select (arr!16425 a!3154) j!147))))))

(declare-fun b!540702 () Bool)

(declare-fun res!335739 () Bool)

(assert (=> b!540702 (=> (not res!335739) (not e!313194))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34186 (_ BitVec 32)) Bool)

(assert (=> b!540702 (= res!335739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!540703 () Bool)

(declare-fun res!335740 () Bool)

(assert (=> b!540703 (=> (not res!335740) (not e!313193))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540703 (= res!335740 (validKeyInArray!0 (select (arr!16425 a!3154) j!147)))))

(declare-fun b!540704 () Bool)

(assert (=> b!540704 (= e!313193 e!313194)))

(declare-fun res!335743 () Bool)

(assert (=> b!540704 (=> (not res!335743) (not e!313194))))

(declare-datatypes ((SeekEntryResult!4890 0))(
  ( (MissingZero!4890 (index!21784 (_ BitVec 32))) (Found!4890 (index!21785 (_ BitVec 32))) (Intermediate!4890 (undefined!5702 Bool) (index!21786 (_ BitVec 32)) (x!50728 (_ BitVec 32))) (Undefined!4890) (MissingVacant!4890 (index!21787 (_ BitVec 32))) )
))
(declare-fun lt!247475 () SeekEntryResult!4890)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540704 (= res!335743 (or (= lt!247475 (MissingZero!4890 i!1153)) (= lt!247475 (MissingVacant!4890 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34186 (_ BitVec 32)) SeekEntryResult!4890)

(assert (=> b!540704 (= lt!247475 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!540705 () Bool)

(declare-fun res!335738 () Bool)

(assert (=> b!540705 (=> (not res!335738) (not e!313193))))

(assert (=> b!540705 (= res!335738 (validKeyInArray!0 k!1998))))

(declare-fun b!540706 () Bool)

(assert (=> b!540706 (= e!313194 false)))

(declare-fun lt!247474 () SeekEntryResult!4890)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34186 (_ BitVec 32)) SeekEntryResult!4890)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540706 (= lt!247474 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16425 a!3154) j!147) mask!3216) (select (arr!16425 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540707 () Bool)

(declare-fun res!335746 () Bool)

(assert (=> b!540707 (=> (not res!335746) (not e!313194))))

(declare-datatypes ((List!10597 0))(
  ( (Nil!10594) (Cons!10593 (h!11542 (_ BitVec 64)) (t!16833 List!10597)) )
))
(declare-fun arrayNoDuplicates!0 (array!34186 (_ BitVec 32) List!10597) Bool)

(assert (=> b!540707 (= res!335746 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10594))))

(declare-fun b!540708 () Bool)

(declare-fun res!335744 () Bool)

(assert (=> b!540708 (=> (not res!335744) (not e!313193))))

(declare-fun arrayContainsKey!0 (array!34186 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540708 (= res!335744 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!540709 () Bool)

(declare-fun res!335741 () Bool)

(assert (=> b!540709 (=> (not res!335741) (not e!313194))))

(assert (=> b!540709 (= res!335741 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16425 a!3154) j!147) a!3154 mask!3216) (Intermediate!4890 false resIndex!32 resX!32)))))

(declare-fun b!540710 () Bool)

(declare-fun res!335745 () Bool)

(assert (=> b!540710 (=> (not res!335745) (not e!313193))))

(assert (=> b!540710 (= res!335745 (and (= (size!16789 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16789 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16789 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!49120 res!335747) b!540710))

(assert (= (and b!540710 res!335745) b!540703))

(assert (= (and b!540703 res!335740) b!540705))

(assert (= (and b!540705 res!335738) b!540708))

(assert (= (and b!540708 res!335744) b!540704))

(assert (= (and b!540704 res!335743) b!540702))

(assert (= (and b!540702 res!335739) b!540707))

(assert (= (and b!540707 res!335746) b!540701))

(assert (= (and b!540701 res!335742) b!540709))

(assert (= (and b!540709 res!335741) b!540706))

(declare-fun m!519385 () Bool)

(assert (=> b!540705 m!519385))

(declare-fun m!519387 () Bool)

(assert (=> b!540702 m!519387))

(declare-fun m!519389 () Bool)

(assert (=> b!540703 m!519389))

(assert (=> b!540703 m!519389))

(declare-fun m!519391 () Bool)

(assert (=> b!540703 m!519391))

(assert (=> b!540706 m!519389))

(assert (=> b!540706 m!519389))

(declare-fun m!519393 () Bool)

(assert (=> b!540706 m!519393))

(assert (=> b!540706 m!519393))

(assert (=> b!540706 m!519389))

(declare-fun m!519395 () Bool)

(assert (=> b!540706 m!519395))

(declare-fun m!519397 () Bool)

(assert (=> b!540704 m!519397))

(declare-fun m!519399 () Bool)

(assert (=> b!540708 m!519399))

(declare-fun m!519401 () Bool)

(assert (=> b!540707 m!519401))

(declare-fun m!519403 () Bool)

(assert (=> b!540701 m!519403))

(assert (=> b!540701 m!519389))

(declare-fun m!519405 () Bool)

(assert (=> start!49120 m!519405))

(declare-fun m!519407 () Bool)

(assert (=> start!49120 m!519407))

(assert (=> b!540709 m!519389))

(assert (=> b!540709 m!519389))

(declare-fun m!519409 () Bool)

(assert (=> b!540709 m!519409))

(push 1)

(assert (not b!540706))

(assert (not b!540709))

