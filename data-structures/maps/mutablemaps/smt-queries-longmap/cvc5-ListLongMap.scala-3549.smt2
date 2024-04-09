; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48880 () Bool)

(assert start!48880)

(declare-fun b!538133 () Bool)

(declare-fun e!312055 () Bool)

(declare-fun e!312058 () Bool)

(assert (=> b!538133 (= e!312055 e!312058)))

(declare-fun res!333497 () Bool)

(assert (=> b!538133 (=> (not res!333497) (not e!312058))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4824 0))(
  ( (MissingZero!4824 (index!21520 (_ BitVec 32))) (Found!4824 (index!21521 (_ BitVec 32))) (Intermediate!4824 (undefined!5636 Bool) (index!21522 (_ BitVec 32)) (x!50474 (_ BitVec 32))) (Undefined!4824) (MissingVacant!4824 (index!21523 (_ BitVec 32))) )
))
(declare-fun lt!246674 () SeekEntryResult!4824)

(declare-datatypes ((array!34048 0))(
  ( (array!34049 (arr!16359 (Array (_ BitVec 32) (_ BitVec 64))) (size!16723 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34048)

(declare-fun lt!246676 () SeekEntryResult!4824)

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!538133 (= res!333497 (and (= lt!246676 lt!246674) (not (= (select (arr!16359 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16359 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16359 a!3154) index!1177) (select (arr!16359 a!3154) j!147)))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34048 (_ BitVec 32)) SeekEntryResult!4824)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538133 (= lt!246676 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16359 a!3154) j!147) mask!3216) (select (arr!16359 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538134 () Bool)

(declare-fun res!333500 () Bool)

(declare-fun e!312057 () Bool)

(assert (=> b!538134 (=> (not res!333500) (not e!312057))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!538134 (= res!333500 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16723 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16723 a!3154)) (= (select (arr!16359 a!3154) resIndex!32) (select (arr!16359 a!3154) j!147))))))

(declare-fun b!538136 () Bool)

(assert (=> b!538136 (= e!312057 e!312055)))

(declare-fun res!333498 () Bool)

(assert (=> b!538136 (=> (not res!333498) (not e!312055))))

(declare-fun lt!246672 () SeekEntryResult!4824)

(assert (=> b!538136 (= res!333498 (= lt!246674 lt!246672))))

(assert (=> b!538136 (= lt!246672 (Intermediate!4824 false resIndex!32 resX!32))))

