; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49324 () Bool)

(assert start!49324)

(declare-fun b!542847 () Bool)

(declare-fun e!314059 () Bool)

(assert (=> b!542847 (= e!314059 false)))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun lt!248035 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542847 (= lt!248035 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!542848 () Bool)

(declare-fun res!337551 () Bool)

(assert (=> b!542848 (=> (not res!337551) (not e!314059))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34288 0))(
  ( (array!34289 (arr!16473 (Array (_ BitVec 32) (_ BitVec 64))) (size!16837 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34288)

(assert (=> b!542848 (= res!337551 (and (not (= (select (arr!16473 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16473 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16473 a!3154) index!1177) (select (arr!16473 a!3154) j!147)))))))

(declare-fun b!542849 () Bool)

(declare-fun res!337557 () Bool)

(declare-fun e!314062 () Bool)

(assert (=> b!542849 (=> (not res!337557) (not e!314062))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34288 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542849 (= res!337557 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542850 () Bool)

(declare-fun e!314060 () Bool)

(assert (=> b!542850 (= e!314062 e!314060)))

(declare-fun res!337550 () Bool)

(assert (=> b!542850 (=> (not res!337550) (not e!314060))))

(declare-datatypes ((SeekEntryResult!4938 0))(
  ( (MissingZero!4938 (index!21976 (_ BitVec 32))) (Found!4938 (index!21977 (_ BitVec 32))) (Intermediate!4938 (undefined!5750 Bool) (index!21978 (_ BitVec 32)) (x!50916 (_ BitVec 32))) (Undefined!4938) (MissingVacant!4938 (index!21979 (_ BitVec 32))) )
))
(declare-fun lt!248036 () SeekEntryResult!4938)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542850 (= res!337550 (or (= lt!248036 (MissingZero!4938 i!1153)) (= lt!248036 (MissingVacant!4938 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34288 (_ BitVec 32)) SeekEntryResult!4938)

(assert (=> b!542850 (= lt!248036 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!542851 () Bool)

(assert (=> b!542851 (= e!314060 e!314059)))

(declare-fun res!337549 () Bool)

(assert (=> b!542851 (=> (not res!337549) (not e!314059))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun lt!248034 () SeekEntryResult!4938)

(assert (=> b!542851 (= res!337549 (= lt!248034 (Intermediate!4938 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34288 (_ BitVec 32)) SeekEntryResult!4938)

(assert (=> b!542851 (= lt!248034 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16473 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542852 () Bool)

(declare-fun res!337554 () Bool)

(assert (=> b!542852 (=> (not res!337554) (not e!314062))))

(assert (=> b!542852 (= res!337554 (and (= (size!16837 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16837 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16837 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542853 () Bool)

(declare-fun res!337555 () Bool)

(assert (=> b!542853 (=> (not res!337555) (not e!314060))))

(assert (=> b!542853 (= res!337555 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16837 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16837 a!3154)) (= (select (arr!16473 a!3154) resIndex!32) (select (arr!16473 a!3154) j!147))))))

(declare-fun b!542854 () Bool)

(declare-fun res!337548 () Bool)

(assert (=> b!542854 (=> (not res!337548) (not e!314060))))

(declare-datatypes ((List!10645 0))(
  ( (Nil!10642) (Cons!10641 (h!11596 (_ BitVec 64)) (t!16881 List!10645)) )
))
(declare-fun arrayNoDuplicates!0 (array!34288 (_ BitVec 32) List!10645) Bool)

(assert (=> b!542854 (= res!337548 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10642))))

(declare-fun res!337559 () Bool)

(assert (=> start!49324 (=> (not res!337559) (not e!314062))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49324 (= res!337559 (validMask!0 mask!3216))))

(assert (=> start!49324 e!314062))

(assert (=> start!49324 true))

(declare-fun array_inv!12247 (array!34288) Bool)

(assert (=> start!49324 (array_inv!12247 a!3154)))

(declare-fun b!542855 () Bool)

(declare-fun res!337552 () Bool)

(assert (=> b!542855 (=> (not res!337552) (not e!314060))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34288 (_ BitVec 32)) Bool)

(assert (=> b!542855 (= res!337552 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542856 () Bool)

(declare-fun res!337558 () Bool)

(assert (=> b!542856 (=> (not res!337558) (not e!314062))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542856 (= res!337558 (validKeyInArray!0 k!1998))))

(declare-fun b!542857 () Bool)

(declare-fun res!337556 () Bool)

(assert (=> b!542857 (=> (not res!337556) (not e!314062))))

(assert (=> b!542857 (= res!337556 (validKeyInArray!0 (select (arr!16473 a!3154) j!147)))))

(declare-fun b!542858 () Bool)

(declare-fun res!337553 () Bool)

(assert (=> b!542858 (=> (not res!337553) (not e!314059))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542858 (= res!337553 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16473 a!3154) j!147) mask!3216) (select (arr!16473 a!3154) j!147) a!3154 mask!3216) lt!248034))))

(assert (= (and start!49324 res!337559) b!542852))

(assert (= (and b!542852 res!337554) b!542857))

(assert (= (and b!542857 res!337556) b!542856))

(assert (= (and b!542856 res!337558) b!542849))

(assert (= (and b!542849 res!337557) b!542850))

(assert (= (and b!542850 res!337550) b!542855))

(assert (= (and b!542855 res!337552) b!542854))

(assert (= (and b!542854 res!337548) b!542853))

(assert (= (and b!542853 res!337555) b!542851))

(assert (= (and b!542851 res!337549) b!542858))

(assert (= (and b!542858 res!337553) b!542848))

(assert (= (and b!542848 res!337551) b!542847))

(declare-fun m!521041 () Bool)

(assert (=> b!542851 m!521041))

(assert (=> b!542851 m!521041))

(declare-fun m!521043 () Bool)

(assert (=> b!542851 m!521043))

(declare-fun m!521045 () Bool)

(assert (=> b!542847 m!521045))

(declare-fun m!521047 () Bool)

(assert (=> b!542849 m!521047))

(declare-fun m!521049 () Bool)

(assert (=> b!542854 m!521049))

(declare-fun m!521051 () Bool)

(assert (=> b!542856 m!521051))

(declare-fun m!521053 () Bool)

(assert (=> b!542855 m!521053))

(declare-fun m!521055 () Bool)

(assert (=> b!542850 m!521055))

(declare-fun m!521057 () Bool)

(assert (=> b!542848 m!521057))

(assert (=> b!542848 m!521041))

(declare-fun m!521059 () Bool)

(assert (=> start!49324 m!521059))

(declare-fun m!521061 () Bool)

(assert (=> start!49324 m!521061))

(assert (=> b!542858 m!521041))

(assert (=> b!542858 m!521041))

(declare-fun m!521063 () Bool)

(assert (=> b!542858 m!521063))

(assert (=> b!542858 m!521063))

(assert (=> b!542858 m!521041))

(declare-fun m!521065 () Bool)

(assert (=> b!542858 m!521065))

(declare-fun m!521067 () Bool)

(assert (=> b!542853 m!521067))

(assert (=> b!542853 m!521041))

(assert (=> b!542857 m!521041))

(assert (=> b!542857 m!521041))

(declare-fun m!521069 () Bool)

(assert (=> b!542857 m!521069))

(push 1)

