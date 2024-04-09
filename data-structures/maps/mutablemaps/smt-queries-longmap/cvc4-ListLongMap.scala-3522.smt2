; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48722 () Bool)

(assert start!48722)

(declare-fun b!535134 () Bool)

(declare-fun res!330489 () Bool)

(declare-fun e!310897 () Bool)

(assert (=> b!535134 (=> (not res!330489) (not e!310897))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33890 0))(
  ( (array!33891 (arr!16280 (Array (_ BitVec 32) (_ BitVec 64))) (size!16644 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33890)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535134 (= res!330489 (and (= (size!16644 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16644 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16644 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!535135 () Bool)

(declare-fun res!330491 () Bool)

(declare-fun e!310895 () Bool)

(assert (=> b!535135 (=> (not res!330491) (not e!310895))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!535135 (= res!330491 (and (not (= (select (arr!16280 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16280 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16280 a!3154) index!1177) (select (arr!16280 a!3154) j!147)) (= index!1177 resIndex!32) (bvsge mask!3216 #b00000000000000000000000000000000) (bvslt index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsle x!1030 #b01111111111111111111111111111110)))))

(declare-fun b!535136 () Bool)

(declare-fun res!330493 () Bool)

(declare-fun e!310896 () Bool)

(assert (=> b!535136 (=> (not res!330493) (not e!310896))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!535136 (= res!330493 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16644 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16644 a!3154)) (= (select (arr!16280 a!3154) resIndex!32) (select (arr!16280 a!3154) j!147))))))

(declare-fun res!330490 () Bool)

(assert (=> start!48722 (=> (not res!330490) (not e!310897))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48722 (= res!330490 (validMask!0 mask!3216))))

(assert (=> start!48722 e!310897))

(assert (=> start!48722 true))

(declare-fun array_inv!12054 (array!33890) Bool)

(assert (=> start!48722 (array_inv!12054 a!3154)))

(declare-fun b!535137 () Bool)

(declare-fun res!330494 () Bool)

(assert (=> b!535137 (=> (not res!330494) (not e!310895))))

(declare-datatypes ((SeekEntryResult!4745 0))(
  ( (MissingZero!4745 (index!21204 (_ BitVec 32))) (Found!4745 (index!21205 (_ BitVec 32))) (Intermediate!4745 (undefined!5557 Bool) (index!21206 (_ BitVec 32)) (x!50179 (_ BitVec 32))) (Undefined!4745) (MissingVacant!4745 (index!21207 (_ BitVec 32))) )
))
(declare-fun lt!245764 () SeekEntryResult!4745)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33890 (_ BitVec 32)) SeekEntryResult!4745)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535137 (= res!330494 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16280 a!3154) j!147) mask!3216) (select (arr!16280 a!3154) j!147) a!3154 mask!3216) lt!245764))))

(declare-fun b!535138 () Bool)

(assert (=> b!535138 (= e!310897 e!310896)))

(declare-fun res!330500 () Bool)

(assert (=> b!535138 (=> (not res!330500) (not e!310896))))

(declare-fun lt!245765 () SeekEntryResult!4745)

