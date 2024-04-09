; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48678 () Bool)

(assert start!48678)

(declare-fun b!534431 () Bool)

(declare-fun res!329790 () Bool)

(declare-fun e!310662 () Bool)

(assert (=> b!534431 (=> (not res!329790) (not e!310662))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33846 0))(
  ( (array!33847 (arr!16258 (Array (_ BitVec 32) (_ BitVec 64))) (size!16622 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33846)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534431 (= res!329790 (and (= (size!16622 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16622 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16622 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534432 () Bool)

(declare-fun res!329792 () Bool)

(declare-fun e!310661 () Bool)

(assert (=> b!534432 (=> (not res!329792) (not e!310661))))

(declare-datatypes ((List!10430 0))(
  ( (Nil!10427) (Cons!10426 (h!11369 (_ BitVec 64)) (t!16666 List!10430)) )
))
(declare-fun arrayNoDuplicates!0 (array!33846 (_ BitVec 32) List!10430) Bool)

(assert (=> b!534432 (= res!329792 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10427))))

(declare-fun b!534433 () Bool)

(assert (=> b!534433 (= e!310662 e!310661)))

(declare-fun res!329794 () Bool)

(assert (=> b!534433 (=> (not res!329794) (not e!310661))))

(declare-datatypes ((SeekEntryResult!4723 0))(
  ( (MissingZero!4723 (index!21116 (_ BitVec 32))) (Found!4723 (index!21117 (_ BitVec 32))) (Intermediate!4723 (undefined!5535 Bool) (index!21118 (_ BitVec 32)) (x!50101 (_ BitVec 32))) (Undefined!4723) (MissingVacant!4723 (index!21119 (_ BitVec 32))) )
))
(declare-fun lt!245632 () SeekEntryResult!4723)

(assert (=> b!534433 (= res!329794 (or (= lt!245632 (MissingZero!4723 i!1153)) (= lt!245632 (MissingVacant!4723 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33846 (_ BitVec 32)) SeekEntryResult!4723)

(assert (=> b!534433 (= lt!245632 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!534434 () Bool)

(declare-fun res!329789 () Bool)

(assert (=> b!534434 (=> (not res!329789) (not e!310661))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33846 (_ BitVec 32)) SeekEntryResult!4723)

(assert (=> b!534434 (= res!329789 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16258 a!3154) j!147) a!3154 mask!3216) (Intermediate!4723 false resIndex!32 resX!32)))))

(declare-fun b!534436 () Bool)

(declare-fun res!329793 () Bool)

(assert (=> b!534436 (=> (not res!329793) (not e!310662))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534436 (= res!329793 (validKeyInArray!0 (select (arr!16258 a!3154) j!147)))))

(declare-fun b!534437 () Bool)

(declare-fun res!329791 () Bool)

(assert (=> b!534437 (=> (not res!329791) (not e!310661))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33846 (_ BitVec 32)) Bool)

(assert (=> b!534437 (= res!329791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534438 () Bool)

(declare-fun res!329788 () Bool)

(assert (=> b!534438 (=> (not res!329788) (not e!310662))))

(assert (=> b!534438 (= res!329788 (validKeyInArray!0 k0!1998))))

(declare-fun b!534439 () Bool)

(declare-fun res!329787 () Bool)

(assert (=> b!534439 (=> (not res!329787) (not e!310662))))

(declare-fun arrayContainsKey!0 (array!33846 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534439 (= res!329787 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534440 () Bool)

(declare-fun res!329795 () Bool)

(assert (=> b!534440 (=> (not res!329795) (not e!310661))))

(assert (=> b!534440 (= res!329795 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16622 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16622 a!3154)) (= (select (arr!16258 a!3154) resIndex!32) (select (arr!16258 a!3154) j!147))))))

(declare-fun res!329786 () Bool)

(assert (=> start!48678 (=> (not res!329786) (not e!310662))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48678 (= res!329786 (validMask!0 mask!3216))))

(assert (=> start!48678 e!310662))

(assert (=> start!48678 true))

(declare-fun array_inv!12032 (array!33846) Bool)

(assert (=> start!48678 (array_inv!12032 a!3154)))

(declare-fun b!534435 () Bool)

(assert (=> b!534435 (= e!310661 false)))

(declare-fun lt!245633 () SeekEntryResult!4723)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534435 (= lt!245633 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16258 a!3154) j!147) mask!3216) (select (arr!16258 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48678 res!329786) b!534431))

(assert (= (and b!534431 res!329790) b!534436))

(assert (= (and b!534436 res!329793) b!534438))

(assert (= (and b!534438 res!329788) b!534439))

(assert (= (and b!534439 res!329787) b!534433))

(assert (= (and b!534433 res!329794) b!534437))

(assert (= (and b!534437 res!329791) b!534432))

(assert (= (and b!534432 res!329792) b!534440))

(assert (= (and b!534440 res!329795) b!534434))

(assert (= (and b!534434 res!329789) b!534435))

(declare-fun m!514161 () Bool)

(assert (=> b!534433 m!514161))

(declare-fun m!514163 () Bool)

(assert (=> b!534437 m!514163))

(declare-fun m!514165 () Bool)

(assert (=> b!534438 m!514165))

(declare-fun m!514167 () Bool)

(assert (=> start!48678 m!514167))

(declare-fun m!514169 () Bool)

(assert (=> start!48678 m!514169))

(declare-fun m!514171 () Bool)

(assert (=> b!534440 m!514171))

(declare-fun m!514173 () Bool)

(assert (=> b!534440 m!514173))

(assert (=> b!534435 m!514173))

(assert (=> b!534435 m!514173))

(declare-fun m!514175 () Bool)

(assert (=> b!534435 m!514175))

(assert (=> b!534435 m!514175))

(assert (=> b!534435 m!514173))

(declare-fun m!514177 () Bool)

(assert (=> b!534435 m!514177))

(assert (=> b!534436 m!514173))

(assert (=> b!534436 m!514173))

(declare-fun m!514179 () Bool)

(assert (=> b!534436 m!514179))

(declare-fun m!514181 () Bool)

(assert (=> b!534432 m!514181))

(declare-fun m!514183 () Bool)

(assert (=> b!534439 m!514183))

(assert (=> b!534434 m!514173))

(assert (=> b!534434 m!514173))

(declare-fun m!514185 () Bool)

(assert (=> b!534434 m!514185))

(check-sat (not b!534439) (not b!534436) (not b!534434) (not b!534438) (not b!534433) (not b!534437) (not b!534435) (not b!534432) (not start!48678))
(check-sat)
