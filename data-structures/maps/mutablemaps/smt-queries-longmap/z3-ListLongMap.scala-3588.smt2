; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49332 () Bool)

(assert start!49332)

(declare-fun b!542991 () Bool)

(declare-fun e!314109 () Bool)

(declare-fun e!314110 () Bool)

(assert (=> b!542991 (= e!314109 e!314110)))

(declare-fun res!337701 () Bool)

(assert (=> b!542991 (=> (not res!337701) (not e!314110))))

(declare-datatypes ((SeekEntryResult!4942 0))(
  ( (MissingZero!4942 (index!21992 (_ BitVec 32))) (Found!4942 (index!21993 (_ BitVec 32))) (Intermediate!4942 (undefined!5754 Bool) (index!21994 (_ BitVec 32)) (x!50928 (_ BitVec 32))) (Undefined!4942) (MissingVacant!4942 (index!21995 (_ BitVec 32))) )
))
(declare-fun lt!248071 () SeekEntryResult!4942)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542991 (= res!337701 (or (= lt!248071 (MissingZero!4942 i!1153)) (= lt!248071 (MissingVacant!4942 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-datatypes ((array!34296 0))(
  ( (array!34297 (arr!16477 (Array (_ BitVec 32) (_ BitVec 64))) (size!16841 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34296)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34296 (_ BitVec 32)) SeekEntryResult!4942)

(assert (=> b!542991 (= lt!248071 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!542992 () Bool)

(declare-fun res!337698 () Bool)

(assert (=> b!542992 (=> (not res!337698) (not e!314110))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34296 (_ BitVec 32)) Bool)

(assert (=> b!542992 (= res!337698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542993 () Bool)

(declare-fun res!337693 () Bool)

(assert (=> b!542993 (=> (not res!337693) (not e!314109))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!542993 (= res!337693 (and (= (size!16841 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16841 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16841 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542994 () Bool)

(declare-fun res!337700 () Bool)

(assert (=> b!542994 (=> (not res!337700) (not e!314109))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542994 (= res!337700 (validKeyInArray!0 (select (arr!16477 a!3154) j!147)))))

(declare-fun b!542995 () Bool)

(declare-fun res!337694 () Bool)

(declare-fun e!314107 () Bool)

(assert (=> b!542995 (=> (not res!337694) (not e!314107))))

(declare-fun lt!248070 () SeekEntryResult!4942)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34296 (_ BitVec 32)) SeekEntryResult!4942)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542995 (= res!337694 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16477 a!3154) j!147) mask!3216) (select (arr!16477 a!3154) j!147) a!3154 mask!3216) lt!248070))))

(declare-fun b!542996 () Bool)

(declare-fun res!337697 () Bool)

(assert (=> b!542996 (=> (not res!337697) (not e!314110))))

(declare-datatypes ((List!10649 0))(
  ( (Nil!10646) (Cons!10645 (h!11600 (_ BitVec 64)) (t!16885 List!10649)) )
))
(declare-fun arrayNoDuplicates!0 (array!34296 (_ BitVec 32) List!10649) Bool)

(assert (=> b!542996 (= res!337697 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10646))))

(declare-fun b!542997 () Bool)

(declare-fun res!337692 () Bool)

(assert (=> b!542997 (=> (not res!337692) (not e!314109))))

(declare-fun arrayContainsKey!0 (array!34296 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542997 (= res!337692 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542998 () Bool)

(declare-fun res!337702 () Bool)

(assert (=> b!542998 (=> (not res!337702) (not e!314107))))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!542998 (= res!337702 (and (not (= (select (arr!16477 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16477 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16477 a!3154) index!1177) (select (arr!16477 a!3154) j!147)))))))

(declare-fun res!337703 () Bool)

(assert (=> start!49332 (=> (not res!337703) (not e!314109))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49332 (= res!337703 (validMask!0 mask!3216))))

(assert (=> start!49332 e!314109))

(assert (=> start!49332 true))

(declare-fun array_inv!12251 (array!34296) Bool)

(assert (=> start!49332 (array_inv!12251 a!3154)))

(declare-fun b!542999 () Bool)

(declare-fun res!337695 () Bool)

(assert (=> b!542999 (=> (not res!337695) (not e!314109))))

(assert (=> b!542999 (= res!337695 (validKeyInArray!0 k0!1998))))

(declare-fun b!543000 () Bool)

(assert (=> b!543000 (= e!314107 false)))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!248072 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543000 (= lt!248072 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!543001 () Bool)

(declare-fun res!337699 () Bool)

(assert (=> b!543001 (=> (not res!337699) (not e!314110))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!543001 (= res!337699 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16841 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16841 a!3154)) (= (select (arr!16477 a!3154) resIndex!32) (select (arr!16477 a!3154) j!147))))))

(declare-fun b!543002 () Bool)

(assert (=> b!543002 (= e!314110 e!314107)))

(declare-fun res!337696 () Bool)

(assert (=> b!543002 (=> (not res!337696) (not e!314107))))

(assert (=> b!543002 (= res!337696 (= lt!248070 (Intermediate!4942 false resIndex!32 resX!32)))))

(assert (=> b!543002 (= lt!248070 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16477 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!49332 res!337703) b!542993))

(assert (= (and b!542993 res!337693) b!542994))

(assert (= (and b!542994 res!337700) b!542999))

(assert (= (and b!542999 res!337695) b!542997))

(assert (= (and b!542997 res!337692) b!542991))

(assert (= (and b!542991 res!337701) b!542992))

(assert (= (and b!542992 res!337698) b!542996))

(assert (= (and b!542996 res!337697) b!543001))

(assert (= (and b!543001 res!337699) b!543002))

(assert (= (and b!543002 res!337696) b!542995))

(assert (= (and b!542995 res!337694) b!542998))

(assert (= (and b!542998 res!337702) b!543000))

(declare-fun m!521161 () Bool)

(assert (=> b!542994 m!521161))

(assert (=> b!542994 m!521161))

(declare-fun m!521163 () Bool)

(assert (=> b!542994 m!521163))

(declare-fun m!521165 () Bool)

(assert (=> b!543001 m!521165))

(assert (=> b!543001 m!521161))

(assert (=> b!542995 m!521161))

(assert (=> b!542995 m!521161))

(declare-fun m!521167 () Bool)

(assert (=> b!542995 m!521167))

(assert (=> b!542995 m!521167))

(assert (=> b!542995 m!521161))

(declare-fun m!521169 () Bool)

(assert (=> b!542995 m!521169))

(declare-fun m!521171 () Bool)

(assert (=> b!543000 m!521171))

(declare-fun m!521173 () Bool)

(assert (=> b!542998 m!521173))

(assert (=> b!542998 m!521161))

(declare-fun m!521175 () Bool)

(assert (=> b!542999 m!521175))

(declare-fun m!521177 () Bool)

(assert (=> b!542997 m!521177))

(declare-fun m!521179 () Bool)

(assert (=> b!542992 m!521179))

(declare-fun m!521181 () Bool)

(assert (=> b!542991 m!521181))

(declare-fun m!521183 () Bool)

(assert (=> b!542996 m!521183))

(declare-fun m!521185 () Bool)

(assert (=> start!49332 m!521185))

(declare-fun m!521187 () Bool)

(assert (=> start!49332 m!521187))

(assert (=> b!543002 m!521161))

(assert (=> b!543002 m!521161))

(declare-fun m!521189 () Bool)

(assert (=> b!543002 m!521189))

(check-sat (not b!543002) (not b!542996) (not b!542997) (not start!49332) (not b!542999) (not b!542992) (not b!543000) (not b!542991) (not b!542994) (not b!542995))
(check-sat)
