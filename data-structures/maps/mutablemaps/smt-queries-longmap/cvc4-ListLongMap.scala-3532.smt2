; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48782 () Bool)

(assert start!48782)

(declare-fun b!536222 () Bool)

(declare-fun e!311302 () Bool)

(assert (=> b!536222 (= e!311302 false)))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33950 0))(
  ( (array!33951 (arr!16310 (Array (_ BitVec 32) (_ BitVec 64))) (size!16674 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33950)

(declare-datatypes ((SeekEntryResult!4775 0))(
  ( (MissingZero!4775 (index!21324 (_ BitVec 32))) (Found!4775 (index!21325 (_ BitVec 32))) (Intermediate!4775 (undefined!5587 Bool) (index!21326 (_ BitVec 32)) (x!50289 (_ BitVec 32))) (Undefined!4775) (MissingVacant!4775 (index!21327 (_ BitVec 32))) )
))
(declare-fun lt!246051 () SeekEntryResult!4775)

(declare-fun lt!246050 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33950 (_ BitVec 32)) SeekEntryResult!4775)

(assert (=> b!536222 (= lt!246051 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246050 (select (arr!16310 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536223 () Bool)

(declare-fun res!331580 () Bool)

(declare-fun e!311298 () Bool)

(assert (=> b!536223 (=> (not res!331580) (not e!311298))))

(declare-datatypes ((List!10482 0))(
  ( (Nil!10479) (Cons!10478 (h!11421 (_ BitVec 64)) (t!16718 List!10482)) )
))
(declare-fun arrayNoDuplicates!0 (array!33950 (_ BitVec 32) List!10482) Bool)

(assert (=> b!536223 (= res!331580 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10479))))

(declare-fun b!536224 () Bool)

(declare-fun res!331581 () Bool)

(declare-fun e!311299 () Bool)

(assert (=> b!536224 (=> (not res!331581) (not e!311299))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536224 (= res!331581 (validKeyInArray!0 k!1998))))

(declare-fun b!536225 () Bool)

(declare-fun res!331588 () Bool)

(declare-fun e!311301 () Bool)

(assert (=> b!536225 (=> (not res!331588) (not e!311301))))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!536225 (= res!331588 (and (not (= (select (arr!16310 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16310 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16310 a!3154) index!1177) (select (arr!16310 a!3154) j!147)))))))

(declare-fun b!536226 () Bool)

(declare-fun res!331582 () Bool)

(assert (=> b!536226 (=> (not res!331582) (not e!311301))))

(declare-fun lt!246053 () SeekEntryResult!4775)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536226 (= res!331582 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16310 a!3154) j!147) mask!3216) (select (arr!16310 a!3154) j!147) a!3154 mask!3216) lt!246053))))

(declare-fun b!536227 () Bool)

(declare-fun res!331583 () Bool)

(assert (=> b!536227 (=> (not res!331583) (not e!311299))))

(assert (=> b!536227 (= res!331583 (validKeyInArray!0 (select (arr!16310 a!3154) j!147)))))

(declare-fun b!536228 () Bool)

(declare-fun res!331587 () Bool)

(assert (=> b!536228 (=> (not res!331587) (not e!311298))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536228 (= res!331587 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16674 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16674 a!3154)) (= (select (arr!16310 a!3154) resIndex!32) (select (arr!16310 a!3154) j!147))))))

(declare-fun b!536229 () Bool)

(assert (=> b!536229 (= e!311298 e!311301)))

(declare-fun res!331578 () Bool)

(assert (=> b!536229 (=> (not res!331578) (not e!311301))))

(assert (=> b!536229 (= res!331578 (= lt!246053 (Intermediate!4775 false resIndex!32 resX!32)))))

