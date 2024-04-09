; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44882 () Bool)

(assert start!44882)

(declare-fun b!492194 () Bool)

(declare-fun res!295098 () Bool)

(declare-fun e!289150 () Bool)

(assert (=> b!492194 (=> (not res!295098) (not e!289150))))

(declare-datatypes ((array!31844 0))(
  ( (array!31845 (arr!15305 (Array (_ BitVec 32) (_ BitVec 64))) (size!15669 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31844)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31844 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492194 (= res!295098 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!492195 () Bool)

(declare-fun res!295104 () Bool)

(declare-fun e!289146 () Bool)

(assert (=> b!492195 (=> (not res!295104) (not e!289146))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31844 (_ BitVec 32)) Bool)

(assert (=> b!492195 (= res!295104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!492196 () Bool)

(declare-fun res!295099 () Bool)

(assert (=> b!492196 (=> (not res!295099) (not e!289150))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492196 (= res!295099 (validKeyInArray!0 k!2280))))

(declare-fun b!492197 () Bool)

(declare-fun res!295105 () Bool)

(assert (=> b!492197 (=> (not res!295105) (not e!289150))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!492197 (= res!295105 (and (= (size!15669 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15669 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15669 a!3235)) (not (= i!1204 j!176))))))

(declare-fun e!289147 () Bool)

(declare-fun b!492198 () Bool)

(declare-datatypes ((SeekEntryResult!3779 0))(
  ( (MissingZero!3779 (index!17295 (_ BitVec 32))) (Found!3779 (index!17296 (_ BitVec 32))) (Intermediate!3779 (undefined!4591 Bool) (index!17297 (_ BitVec 32)) (x!46406 (_ BitVec 32))) (Undefined!3779) (MissingVacant!3779 (index!17298 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31844 (_ BitVec 32)) SeekEntryResult!3779)

(assert (=> b!492198 (= e!289147 (= (seekEntryOrOpen!0 (select (arr!15305 a!3235) j!176) a!3235 mask!3524) (Found!3779 j!176)))))

(declare-fun b!492199 () Bool)

(declare-fun res!295100 () Bool)

(assert (=> b!492199 (=> (not res!295100) (not e!289150))))

(assert (=> b!492199 (= res!295100 (validKeyInArray!0 (select (arr!15305 a!3235) j!176)))))

(declare-fun b!492200 () Bool)

(declare-fun e!289148 () Bool)

(assert (=> b!492200 (= e!289148 (bvsge mask!3524 #b00000000000000000000000000000000))))

(declare-fun b!492201 () Bool)

(declare-fun res!295101 () Bool)

(assert (=> b!492201 (=> (not res!295101) (not e!289146))))

(declare-datatypes ((List!9516 0))(
  ( (Nil!9513) (Cons!9512 (h!10377 (_ BitVec 64)) (t!15752 List!9516)) )
))
(declare-fun arrayNoDuplicates!0 (array!31844 (_ BitVec 32) List!9516) Bool)

(assert (=> b!492201 (= res!295101 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9513))))

(declare-fun b!492202 () Bool)

(assert (=> b!492202 (= e!289150 e!289146)))

(declare-fun res!295097 () Bool)

(assert (=> b!492202 (=> (not res!295097) (not e!289146))))

(declare-fun lt!222557 () SeekEntryResult!3779)

(assert (=> b!492202 (= res!295097 (or (= lt!222557 (MissingZero!3779 i!1204)) (= lt!222557 (MissingVacant!3779 i!1204))))))

(assert (=> b!492202 (= lt!222557 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!492203 () Bool)

(assert (=> b!492203 (= e!289146 (not e!289148))))

(declare-fun res!295103 () Bool)

(assert (=> b!492203 (=> res!295103 e!289148)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31844 (_ BitVec 32)) SeekEntryResult!3779)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492203 (= res!295103 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15305 a!3235) j!176) mask!3524) (select (arr!15305 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!15305 a!3235) i!1204 k!2280) j!176) mask!3524) (select (store (arr!15305 a!3235) i!1204 k!2280) j!176) (array!31845 (store (arr!15305 a!3235) i!1204 k!2280) (size!15669 a!3235)) mask!3524)))))

(assert (=> b!492203 e!289147))

(declare-fun res!295106 () Bool)

(assert (=> b!492203 (=> (not res!295106) (not e!289147))))

(assert (=> b!492203 (= res!295106 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14496 0))(
  ( (Unit!14497) )
))
(declare-fun lt!222556 () Unit!14496)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31844 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14496)

(assert (=> b!492203 (= lt!222556 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!295102 () Bool)

(assert (=> start!44882 (=> (not res!295102) (not e!289150))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44882 (= res!295102 (validMask!0 mask!3524))))

(assert (=> start!44882 e!289150))

(assert (=> start!44882 true))

(declare-fun array_inv!11079 (array!31844) Bool)

(assert (=> start!44882 (array_inv!11079 a!3235)))

(assert (= (and start!44882 res!295102) b!492197))

(assert (= (and b!492197 res!295105) b!492199))

(assert (= (and b!492199 res!295100) b!492196))

(assert (= (and b!492196 res!295099) b!492194))

(assert (= (and b!492194 res!295098) b!492202))

(assert (= (and b!492202 res!295097) b!492195))

(assert (= (and b!492195 res!295104) b!492201))

(assert (= (and b!492201 res!295101) b!492203))

(assert (= (and b!492203 res!295106) b!492198))

(assert (= (and b!492203 (not res!295103)) b!492200))

(declare-fun m!472945 () Bool)

(assert (=> b!492199 m!472945))

(assert (=> b!492199 m!472945))

(declare-fun m!472947 () Bool)

(assert (=> b!492199 m!472947))

(declare-fun m!472949 () Bool)

(assert (=> b!492203 m!472949))

(declare-fun m!472951 () Bool)

(assert (=> b!492203 m!472951))

(declare-fun m!472953 () Bool)

(assert (=> b!492203 m!472953))

(declare-fun m!472955 () Bool)

(assert (=> b!492203 m!472955))

(assert (=> b!492203 m!472945))

(declare-fun m!472957 () Bool)

(assert (=> b!492203 m!472957))

(assert (=> b!492203 m!472945))

(assert (=> b!492203 m!472955))

(declare-fun m!472959 () Bool)

(assert (=> b!492203 m!472959))

(assert (=> b!492203 m!472953))

(declare-fun m!472961 () Bool)

(assert (=> b!492203 m!472961))

(assert (=> b!492203 m!472945))

(declare-fun m!472963 () Bool)

(assert (=> b!492203 m!472963))

(assert (=> b!492203 m!472953))

(assert (=> b!492203 m!472959))

(declare-fun m!472965 () Bool)

(assert (=> b!492195 m!472965))

(declare-fun m!472967 () Bool)

(assert (=> b!492196 m!472967))

(declare-fun m!472969 () Bool)

(assert (=> b!492201 m!472969))

(declare-fun m!472971 () Bool)

(assert (=> start!44882 m!472971))

(declare-fun m!472973 () Bool)

(assert (=> start!44882 m!472973))

(declare-fun m!472975 () Bool)

(assert (=> b!492202 m!472975))

(assert (=> b!492198 m!472945))

(assert (=> b!492198 m!472945))

(declare-fun m!472977 () Bool)

(assert (=> b!492198 m!472977))

(declare-fun m!472979 () Bool)

(assert (=> b!492194 m!472979))

(push 1)

(assert (not b!492194))

