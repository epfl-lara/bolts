; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48688 () Bool)

(assert start!48688)

(declare-fun b!534581 () Bool)

(declare-fun res!329937 () Bool)

(declare-fun e!310707 () Bool)

(assert (=> b!534581 (=> (not res!329937) (not e!310707))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(declare-datatypes ((array!33856 0))(
  ( (array!33857 (arr!16263 (Array (_ BitVec 32) (_ BitVec 64))) (size!16627 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33856)

(assert (=> b!534581 (= res!329937 (and (= (size!16627 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16627 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16627 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534582 () Bool)

(declare-fun res!329939 () Bool)

(declare-fun e!310706 () Bool)

(assert (=> b!534582 (=> (not res!329939) (not e!310706))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33856 (_ BitVec 32)) Bool)

(assert (=> b!534582 (= res!329939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534583 () Bool)

(assert (=> b!534583 (= e!310706 false)))

(declare-datatypes ((SeekEntryResult!4728 0))(
  ( (MissingZero!4728 (index!21136 (_ BitVec 32))) (Found!4728 (index!21137 (_ BitVec 32))) (Intermediate!4728 (undefined!5540 Bool) (index!21138 (_ BitVec 32)) (x!50122 (_ BitVec 32))) (Undefined!4728) (MissingVacant!4728 (index!21139 (_ BitVec 32))) )
))
(declare-fun lt!245663 () SeekEntryResult!4728)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33856 (_ BitVec 32)) SeekEntryResult!4728)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534583 (= lt!245663 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16263 a!3154) j!147) mask!3216) (select (arr!16263 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534584 () Bool)

(declare-fun res!329942 () Bool)

(assert (=> b!534584 (=> (not res!329942) (not e!310706))))

(declare-datatypes ((List!10435 0))(
  ( (Nil!10432) (Cons!10431 (h!11374 (_ BitVec 64)) (t!16671 List!10435)) )
))
(declare-fun arrayNoDuplicates!0 (array!33856 (_ BitVec 32) List!10435) Bool)

(assert (=> b!534584 (= res!329942 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10432))))

(declare-fun b!534585 () Bool)

(declare-fun res!329944 () Bool)

(assert (=> b!534585 (=> (not res!329944) (not e!310707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534585 (= res!329944 (validKeyInArray!0 (select (arr!16263 a!3154) j!147)))))

(declare-fun b!534586 () Bool)

(declare-fun res!329938 () Bool)

(assert (=> b!534586 (=> (not res!329938) (not e!310707))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!534586 (= res!329938 (validKeyInArray!0 k!1998))))

(declare-fun res!329940 () Bool)

(assert (=> start!48688 (=> (not res!329940) (not e!310707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48688 (= res!329940 (validMask!0 mask!3216))))

(assert (=> start!48688 e!310707))

(assert (=> start!48688 true))

(declare-fun array_inv!12037 (array!33856) Bool)

(assert (=> start!48688 (array_inv!12037 a!3154)))

(declare-fun b!534587 () Bool)

(declare-fun res!329943 () Bool)

(assert (=> b!534587 (=> (not res!329943) (not e!310706))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534587 (= res!329943 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16263 a!3154) j!147) a!3154 mask!3216) (Intermediate!4728 false resIndex!32 resX!32)))))

(declare-fun b!534588 () Bool)

(declare-fun res!329936 () Bool)

(assert (=> b!534588 (=> (not res!329936) (not e!310707))))

(declare-fun arrayContainsKey!0 (array!33856 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534588 (= res!329936 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534589 () Bool)

(assert (=> b!534589 (= e!310707 e!310706)))

(declare-fun res!329941 () Bool)

(assert (=> b!534589 (=> (not res!329941) (not e!310706))))

(declare-fun lt!245662 () SeekEntryResult!4728)

(assert (=> b!534589 (= res!329941 (or (= lt!245662 (MissingZero!4728 i!1153)) (= lt!245662 (MissingVacant!4728 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33856 (_ BitVec 32)) SeekEntryResult!4728)

(assert (=> b!534589 (= lt!245662 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!534590 () Bool)

(declare-fun res!329945 () Bool)

(assert (=> b!534590 (=> (not res!329945) (not e!310706))))

(assert (=> b!534590 (= res!329945 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16627 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16627 a!3154)) (= (select (arr!16263 a!3154) resIndex!32) (select (arr!16263 a!3154) j!147))))))

(assert (= (and start!48688 res!329940) b!534581))

(assert (= (and b!534581 res!329937) b!534585))

(assert (= (and b!534585 res!329944) b!534586))

(assert (= (and b!534586 res!329938) b!534588))

(assert (= (and b!534588 res!329936) b!534589))

(assert (= (and b!534589 res!329941) b!534582))

(assert (= (and b!534582 res!329939) b!534584))

(assert (= (and b!534584 res!329942) b!534590))

(assert (= (and b!534590 res!329945) b!534587))

(assert (= (and b!534587 res!329943) b!534583))

(declare-fun m!514291 () Bool)

(assert (=> start!48688 m!514291))

(declare-fun m!514293 () Bool)

(assert (=> start!48688 m!514293))

(declare-fun m!514295 () Bool)

(assert (=> b!534588 m!514295))

(declare-fun m!514297 () Bool)

(assert (=> b!534587 m!514297))

(assert (=> b!534587 m!514297))

(declare-fun m!514299 () Bool)

(assert (=> b!534587 m!514299))

(declare-fun m!514301 () Bool)

(assert (=> b!534590 m!514301))

(assert (=> b!534590 m!514297))

(declare-fun m!514303 () Bool)

(assert (=> b!534589 m!514303))

(assert (=> b!534585 m!514297))

(assert (=> b!534585 m!514297))

(declare-fun m!514305 () Bool)

(assert (=> b!534585 m!514305))

(declare-fun m!514307 () Bool)

(assert (=> b!534584 m!514307))

(declare-fun m!514309 () Bool)

(assert (=> b!534582 m!514309))

(declare-fun m!514311 () Bool)

(assert (=> b!534586 m!514311))

(assert (=> b!534583 m!514297))

(assert (=> b!534583 m!514297))

(declare-fun m!514313 () Bool)

(assert (=> b!534583 m!514313))

(assert (=> b!534583 m!514313))

(assert (=> b!534583 m!514297))

(declare-fun m!514315 () Bool)

(assert (=> b!534583 m!514315))

(push 1)

(assert (not b!534585))

(assert (not b!534584))

(assert (not b!534582))

(assert (not b!534587))

(assert (not b!534583))

(assert (not b!534589))

(assert (not b!534588))

(assert (not b!534586))

(assert (not start!48688))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

