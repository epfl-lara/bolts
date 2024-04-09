; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118572 () Bool)

(assert start!118572)

(declare-fun res!927083 () Bool)

(declare-fun e!785143 () Bool)

(assert (=> start!118572 (=> (not res!927083) (not e!785143))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118572 (= res!927083 (validMask!0 mask!2987))))

(assert (=> start!118572 e!785143))

(assert (=> start!118572 true))

(declare-datatypes ((array!94766 0))(
  ( (array!94767 (arr!45755 (Array (_ BitVec 32) (_ BitVec 64))) (size!46306 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94766)

(declare-fun array_inv!34700 (array!94766) Bool)

(assert (=> start!118572 (array_inv!34700 a!2938)))

(declare-fun b!1385725 () Bool)

(assert (=> b!1385725 (= e!785143 false)))

(declare-fun lt!609259 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94766 (_ BitVec 32)) Bool)

(assert (=> b!1385725 (= lt!609259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385723 () Bool)

(declare-fun res!927081 () Bool)

(assert (=> b!1385723 (=> (not res!927081) (not e!785143))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385723 (= res!927081 (validKeyInArray!0 (select (arr!45755 a!2938) i!1065)))))

(declare-fun b!1385722 () Bool)

(declare-fun res!927084 () Bool)

(assert (=> b!1385722 (=> (not res!927084) (not e!785143))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385722 (= res!927084 (and (= (size!46306 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46306 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46306 a!2938))))))

(declare-fun b!1385724 () Bool)

(declare-fun res!927082 () Bool)

(assert (=> b!1385724 (=> (not res!927082) (not e!785143))))

(declare-datatypes ((List!32463 0))(
  ( (Nil!32460) (Cons!32459 (h!33668 (_ BitVec 64)) (t!47164 List!32463)) )
))
(declare-fun arrayNoDuplicates!0 (array!94766 (_ BitVec 32) List!32463) Bool)

(assert (=> b!1385724 (= res!927082 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32460))))

(assert (= (and start!118572 res!927083) b!1385722))

(assert (= (and b!1385722 res!927084) b!1385723))

(assert (= (and b!1385723 res!927081) b!1385724))

(assert (= (and b!1385724 res!927082) b!1385725))

(declare-fun m!1271057 () Bool)

(assert (=> start!118572 m!1271057))

(declare-fun m!1271059 () Bool)

(assert (=> start!118572 m!1271059))

(declare-fun m!1271061 () Bool)

(assert (=> b!1385725 m!1271061))

(declare-fun m!1271063 () Bool)

(assert (=> b!1385723 m!1271063))

(assert (=> b!1385723 m!1271063))

(declare-fun m!1271065 () Bool)

(assert (=> b!1385723 m!1271065))

(declare-fun m!1271067 () Bool)

(assert (=> b!1385724 m!1271067))

(check-sat (not b!1385725) (not b!1385724) (not start!118572) (not b!1385723))
