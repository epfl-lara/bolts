; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51614 () Bool)

(assert start!51614)

(declare-fun b!564415 () Bool)

(declare-fun e!325077 () Bool)

(assert (=> b!564415 (= e!325077 false)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun lt!257570 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5469 0))(
  ( (MissingZero!5469 (index!24103 (_ BitVec 32))) (Found!5469 (index!24104 (_ BitVec 32))) (Intermediate!5469 (undefined!6281 Bool) (index!24105 (_ BitVec 32)) (x!53007 (_ BitVec 32))) (Undefined!5469) (MissingVacant!5469 (index!24106 (_ BitVec 32))) )
))
(declare-fun lt!257571 () SeekEntryResult!5469)

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35433 0))(
  ( (array!35434 (arr!17013 (Array (_ BitVec 32) (_ BitVec 64))) (size!17377 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35433)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35433 (_ BitVec 32)) SeekEntryResult!5469)

(assert (=> b!564415 (= lt!257571 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257570 (select (store (arr!17013 a!3118) i!1132 k!1914) j!142) (array!35434 (store (arr!17013 a!3118) i!1132 k!1914) (size!17377 a!3118)) mask!3119))))

(declare-fun lt!257573 () (_ BitVec 32))

(declare-fun lt!257572 () SeekEntryResult!5469)

(assert (=> b!564415 (= lt!257572 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257573 (select (arr!17013 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564415 (= lt!257570 (toIndex!0 (select (store (arr!17013 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!564415 (= lt!257573 (toIndex!0 (select (arr!17013 a!3118) j!142) mask!3119))))

(declare-fun b!564416 () Bool)

(declare-fun res!355718 () Bool)

(assert (=> b!564416 (=> (not res!355718) (not e!325077))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35433 (_ BitVec 32)) Bool)

(assert (=> b!564416 (= res!355718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!355721 () Bool)

(declare-fun e!325078 () Bool)

(assert (=> start!51614 (=> (not res!355721) (not e!325078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51614 (= res!355721 (validMask!0 mask!3119))))

(assert (=> start!51614 e!325078))

(assert (=> start!51614 true))

(declare-fun array_inv!12787 (array!35433) Bool)

(assert (=> start!51614 (array_inv!12787 a!3118)))

(declare-fun b!564417 () Bool)

(declare-fun res!355724 () Bool)

(assert (=> b!564417 (=> (not res!355724) (not e!325078))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564417 (= res!355724 (validKeyInArray!0 (select (arr!17013 a!3118) j!142)))))

(declare-fun b!564418 () Bool)

(declare-fun res!355723 () Bool)

(assert (=> b!564418 (=> (not res!355723) (not e!325078))))

(assert (=> b!564418 (= res!355723 (and (= (size!17377 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17377 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17377 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564419 () Bool)

(declare-fun res!355719 () Bool)

(assert (=> b!564419 (=> (not res!355719) (not e!325077))))

(declare-datatypes ((List!11146 0))(
  ( (Nil!11143) (Cons!11142 (h!12145 (_ BitVec 64)) (t!17382 List!11146)) )
))
(declare-fun arrayNoDuplicates!0 (array!35433 (_ BitVec 32) List!11146) Bool)

(assert (=> b!564419 (= res!355719 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11143))))

(declare-fun b!564420 () Bool)

(declare-fun res!355720 () Bool)

(assert (=> b!564420 (=> (not res!355720) (not e!325078))))

(declare-fun arrayContainsKey!0 (array!35433 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564420 (= res!355720 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564421 () Bool)

(declare-fun res!355722 () Bool)

(assert (=> b!564421 (=> (not res!355722) (not e!325078))))

(assert (=> b!564421 (= res!355722 (validKeyInArray!0 k!1914))))

(declare-fun b!564422 () Bool)

(assert (=> b!564422 (= e!325078 e!325077)))

(declare-fun res!355717 () Bool)

(assert (=> b!564422 (=> (not res!355717) (not e!325077))))

(declare-fun lt!257569 () SeekEntryResult!5469)

(assert (=> b!564422 (= res!355717 (or (= lt!257569 (MissingZero!5469 i!1132)) (= lt!257569 (MissingVacant!5469 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35433 (_ BitVec 32)) SeekEntryResult!5469)

(assert (=> b!564422 (= lt!257569 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!51614 res!355721) b!564418))

(assert (= (and b!564418 res!355723) b!564417))

(assert (= (and b!564417 res!355724) b!564421))

(assert (= (and b!564421 res!355722) b!564420))

(assert (= (and b!564420 res!355720) b!564422))

(assert (= (and b!564422 res!355717) b!564416))

(assert (= (and b!564416 res!355718) b!564419))

(assert (= (and b!564419 res!355719) b!564415))

(declare-fun m!542893 () Bool)

(assert (=> b!564420 m!542893))

(declare-fun m!542895 () Bool)

(assert (=> b!564421 m!542895))

(declare-fun m!542897 () Bool)

(assert (=> start!51614 m!542897))

(declare-fun m!542899 () Bool)

(assert (=> start!51614 m!542899))

(declare-fun m!542901 () Bool)

(assert (=> b!564415 m!542901))

(declare-fun m!542903 () Bool)

(assert (=> b!564415 m!542903))

(declare-fun m!542905 () Bool)

(assert (=> b!564415 m!542905))

(assert (=> b!564415 m!542905))

(declare-fun m!542907 () Bool)

(assert (=> b!564415 m!542907))

(declare-fun m!542909 () Bool)

(assert (=> b!564415 m!542909))

(assert (=> b!564415 m!542905))

(declare-fun m!542911 () Bool)

(assert (=> b!564415 m!542911))

(assert (=> b!564415 m!542901))

(assert (=> b!564415 m!542901))

(declare-fun m!542913 () Bool)

(assert (=> b!564415 m!542913))

(declare-fun m!542915 () Bool)

(assert (=> b!564419 m!542915))

(declare-fun m!542917 () Bool)

(assert (=> b!564422 m!542917))

(declare-fun m!542919 () Bool)

(assert (=> b!564416 m!542919))

(assert (=> b!564417 m!542901))

(assert (=> b!564417 m!542901))

(declare-fun m!542921 () Bool)

(assert (=> b!564417 m!542921))

(push 1)

