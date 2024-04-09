; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86486 () Bool)

(assert start!86486)

(declare-fun b!1000808 () Bool)

(declare-fun res!670444 () Bool)

(declare-fun e!564035 () Bool)

(assert (=> b!1000808 (=> (not res!670444) (not e!564035))))

(declare-datatypes ((array!63239 0))(
  ( (array!63240 (arr!30441 (Array (_ BitVec 32) (_ BitVec 64))) (size!30944 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63239)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9373 0))(
  ( (MissingZero!9373 (index!39862 (_ BitVec 32))) (Found!9373 (index!39863 (_ BitVec 32))) (Intermediate!9373 (undefined!10185 Bool) (index!39864 (_ BitVec 32)) (x!87314 (_ BitVec 32))) (Undefined!9373) (MissingVacant!9373 (index!39865 (_ BitVec 32))) )
))
(declare-fun lt!442387 () SeekEntryResult!9373)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63239 (_ BitVec 32)) SeekEntryResult!9373)

(assert (=> b!1000808 (= res!670444 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30441 a!3219) j!170) a!3219 mask!3464) lt!442387))))

(declare-fun b!1000809 () Bool)

(declare-fun res!670451 () Bool)

(declare-fun e!564037 () Bool)

(assert (=> b!1000809 (=> (not res!670451) (not e!564037))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000809 (= res!670451 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30944 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30944 a!3219))))))

(declare-fun b!1000810 () Bool)

(declare-fun res!670442 () Bool)

(declare-fun e!564036 () Bool)

(assert (=> b!1000810 (=> (not res!670442) (not e!564036))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000810 (= res!670442 (validKeyInArray!0 (select (arr!30441 a!3219) j!170)))))

(declare-fun b!1000811 () Bool)

(declare-fun res!670453 () Bool)

(assert (=> b!1000811 (=> (not res!670453) (not e!564037))))

(declare-datatypes ((List!21243 0))(
  ( (Nil!21240) (Cons!21239 (h!22416 (_ BitVec 64)) (t!30252 List!21243)) )
))
(declare-fun arrayNoDuplicates!0 (array!63239 (_ BitVec 32) List!21243) Bool)

(assert (=> b!1000811 (= res!670453 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21240))))

(declare-fun b!1000812 () Bool)

(declare-fun res!670445 () Bool)

(assert (=> b!1000812 (=> (not res!670445) (not e!564037))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63239 (_ BitVec 32)) Bool)

