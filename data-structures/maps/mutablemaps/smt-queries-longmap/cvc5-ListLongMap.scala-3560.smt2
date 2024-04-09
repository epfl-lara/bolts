; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48946 () Bool)

(assert start!48946)

(declare-fun b!539165 () Bool)

(declare-fun e!312537 () Bool)

(declare-fun e!312536 () Bool)

(assert (=> b!539165 (= e!312537 e!312536)))

(declare-fun res!334526 () Bool)

(assert (=> b!539165 (=> (not res!334526) (not e!312536))))

(declare-datatypes ((SeekEntryResult!4857 0))(
  ( (MissingZero!4857 (index!21652 (_ BitVec 32))) (Found!4857 (index!21653 (_ BitVec 32))) (Intermediate!4857 (undefined!5669 Bool) (index!21654 (_ BitVec 32)) (x!50595 (_ BitVec 32))) (Undefined!4857) (MissingVacant!4857 (index!21655 (_ BitVec 32))) )
))
(declare-fun lt!247084 () SeekEntryResult!4857)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539165 (= res!334526 (or (= lt!247084 (MissingZero!4857 i!1153)) (= lt!247084 (MissingVacant!4857 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((array!34114 0))(
  ( (array!34115 (arr!16392 (Array (_ BitVec 32) (_ BitVec 64))) (size!16756 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34114)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34114 (_ BitVec 32)) SeekEntryResult!4857)

(assert (=> b!539165 (= lt!247084 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!539166 () Bool)

(declare-fun res!334520 () Bool)

(assert (=> b!539166 (=> (not res!334520) (not e!312537))))

(declare-fun arrayContainsKey!0 (array!34114 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539166 (= res!334520 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!539167 () Bool)

(declare-fun res!334529 () Bool)

(assert (=> b!539167 (=> (not res!334529) (not e!312536))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34114 (_ BitVec 32)) Bool)

(assert (=> b!539167 (= res!334529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539168 () Bool)

(declare-fun res!334521 () Bool)

(assert (=> b!539168 (=> (not res!334521) (not e!312537))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539168 (= res!334521 (validKeyInArray!0 (select (arr!16392 a!3154) j!147)))))

(declare-fun b!539169 () Bool)

(declare-fun res!334519 () Bool)

(assert (=> b!539169 (=> (not res!334519) (not e!312536))))

(declare-datatypes ((List!10564 0))(
  ( (Nil!10561) (Cons!10560 (h!11503 (_ BitVec 64)) (t!16800 List!10564)) )
))
(declare-fun arrayNoDuplicates!0 (array!34114 (_ BitVec 32) List!10564) Bool)

(assert (=> b!539169 (= res!334519 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10561))))

(declare-fun b!539170 () Bool)

(declare-fun res!334528 () Bool)

(assert (=> b!539170 (=> (not res!334528) (not e!312537))))

(assert (=> b!539170 (= res!334528 (validKeyInArray!0 k!1998))))

(declare-fun b!539171 () Bool)

(declare-fun e!312535 () Bool)

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!539171 (= e!312535 (bvslt (bvsub #b01111111111111111111111111111110 x!1030) #b00000000000000000000000000000000))))

(declare-fun b!539172 () Bool)

(assert (=> b!539172 (= e!312536 e!312535)))

(declare-fun res!334523 () Bool)

(assert (=> b!539172 (=> (not res!334523) (not e!312535))))

(declare-fun lt!247085 () SeekEntryResult!4857)

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!539172 (= res!334523 (= lt!247085 (Intermediate!4857 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34114 (_ BitVec 32)) SeekEntryResult!4857)

(assert (=> b!539172 (= lt!247085 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16392 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!334522 () Bool)

(assert (=> start!48946 (=> (not res!334522) (not e!312537))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48946 (= res!334522 (validMask!0 mask!3216))))

(assert (=> start!48946 e!312537))

(assert (=> start!48946 true))

(declare-fun array_inv!12166 (array!34114) Bool)

(assert (=> start!48946 (array_inv!12166 a!3154)))

(declare-fun b!539164 () Bool)

(declare-fun res!334527 () Bool)

(assert (=> b!539164 (=> (not res!334527) (not e!312537))))

(assert (=> b!539164 (= res!334527 (and (= (size!16756 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16756 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16756 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!539173 () Bool)

(declare-fun res!334524 () Bool)

(assert (=> b!539173 (=> (not res!334524) (not e!312535))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539173 (= res!334524 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16392 a!3154) j!147) mask!3216) (select (arr!16392 a!3154) j!147) a!3154 mask!3216) lt!247085))))

(declare-fun b!539174 () Bool)

(declare-fun res!334525 () Bool)

(assert (=> b!539174 (=> (not res!334525) (not e!312536))))

(assert (=> b!539174 (= res!334525 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16756 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16756 a!3154)) (= (select (arr!16392 a!3154) resIndex!32) (select (arr!16392 a!3154) j!147))))))

(assert (= (and start!48946 res!334522) b!539164))

(assert (= (and b!539164 res!334527) b!539168))

(assert (= (and b!539168 res!334521) b!539170))

(assert (= (and b!539170 res!334528) b!539166))

(assert (= (and b!539166 res!334520) b!539165))

(assert (= (and b!539165 res!334526) b!539167))

(assert (= (and b!539167 res!334529) b!539169))

(assert (= (and b!539169 res!334519) b!539174))

(assert (= (and b!539174 res!334525) b!539172))

(assert (= (and b!539172 res!334523) b!539173))

(assert (= (and b!539173 res!334524) b!539171))

(declare-fun m!518239 () Bool)

(assert (=> b!539173 m!518239))

(assert (=> b!539173 m!518239))

(declare-fun m!518241 () Bool)

(assert (=> b!539173 m!518241))

(assert (=> b!539173 m!518241))

(assert (=> b!539173 m!518239))

(declare-fun m!518243 () Bool)

(assert (=> b!539173 m!518243))

(declare-fun m!518245 () Bool)

(assert (=> b!539165 m!518245))

(declare-fun m!518247 () Bool)

(assert (=> b!539170 m!518247))

(assert (=> b!539168 m!518239))

(assert (=> b!539168 m!518239))

(declare-fun m!518249 () Bool)

(assert (=> b!539168 m!518249))

(declare-fun m!518251 () Bool)

(assert (=> b!539169 m!518251))

(declare-fun m!518253 () Bool)

(assert (=> start!48946 m!518253))

(declare-fun m!518255 () Bool)

(assert (=> start!48946 m!518255))

(declare-fun m!518257 () Bool)

(assert (=> b!539174 m!518257))

(assert (=> b!539174 m!518239))

(declare-fun m!518259 () Bool)

(assert (=> b!539166 m!518259))

(declare-fun m!518261 () Bool)

(assert (=> b!539167 m!518261))

(assert (=> b!539172 m!518239))

(assert (=> b!539172 m!518239))

(declare-fun m!518263 () Bool)

(assert (=> b!539172 m!518263))

(push 1)

(assert (not b!539165))

(assert (not b!539170))

(assert (not b!539173))

(assert (not b!539172))

(assert (not b!539168))

(assert (not b!539166))

(assert (not b!539167))

(assert (not b!539169))

(assert (not start!48946))

(check-sat)

(pop 1)

(push 1)

(check-sat)

