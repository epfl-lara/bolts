; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48764 () Bool)

(assert start!48764)

(declare-fun b!535871 () Bool)

(declare-fun res!331232 () Bool)

(declare-fun e!311164 () Bool)

(assert (=> b!535871 (=> (not res!331232) (not e!311164))))

(declare-datatypes ((array!33932 0))(
  ( (array!33933 (arr!16301 (Array (_ BitVec 32) (_ BitVec 64))) (size!16665 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33932)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33932 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535871 (= res!331232 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535872 () Bool)

(declare-fun e!311165 () Bool)

(declare-fun e!311163 () Bool)

(assert (=> b!535872 (= e!311165 e!311163)))

(declare-fun res!331227 () Bool)

(assert (=> b!535872 (=> (not res!331227) (not e!311163))))

(declare-fun lt!245944 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!535872 (= res!331227 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!245944 #b00000000000000000000000000000000) (bvslt lt!245944 (size!16665 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535872 (= lt!245944 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun res!331237 () Bool)

(assert (=> start!48764 (=> (not res!331237) (not e!311164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48764 (= res!331237 (validMask!0 mask!3216))))

(assert (=> start!48764 e!311164))

(assert (=> start!48764 true))

(declare-fun array_inv!12075 (array!33932) Bool)

(assert (=> start!48764 (array_inv!12075 a!3154)))

(declare-fun b!535873 () Bool)

(declare-fun res!331238 () Bool)

(declare-fun e!311166 () Bool)

(assert (=> b!535873 (=> (not res!331238) (not e!311166))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!535873 (= res!331238 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16665 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16665 a!3154)) (= (select (arr!16301 a!3154) resIndex!32) (select (arr!16301 a!3154) j!147))))))

(declare-fun b!535874 () Bool)

(assert (=> b!535874 (= e!311166 e!311165)))

(declare-fun res!331234 () Bool)

(assert (=> b!535874 (=> (not res!331234) (not e!311165))))

(declare-datatypes ((SeekEntryResult!4766 0))(
  ( (MissingZero!4766 (index!21288 (_ BitVec 32))) (Found!4766 (index!21289 (_ BitVec 32))) (Intermediate!4766 (undefined!5578 Bool) (index!21290 (_ BitVec 32)) (x!50256 (_ BitVec 32))) (Undefined!4766) (MissingVacant!4766 (index!21291 (_ BitVec 32))) )
))
(declare-fun lt!245943 () SeekEntryResult!4766)

(assert (=> b!535874 (= res!331234 (= lt!245943 (Intermediate!4766 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33932 (_ BitVec 32)) SeekEntryResult!4766)

(assert (=> b!535874 (= lt!245943 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16301 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535875 () Bool)

(declare-fun res!331233 () Bool)

(assert (=> b!535875 (=> (not res!331233) (not e!311164))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535875 (= res!331233 (validKeyInArray!0 k!1998))))

(declare-fun b!535876 () Bool)

(declare-fun res!331235 () Bool)

(assert (=> b!535876 (=> (not res!331235) (not e!311164))))

(assert (=> b!535876 (= res!331235 (validKeyInArray!0 (select (arr!16301 a!3154) j!147)))))

(declare-fun b!535877 () Bool)

(assert (=> b!535877 (= e!311164 e!311166)))

(declare-fun res!331230 () Bool)

(assert (=> b!535877 (=> (not res!331230) (not e!311166))))

(declare-fun lt!245942 () SeekEntryResult!4766)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535877 (= res!331230 (or (= lt!245942 (MissingZero!4766 i!1153)) (= lt!245942 (MissingVacant!4766 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33932 (_ BitVec 32)) SeekEntryResult!4766)

(assert (=> b!535877 (= lt!245942 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!535878 () Bool)

(declare-fun res!331231 () Bool)

(assert (=> b!535878 (=> (not res!331231) (not e!311166))))

(declare-datatypes ((List!10473 0))(
  ( (Nil!10470) (Cons!10469 (h!11412 (_ BitVec 64)) (t!16709 List!10473)) )
))
(declare-fun arrayNoDuplicates!0 (array!33932 (_ BitVec 32) List!10473) Bool)

(assert (=> b!535878 (= res!331231 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10470))))

(declare-fun b!535879 () Bool)

(declare-fun res!331226 () Bool)

(assert (=> b!535879 (=> (not res!331226) (not e!311164))))

(assert (=> b!535879 (= res!331226 (and (= (size!16665 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16665 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16665 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!535880 () Bool)

(declare-fun res!331236 () Bool)

(assert (=> b!535880 (=> (not res!331236) (not e!311165))))

(assert (=> b!535880 (= res!331236 (and (not (= (select (arr!16301 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16301 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16301 a!3154) index!1177) (select (arr!16301 a!3154) j!147)))))))

(declare-fun b!535881 () Bool)

(assert (=> b!535881 (= e!311163 false)))

(declare-fun lt!245945 () SeekEntryResult!4766)

(assert (=> b!535881 (= lt!245945 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!245944 (select (arr!16301 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535882 () Bool)

(declare-fun res!331228 () Bool)

(assert (=> b!535882 (=> (not res!331228) (not e!311165))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535882 (= res!331228 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16301 a!3154) j!147) mask!3216) (select (arr!16301 a!3154) j!147) a!3154 mask!3216) lt!245943))))

(declare-fun b!535883 () Bool)

(declare-fun res!331229 () Bool)

(assert (=> b!535883 (=> (not res!331229) (not e!311166))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33932 (_ BitVec 32)) Bool)

(assert (=> b!535883 (= res!331229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48764 res!331237) b!535879))

(assert (= (and b!535879 res!331226) b!535876))

(assert (= (and b!535876 res!331235) b!535875))

(assert (= (and b!535875 res!331233) b!535871))

(assert (= (and b!535871 res!331232) b!535877))

(assert (= (and b!535877 res!331230) b!535883))

(assert (= (and b!535883 res!331229) b!535878))

(assert (= (and b!535878 res!331231) b!535873))

(assert (= (and b!535873 res!331238) b!535874))

(assert (= (and b!535874 res!331234) b!535882))

(assert (= (and b!535882 res!331228) b!535880))

(assert (= (and b!535880 res!331236) b!535872))

(assert (= (and b!535872 res!331227) b!535881))

(declare-fun m!515387 () Bool)

(assert (=> b!535875 m!515387))

(declare-fun m!515389 () Bool)

(assert (=> b!535880 m!515389))

(declare-fun m!515391 () Bool)

(assert (=> b!535880 m!515391))

(assert (=> b!535876 m!515391))

(assert (=> b!535876 m!515391))

(declare-fun m!515393 () Bool)

(assert (=> b!535876 m!515393))

(assert (=> b!535874 m!515391))

(assert (=> b!535874 m!515391))

(declare-fun m!515395 () Bool)

(assert (=> b!535874 m!515395))

(declare-fun m!515397 () Bool)

(assert (=> b!535871 m!515397))

(declare-fun m!515399 () Bool)

(assert (=> b!535878 m!515399))

(declare-fun m!515401 () Bool)

(assert (=> b!535872 m!515401))

(declare-fun m!515403 () Bool)

(assert (=> b!535873 m!515403))

(assert (=> b!535873 m!515391))

(declare-fun m!515405 () Bool)

(assert (=> start!48764 m!515405))

(declare-fun m!515407 () Bool)

(assert (=> start!48764 m!515407))

(declare-fun m!515409 () Bool)

(assert (=> b!535877 m!515409))

(declare-fun m!515411 () Bool)

(assert (=> b!535883 m!515411))

(assert (=> b!535881 m!515391))

(assert (=> b!535881 m!515391))

(declare-fun m!515413 () Bool)

(assert (=> b!535881 m!515413))

(assert (=> b!535882 m!515391))

(assert (=> b!535882 m!515391))

(declare-fun m!515415 () Bool)

(assert (=> b!535882 m!515415))

(assert (=> b!535882 m!515415))

(assert (=> b!535882 m!515391))

(declare-fun m!515417 () Bool)

(assert (=> b!535882 m!515417))

(push 1)

(assert (not b!535881))

(assert (not b!535882))

(assert (not b!535883))

(assert (not b!535878))

(assert (not b!535872))

(assert (not b!535871))

(assert (not b!535877))

(assert (not b!535874))

(assert (not b!535875))

(assert (not start!48764))

