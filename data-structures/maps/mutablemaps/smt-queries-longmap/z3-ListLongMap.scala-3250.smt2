; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45384 () Bool)

(assert start!45384)

(declare-fun b!498183 () Bool)

(declare-fun res!300438 () Bool)

(declare-fun e!291997 () Bool)

(assert (=> b!498183 (=> (not res!300438) (not e!291997))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498183 (= res!300438 (validKeyInArray!0 k0!2280))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32169 0))(
  ( (array!32170 (arr!15463 (Array (_ BitVec 32) (_ BitVec 64))) (size!15827 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32169)

(declare-fun b!498184 () Bool)

(declare-fun e!291998 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3937 0))(
  ( (MissingZero!3937 (index!17930 (_ BitVec 32))) (Found!3937 (index!17931 (_ BitVec 32))) (Intermediate!3937 (undefined!4749 Bool) (index!17932 (_ BitVec 32)) (x!47009 (_ BitVec 32))) (Undefined!3937) (MissingVacant!3937 (index!17933 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32169 (_ BitVec 32)) SeekEntryResult!3937)

(assert (=> b!498184 (= e!291998 (= (seekEntryOrOpen!0 (select (arr!15463 a!3235) j!176) a!3235 mask!3524) (Found!3937 j!176)))))

(declare-fun b!498185 () Bool)

(declare-fun e!291999 () Bool)

(assert (=> b!498185 (= e!291999 true)))

(declare-fun lt!225702 () (_ BitVec 64))

(declare-fun lt!225703 () SeekEntryResult!3937)

(declare-fun lt!225708 () (_ BitVec 32))

(declare-fun lt!225705 () array!32169)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32169 (_ BitVec 32)) SeekEntryResult!3937)

(assert (=> b!498185 (= lt!225703 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225708 lt!225702 lt!225705 mask!3524))))

(declare-fun b!498186 () Bool)

(declare-fun e!291996 () Bool)

(assert (=> b!498186 (= e!291997 e!291996)))

(declare-fun res!300446 () Bool)

(assert (=> b!498186 (=> (not res!300446) (not e!291996))))

(declare-fun lt!225710 () SeekEntryResult!3937)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!498186 (= res!300446 (or (= lt!225710 (MissingZero!3937 i!1204)) (= lt!225710 (MissingVacant!3937 i!1204))))))

