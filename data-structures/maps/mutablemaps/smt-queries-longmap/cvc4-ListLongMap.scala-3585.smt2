; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49316 () Bool)

(assert start!49316)

(declare-fun b!542703 () Bool)

(declare-fun res!337408 () Bool)

(declare-fun e!314012 () Bool)

(assert (=> b!542703 (=> (not res!337408) (not e!314012))))

(declare-datatypes ((array!34280 0))(
  ( (array!34281 (arr!16469 (Array (_ BitVec 32) (_ BitVec 64))) (size!16833 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34280)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542703 (= res!337408 (validKeyInArray!0 (select (arr!16469 a!3154) j!147)))))

(declare-fun b!542704 () Bool)

(declare-fun res!337413 () Bool)

(declare-fun e!314014 () Bool)

(assert (=> b!542704 (=> (not res!337413) (not e!314014))))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!542704 (= res!337413 (and (not (= (select (arr!16469 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16469 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16469 a!3154) index!1177) (select (arr!16469 a!3154) j!147)))))))

(declare-fun b!542705 () Bool)

(declare-fun res!337411 () Bool)

(assert (=> b!542705 (=> (not res!337411) (not e!314012))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!542705 (= res!337411 (validKeyInArray!0 k!1998))))

(declare-fun b!542706 () Bool)

(declare-fun e!314011 () Bool)

(assert (=> b!542706 (= e!314011 e!314014)))

(declare-fun res!337409 () Bool)

(assert (=> b!542706 (=> (not res!337409) (not e!314014))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4934 0))(
  ( (MissingZero!4934 (index!21960 (_ BitVec 32))) (Found!4934 (index!21961 (_ BitVec 32))) (Intermediate!4934 (undefined!5746 Bool) (index!21962 (_ BitVec 32)) (x!50896 (_ BitVec 32))) (Undefined!4934) (MissingVacant!4934 (index!21963 (_ BitVec 32))) )
))
(declare-fun lt!248000 () SeekEntryResult!4934)

(assert (=> b!542706 (= res!337409 (= lt!248000 (Intermediate!4934 false resIndex!32 resX!32)))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34280 (_ BitVec 32)) SeekEntryResult!4934)

