; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44986 () Bool)

(assert start!44986)

(declare-fun b!493098 () Bool)

(declare-fun res!295825 () Bool)

(declare-fun e!289615 () Bool)

(assert (=> b!493098 (=> (not res!295825) (not e!289615))))

(declare-datatypes ((array!31891 0))(
  ( (array!31892 (arr!15327 (Array (_ BitVec 32) (_ BitVec 64))) (size!15691 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31891)

(declare-datatypes ((List!9538 0))(
  ( (Nil!9535) (Cons!9534 (h!10402 (_ BitVec 64)) (t!15774 List!9538)) )
))
(declare-fun arrayNoDuplicates!0 (array!31891 (_ BitVec 32) List!9538) Bool)

(assert (=> b!493098 (= res!295825 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9535))))

(declare-fun b!493099 () Bool)

(declare-fun res!295823 () Bool)

(declare-fun e!289617 () Bool)

(assert (=> b!493099 (=> (not res!295823) (not e!289617))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493099 (= res!295823 (validKeyInArray!0 (select (arr!15327 a!3235) j!176)))))

(declare-fun b!493100 () Bool)

(assert (=> b!493100 (= e!289617 e!289615)))

(declare-fun res!295821 () Bool)

(assert (=> b!493100 (=> (not res!295821) (not e!289615))))

(declare-datatypes ((SeekEntryResult!3801 0))(
  ( (MissingZero!3801 (index!17383 (_ BitVec 32))) (Found!3801 (index!17384 (_ BitVec 32))) (Intermediate!3801 (undefined!4613 Bool) (index!17385 (_ BitVec 32)) (x!46498 (_ BitVec 32))) (Undefined!3801) (MissingVacant!3801 (index!17386 (_ BitVec 32))) )
))
(declare-fun lt!223042 () SeekEntryResult!3801)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!493100 (= res!295821 (or (= lt!223042 (MissingZero!3801 i!1204)) (= lt!223042 (MissingVacant!3801 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31891 (_ BitVec 32)) SeekEntryResult!3801)

(assert (=> b!493100 (= lt!223042 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!493101 () Bool)

(declare-fun res!295822 () Bool)

(assert (=> b!493101 (=> (not res!295822) (not e!289617))))

(declare-fun arrayContainsKey!0 (array!31891 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493101 (= res!295822 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493102 () Bool)

(declare-fun res!295820 () Bool)

(assert (=> b!493102 (=> (not res!295820) (not e!289615))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31891 (_ BitVec 32)) Bool)

(assert (=> b!493102 (= res!295820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493103 () Bool)

(declare-fun res!295818 () Bool)

(assert (=> b!493103 (=> (not res!295818) (not e!289617))))

(assert (=> b!493103 (= res!295818 (and (= (size!15691 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15691 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15691 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!295819 () Bool)

(assert (=> start!44986 (=> (not res!295819) (not e!289617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44986 (= res!295819 (validMask!0 mask!3524))))

(assert (=> start!44986 e!289617))

(assert (=> start!44986 true))

(declare-fun array_inv!11101 (array!31891) Bool)

(assert (=> start!44986 (array_inv!11101 a!3235)))

(declare-fun e!289616 () Bool)

(declare-fun b!493104 () Bool)

(assert (=> b!493104 (= e!289616 (= (seekEntryOrOpen!0 (select (arr!15327 a!3235) j!176) a!3235 mask!3524) (Found!3801 j!176)))))

(declare-fun b!493105 () Bool)

(assert (=> b!493105 (= e!289615 (not true))))

(declare-fun lt!223043 () SeekEntryResult!3801)

(declare-fun lt!223045 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31891 (_ BitVec 32)) SeekEntryResult!3801)

(assert (=> b!493105 (= lt!223043 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223045 (select (store (arr!15327 a!3235) i!1204 k!2280) j!176) (array!31892 (store (arr!15327 a!3235) i!1204 k!2280) (size!15691 a!3235)) mask!3524))))

(declare-fun lt!223044 () SeekEntryResult!3801)

(declare-fun lt!223041 () (_ BitVec 32))

(assert (=> b!493105 (= lt!223044 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223041 (select (arr!15327 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493105 (= lt!223045 (toIndex!0 (select (store (arr!15327 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493105 (= lt!223041 (toIndex!0 (select (arr!15327 a!3235) j!176) mask!3524))))

(assert (=> b!493105 e!289616))

(declare-fun res!295826 () Bool)

(assert (=> b!493105 (=> (not res!295826) (not e!289616))))

(assert (=> b!493105 (= res!295826 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14540 0))(
  ( (Unit!14541) )
))
(declare-fun lt!223046 () Unit!14540)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31891 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14540)

(assert (=> b!493105 (= lt!223046 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493106 () Bool)

(declare-fun res!295824 () Bool)

(assert (=> b!493106 (=> (not res!295824) (not e!289617))))

(assert (=> b!493106 (= res!295824 (validKeyInArray!0 k!2280))))

(assert (= (and start!44986 res!295819) b!493103))

(assert (= (and b!493103 res!295818) b!493099))

(assert (= (and b!493099 res!295823) b!493106))

(assert (= (and b!493106 res!295824) b!493101))

(assert (= (and b!493101 res!295822) b!493100))

(assert (= (and b!493100 res!295821) b!493102))

(assert (= (and b!493102 res!295820) b!493098))

(assert (= (and b!493098 res!295825) b!493105))

(assert (= (and b!493105 res!295826) b!493104))

(declare-fun m!473941 () Bool)

(assert (=> start!44986 m!473941))

(declare-fun m!473943 () Bool)

(assert (=> start!44986 m!473943))

(declare-fun m!473945 () Bool)

(assert (=> b!493098 m!473945))

(declare-fun m!473947 () Bool)

(assert (=> b!493102 m!473947))

(declare-fun m!473949 () Bool)

(assert (=> b!493104 m!473949))

(assert (=> b!493104 m!473949))

(declare-fun m!473951 () Bool)

(assert (=> b!493104 m!473951))

(declare-fun m!473953 () Bool)

(assert (=> b!493100 m!473953))

(declare-fun m!473955 () Bool)

(assert (=> b!493105 m!473955))

(declare-fun m!473957 () Bool)

(assert (=> b!493105 m!473957))

(declare-fun m!473959 () Bool)

(assert (=> b!493105 m!473959))

(assert (=> b!493105 m!473959))

(declare-fun m!473961 () Bool)

(assert (=> b!493105 m!473961))

(assert (=> b!493105 m!473949))

(declare-fun m!473963 () Bool)

(assert (=> b!493105 m!473963))

(assert (=> b!493105 m!473949))

(declare-fun m!473965 () Bool)

(assert (=> b!493105 m!473965))

(assert (=> b!493105 m!473949))

(declare-fun m!473967 () Bool)

(assert (=> b!493105 m!473967))

(assert (=> b!493105 m!473959))

(declare-fun m!473969 () Bool)

(assert (=> b!493105 m!473969))

(declare-fun m!473971 () Bool)

(assert (=> b!493106 m!473971))

(declare-fun m!473973 () Bool)

(assert (=> b!493101 m!473973))

(assert (=> b!493099 m!473949))

(assert (=> b!493099 m!473949))

(declare-fun m!473975 () Bool)

(assert (=> b!493099 m!473975))

(push 1)

