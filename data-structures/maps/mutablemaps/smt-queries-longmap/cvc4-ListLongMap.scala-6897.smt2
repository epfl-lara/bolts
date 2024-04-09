; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86780 () Bool)

(assert start!86780)

(declare-fun res!674759 () Bool)

(declare-fun e!566197 () Bool)

(assert (=> start!86780 (=> (not res!674759) (not e!566197))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86780 (= res!674759 (validMask!0 mask!3464))))

(assert (=> start!86780 e!566197))

(declare-datatypes ((array!63431 0))(
  ( (array!63432 (arr!30534 (Array (_ BitVec 32) (_ BitVec 64))) (size!31037 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63431)

(declare-fun array_inv!23524 (array!63431) Bool)

(assert (=> start!86780 (array_inv!23524 a!3219)))

(assert (=> start!86780 true))

(declare-fun b!1005508 () Bool)

(declare-fun res!674756 () Bool)

(declare-fun e!566196 () Bool)

(assert (=> b!1005508 (=> (not res!674756) (not e!566196))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9466 0))(
  ( (MissingZero!9466 (index!40234 (_ BitVec 32))) (Found!9466 (index!40235 (_ BitVec 32))) (Intermediate!9466 (undefined!10278 Bool) (index!40236 (_ BitVec 32)) (x!87667 (_ BitVec 32))) (Undefined!9466) (MissingVacant!9466 (index!40237 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63431 (_ BitVec 32)) SeekEntryResult!9466)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005508 (= res!674756 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30534 a!3219) j!170) mask!3464) (select (arr!30534 a!3219) j!170) a!3219 mask!3464) (Intermediate!9466 false resIndex!38 resX!38)))))

(declare-fun b!1005509 () Bool)

(assert (=> b!1005509 (= e!566196 false)))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!444542 () SeekEntryResult!9466)

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1005509 (= lt!444542 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30534 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1005510 () Bool)

(declare-fun res!674761 () Bool)

(assert (=> b!1005510 (=> (not res!674761) (not e!566197))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005510 (= res!674761 (and (= (size!31037 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31037 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31037 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1005511 () Bool)

(declare-fun res!674752 () Bool)

(assert (=> b!1005511 (=> (not res!674752) (not e!566197))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63431 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005511 (= res!674752 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1005512 () Bool)

(declare-fun res!674757 () Bool)

(assert (=> b!1005512 (=> (not res!674757) (not e!566196))))

(declare-datatypes ((List!21336 0))(
  ( (Nil!21333) (Cons!21332 (h!22515 (_ BitVec 64)) (t!30345 List!21336)) )
))
(declare-fun arrayNoDuplicates!0 (array!63431 (_ BitVec 32) List!21336) Bool)

(assert (=> b!1005512 (= res!674757 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21333))))

(declare-fun b!1005513 () Bool)

(declare-fun res!674755 () Bool)

(assert (=> b!1005513 (=> (not res!674755) (not e!566196))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63431 (_ BitVec 32)) Bool)

(assert (=> b!1005513 (= res!674755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1005514 () Bool)

(assert (=> b!1005514 (= e!566197 e!566196)))

(declare-fun res!674753 () Bool)

(assert (=> b!1005514 (=> (not res!674753) (not e!566196))))

(declare-fun lt!444543 () SeekEntryResult!9466)

(assert (=> b!1005514 (= res!674753 (or (= lt!444543 (MissingVacant!9466 i!1194)) (= lt!444543 (MissingZero!9466 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63431 (_ BitVec 32)) SeekEntryResult!9466)

(assert (=> b!1005514 (= lt!444543 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1005515 () Bool)

(declare-fun res!674758 () Bool)

(assert (=> b!1005515 (=> (not res!674758) (not e!566197))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005515 (= res!674758 (validKeyInArray!0 k!2224))))

(declare-fun b!1005516 () Bool)

(declare-fun res!674760 () Bool)

(assert (=> b!1005516 (=> (not res!674760) (not e!566196))))

(assert (=> b!1005516 (= res!674760 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31037 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31037 a!3219))))))

(declare-fun b!1005517 () Bool)

(declare-fun res!674754 () Bool)

(assert (=> b!1005517 (=> (not res!674754) (not e!566197))))

(assert (=> b!1005517 (= res!674754 (validKeyInArray!0 (select (arr!30534 a!3219) j!170)))))

(assert (= (and start!86780 res!674759) b!1005510))

(assert (= (and b!1005510 res!674761) b!1005517))

(assert (= (and b!1005517 res!674754) b!1005515))

(assert (= (and b!1005515 res!674758) b!1005511))

(assert (= (and b!1005511 res!674752) b!1005514))

(assert (= (and b!1005514 res!674753) b!1005513))

(assert (= (and b!1005513 res!674755) b!1005512))

(assert (= (and b!1005512 res!674757) b!1005516))

(assert (= (and b!1005516 res!674760) b!1005508))

(assert (= (and b!1005508 res!674756) b!1005509))

(declare-fun m!930825 () Bool)

(assert (=> b!1005514 m!930825))

(declare-fun m!930827 () Bool)

(assert (=> b!1005513 m!930827))

(declare-fun m!930829 () Bool)

(assert (=> b!1005515 m!930829))

(declare-fun m!930831 () Bool)

(assert (=> b!1005517 m!930831))

(assert (=> b!1005517 m!930831))

(declare-fun m!930833 () Bool)

(assert (=> b!1005517 m!930833))

(declare-fun m!930835 () Bool)

(assert (=> b!1005511 m!930835))

(assert (=> b!1005509 m!930831))

(assert (=> b!1005509 m!930831))

(declare-fun m!930837 () Bool)

(assert (=> b!1005509 m!930837))

(assert (=> b!1005508 m!930831))

(assert (=> b!1005508 m!930831))

(declare-fun m!930839 () Bool)

(assert (=> b!1005508 m!930839))

(assert (=> b!1005508 m!930839))

(assert (=> b!1005508 m!930831))

(declare-fun m!930841 () Bool)

(assert (=> b!1005508 m!930841))

(declare-fun m!930843 () Bool)

(assert (=> start!86780 m!930843))

(declare-fun m!930845 () Bool)

(assert (=> start!86780 m!930845))

(declare-fun m!930847 () Bool)

(assert (=> b!1005512 m!930847))

(push 1)

(assert (not b!1005514))

(assert (not b!1005513))

(assert (not b!1005508))

(assert (not start!86780))