(assert (=> b!498186 (= lt!225710 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!498187 () Bool)

(declare-datatypes ((Unit!14838 0))(
  ( (Unit!14839) )
))
(declare-fun e!292001 () Unit!14838)

(declare-fun Unit!14840 () Unit!14838)

(assert (=> b!498187 (= e!292001 Unit!14840)))

(declare-fun lt!225709 () Unit!14838)

(declare-fun lt!225704 () SeekEntryResult!3937)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32169 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14838)

(assert (=> b!498187 (= lt!225709 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!225708 #b00000000000000000000000000000000 (index!17932 lt!225704) (x!47009 lt!225704) mask!3524))))

(declare-fun res!300437 () Bool)

(assert (=> b!498187 (= res!300437 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225708 lt!225702 lt!225705 mask!3524) (Intermediate!3937 false (index!17932 lt!225704) (x!47009 lt!225704))))))

(declare-fun e!292002 () Bool)

(assert (=> b!498187 (=> (not res!300437) (not e!292002))))

(assert (=> b!498187 e!292002))

(declare-fun res!300443 () Bool)

(assert (=> start!45384 (=> (not res!300443) (not e!291997))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45384 (= res!300443 (validMask!0 mask!3524))))

(assert (=> start!45384 e!291997))

(assert (=> start!45384 true))

(declare-fun array_inv!11237 (array!32169) Bool)

(assert (=> start!45384 (array_inv!11237 a!3235)))

(declare-fun b!498188 () Bool)

(declare-fun e!292003 () Bool)

(assert (=> b!498188 (= e!292003 e!291999)))

(declare-fun res!300439 () Bool)

(assert (=> b!498188 (=> res!300439 e!291999)))

(assert (=> b!498188 (= res!300439 (or (bvsgt #b00000000000000000000000000000000 (x!47009 lt!225704)) (bvsgt (x!47009 lt!225704) #b01111111111111111111111111111110) (bvslt lt!225708 #b00000000000000000000000000000000) (bvsge lt!225708 (size!15827 a!3235)) (bvslt (index!17932 lt!225704) #b00000000000000000000000000000000) (bvsge (index!17932 lt!225704) (size!15827 a!3235)) (not (= lt!225704 (Intermediate!3937 false (index!17932 lt!225704) (x!47009 lt!225704))))))))

(assert (=> b!498188 (and (or (= (select (arr!15463 a!3235) (index!17932 lt!225704)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15463 a!3235) (index!17932 lt!225704)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15463 a!3235) (index!17932 lt!225704)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15463 a!3235) (index!17932 lt!225704)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!225707 () Unit!14838)

(assert (=> b!498188 (= lt!225707 e!292001)))

(declare-fun c!59150 () Bool)

(assert (=> b!498188 (= c!59150 (= (select (arr!15463 a!3235) (index!17932 lt!225704)) (select (arr!15463 a!3235) j!176)))))

(assert (=> b!498188 (and (bvslt (x!47009 lt!225704) #b01111111111111111111111111111110) (or (= (select (arr!15463 a!3235) (index!17932 lt!225704)) (select (arr!15463 a!3235) j!176)) (= (select (arr!15463 a!3235) (index!17932 lt!225704)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15463 a!3235) (index!17932 lt!225704)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!498189 () Bool)

(assert (=> b!498189 (= e!291996 (not e!292003))))

(declare-fun res!300445 () Bool)

(assert (=> b!498189 (=> res!300445 e!292003)))

(declare-fun lt!225701 () (_ BitVec 32))

(assert (=> b!498189 (= res!300445 (= lt!225704 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225701 lt!225702 lt!225705 mask!3524)))))

(assert (=> b!498189 (= lt!225704 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225708 (select (arr!15463 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498189 (= lt!225701 (toIndex!0 lt!225702 mask!3524))))

(assert (=> b!498189 (= lt!225702 (select (store (arr!15463 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!498189 (= lt!225708 (toIndex!0 (select (arr!15463 a!3235) j!176) mask!3524))))

(assert (=> b!498189 (= lt!225705 (array!32170 (store (arr!15463 a!3235) i!1204 k0!2280) (size!15827 a!3235)))))

(assert (=> b!498189 e!291998))

(declare-fun res!300444 () Bool)

(assert (=> b!498189 (=> (not res!300444) (not e!291998))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32169 (_ BitVec 32)) Bool)

(assert (=> b!498189 (= res!300444 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!225706 () Unit!14838)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32169 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14838)

(assert (=> b!498189 (= lt!225706 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!498190 () Bool)

(declare-fun res!300448 () Bool)

(assert (=> b!498190 (=> (not res!300448) (not e!291997))))

(assert (=> b!498190 (= res!300448 (and (= (size!15827 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15827 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15827 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!498191 () Bool)

(assert (=> b!498191 (= e!292002 false)))

(declare-fun b!498192 () Bool)

(declare-fun res!300441 () Bool)

(assert (=> b!498192 (=> (not res!300441) (not e!291996))))

(declare-datatypes ((List!9674 0))(
  ( (Nil!9671) (Cons!9670 (h!10544 (_ BitVec 64)) (t!15910 List!9674)) )
))
(declare-fun arrayNoDuplicates!0 (array!32169 (_ BitVec 32) List!9674) Bool)

(assert (=> b!498192 (= res!300441 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9671))))

(declare-fun b!498193 () Bool)

(declare-fun res!300442 () Bool)

(assert (=> b!498193 (=> (not res!300442) (not e!291997))))

(declare-fun arrayContainsKey!0 (array!32169 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498193 (= res!300442 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498194 () Bool)

(declare-fun res!300447 () Bool)

(assert (=> b!498194 (=> res!300447 e!292003)))

(get-info :version)

(assert (=> b!498194 (= res!300447 (or (undefined!4749 lt!225704) (not ((_ is Intermediate!3937) lt!225704))))))

(declare-fun b!498195 () Bool)

(declare-fun res!300440 () Bool)

(assert (=> b!498195 (=> (not res!300440) (not e!291997))))

(assert (=> b!498195 (= res!300440 (validKeyInArray!0 (select (arr!15463 a!3235) j!176)))))

(declare-fun b!498196 () Bool)

(declare-fun res!300449 () Bool)

(assert (=> b!498196 (=> (not res!300449) (not e!291996))))

(assert (=> b!498196 (= res!300449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!498197 () Bool)

(declare-fun Unit!14841 () Unit!14838)

(assert (=> b!498197 (= e!292001 Unit!14841)))

(assert (= (and start!45384 res!300443) b!498190))

(assert (= (and b!498190 res!300448) b!498195))

(assert (= (and b!498195 res!300440) b!498183))

(assert (= (and b!498183 res!300438) b!498193))

(assert (= (and b!498193 res!300442) b!498186))

(assert (= (and b!498186 res!300446) b!498196))

(assert (= (and b!498196 res!300449) b!498192))

(assert (= (and b!498192 res!300441) b!498189))

(assert (= (and b!498189 res!300444) b!498184))

(assert (= (and b!498189 (not res!300445)) b!498194))

(assert (= (and b!498194 (not res!300447)) b!498188))

(assert (= (and b!498188 c!59150) b!498187))

(assert (= (and b!498188 (not c!59150)) b!498197))

(assert (= (and b!498187 res!300437) b!498191))

(assert (= (and b!498188 (not res!300439)) b!498185))

(declare-fun m!479491 () Bool)

(assert (=> start!45384 m!479491))

(declare-fun m!479493 () Bool)

(assert (=> start!45384 m!479493))

(declare-fun m!479495 () Bool)

(assert (=> b!498183 m!479495))

(declare-fun m!479497 () Bool)

(assert (=> b!498189 m!479497))

(declare-fun m!479499 () Bool)

(assert (=> b!498189 m!479499))

(declare-fun m!479501 () Bool)

(assert (=> b!498189 m!479501))

(declare-fun m!479503 () Bool)

(assert (=> b!498189 m!479503))

(declare-fun m!479505 () Bool)

(assert (=> b!498189 m!479505))

(declare-fun m!479507 () Bool)

(assert (=> b!498189 m!479507))

(assert (=> b!498189 m!479505))

(declare-fun m!479509 () Bool)

(assert (=> b!498189 m!479509))

(assert (=> b!498189 m!479505))

(declare-fun m!479511 () Bool)

(assert (=> b!498189 m!479511))

(declare-fun m!479513 () Bool)

(assert (=> b!498189 m!479513))

(assert (=> b!498195 m!479505))

(assert (=> b!498195 m!479505))

(declare-fun m!479515 () Bool)

(assert (=> b!498195 m!479515))

(declare-fun m!479517 () Bool)

(assert (=> b!498192 m!479517))

(declare-fun m!479519 () Bool)

(assert (=> b!498193 m!479519))

(assert (=> b!498184 m!479505))

(assert (=> b!498184 m!479505))

(declare-fun m!479521 () Bool)

(assert (=> b!498184 m!479521))

(declare-fun m!479523 () Bool)

(assert (=> b!498187 m!479523))

(declare-fun m!479525 () Bool)

(assert (=> b!498187 m!479525))

(declare-fun m!479527 () Bool)

(assert (=> b!498196 m!479527))

(declare-fun m!479529 () Bool)

(assert (=> b!498186 m!479529))

(declare-fun m!479531 () Bool)

(assert (=> b!498188 m!479531))

(assert (=> b!498188 m!479505))

(assert (=> b!498185 m!479525))

(check-sat (not b!498186) (not b!498195) (not b!498192) (not b!498183) (not b!498184) (not start!45384) (not b!498193) (not b!498189) (not b!498185) (not b!498187) (not b!498196))
(check-sat)
