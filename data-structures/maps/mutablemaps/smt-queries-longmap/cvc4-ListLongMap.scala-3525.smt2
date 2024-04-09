; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48740 () Bool)

(assert start!48740)

(declare-fun b!535423 () Bool)

(declare-fun res!330780 () Bool)

(declare-fun e!310993 () Bool)

(assert (=> b!535423 (=> (not res!330780) (not e!310993))))

(declare-datatypes ((array!33908 0))(
  ( (array!33909 (arr!16289 (Array (_ BitVec 32) (_ BitVec 64))) (size!16653 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33908)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33908 (_ BitVec 32)) Bool)

(assert (=> b!535423 (= res!330780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535424 () Bool)

(declare-fun res!330785 () Bool)

(declare-fun e!310996 () Bool)

(assert (=> b!535424 (=> (not res!330785) (not e!310996))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535424 (= res!330785 (validKeyInArray!0 k!1998))))

(declare-fun res!330779 () Bool)

(assert (=> start!48740 (=> (not res!330779) (not e!310996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48740 (= res!330779 (validMask!0 mask!3216))))

(assert (=> start!48740 e!310996))

(assert (=> start!48740 true))

(declare-fun array_inv!12063 (array!33908) Bool)

(assert (=> start!48740 (array_inv!12063 a!3154)))

(declare-fun b!535425 () Bool)

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun e!310995 () Bool)

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!535425 (= e!310995 (and (not (= (select (arr!16289 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16289 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16289 a!3154) index!1177) (select (arr!16289 a!3154) j!147))) (bvsge mask!3216 #b00000000000000000000000000000000) (bvsge index!1177 (bvadd #b00000000000000000000000000000001 mask!3216))))))

(declare-fun b!535426 () Bool)

(assert (=> b!535426 (= e!310993 e!310995)))

(declare-fun res!330788 () Bool)

(assert (=> b!535426 (=> (not res!330788) (not e!310995))))

(declare-datatypes ((SeekEntryResult!4754 0))(
  ( (MissingZero!4754 (index!21240 (_ BitVec 32))) (Found!4754 (index!21241 (_ BitVec 32))) (Intermediate!4754 (undefined!5566 Bool) (index!21242 (_ BitVec 32)) (x!50212 (_ BitVec 32))) (Undefined!4754) (MissingVacant!4754 (index!21243 (_ BitVec 32))) )
))
(declare-fun lt!245818 () SeekEntryResult!4754)

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!535426 (= res!330788 (= lt!245818 (Intermediate!4754 false resIndex!32 resX!32)))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33908 (_ BitVec 32)) SeekEntryResult!4754)

(assert (=> b!535426 (= lt!245818 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16289 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535427 () Bool)

(declare-fun res!330787 () Bool)

(assert (=> b!535427 (=> (not res!330787) (not e!310993))))

(assert (=> b!535427 (= res!330787 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16653 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16653 a!3154)) (= (select (arr!16289 a!3154) resIndex!32) (select (arr!16289 a!3154) j!147))))))

(declare-fun b!535428 () Bool)

(declare-fun res!330784 () Bool)

(assert (=> b!535428 (=> (not res!330784) (not e!310996))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535428 (= res!330784 (and (= (size!16653 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16653 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16653 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!535429 () Bool)

(declare-fun res!330781 () Bool)

(assert (=> b!535429 (=> (not res!330781) (not e!310996))))

(assert (=> b!535429 (= res!330781 (validKeyInArray!0 (select (arr!16289 a!3154) j!147)))))

(declare-fun b!535430 () Bool)

(declare-fun res!330782 () Bool)

(assert (=> b!535430 (=> (not res!330782) (not e!310993))))

(declare-datatypes ((List!10461 0))(
  ( (Nil!10458) (Cons!10457 (h!11400 (_ BitVec 64)) (t!16697 List!10461)) )
))
(declare-fun arrayNoDuplicates!0 (array!33908 (_ BitVec 32) List!10461) Bool)

(assert (=> b!535430 (= res!330782 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10458))))

(declare-fun b!535431 () Bool)

(assert (=> b!535431 (= e!310996 e!310993)))

(declare-fun res!330786 () Bool)

(assert (=> b!535431 (=> (not res!330786) (not e!310993))))

(declare-fun lt!245819 () SeekEntryResult!4754)

(assert (=> b!535431 (= res!330786 (or (= lt!245819 (MissingZero!4754 i!1153)) (= lt!245819 (MissingVacant!4754 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33908 (_ BitVec 32)) SeekEntryResult!4754)

(assert (=> b!535431 (= lt!245819 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!535432 () Bool)

(declare-fun res!330778 () Bool)

(assert (=> b!535432 (=> (not res!330778) (not e!310996))))

(declare-fun arrayContainsKey!0 (array!33908 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535432 (= res!330778 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535433 () Bool)

(declare-fun res!330783 () Bool)

(assert (=> b!535433 (=> (not res!330783) (not e!310995))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535433 (= res!330783 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16289 a!3154) j!147) mask!3216) (select (arr!16289 a!3154) j!147) a!3154 mask!3216) lt!245818))))

(assert (= (and start!48740 res!330779) b!535428))

(assert (= (and b!535428 res!330784) b!535429))

(assert (= (and b!535429 res!330781) b!535424))

(assert (= (and b!535424 res!330785) b!535432))

(assert (= (and b!535432 res!330778) b!535431))

(assert (= (and b!535431 res!330786) b!535423))

(assert (= (and b!535423 res!330780) b!535430))

(assert (= (and b!535430 res!330782) b!535427))

(assert (= (and b!535427 res!330787) b!535426))

(assert (= (and b!535426 res!330788) b!535433))

(assert (= (and b!535433 res!330783) b!535425))

(declare-fun m!515019 () Bool)

(assert (=> b!535425 m!515019))

(declare-fun m!515021 () Bool)

(assert (=> b!535425 m!515021))

(declare-fun m!515023 () Bool)

(assert (=> b!535427 m!515023))

(assert (=> b!535427 m!515021))

(declare-fun m!515025 () Bool)

(assert (=> b!535430 m!515025))

(declare-fun m!515027 () Bool)

(assert (=> b!535423 m!515027))

(declare-fun m!515029 () Bool)

(assert (=> b!535431 m!515029))

(declare-fun m!515031 () Bool)

(assert (=> start!48740 m!515031))

(declare-fun m!515033 () Bool)

(assert (=> start!48740 m!515033))

(assert (=> b!535433 m!515021))

(assert (=> b!535433 m!515021))

(declare-fun m!515035 () Bool)

(assert (=> b!535433 m!515035))

(assert (=> b!535433 m!515035))

(assert (=> b!535433 m!515021))

(declare-fun m!515037 () Bool)

(assert (=> b!535433 m!515037))

(assert (=> b!535426 m!515021))

(assert (=> b!535426 m!515021))

(declare-fun m!515039 () Bool)

(assert (=> b!535426 m!515039))

(declare-fun m!515041 () Bool)

(assert (=> b!535424 m!515041))

(declare-fun m!515043 () Bool)

(assert (=> b!535432 m!515043))

(assert (=> b!535429 m!515021))

(assert (=> b!535429 m!515021))

(declare-fun m!515045 () Bool)

(assert (=> b!535429 m!515045))

(push 1)

(assert (not start!48740))

(assert (not b!535423))

(assert (not b!535431))

(assert (not b!535426))

(assert (not b!535432))

(assert (not b!535429))

(assert (not b!535433))

(assert (not b!535424))

(assert (not b!535430))

(check-sat)

(pop 1)

(push 1)

(check-sat)

