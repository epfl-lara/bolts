; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47010 () Bool)

(assert start!47010)

(declare-fun b!518076 () Bool)

(declare-fun e!302292 () Bool)

(declare-fun e!302291 () Bool)

(assert (=> b!518076 (= e!302292 e!302291)))

(declare-fun res!317244 () Bool)

(assert (=> b!518076 (=> res!317244 e!302291)))

(declare-datatypes ((array!33111 0))(
  ( (array!33112 (arr!15916 (Array (_ BitVec 32) (_ BitVec 64))) (size!16280 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33111)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4390 0))(
  ( (MissingZero!4390 (index!19748 (_ BitVec 32))) (Found!4390 (index!19749 (_ BitVec 32))) (Intermediate!4390 (undefined!5202 Bool) (index!19750 (_ BitVec 32)) (x!48742 (_ BitVec 32))) (Undefined!4390) (MissingVacant!4390 (index!19751 (_ BitVec 32))) )
))
(declare-fun lt!237220 () SeekEntryResult!4390)

(assert (=> b!518076 (= res!317244 (not (= (select (arr!15916 a!3235) (index!19750 lt!237220)) (select (arr!15916 a!3235) j!176))))))

(assert (=> b!518076 (and (bvslt (x!48742 lt!237220) #b01111111111111111111111111111110) (or (= (select (arr!15916 a!3235) (index!19750 lt!237220)) (select (arr!15916 a!3235) j!176)) (= (select (arr!15916 a!3235) (index!19750 lt!237220)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15916 a!3235) (index!19750 lt!237220)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518077 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!302296 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33111 (_ BitVec 32)) SeekEntryResult!4390)

(assert (=> b!518077 (= e!302296 (= (seekEntryOrOpen!0 (select (arr!15916 a!3235) j!176) a!3235 mask!3524) (Found!4390 j!176)))))

(declare-fun b!518078 () Bool)

(declare-fun res!317242 () Bool)

(declare-fun e!302294 () Bool)

(assert (=> b!518078 (=> (not res!317242) (not e!302294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33111 (_ BitVec 32)) Bool)

(assert (=> b!518078 (= res!317242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!518079 () Bool)

(declare-fun res!317243 () Bool)

(declare-fun e!302295 () Bool)

(assert (=> b!518079 (=> (not res!317243) (not e!302295))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!518079 (= res!317243 (validKeyInArray!0 (select (arr!15916 a!3235) j!176)))))

(declare-fun b!518080 () Bool)

(declare-fun res!317245 () Bool)

(assert (=> b!518080 (=> res!317245 e!302292)))

(get-info :version)

(assert (=> b!518080 (= res!317245 (or (undefined!5202 lt!237220) (not ((_ is Intermediate!4390) lt!237220))))))

(declare-fun b!518081 () Bool)

(declare-fun res!317248 () Bool)

(assert (=> b!518081 (=> (not res!317248) (not e!302295))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!518081 (= res!317248 (and (= (size!16280 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16280 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16280 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!518082 () Bool)

(assert (=> b!518082 (= e!302291 false)))

(declare-fun lt!237214 () (_ BitVec 64))

(declare-fun lt!237216 () (_ BitVec 32))

(declare-fun lt!237217 () array!33111)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33111 (_ BitVec 32)) SeekEntryResult!4390)

(assert (=> b!518082 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237216 lt!237214 lt!237217 mask!3524) (Intermediate!4390 false (index!19750 lt!237220) (x!48742 lt!237220)))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-datatypes ((Unit!16030 0))(
  ( (Unit!16031) )
))
(declare-fun lt!237218 () Unit!16030)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33111 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16030)

(assert (=> b!518082 (= lt!237218 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!237216 #b00000000000000000000000000000000 (index!19750 lt!237220) (x!48742 lt!237220) mask!3524))))

(declare-fun b!518084 () Bool)

(declare-fun res!317247 () Bool)

(assert (=> b!518084 (=> (not res!317247) (not e!302294))))

(declare-datatypes ((List!10127 0))(
  ( (Nil!10124) (Cons!10123 (h!11030 (_ BitVec 64)) (t!16363 List!10127)) )
))
(declare-fun arrayNoDuplicates!0 (array!33111 (_ BitVec 32) List!10127) Bool)

(assert (=> b!518084 (= res!317247 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10124))))

(declare-fun b!518085 () Bool)

(declare-fun res!317246 () Bool)

(assert (=> b!518085 (=> (not res!317246) (not e!302295))))

(assert (=> b!518085 (= res!317246 (validKeyInArray!0 k0!2280))))

(declare-fun b!518086 () Bool)

(assert (=> b!518086 (= e!302294 (not e!302292))))

(declare-fun res!317252 () Bool)

(assert (=> b!518086 (=> res!317252 e!302292)))

(declare-fun lt!237215 () (_ BitVec 32))

(assert (=> b!518086 (= res!317252 (= lt!237220 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237215 lt!237214 lt!237217 mask!3524)))))

(assert (=> b!518086 (= lt!237220 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237216 (select (arr!15916 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!518086 (= lt!237215 (toIndex!0 lt!237214 mask!3524))))

(assert (=> b!518086 (= lt!237214 (select (store (arr!15916 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!518086 (= lt!237216 (toIndex!0 (select (arr!15916 a!3235) j!176) mask!3524))))

(assert (=> b!518086 (= lt!237217 (array!33112 (store (arr!15916 a!3235) i!1204 k0!2280) (size!16280 a!3235)))))

(assert (=> b!518086 e!302296))

(declare-fun res!317250 () Bool)

(assert (=> b!518086 (=> (not res!317250) (not e!302296))))

(assert (=> b!518086 (= res!317250 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!237221 () Unit!16030)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33111 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16030)

(assert (=> b!518086 (= lt!237221 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!518087 () Bool)

(assert (=> b!518087 (= e!302295 e!302294)))

(declare-fun res!317249 () Bool)

(assert (=> b!518087 (=> (not res!317249) (not e!302294))))

(declare-fun lt!237219 () SeekEntryResult!4390)

(assert (=> b!518087 (= res!317249 (or (= lt!237219 (MissingZero!4390 i!1204)) (= lt!237219 (MissingVacant!4390 i!1204))))))

(assert (=> b!518087 (= lt!237219 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!518083 () Bool)

(declare-fun res!317251 () Bool)

(assert (=> b!518083 (=> (not res!317251) (not e!302295))))

(declare-fun arrayContainsKey!0 (array!33111 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!518083 (= res!317251 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!317241 () Bool)

(assert (=> start!47010 (=> (not res!317241) (not e!302295))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47010 (= res!317241 (validMask!0 mask!3524))))

(assert (=> start!47010 e!302295))

(assert (=> start!47010 true))

(declare-fun array_inv!11690 (array!33111) Bool)

(assert (=> start!47010 (array_inv!11690 a!3235)))

(assert (= (and start!47010 res!317241) b!518081))

(assert (= (and b!518081 res!317248) b!518079))

(assert (= (and b!518079 res!317243) b!518085))

(assert (= (and b!518085 res!317246) b!518083))

(assert (= (and b!518083 res!317251) b!518087))

(assert (= (and b!518087 res!317249) b!518078))

(assert (= (and b!518078 res!317242) b!518084))

(assert (= (and b!518084 res!317247) b!518086))

(assert (= (and b!518086 res!317250) b!518077))

(assert (= (and b!518086 (not res!317252)) b!518080))

(assert (= (and b!518080 (not res!317245)) b!518076))

(assert (= (and b!518076 (not res!317244)) b!518082))

(declare-fun m!499483 () Bool)

(assert (=> b!518083 m!499483))

(declare-fun m!499485 () Bool)

(assert (=> start!47010 m!499485))

(declare-fun m!499487 () Bool)

(assert (=> start!47010 m!499487))

(declare-fun m!499489 () Bool)

(assert (=> b!518077 m!499489))

(assert (=> b!518077 m!499489))

(declare-fun m!499491 () Bool)

(assert (=> b!518077 m!499491))

(declare-fun m!499493 () Bool)

(assert (=> b!518082 m!499493))

(declare-fun m!499495 () Bool)

(assert (=> b!518082 m!499495))

(declare-fun m!499497 () Bool)

(assert (=> b!518087 m!499497))

(declare-fun m!499499 () Bool)

(assert (=> b!518078 m!499499))

(declare-fun m!499501 () Bool)

(assert (=> b!518085 m!499501))

(assert (=> b!518079 m!499489))

(assert (=> b!518079 m!499489))

(declare-fun m!499503 () Bool)

(assert (=> b!518079 m!499503))

(declare-fun m!499505 () Bool)

(assert (=> b!518086 m!499505))

(declare-fun m!499507 () Bool)

(assert (=> b!518086 m!499507))

(declare-fun m!499509 () Bool)

(assert (=> b!518086 m!499509))

(declare-fun m!499511 () Bool)

(assert (=> b!518086 m!499511))

(assert (=> b!518086 m!499489))

(declare-fun m!499513 () Bool)

(assert (=> b!518086 m!499513))

(assert (=> b!518086 m!499489))

(declare-fun m!499515 () Bool)

(assert (=> b!518086 m!499515))

(declare-fun m!499517 () Bool)

(assert (=> b!518086 m!499517))

(assert (=> b!518086 m!499489))

(declare-fun m!499519 () Bool)

(assert (=> b!518086 m!499519))

(declare-fun m!499521 () Bool)

(assert (=> b!518076 m!499521))

(assert (=> b!518076 m!499489))

(declare-fun m!499523 () Bool)

(assert (=> b!518084 m!499523))

(check-sat (not b!518079) (not b!518077) (not b!518084) (not start!47010) (not b!518085) (not b!518078) (not b!518087) (not b!518082) (not b!518086) (not b!518083))
(check-sat)