(assert (=> b!538136 (= lt!246674 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16359 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538137 () Bool)

(declare-fun e!312060 () Bool)

(declare-fun e!312056 () Bool)

(assert (=> b!538137 (= e!312060 e!312056)))

(declare-fun res!333499 () Bool)

(assert (=> b!538137 (=> (not res!333499) (not e!312056))))

(declare-fun lt!246671 () SeekEntryResult!4824)

(assert (=> b!538137 (= res!333499 (and (= lt!246671 lt!246672) (= lt!246676 lt!246671)))))

(declare-fun lt!246675 () (_ BitVec 32))

(assert (=> b!538137 (= lt!246671 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246675 (select (arr!16359 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538138 () Bool)

(declare-fun res!333496 () Bool)

(declare-fun e!312059 () Bool)

(assert (=> b!538138 (=> (not res!333496) (not e!312059))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34048 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538138 (= res!333496 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538139 () Bool)

(assert (=> b!538139 (= e!312058 e!312060)))

(declare-fun res!333495 () Bool)

(assert (=> b!538139 (=> (not res!333495) (not e!312060))))

(assert (=> b!538139 (= res!333495 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246675 #b00000000000000000000000000000000) (bvslt lt!246675 (size!16723 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538139 (= lt!246675 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!538140 () Bool)

(declare-fun res!333492 () Bool)

(assert (=> b!538140 (=> (not res!333492) (not e!312057))))

(declare-datatypes ((List!10531 0))(
  ( (Nil!10528) (Cons!10527 (h!11470 (_ BitVec 64)) (t!16767 List!10531)) )
))
(declare-fun arrayNoDuplicates!0 (array!34048 (_ BitVec 32) List!10531) Bool)

(assert (=> b!538140 (= res!333492 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10528))))

(declare-fun b!538141 () Bool)

(declare-fun res!333489 () Bool)

(assert (=> b!538141 (=> (not res!333489) (not e!312059))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538141 (= res!333489 (and (= (size!16723 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16723 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16723 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538142 () Bool)

(declare-fun res!333490 () Bool)

(assert (=> b!538142 (=> (not res!333490) (not e!312059))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538142 (= res!333490 (validKeyInArray!0 (select (arr!16359 a!3154) j!147)))))

(declare-fun b!538143 () Bool)

(assert (=> b!538143 (= e!312059 e!312057)))

(declare-fun res!333491 () Bool)

(assert (=> b!538143 (=> (not res!333491) (not e!312057))))

(declare-fun lt!246677 () SeekEntryResult!4824)

(assert (=> b!538143 (= res!333491 (or (= lt!246677 (MissingZero!4824 i!1153)) (= lt!246677 (MissingVacant!4824 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34048 (_ BitVec 32)) SeekEntryResult!4824)

(assert (=> b!538143 (= lt!246677 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun res!333493 () Bool)

(assert (=> start!48880 (=> (not res!333493) (not e!312059))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48880 (= res!333493 (validMask!0 mask!3216))))

(assert (=> start!48880 e!312059))

(assert (=> start!48880 true))

(declare-fun array_inv!12133 (array!34048) Bool)

(assert (=> start!48880 (array_inv!12133 a!3154)))

(declare-fun b!538135 () Bool)

(assert (=> b!538135 (= e!312056 (not (bvsge mask!3216 #b00000000000000000000000000000000)))))

(assert (=> b!538135 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246675 (select (store (arr!16359 a!3154) i!1153 k!1998) j!147) (array!34049 (store (arr!16359 a!3154) i!1153 k!1998) (size!16723 a!3154)) mask!3216) lt!246672)))

(declare-datatypes ((Unit!16826 0))(
  ( (Unit!16827) )
))
(declare-fun lt!246673 () Unit!16826)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34048 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16826)

(assert (=> b!538135 (= lt!246673 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!246675 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!538144 () Bool)

(declare-fun res!333488 () Bool)

(assert (=> b!538144 (=> (not res!333488) (not e!312059))))

(assert (=> b!538144 (= res!333488 (validKeyInArray!0 k!1998))))

(declare-fun b!538145 () Bool)

(declare-fun res!333494 () Bool)

(assert (=> b!538145 (=> (not res!333494) (not e!312057))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34048 (_ BitVec 32)) Bool)

(assert (=> b!538145 (= res!333494 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48880 res!333493) b!538141))

(assert (= (and b!538141 res!333489) b!538142))

(assert (= (and b!538142 res!333490) b!538144))

(assert (= (and b!538144 res!333488) b!538138))

(assert (= (and b!538138 res!333496) b!538143))

(assert (= (and b!538143 res!333491) b!538145))

(assert (= (and b!538145 res!333494) b!538140))

(assert (= (and b!538140 res!333492) b!538134))

(assert (= (and b!538134 res!333500) b!538136))

(assert (= (and b!538136 res!333498) b!538133))

(assert (= (and b!538133 res!333497) b!538139))

(assert (= (and b!538139 res!333495) b!538137))

(assert (= (and b!538137 res!333499) b!538135))

(declare-fun m!517267 () Bool)

(assert (=> start!48880 m!517267))

(declare-fun m!517269 () Bool)

(assert (=> start!48880 m!517269))

(declare-fun m!517271 () Bool)

(assert (=> b!538136 m!517271))

(assert (=> b!538136 m!517271))

(declare-fun m!517273 () Bool)

(assert (=> b!538136 m!517273))

(declare-fun m!517275 () Bool)

(assert (=> b!538134 m!517275))

(assert (=> b!538134 m!517271))

(assert (=> b!538142 m!517271))

(assert (=> b!538142 m!517271))

(declare-fun m!517277 () Bool)

(assert (=> b!538142 m!517277))

(declare-fun m!517279 () Bool)

(assert (=> b!538139 m!517279))

(declare-fun m!517281 () Bool)

(assert (=> b!538145 m!517281))

(declare-fun m!517283 () Bool)

(assert (=> b!538133 m!517283))

(assert (=> b!538133 m!517271))

(assert (=> b!538133 m!517271))

(declare-fun m!517285 () Bool)

(assert (=> b!538133 m!517285))

(assert (=> b!538133 m!517285))

(assert (=> b!538133 m!517271))

(declare-fun m!517287 () Bool)

(assert (=> b!538133 m!517287))

(assert (=> b!538137 m!517271))

(assert (=> b!538137 m!517271))

(declare-fun m!517289 () Bool)

(assert (=> b!538137 m!517289))

(declare-fun m!517291 () Bool)

(assert (=> b!538144 m!517291))

(declare-fun m!517293 () Bool)

(assert (=> b!538143 m!517293))

(declare-fun m!517295 () Bool)

(assert (=> b!538138 m!517295))

(declare-fun m!517297 () Bool)

(assert (=> b!538135 m!517297))

(declare-fun m!517299 () Bool)

(assert (=> b!538135 m!517299))

(assert (=> b!538135 m!517299))

(declare-fun m!517301 () Bool)

(assert (=> b!538135 m!517301))

(declare-fun m!517303 () Bool)

(assert (=> b!538135 m!517303))

(declare-fun m!517305 () Bool)

(assert (=> b!538140 m!517305))

(push 1)

