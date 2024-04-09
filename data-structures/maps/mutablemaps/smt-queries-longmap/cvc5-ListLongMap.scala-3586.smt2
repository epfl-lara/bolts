; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49318 () Bool)

(assert start!49318)

(declare-fun b!542739 () Bool)

(declare-fun e!314026 () Bool)

(declare-fun e!314025 () Bool)

(assert (=> b!542739 (= e!314026 e!314025)))

(declare-fun res!337449 () Bool)

(assert (=> b!542739 (=> (not res!337449) (not e!314025))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4935 0))(
  ( (MissingZero!4935 (index!21964 (_ BitVec 32))) (Found!4935 (index!21965 (_ BitVec 32))) (Intermediate!4935 (undefined!5747 Bool) (index!21966 (_ BitVec 32)) (x!50905 (_ BitVec 32))) (Undefined!4935) (MissingVacant!4935 (index!21967 (_ BitVec 32))) )
))
(declare-fun lt!248008 () SeekEntryResult!4935)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!542739 (= res!337449 (= lt!248008 (Intermediate!4935 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34282 0))(
  ( (array!34283 (arr!16470 (Array (_ BitVec 32) (_ BitVec 64))) (size!16834 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34282)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34282 (_ BitVec 32)) SeekEntryResult!4935)

(assert (=> b!542739 (= lt!248008 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16470 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542740 () Bool)

(assert (=> b!542740 (= e!314025 false)))

(declare-fun lt!248007 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542740 (= lt!248007 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!542741 () Bool)

(declare-fun res!337448 () Bool)

(declare-fun e!314023 () Bool)

(assert (=> b!542741 (=> (not res!337448) (not e!314023))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34282 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542741 (= res!337448 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542742 () Bool)

(declare-fun res!337450 () Bool)

(assert (=> b!542742 (=> (not res!337450) (not e!314026))))

(declare-datatypes ((List!10642 0))(
  ( (Nil!10639) (Cons!10638 (h!11593 (_ BitVec 64)) (t!16878 List!10642)) )
))
(declare-fun arrayNoDuplicates!0 (array!34282 (_ BitVec 32) List!10642) Bool)

(assert (=> b!542742 (= res!337450 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10639))))

(declare-fun res!337445 () Bool)

(assert (=> start!49318 (=> (not res!337445) (not e!314023))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49318 (= res!337445 (validMask!0 mask!3216))))

(assert (=> start!49318 e!314023))

(assert (=> start!49318 true))

(declare-fun array_inv!12244 (array!34282) Bool)

(assert (=> start!49318 (array_inv!12244 a!3154)))

(declare-fun b!542743 () Bool)

(declare-fun res!337441 () Bool)

(assert (=> b!542743 (=> (not res!337441) (not e!314023))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542743 (= res!337441 (and (= (size!16834 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16834 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16834 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542744 () Bool)

(declare-fun res!337451 () Bool)

(assert (=> b!542744 (=> (not res!337451) (not e!314025))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542744 (= res!337451 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16470 a!3154) j!147) mask!3216) (select (arr!16470 a!3154) j!147) a!3154 mask!3216) lt!248008))))

(declare-fun b!542745 () Bool)

(declare-fun res!337446 () Bool)

(assert (=> b!542745 (=> (not res!337446) (not e!314026))))

(assert (=> b!542745 (= res!337446 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16834 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16834 a!3154)) (= (select (arr!16470 a!3154) resIndex!32) (select (arr!16470 a!3154) j!147))))))

(declare-fun b!542746 () Bool)

(declare-fun res!337447 () Bool)

(assert (=> b!542746 (=> (not res!337447) (not e!314026))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34282 (_ BitVec 32)) Bool)

(assert (=> b!542746 (= res!337447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542747 () Bool)

(declare-fun res!337443 () Bool)

(assert (=> b!542747 (=> (not res!337443) (not e!314023))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542747 (= res!337443 (validKeyInArray!0 k!1998))))

(declare-fun b!542748 () Bool)

(declare-fun res!337440 () Bool)

(assert (=> b!542748 (=> (not res!337440) (not e!314023))))

(assert (=> b!542748 (= res!337440 (validKeyInArray!0 (select (arr!16470 a!3154) j!147)))))

(declare-fun b!542749 () Bool)

(assert (=> b!542749 (= e!314023 e!314026)))

(declare-fun res!337444 () Bool)

(assert (=> b!542749 (=> (not res!337444) (not e!314026))))

(declare-fun lt!248009 () SeekEntryResult!4935)

(assert (=> b!542749 (= res!337444 (or (= lt!248009 (MissingZero!4935 i!1153)) (= lt!248009 (MissingVacant!4935 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34282 (_ BitVec 32)) SeekEntryResult!4935)

(assert (=> b!542749 (= lt!248009 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!542750 () Bool)

(declare-fun res!337442 () Bool)

(assert (=> b!542750 (=> (not res!337442) (not e!314025))))

(assert (=> b!542750 (= res!337442 (and (not (= (select (arr!16470 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16470 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16470 a!3154) index!1177) (select (arr!16470 a!3154) j!147)))))))

(assert (= (and start!49318 res!337445) b!542743))

(assert (= (and b!542743 res!337441) b!542748))

(assert (= (and b!542748 res!337440) b!542747))

(assert (= (and b!542747 res!337443) b!542741))

(assert (= (and b!542741 res!337448) b!542749))

(assert (= (and b!542749 res!337444) b!542746))

(assert (= (and b!542746 res!337447) b!542742))

(assert (= (and b!542742 res!337450) b!542745))

(assert (= (and b!542745 res!337446) b!542739))

(assert (= (and b!542739 res!337449) b!542744))

(assert (= (and b!542744 res!337451) b!542750))

(assert (= (and b!542750 res!337442) b!542740))

(declare-fun m!520951 () Bool)

(assert (=> b!542741 m!520951))

(declare-fun m!520953 () Bool)

(assert (=> b!542740 m!520953))

(declare-fun m!520955 () Bool)

(assert (=> b!542744 m!520955))

(assert (=> b!542744 m!520955))

(declare-fun m!520957 () Bool)

(assert (=> b!542744 m!520957))

(assert (=> b!542744 m!520957))

(assert (=> b!542744 m!520955))

(declare-fun m!520959 () Bool)

(assert (=> b!542744 m!520959))

(declare-fun m!520961 () Bool)

(assert (=> start!49318 m!520961))

(declare-fun m!520963 () Bool)

(assert (=> start!49318 m!520963))

(assert (=> b!542748 m!520955))

(assert (=> b!542748 m!520955))

(declare-fun m!520965 () Bool)

(assert (=> b!542748 m!520965))

(declare-fun m!520967 () Bool)

(assert (=> b!542749 m!520967))

(declare-fun m!520969 () Bool)

(assert (=> b!542747 m!520969))

(declare-fun m!520971 () Bool)

(assert (=> b!542746 m!520971))

(assert (=> b!542739 m!520955))

(assert (=> b!542739 m!520955))

(declare-fun m!520973 () Bool)

(assert (=> b!542739 m!520973))

(declare-fun m!520975 () Bool)

(assert (=> b!542750 m!520975))

(assert (=> b!542750 m!520955))

(declare-fun m!520977 () Bool)

(assert (=> b!542742 m!520977))

(declare-fun m!520979 () Bool)

(assert (=> b!542745 m!520979))

(assert (=> b!542745 m!520955))

(push 1)