(assert (=> b!535138 (= res!330500 (or (= lt!245765 (MissingZero!4745 i!1153)) (= lt!245765 (MissingVacant!4745 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33890 (_ BitVec 32)) SeekEntryResult!4745)

(assert (=> b!535138 (= lt!245765 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!535139 () Bool)

(declare-fun res!330499 () Bool)

(assert (=> b!535139 (=> (not res!330499) (not e!310897))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535139 (= res!330499 (validKeyInArray!0 (select (arr!16280 a!3154) j!147)))))

(declare-fun b!535140 () Bool)

(assert (=> b!535140 (= e!310896 e!310895)))

(declare-fun res!330495 () Bool)

(assert (=> b!535140 (=> (not res!330495) (not e!310895))))

(assert (=> b!535140 (= res!330495 (= lt!245764 (Intermediate!4745 false resIndex!32 resX!32)))))

(assert (=> b!535140 (= lt!245764 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16280 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535141 () Bool)

(declare-fun res!330492 () Bool)

(assert (=> b!535141 (=> (not res!330492) (not e!310896))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33890 (_ BitVec 32)) Bool)

(assert (=> b!535141 (= res!330492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535142 () Bool)

(declare-fun res!330496 () Bool)

(assert (=> b!535142 (=> (not res!330496) (not e!310896))))

(declare-datatypes ((List!10452 0))(
  ( (Nil!10449) (Cons!10448 (h!11391 (_ BitVec 64)) (t!16688 List!10452)) )
))
(declare-fun arrayNoDuplicates!0 (array!33890 (_ BitVec 32) List!10452) Bool)

(assert (=> b!535142 (= res!330496 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10449))))

(declare-fun b!535143 () Bool)

(assert (=> b!535143 (= e!310895 (not (validKeyInArray!0 (select (store (arr!16280 a!3154) i!1153 k!1998) j!147))))))

(declare-fun b!535144 () Bool)

(declare-fun res!330497 () Bool)

(assert (=> b!535144 (=> (not res!330497) (not e!310897))))

(assert (=> b!535144 (= res!330497 (validKeyInArray!0 k!1998))))

(declare-fun b!535145 () Bool)

(declare-fun res!330498 () Bool)

(assert (=> b!535145 (=> (not res!330498) (not e!310897))))

(declare-fun arrayContainsKey!0 (array!33890 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535145 (= res!330498 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48722 res!330490) b!535134))

(assert (= (and b!535134 res!330489) b!535139))

(assert (= (and b!535139 res!330499) b!535144))

(assert (= (and b!535144 res!330497) b!535145))

(assert (= (and b!535145 res!330498) b!535138))

(assert (= (and b!535138 res!330500) b!535141))

(assert (= (and b!535141 res!330492) b!535142))

(assert (= (and b!535142 res!330496) b!535136))

(assert (= (and b!535136 res!330493) b!535140))

(assert (= (and b!535140 res!330495) b!535137))

(assert (= (and b!535137 res!330494) b!535135))

(assert (= (and b!535135 res!330491) b!535143))

(declare-fun m!514767 () Bool)

(assert (=> b!535138 m!514767))

(declare-fun m!514769 () Bool)

(assert (=> start!48722 m!514769))

(declare-fun m!514771 () Bool)

(assert (=> start!48722 m!514771))

(declare-fun m!514773 () Bool)

(assert (=> b!535144 m!514773))

(declare-fun m!514775 () Bool)

(assert (=> b!535140 m!514775))

(assert (=> b!535140 m!514775))

(declare-fun m!514777 () Bool)

(assert (=> b!535140 m!514777))

(declare-fun m!514779 () Bool)

(assert (=> b!535143 m!514779))

(declare-fun m!514781 () Bool)

(assert (=> b!535143 m!514781))

(assert (=> b!535143 m!514781))

(declare-fun m!514783 () Bool)

(assert (=> b!535143 m!514783))

(declare-fun m!514785 () Bool)

(assert (=> b!535135 m!514785))

(assert (=> b!535135 m!514775))

(declare-fun m!514787 () Bool)

(assert (=> b!535141 m!514787))

(assert (=> b!535139 m!514775))

(assert (=> b!535139 m!514775))

(declare-fun m!514789 () Bool)

(assert (=> b!535139 m!514789))

(declare-fun m!514791 () Bool)

(assert (=> b!535145 m!514791))

(assert (=> b!535137 m!514775))

(assert (=> b!535137 m!514775))

(declare-fun m!514793 () Bool)

(assert (=> b!535137 m!514793))

(assert (=> b!535137 m!514793))

(assert (=> b!535137 m!514775))

(declare-fun m!514795 () Bool)

(assert (=> b!535137 m!514795))

(declare-fun m!514797 () Bool)

(assert (=> b!535142 m!514797))

(declare-fun m!514799 () Bool)

(assert (=> b!535136 m!514799))

(assert (=> b!535136 m!514775))

(push 1)

(assert (not b!535144))

(assert (not b!535138))

(assert (not b!535139))