(assert (=> b!542706 (= lt!248000 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16469 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542707 () Bool)

(declare-fun res!337405 () Bool)

(assert (=> b!542707 (=> (not res!337405) (not e!314011))))

(declare-datatypes ((List!10641 0))(
  ( (Nil!10638) (Cons!10637 (h!11592 (_ BitVec 64)) (t!16877 List!10641)) )
))
(declare-fun arrayNoDuplicates!0 (array!34280 (_ BitVec 32) List!10641) Bool)

(assert (=> b!542707 (= res!337405 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10638))))

(declare-fun b!542708 () Bool)

(declare-fun res!337410 () Bool)

(assert (=> b!542708 (=> (not res!337410) (not e!314011))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34280 (_ BitVec 32)) Bool)

(assert (=> b!542708 (= res!337410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542709 () Bool)

(declare-fun res!337407 () Bool)

(assert (=> b!542709 (=> (not res!337407) (not e!314012))))

(declare-fun arrayContainsKey!0 (array!34280 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542709 (= res!337407 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542711 () Bool)

(declare-fun res!337406 () Bool)

(assert (=> b!542711 (=> (not res!337406) (not e!314011))))

(assert (=> b!542711 (= res!337406 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16833 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16833 a!3154)) (= (select (arr!16469 a!3154) resIndex!32) (select (arr!16469 a!3154) j!147))))))

(declare-fun b!542712 () Bool)

(assert (=> b!542712 (= e!314014 false)))

(declare-fun lt!247998 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542712 (= lt!247998 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!542713 () Bool)

(assert (=> b!542713 (= e!314012 e!314011)))

(declare-fun res!337415 () Bool)

(assert (=> b!542713 (=> (not res!337415) (not e!314011))))

(declare-fun lt!247999 () SeekEntryResult!4934)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542713 (= res!337415 (or (= lt!247999 (MissingZero!4934 i!1153)) (= lt!247999 (MissingVacant!4934 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34280 (_ BitVec 32)) SeekEntryResult!4934)

(assert (=> b!542713 (= lt!247999 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!542714 () Bool)

(declare-fun res!337412 () Bool)

(assert (=> b!542714 (=> (not res!337412) (not e!314014))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542714 (= res!337412 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16469 a!3154) j!147) mask!3216) (select (arr!16469 a!3154) j!147) a!3154 mask!3216) lt!248000))))

(declare-fun b!542710 () Bool)

(declare-fun res!337414 () Bool)

(assert (=> b!542710 (=> (not res!337414) (not e!314012))))

(assert (=> b!542710 (= res!337414 (and (= (size!16833 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16833 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16833 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!337404 () Bool)

(assert (=> start!49316 (=> (not res!337404) (not e!314012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49316 (= res!337404 (validMask!0 mask!3216))))

(assert (=> start!49316 e!314012))

(assert (=> start!49316 true))

(declare-fun array_inv!12243 (array!34280) Bool)

(assert (=> start!49316 (array_inv!12243 a!3154)))

(assert (= (and start!49316 res!337404) b!542710))

(assert (= (and b!542710 res!337414) b!542703))

(assert (= (and b!542703 res!337408) b!542705))

(assert (= (and b!542705 res!337411) b!542709))

(assert (= (and b!542709 res!337407) b!542713))

(assert (= (and b!542713 res!337415) b!542708))

(assert (= (and b!542708 res!337410) b!542707))

(assert (= (and b!542707 res!337405) b!542711))

(assert (= (and b!542711 res!337406) b!542706))

(assert (= (and b!542706 res!337409) b!542714))

(assert (= (and b!542714 res!337412) b!542704))

(assert (= (and b!542704 res!337413) b!542712))

(declare-fun m!520921 () Bool)

(assert (=> b!542707 m!520921))

(declare-fun m!520923 () Bool)

(assert (=> b!542703 m!520923))

(assert (=> b!542703 m!520923))

(declare-fun m!520925 () Bool)

(assert (=> b!542703 m!520925))

(declare-fun m!520927 () Bool)

(assert (=> b!542712 m!520927))

(declare-fun m!520929 () Bool)

(assert (=> b!542713 m!520929))

(assert (=> b!542714 m!520923))

(assert (=> b!542714 m!520923))

(declare-fun m!520931 () Bool)

(assert (=> b!542714 m!520931))

(assert (=> b!542714 m!520931))

(assert (=> b!542714 m!520923))

(declare-fun m!520933 () Bool)

(assert (=> b!542714 m!520933))

(declare-fun m!520935 () Bool)

(assert (=> start!49316 m!520935))

(declare-fun m!520937 () Bool)

(assert (=> start!49316 m!520937))

(declare-fun m!520939 () Bool)

(assert (=> b!542709 m!520939))

(declare-fun m!520941 () Bool)

(assert (=> b!542704 m!520941))

(assert (=> b!542704 m!520923))

(declare-fun m!520943 () Bool)

(assert (=> b!542708 m!520943))

(assert (=> b!542706 m!520923))

(assert (=> b!542706 m!520923))

(declare-fun m!520945 () Bool)

(assert (=> b!542706 m!520945))

(declare-fun m!520947 () Bool)

(assert (=> b!542705 m!520947))

(declare-fun m!520949 () Bool)

(assert (=> b!542711 m!520949))

(assert (=> b!542711 m!520923))

(push 1)

(assert (not b!542713))

(assert (not b!542709))

(assert (not b!542707))

(assert (not b!542703))

(assert (not b!542705))

(assert (not b!542708))

(assert (not b!542712))

(assert (not start!49316))

(assert (not b!542714))

(assert (not b!542706))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