(assert (=> b!1000812 (= res!670445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000813 () Bool)

(assert (=> b!1000813 (= e!564036 e!564037)))

(declare-fun res!670452 () Bool)

(assert (=> b!1000813 (=> (not res!670452) (not e!564037))))

(declare-fun lt!442384 () SeekEntryResult!9373)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1000813 (= res!670452 (or (= lt!442384 (MissingVacant!9373 i!1194)) (= lt!442384 (MissingZero!9373 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63239 (_ BitVec 32)) SeekEntryResult!9373)

(assert (=> b!1000813 (= lt!442384 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1000815 () Bool)

(declare-fun e!564038 () Bool)

(assert (=> b!1000815 (= e!564035 e!564038)))

(declare-fun res!670450 () Bool)

(assert (=> b!1000815 (=> (not res!670450) (not e!564038))))

(declare-fun lt!442385 () SeekEntryResult!9373)

(declare-fun lt!442388 () (_ BitVec 64))

(declare-fun lt!442389 () array!63239)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000815 (= res!670450 (not (= lt!442385 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442388 mask!3464) lt!442388 lt!442389 mask!3464))))))

(assert (=> b!1000815 (= lt!442388 (select (store (arr!30441 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1000815 (= lt!442389 (array!63240 (store (arr!30441 a!3219) i!1194 k!2224) (size!30944 a!3219)))))

(declare-fun b!1000816 () Bool)

(assert (=> b!1000816 (= e!564038 false)))

(declare-fun lt!442386 () SeekEntryResult!9373)

(assert (=> b!1000816 (= lt!442386 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442388 lt!442389 mask!3464))))

(declare-fun b!1000817 () Bool)

(declare-fun res!670446 () Bool)

(assert (=> b!1000817 (=> (not res!670446) (not e!564036))))

(declare-fun arrayContainsKey!0 (array!63239 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000817 (= res!670446 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000818 () Bool)

(assert (=> b!1000818 (= e!564037 e!564035)))

(declare-fun res!670443 () Bool)

(assert (=> b!1000818 (=> (not res!670443) (not e!564035))))

(assert (=> b!1000818 (= res!670443 (= lt!442385 lt!442387))))

(assert (=> b!1000818 (= lt!442387 (Intermediate!9373 false resIndex!38 resX!38))))

(assert (=> b!1000818 (= lt!442385 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30441 a!3219) j!170) mask!3464) (select (arr!30441 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1000819 () Bool)

(declare-fun res!670449 () Bool)

(assert (=> b!1000819 (=> (not res!670449) (not e!564036))))

(assert (=> b!1000819 (= res!670449 (and (= (size!30944 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30944 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30944 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000814 () Bool)

(declare-fun res!670447 () Bool)

(assert (=> b!1000814 (=> (not res!670447) (not e!564036))))

(assert (=> b!1000814 (= res!670447 (validKeyInArray!0 k!2224))))

(declare-fun res!670448 () Bool)

(assert (=> start!86486 (=> (not res!670448) (not e!564036))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86486 (= res!670448 (validMask!0 mask!3464))))

(assert (=> start!86486 e!564036))

(declare-fun array_inv!23431 (array!63239) Bool)

(assert (=> start!86486 (array_inv!23431 a!3219)))

(assert (=> start!86486 true))

(assert (= (and start!86486 res!670448) b!1000819))

(assert (= (and b!1000819 res!670449) b!1000810))

(assert (= (and b!1000810 res!670442) b!1000814))

(assert (= (and b!1000814 res!670447) b!1000817))

(assert (= (and b!1000817 res!670446) b!1000813))

(assert (= (and b!1000813 res!670452) b!1000812))

(assert (= (and b!1000812 res!670445) b!1000811))

(assert (= (and b!1000811 res!670453) b!1000809))

(assert (= (and b!1000809 res!670451) b!1000818))

(assert (= (and b!1000818 res!670443) b!1000808))

(assert (= (and b!1000808 res!670444) b!1000815))

(assert (= (and b!1000815 res!670450) b!1000816))

(declare-fun m!927041 () Bool)

(assert (=> b!1000818 m!927041))

(assert (=> b!1000818 m!927041))

(declare-fun m!927043 () Bool)

(assert (=> b!1000818 m!927043))

(assert (=> b!1000818 m!927043))

(assert (=> b!1000818 m!927041))

(declare-fun m!927045 () Bool)

(assert (=> b!1000818 m!927045))

(assert (=> b!1000808 m!927041))

(assert (=> b!1000808 m!927041))

(declare-fun m!927047 () Bool)

(assert (=> b!1000808 m!927047))

(declare-fun m!927049 () Bool)

(assert (=> b!1000811 m!927049))

(declare-fun m!927051 () Bool)

(assert (=> b!1000816 m!927051))

(declare-fun m!927053 () Bool)

(assert (=> b!1000814 m!927053))

(declare-fun m!927055 () Bool)

(assert (=> b!1000815 m!927055))

(assert (=> b!1000815 m!927055))

(declare-fun m!927057 () Bool)

(assert (=> b!1000815 m!927057))

(declare-fun m!927059 () Bool)

(assert (=> b!1000815 m!927059))

(declare-fun m!927061 () Bool)

(assert (=> b!1000815 m!927061))

(declare-fun m!927063 () Bool)

(assert (=> b!1000813 m!927063))

(declare-fun m!927065 () Bool)

(assert (=> b!1000817 m!927065))

(assert (=> b!1000810 m!927041))

(assert (=> b!1000810 m!927041))

(declare-fun m!927067 () Bool)

(assert (=> b!1000810 m!927067))

(declare-fun m!927069 () Bool)

(assert (=> start!86486 m!927069))

(declare-fun m!927071 () Bool)

(assert (=> start!86486 m!927071))

(declare-fun m!927073 () Bool)

(assert (=> b!1000812 m!927073))

(push 1)

(assert (not b!1000812))

(assert (not b!1000813))

