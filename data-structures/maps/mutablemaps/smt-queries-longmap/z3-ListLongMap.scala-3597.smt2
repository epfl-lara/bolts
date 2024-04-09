; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49530 () Bool)

(assert start!49530)

(declare-fun b!544695 () Bool)

(declare-fun res!338957 () Bool)

(declare-fun e!314902 () Bool)

(assert (=> b!544695 (=> (not res!338957) (not e!314902))))

(declare-datatypes ((array!34356 0))(
  ( (array!34357 (arr!16504 (Array (_ BitVec 32) (_ BitVec 64))) (size!16868 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34356)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34356 (_ BitVec 32)) Bool)

(assert (=> b!544695 (= res!338957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!338952 () Bool)

(declare-fun e!314899 () Bool)

(assert (=> start!49530 (=> (not res!338952) (not e!314899))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49530 (= res!338952 (validMask!0 mask!3216))))

(assert (=> start!49530 e!314899))

(assert (=> start!49530 true))

(declare-fun array_inv!12278 (array!34356) Bool)

(assert (=> start!49530 (array_inv!12278 a!3154)))

(declare-fun b!544696 () Bool)

(declare-fun res!338958 () Bool)

(assert (=> b!544696 (=> (not res!338958) (not e!314899))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!544696 (= res!338958 (validKeyInArray!0 k0!1998))))

(declare-fun b!544697 () Bool)

(declare-fun res!338954 () Bool)

(declare-fun e!314900 () Bool)

(assert (=> b!544697 (=> (not res!338954) (not e!314900))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!544697 (= res!338954 (and (not (= (select (arr!16504 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16504 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16504 a!3154) index!1177) (select (arr!16504 a!3154) j!147)))))))

(declare-fun b!544698 () Bool)

(declare-fun res!338950 () Bool)

(assert (=> b!544698 (=> (not res!338950) (not e!314902))))

(declare-datatypes ((List!10676 0))(
  ( (Nil!10673) (Cons!10672 (h!11633 (_ BitVec 64)) (t!16912 List!10676)) )
))
(declare-fun arrayNoDuplicates!0 (array!34356 (_ BitVec 32) List!10676) Bool)

(assert (=> b!544698 (= res!338950 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10673))))

(declare-fun b!544699 () Bool)

(assert (=> b!544699 (= e!314899 e!314902)))

(declare-fun res!338951 () Bool)

(assert (=> b!544699 (=> (not res!338951) (not e!314902))))

(declare-datatypes ((SeekEntryResult!4969 0))(
  ( (MissingZero!4969 (index!22100 (_ BitVec 32))) (Found!4969 (index!22101 (_ BitVec 32))) (Intermediate!4969 (undefined!5781 Bool) (index!22102 (_ BitVec 32)) (x!51051 (_ BitVec 32))) (Undefined!4969) (MissingVacant!4969 (index!22103 (_ BitVec 32))) )
))
(declare-fun lt!248606 () SeekEntryResult!4969)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!544699 (= res!338951 (or (= lt!248606 (MissingZero!4969 i!1153)) (= lt!248606 (MissingVacant!4969 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34356 (_ BitVec 32)) SeekEntryResult!4969)

(assert (=> b!544699 (= lt!248606 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!544700 () Bool)

(declare-fun res!338949 () Bool)

(assert (=> b!544700 (=> (not res!338949) (not e!314899))))

(assert (=> b!544700 (= res!338949 (and (= (size!16868 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16868 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16868 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!544701 () Bool)

(declare-fun res!338953 () Bool)

(assert (=> b!544701 (=> (not res!338953) (not e!314899))))

(assert (=> b!544701 (= res!338953 (validKeyInArray!0 (select (arr!16504 a!3154) j!147)))))

(declare-fun b!544702 () Bool)

(assert (=> b!544702 (= e!314900 false)))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!248604 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544702 (= lt!248604 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!544703 () Bool)

(assert (=> b!544703 (= e!314902 e!314900)))

(declare-fun res!338956 () Bool)

(assert (=> b!544703 (=> (not res!338956) (not e!314900))))

(declare-fun lt!248605 () SeekEntryResult!4969)

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!544703 (= res!338956 (= lt!248605 (Intermediate!4969 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34356 (_ BitVec 32)) SeekEntryResult!4969)

(assert (=> b!544703 (= lt!248605 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16504 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544704 () Bool)

(declare-fun res!338959 () Bool)

(assert (=> b!544704 (=> (not res!338959) (not e!314899))))

(declare-fun arrayContainsKey!0 (array!34356 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!544704 (= res!338959 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!544705 () Bool)

(declare-fun res!338955 () Bool)

(assert (=> b!544705 (=> (not res!338955) (not e!314900))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544705 (= res!338955 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16504 a!3154) j!147) mask!3216) (select (arr!16504 a!3154) j!147) a!3154 mask!3216) lt!248605))))

(declare-fun b!544706 () Bool)

(declare-fun res!338960 () Bool)

(assert (=> b!544706 (=> (not res!338960) (not e!314902))))

(assert (=> b!544706 (= res!338960 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16868 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16868 a!3154)) (= (select (arr!16504 a!3154) resIndex!32) (select (arr!16504 a!3154) j!147))))))

(assert (= (and start!49530 res!338952) b!544700))

(assert (= (and b!544700 res!338949) b!544701))

(assert (= (and b!544701 res!338953) b!544696))

(assert (= (and b!544696 res!338958) b!544704))

(assert (= (and b!544704 res!338959) b!544699))

(assert (= (and b!544699 res!338951) b!544695))

(assert (= (and b!544695 res!338957) b!544698))

(assert (= (and b!544698 res!338950) b!544706))

(assert (= (and b!544706 res!338960) b!544703))

(assert (= (and b!544703 res!338956) b!544705))

(assert (= (and b!544705 res!338955) b!544697))

(assert (= (and b!544697 res!338954) b!544702))

(declare-fun m!522475 () Bool)

(assert (=> b!544704 m!522475))

(declare-fun m!522477 () Bool)

(assert (=> b!544696 m!522477))

(declare-fun m!522479 () Bool)

(assert (=> b!544705 m!522479))

(assert (=> b!544705 m!522479))

(declare-fun m!522481 () Bool)

(assert (=> b!544705 m!522481))

(assert (=> b!544705 m!522481))

(assert (=> b!544705 m!522479))

(declare-fun m!522483 () Bool)

(assert (=> b!544705 m!522483))

(assert (=> b!544701 m!522479))

(assert (=> b!544701 m!522479))

(declare-fun m!522485 () Bool)

(assert (=> b!544701 m!522485))

(assert (=> b!544703 m!522479))

(assert (=> b!544703 m!522479))

(declare-fun m!522487 () Bool)

(assert (=> b!544703 m!522487))

(declare-fun m!522489 () Bool)

(assert (=> b!544699 m!522489))

(declare-fun m!522491 () Bool)

(assert (=> b!544706 m!522491))

(assert (=> b!544706 m!522479))

(declare-fun m!522493 () Bool)

(assert (=> b!544702 m!522493))

(declare-fun m!522495 () Bool)

(assert (=> b!544695 m!522495))

(declare-fun m!522497 () Bool)

(assert (=> b!544697 m!522497))

(assert (=> b!544697 m!522479))

(declare-fun m!522499 () Bool)

(assert (=> start!49530 m!522499))

(declare-fun m!522501 () Bool)

(assert (=> start!49530 m!522501))

(declare-fun m!522503 () Bool)

(assert (=> b!544698 m!522503))

(check-sat (not start!49530) (not b!544702) (not b!544699) (not b!544703) (not b!544698) (not b!544704) (not b!544705) (not b!544701) (not b!544696) (not b!544695))
(check-sat)
