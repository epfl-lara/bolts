; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49308 () Bool)

(assert start!49308)

(declare-fun res!337264 () Bool)

(declare-fun e!313966 () Bool)

(assert (=> start!49308 (=> (not res!337264) (not e!313966))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49308 (= res!337264 (validMask!0 mask!3216))))

(assert (=> start!49308 e!313966))

(assert (=> start!49308 true))

(declare-datatypes ((array!34272 0))(
  ( (array!34273 (arr!16465 (Array (_ BitVec 32) (_ BitVec 64))) (size!16829 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34272)

(declare-fun array_inv!12239 (array!34272) Bool)

(assert (=> start!49308 (array_inv!12239 a!3154)))

(declare-fun b!542559 () Bool)

(declare-fun res!337269 () Bool)

(declare-fun e!313964 () Bool)

(assert (=> b!542559 (=> (not res!337269) (not e!313964))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34272 (_ BitVec 32)) Bool)

(assert (=> b!542559 (= res!337269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542560 () Bool)

(declare-fun e!313965 () Bool)

(assert (=> b!542560 (= e!313965 false)))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!247963 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542560 (= lt!247963 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!542561 () Bool)

(declare-fun res!337271 () Bool)

(assert (=> b!542561 (=> (not res!337271) (not e!313965))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!542561 (= res!337271 (and (not (= (select (arr!16465 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16465 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16465 a!3154) index!1177) (select (arr!16465 a!3154) j!147)))))))

(declare-fun b!542562 () Bool)

(declare-fun res!337261 () Bool)

(assert (=> b!542562 (=> (not res!337261) (not e!313966))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542562 (= res!337261 (validKeyInArray!0 k0!1998))))

(declare-fun b!542563 () Bool)

(assert (=> b!542563 (= e!313964 e!313965)))

(declare-fun res!337260 () Bool)

(assert (=> b!542563 (=> (not res!337260) (not e!313965))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4930 0))(
  ( (MissingZero!4930 (index!21944 (_ BitVec 32))) (Found!4930 (index!21945 (_ BitVec 32))) (Intermediate!4930 (undefined!5742 Bool) (index!21946 (_ BitVec 32)) (x!50884 (_ BitVec 32))) (Undefined!4930) (MissingVacant!4930 (index!21947 (_ BitVec 32))) )
))
(declare-fun lt!247962 () SeekEntryResult!4930)

(assert (=> b!542563 (= res!337260 (= lt!247962 (Intermediate!4930 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34272 (_ BitVec 32)) SeekEntryResult!4930)

(assert (=> b!542563 (= lt!247962 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16465 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542564 () Bool)

(declare-fun res!337263 () Bool)

(assert (=> b!542564 (=> (not res!337263) (not e!313964))))

(assert (=> b!542564 (= res!337263 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16829 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16829 a!3154)) (= (select (arr!16465 a!3154) resIndex!32) (select (arr!16465 a!3154) j!147))))))

(declare-fun b!542565 () Bool)

(declare-fun res!337268 () Bool)

(assert (=> b!542565 (=> (not res!337268) (not e!313964))))

(declare-datatypes ((List!10637 0))(
  ( (Nil!10634) (Cons!10633 (h!11588 (_ BitVec 64)) (t!16873 List!10637)) )
))
(declare-fun arrayNoDuplicates!0 (array!34272 (_ BitVec 32) List!10637) Bool)

(assert (=> b!542565 (= res!337268 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10634))))

(declare-fun b!542566 () Bool)

(declare-fun res!337267 () Bool)

(assert (=> b!542566 (=> (not res!337267) (not e!313966))))

(declare-fun arrayContainsKey!0 (array!34272 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542566 (= res!337267 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542567 () Bool)

(declare-fun res!337270 () Bool)

(assert (=> b!542567 (=> (not res!337270) (not e!313965))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542567 (= res!337270 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16465 a!3154) j!147) mask!3216) (select (arr!16465 a!3154) j!147) a!3154 mask!3216) lt!247962))))

(declare-fun b!542568 () Bool)

(assert (=> b!542568 (= e!313966 e!313964)))

(declare-fun res!337265 () Bool)

(assert (=> b!542568 (=> (not res!337265) (not e!313964))))

(declare-fun lt!247964 () SeekEntryResult!4930)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542568 (= res!337265 (or (= lt!247964 (MissingZero!4930 i!1153)) (= lt!247964 (MissingVacant!4930 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34272 (_ BitVec 32)) SeekEntryResult!4930)

(assert (=> b!542568 (= lt!247964 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!542569 () Bool)

(declare-fun res!337262 () Bool)

(assert (=> b!542569 (=> (not res!337262) (not e!313966))))

(assert (=> b!542569 (= res!337262 (and (= (size!16829 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16829 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16829 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542570 () Bool)

(declare-fun res!337266 () Bool)

(assert (=> b!542570 (=> (not res!337266) (not e!313966))))

(assert (=> b!542570 (= res!337266 (validKeyInArray!0 (select (arr!16465 a!3154) j!147)))))

(assert (= (and start!49308 res!337264) b!542569))

(assert (= (and b!542569 res!337262) b!542570))

(assert (= (and b!542570 res!337266) b!542562))

(assert (= (and b!542562 res!337261) b!542566))

(assert (= (and b!542566 res!337267) b!542568))

(assert (= (and b!542568 res!337265) b!542559))

(assert (= (and b!542559 res!337269) b!542565))

(assert (= (and b!542565 res!337268) b!542564))

(assert (= (and b!542564 res!337263) b!542563))

(assert (= (and b!542563 res!337260) b!542567))

(assert (= (and b!542567 res!337270) b!542561))

(assert (= (and b!542561 res!337271) b!542560))

(declare-fun m!520801 () Bool)

(assert (=> b!542570 m!520801))

(assert (=> b!542570 m!520801))

(declare-fun m!520803 () Bool)

(assert (=> b!542570 m!520803))

(declare-fun m!520805 () Bool)

(assert (=> b!542560 m!520805))

(assert (=> b!542567 m!520801))

(assert (=> b!542567 m!520801))

(declare-fun m!520807 () Bool)

(assert (=> b!542567 m!520807))

(assert (=> b!542567 m!520807))

(assert (=> b!542567 m!520801))

(declare-fun m!520809 () Bool)

(assert (=> b!542567 m!520809))

(declare-fun m!520811 () Bool)

(assert (=> b!542566 m!520811))

(declare-fun m!520813 () Bool)

(assert (=> b!542561 m!520813))

(assert (=> b!542561 m!520801))

(declare-fun m!520815 () Bool)

(assert (=> b!542562 m!520815))

(assert (=> b!542563 m!520801))

(assert (=> b!542563 m!520801))

(declare-fun m!520817 () Bool)

(assert (=> b!542563 m!520817))

(declare-fun m!520819 () Bool)

(assert (=> b!542568 m!520819))

(declare-fun m!520821 () Bool)

(assert (=> b!542564 m!520821))

(assert (=> b!542564 m!520801))

(declare-fun m!520823 () Bool)

(assert (=> start!49308 m!520823))

(declare-fun m!520825 () Bool)

(assert (=> start!49308 m!520825))

(declare-fun m!520827 () Bool)

(assert (=> b!542565 m!520827))

(declare-fun m!520829 () Bool)

(assert (=> b!542559 m!520829))

(check-sat (not start!49308) (not b!542566) (not b!542563) (not b!542560) (not b!542559) (not b!542562) (not b!542565) (not b!542570) (not b!542567) (not b!542568))
