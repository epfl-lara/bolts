; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47788 () Bool)

(assert start!47788)

(declare-fun b!525943 () Bool)

(declare-datatypes ((Unit!16526 0))(
  ( (Unit!16527) )
))
(declare-fun e!306601 () Unit!16526)

(declare-fun Unit!16528 () Unit!16526)

(assert (=> b!525943 (= e!306601 Unit!16528)))

(declare-fun res!322764 () Bool)

(declare-fun e!306603 () Bool)

(assert (=> start!47788 (=> (not res!322764) (not e!306603))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47788 (= res!322764 (validMask!0 mask!3524))))

(assert (=> start!47788 e!306603))

(assert (=> start!47788 true))

(declare-datatypes ((array!33385 0))(
  ( (array!33386 (arr!16041 (Array (_ BitVec 32) (_ BitVec 64))) (size!16405 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33385)

(declare-fun array_inv!11815 (array!33385) Bool)

(assert (=> start!47788 (array_inv!11815 a!3235)))

(declare-fun b!525944 () Bool)

(declare-fun res!322760 () Bool)

(assert (=> b!525944 (=> (not res!322760) (not e!306603))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525944 (= res!322760 (validKeyInArray!0 k!2280))))

(declare-fun e!306602 () Bool)

(declare-fun b!525945 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4515 0))(
  ( (MissingZero!4515 (index!20272 (_ BitVec 32))) (Found!4515 (index!20273 (_ BitVec 32))) (Intermediate!4515 (undefined!5327 Bool) (index!20274 (_ BitVec 32)) (x!49275 (_ BitVec 32))) (Undefined!4515) (MissingVacant!4515 (index!20275 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33385 (_ BitVec 32)) SeekEntryResult!4515)

(assert (=> b!525945 (= e!306602 (= (seekEntryOrOpen!0 (select (arr!16041 a!3235) j!176) a!3235 mask!3524) (Found!4515 j!176)))))

(declare-fun b!525946 () Bool)

(declare-fun res!322758 () Bool)

(assert (=> b!525946 (=> (not res!322758) (not e!306603))))

(declare-fun arrayContainsKey!0 (array!33385 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525946 (= res!322758 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!525947 () Bool)

(declare-fun Unit!16529 () Unit!16526)

(assert (=> b!525947 (= e!306601 Unit!16529)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!241864 () SeekEntryResult!4515)

(declare-fun lt!241856 () (_ BitVec 32))

(declare-fun lt!241857 () Unit!16526)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33385 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16526)

(assert (=> b!525947 (= lt!241857 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241856 #b00000000000000000000000000000000 (index!20274 lt!241864) (x!49275 lt!241864) mask!3524))))

(declare-fun lt!241863 () array!33385)

(declare-fun res!322768 () Bool)

(declare-fun lt!241860 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33385 (_ BitVec 32)) SeekEntryResult!4515)

(assert (=> b!525947 (= res!322768 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241856 lt!241860 lt!241863 mask!3524) (Intermediate!4515 false (index!20274 lt!241864) (x!49275 lt!241864))))))

(declare-fun e!306604 () Bool)

(assert (=> b!525947 (=> (not res!322768) (not e!306604))))

(assert (=> b!525947 e!306604))

(declare-fun b!525948 () Bool)

(declare-fun res!322765 () Bool)

(assert (=> b!525948 (=> (not res!322765) (not e!306603))))

(assert (=> b!525948 (= res!322765 (and (= (size!16405 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16405 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16405 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525949 () Bool)

(declare-fun e!306607 () Bool)

(declare-fun e!306606 () Bool)

(assert (=> b!525949 (= e!306607 (not e!306606))))

(declare-fun res!322769 () Bool)

(assert (=> b!525949 (=> res!322769 e!306606)))

(declare-fun lt!241861 () (_ BitVec 32))

(assert (=> b!525949 (= res!322769 (= lt!241864 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241861 lt!241860 lt!241863 mask!3524)))))

(assert (=> b!525949 (= lt!241864 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241856 (select (arr!16041 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525949 (= lt!241861 (toIndex!0 lt!241860 mask!3524))))

(assert (=> b!525949 (= lt!241860 (select (store (arr!16041 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!525949 (= lt!241856 (toIndex!0 (select (arr!16041 a!3235) j!176) mask!3524))))

(assert (=> b!525949 (= lt!241863 (array!33386 (store (arr!16041 a!3235) i!1204 k!2280) (size!16405 a!3235)))))

(assert (=> b!525949 e!306602))

(declare-fun res!322767 () Bool)

(assert (=> b!525949 (=> (not res!322767) (not e!306602))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33385 (_ BitVec 32)) Bool)

(assert (=> b!525949 (= res!322767 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241859 () Unit!16526)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33385 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16526)

(assert (=> b!525949 (= lt!241859 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!525950 () Bool)

(declare-fun res!322759 () Bool)

(assert (=> b!525950 (=> (not res!322759) (not e!306603))))

(assert (=> b!525950 (= res!322759 (validKeyInArray!0 (select (arr!16041 a!3235) j!176)))))

(declare-fun b!525951 () Bool)

(declare-fun res!322762 () Bool)

(assert (=> b!525951 (=> (not res!322762) (not e!306607))))

(assert (=> b!525951 (= res!322762 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525952 () Bool)

(assert (=> b!525952 (= e!306604 false)))

(declare-fun b!525953 () Bool)

(assert (=> b!525953 (= e!306603 e!306607)))

(declare-fun res!322761 () Bool)

(assert (=> b!525953 (=> (not res!322761) (not e!306607))))

(declare-fun lt!241858 () SeekEntryResult!4515)

(assert (=> b!525953 (= res!322761 (or (= lt!241858 (MissingZero!4515 i!1204)) (= lt!241858 (MissingVacant!4515 i!1204))))))

(assert (=> b!525953 (= lt!241858 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!525954 () Bool)

(assert (=> b!525954 (= e!306606 true)))

(assert (=> b!525954 (= (index!20274 lt!241864) i!1204)))

(declare-fun lt!241865 () Unit!16526)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33385 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16526)

(assert (=> b!525954 (= lt!241865 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241856 #b00000000000000000000000000000000 (index!20274 lt!241864) (x!49275 lt!241864) mask!3524))))

(assert (=> b!525954 (and (or (= (select (arr!16041 a!3235) (index!20274 lt!241864)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16041 a!3235) (index!20274 lt!241864)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16041 a!3235) (index!20274 lt!241864)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16041 a!3235) (index!20274 lt!241864)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241862 () Unit!16526)

(assert (=> b!525954 (= lt!241862 e!306601)))

(declare-fun c!61898 () Bool)

(assert (=> b!525954 (= c!61898 (= (select (arr!16041 a!3235) (index!20274 lt!241864)) (select (arr!16041 a!3235) j!176)))))

(assert (=> b!525954 (and (bvslt (x!49275 lt!241864) #b01111111111111111111111111111110) (or (= (select (arr!16041 a!3235) (index!20274 lt!241864)) (select (arr!16041 a!3235) j!176)) (= (select (arr!16041 a!3235) (index!20274 lt!241864)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16041 a!3235) (index!20274 lt!241864)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!525955 () Bool)

(declare-fun res!322766 () Bool)

(assert (=> b!525955 (=> (not res!322766) (not e!306607))))

(declare-datatypes ((List!10252 0))(
  ( (Nil!10249) (Cons!10248 (h!11179 (_ BitVec 64)) (t!16488 List!10252)) )
))
(declare-fun arrayNoDuplicates!0 (array!33385 (_ BitVec 32) List!10252) Bool)

(assert (=> b!525955 (= res!322766 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10249))))

(declare-fun b!525956 () Bool)

(declare-fun res!322763 () Bool)

(assert (=> b!525956 (=> res!322763 e!306606)))

(assert (=> b!525956 (= res!322763 (or (undefined!5327 lt!241864) (not (is-Intermediate!4515 lt!241864))))))

(assert (= (and start!47788 res!322764) b!525948))

(assert (= (and b!525948 res!322765) b!525950))

(assert (= (and b!525950 res!322759) b!525944))

(assert (= (and b!525944 res!322760) b!525946))

(assert (= (and b!525946 res!322758) b!525953))

(assert (= (and b!525953 res!322761) b!525951))

(assert (= (and b!525951 res!322762) b!525955))

(assert (= (and b!525955 res!322766) b!525949))

(assert (= (and b!525949 res!322767) b!525945))

(assert (= (and b!525949 (not res!322769)) b!525956))

(assert (= (and b!525956 (not res!322763)) b!525954))

(assert (= (and b!525954 c!61898) b!525947))

(assert (= (and b!525954 (not c!61898)) b!525943))

(assert (= (and b!525947 res!322768) b!525952))

(declare-fun m!506671 () Bool)

(assert (=> b!525945 m!506671))

(assert (=> b!525945 m!506671))

(declare-fun m!506673 () Bool)

(assert (=> b!525945 m!506673))

(declare-fun m!506675 () Bool)

(assert (=> b!525944 m!506675))

(declare-fun m!506677 () Bool)

(assert (=> b!525951 m!506677))

(declare-fun m!506679 () Bool)

(assert (=> start!47788 m!506679))

(declare-fun m!506681 () Bool)

(assert (=> start!47788 m!506681))

(declare-fun m!506683 () Bool)

(assert (=> b!525947 m!506683))

(declare-fun m!506685 () Bool)

(assert (=> b!525947 m!506685))

(declare-fun m!506687 () Bool)

(assert (=> b!525953 m!506687))

(assert (=> b!525950 m!506671))

(assert (=> b!525950 m!506671))

(declare-fun m!506689 () Bool)

(assert (=> b!525950 m!506689))

(declare-fun m!506691 () Bool)

(assert (=> b!525946 m!506691))

(declare-fun m!506693 () Bool)

(assert (=> b!525955 m!506693))

(declare-fun m!506695 () Bool)

(assert (=> b!525949 m!506695))

(assert (=> b!525949 m!506671))

(declare-fun m!506697 () Bool)

(assert (=> b!525949 m!506697))

(declare-fun m!506699 () Bool)

(assert (=> b!525949 m!506699))

(declare-fun m!506701 () Bool)

(assert (=> b!525949 m!506701))

(declare-fun m!506703 () Bool)

(assert (=> b!525949 m!506703))

(declare-fun m!506705 () Bool)

(assert (=> b!525949 m!506705))

(assert (=> b!525949 m!506671))

(declare-fun m!506707 () Bool)

(assert (=> b!525949 m!506707))

(assert (=> b!525949 m!506671))

(declare-fun m!506709 () Bool)

(assert (=> b!525949 m!506709))

(declare-fun m!506711 () Bool)

(assert (=> b!525954 m!506711))

(declare-fun m!506713 () Bool)

(assert (=> b!525954 m!506713))

(assert (=> b!525954 m!506671))

(push 1)

