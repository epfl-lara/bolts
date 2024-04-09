; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49310 () Bool)

(assert start!49310)

(declare-fun b!542595 () Bool)

(declare-fun res!337304 () Bool)

(declare-fun e!313977 () Bool)

(assert (=> b!542595 (=> (not res!337304) (not e!313977))))

(declare-datatypes ((array!34274 0))(
  ( (array!34275 (arr!16466 (Array (_ BitVec 32) (_ BitVec 64))) (size!16830 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34274)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34274 (_ BitVec 32)) Bool)

(assert (=> b!542595 (= res!337304 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!337298 () Bool)

(declare-fun e!313976 () Bool)

(assert (=> start!49310 (=> (not res!337298) (not e!313976))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49310 (= res!337298 (validMask!0 mask!3216))))

(assert (=> start!49310 e!313976))

(assert (=> start!49310 true))

(declare-fun array_inv!12240 (array!34274) Bool)

(assert (=> start!49310 (array_inv!12240 a!3154)))

(declare-fun b!542596 () Bool)

(declare-fun res!337307 () Bool)

(assert (=> b!542596 (=> (not res!337307) (not e!313976))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542596 (= res!337307 (and (= (size!16830 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16830 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16830 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542597 () Bool)

(declare-fun e!313975 () Bool)

(assert (=> b!542597 (= e!313977 e!313975)))

(declare-fun res!337305 () Bool)

(assert (=> b!542597 (=> (not res!337305) (not e!313975))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4931 0))(
  ( (MissingZero!4931 (index!21948 (_ BitVec 32))) (Found!4931 (index!21949 (_ BitVec 32))) (Intermediate!4931 (undefined!5743 Bool) (index!21950 (_ BitVec 32)) (x!50885 (_ BitVec 32))) (Undefined!4931) (MissingVacant!4931 (index!21951 (_ BitVec 32))) )
))
(declare-fun lt!247973 () SeekEntryResult!4931)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!542597 (= res!337305 (= lt!247973 (Intermediate!4931 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34274 (_ BitVec 32)) SeekEntryResult!4931)

(assert (=> b!542597 (= lt!247973 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16466 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542598 () Bool)

(declare-fun res!337301 () Bool)

(assert (=> b!542598 (=> (not res!337301) (not e!313977))))

(declare-datatypes ((List!10638 0))(
  ( (Nil!10635) (Cons!10634 (h!11589 (_ BitVec 64)) (t!16874 List!10638)) )
))
(declare-fun arrayNoDuplicates!0 (array!34274 (_ BitVec 32) List!10638) Bool)

(assert (=> b!542598 (= res!337301 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10635))))

(declare-fun b!542599 () Bool)

(assert (=> b!542599 (= e!313975 false)))

(declare-fun lt!247971 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542599 (= lt!247971 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!542600 () Bool)

(declare-fun res!337297 () Bool)

(assert (=> b!542600 (=> (not res!337297) (not e!313976))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542600 (= res!337297 (validKeyInArray!0 (select (arr!16466 a!3154) j!147)))))

(declare-fun b!542601 () Bool)

(assert (=> b!542601 (= e!313976 e!313977)))

(declare-fun res!337306 () Bool)

(assert (=> b!542601 (=> (not res!337306) (not e!313977))))

(declare-fun lt!247972 () SeekEntryResult!4931)

(assert (=> b!542601 (= res!337306 (or (= lt!247972 (MissingZero!4931 i!1153)) (= lt!247972 (MissingVacant!4931 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34274 (_ BitVec 32)) SeekEntryResult!4931)

(assert (=> b!542601 (= lt!247972 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!542602 () Bool)

(declare-fun res!337302 () Bool)

(assert (=> b!542602 (=> (not res!337302) (not e!313975))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542602 (= res!337302 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16466 a!3154) j!147) mask!3216) (select (arr!16466 a!3154) j!147) a!3154 mask!3216) lt!247973))))

(declare-fun b!542603 () Bool)

(declare-fun res!337299 () Bool)

(assert (=> b!542603 (=> (not res!337299) (not e!313975))))

(assert (=> b!542603 (= res!337299 (and (not (= (select (arr!16466 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16466 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16466 a!3154) index!1177) (select (arr!16466 a!3154) j!147)))))))

(declare-fun b!542604 () Bool)

(declare-fun res!337303 () Bool)

(assert (=> b!542604 (=> (not res!337303) (not e!313976))))

(declare-fun arrayContainsKey!0 (array!34274 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542604 (= res!337303 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542605 () Bool)

(declare-fun res!337300 () Bool)

(assert (=> b!542605 (=> (not res!337300) (not e!313977))))

(assert (=> b!542605 (= res!337300 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16830 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16830 a!3154)) (= (select (arr!16466 a!3154) resIndex!32) (select (arr!16466 a!3154) j!147))))))

(declare-fun b!542606 () Bool)

(declare-fun res!337296 () Bool)

(assert (=> b!542606 (=> (not res!337296) (not e!313976))))

(assert (=> b!542606 (= res!337296 (validKeyInArray!0 k!1998))))

(assert (= (and start!49310 res!337298) b!542596))

(assert (= (and b!542596 res!337307) b!542600))

(assert (= (and b!542600 res!337297) b!542606))

(assert (= (and b!542606 res!337296) b!542604))

(assert (= (and b!542604 res!337303) b!542601))

(assert (= (and b!542601 res!337306) b!542595))

(assert (= (and b!542595 res!337304) b!542598))

(assert (= (and b!542598 res!337301) b!542605))

(assert (= (and b!542605 res!337300) b!542597))

(assert (= (and b!542597 res!337305) b!542602))

(assert (= (and b!542602 res!337302) b!542603))

(assert (= (and b!542603 res!337299) b!542599))

(declare-fun m!520831 () Bool)

(assert (=> b!542606 m!520831))

(declare-fun m!520833 () Bool)

(assert (=> b!542603 m!520833))

(declare-fun m!520835 () Bool)

(assert (=> b!542603 m!520835))

(declare-fun m!520837 () Bool)

(assert (=> b!542601 m!520837))

(declare-fun m!520839 () Bool)

(assert (=> b!542605 m!520839))

(assert (=> b!542605 m!520835))

(declare-fun m!520841 () Bool)

(assert (=> b!542598 m!520841))

(declare-fun m!520843 () Bool)

(assert (=> b!542599 m!520843))

(declare-fun m!520845 () Bool)

(assert (=> b!542595 m!520845))

(assert (=> b!542597 m!520835))

(assert (=> b!542597 m!520835))

(declare-fun m!520847 () Bool)

(assert (=> b!542597 m!520847))

(declare-fun m!520849 () Bool)

(assert (=> start!49310 m!520849))

(declare-fun m!520851 () Bool)

(assert (=> start!49310 m!520851))

(declare-fun m!520853 () Bool)

(assert (=> b!542604 m!520853))

(assert (=> b!542602 m!520835))

(assert (=> b!542602 m!520835))

(declare-fun m!520855 () Bool)

(assert (=> b!542602 m!520855))

(assert (=> b!542602 m!520855))

(assert (=> b!542602 m!520835))

(declare-fun m!520857 () Bool)

(assert (=> b!542602 m!520857))

(assert (=> b!542600 m!520835))

(assert (=> b!542600 m!520835))

(declare-fun m!520859 () Bool)

(assert (=> b!542600 m!520859))

(push 1)

(assert (not b!542602))

(assert (not b!542601))

(assert (not b!542598))

(assert (not start!49310))

(assert (not b!542599))

(assert (not b!542595))

(assert (not b!542597))

(assert (not b!542604))

(assert (not b!542606))

(assert (not b!542600))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

