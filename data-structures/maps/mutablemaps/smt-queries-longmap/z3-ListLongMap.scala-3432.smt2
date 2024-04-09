; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47724 () Bool)

(assert start!47724)

(declare-fun b!524599 () Bool)

(declare-fun res!321615 () Bool)

(declare-fun e!305929 () Bool)

(assert (=> b!524599 (=> (not res!321615) (not e!305929))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33321 0))(
  ( (array!33322 (arr!16009 (Array (_ BitVec 32) (_ BitVec 64))) (size!16373 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33321)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!524599 (= res!321615 (and (= (size!16373 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16373 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16373 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!524600 () Bool)

(declare-fun e!305933 () Bool)

(assert (=> b!524600 (= e!305933 true)))

(declare-datatypes ((SeekEntryResult!4483 0))(
  ( (MissingZero!4483 (index!20144 (_ BitVec 32))) (Found!4483 (index!20145 (_ BitVec 32))) (Intermediate!4483 (undefined!5295 Bool) (index!20146 (_ BitVec 32)) (x!49155 (_ BitVec 32))) (Undefined!4483) (MissingVacant!4483 (index!20147 (_ BitVec 32))) )
))
(declare-fun lt!240902 () SeekEntryResult!4483)

(assert (=> b!524600 (= (index!20146 lt!240902) i!1204)))

(declare-datatypes ((Unit!16398 0))(
  ( (Unit!16399) )
))
(declare-fun lt!240899 () Unit!16398)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun lt!240903 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33321 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16398)

(assert (=> b!524600 (= lt!240899 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!240903 #b00000000000000000000000000000000 (index!20146 lt!240902) (x!49155 lt!240902) mask!3524))))

(assert (=> b!524600 (and (or (= (select (arr!16009 a!3235) (index!20146 lt!240902)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16009 a!3235) (index!20146 lt!240902)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16009 a!3235) (index!20146 lt!240902)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16009 a!3235) (index!20146 lt!240902)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!240897 () Unit!16398)

(declare-fun e!305932 () Unit!16398)

(assert (=> b!524600 (= lt!240897 e!305932)))

(declare-fun c!61802 () Bool)

(assert (=> b!524600 (= c!61802 (= (select (arr!16009 a!3235) (index!20146 lt!240902)) (select (arr!16009 a!3235) j!176)))))

(assert (=> b!524600 (and (bvslt (x!49155 lt!240902) #b01111111111111111111111111111110) (or (= (select (arr!16009 a!3235) (index!20146 lt!240902)) (select (arr!16009 a!3235) j!176)) (= (select (arr!16009 a!3235) (index!20146 lt!240902)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16009 a!3235) (index!20146 lt!240902)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!524601 () Bool)

(declare-fun e!305934 () Bool)

(assert (=> b!524601 (= e!305934 (not e!305933))))

(declare-fun res!321607 () Bool)

(assert (=> b!524601 (=> res!321607 e!305933)))

(declare-fun lt!240898 () (_ BitVec 64))

(declare-fun lt!240896 () array!33321)

(declare-fun lt!240901 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33321 (_ BitVec 32)) SeekEntryResult!4483)

(assert (=> b!524601 (= res!321607 (= lt!240902 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240901 lt!240898 lt!240896 mask!3524)))))

(assert (=> b!524601 (= lt!240902 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240903 (select (arr!16009 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524601 (= lt!240901 (toIndex!0 lt!240898 mask!3524))))

(assert (=> b!524601 (= lt!240898 (select (store (arr!16009 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!524601 (= lt!240903 (toIndex!0 (select (arr!16009 a!3235) j!176) mask!3524))))

(assert (=> b!524601 (= lt!240896 (array!33322 (store (arr!16009 a!3235) i!1204 k0!2280) (size!16373 a!3235)))))

(declare-fun e!305935 () Bool)

(assert (=> b!524601 e!305935))

(declare-fun res!321610 () Bool)

(assert (=> b!524601 (=> (not res!321610) (not e!305935))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33321 (_ BitVec 32)) Bool)

(assert (=> b!524601 (= res!321610 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!240905 () Unit!16398)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33321 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16398)

(assert (=> b!524601 (= lt!240905 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!524602 () Bool)

(assert (=> b!524602 (= e!305929 e!305934)))

(declare-fun res!321614 () Bool)

(assert (=> b!524602 (=> (not res!321614) (not e!305934))))

(declare-fun lt!240900 () SeekEntryResult!4483)

(assert (=> b!524602 (= res!321614 (or (= lt!240900 (MissingZero!4483 i!1204)) (= lt!240900 (MissingVacant!4483 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33321 (_ BitVec 32)) SeekEntryResult!4483)

(assert (=> b!524602 (= lt!240900 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!524603 () Bool)

(declare-fun Unit!16400 () Unit!16398)

(assert (=> b!524603 (= e!305932 Unit!16400)))

(declare-fun lt!240904 () Unit!16398)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33321 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16398)

(assert (=> b!524603 (= lt!240904 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!240903 #b00000000000000000000000000000000 (index!20146 lt!240902) (x!49155 lt!240902) mask!3524))))

(declare-fun res!321608 () Bool)

(assert (=> b!524603 (= res!321608 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240903 lt!240898 lt!240896 mask!3524) (Intermediate!4483 false (index!20146 lt!240902) (x!49155 lt!240902))))))

(declare-fun e!305931 () Bool)

(assert (=> b!524603 (=> (not res!321608) (not e!305931))))

(assert (=> b!524603 e!305931))

(declare-fun b!524604 () Bool)

(declare-fun res!321611 () Bool)

(assert (=> b!524604 (=> (not res!321611) (not e!305929))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524604 (= res!321611 (validKeyInArray!0 k0!2280))))

(declare-fun b!524605 () Bool)

(assert (=> b!524605 (= e!305935 (= (seekEntryOrOpen!0 (select (arr!16009 a!3235) j!176) a!3235 mask!3524) (Found!4483 j!176)))))

(declare-fun b!524606 () Bool)

(declare-fun res!321617 () Bool)

(assert (=> b!524606 (=> (not res!321617) (not e!305934))))

(declare-datatypes ((List!10220 0))(
  ( (Nil!10217) (Cons!10216 (h!11147 (_ BitVec 64)) (t!16456 List!10220)) )
))
(declare-fun arrayNoDuplicates!0 (array!33321 (_ BitVec 32) List!10220) Bool)

(assert (=> b!524606 (= res!321617 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10217))))

(declare-fun b!524607 () Bool)

(declare-fun Unit!16401 () Unit!16398)

(assert (=> b!524607 (= e!305932 Unit!16401)))

(declare-fun b!524608 () Bool)

(assert (=> b!524608 (= e!305931 false)))

(declare-fun b!524609 () Bool)

(declare-fun res!321612 () Bool)

(assert (=> b!524609 (=> res!321612 e!305933)))

(get-info :version)

(assert (=> b!524609 (= res!321612 (or (undefined!5295 lt!240902) (not ((_ is Intermediate!4483) lt!240902))))))

(declare-fun res!321616 () Bool)

(assert (=> start!47724 (=> (not res!321616) (not e!305929))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47724 (= res!321616 (validMask!0 mask!3524))))

(assert (=> start!47724 e!305929))

(assert (=> start!47724 true))

(declare-fun array_inv!11783 (array!33321) Bool)

(assert (=> start!47724 (array_inv!11783 a!3235)))

(declare-fun b!524610 () Bool)

(declare-fun res!321613 () Bool)

(assert (=> b!524610 (=> (not res!321613) (not e!305929))))

(declare-fun arrayContainsKey!0 (array!33321 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524610 (= res!321613 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!524611 () Bool)

(declare-fun res!321609 () Bool)

(assert (=> b!524611 (=> (not res!321609) (not e!305934))))

(assert (=> b!524611 (= res!321609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!524612 () Bool)

(declare-fun res!321606 () Bool)

(assert (=> b!524612 (=> (not res!321606) (not e!305929))))

(assert (=> b!524612 (= res!321606 (validKeyInArray!0 (select (arr!16009 a!3235) j!176)))))

(assert (= (and start!47724 res!321616) b!524599))

(assert (= (and b!524599 res!321615) b!524612))

(assert (= (and b!524612 res!321606) b!524604))

(assert (= (and b!524604 res!321611) b!524610))

(assert (= (and b!524610 res!321613) b!524602))

(assert (= (and b!524602 res!321614) b!524611))

(assert (= (and b!524611 res!321609) b!524606))

(assert (= (and b!524606 res!321617) b!524601))

(assert (= (and b!524601 res!321610) b!524605))

(assert (= (and b!524601 (not res!321607)) b!524609))

(assert (= (and b!524609 (not res!321612)) b!524600))

(assert (= (and b!524600 c!61802) b!524603))

(assert (= (and b!524600 (not c!61802)) b!524607))

(assert (= (and b!524603 res!321608) b!524608))

(declare-fun m!505263 () Bool)

(assert (=> b!524610 m!505263))

(declare-fun m!505265 () Bool)

(assert (=> b!524600 m!505265))

(declare-fun m!505267 () Bool)

(assert (=> b!524600 m!505267))

(declare-fun m!505269 () Bool)

(assert (=> b!524600 m!505269))

(declare-fun m!505271 () Bool)

(assert (=> b!524606 m!505271))

(declare-fun m!505273 () Bool)

(assert (=> b!524604 m!505273))

(declare-fun m!505275 () Bool)

(assert (=> b!524603 m!505275))

(declare-fun m!505277 () Bool)

(assert (=> b!524603 m!505277))

(assert (=> b!524612 m!505269))

(assert (=> b!524612 m!505269))

(declare-fun m!505279 () Bool)

(assert (=> b!524612 m!505279))

(declare-fun m!505281 () Bool)

(assert (=> b!524602 m!505281))

(assert (=> b!524605 m!505269))

(assert (=> b!524605 m!505269))

(declare-fun m!505283 () Bool)

(assert (=> b!524605 m!505283))

(assert (=> b!524601 m!505269))

(declare-fun m!505285 () Bool)

(assert (=> b!524601 m!505285))

(declare-fun m!505287 () Bool)

(assert (=> b!524601 m!505287))

(declare-fun m!505289 () Bool)

(assert (=> b!524601 m!505289))

(declare-fun m!505291 () Bool)

(assert (=> b!524601 m!505291))

(assert (=> b!524601 m!505269))

(declare-fun m!505293 () Bool)

(assert (=> b!524601 m!505293))

(declare-fun m!505295 () Bool)

(assert (=> b!524601 m!505295))

(declare-fun m!505297 () Bool)

(assert (=> b!524601 m!505297))

(declare-fun m!505299 () Bool)

(assert (=> b!524601 m!505299))

(assert (=> b!524601 m!505269))

(declare-fun m!505301 () Bool)

(assert (=> b!524611 m!505301))

(declare-fun m!505303 () Bool)

(assert (=> start!47724 m!505303))

(declare-fun m!505305 () Bool)

(assert (=> start!47724 m!505305))

(check-sat (not b!524606) (not b!524603) (not b!524602) (not b!524600) (not b!524604) (not b!524605) (not start!47724) (not b!524612) (not b!524601) (not b!524611) (not b!524610))
(check-sat)
