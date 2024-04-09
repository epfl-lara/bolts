; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49358 () Bool)

(assert start!49358)

(declare-fun b!543459 () Bool)

(declare-fun res!338170 () Bool)

(declare-fun e!314263 () Bool)

(assert (=> b!543459 (=> (not res!338170) (not e!314263))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!543459 (= res!338170 (validKeyInArray!0 k!1998))))

(declare-fun b!543460 () Bool)

(declare-fun res!338168 () Bool)

(assert (=> b!543460 (=> (not res!338168) (not e!314263))))

(declare-datatypes ((array!34322 0))(
  ( (array!34323 (arr!16490 (Array (_ BitVec 32) (_ BitVec 64))) (size!16854 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34322)

(declare-fun arrayContainsKey!0 (array!34322 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!543460 (= res!338168 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!543461 () Bool)

(declare-fun res!338166 () Bool)

(assert (=> b!543461 (=> (not res!338166) (not e!314263))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!543461 (= res!338166 (and (= (size!16854 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16854 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16854 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!543462 () Bool)

(declare-fun res!338171 () Bool)

(declare-fun e!314264 () Bool)

(assert (=> b!543462 (=> (not res!338171) (not e!314264))))

(declare-datatypes ((List!10662 0))(
  ( (Nil!10659) (Cons!10658 (h!11613 (_ BitVec 64)) (t!16898 List!10662)) )
))
(declare-fun arrayNoDuplicates!0 (array!34322 (_ BitVec 32) List!10662) Bool)

(assert (=> b!543462 (= res!338171 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10659))))

(declare-fun b!543463 () Bool)

(declare-fun res!338163 () Bool)

(assert (=> b!543463 (=> (not res!338163) (not e!314264))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!543463 (= res!338163 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16854 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16854 a!3154)) (= (select (arr!16490 a!3154) resIndex!32) (select (arr!16490 a!3154) j!147))))))

(declare-fun b!543464 () Bool)

(declare-fun res!338165 () Bool)

(assert (=> b!543464 (=> (not res!338165) (not e!314264))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34322 (_ BitVec 32)) Bool)

(assert (=> b!543464 (= res!338165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!543465 () Bool)

(declare-fun e!314265 () Bool)

(assert (=> b!543465 (= e!314265 false)))

(declare-fun lt!248189 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543465 (= lt!248189 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!543466 () Bool)

(declare-fun res!338164 () Bool)

(assert (=> b!543466 (=> (not res!338164) (not e!314265))))

(declare-datatypes ((SeekEntryResult!4955 0))(
  ( (MissingZero!4955 (index!22044 (_ BitVec 32))) (Found!4955 (index!22045 (_ BitVec 32))) (Intermediate!4955 (undefined!5767 Bool) (index!22046 (_ BitVec 32)) (x!50973 (_ BitVec 32))) (Undefined!4955) (MissingVacant!4955 (index!22047 (_ BitVec 32))) )
))
(declare-fun lt!248188 () SeekEntryResult!4955)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34322 (_ BitVec 32)) SeekEntryResult!4955)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543466 (= res!338164 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16490 a!3154) j!147) mask!3216) (select (arr!16490 a!3154) j!147) a!3154 mask!3216) lt!248188))))

(declare-fun b!543468 () Bool)

(declare-fun res!338160 () Bool)

(assert (=> b!543468 (=> (not res!338160) (not e!314263))))

(assert (=> b!543468 (= res!338160 (validKeyInArray!0 (select (arr!16490 a!3154) j!147)))))

(declare-fun b!543469 () Bool)

(assert (=> b!543469 (= e!314263 e!314264)))

(declare-fun res!338162 () Bool)

(assert (=> b!543469 (=> (not res!338162) (not e!314264))))

(declare-fun lt!248187 () SeekEntryResult!4955)

(assert (=> b!543469 (= res!338162 (or (= lt!248187 (MissingZero!4955 i!1153)) (= lt!248187 (MissingVacant!4955 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34322 (_ BitVec 32)) SeekEntryResult!4955)

(assert (=> b!543469 (= lt!248187 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!543470 () Bool)

(declare-fun res!338167 () Bool)

(assert (=> b!543470 (=> (not res!338167) (not e!314265))))

(assert (=> b!543470 (= res!338167 (and (not (= (select (arr!16490 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16490 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16490 a!3154) index!1177) (select (arr!16490 a!3154) j!147)))))))

(declare-fun b!543467 () Bool)

(assert (=> b!543467 (= e!314264 e!314265)))

(declare-fun res!338161 () Bool)

(assert (=> b!543467 (=> (not res!338161) (not e!314265))))

(assert (=> b!543467 (= res!338161 (= lt!248188 (Intermediate!4955 false resIndex!32 resX!32)))))

(assert (=> b!543467 (= lt!248188 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16490 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!338169 () Bool)

(assert (=> start!49358 (=> (not res!338169) (not e!314263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49358 (= res!338169 (validMask!0 mask!3216))))

(assert (=> start!49358 e!314263))

(assert (=> start!49358 true))

(declare-fun array_inv!12264 (array!34322) Bool)

(assert (=> start!49358 (array_inv!12264 a!3154)))

(assert (= (and start!49358 res!338169) b!543461))

(assert (= (and b!543461 res!338166) b!543468))

(assert (= (and b!543468 res!338160) b!543459))

(assert (= (and b!543459 res!338170) b!543460))

(assert (= (and b!543460 res!338168) b!543469))

(assert (= (and b!543469 res!338162) b!543464))

(assert (= (and b!543464 res!338165) b!543462))

(assert (= (and b!543462 res!338171) b!543463))

(assert (= (and b!543463 res!338163) b!543467))

(assert (= (and b!543467 res!338161) b!543466))

(assert (= (and b!543466 res!338164) b!543470))

(assert (= (and b!543470 res!338167) b!543465))

(declare-fun m!521551 () Bool)

(assert (=> start!49358 m!521551))

(declare-fun m!521553 () Bool)

(assert (=> start!49358 m!521553))

(declare-fun m!521555 () Bool)

(assert (=> b!543459 m!521555))

(declare-fun m!521557 () Bool)

(assert (=> b!543470 m!521557))

(declare-fun m!521559 () Bool)

(assert (=> b!543470 m!521559))

(assert (=> b!543466 m!521559))

(assert (=> b!543466 m!521559))

(declare-fun m!521561 () Bool)

(assert (=> b!543466 m!521561))

(assert (=> b!543466 m!521561))

(assert (=> b!543466 m!521559))

(declare-fun m!521563 () Bool)

(assert (=> b!543466 m!521563))

(declare-fun m!521565 () Bool)

(assert (=> b!543465 m!521565))

(declare-fun m!521567 () Bool)

(assert (=> b!543460 m!521567))

(declare-fun m!521569 () Bool)

(assert (=> b!543469 m!521569))

(declare-fun m!521571 () Bool)

(assert (=> b!543462 m!521571))

(declare-fun m!521573 () Bool)

(assert (=> b!543464 m!521573))

(assert (=> b!543467 m!521559))

(assert (=> b!543467 m!521559))

(declare-fun m!521575 () Bool)

(assert (=> b!543467 m!521575))

(assert (=> b!543468 m!521559))

(assert (=> b!543468 m!521559))

(declare-fun m!521577 () Bool)

(assert (=> b!543468 m!521577))

(declare-fun m!521579 () Bool)

(assert (=> b!543463 m!521579))

(assert (=> b!543463 m!521559))

(push 1)

(assert (not b!543465))

(assert (not b!543466))

(assert (not start!49358))

(assert (not b!543460))

