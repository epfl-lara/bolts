; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48734 () Bool)

(assert start!48734)

(declare-fun b!535324 () Bool)

(declare-fun res!330687 () Bool)

(declare-fun e!310957 () Bool)

(assert (=> b!535324 (=> (not res!330687) (not e!310957))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33902 0))(
  ( (array!33903 (arr!16286 (Array (_ BitVec 32) (_ BitVec 64))) (size!16650 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33902)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535324 (= res!330687 (and (= (size!16650 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16650 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16650 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!535325 () Bool)

(declare-fun res!330679 () Bool)

(declare-fun e!310959 () Bool)

(assert (=> b!535325 (=> (not res!330679) (not e!310959))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33902 (_ BitVec 32)) Bool)

(assert (=> b!535325 (= res!330679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535326 () Bool)

(declare-fun res!330682 () Bool)

(assert (=> b!535326 (=> (not res!330682) (not e!310959))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!535326 (= res!330682 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16650 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16650 a!3154)) (= (select (arr!16286 a!3154) resIndex!32) (select (arr!16286 a!3154) j!147))))))

(declare-fun b!535327 () Bool)

(assert (=> b!535327 (= e!310957 e!310959)))

(declare-fun res!330680 () Bool)

(assert (=> b!535327 (=> (not res!330680) (not e!310959))))

(declare-datatypes ((SeekEntryResult!4751 0))(
  ( (MissingZero!4751 (index!21228 (_ BitVec 32))) (Found!4751 (index!21229 (_ BitVec 32))) (Intermediate!4751 (undefined!5563 Bool) (index!21230 (_ BitVec 32)) (x!50201 (_ BitVec 32))) (Undefined!4751) (MissingVacant!4751 (index!21231 (_ BitVec 32))) )
))
(declare-fun lt!245800 () SeekEntryResult!4751)

(assert (=> b!535327 (= res!330680 (or (= lt!245800 (MissingZero!4751 i!1153)) (= lt!245800 (MissingVacant!4751 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33902 (_ BitVec 32)) SeekEntryResult!4751)

(assert (=> b!535327 (= lt!245800 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!535328 () Bool)

(declare-fun res!330689 () Bool)

(assert (=> b!535328 (=> (not res!330689) (not e!310957))))

(declare-fun arrayContainsKey!0 (array!33902 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535328 (= res!330689 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535329 () Bool)

(declare-fun res!330688 () Bool)

(declare-fun e!310958 () Bool)

(assert (=> b!535329 (=> (not res!330688) (not e!310958))))

(declare-fun lt!245801 () SeekEntryResult!4751)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33902 (_ BitVec 32)) SeekEntryResult!4751)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535329 (= res!330688 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16286 a!3154) j!147) mask!3216) (select (arr!16286 a!3154) j!147) a!3154 mask!3216) lt!245801))))

(declare-fun b!535330 () Bool)

(assert (=> b!535330 (= e!310959 e!310958)))

(declare-fun res!330683 () Bool)

(assert (=> b!535330 (=> (not res!330683) (not e!310958))))

(assert (=> b!535330 (= res!330683 (= lt!245801 (Intermediate!4751 false resIndex!32 resX!32)))))

(assert (=> b!535330 (= lt!245801 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16286 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535331 () Bool)

(declare-fun res!330684 () Bool)

(assert (=> b!535331 (=> (not res!330684) (not e!310957))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535331 (= res!330684 (validKeyInArray!0 (select (arr!16286 a!3154) j!147)))))

(declare-fun b!535332 () Bool)

(declare-fun res!330685 () Bool)

(assert (=> b!535332 (=> (not res!330685) (not e!310959))))

(declare-datatypes ((List!10458 0))(
  ( (Nil!10455) (Cons!10454 (h!11397 (_ BitVec 64)) (t!16694 List!10458)) )
))
(declare-fun arrayNoDuplicates!0 (array!33902 (_ BitVec 32) List!10458) Bool)

(assert (=> b!535332 (= res!330685 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10455))))

(declare-fun b!535333 () Bool)

(declare-fun res!330686 () Bool)

(assert (=> b!535333 (=> (not res!330686) (not e!310957))))

(assert (=> b!535333 (= res!330686 (validKeyInArray!0 k!1998))))

(declare-fun b!535334 () Bool)

(assert (=> b!535334 (= e!310958 (and (not (= (select (arr!16286 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16286 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16286 a!3154) index!1177) (select (arr!16286 a!3154) j!147))) (bvslt mask!3216 #b00000000000000000000000000000000)))))

(declare-fun res!330681 () Bool)

(assert (=> start!48734 (=> (not res!330681) (not e!310957))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48734 (= res!330681 (validMask!0 mask!3216))))

(assert (=> start!48734 e!310957))

(assert (=> start!48734 true))

(declare-fun array_inv!12060 (array!33902) Bool)

(assert (=> start!48734 (array_inv!12060 a!3154)))

(assert (= (and start!48734 res!330681) b!535324))

(assert (= (and b!535324 res!330687) b!535331))

(assert (= (and b!535331 res!330684) b!535333))

(assert (= (and b!535333 res!330686) b!535328))

(assert (= (and b!535328 res!330689) b!535327))

(assert (= (and b!535327 res!330680) b!535325))

(assert (= (and b!535325 res!330679) b!535332))

(assert (= (and b!535332 res!330685) b!535326))

(assert (= (and b!535326 res!330682) b!535330))

(assert (= (and b!535330 res!330683) b!535329))

(assert (= (and b!535329 res!330688) b!535334))

(declare-fun m!514935 () Bool)

(assert (=> b!535325 m!514935))

(declare-fun m!514937 () Bool)

(assert (=> start!48734 m!514937))

(declare-fun m!514939 () Bool)

(assert (=> start!48734 m!514939))

(declare-fun m!514941 () Bool)

(assert (=> b!535329 m!514941))

(assert (=> b!535329 m!514941))

(declare-fun m!514943 () Bool)

(assert (=> b!535329 m!514943))

(assert (=> b!535329 m!514943))

(assert (=> b!535329 m!514941))

(declare-fun m!514945 () Bool)

(assert (=> b!535329 m!514945))

(assert (=> b!535331 m!514941))

(assert (=> b!535331 m!514941))

(declare-fun m!514947 () Bool)

(assert (=> b!535331 m!514947))

(declare-fun m!514949 () Bool)

(assert (=> b!535333 m!514949))

(declare-fun m!514951 () Bool)

(assert (=> b!535334 m!514951))

(assert (=> b!535334 m!514941))

(declare-fun m!514953 () Bool)

(assert (=> b!535332 m!514953))

(declare-fun m!514955 () Bool)

(assert (=> b!535326 m!514955))

(assert (=> b!535326 m!514941))

(declare-fun m!514957 () Bool)

(assert (=> b!535327 m!514957))

(declare-fun m!514959 () Bool)

(assert (=> b!535328 m!514959))

(assert (=> b!535330 m!514941))

(assert (=> b!535330 m!514941))

(declare-fun m!514961 () Bool)

(assert (=> b!535330 m!514961))

(push 1)

(assert (not b!535328))

(assert (not b!535325))

(assert (not b!535333))

(assert (not b!535331))

(assert (not b!535330))

(assert (not start!48734))

(assert (not b!535332))

(assert (not b!535327))

(assert (not b!535329))

(check-sat)

(pop 1)

