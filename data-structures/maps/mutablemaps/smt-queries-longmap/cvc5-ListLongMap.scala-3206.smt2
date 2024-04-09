; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44992 () Bool)

(assert start!44992)

(declare-fun b!493181 () Bool)

(declare-fun res!295905 () Bool)

(declare-fun e!289651 () Bool)

(assert (=> b!493181 (=> res!295905 e!289651)))

(declare-datatypes ((SeekEntryResult!3804 0))(
  ( (MissingZero!3804 (index!17395 (_ BitVec 32))) (Found!3804 (index!17396 (_ BitVec 32))) (Intermediate!3804 (undefined!4616 Bool) (index!17397 (_ BitVec 32)) (x!46509 (_ BitVec 32))) (Undefined!3804) (MissingVacant!3804 (index!17398 (_ BitVec 32))) )
))
(declare-fun lt!223098 () SeekEntryResult!3804)

(assert (=> b!493181 (= res!295905 (or (not (is-Intermediate!3804 lt!223098)) (not (undefined!4616 lt!223098))))))

(declare-fun b!493182 () Bool)

(declare-fun res!295909 () Bool)

(declare-fun e!289654 () Bool)

(assert (=> b!493182 (=> (not res!295909) (not e!289654))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31897 0))(
  ( (array!31898 (arr!15330 (Array (_ BitVec 32) (_ BitVec 64))) (size!15694 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31897)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!493182 (= res!295909 (and (= (size!15694 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15694 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15694 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493183 () Bool)

(declare-fun e!289653 () Bool)

(assert (=> b!493183 (= e!289654 e!289653)))

(declare-fun res!295901 () Bool)

(assert (=> b!493183 (=> (not res!295901) (not e!289653))))

(declare-fun lt!223100 () SeekEntryResult!3804)

(assert (=> b!493183 (= res!295901 (or (= lt!223100 (MissingZero!3804 i!1204)) (= lt!223100 (MissingVacant!3804 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31897 (_ BitVec 32)) SeekEntryResult!3804)

(assert (=> b!493183 (= lt!223100 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!493184 () Bool)

(declare-fun res!295903 () Bool)

(assert (=> b!493184 (=> (not res!295903) (not e!289653))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31897 (_ BitVec 32)) Bool)

(assert (=> b!493184 (= res!295903 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493185 () Bool)

(assert (=> b!493185 (= e!289651 true)))

(declare-fun lt!223095 () SeekEntryResult!3804)

(assert (=> b!493185 (= lt!223095 Undefined!3804)))

(declare-fun res!295904 () Bool)

(assert (=> start!44992 (=> (not res!295904) (not e!289654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44992 (= res!295904 (validMask!0 mask!3524))))

(assert (=> start!44992 e!289654))

(assert (=> start!44992 true))

(declare-fun array_inv!11104 (array!31897) Bool)

(assert (=> start!44992 (array_inv!11104 a!3235)))

(declare-fun b!493186 () Bool)

(declare-fun res!295907 () Bool)

(assert (=> b!493186 (=> (not res!295907) (not e!289654))))

(declare-fun arrayContainsKey!0 (array!31897 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493186 (= res!295907 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493187 () Bool)

(declare-fun res!295910 () Bool)

(assert (=> b!493187 (=> (not res!295910) (not e!289654))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493187 (= res!295910 (validKeyInArray!0 (select (arr!15330 a!3235) j!176)))))

(declare-fun b!493188 () Bool)

(declare-fun res!295908 () Bool)

(assert (=> b!493188 (=> (not res!295908) (not e!289653))))

(declare-datatypes ((List!9541 0))(
  ( (Nil!9538) (Cons!9537 (h!10405 (_ BitVec 64)) (t!15777 List!9541)) )
))
(declare-fun arrayNoDuplicates!0 (array!31897 (_ BitVec 32) List!9541) Bool)

(assert (=> b!493188 (= res!295908 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9538))))

(declare-fun b!493189 () Bool)

(declare-fun res!295902 () Bool)

(assert (=> b!493189 (=> (not res!295902) (not e!289654))))

(assert (=> b!493189 (= res!295902 (validKeyInArray!0 k!2280))))

(declare-fun b!493190 () Bool)

(assert (=> b!493190 (= e!289653 (not e!289651))))

(declare-fun res!295906 () Bool)

(assert (=> b!493190 (=> res!295906 e!289651)))

(declare-fun lt!223096 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31897 (_ BitVec 32)) SeekEntryResult!3804)

(assert (=> b!493190 (= res!295906 (= lt!223098 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223096 (select (store (arr!15330 a!3235) i!1204 k!2280) j!176) (array!31898 (store (arr!15330 a!3235) i!1204 k!2280) (size!15694 a!3235)) mask!3524)))))

(declare-fun lt!223099 () (_ BitVec 32))

(assert (=> b!493190 (= lt!223098 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223099 (select (arr!15330 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493190 (= lt!223096 (toIndex!0 (select (store (arr!15330 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493190 (= lt!223099 (toIndex!0 (select (arr!15330 a!3235) j!176) mask!3524))))

(assert (=> b!493190 (= lt!223095 (Found!3804 j!176))))

(assert (=> b!493190 (= lt!223095 (seekEntryOrOpen!0 (select (arr!15330 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!493190 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14546 0))(
  ( (Unit!14547) )
))
(declare-fun lt!223097 () Unit!14546)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31897 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14546)

(assert (=> b!493190 (= lt!223097 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!44992 res!295904) b!493182))

(assert (= (and b!493182 res!295909) b!493187))

(assert (= (and b!493187 res!295910) b!493189))

(assert (= (and b!493189 res!295902) b!493186))

(assert (= (and b!493186 res!295907) b!493183))

(assert (= (and b!493183 res!295901) b!493184))

(assert (= (and b!493184 res!295903) b!493188))

(assert (= (and b!493188 res!295908) b!493190))

(assert (= (and b!493190 (not res!295906)) b!493181))

(assert (= (and b!493181 (not res!295905)) b!493185))

(declare-fun m!474049 () Bool)

(assert (=> b!493187 m!474049))

(assert (=> b!493187 m!474049))

(declare-fun m!474051 () Bool)

(assert (=> b!493187 m!474051))

(declare-fun m!474053 () Bool)

(assert (=> start!44992 m!474053))

(declare-fun m!474055 () Bool)

(assert (=> start!44992 m!474055))

(declare-fun m!474057 () Bool)

(assert (=> b!493188 m!474057))

(declare-fun m!474059 () Bool)

(assert (=> b!493183 m!474059))

(declare-fun m!474061 () Bool)

(assert (=> b!493184 m!474061))

(declare-fun m!474063 () Bool)

(assert (=> b!493186 m!474063))

(declare-fun m!474065 () Bool)

(assert (=> b!493190 m!474065))

(declare-fun m!474067 () Bool)

(assert (=> b!493190 m!474067))

(declare-fun m!474069 () Bool)

(assert (=> b!493190 m!474069))

(assert (=> b!493190 m!474049))

(declare-fun m!474071 () Bool)

(assert (=> b!493190 m!474071))

(assert (=> b!493190 m!474049))

(declare-fun m!474073 () Bool)

(assert (=> b!493190 m!474073))

(assert (=> b!493190 m!474049))

(assert (=> b!493190 m!474069))

(declare-fun m!474075 () Bool)

(assert (=> b!493190 m!474075))

(declare-fun m!474077 () Bool)

(assert (=> b!493190 m!474077))

(assert (=> b!493190 m!474049))

(declare-fun m!474079 () Bool)

(assert (=> b!493190 m!474079))

(assert (=> b!493190 m!474069))

(declare-fun m!474081 () Bool)

(assert (=> b!493190 m!474081))

(declare-fun m!474083 () Bool)

(assert (=> b!493189 m!474083))

(push 1)

