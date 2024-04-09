; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49300 () Bool)

(assert start!49300)

(declare-fun b!542415 () Bool)

(declare-fun res!337125 () Bool)

(declare-fun e!313918 () Bool)

(assert (=> b!542415 (=> (not res!337125) (not e!313918))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34264 0))(
  ( (array!34265 (arr!16461 (Array (_ BitVec 32) (_ BitVec 64))) (size!16825 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34264)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!542415 (= res!337125 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16825 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16825 a!3154)) (= (select (arr!16461 a!3154) resIndex!32) (select (arr!16461 a!3154) j!147))))))

(declare-fun b!542416 () Bool)

(declare-fun e!313915 () Bool)

(assert (=> b!542416 (= e!313918 e!313915)))

(declare-fun res!337121 () Bool)

(assert (=> b!542416 (=> (not res!337121) (not e!313915))))

(declare-datatypes ((SeekEntryResult!4926 0))(
  ( (MissingZero!4926 (index!21928 (_ BitVec 32))) (Found!4926 (index!21929 (_ BitVec 32))) (Intermediate!4926 (undefined!5738 Bool) (index!21930 (_ BitVec 32)) (x!50872 (_ BitVec 32))) (Undefined!4926) (MissingVacant!4926 (index!21931 (_ BitVec 32))) )
))
(declare-fun lt!247926 () SeekEntryResult!4926)

(assert (=> b!542416 (= res!337121 (= lt!247926 (Intermediate!4926 false resIndex!32 resX!32)))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34264 (_ BitVec 32)) SeekEntryResult!4926)

(assert (=> b!542416 (= lt!247926 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16461 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542417 () Bool)

(declare-fun res!337123 () Bool)

(assert (=> b!542417 (=> (not res!337123) (not e!313918))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34264 (_ BitVec 32)) Bool)

(assert (=> b!542417 (= res!337123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542418 () Bool)

(declare-fun res!337122 () Bool)

(assert (=> b!542418 (=> (not res!337122) (not e!313918))))

(declare-datatypes ((List!10633 0))(
  ( (Nil!10630) (Cons!10629 (h!11584 (_ BitVec 64)) (t!16869 List!10633)) )
))
(declare-fun arrayNoDuplicates!0 (array!34264 (_ BitVec 32) List!10633) Bool)

(assert (=> b!542418 (= res!337122 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10630))))

(declare-fun b!542419 () Bool)

(declare-fun res!337124 () Bool)

(declare-fun e!313917 () Bool)

(assert (=> b!542419 (=> (not res!337124) (not e!313917))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542419 (= res!337124 (and (= (size!16825 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16825 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16825 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542420 () Bool)

(assert (=> b!542420 (= e!313915 false)))

(declare-fun lt!247928 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542420 (= lt!247928 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!542421 () Bool)

(declare-fun res!337117 () Bool)

(assert (=> b!542421 (=> (not res!337117) (not e!313917))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34264 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542421 (= res!337117 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542422 () Bool)

(declare-fun res!337118 () Bool)

(assert (=> b!542422 (=> (not res!337118) (not e!313917))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542422 (= res!337118 (validKeyInArray!0 k!1998))))

(declare-fun res!337120 () Bool)

(assert (=> start!49300 (=> (not res!337120) (not e!313917))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49300 (= res!337120 (validMask!0 mask!3216))))

(assert (=> start!49300 e!313917))

(assert (=> start!49300 true))

(declare-fun array_inv!12235 (array!34264) Bool)

(assert (=> start!49300 (array_inv!12235 a!3154)))

(declare-fun b!542423 () Bool)

(declare-fun res!337116 () Bool)

(assert (=> b!542423 (=> (not res!337116) (not e!313915))))

(assert (=> b!542423 (= res!337116 (and (not (= (select (arr!16461 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16461 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16461 a!3154) index!1177) (select (arr!16461 a!3154) j!147)))))))

(declare-fun b!542424 () Bool)

(declare-fun res!337127 () Bool)

(assert (=> b!542424 (=> (not res!337127) (not e!313917))))

(assert (=> b!542424 (= res!337127 (validKeyInArray!0 (select (arr!16461 a!3154) j!147)))))

(declare-fun b!542425 () Bool)

(assert (=> b!542425 (= e!313917 e!313918)))

(declare-fun res!337119 () Bool)

(assert (=> b!542425 (=> (not res!337119) (not e!313918))))

(declare-fun lt!247927 () SeekEntryResult!4926)

(assert (=> b!542425 (= res!337119 (or (= lt!247927 (MissingZero!4926 i!1153)) (= lt!247927 (MissingVacant!4926 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34264 (_ BitVec 32)) SeekEntryResult!4926)

(assert (=> b!542425 (= lt!247927 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!542426 () Bool)

(declare-fun res!337126 () Bool)

(assert (=> b!542426 (=> (not res!337126) (not e!313915))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542426 (= res!337126 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16461 a!3154) j!147) mask!3216) (select (arr!16461 a!3154) j!147) a!3154 mask!3216) lt!247926))))

(assert (= (and start!49300 res!337120) b!542419))

(assert (= (and b!542419 res!337124) b!542424))

(assert (= (and b!542424 res!337127) b!542422))

(assert (= (and b!542422 res!337118) b!542421))

(assert (= (and b!542421 res!337117) b!542425))

(assert (= (and b!542425 res!337119) b!542417))

(assert (= (and b!542417 res!337123) b!542418))

(assert (= (and b!542418 res!337122) b!542415))

(assert (= (and b!542415 res!337125) b!542416))

(assert (= (and b!542416 res!337121) b!542426))

(assert (= (and b!542426 res!337126) b!542423))

(assert (= (and b!542423 res!337116) b!542420))

(declare-fun m!520681 () Bool)

(assert (=> b!542422 m!520681))

(declare-fun m!520683 () Bool)

(assert (=> b!542420 m!520683))

(declare-fun m!520685 () Bool)

(assert (=> b!542421 m!520685))

(declare-fun m!520687 () Bool)

(assert (=> b!542415 m!520687))

(declare-fun m!520689 () Bool)

(assert (=> b!542415 m!520689))

(assert (=> b!542416 m!520689))

(assert (=> b!542416 m!520689))

(declare-fun m!520691 () Bool)

(assert (=> b!542416 m!520691))

(assert (=> b!542424 m!520689))

(assert (=> b!542424 m!520689))

(declare-fun m!520693 () Bool)

(assert (=> b!542424 m!520693))

(declare-fun m!520695 () Bool)

(assert (=> b!542425 m!520695))

(declare-fun m!520697 () Bool)

(assert (=> b!542423 m!520697))

(assert (=> b!542423 m!520689))

(declare-fun m!520699 () Bool)

(assert (=> b!542417 m!520699))

(assert (=> b!542426 m!520689))

(assert (=> b!542426 m!520689))

(declare-fun m!520701 () Bool)

(assert (=> b!542426 m!520701))

(assert (=> b!542426 m!520701))

(assert (=> b!542426 m!520689))

(declare-fun m!520703 () Bool)

(assert (=> b!542426 m!520703))

(declare-fun m!520705 () Bool)

(assert (=> start!49300 m!520705))

(declare-fun m!520707 () Bool)

(assert (=> start!49300 m!520707))

(declare-fun m!520709 () Bool)

(assert (=> b!542418 m!520709))

(push 1)

