; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48832 () Bool)

(assert start!48832)

(declare-fun b!537197 () Bool)

(declare-fun res!332553 () Bool)

(declare-fun e!311674 () Bool)

(assert (=> b!537197 (=> (not res!332553) (not e!311674))))

(declare-datatypes ((array!34000 0))(
  ( (array!34001 (arr!16335 (Array (_ BitVec 32) (_ BitVec 64))) (size!16699 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34000)

(declare-datatypes ((List!10507 0))(
  ( (Nil!10504) (Cons!10503 (h!11446 (_ BitVec 64)) (t!16743 List!10507)) )
))
(declare-fun arrayNoDuplicates!0 (array!34000 (_ BitVec 32) List!10507) Bool)

(assert (=> b!537197 (= res!332553 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10504))))

(declare-fun b!537198 () Bool)

(declare-fun e!311676 () Bool)

(assert (=> b!537198 (= e!311674 e!311676)))

(declare-fun res!332555 () Bool)

(assert (=> b!537198 (=> (not res!332555) (not e!311676))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4800 0))(
  ( (MissingZero!4800 (index!21424 (_ BitVec 32))) (Found!4800 (index!21425 (_ BitVec 32))) (Intermediate!4800 (undefined!5612 Bool) (index!21426 (_ BitVec 32)) (x!50386 (_ BitVec 32))) (Undefined!4800) (MissingVacant!4800 (index!21427 (_ BitVec 32))) )
))
(declare-fun lt!246350 () SeekEntryResult!4800)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537198 (= res!332555 (= lt!246350 (Intermediate!4800 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34000 (_ BitVec 32)) SeekEntryResult!4800)

(assert (=> b!537198 (= lt!246350 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16335 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537199 () Bool)

(declare-fun e!311673 () Bool)

(assert (=> b!537199 (= e!311673 e!311674)))

(declare-fun res!332562 () Bool)

(assert (=> b!537199 (=> (not res!332562) (not e!311674))))

(declare-fun lt!246351 () SeekEntryResult!4800)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537199 (= res!332562 (or (= lt!246351 (MissingZero!4800 i!1153)) (= lt!246351 (MissingVacant!4800 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34000 (_ BitVec 32)) SeekEntryResult!4800)

(assert (=> b!537199 (= lt!246351 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!537200 () Bool)

(declare-fun res!332560 () Bool)

(assert (=> b!537200 (=> (not res!332560) (not e!311674))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34000 (_ BitVec 32)) Bool)

(assert (=> b!537200 (= res!332560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537201 () Bool)

(declare-fun res!332556 () Bool)

(assert (=> b!537201 (=> (not res!332556) (not e!311673))))

(declare-fun arrayContainsKey!0 (array!34000 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537201 (= res!332556 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537203 () Bool)

(declare-fun res!332552 () Bool)

(assert (=> b!537203 (=> (not res!332552) (not e!311673))))

(assert (=> b!537203 (= res!332552 (and (= (size!16699 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16699 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16699 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!537204 () Bool)

(declare-fun res!332558 () Bool)

(assert (=> b!537204 (=> (not res!332558) (not e!311676))))

(assert (=> b!537204 (= res!332558 (and (not (= (select (arr!16335 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16335 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16335 a!3154) index!1177) (select (arr!16335 a!3154) j!147)))))))

(declare-fun b!537205 () Bool)

(declare-fun res!332559 () Bool)

(assert (=> b!537205 (=> (not res!332559) (not e!311673))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537205 (= res!332559 (validKeyInArray!0 k!1998))))

(declare-fun b!537206 () Bool)

(declare-fun e!311677 () Bool)

(assert (=> b!537206 (= e!311677 false)))

(declare-fun lt!246353 () SeekEntryResult!4800)

(declare-fun lt!246352 () (_ BitVec 32))

(assert (=> b!537206 (= lt!246353 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246352 (select (arr!16335 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537207 () Bool)

(declare-fun res!332554 () Bool)

(assert (=> b!537207 (=> (not res!332554) (not e!311674))))

(assert (=> b!537207 (= res!332554 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16699 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16699 a!3154)) (= (select (arr!16335 a!3154) resIndex!32) (select (arr!16335 a!3154) j!147))))))

(declare-fun b!537202 () Bool)

(declare-fun res!332564 () Bool)

(assert (=> b!537202 (=> (not res!332564) (not e!311676))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537202 (= res!332564 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16335 a!3154) j!147) mask!3216) (select (arr!16335 a!3154) j!147) a!3154 mask!3216) lt!246350))))

(declare-fun res!332563 () Bool)

(assert (=> start!48832 (=> (not res!332563) (not e!311673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48832 (= res!332563 (validMask!0 mask!3216))))

(assert (=> start!48832 e!311673))

(assert (=> start!48832 true))

(declare-fun array_inv!12109 (array!34000) Bool)

(assert (=> start!48832 (array_inv!12109 a!3154)))

(declare-fun b!537208 () Bool)

(assert (=> b!537208 (= e!311676 e!311677)))

(declare-fun res!332561 () Bool)

(assert (=> b!537208 (=> (not res!332561) (not e!311677))))

(assert (=> b!537208 (= res!332561 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246352 #b00000000000000000000000000000000) (bvslt lt!246352 (size!16699 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537208 (= lt!246352 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!537209 () Bool)

(declare-fun res!332557 () Bool)

(assert (=> b!537209 (=> (not res!332557) (not e!311673))))

(assert (=> b!537209 (= res!332557 (validKeyInArray!0 (select (arr!16335 a!3154) j!147)))))

(assert (= (and start!48832 res!332563) b!537203))

(assert (= (and b!537203 res!332552) b!537209))

(assert (= (and b!537209 res!332557) b!537205))

(assert (= (and b!537205 res!332559) b!537201))

(assert (= (and b!537201 res!332556) b!537199))

(assert (= (and b!537199 res!332562) b!537200))

(assert (= (and b!537200 res!332560) b!537197))

(assert (= (and b!537197 res!332553) b!537207))

(assert (= (and b!537207 res!332554) b!537198))

(assert (= (and b!537198 res!332555) b!537202))

(assert (= (and b!537202 res!332564) b!537204))

(assert (= (and b!537204 res!332558) b!537208))

(assert (= (and b!537208 res!332561) b!537206))

(declare-fun m!516475 () Bool)

(assert (=> b!537209 m!516475))

(assert (=> b!537209 m!516475))

(declare-fun m!516477 () Bool)

(assert (=> b!537209 m!516477))

(assert (=> b!537198 m!516475))

(assert (=> b!537198 m!516475))

(declare-fun m!516479 () Bool)

(assert (=> b!537198 m!516479))

(assert (=> b!537206 m!516475))

(assert (=> b!537206 m!516475))

(declare-fun m!516481 () Bool)

(assert (=> b!537206 m!516481))

(declare-fun m!516483 () Bool)

(assert (=> b!537201 m!516483))

(declare-fun m!516485 () Bool)

(assert (=> start!48832 m!516485))

(declare-fun m!516487 () Bool)

(assert (=> start!48832 m!516487))

(declare-fun m!516489 () Bool)

(assert (=> b!537204 m!516489))

(assert (=> b!537204 m!516475))

(assert (=> b!537202 m!516475))

(assert (=> b!537202 m!516475))

(declare-fun m!516491 () Bool)

(assert (=> b!537202 m!516491))

(assert (=> b!537202 m!516491))

(assert (=> b!537202 m!516475))

(declare-fun m!516493 () Bool)

(assert (=> b!537202 m!516493))

(declare-fun m!516495 () Bool)

(assert (=> b!537199 m!516495))

(declare-fun m!516497 () Bool)

(assert (=> b!537197 m!516497))

(declare-fun m!516499 () Bool)

(assert (=> b!537205 m!516499))

(declare-fun m!516501 () Bool)

(assert (=> b!537200 m!516501))

(declare-fun m!516503 () Bool)

(assert (=> b!537208 m!516503))

(declare-fun m!516505 () Bool)

(assert (=> b!537207 m!516505))

(assert (=> b!537207 m!516475))

(push 1)

