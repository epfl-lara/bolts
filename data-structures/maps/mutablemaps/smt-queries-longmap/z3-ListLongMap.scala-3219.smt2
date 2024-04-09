; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45072 () Bool)

(assert start!45072)

(declare-fun b!494381 () Bool)

(declare-fun e!290131 () Bool)

(declare-fun e!290134 () Bool)

(assert (=> b!494381 (= e!290131 e!290134)))

(declare-fun res!297106 () Bool)

(assert (=> b!494381 (=> (not res!297106) (not e!290134))))

(declare-datatypes ((SeekEntryResult!3844 0))(
  ( (MissingZero!3844 (index!17555 (_ BitVec 32))) (Found!3844 (index!17556 (_ BitVec 32))) (Intermediate!3844 (undefined!4656 Bool) (index!17557 (_ BitVec 32)) (x!46653 (_ BitVec 32))) (Undefined!3844) (MissingVacant!3844 (index!17558 (_ BitVec 32))) )
))
(declare-fun lt!223818 () SeekEntryResult!3844)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!494381 (= res!297106 (or (= lt!223818 (MissingZero!3844 i!1204)) (= lt!223818 (MissingVacant!3844 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31977 0))(
  ( (array!31978 (arr!15370 (Array (_ BitVec 32) (_ BitVec 64))) (size!15734 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31977)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31977 (_ BitVec 32)) SeekEntryResult!3844)

(assert (=> b!494381 (= lt!223818 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!494382 () Bool)

(declare-fun res!297101 () Bool)

(assert (=> b!494382 (=> (not res!297101) (not e!290131))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494382 (= res!297101 (validKeyInArray!0 k0!2280))))

(declare-fun b!494383 () Bool)

(declare-fun res!297110 () Bool)

(assert (=> b!494383 (=> (not res!297110) (not e!290131))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!494383 (= res!297110 (validKeyInArray!0 (select (arr!15370 a!3235) j!176)))))

(declare-fun res!297108 () Bool)

(assert (=> start!45072 (=> (not res!297108) (not e!290131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45072 (= res!297108 (validMask!0 mask!3524))))

(assert (=> start!45072 e!290131))

(assert (=> start!45072 true))

(declare-fun array_inv!11144 (array!31977) Bool)

(assert (=> start!45072 (array_inv!11144 a!3235)))

(declare-fun b!494384 () Bool)

(declare-fun e!290133 () Bool)

(assert (=> b!494384 (= e!290134 (not e!290133))))

(declare-fun res!297103 () Bool)

(assert (=> b!494384 (=> res!297103 e!290133)))

(declare-fun lt!223820 () SeekEntryResult!3844)

(declare-fun lt!223815 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31977 (_ BitVec 32)) SeekEntryResult!3844)

(assert (=> b!494384 (= res!297103 (= lt!223820 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223815 (select (store (arr!15370 a!3235) i!1204 k0!2280) j!176) (array!31978 (store (arr!15370 a!3235) i!1204 k0!2280) (size!15734 a!3235)) mask!3524)))))

(declare-fun lt!223816 () (_ BitVec 32))

(assert (=> b!494384 (= lt!223820 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223816 (select (arr!15370 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494384 (= lt!223815 (toIndex!0 (select (store (arr!15370 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!494384 (= lt!223816 (toIndex!0 (select (arr!15370 a!3235) j!176) mask!3524))))

(declare-fun lt!223817 () SeekEntryResult!3844)

(assert (=> b!494384 (= lt!223817 (Found!3844 j!176))))

(assert (=> b!494384 (= lt!223817 (seekEntryOrOpen!0 (select (arr!15370 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31977 (_ BitVec 32)) Bool)

(assert (=> b!494384 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14626 0))(
  ( (Unit!14627) )
))
(declare-fun lt!223819 () Unit!14626)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31977 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14626)

(assert (=> b!494384 (= lt!223819 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494385 () Bool)

(declare-fun res!297104 () Bool)

(assert (=> b!494385 (=> (not res!297104) (not e!290134))))

(assert (=> b!494385 (= res!297104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494386 () Bool)

(assert (=> b!494386 (= e!290133 true)))

(assert (=> b!494386 (= lt!223817 Undefined!3844)))

(declare-fun b!494387 () Bool)

(declare-fun res!297102 () Bool)

(assert (=> b!494387 (=> (not res!297102) (not e!290131))))

(declare-fun arrayContainsKey!0 (array!31977 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494387 (= res!297102 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494388 () Bool)

(declare-fun res!297107 () Bool)

(assert (=> b!494388 (=> res!297107 e!290133)))

(get-info :version)

(assert (=> b!494388 (= res!297107 (or (not ((_ is Intermediate!3844) lt!223820)) (not (undefined!4656 lt!223820))))))

(declare-fun b!494389 () Bool)

(declare-fun res!297109 () Bool)

(assert (=> b!494389 (=> (not res!297109) (not e!290131))))

(assert (=> b!494389 (= res!297109 (and (= (size!15734 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15734 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15734 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494390 () Bool)

(declare-fun res!297105 () Bool)

(assert (=> b!494390 (=> (not res!297105) (not e!290134))))

(declare-datatypes ((List!9581 0))(
  ( (Nil!9578) (Cons!9577 (h!10445 (_ BitVec 64)) (t!15817 List!9581)) )
))
(declare-fun arrayNoDuplicates!0 (array!31977 (_ BitVec 32) List!9581) Bool)

(assert (=> b!494390 (= res!297105 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9578))))

(assert (= (and start!45072 res!297108) b!494389))

(assert (= (and b!494389 res!297109) b!494383))

(assert (= (and b!494383 res!297110) b!494382))

(assert (= (and b!494382 res!297101) b!494387))

(assert (= (and b!494387 res!297102) b!494381))

(assert (= (and b!494381 res!297106) b!494385))

(assert (= (and b!494385 res!297104) b!494390))

(assert (= (and b!494390 res!297105) b!494384))

(assert (= (and b!494384 (not res!297103)) b!494388))

(assert (= (and b!494388 (not res!297107)) b!494386))

(declare-fun m!475489 () Bool)

(assert (=> b!494382 m!475489))

(declare-fun m!475491 () Bool)

(assert (=> b!494385 m!475491))

(declare-fun m!475493 () Bool)

(assert (=> start!45072 m!475493))

(declare-fun m!475495 () Bool)

(assert (=> start!45072 m!475495))

(declare-fun m!475497 () Bool)

(assert (=> b!494387 m!475497))

(declare-fun m!475499 () Bool)

(assert (=> b!494384 m!475499))

(declare-fun m!475501 () Bool)

(assert (=> b!494384 m!475501))

(declare-fun m!475503 () Bool)

(assert (=> b!494384 m!475503))

(assert (=> b!494384 m!475503))

(declare-fun m!475505 () Bool)

(assert (=> b!494384 m!475505))

(declare-fun m!475507 () Bool)

(assert (=> b!494384 m!475507))

(declare-fun m!475509 () Bool)

(assert (=> b!494384 m!475509))

(assert (=> b!494384 m!475507))

(declare-fun m!475511 () Bool)

(assert (=> b!494384 m!475511))

(assert (=> b!494384 m!475507))

(declare-fun m!475513 () Bool)

(assert (=> b!494384 m!475513))

(assert (=> b!494384 m!475503))

(declare-fun m!475515 () Bool)

(assert (=> b!494384 m!475515))

(assert (=> b!494384 m!475507))

(declare-fun m!475517 () Bool)

(assert (=> b!494384 m!475517))

(assert (=> b!494383 m!475507))

(assert (=> b!494383 m!475507))

(declare-fun m!475519 () Bool)

(assert (=> b!494383 m!475519))

(declare-fun m!475521 () Bool)

(assert (=> b!494381 m!475521))

(declare-fun m!475523 () Bool)

(assert (=> b!494390 m!475523))

(check-sat (not start!45072) (not b!494383) (not b!494387) (not b!494390) (not b!494382) (not b!494385) (not b!494384) (not b!494381))
(check-sat)