(assert (=> b!536229 (= lt!246053 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16310 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536231 () Bool)

(assert (=> b!536231 (= e!311301 e!311302)))

(declare-fun res!331589 () Bool)

(assert (=> b!536231 (=> (not res!331589) (not e!311302))))

(assert (=> b!536231 (= res!331589 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246050 #b00000000000000000000000000000000) (bvslt lt!246050 (size!16674 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536231 (= lt!246050 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!536232 () Bool)

(declare-fun res!331584 () Bool)

(assert (=> b!536232 (=> (not res!331584) (not e!311298))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33950 (_ BitVec 32)) Bool)

(assert (=> b!536232 (= res!331584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536233 () Bool)

(declare-fun res!331585 () Bool)

(assert (=> b!536233 (=> (not res!331585) (not e!311299))))

(declare-fun arrayContainsKey!0 (array!33950 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536233 (= res!331585 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536234 () Bool)

(declare-fun res!331577 () Bool)

(assert (=> b!536234 (=> (not res!331577) (not e!311299))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536234 (= res!331577 (and (= (size!16674 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16674 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16674 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!536230 () Bool)

(assert (=> b!536230 (= e!311299 e!311298)))

(declare-fun res!331579 () Bool)

(assert (=> b!536230 (=> (not res!331579) (not e!311298))))

(declare-fun lt!246052 () SeekEntryResult!4775)

(assert (=> b!536230 (= res!331579 (or (= lt!246052 (MissingZero!4775 i!1153)) (= lt!246052 (MissingVacant!4775 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33950 (_ BitVec 32)) SeekEntryResult!4775)

(assert (=> b!536230 (= lt!246052 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun res!331586 () Bool)

(assert (=> start!48782 (=> (not res!331586) (not e!311299))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48782 (= res!331586 (validMask!0 mask!3216))))

(assert (=> start!48782 e!311299))

(assert (=> start!48782 true))

(declare-fun array_inv!12084 (array!33950) Bool)

(assert (=> start!48782 (array_inv!12084 a!3154)))

(assert (= (and start!48782 res!331586) b!536234))

(assert (= (and b!536234 res!331577) b!536227))

(assert (= (and b!536227 res!331583) b!536224))

(assert (= (and b!536224 res!331581) b!536233))

(assert (= (and b!536233 res!331585) b!536230))

(assert (= (and b!536230 res!331579) b!536232))

(assert (= (and b!536232 res!331584) b!536223))

(assert (= (and b!536223 res!331580) b!536228))

(assert (= (and b!536228 res!331587) b!536229))

(assert (= (and b!536229 res!331578) b!536226))

(assert (= (and b!536226 res!331582) b!536225))

(assert (= (and b!536225 res!331588) b!536231))

(assert (= (and b!536231 res!331589) b!536222))

(declare-fun m!515675 () Bool)

(assert (=> b!536229 m!515675))

(assert (=> b!536229 m!515675))

(declare-fun m!515677 () Bool)

(assert (=> b!536229 m!515677))

(assert (=> b!536227 m!515675))

(assert (=> b!536227 m!515675))

(declare-fun m!515679 () Bool)

(assert (=> b!536227 m!515679))

(declare-fun m!515681 () Bool)

(assert (=> b!536230 m!515681))

(assert (=> b!536222 m!515675))

(assert (=> b!536222 m!515675))

(declare-fun m!515683 () Bool)

(assert (=> b!536222 m!515683))

(declare-fun m!515685 () Bool)

(assert (=> b!536223 m!515685))

(assert (=> b!536226 m!515675))

(assert (=> b!536226 m!515675))

(declare-fun m!515687 () Bool)

(assert (=> b!536226 m!515687))

(assert (=> b!536226 m!515687))

(assert (=> b!536226 m!515675))

(declare-fun m!515689 () Bool)

(assert (=> b!536226 m!515689))

(declare-fun m!515691 () Bool)

(assert (=> b!536225 m!515691))

(assert (=> b!536225 m!515675))

(declare-fun m!515693 () Bool)

(assert (=> b!536224 m!515693))

(declare-fun m!515695 () Bool)

(assert (=> b!536232 m!515695))

(declare-fun m!515697 () Bool)

(assert (=> b!536228 m!515697))

(assert (=> b!536228 m!515675))

(declare-fun m!515699 () Bool)

(assert (=> b!536231 m!515699))

(declare-fun m!515701 () Bool)

(assert (=> start!48782 m!515701))

(declare-fun m!515703 () Bool)

(assert (=> start!48782 m!515703))

(declare-fun m!515705 () Bool)

(assert (=> b!536233 m!515705))

(push 1)

(assert (not b!536224))

(assert (not b!536233))

(assert (not b!536222))

(assert (not b!536223))

(assert (not b!536231))

(assert (not b!536226))

(assert (not b!536230))

(assert (not b!536232))

