; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44616 () Bool)

(assert start!44616)

(declare-fun b!489074 () Bool)

(declare-fun res!292163 () Bool)

(declare-fun e!287678 () Bool)

(assert (=> b!489074 (=> (not res!292163) (not e!287678))))

(declare-datatypes ((array!31635 0))(
  ( (array!31636 (arr!15202 (Array (_ BitVec 32) (_ BitVec 64))) (size!15566 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31635)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489074 (= res!292163 (validKeyInArray!0 (select (arr!15202 a!3235) j!176)))))

(declare-fun b!489075 () Bool)

(declare-fun res!292164 () Bool)

(assert (=> b!489075 (=> (not res!292164) (not e!287678))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31635 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489075 (= res!292164 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489076 () Bool)

(declare-fun e!287677 () Bool)

(declare-fun e!287676 () Bool)

(assert (=> b!489076 (= e!287677 (not e!287676))))

(declare-fun res!292161 () Bool)

(assert (=> b!489076 (=> res!292161 e!287676)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!220690 () (_ BitVec 32))

(assert (=> b!489076 (= res!292161 (or (bvslt mask!3524 #b00000000000000000000000000000000) (bvslt lt!220690 #b00000000000000000000000000000000) (bvsge lt!220690 (bvadd #b00000000000000000000000000000001 mask!3524))))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489076 (= lt!220690 (toIndex!0 (select (store (arr!15202 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(declare-fun e!287679 () Bool)

(assert (=> b!489076 e!287679))

(declare-fun res!292160 () Bool)

(assert (=> b!489076 (=> (not res!292160) (not e!287679))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31635 (_ BitVec 32)) Bool)

(assert (=> b!489076 (= res!292160 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14290 0))(
  ( (Unit!14291) )
))
(declare-fun lt!220691 () Unit!14290)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31635 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14290)

(assert (=> b!489076 (= lt!220691 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489077 () Bool)

(assert (=> b!489077 (= e!287678 e!287677)))

(declare-fun res!292166 () Bool)

(assert (=> b!489077 (=> (not res!292166) (not e!287677))))

(declare-datatypes ((SeekEntryResult!3676 0))(
  ( (MissingZero!3676 (index!16883 (_ BitVec 32))) (Found!3676 (index!16884 (_ BitVec 32))) (Intermediate!3676 (undefined!4488 Bool) (index!16885 (_ BitVec 32)) (x!46025 (_ BitVec 32))) (Undefined!3676) (MissingVacant!3676 (index!16886 (_ BitVec 32))) )
))
(declare-fun lt!220689 () SeekEntryResult!3676)

(assert (=> b!489077 (= res!292166 (or (= lt!220689 (MissingZero!3676 i!1204)) (= lt!220689 (MissingVacant!3676 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31635 (_ BitVec 32)) SeekEntryResult!3676)

(assert (=> b!489077 (= lt!220689 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!489078 () Bool)

(declare-fun res!292162 () Bool)

(assert (=> b!489078 (=> (not res!292162) (not e!287678))))

(assert (=> b!489078 (= res!292162 (and (= (size!15566 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15566 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15566 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!292169 () Bool)

(assert (=> start!44616 (=> (not res!292169) (not e!287678))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44616 (= res!292169 (validMask!0 mask!3524))))

(assert (=> start!44616 e!287678))

(assert (=> start!44616 true))

(declare-fun array_inv!10976 (array!31635) Bool)

(assert (=> start!44616 (array_inv!10976 a!3235)))

(declare-fun b!489079 () Bool)

(declare-fun res!292167 () Bool)

(assert (=> b!489079 (=> (not res!292167) (not e!287677))))

(assert (=> b!489079 (= res!292167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489080 () Bool)

(declare-fun res!292168 () Bool)

(assert (=> b!489080 (=> (not res!292168) (not e!287677))))

(declare-datatypes ((List!9413 0))(
  ( (Nil!9410) (Cons!9409 (h!10271 (_ BitVec 64)) (t!15649 List!9413)) )
))
(declare-fun arrayNoDuplicates!0 (array!31635 (_ BitVec 32) List!9413) Bool)

(assert (=> b!489080 (= res!292168 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9410))))

(declare-fun b!489081 () Bool)

(assert (=> b!489081 (= e!287676 (validKeyInArray!0 (select (store (arr!15202 a!3235) i!1204 k0!2280) j!176)))))

(declare-fun b!489082 () Bool)

(declare-fun res!292165 () Bool)

(assert (=> b!489082 (=> (not res!292165) (not e!287678))))

(assert (=> b!489082 (= res!292165 (validKeyInArray!0 k0!2280))))

(declare-fun b!489083 () Bool)

(assert (=> b!489083 (= e!287679 (= (seekEntryOrOpen!0 (select (arr!15202 a!3235) j!176) a!3235 mask!3524) (Found!3676 j!176)))))

(assert (= (and start!44616 res!292169) b!489078))

(assert (= (and b!489078 res!292162) b!489074))

(assert (= (and b!489074 res!292163) b!489082))

(assert (= (and b!489082 res!292165) b!489075))

(assert (= (and b!489075 res!292164) b!489077))

(assert (= (and b!489077 res!292166) b!489079))

(assert (= (and b!489079 res!292167) b!489080))

(assert (= (and b!489080 res!292168) b!489076))

(assert (= (and b!489076 res!292160) b!489083))

(assert (= (and b!489076 (not res!292161)) b!489081))

(declare-fun m!468843 () Bool)

(assert (=> b!489083 m!468843))

(assert (=> b!489083 m!468843))

(declare-fun m!468845 () Bool)

(assert (=> b!489083 m!468845))

(declare-fun m!468847 () Bool)

(assert (=> b!489080 m!468847))

(declare-fun m!468849 () Bool)

(assert (=> b!489077 m!468849))

(assert (=> b!489074 m!468843))

(assert (=> b!489074 m!468843))

(declare-fun m!468851 () Bool)

(assert (=> b!489074 m!468851))

(declare-fun m!468853 () Bool)

(assert (=> b!489079 m!468853))

(declare-fun m!468855 () Bool)

(assert (=> b!489076 m!468855))

(declare-fun m!468857 () Bool)

(assert (=> b!489076 m!468857))

(declare-fun m!468859 () Bool)

(assert (=> b!489076 m!468859))

(declare-fun m!468861 () Bool)

(assert (=> b!489076 m!468861))

(assert (=> b!489076 m!468859))

(declare-fun m!468863 () Bool)

(assert (=> b!489076 m!468863))

(declare-fun m!468865 () Bool)

(assert (=> b!489075 m!468865))

(declare-fun m!468867 () Bool)

(assert (=> b!489082 m!468867))

(assert (=> b!489081 m!468855))

(assert (=> b!489081 m!468859))

(assert (=> b!489081 m!468859))

(declare-fun m!468869 () Bool)

(assert (=> b!489081 m!468869))

(declare-fun m!468871 () Bool)

(assert (=> start!44616 m!468871))

(declare-fun m!468873 () Bool)

(assert (=> start!44616 m!468873))

(check-sat (not b!489076) (not start!44616) (not b!489082) (not b!489081) (not b!489079) (not b!489075) (not b!489080) (not b!489074) (not b!489077) (not b!489083))
(check-sat)
