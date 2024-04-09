; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49210 () Bool)

(assert start!49210)

(declare-fun b!541511 () Bool)

(declare-fun e!313532 () Bool)

(assert (=> b!541511 (= e!313532 false)))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4908 0))(
  ( (MissingZero!4908 (index!21856 (_ BitVec 32))) (Found!4908 (index!21857 (_ BitVec 32))) (Intermediate!4908 (undefined!5720 Bool) (index!21858 (_ BitVec 32)) (x!50800 (_ BitVec 32))) (Undefined!4908) (MissingVacant!4908 (index!21859 (_ BitVec 32))) )
))
(declare-fun lt!247679 () SeekEntryResult!4908)

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34225 0))(
  ( (array!34226 (arr!16443 (Array (_ BitVec 32) (_ BitVec 64))) (size!16807 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34225)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34225 (_ BitVec 32)) SeekEntryResult!4908)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541511 (= lt!247679 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16443 a!3154) j!147) mask!3216) (select (arr!16443 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541512 () Bool)

(declare-fun res!336392 () Bool)

(declare-fun e!313534 () Bool)

(assert (=> b!541512 (=> (not res!336392) (not e!313534))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!541512 (= res!336392 (and (= (size!16807 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16807 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16807 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!541513 () Bool)

(declare-fun res!336396 () Bool)

(assert (=> b!541513 (=> (not res!336396) (not e!313532))))

(declare-datatypes ((List!10615 0))(
  ( (Nil!10612) (Cons!10611 (h!11563 (_ BitVec 64)) (t!16851 List!10615)) )
))
(declare-fun arrayNoDuplicates!0 (array!34225 (_ BitVec 32) List!10615) Bool)

(assert (=> b!541513 (= res!336396 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10612))))

(declare-fun b!541514 () Bool)

(declare-fun res!336397 () Bool)

(assert (=> b!541514 (=> (not res!336397) (not e!313532))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!541514 (= res!336397 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16807 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16807 a!3154)) (= (select (arr!16443 a!3154) resIndex!32) (select (arr!16443 a!3154) j!147))))))

(declare-fun b!541515 () Bool)

(declare-fun res!336395 () Bool)

(assert (=> b!541515 (=> (not res!336395) (not e!313534))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!541515 (= res!336395 (validKeyInArray!0 k!1998))))

(declare-fun b!541516 () Bool)

(declare-fun res!336390 () Bool)

(assert (=> b!541516 (=> (not res!336390) (not e!313534))))

(assert (=> b!541516 (= res!336390 (validKeyInArray!0 (select (arr!16443 a!3154) j!147)))))

(declare-fun b!541517 () Bool)

(declare-fun res!336394 () Bool)

(assert (=> b!541517 (=> (not res!336394) (not e!313534))))

(declare-fun arrayContainsKey!0 (array!34225 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!541517 (= res!336394 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!541518 () Bool)

(assert (=> b!541518 (= e!313534 e!313532)))

(declare-fun res!336391 () Bool)

(assert (=> b!541518 (=> (not res!336391) (not e!313532))))

(declare-fun lt!247678 () SeekEntryResult!4908)

(assert (=> b!541518 (= res!336391 (or (= lt!247678 (MissingZero!4908 i!1153)) (= lt!247678 (MissingVacant!4908 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34225 (_ BitVec 32)) SeekEntryResult!4908)

(assert (=> b!541518 (= lt!247678 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!541519 () Bool)

(declare-fun res!336398 () Bool)

(assert (=> b!541519 (=> (not res!336398) (not e!313532))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34225 (_ BitVec 32)) Bool)

(assert (=> b!541519 (= res!336398 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!336393 () Bool)

(assert (=> start!49210 (=> (not res!336393) (not e!313534))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49210 (= res!336393 (validMask!0 mask!3216))))

(assert (=> start!49210 e!313534))

(assert (=> start!49210 true))

(declare-fun array_inv!12217 (array!34225) Bool)

(assert (=> start!49210 (array_inv!12217 a!3154)))

(declare-fun b!541520 () Bool)

(declare-fun res!336389 () Bool)

(assert (=> b!541520 (=> (not res!336389) (not e!313532))))

(assert (=> b!541520 (= res!336389 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16443 a!3154) j!147) a!3154 mask!3216) (Intermediate!4908 false resIndex!32 resX!32)))))

(assert (= (and start!49210 res!336393) b!541512))

(assert (= (and b!541512 res!336392) b!541516))

(assert (= (and b!541516 res!336390) b!541515))

(assert (= (and b!541515 res!336395) b!541517))

(assert (= (and b!541517 res!336394) b!541518))

(assert (= (and b!541518 res!336391) b!541519))

(assert (= (and b!541519 res!336398) b!541513))

(assert (= (and b!541513 res!336396) b!541514))

(assert (= (and b!541514 res!336397) b!541520))

(assert (= (and b!541520 res!336389) b!541511))

(declare-fun m!519997 () Bool)

(assert (=> b!541517 m!519997))

(declare-fun m!519999 () Bool)

(assert (=> b!541511 m!519999))

(assert (=> b!541511 m!519999))

(declare-fun m!520001 () Bool)

(assert (=> b!541511 m!520001))

(assert (=> b!541511 m!520001))

(assert (=> b!541511 m!519999))

(declare-fun m!520003 () Bool)

(assert (=> b!541511 m!520003))

(declare-fun m!520005 () Bool)

(assert (=> start!49210 m!520005))

(declare-fun m!520007 () Bool)

(assert (=> start!49210 m!520007))

(declare-fun m!520009 () Bool)

(assert (=> b!541519 m!520009))

(declare-fun m!520011 () Bool)

(assert (=> b!541514 m!520011))

(assert (=> b!541514 m!519999))

(declare-fun m!520013 () Bool)

(assert (=> b!541513 m!520013))

(declare-fun m!520015 () Bool)

(assert (=> b!541518 m!520015))

(assert (=> b!541516 m!519999))

(assert (=> b!541516 m!519999))

(declare-fun m!520017 () Bool)

(assert (=> b!541516 m!520017))

(declare-fun m!520019 () Bool)

(assert (=> b!541515 m!520019))

(assert (=> b!541520 m!519999))

(assert (=> b!541520 m!519999))

(declare-fun m!520021 () Bool)

(assert (=> b!541520 m!520021))

(push 1)

(assert (not b!541520))

(assert (not b!541518))

(assert (not b!541516))

(assert (not b!541517))

(assert (not b!541515))

(assert (not b!541513))

(assert (not b!541519))

(assert (not start!49210))

