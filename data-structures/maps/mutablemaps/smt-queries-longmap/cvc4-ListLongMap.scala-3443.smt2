; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47792 () Bool)

(assert start!47792)

(declare-fun b!526027 () Bool)

(declare-fun res!322832 () Bool)

(declare-fun e!306643 () Bool)

(assert (=> b!526027 (=> (not res!322832) (not e!306643))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33389 0))(
  ( (array!33390 (arr!16043 (Array (_ BitVec 32) (_ BitVec 64))) (size!16407 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33389)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!526027 (= res!322832 (and (= (size!16407 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16407 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16407 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!526028 () Bool)

(declare-datatypes ((Unit!16534 0))(
  ( (Unit!16535) )
))
(declare-fun e!306646 () Unit!16534)

(declare-fun Unit!16536 () Unit!16534)

(assert (=> b!526028 (= e!306646 Unit!16536)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun lt!241922 () Unit!16534)

(declare-datatypes ((SeekEntryResult!4517 0))(
  ( (MissingZero!4517 (index!20280 (_ BitVec 32))) (Found!4517 (index!20281 (_ BitVec 32))) (Intermediate!4517 (undefined!5329 Bool) (index!20282 (_ BitVec 32)) (x!49277 (_ BitVec 32))) (Undefined!4517) (MissingVacant!4517 (index!20283 (_ BitVec 32))) )
))
(declare-fun lt!241923 () SeekEntryResult!4517)

(declare-fun lt!241917 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33389 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16534)

(assert (=> b!526028 (= lt!241922 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241917 #b00000000000000000000000000000000 (index!20282 lt!241923) (x!49277 lt!241923) mask!3524))))

(declare-fun res!322830 () Bool)

(declare-fun lt!241919 () (_ BitVec 64))

(declare-fun lt!241925 () array!33389)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33389 (_ BitVec 32)) SeekEntryResult!4517)

(assert (=> b!526028 (= res!322830 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241917 lt!241919 lt!241925 mask!3524) (Intermediate!4517 false (index!20282 lt!241923) (x!49277 lt!241923))))))

(declare-fun e!306644 () Bool)

(assert (=> b!526028 (=> (not res!322830) (not e!306644))))

(assert (=> b!526028 e!306644))

(declare-fun b!526029 () Bool)

(declare-fun e!306649 () Bool)

(declare-fun e!306645 () Bool)

(assert (=> b!526029 (= e!306649 (not e!306645))))

(declare-fun res!322839 () Bool)

(assert (=> b!526029 (=> res!322839 e!306645)))

(declare-fun lt!241918 () (_ BitVec 32))

(assert (=> b!526029 (= res!322839 (= lt!241923 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241918 lt!241919 lt!241925 mask!3524)))))

(assert (=> b!526029 (= lt!241923 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241917 (select (arr!16043 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526029 (= lt!241918 (toIndex!0 lt!241919 mask!3524))))

(assert (=> b!526029 (= lt!241919 (select (store (arr!16043 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!526029 (= lt!241917 (toIndex!0 (select (arr!16043 a!3235) j!176) mask!3524))))

(assert (=> b!526029 (= lt!241925 (array!33390 (store (arr!16043 a!3235) i!1204 k!2280) (size!16407 a!3235)))))

(declare-fun e!306647 () Bool)

(assert (=> b!526029 e!306647))

(declare-fun res!322833 () Bool)

(assert (=> b!526029 (=> (not res!322833) (not e!306647))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33389 (_ BitVec 32)) Bool)

(assert (=> b!526029 (= res!322833 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241916 () Unit!16534)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33389 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16534)

(assert (=> b!526029 (= lt!241916 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!526030 () Bool)

(declare-fun res!322841 () Bool)

(assert (=> b!526030 (=> (not res!322841) (not e!306643))))

(declare-fun arrayContainsKey!0 (array!33389 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!526030 (= res!322841 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!526031 () Bool)

(declare-fun res!322831 () Bool)

(assert (=> b!526031 (=> (not res!322831) (not e!306643))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!526031 (= res!322831 (validKeyInArray!0 (select (arr!16043 a!3235) j!176)))))

(declare-fun b!526032 () Bool)

(assert (=> b!526032 (= e!306645 true)))

(assert (=> b!526032 (= (index!20282 lt!241923) i!1204)))

(declare-fun lt!241924 () Unit!16534)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33389 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16534)

(assert (=> b!526032 (= lt!241924 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241917 #b00000000000000000000000000000000 (index!20282 lt!241923) (x!49277 lt!241923) mask!3524))))

(assert (=> b!526032 (and (or (= (select (arr!16043 a!3235) (index!20282 lt!241923)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16043 a!3235) (index!20282 lt!241923)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16043 a!3235) (index!20282 lt!241923)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16043 a!3235) (index!20282 lt!241923)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241920 () Unit!16534)

(assert (=> b!526032 (= lt!241920 e!306646)))

(declare-fun c!61904 () Bool)

(assert (=> b!526032 (= c!61904 (= (select (arr!16043 a!3235) (index!20282 lt!241923)) (select (arr!16043 a!3235) j!176)))))

(assert (=> b!526032 (and (bvslt (x!49277 lt!241923) #b01111111111111111111111111111110) (or (= (select (arr!16043 a!3235) (index!20282 lt!241923)) (select (arr!16043 a!3235) j!176)) (= (select (arr!16043 a!3235) (index!20282 lt!241923)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16043 a!3235) (index!20282 lt!241923)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!526033 () Bool)

(declare-fun res!322840 () Bool)

(assert (=> b!526033 (=> (not res!322840) (not e!306643))))

(assert (=> b!526033 (= res!322840 (validKeyInArray!0 k!2280))))

(declare-fun b!526034 () Bool)

(declare-fun res!322836 () Bool)

(assert (=> b!526034 (=> (not res!322836) (not e!306649))))

(declare-datatypes ((List!10254 0))(
  ( (Nil!10251) (Cons!10250 (h!11181 (_ BitVec 64)) (t!16490 List!10254)) )
))
(declare-fun arrayNoDuplicates!0 (array!33389 (_ BitVec 32) List!10254) Bool)

(assert (=> b!526034 (= res!322836 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10251))))

(declare-fun res!322838 () Bool)

(assert (=> start!47792 (=> (not res!322838) (not e!306643))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47792 (= res!322838 (validMask!0 mask!3524))))

(assert (=> start!47792 e!306643))

(assert (=> start!47792 true))

(declare-fun array_inv!11817 (array!33389) Bool)

(assert (=> start!47792 (array_inv!11817 a!3235)))

(declare-fun b!526035 () Bool)

(assert (=> b!526035 (= e!306643 e!306649)))

(declare-fun res!322837 () Bool)

(assert (=> b!526035 (=> (not res!322837) (not e!306649))))

(declare-fun lt!241921 () SeekEntryResult!4517)

(assert (=> b!526035 (= res!322837 (or (= lt!241921 (MissingZero!4517 i!1204)) (= lt!241921 (MissingVacant!4517 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33389 (_ BitVec 32)) SeekEntryResult!4517)

(assert (=> b!526035 (= lt!241921 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!526036 () Bool)

(assert (=> b!526036 (= e!306647 (= (seekEntryOrOpen!0 (select (arr!16043 a!3235) j!176) a!3235 mask!3524) (Found!4517 j!176)))))

(declare-fun b!526037 () Bool)

(declare-fun res!322834 () Bool)

(assert (=> b!526037 (=> res!322834 e!306645)))

(assert (=> b!526037 (= res!322834 (or (undefined!5329 lt!241923) (not (is-Intermediate!4517 lt!241923))))))

(declare-fun b!526038 () Bool)

(assert (=> b!526038 (= e!306644 false)))

(declare-fun b!526039 () Bool)

(declare-fun Unit!16537 () Unit!16534)

(assert (=> b!526039 (= e!306646 Unit!16537)))

(declare-fun b!526040 () Bool)

(declare-fun res!322835 () Bool)

(assert (=> b!526040 (=> (not res!322835) (not e!306649))))

(assert (=> b!526040 (= res!322835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!47792 res!322838) b!526027))

(assert (= (and b!526027 res!322832) b!526031))

(assert (= (and b!526031 res!322831) b!526033))

(assert (= (and b!526033 res!322840) b!526030))

(assert (= (and b!526030 res!322841) b!526035))

(assert (= (and b!526035 res!322837) b!526040))

(assert (= (and b!526040 res!322835) b!526034))

(assert (= (and b!526034 res!322836) b!526029))

(assert (= (and b!526029 res!322833) b!526036))

(assert (= (and b!526029 (not res!322839)) b!526037))

(assert (= (and b!526037 (not res!322834)) b!526032))

(assert (= (and b!526032 c!61904) b!526028))

(assert (= (and b!526032 (not c!61904)) b!526039))

(assert (= (and b!526028 res!322830) b!526038))

(declare-fun m!506759 () Bool)

(assert (=> b!526035 m!506759))

(declare-fun m!506761 () Bool)

(assert (=> b!526034 m!506761))

(declare-fun m!506763 () Bool)

(assert (=> b!526036 m!506763))

(assert (=> b!526036 m!506763))

(declare-fun m!506765 () Bool)

(assert (=> b!526036 m!506765))

(declare-fun m!506767 () Bool)

(assert (=> b!526033 m!506767))

(declare-fun m!506769 () Bool)

(assert (=> b!526028 m!506769))

(declare-fun m!506771 () Bool)

(assert (=> b!526028 m!506771))

(declare-fun m!506773 () Bool)

(assert (=> b!526030 m!506773))

(declare-fun m!506775 () Bool)

(assert (=> start!47792 m!506775))

(declare-fun m!506777 () Bool)

(assert (=> start!47792 m!506777))

(assert (=> b!526031 m!506763))

(assert (=> b!526031 m!506763))

(declare-fun m!506779 () Bool)

(assert (=> b!526031 m!506779))

(declare-fun m!506781 () Bool)

(assert (=> b!526032 m!506781))

(declare-fun m!506783 () Bool)

(assert (=> b!526032 m!506783))

(assert (=> b!526032 m!506763))

(declare-fun m!506785 () Bool)

(assert (=> b!526040 m!506785))

(declare-fun m!506787 () Bool)

(assert (=> b!526029 m!506787))

(declare-fun m!506789 () Bool)

(assert (=> b!526029 m!506789))

(declare-fun m!506791 () Bool)

(assert (=> b!526029 m!506791))

(declare-fun m!506793 () Bool)

(assert (=> b!526029 m!506793))

(assert (=> b!526029 m!506763))

(declare-fun m!506795 () Bool)

(assert (=> b!526029 m!506795))

(assert (=> b!526029 m!506763))

(assert (=> b!526029 m!506763))

(declare-fun m!506797 () Bool)

(assert (=> b!526029 m!506797))

(declare-fun m!506799 () Bool)

(assert (=> b!526029 m!506799))

(declare-fun m!506801 () Bool)

(assert (=> b!526029 m!506801))

(push 1)

