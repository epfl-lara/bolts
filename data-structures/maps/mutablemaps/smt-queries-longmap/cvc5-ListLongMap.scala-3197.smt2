; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44878 () Bool)

(assert start!44878)

(declare-fun b!492134 () Bool)

(declare-fun res!295043 () Bool)

(declare-fun e!289119 () Bool)

(assert (=> b!492134 (=> (not res!295043) (not e!289119))))

(declare-datatypes ((array!31840 0))(
  ( (array!31841 (arr!15303 (Array (_ BitVec 32) (_ BitVec 64))) (size!15667 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31840)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492134 (= res!295043 (validKeyInArray!0 (select (arr!15303 a!3235) j!176)))))

(declare-fun b!492136 () Bool)

(declare-fun e!289118 () Bool)

(assert (=> b!492136 (= e!289119 e!289118)))

(declare-fun res!295039 () Bool)

(assert (=> b!492136 (=> (not res!295039) (not e!289118))))

(declare-datatypes ((SeekEntryResult!3777 0))(
  ( (MissingZero!3777 (index!17287 (_ BitVec 32))) (Found!3777 (index!17288 (_ BitVec 32))) (Intermediate!3777 (undefined!4589 Bool) (index!17289 (_ BitVec 32)) (x!46404 (_ BitVec 32))) (Undefined!3777) (MissingVacant!3777 (index!17290 (_ BitVec 32))) )
))
(declare-fun lt!222544 () SeekEntryResult!3777)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!492136 (= res!295039 (or (= lt!222544 (MissingZero!3777 i!1204)) (= lt!222544 (MissingVacant!3777 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31840 (_ BitVec 32)) SeekEntryResult!3777)

(assert (=> b!492136 (= lt!222544 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!492137 () Bool)

(declare-fun e!289117 () Bool)

(assert (=> b!492137 (= e!289117 (= (seekEntryOrOpen!0 (select (arr!15303 a!3235) j!176) a!3235 mask!3524) (Found!3777 j!176)))))

(declare-fun b!492138 () Bool)

(declare-fun res!295038 () Bool)

(assert (=> b!492138 (=> (not res!295038) (not e!289118))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31840 (_ BitVec 32)) Bool)

(assert (=> b!492138 (= res!295038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!492139 () Bool)

(declare-fun res!295045 () Bool)

(assert (=> b!492139 (=> (not res!295045) (not e!289119))))

(assert (=> b!492139 (= res!295045 (validKeyInArray!0 k!2280))))

(declare-fun b!492140 () Bool)

(declare-fun e!289120 () Bool)

(assert (=> b!492140 (= e!289120 (bvsge mask!3524 #b00000000000000000000000000000000))))

(declare-fun b!492141 () Bool)

(assert (=> b!492141 (= e!289118 (not e!289120))))

(declare-fun res!295044 () Bool)

(assert (=> b!492141 (=> res!295044 e!289120)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31840 (_ BitVec 32)) SeekEntryResult!3777)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492141 (= res!295044 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15303 a!3235) j!176) mask!3524) (select (arr!15303 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!15303 a!3235) i!1204 k!2280) j!176) mask!3524) (select (store (arr!15303 a!3235) i!1204 k!2280) j!176) (array!31841 (store (arr!15303 a!3235) i!1204 k!2280) (size!15667 a!3235)) mask!3524)))))

(assert (=> b!492141 e!289117))

(declare-fun res!295040 () Bool)

(assert (=> b!492141 (=> (not res!295040) (not e!289117))))

(assert (=> b!492141 (= res!295040 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14492 0))(
  ( (Unit!14493) )
))
(declare-fun lt!222545 () Unit!14492)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31840 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14492)

(assert (=> b!492141 (= lt!222545 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!295042 () Bool)

(assert (=> start!44878 (=> (not res!295042) (not e!289119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44878 (= res!295042 (validMask!0 mask!3524))))

(assert (=> start!44878 e!289119))

(assert (=> start!44878 true))

(declare-fun array_inv!11077 (array!31840) Bool)

(assert (=> start!44878 (array_inv!11077 a!3235)))

(declare-fun b!492135 () Bool)

(declare-fun res!295046 () Bool)

(assert (=> b!492135 (=> (not res!295046) (not e!289119))))

(assert (=> b!492135 (= res!295046 (and (= (size!15667 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15667 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15667 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!492142 () Bool)

(declare-fun res!295041 () Bool)

(assert (=> b!492142 (=> (not res!295041) (not e!289119))))

(declare-fun arrayContainsKey!0 (array!31840 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492142 (= res!295041 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!492143 () Bool)

(declare-fun res!295037 () Bool)

(assert (=> b!492143 (=> (not res!295037) (not e!289118))))

(declare-datatypes ((List!9514 0))(
  ( (Nil!9511) (Cons!9510 (h!10375 (_ BitVec 64)) (t!15750 List!9514)) )
))
(declare-fun arrayNoDuplicates!0 (array!31840 (_ BitVec 32) List!9514) Bool)

(assert (=> b!492143 (= res!295037 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9511))))

(assert (= (and start!44878 res!295042) b!492135))

(assert (= (and b!492135 res!295046) b!492134))

(assert (= (and b!492134 res!295043) b!492139))

(assert (= (and b!492139 res!295045) b!492142))

(assert (= (and b!492142 res!295041) b!492136))

(assert (= (and b!492136 res!295039) b!492138))

(assert (= (and b!492138 res!295038) b!492143))

(assert (= (and b!492143 res!295037) b!492141))

(assert (= (and b!492141 res!295040) b!492137))

(assert (= (and b!492141 (not res!295044)) b!492140))

(declare-fun m!472873 () Bool)

(assert (=> b!492142 m!472873))

(declare-fun m!472875 () Bool)

(assert (=> b!492138 m!472875))

(declare-fun m!472877 () Bool)

(assert (=> b!492134 m!472877))

(assert (=> b!492134 m!472877))

(declare-fun m!472879 () Bool)

(assert (=> b!492134 m!472879))

(declare-fun m!472881 () Bool)

(assert (=> b!492136 m!472881))

(declare-fun m!472883 () Bool)

(assert (=> start!44878 m!472883))

(declare-fun m!472885 () Bool)

(assert (=> start!44878 m!472885))

(declare-fun m!472887 () Bool)

(assert (=> b!492139 m!472887))

(assert (=> b!492137 m!472877))

(assert (=> b!492137 m!472877))

(declare-fun m!472889 () Bool)

(assert (=> b!492137 m!472889))

(declare-fun m!472891 () Bool)

(assert (=> b!492141 m!472891))

(declare-fun m!472893 () Bool)

(assert (=> b!492141 m!472893))

(declare-fun m!472895 () Bool)

(assert (=> b!492141 m!472895))

(declare-fun m!472897 () Bool)

(assert (=> b!492141 m!472897))

(assert (=> b!492141 m!472877))

(declare-fun m!472899 () Bool)

(assert (=> b!492141 m!472899))

(assert (=> b!492141 m!472877))

(assert (=> b!492141 m!472897))

(declare-fun m!472901 () Bool)

(assert (=> b!492141 m!472901))

(assert (=> b!492141 m!472895))

(declare-fun m!472903 () Bool)

(assert (=> b!492141 m!472903))

(assert (=> b!492141 m!472877))

(declare-fun m!472905 () Bool)

(assert (=> b!492141 m!472905))

(assert (=> b!492141 m!472895))

(assert (=> b!492141 m!472901))

(declare-fun m!472907 () Bool)

(assert (=> b!492143 m!472907))

(push 1)

