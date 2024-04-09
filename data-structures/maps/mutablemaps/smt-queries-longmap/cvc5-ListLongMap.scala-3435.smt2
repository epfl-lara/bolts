; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47740 () Bool)

(assert start!47740)

(declare-fun b!524935 () Bool)

(declare-fun res!321904 () Bool)

(declare-fun e!306097 () Bool)

(assert (=> b!524935 (=> (not res!321904) (not e!306097))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524935 (= res!321904 (validKeyInArray!0 k!2280))))

(declare-fun b!524936 () Bool)

(declare-fun e!306100 () Bool)

(assert (=> b!524936 (= e!306097 e!306100)))

(declare-fun res!321899 () Bool)

(assert (=> b!524936 (=> (not res!321899) (not e!306100))))

(declare-datatypes ((SeekEntryResult!4491 0))(
  ( (MissingZero!4491 (index!20176 (_ BitVec 32))) (Found!4491 (index!20177 (_ BitVec 32))) (Intermediate!4491 (undefined!5303 Bool) (index!20178 (_ BitVec 32)) (x!49187 (_ BitVec 32))) (Undefined!4491) (MissingVacant!4491 (index!20179 (_ BitVec 32))) )
))
(declare-fun lt!241144 () SeekEntryResult!4491)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!524936 (= res!321899 (or (= lt!241144 (MissingZero!4491 i!1204)) (= lt!241144 (MissingVacant!4491 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33337 0))(
  ( (array!33338 (arr!16017 (Array (_ BitVec 32) (_ BitVec 64))) (size!16381 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33337)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33337 (_ BitVec 32)) SeekEntryResult!4491)

(assert (=> b!524936 (= lt!241144 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!524937 () Bool)

(declare-fun res!321901 () Bool)

(assert (=> b!524937 (=> (not res!321901) (not e!306097))))

(declare-fun arrayContainsKey!0 (array!33337 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524937 (= res!321901 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!524938 () Bool)

(declare-fun res!321902 () Bool)

(assert (=> b!524938 (=> (not res!321902) (not e!306097))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!524938 (= res!321902 (and (= (size!16381 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16381 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16381 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!524939 () Bool)

(declare-datatypes ((Unit!16430 0))(
  ( (Unit!16431) )
))
(declare-fun e!306102 () Unit!16430)

(declare-fun Unit!16432 () Unit!16430)

(assert (=> b!524939 (= e!306102 Unit!16432)))

(declare-fun lt!241139 () (_ BitVec 32))

(declare-fun lt!241142 () Unit!16430)

(declare-fun lt!241136 () SeekEntryResult!4491)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33337 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16430)

(assert (=> b!524939 (= lt!241142 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241139 #b00000000000000000000000000000000 (index!20178 lt!241136) (x!49187 lt!241136) mask!3524))))

(declare-fun res!321903 () Bool)

(declare-fun lt!241143 () array!33337)

(declare-fun lt!241145 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33337 (_ BitVec 32)) SeekEntryResult!4491)

(assert (=> b!524939 (= res!321903 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241139 lt!241145 lt!241143 mask!3524) (Intermediate!4491 false (index!20178 lt!241136) (x!49187 lt!241136))))))

(declare-fun e!306099 () Bool)

(assert (=> b!524939 (=> (not res!321903) (not e!306099))))

(assert (=> b!524939 e!306099))

(declare-fun res!321898 () Bool)

(assert (=> start!47740 (=> (not res!321898) (not e!306097))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47740 (= res!321898 (validMask!0 mask!3524))))

(assert (=> start!47740 e!306097))

(assert (=> start!47740 true))

(declare-fun array_inv!11791 (array!33337) Bool)

(assert (=> start!47740 (array_inv!11791 a!3235)))

(declare-fun b!524940 () Bool)

(declare-fun e!306101 () Bool)

(assert (=> b!524940 (= e!306101 true)))

(assert (=> b!524940 (= (index!20178 lt!241136) i!1204)))

(declare-fun lt!241138 () Unit!16430)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33337 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16430)

(assert (=> b!524940 (= lt!241138 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241139 #b00000000000000000000000000000000 (index!20178 lt!241136) (x!49187 lt!241136) mask!3524))))

(assert (=> b!524940 (and (or (= (select (arr!16017 a!3235) (index!20178 lt!241136)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16017 a!3235) (index!20178 lt!241136)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16017 a!3235) (index!20178 lt!241136)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16017 a!3235) (index!20178 lt!241136)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241137 () Unit!16430)

(assert (=> b!524940 (= lt!241137 e!306102)))

(declare-fun c!61826 () Bool)

(assert (=> b!524940 (= c!61826 (= (select (arr!16017 a!3235) (index!20178 lt!241136)) (select (arr!16017 a!3235) j!176)))))

(assert (=> b!524940 (and (bvslt (x!49187 lt!241136) #b01111111111111111111111111111110) (or (= (select (arr!16017 a!3235) (index!20178 lt!241136)) (select (arr!16017 a!3235) j!176)) (= (select (arr!16017 a!3235) (index!20178 lt!241136)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16017 a!3235) (index!20178 lt!241136)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!524941 () Bool)

(assert (=> b!524941 (= e!306099 false)))

(declare-fun e!306103 () Bool)

(declare-fun b!524942 () Bool)

(assert (=> b!524942 (= e!306103 (= (seekEntryOrOpen!0 (select (arr!16017 a!3235) j!176) a!3235 mask!3524) (Found!4491 j!176)))))

(declare-fun b!524943 () Bool)

(declare-fun res!321894 () Bool)

(assert (=> b!524943 (=> (not res!321894) (not e!306100))))

(declare-datatypes ((List!10228 0))(
  ( (Nil!10225) (Cons!10224 (h!11155 (_ BitVec 64)) (t!16464 List!10228)) )
))
(declare-fun arrayNoDuplicates!0 (array!33337 (_ BitVec 32) List!10228) Bool)

(assert (=> b!524943 (= res!321894 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10225))))

(declare-fun b!524944 () Bool)

(declare-fun res!321905 () Bool)

(assert (=> b!524944 (=> res!321905 e!306101)))

(assert (=> b!524944 (= res!321905 (or (undefined!5303 lt!241136) (not (is-Intermediate!4491 lt!241136))))))

(declare-fun b!524945 () Bool)

(declare-fun Unit!16433 () Unit!16430)

(assert (=> b!524945 (= e!306102 Unit!16433)))

(declare-fun b!524946 () Bool)

(declare-fun res!321900 () Bool)

(assert (=> b!524946 (=> (not res!321900) (not e!306100))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33337 (_ BitVec 32)) Bool)

(assert (=> b!524946 (= res!321900 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!524947 () Bool)

(assert (=> b!524947 (= e!306100 (not e!306101))))

(declare-fun res!321895 () Bool)

(assert (=> b!524947 (=> res!321895 e!306101)))

(declare-fun lt!241140 () (_ BitVec 32))

(assert (=> b!524947 (= res!321895 (= lt!241136 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241140 lt!241145 lt!241143 mask!3524)))))

(assert (=> b!524947 (= lt!241136 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241139 (select (arr!16017 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524947 (= lt!241140 (toIndex!0 lt!241145 mask!3524))))

(assert (=> b!524947 (= lt!241145 (select (store (arr!16017 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!524947 (= lt!241139 (toIndex!0 (select (arr!16017 a!3235) j!176) mask!3524))))

(assert (=> b!524947 (= lt!241143 (array!33338 (store (arr!16017 a!3235) i!1204 k!2280) (size!16381 a!3235)))))

(assert (=> b!524947 e!306103))

(declare-fun res!321896 () Bool)

(assert (=> b!524947 (=> (not res!321896) (not e!306103))))

(assert (=> b!524947 (= res!321896 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241141 () Unit!16430)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33337 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16430)

(assert (=> b!524947 (= lt!241141 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!524948 () Bool)

(declare-fun res!321897 () Bool)

(assert (=> b!524948 (=> (not res!321897) (not e!306097))))

(assert (=> b!524948 (= res!321897 (validKeyInArray!0 (select (arr!16017 a!3235) j!176)))))

(assert (= (and start!47740 res!321898) b!524938))

(assert (= (and b!524938 res!321902) b!524948))

(assert (= (and b!524948 res!321897) b!524935))

(assert (= (and b!524935 res!321904) b!524937))

(assert (= (and b!524937 res!321901) b!524936))

(assert (= (and b!524936 res!321899) b!524946))

(assert (= (and b!524946 res!321900) b!524943))

(assert (= (and b!524943 res!321894) b!524947))

(assert (= (and b!524947 res!321896) b!524942))

(assert (= (and b!524947 (not res!321895)) b!524944))

(assert (= (and b!524944 (not res!321905)) b!524940))

(assert (= (and b!524940 c!61826) b!524939))

(assert (= (and b!524940 (not c!61826)) b!524945))

(assert (= (and b!524939 res!321903) b!524941))

(declare-fun m!505615 () Bool)

(assert (=> b!524947 m!505615))

(declare-fun m!505617 () Bool)

(assert (=> b!524947 m!505617))

(declare-fun m!505619 () Bool)

(assert (=> b!524947 m!505619))

(declare-fun m!505621 () Bool)

(assert (=> b!524947 m!505621))

(declare-fun m!505623 () Bool)

(assert (=> b!524947 m!505623))

(declare-fun m!505625 () Bool)

(assert (=> b!524947 m!505625))

(declare-fun m!505627 () Bool)

(assert (=> b!524947 m!505627))

(assert (=> b!524947 m!505625))

(declare-fun m!505629 () Bool)

(assert (=> b!524947 m!505629))

(assert (=> b!524947 m!505625))

(declare-fun m!505631 () Bool)

(assert (=> b!524947 m!505631))

(declare-fun m!505633 () Bool)

(assert (=> b!524935 m!505633))

(declare-fun m!505635 () Bool)

(assert (=> b!524943 m!505635))

(declare-fun m!505637 () Bool)

(assert (=> b!524936 m!505637))

(assert (=> b!524948 m!505625))

(assert (=> b!524948 m!505625))

(declare-fun m!505639 () Bool)

(assert (=> b!524948 m!505639))

(declare-fun m!505641 () Bool)

(assert (=> b!524940 m!505641))

(declare-fun m!505643 () Bool)

(assert (=> b!524940 m!505643))

(assert (=> b!524940 m!505625))

(assert (=> b!524942 m!505625))

(assert (=> b!524942 m!505625))

(declare-fun m!505645 () Bool)

(assert (=> b!524942 m!505645))

(declare-fun m!505647 () Bool)

(assert (=> b!524939 m!505647))

(declare-fun m!505649 () Bool)

(assert (=> b!524939 m!505649))

(declare-fun m!505651 () Bool)

(assert (=> b!524937 m!505651))

(declare-fun m!505653 () Bool)

(assert (=> start!47740 m!505653))

(declare-fun m!505655 () Bool)

(assert (=> start!47740 m!505655))

(declare-fun m!505657 () Bool)

(assert (=> b!524946 m!505657))

(push 1)

