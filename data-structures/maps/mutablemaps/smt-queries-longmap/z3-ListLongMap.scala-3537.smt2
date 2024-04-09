; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48810 () Bool)

(assert start!48810)

(declare-fun b!536768 () Bool)

(declare-fun res!332123 () Bool)

(declare-fun e!311512 () Bool)

(assert (=> b!536768 (=> (not res!332123) (not e!311512))))

(declare-datatypes ((array!33978 0))(
  ( (array!33979 (arr!16324 (Array (_ BitVec 32) (_ BitVec 64))) (size!16688 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33978)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536768 (= res!332123 (validKeyInArray!0 (select (arr!16324 a!3154) j!147)))))

(declare-fun b!536769 () Bool)

(declare-fun res!332130 () Bool)

(assert (=> b!536769 (=> (not res!332130) (not e!311512))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536769 (= res!332130 (and (= (size!16688 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16688 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16688 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!536770 () Bool)

(declare-fun res!332131 () Bool)

(declare-fun e!311510 () Bool)

(assert (=> b!536770 (=> (not res!332131) (not e!311510))))

(declare-datatypes ((List!10496 0))(
  ( (Nil!10493) (Cons!10492 (h!11435 (_ BitVec 64)) (t!16732 List!10496)) )
))
(declare-fun arrayNoDuplicates!0 (array!33978 (_ BitVec 32) List!10496) Bool)

(assert (=> b!536770 (= res!332131 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10493))))

(declare-fun b!536771 () Bool)

(declare-fun res!332129 () Bool)

(assert (=> b!536771 (=> (not res!332129) (not e!311512))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33978 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536771 (= res!332129 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536772 () Bool)

(assert (=> b!536772 (= e!311512 e!311510)))

(declare-fun res!332134 () Bool)

(assert (=> b!536772 (=> (not res!332134) (not e!311510))))

(declare-datatypes ((SeekEntryResult!4789 0))(
  ( (MissingZero!4789 (index!21380 (_ BitVec 32))) (Found!4789 (index!21381 (_ BitVec 32))) (Intermediate!4789 (undefined!5601 Bool) (index!21382 (_ BitVec 32)) (x!50343 (_ BitVec 32))) (Undefined!4789) (MissingVacant!4789 (index!21383 (_ BitVec 32))) )
))
(declare-fun lt!246218 () SeekEntryResult!4789)

(assert (=> b!536772 (= res!332134 (or (= lt!246218 (MissingZero!4789 i!1153)) (= lt!246218 (MissingVacant!4789 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33978 (_ BitVec 32)) SeekEntryResult!4789)

(assert (=> b!536772 (= lt!246218 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!536773 () Bool)

(declare-fun res!332126 () Bool)

(assert (=> b!536773 (=> (not res!332126) (not e!311512))))

(assert (=> b!536773 (= res!332126 (validKeyInArray!0 k0!1998))))

(declare-fun b!536774 () Bool)

(declare-fun res!332133 () Bool)

(assert (=> b!536774 (=> (not res!332133) (not e!311510))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33978 (_ BitVec 32)) Bool)

(assert (=> b!536774 (= res!332133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536775 () Bool)

(declare-fun e!311508 () Bool)

(assert (=> b!536775 (= e!311508 false)))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!246220 () (_ BitVec 32))

(declare-fun lt!246219 () SeekEntryResult!4789)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33978 (_ BitVec 32)) SeekEntryResult!4789)

(assert (=> b!536775 (= lt!246219 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246220 (select (arr!16324 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536776 () Bool)

(declare-fun res!332135 () Bool)

(declare-fun e!311509 () Bool)

(assert (=> b!536776 (=> (not res!332135) (not e!311509))))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!536776 (= res!332135 (and (not (= (select (arr!16324 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16324 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16324 a!3154) index!1177) (select (arr!16324 a!3154) j!147)))))))

(declare-fun b!536777 () Bool)

(assert (=> b!536777 (= e!311509 e!311508)))

(declare-fun res!332127 () Bool)

(assert (=> b!536777 (=> (not res!332127) (not e!311508))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536777 (= res!332127 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246220 #b00000000000000000000000000000000) (bvslt lt!246220 (size!16688 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536777 (= lt!246220 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!536779 () Bool)

(declare-fun res!332124 () Bool)

(assert (=> b!536779 (=> (not res!332124) (not e!311509))))

(declare-fun lt!246221 () SeekEntryResult!4789)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536779 (= res!332124 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16324 a!3154) j!147) mask!3216) (select (arr!16324 a!3154) j!147) a!3154 mask!3216) lt!246221))))

(declare-fun b!536780 () Bool)

(declare-fun res!332125 () Bool)

(assert (=> b!536780 (=> (not res!332125) (not e!311510))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!536780 (= res!332125 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16688 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16688 a!3154)) (= (select (arr!16324 a!3154) resIndex!32) (select (arr!16324 a!3154) j!147))))))

(declare-fun res!332132 () Bool)

(assert (=> start!48810 (=> (not res!332132) (not e!311512))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48810 (= res!332132 (validMask!0 mask!3216))))

(assert (=> start!48810 e!311512))

(assert (=> start!48810 true))

(declare-fun array_inv!12098 (array!33978) Bool)

(assert (=> start!48810 (array_inv!12098 a!3154)))

(declare-fun b!536778 () Bool)

(assert (=> b!536778 (= e!311510 e!311509)))

(declare-fun res!332128 () Bool)

(assert (=> b!536778 (=> (not res!332128) (not e!311509))))

(assert (=> b!536778 (= res!332128 (= lt!246221 (Intermediate!4789 false resIndex!32 resX!32)))))

(assert (=> b!536778 (= lt!246221 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16324 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48810 res!332132) b!536769))

(assert (= (and b!536769 res!332130) b!536768))

(assert (= (and b!536768 res!332123) b!536773))

(assert (= (and b!536773 res!332126) b!536771))

(assert (= (and b!536771 res!332129) b!536772))

(assert (= (and b!536772 res!332134) b!536774))

(assert (= (and b!536774 res!332133) b!536770))

(assert (= (and b!536770 res!332131) b!536780))

(assert (= (and b!536780 res!332125) b!536778))

(assert (= (and b!536778 res!332128) b!536779))

(assert (= (and b!536779 res!332124) b!536776))

(assert (= (and b!536776 res!332135) b!536777))

(assert (= (and b!536777 res!332127) b!536775))

(declare-fun m!516123 () Bool)

(assert (=> b!536774 m!516123))

(declare-fun m!516125 () Bool)

(assert (=> b!536772 m!516125))

(declare-fun m!516127 () Bool)

(assert (=> b!536776 m!516127))

(declare-fun m!516129 () Bool)

(assert (=> b!536776 m!516129))

(declare-fun m!516131 () Bool)

(assert (=> b!536770 m!516131))

(assert (=> b!536778 m!516129))

(assert (=> b!536778 m!516129))

(declare-fun m!516133 () Bool)

(assert (=> b!536778 m!516133))

(declare-fun m!516135 () Bool)

(assert (=> b!536777 m!516135))

(assert (=> b!536768 m!516129))

(assert (=> b!536768 m!516129))

(declare-fun m!516137 () Bool)

(assert (=> b!536768 m!516137))

(declare-fun m!516139 () Bool)

(assert (=> start!48810 m!516139))

(declare-fun m!516141 () Bool)

(assert (=> start!48810 m!516141))

(declare-fun m!516143 () Bool)

(assert (=> b!536771 m!516143))

(assert (=> b!536779 m!516129))

(assert (=> b!536779 m!516129))

(declare-fun m!516145 () Bool)

(assert (=> b!536779 m!516145))

(assert (=> b!536779 m!516145))

(assert (=> b!536779 m!516129))

(declare-fun m!516147 () Bool)

(assert (=> b!536779 m!516147))

(assert (=> b!536775 m!516129))

(assert (=> b!536775 m!516129))

(declare-fun m!516149 () Bool)

(assert (=> b!536775 m!516149))

(declare-fun m!516151 () Bool)

(assert (=> b!536780 m!516151))

(assert (=> b!536780 m!516129))

(declare-fun m!516153 () Bool)

(assert (=> b!536773 m!516153))

(check-sat (not b!536768) (not b!536770) (not b!536775) (not b!536771) (not b!536778) (not b!536779) (not b!536772) (not b!536777) (not b!536774) (not b!536773) (not start!48810))
(check-sat)
