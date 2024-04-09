; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44622 () Bool)

(assert start!44622)

(declare-fun e!287716 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!489159 () Bool)

(declare-datatypes ((array!31641 0))(
  ( (array!31642 (arr!15205 (Array (_ BitVec 32) (_ BitVec 64))) (size!15569 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31641)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3679 0))(
  ( (MissingZero!3679 (index!16895 (_ BitVec 32))) (Found!3679 (index!16896 (_ BitVec 32))) (Intermediate!3679 (undefined!4491 Bool) (index!16897 (_ BitVec 32)) (x!46036 (_ BitVec 32))) (Undefined!3679) (MissingVacant!3679 (index!16898 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31641 (_ BitVec 32)) SeekEntryResult!3679)

(assert (=> b!489159 (= e!287716 (= (seekEntryOrOpen!0 (select (arr!15205 a!3235) j!176) a!3235 mask!3524) (Found!3679 j!176)))))

(declare-fun res!292253 () Bool)

(declare-fun e!287718 () Bool)

(assert (=> start!44622 (=> (not res!292253) (not e!287718))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44622 (= res!292253 (validMask!0 mask!3524))))

(assert (=> start!44622 e!287718))

(assert (=> start!44622 true))

(declare-fun array_inv!10979 (array!31641) Bool)

(assert (=> start!44622 (array_inv!10979 a!3235)))

(declare-fun b!489160 () Bool)

(declare-fun res!292245 () Bool)

(declare-fun e!287717 () Bool)

(assert (=> b!489160 (=> (not res!292245) (not e!287717))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31641 (_ BitVec 32)) Bool)

(assert (=> b!489160 (= res!292245 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489161 () Bool)

(assert (=> b!489161 (= e!287718 e!287717)))

(declare-fun res!292250 () Bool)

(assert (=> b!489161 (=> (not res!292250) (not e!287717))))

(declare-fun lt!220731 () SeekEntryResult!3679)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!489161 (= res!292250 (or (= lt!220731 (MissingZero!3679 i!1204)) (= lt!220731 (MissingVacant!3679 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!489161 (= lt!220731 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!489162 () Bool)

(assert (=> b!489162 (= e!287717 (not true))))

(declare-fun lt!220736 () SeekEntryResult!3679)

(declare-fun lt!220735 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31641 (_ BitVec 32)) SeekEntryResult!3679)

(assert (=> b!489162 (= lt!220736 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220735 (select (store (arr!15205 a!3235) i!1204 k0!2280) j!176) (array!31642 (store (arr!15205 a!3235) i!1204 k0!2280) (size!15569 a!3235)) mask!3524))))

(declare-fun lt!220732 () (_ BitVec 32))

(declare-fun lt!220733 () SeekEntryResult!3679)

(assert (=> b!489162 (= lt!220733 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220732 (select (arr!15205 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489162 (= lt!220735 (toIndex!0 (select (store (arr!15205 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!489162 (= lt!220732 (toIndex!0 (select (arr!15205 a!3235) j!176) mask!3524))))

(assert (=> b!489162 e!287716))

(declare-fun res!292251 () Bool)

(assert (=> b!489162 (=> (not res!292251) (not e!287716))))

(assert (=> b!489162 (= res!292251 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14296 0))(
  ( (Unit!14297) )
))
(declare-fun lt!220734 () Unit!14296)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31641 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14296)

(assert (=> b!489162 (= lt!220734 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489163 () Bool)

(declare-fun res!292249 () Bool)

(assert (=> b!489163 (=> (not res!292249) (not e!287717))))

(declare-datatypes ((List!9416 0))(
  ( (Nil!9413) (Cons!9412 (h!10274 (_ BitVec 64)) (t!15652 List!9416)) )
))
(declare-fun arrayNoDuplicates!0 (array!31641 (_ BitVec 32) List!9416) Bool)

(assert (=> b!489163 (= res!292249 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9413))))

(declare-fun b!489164 () Bool)

(declare-fun res!292247 () Bool)

(assert (=> b!489164 (=> (not res!292247) (not e!287718))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489164 (= res!292247 (validKeyInArray!0 k0!2280))))

(declare-fun b!489165 () Bool)

(declare-fun res!292246 () Bool)

(assert (=> b!489165 (=> (not res!292246) (not e!287718))))

(declare-fun arrayContainsKey!0 (array!31641 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489165 (= res!292246 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489166 () Bool)

(declare-fun res!292252 () Bool)

(assert (=> b!489166 (=> (not res!292252) (not e!287718))))

(assert (=> b!489166 (= res!292252 (validKeyInArray!0 (select (arr!15205 a!3235) j!176)))))

(declare-fun b!489167 () Bool)

(declare-fun res!292248 () Bool)

(assert (=> b!489167 (=> (not res!292248) (not e!287718))))

(assert (=> b!489167 (= res!292248 (and (= (size!15569 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15569 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15569 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44622 res!292253) b!489167))

(assert (= (and b!489167 res!292248) b!489166))

(assert (= (and b!489166 res!292252) b!489164))

(assert (= (and b!489164 res!292247) b!489165))

(assert (= (and b!489165 res!292246) b!489161))

(assert (= (and b!489161 res!292250) b!489160))

(assert (= (and b!489160 res!292245) b!489163))

(assert (= (and b!489163 res!292249) b!489162))

(assert (= (and b!489162 res!292251) b!489159))

(declare-fun m!468943 () Bool)

(assert (=> b!489164 m!468943))

(declare-fun m!468945 () Bool)

(assert (=> b!489163 m!468945))

(declare-fun m!468947 () Bool)

(assert (=> start!44622 m!468947))

(declare-fun m!468949 () Bool)

(assert (=> start!44622 m!468949))

(declare-fun m!468951 () Bool)

(assert (=> b!489166 m!468951))

(assert (=> b!489166 m!468951))

(declare-fun m!468953 () Bool)

(assert (=> b!489166 m!468953))

(declare-fun m!468955 () Bool)

(assert (=> b!489160 m!468955))

(assert (=> b!489159 m!468951))

(assert (=> b!489159 m!468951))

(declare-fun m!468957 () Bool)

(assert (=> b!489159 m!468957))

(declare-fun m!468959 () Bool)

(assert (=> b!489161 m!468959))

(declare-fun m!468961 () Bool)

(assert (=> b!489162 m!468961))

(declare-fun m!468963 () Bool)

(assert (=> b!489162 m!468963))

(declare-fun m!468965 () Bool)

(assert (=> b!489162 m!468965))

(assert (=> b!489162 m!468951))

(declare-fun m!468967 () Bool)

(assert (=> b!489162 m!468967))

(assert (=> b!489162 m!468951))

(declare-fun m!468969 () Bool)

(assert (=> b!489162 m!468969))

(assert (=> b!489162 m!468965))

(declare-fun m!468971 () Bool)

(assert (=> b!489162 m!468971))

(assert (=> b!489162 m!468951))

(declare-fun m!468973 () Bool)

(assert (=> b!489162 m!468973))

(assert (=> b!489162 m!468965))

(declare-fun m!468975 () Bool)

(assert (=> b!489162 m!468975))

(declare-fun m!468977 () Bool)

(assert (=> b!489165 m!468977))

(check-sat (not b!489164) (not b!489160) (not b!489165) (not start!44622) (not b!489162) (not b!489166) (not b!489161) (not b!489163) (not b!489159))
(check-sat)
