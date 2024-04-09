; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48502 () Bool)

(assert start!48502)

(declare-fun b!532394 () Bool)

(declare-fun res!327892 () Bool)

(declare-fun e!309960 () Bool)

(assert (=> b!532394 (=> (not res!327892) (not e!309960))))

(declare-datatypes ((array!33721 0))(
  ( (array!33722 (arr!16197 (Array (_ BitVec 32) (_ BitVec 64))) (size!16561 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33721)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33721 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!532394 (= res!327892 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!532395 () Bool)

(declare-fun res!327890 () Bool)

(declare-fun e!309959 () Bool)

(assert (=> b!532395 (=> (not res!327890) (not e!309959))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33721 (_ BitVec 32)) Bool)

(assert (=> b!532395 (= res!327890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!327895 () Bool)

(assert (=> start!48502 (=> (not res!327895) (not e!309960))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48502 (= res!327895 (validMask!0 mask!3216))))

(assert (=> start!48502 e!309960))

(assert (=> start!48502 true))

(declare-fun array_inv!11971 (array!33721) Bool)

(assert (=> start!48502 (array_inv!11971 a!3154)))

(declare-fun b!532396 () Bool)

(assert (=> b!532396 (= e!309959 false)))

(declare-fun lt!245204 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532396 (= lt!245204 (toIndex!0 (select (arr!16197 a!3154) j!147) mask!3216))))

(declare-fun b!532397 () Bool)

(declare-fun res!327898 () Bool)

(assert (=> b!532397 (=> (not res!327898) (not e!309959))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!532397 (= res!327898 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16561 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16561 a!3154)) (= (select (arr!16197 a!3154) resIndex!32) (select (arr!16197 a!3154) j!147))))))

(declare-fun b!532398 () Bool)

(declare-fun res!327897 () Bool)

(assert (=> b!532398 (=> (not res!327897) (not e!309959))))

(declare-datatypes ((List!10369 0))(
  ( (Nil!10366) (Cons!10365 (h!11305 (_ BitVec 64)) (t!16605 List!10369)) )
))
(declare-fun arrayNoDuplicates!0 (array!33721 (_ BitVec 32) List!10369) Bool)

(assert (=> b!532398 (= res!327897 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10366))))

(declare-fun b!532399 () Bool)

(declare-fun res!327891 () Bool)

(assert (=> b!532399 (=> (not res!327891) (not e!309960))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!532399 (= res!327891 (and (= (size!16561 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16561 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16561 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!532400 () Bool)

(declare-fun res!327894 () Bool)

(assert (=> b!532400 (=> (not res!327894) (not e!309960))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!532400 (= res!327894 (validKeyInArray!0 (select (arr!16197 a!3154) j!147)))))

(declare-fun b!532401 () Bool)

(declare-fun res!327893 () Bool)

(assert (=> b!532401 (=> (not res!327893) (not e!309960))))

(assert (=> b!532401 (= res!327893 (validKeyInArray!0 k!1998))))

(declare-fun b!532402 () Bool)

(assert (=> b!532402 (= e!309960 e!309959)))

(declare-fun res!327899 () Bool)

(assert (=> b!532402 (=> (not res!327899) (not e!309959))))

(declare-datatypes ((SeekEntryResult!4662 0))(
  ( (MissingZero!4662 (index!20872 (_ BitVec 32))) (Found!4662 (index!20873 (_ BitVec 32))) (Intermediate!4662 (undefined!5474 Bool) (index!20874 (_ BitVec 32)) (x!49874 (_ BitVec 32))) (Undefined!4662) (MissingVacant!4662 (index!20875 (_ BitVec 32))) )
))
(declare-fun lt!245203 () SeekEntryResult!4662)

(assert (=> b!532402 (= res!327899 (or (= lt!245203 (MissingZero!4662 i!1153)) (= lt!245203 (MissingVacant!4662 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33721 (_ BitVec 32)) SeekEntryResult!4662)

(assert (=> b!532402 (= lt!245203 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!532403 () Bool)

(declare-fun res!327896 () Bool)

(assert (=> b!532403 (=> (not res!327896) (not e!309959))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33721 (_ BitVec 32)) SeekEntryResult!4662)

(assert (=> b!532403 (= res!327896 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16197 a!3154) j!147) a!3154 mask!3216) (Intermediate!4662 false resIndex!32 resX!32)))))

(assert (= (and start!48502 res!327895) b!532399))

(assert (= (and b!532399 res!327891) b!532400))

(assert (= (and b!532400 res!327894) b!532401))

(assert (= (and b!532401 res!327893) b!532394))

(assert (= (and b!532394 res!327892) b!532402))

(assert (= (and b!532402 res!327899) b!532395))

(assert (= (and b!532395 res!327890) b!532398))

(assert (= (and b!532398 res!327897) b!532397))

(assert (= (and b!532397 res!327898) b!532403))

(assert (= (and b!532403 res!327896) b!532396))

(declare-fun m!512551 () Bool)

(assert (=> start!48502 m!512551))

(declare-fun m!512553 () Bool)

(assert (=> start!48502 m!512553))

(declare-fun m!512555 () Bool)

(assert (=> b!532395 m!512555))

(declare-fun m!512557 () Bool)

(assert (=> b!532403 m!512557))

(assert (=> b!532403 m!512557))

(declare-fun m!512559 () Bool)

(assert (=> b!532403 m!512559))

(declare-fun m!512561 () Bool)

(assert (=> b!532397 m!512561))

(assert (=> b!532397 m!512557))

(assert (=> b!532400 m!512557))

(assert (=> b!532400 m!512557))

(declare-fun m!512563 () Bool)

(assert (=> b!532400 m!512563))

(declare-fun m!512565 () Bool)

(assert (=> b!532402 m!512565))

(declare-fun m!512567 () Bool)

(assert (=> b!532394 m!512567))

(assert (=> b!532396 m!512557))

(assert (=> b!532396 m!512557))

(declare-fun m!512569 () Bool)

(assert (=> b!532396 m!512569))

(declare-fun m!512571 () Bool)

(assert (=> b!532401 m!512571))

(declare-fun m!512573 () Bool)

(assert (=> b!532398 m!512573))

(push 1)

(assert (not b!532395))

(assert (not b!532396))

(assert (not start!48502))

(assert (not b!532394))

(assert (not b!532401))

(assert (not b!532398))

(assert (not b!532402))

(assert (not b!532403))

(assert (not b!532400))

(check-sat)

(pop 1)

