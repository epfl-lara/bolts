; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45732 () Bool)

(assert start!45732)

(declare-fun b!505144 () Bool)

(declare-fun res!306374 () Bool)

(declare-fun e!295724 () Bool)

(assert (=> b!505144 (=> res!306374 e!295724)))

(declare-fun e!295728 () Bool)

(assert (=> b!505144 (= res!306374 e!295728)))

(declare-fun res!306373 () Bool)

(assert (=> b!505144 (=> (not res!306373) (not e!295728))))

(declare-datatypes ((SeekEntryResult!4075 0))(
  ( (MissingZero!4075 (index!18488 (_ BitVec 32))) (Found!4075 (index!18489 (_ BitVec 32))) (Intermediate!4075 (undefined!4887 Bool) (index!18490 (_ BitVec 32)) (x!47527 (_ BitVec 32))) (Undefined!4075) (MissingVacant!4075 (index!18491 (_ BitVec 32))) )
))
(declare-fun lt!230243 () SeekEntryResult!4075)

(assert (=> b!505144 (= res!306373 (bvsgt #b00000000000000000000000000000000 (x!47527 lt!230243)))))

(declare-fun b!505145 () Bool)

(declare-fun res!306371 () Bool)

(declare-fun e!295729 () Bool)

(assert (=> b!505145 (=> (not res!306371) (not e!295729))))

(declare-datatypes ((array!32448 0))(
  ( (array!32449 (arr!15601 (Array (_ BitVec 32) (_ BitVec 64))) (size!15965 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32448)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!505145 (= res!306371 (validKeyInArray!0 (select (arr!15601 a!3235) j!176)))))

(declare-fun res!306382 () Bool)

(assert (=> start!45732 (=> (not res!306382) (not e!295729))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45732 (= res!306382 (validMask!0 mask!3524))))

(assert (=> start!45732 e!295729))

(assert (=> start!45732 true))

(declare-fun array_inv!11375 (array!32448) Bool)

(assert (=> start!45732 (array_inv!11375 a!3235)))

(declare-fun b!505146 () Bool)

(declare-datatypes ((Unit!15390 0))(
  ( (Unit!15391) )
))
(declare-fun e!295722 () Unit!15390)

(declare-fun Unit!15392 () Unit!15390)

(assert (=> b!505146 (= e!295722 Unit!15392)))

(declare-fun lt!230249 () (_ BitVec 32))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!230246 () Unit!15390)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32448 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15390)

(assert (=> b!505146 (= lt!230246 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!230249 #b00000000000000000000000000000000 (index!18490 lt!230243) (x!47527 lt!230243) mask!3524))))

(declare-fun lt!230253 () (_ BitVec 64))

(declare-fun res!306381 () Bool)

(declare-fun lt!230244 () array!32448)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32448 (_ BitVec 32)) SeekEntryResult!4075)

(assert (=> b!505146 (= res!306381 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230249 lt!230253 lt!230244 mask!3524) (Intermediate!4075 false (index!18490 lt!230243) (x!47527 lt!230243))))))

(declare-fun e!295727 () Bool)

(assert (=> b!505146 (=> (not res!306381) (not e!295727))))

(assert (=> b!505146 e!295727))

(declare-fun b!505147 () Bool)

(declare-fun res!306379 () Bool)

(assert (=> b!505147 (=> (not res!306379) (not e!295729))))

(assert (=> b!505147 (= res!306379 (and (= (size!15965 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15965 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15965 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!505148 () Bool)

(declare-fun res!306377 () Bool)

(declare-fun e!295725 () Bool)

(assert (=> b!505148 (=> (not res!306377) (not e!295725))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32448 (_ BitVec 32)) Bool)

(assert (=> b!505148 (= res!306377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!505149 () Bool)

(assert (=> b!505149 (= e!295727 false)))

(declare-fun b!505150 () Bool)

(declare-fun e!295721 () Bool)

(assert (=> b!505150 (= e!295725 (not e!295721))))

(declare-fun res!306383 () Bool)

(assert (=> b!505150 (=> res!306383 e!295721)))

(declare-fun lt!230251 () SeekEntryResult!4075)

(get-info :version)

(assert (=> b!505150 (= res!306383 (or (= lt!230243 lt!230251) (undefined!4887 lt!230243) (not ((_ is Intermediate!4075) lt!230243))))))

(declare-fun lt!230248 () (_ BitVec 32))

(assert (=> b!505150 (= lt!230251 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230248 lt!230253 lt!230244 mask!3524))))

(assert (=> b!505150 (= lt!230243 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230249 (select (arr!15601 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!505150 (= lt!230248 (toIndex!0 lt!230253 mask!3524))))

(assert (=> b!505150 (= lt!230253 (select (store (arr!15601 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!505150 (= lt!230249 (toIndex!0 (select (arr!15601 a!3235) j!176) mask!3524))))

(assert (=> b!505150 (= lt!230244 (array!32449 (store (arr!15601 a!3235) i!1204 k0!2280) (size!15965 a!3235)))))

(declare-fun lt!230247 () SeekEntryResult!4075)

(assert (=> b!505150 (= lt!230247 (Found!4075 j!176))))

(declare-fun e!295723 () Bool)

(assert (=> b!505150 e!295723))

(declare-fun res!306378 () Bool)

(assert (=> b!505150 (=> (not res!306378) (not e!295723))))

(assert (=> b!505150 (= res!306378 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!230245 () Unit!15390)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32448 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15390)

(assert (=> b!505150 (= lt!230245 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!505151 () Bool)

(declare-fun res!306376 () Bool)

(assert (=> b!505151 (=> res!306376 e!295724)))

(assert (=> b!505151 (= res!306376 (not (= lt!230251 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230249 lt!230253 lt!230244 mask!3524))))))

(declare-fun b!505152 () Bool)

(declare-fun res!306380 () Bool)

(assert (=> b!505152 (=> (not res!306380) (not e!295725))))

(declare-datatypes ((List!9812 0))(
  ( (Nil!9809) (Cons!9808 (h!10685 (_ BitVec 64)) (t!16048 List!9812)) )
))
(declare-fun arrayNoDuplicates!0 (array!32448 (_ BitVec 32) List!9812) Bool)

(assert (=> b!505152 (= res!306380 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9809))))

(declare-fun b!505153 () Bool)

(declare-fun res!306370 () Bool)

(assert (=> b!505153 (=> (not res!306370) (not e!295729))))

(assert (=> b!505153 (= res!306370 (validKeyInArray!0 k0!2280))))

(declare-fun b!505154 () Bool)

(assert (=> b!505154 (= e!295729 e!295725)))

(declare-fun res!306375 () Bool)

(assert (=> b!505154 (=> (not res!306375) (not e!295725))))

(declare-fun lt!230250 () SeekEntryResult!4075)

(assert (=> b!505154 (= res!306375 (or (= lt!230250 (MissingZero!4075 i!1204)) (= lt!230250 (MissingVacant!4075 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32448 (_ BitVec 32)) SeekEntryResult!4075)

(assert (=> b!505154 (= lt!230250 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!505155 () Bool)

(declare-fun Unit!15393 () Unit!15390)

(assert (=> b!505155 (= e!295722 Unit!15393)))

(declare-fun b!505156 () Bool)

(assert (=> b!505156 (= e!295724 (bvsge mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!505156 (= (seekEntryOrOpen!0 lt!230253 lt!230244 mask!3524) lt!230247)))

(declare-fun lt!230252 () Unit!15390)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32448 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15390)

(assert (=> b!505156 (= lt!230252 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k0!2280 j!176 lt!230249 #b00000000000000000000000000000000 (index!18490 lt!230243) (x!47527 lt!230243) mask!3524))))

(declare-fun b!505157 () Bool)

(assert (=> b!505157 (= e!295721 e!295724)))

(declare-fun res!306369 () Bool)

(assert (=> b!505157 (=> res!306369 e!295724)))

(assert (=> b!505157 (= res!306369 (or (bvsgt (x!47527 lt!230243) #b01111111111111111111111111111110) (bvslt lt!230249 #b00000000000000000000000000000000) (bvsge lt!230249 (size!15965 a!3235)) (bvslt (index!18490 lt!230243) #b00000000000000000000000000000000) (bvsge (index!18490 lt!230243) (size!15965 a!3235)) (not (= lt!230243 (Intermediate!4075 false (index!18490 lt!230243) (x!47527 lt!230243))))))))

(assert (=> b!505157 (= (index!18490 lt!230243) i!1204)))

(declare-fun lt!230254 () Unit!15390)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32448 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15390)

(assert (=> b!505157 (= lt!230254 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!230249 #b00000000000000000000000000000000 (index!18490 lt!230243) (x!47527 lt!230243) mask!3524))))

(assert (=> b!505157 (and (or (= (select (arr!15601 a!3235) (index!18490 lt!230243)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15601 a!3235) (index!18490 lt!230243)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15601 a!3235) (index!18490 lt!230243)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15601 a!3235) (index!18490 lt!230243)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230255 () Unit!15390)

(assert (=> b!505157 (= lt!230255 e!295722)))

(declare-fun c!59666 () Bool)

(assert (=> b!505157 (= c!59666 (= (select (arr!15601 a!3235) (index!18490 lt!230243)) (select (arr!15601 a!3235) j!176)))))

(assert (=> b!505157 (and (bvslt (x!47527 lt!230243) #b01111111111111111111111111111110) (or (= (select (arr!15601 a!3235) (index!18490 lt!230243)) (select (arr!15601 a!3235) j!176)) (= (select (arr!15601 a!3235) (index!18490 lt!230243)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15601 a!3235) (index!18490 lt!230243)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!505158 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32448 (_ BitVec 32)) SeekEntryResult!4075)

(assert (=> b!505158 (= e!295728 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230249 (index!18490 lt!230243) (select (arr!15601 a!3235) j!176) a!3235 mask!3524) lt!230247)))))

(declare-fun b!505159 () Bool)

(assert (=> b!505159 (= e!295723 (= (seekEntryOrOpen!0 (select (arr!15601 a!3235) j!176) a!3235 mask!3524) (Found!4075 j!176)))))

(declare-fun b!505160 () Bool)

(declare-fun res!306372 () Bool)

(assert (=> b!505160 (=> (not res!306372) (not e!295729))))

(declare-fun arrayContainsKey!0 (array!32448 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!505160 (= res!306372 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!45732 res!306382) b!505147))

(assert (= (and b!505147 res!306379) b!505145))

(assert (= (and b!505145 res!306371) b!505153))

(assert (= (and b!505153 res!306370) b!505160))

(assert (= (and b!505160 res!306372) b!505154))

(assert (= (and b!505154 res!306375) b!505148))

(assert (= (and b!505148 res!306377) b!505152))

(assert (= (and b!505152 res!306380) b!505150))

(assert (= (and b!505150 res!306378) b!505159))

(assert (= (and b!505150 (not res!306383)) b!505157))

(assert (= (and b!505157 c!59666) b!505146))

(assert (= (and b!505157 (not c!59666)) b!505155))

(assert (= (and b!505146 res!306381) b!505149))

(assert (= (and b!505157 (not res!306369)) b!505144))

(assert (= (and b!505144 res!306373) b!505158))

(assert (= (and b!505144 (not res!306374)) b!505151))

(assert (= (and b!505151 (not res!306376)) b!505156))

(declare-fun m!485847 () Bool)

(assert (=> b!505152 m!485847))

(declare-fun m!485849 () Bool)

(assert (=> b!505151 m!485849))

(declare-fun m!485851 () Bool)

(assert (=> b!505146 m!485851))

(assert (=> b!505146 m!485849))

(declare-fun m!485853 () Bool)

(assert (=> b!505148 m!485853))

(declare-fun m!485855 () Bool)

(assert (=> b!505158 m!485855))

(assert (=> b!505158 m!485855))

(declare-fun m!485857 () Bool)

(assert (=> b!505158 m!485857))

(assert (=> b!505159 m!485855))

(assert (=> b!505159 m!485855))

(declare-fun m!485859 () Bool)

(assert (=> b!505159 m!485859))

(assert (=> b!505145 m!485855))

(assert (=> b!505145 m!485855))

(declare-fun m!485861 () Bool)

(assert (=> b!505145 m!485861))

(declare-fun m!485863 () Bool)

(assert (=> b!505157 m!485863))

(declare-fun m!485865 () Bool)

(assert (=> b!505157 m!485865))

(assert (=> b!505157 m!485855))

(declare-fun m!485867 () Bool)

(assert (=> start!45732 m!485867))

(declare-fun m!485869 () Bool)

(assert (=> start!45732 m!485869))

(declare-fun m!485871 () Bool)

(assert (=> b!505153 m!485871))

(declare-fun m!485873 () Bool)

(assert (=> b!505156 m!485873))

(declare-fun m!485875 () Bool)

(assert (=> b!505156 m!485875))

(declare-fun m!485877 () Bool)

(assert (=> b!505154 m!485877))

(declare-fun m!485879 () Bool)

(assert (=> b!505150 m!485879))

(declare-fun m!485881 () Bool)

(assert (=> b!505150 m!485881))

(declare-fun m!485883 () Bool)

(assert (=> b!505150 m!485883))

(assert (=> b!505150 m!485855))

(declare-fun m!485885 () Bool)

(assert (=> b!505150 m!485885))

(declare-fun m!485887 () Bool)

(assert (=> b!505150 m!485887))

(assert (=> b!505150 m!485855))

(declare-fun m!485889 () Bool)

(assert (=> b!505150 m!485889))

(declare-fun m!485891 () Bool)

(assert (=> b!505150 m!485891))

(assert (=> b!505150 m!485855))

(declare-fun m!485893 () Bool)

(assert (=> b!505150 m!485893))

(declare-fun m!485895 () Bool)

(assert (=> b!505160 m!485895))

(check-sat (not b!505151) (not b!505159) (not b!505148) (not b!505153) (not b!505158) (not b!505146) (not b!505154) (not b!505160) (not b!505145) (not b!505157) (not b!505152) (not b!505150) (not start!45732) (not b!505156))
(check-sat)
