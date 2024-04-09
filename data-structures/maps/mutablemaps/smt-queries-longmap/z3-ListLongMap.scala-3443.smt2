; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47790 () Bool)

(assert start!47790)

(declare-fun b!525985 () Bool)

(declare-fun res!322801 () Bool)

(declare-fun e!306623 () Bool)

(assert (=> b!525985 (=> (not res!322801) (not e!306623))))

(declare-datatypes ((array!33387 0))(
  ( (array!33388 (arr!16042 (Array (_ BitVec 32) (_ BitVec 64))) (size!16406 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33387)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33387 (_ BitVec 32)) Bool)

(assert (=> b!525985 (= res!322801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525986 () Bool)

(declare-fun res!322797 () Bool)

(declare-fun e!306626 () Bool)

(assert (=> b!525986 (=> (not res!322797) (not e!306626))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33387 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525986 (= res!322797 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!525987 () Bool)

(declare-fun res!322798 () Bool)

(assert (=> b!525987 (=> (not res!322798) (not e!306626))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525987 (= res!322798 (validKeyInArray!0 (select (arr!16042 a!3235) j!176)))))

(declare-fun res!322794 () Bool)

(assert (=> start!47790 (=> (not res!322794) (not e!306626))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47790 (= res!322794 (validMask!0 mask!3524))))

(assert (=> start!47790 e!306626))

(assert (=> start!47790 true))

(declare-fun array_inv!11816 (array!33387) Bool)

(assert (=> start!47790 (array_inv!11816 a!3235)))

(declare-fun b!525988 () Bool)

(declare-fun res!322804 () Bool)

(assert (=> b!525988 (=> (not res!322804) (not e!306623))))

(declare-datatypes ((List!10253 0))(
  ( (Nil!10250) (Cons!10249 (h!11180 (_ BitVec 64)) (t!16489 List!10253)) )
))
(declare-fun arrayNoDuplicates!0 (array!33387 (_ BitVec 32) List!10253) Bool)

(assert (=> b!525988 (= res!322804 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10250))))

(declare-fun b!525989 () Bool)

(declare-fun e!306627 () Bool)

(assert (=> b!525989 (= e!306627 true)))

(declare-datatypes ((SeekEntryResult!4516 0))(
  ( (MissingZero!4516 (index!20276 (_ BitVec 32))) (Found!4516 (index!20277 (_ BitVec 32))) (Intermediate!4516 (undefined!5328 Bool) (index!20278 (_ BitVec 32)) (x!49276 (_ BitVec 32))) (Undefined!4516) (MissingVacant!4516 (index!20279 (_ BitVec 32))) )
))
(declare-fun lt!241886 () SeekEntryResult!4516)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!525989 (= (index!20278 lt!241886) i!1204)))

(declare-fun lt!241894 () (_ BitVec 32))

(declare-datatypes ((Unit!16530 0))(
  ( (Unit!16531) )
))
(declare-fun lt!241892 () Unit!16530)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33387 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16530)

(assert (=> b!525989 (= lt!241892 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!241894 #b00000000000000000000000000000000 (index!20278 lt!241886) (x!49276 lt!241886) mask!3524))))

(assert (=> b!525989 (and (or (= (select (arr!16042 a!3235) (index!20278 lt!241886)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16042 a!3235) (index!20278 lt!241886)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16042 a!3235) (index!20278 lt!241886)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16042 a!3235) (index!20278 lt!241886)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241887 () Unit!16530)

(declare-fun e!306628 () Unit!16530)

(assert (=> b!525989 (= lt!241887 e!306628)))

(declare-fun c!61901 () Bool)

(assert (=> b!525989 (= c!61901 (= (select (arr!16042 a!3235) (index!20278 lt!241886)) (select (arr!16042 a!3235) j!176)))))

(assert (=> b!525989 (and (bvslt (x!49276 lt!241886) #b01111111111111111111111111111110) (or (= (select (arr!16042 a!3235) (index!20278 lt!241886)) (select (arr!16042 a!3235) j!176)) (= (select (arr!16042 a!3235) (index!20278 lt!241886)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16042 a!3235) (index!20278 lt!241886)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!525990 () Bool)

(declare-fun res!322799 () Bool)

(assert (=> b!525990 (=> (not res!322799) (not e!306626))))

(assert (=> b!525990 (= res!322799 (and (= (size!16406 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16406 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16406 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525991 () Bool)

(declare-fun res!322796 () Bool)

(assert (=> b!525991 (=> (not res!322796) (not e!306626))))

(assert (=> b!525991 (= res!322796 (validKeyInArray!0 k0!2280))))

(declare-fun b!525992 () Bool)

(declare-fun Unit!16532 () Unit!16530)

(assert (=> b!525992 (= e!306628 Unit!16532)))

(declare-fun lt!241893 () Unit!16530)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33387 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16530)

(assert (=> b!525992 (= lt!241893 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!241894 #b00000000000000000000000000000000 (index!20278 lt!241886) (x!49276 lt!241886) mask!3524))))

(declare-fun lt!241895 () (_ BitVec 64))

(declare-fun res!322805 () Bool)

(declare-fun lt!241890 () array!33387)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33387 (_ BitVec 32)) SeekEntryResult!4516)

(assert (=> b!525992 (= res!322805 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241894 lt!241895 lt!241890 mask!3524) (Intermediate!4516 false (index!20278 lt!241886) (x!49276 lt!241886))))))

(declare-fun e!306624 () Bool)

(assert (=> b!525992 (=> (not res!322805) (not e!306624))))

(assert (=> b!525992 e!306624))

(declare-fun b!525993 () Bool)

(declare-fun res!322803 () Bool)

(assert (=> b!525993 (=> res!322803 e!306627)))

(get-info :version)

(assert (=> b!525993 (= res!322803 (or (undefined!5328 lt!241886) (not ((_ is Intermediate!4516) lt!241886))))))

(declare-fun b!525994 () Bool)

(declare-fun Unit!16533 () Unit!16530)

(assert (=> b!525994 (= e!306628 Unit!16533)))

(declare-fun b!525995 () Bool)

(assert (=> b!525995 (= e!306623 (not e!306627))))

(declare-fun res!322800 () Bool)

(assert (=> b!525995 (=> res!322800 e!306627)))

(declare-fun lt!241891 () (_ BitVec 32))

(assert (=> b!525995 (= res!322800 (= lt!241886 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241891 lt!241895 lt!241890 mask!3524)))))

(assert (=> b!525995 (= lt!241886 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241894 (select (arr!16042 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525995 (= lt!241891 (toIndex!0 lt!241895 mask!3524))))

(assert (=> b!525995 (= lt!241895 (select (store (arr!16042 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!525995 (= lt!241894 (toIndex!0 (select (arr!16042 a!3235) j!176) mask!3524))))

(assert (=> b!525995 (= lt!241890 (array!33388 (store (arr!16042 a!3235) i!1204 k0!2280) (size!16406 a!3235)))))

(declare-fun e!306625 () Bool)

(assert (=> b!525995 e!306625))

(declare-fun res!322795 () Bool)

(assert (=> b!525995 (=> (not res!322795) (not e!306625))))

(assert (=> b!525995 (= res!322795 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241888 () Unit!16530)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33387 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16530)

(assert (=> b!525995 (= lt!241888 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!525996 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33387 (_ BitVec 32)) SeekEntryResult!4516)

(assert (=> b!525996 (= e!306625 (= (seekEntryOrOpen!0 (select (arr!16042 a!3235) j!176) a!3235 mask!3524) (Found!4516 j!176)))))

(declare-fun b!525997 () Bool)

(assert (=> b!525997 (= e!306626 e!306623)))

(declare-fun res!322802 () Bool)

(assert (=> b!525997 (=> (not res!322802) (not e!306623))))

(declare-fun lt!241889 () SeekEntryResult!4516)

(assert (=> b!525997 (= res!322802 (or (= lt!241889 (MissingZero!4516 i!1204)) (= lt!241889 (MissingVacant!4516 i!1204))))))

(assert (=> b!525997 (= lt!241889 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!525998 () Bool)

(assert (=> b!525998 (= e!306624 false)))

(assert (= (and start!47790 res!322794) b!525990))

(assert (= (and b!525990 res!322799) b!525987))

(assert (= (and b!525987 res!322798) b!525991))

(assert (= (and b!525991 res!322796) b!525986))

(assert (= (and b!525986 res!322797) b!525997))

(assert (= (and b!525997 res!322802) b!525985))

(assert (= (and b!525985 res!322801) b!525988))

(assert (= (and b!525988 res!322804) b!525995))

(assert (= (and b!525995 res!322795) b!525996))

(assert (= (and b!525995 (not res!322800)) b!525993))

(assert (= (and b!525993 (not res!322803)) b!525989))

(assert (= (and b!525989 c!61901) b!525992))

(assert (= (and b!525989 (not c!61901)) b!525994))

(assert (= (and b!525992 res!322805) b!525998))

(declare-fun m!506715 () Bool)

(assert (=> b!525991 m!506715))

(declare-fun m!506717 () Bool)

(assert (=> b!525985 m!506717))

(declare-fun m!506719 () Bool)

(assert (=> b!525987 m!506719))

(assert (=> b!525987 m!506719))

(declare-fun m!506721 () Bool)

(assert (=> b!525987 m!506721))

(assert (=> b!525996 m!506719))

(assert (=> b!525996 m!506719))

(declare-fun m!506723 () Bool)

(assert (=> b!525996 m!506723))

(declare-fun m!506725 () Bool)

(assert (=> b!525988 m!506725))

(declare-fun m!506727 () Bool)

(assert (=> b!525986 m!506727))

(declare-fun m!506729 () Bool)

(assert (=> b!525989 m!506729))

(declare-fun m!506731 () Bool)

(assert (=> b!525989 m!506731))

(assert (=> b!525989 m!506719))

(declare-fun m!506733 () Bool)

(assert (=> b!525997 m!506733))

(declare-fun m!506735 () Bool)

(assert (=> start!47790 m!506735))

(declare-fun m!506737 () Bool)

(assert (=> start!47790 m!506737))

(declare-fun m!506739 () Bool)

(assert (=> b!525992 m!506739))

(declare-fun m!506741 () Bool)

(assert (=> b!525992 m!506741))

(declare-fun m!506743 () Bool)

(assert (=> b!525995 m!506743))

(declare-fun m!506745 () Bool)

(assert (=> b!525995 m!506745))

(declare-fun m!506747 () Bool)

(assert (=> b!525995 m!506747))

(declare-fun m!506749 () Bool)

(assert (=> b!525995 m!506749))

(assert (=> b!525995 m!506719))

(declare-fun m!506751 () Bool)

(assert (=> b!525995 m!506751))

(assert (=> b!525995 m!506719))

(declare-fun m!506753 () Bool)

(assert (=> b!525995 m!506753))

(assert (=> b!525995 m!506719))

(declare-fun m!506755 () Bool)

(assert (=> b!525995 m!506755))

(declare-fun m!506757 () Bool)

(assert (=> b!525995 m!506757))

(check-sat (not b!525989) (not b!525986) (not b!525988) (not b!525997) (not b!525992) (not b!525996) (not b!525987) (not b!525991) (not b!525985) (not b!525995) (not start!47790))
(check-sat)
