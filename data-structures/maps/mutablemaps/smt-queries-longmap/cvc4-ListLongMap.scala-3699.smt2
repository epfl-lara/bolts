; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50832 () Bool)

(assert start!50832)

(declare-fun b!555794 () Bool)

(declare-fun res!348365 () Bool)

(declare-fun e!320269 () Bool)

(assert (=> b!555794 (=> (not res!348365) (not e!320269))))

(declare-datatypes ((array!35011 0))(
  ( (array!35012 (arr!16811 (Array (_ BitVec 32) (_ BitVec 64))) (size!17175 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35011)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555794 (= res!348365 (validKeyInArray!0 (select (arr!16811 a!3118) j!142)))))

(declare-fun b!555795 () Bool)

(declare-fun e!320270 () Bool)

(assert (=> b!555795 (= e!320270 (not true))))

(declare-fun e!320272 () Bool)

(assert (=> b!555795 e!320272))

(declare-fun res!348356 () Bool)

(assert (=> b!555795 (=> (not res!348356) (not e!320272))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35011 (_ BitVec 32)) Bool)

(assert (=> b!555795 (= res!348356 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17308 0))(
  ( (Unit!17309) )
))
(declare-fun lt!252706 () Unit!17308)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35011 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17308)

(assert (=> b!555795 (= lt!252706 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555796 () Bool)

(declare-datatypes ((SeekEntryResult!5267 0))(
  ( (MissingZero!5267 (index!23295 (_ BitVec 32))) (Found!5267 (index!23296 (_ BitVec 32))) (Intermediate!5267 (undefined!6079 Bool) (index!23297 (_ BitVec 32)) (x!52216 (_ BitVec 32))) (Undefined!5267) (MissingVacant!5267 (index!23298 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35011 (_ BitVec 32)) SeekEntryResult!5267)

(assert (=> b!555796 (= e!320272 (= (seekEntryOrOpen!0 (select (arr!16811 a!3118) j!142) a!3118 mask!3119) (Found!5267 j!142)))))

(declare-fun b!555797 () Bool)

(declare-fun res!348361 () Bool)

(assert (=> b!555797 (=> (not res!348361) (not e!320270))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35011 (_ BitVec 32)) SeekEntryResult!5267)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555797 (= res!348361 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16811 a!3118) j!142) mask!3119) (select (arr!16811 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16811 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16811 a!3118) i!1132 k!1914) j!142) (array!35012 (store (arr!16811 a!3118) i!1132 k!1914) (size!17175 a!3118)) mask!3119)))))

(declare-fun b!555798 () Bool)

(declare-fun res!348363 () Bool)

(assert (=> b!555798 (=> (not res!348363) (not e!320270))))

(declare-datatypes ((List!10944 0))(
  ( (Nil!10941) (Cons!10940 (h!11925 (_ BitVec 64)) (t!17180 List!10944)) )
))
(declare-fun arrayNoDuplicates!0 (array!35011 (_ BitVec 32) List!10944) Bool)

(assert (=> b!555798 (= res!348363 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10941))))

(declare-fun b!555800 () Bool)

(assert (=> b!555800 (= e!320269 e!320270)))

(declare-fun res!348358 () Bool)

(assert (=> b!555800 (=> (not res!348358) (not e!320270))))

(declare-fun lt!252707 () SeekEntryResult!5267)

(assert (=> b!555800 (= res!348358 (or (= lt!252707 (MissingZero!5267 i!1132)) (= lt!252707 (MissingVacant!5267 i!1132))))))

(assert (=> b!555800 (= lt!252707 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!555801 () Bool)

(declare-fun res!348364 () Bool)

(assert (=> b!555801 (=> (not res!348364) (not e!320270))))

(assert (=> b!555801 (= res!348364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555802 () Bool)

(declare-fun res!348359 () Bool)

(assert (=> b!555802 (=> (not res!348359) (not e!320269))))

(assert (=> b!555802 (= res!348359 (validKeyInArray!0 k!1914))))

(declare-fun b!555803 () Bool)

(declare-fun res!348357 () Bool)

(assert (=> b!555803 (=> (not res!348357) (not e!320269))))

(declare-fun arrayContainsKey!0 (array!35011 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555803 (= res!348357 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555799 () Bool)

(declare-fun res!348362 () Bool)

(assert (=> b!555799 (=> (not res!348362) (not e!320269))))

(assert (=> b!555799 (= res!348362 (and (= (size!17175 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17175 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17175 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!348360 () Bool)

(assert (=> start!50832 (=> (not res!348360) (not e!320269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50832 (= res!348360 (validMask!0 mask!3119))))

(assert (=> start!50832 e!320269))

(assert (=> start!50832 true))

(declare-fun array_inv!12585 (array!35011) Bool)

(assert (=> start!50832 (array_inv!12585 a!3118)))

(assert (= (and start!50832 res!348360) b!555799))

(assert (= (and b!555799 res!348362) b!555794))

(assert (= (and b!555794 res!348365) b!555802))

(assert (= (and b!555802 res!348359) b!555803))

(assert (= (and b!555803 res!348357) b!555800))

(assert (= (and b!555800 res!348358) b!555801))

(assert (= (and b!555801 res!348364) b!555798))

(assert (= (and b!555798 res!348363) b!555797))

(assert (= (and b!555797 res!348361) b!555795))

(assert (= (and b!555795 res!348356) b!555796))

(declare-fun m!533725 () Bool)

(assert (=> b!555803 m!533725))

(declare-fun m!533727 () Bool)

(assert (=> start!50832 m!533727))

(declare-fun m!533729 () Bool)

(assert (=> start!50832 m!533729))

(declare-fun m!533731 () Bool)

(assert (=> b!555795 m!533731))

(declare-fun m!533733 () Bool)

(assert (=> b!555795 m!533733))

(declare-fun m!533735 () Bool)

(assert (=> b!555798 m!533735))

(declare-fun m!533737 () Bool)

(assert (=> b!555794 m!533737))

(assert (=> b!555794 m!533737))

(declare-fun m!533739 () Bool)

(assert (=> b!555794 m!533739))

(assert (=> b!555796 m!533737))

(assert (=> b!555796 m!533737))

(declare-fun m!533741 () Bool)

(assert (=> b!555796 m!533741))

(declare-fun m!533743 () Bool)

(assert (=> b!555801 m!533743))

(declare-fun m!533745 () Bool)

(assert (=> b!555802 m!533745))

(declare-fun m!533747 () Bool)

(assert (=> b!555800 m!533747))

(assert (=> b!555797 m!533737))

(declare-fun m!533749 () Bool)

(assert (=> b!555797 m!533749))

(assert (=> b!555797 m!533737))

(declare-fun m!533751 () Bool)

(assert (=> b!555797 m!533751))

(declare-fun m!533753 () Bool)

(assert (=> b!555797 m!533753))

(assert (=> b!555797 m!533751))

(declare-fun m!533755 () Bool)

(assert (=> b!555797 m!533755))

(assert (=> b!555797 m!533749))

(assert (=> b!555797 m!533737))

(declare-fun m!533757 () Bool)

(assert (=> b!555797 m!533757))

(declare-fun m!533759 () Bool)

(assert (=> b!555797 m!533759))

(assert (=> b!555797 m!533751))

(assert (=> b!555797 m!533753))

(push 1)

