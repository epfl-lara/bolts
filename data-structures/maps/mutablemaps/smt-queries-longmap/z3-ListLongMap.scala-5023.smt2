; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68670 () Bool)

(assert start!68670)

(declare-fun b!798838 () Bool)

(declare-fun e!443063 () Bool)

(declare-fun e!443066 () Bool)

(assert (=> b!798838 (= e!443063 e!443066)))

(declare-fun res!543529 () Bool)

(assert (=> b!798838 (=> (not res!543529) (not e!443066))))

(declare-datatypes ((SeekEntryResult!8380 0))(
  ( (MissingZero!8380 (index!35887 (_ BitVec 32))) (Found!8380 (index!35888 (_ BitVec 32))) (Intermediate!8380 (undefined!9192 Bool) (index!35889 (_ BitVec 32)) (x!66795 (_ BitVec 32))) (Undefined!8380) (MissingVacant!8380 (index!35890 (_ BitVec 32))) )
))
(declare-fun lt!356669 () SeekEntryResult!8380)

(declare-datatypes ((array!43411 0))(
  ( (array!43412 (arr!20782 (Array (_ BitVec 32) (_ BitVec 64))) (size!21203 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43411)

(declare-fun lt!356668 () SeekEntryResult!8380)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!798838 (= res!543529 (and (= lt!356668 lt!356669) (= lt!356669 (Found!8380 j!153)) (not (= (select (arr!20782 a!3170) index!1236) (select (arr!20782 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43411 (_ BitVec 32)) SeekEntryResult!8380)

(assert (=> b!798838 (= lt!356669 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20782 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43411 (_ BitVec 32)) SeekEntryResult!8380)

(assert (=> b!798838 (= lt!356668 (seekEntryOrOpen!0 (select (arr!20782 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798839 () Bool)

(declare-fun e!443065 () Bool)

(assert (=> b!798839 (= e!443065 false)))

(declare-fun lt!356670 () (_ BitVec 32))

(declare-fun lt!356673 () SeekEntryResult!8380)

(assert (=> b!798839 (= lt!356673 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356670 vacantBefore!23 (select (arr!20782 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798840 () Bool)

(declare-fun res!543534 () Bool)

(declare-fun e!443067 () Bool)

(assert (=> b!798840 (=> (not res!543534) (not e!443067))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!798840 (= res!543534 (and (= (size!21203 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21203 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21203 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!798841 () Bool)

(declare-fun res!543533 () Bool)

(declare-fun e!443068 () Bool)

(assert (=> b!798841 (=> (not res!543533) (not e!443068))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!798841 (= res!543533 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21203 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20782 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21203 a!3170)) (= (select (arr!20782 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798842 () Bool)

(declare-fun res!543528 () Bool)

(assert (=> b!798842 (=> (not res!543528) (not e!443068))))

(declare-datatypes ((List!14798 0))(
  ( (Nil!14795) (Cons!14794 (h!15923 (_ BitVec 64)) (t!21121 List!14798)) )
))
(declare-fun arrayNoDuplicates!0 (array!43411 (_ BitVec 32) List!14798) Bool)

(assert (=> b!798842 (= res!543528 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14795))))

(declare-fun b!798843 () Bool)

(declare-fun res!543536 () Bool)

(assert (=> b!798843 (=> (not res!543536) (not e!443067))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798843 (= res!543536 (validKeyInArray!0 k0!2044))))

(declare-fun b!798837 () Bool)

(assert (=> b!798837 (= e!443067 e!443068)))

(declare-fun res!543530 () Bool)

(assert (=> b!798837 (=> (not res!543530) (not e!443068))))

(declare-fun lt!356672 () SeekEntryResult!8380)

(assert (=> b!798837 (= res!543530 (or (= lt!356672 (MissingZero!8380 i!1163)) (= lt!356672 (MissingVacant!8380 i!1163))))))

(assert (=> b!798837 (= lt!356672 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun res!543537 () Bool)

(assert (=> start!68670 (=> (not res!543537) (not e!443067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68670 (= res!543537 (validMask!0 mask!3266))))

(assert (=> start!68670 e!443067))

(assert (=> start!68670 true))

(declare-fun array_inv!16556 (array!43411) Bool)

(assert (=> start!68670 (array_inv!16556 a!3170)))

(declare-fun b!798844 () Bool)

(declare-fun res!543531 () Bool)

(assert (=> b!798844 (=> (not res!543531) (not e!443067))))

(declare-fun arrayContainsKey!0 (array!43411 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798844 (= res!543531 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798845 () Bool)

(assert (=> b!798845 (= e!443066 e!443065)))

(declare-fun res!543526 () Bool)

(assert (=> b!798845 (=> (not res!543526) (not e!443065))))

(assert (=> b!798845 (= res!543526 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!356670 #b00000000000000000000000000000000) (bvslt lt!356670 (size!21203 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!798845 (= lt!356670 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!798846 () Bool)

(assert (=> b!798846 (= e!443068 e!443063)))

(declare-fun res!543535 () Bool)

(assert (=> b!798846 (=> (not res!543535) (not e!443063))))

(declare-fun lt!356671 () SeekEntryResult!8380)

(declare-fun lt!356667 () array!43411)

(declare-fun lt!356674 () (_ BitVec 64))

(assert (=> b!798846 (= res!543535 (= lt!356671 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356674 lt!356667 mask!3266)))))

(assert (=> b!798846 (= lt!356671 (seekEntryOrOpen!0 lt!356674 lt!356667 mask!3266))))

(assert (=> b!798846 (= lt!356674 (select (store (arr!20782 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!798846 (= lt!356667 (array!43412 (store (arr!20782 a!3170) i!1163 k0!2044) (size!21203 a!3170)))))

(declare-fun b!798847 () Bool)

(declare-fun res!543532 () Bool)

(assert (=> b!798847 (=> (not res!543532) (not e!443068))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43411 (_ BitVec 32)) Bool)

(assert (=> b!798847 (= res!543532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798848 () Bool)

(declare-fun res!543527 () Bool)

(assert (=> b!798848 (=> (not res!543527) (not e!443065))))

(assert (=> b!798848 (= res!543527 (= lt!356671 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356670 vacantAfter!23 lt!356674 lt!356667 mask!3266)))))

(declare-fun b!798849 () Bool)

(declare-fun res!543538 () Bool)

(assert (=> b!798849 (=> (not res!543538) (not e!443067))))

(assert (=> b!798849 (= res!543538 (validKeyInArray!0 (select (arr!20782 a!3170) j!153)))))

(assert (= (and start!68670 res!543537) b!798840))

(assert (= (and b!798840 res!543534) b!798849))

(assert (= (and b!798849 res!543538) b!798843))

(assert (= (and b!798843 res!543536) b!798844))

(assert (= (and b!798844 res!543531) b!798837))

(assert (= (and b!798837 res!543530) b!798847))

(assert (= (and b!798847 res!543532) b!798842))

(assert (= (and b!798842 res!543528) b!798841))

(assert (= (and b!798841 res!543533) b!798846))

(assert (= (and b!798846 res!543535) b!798838))

(assert (= (and b!798838 res!543529) b!798845))

(assert (= (and b!798845 res!543526) b!798848))

(assert (= (and b!798848 res!543527) b!798839))

(declare-fun m!739909 () Bool)

(assert (=> b!798841 m!739909))

(declare-fun m!739911 () Bool)

(assert (=> b!798841 m!739911))

(declare-fun m!739913 () Bool)

(assert (=> b!798849 m!739913))

(assert (=> b!798849 m!739913))

(declare-fun m!739915 () Bool)

(assert (=> b!798849 m!739915))

(declare-fun m!739917 () Bool)

(assert (=> b!798847 m!739917))

(declare-fun m!739919 () Bool)

(assert (=> b!798848 m!739919))

(assert (=> b!798839 m!739913))

(assert (=> b!798839 m!739913))

(declare-fun m!739921 () Bool)

(assert (=> b!798839 m!739921))

(declare-fun m!739923 () Bool)

(assert (=> b!798838 m!739923))

(assert (=> b!798838 m!739913))

(assert (=> b!798838 m!739913))

(declare-fun m!739925 () Bool)

(assert (=> b!798838 m!739925))

(assert (=> b!798838 m!739913))

(declare-fun m!739927 () Bool)

(assert (=> b!798838 m!739927))

(declare-fun m!739929 () Bool)

(assert (=> b!798842 m!739929))

(declare-fun m!739931 () Bool)

(assert (=> b!798845 m!739931))

(declare-fun m!739933 () Bool)

(assert (=> b!798843 m!739933))

(declare-fun m!739935 () Bool)

(assert (=> b!798844 m!739935))

(declare-fun m!739937 () Bool)

(assert (=> b!798837 m!739937))

(declare-fun m!739939 () Bool)

(assert (=> start!68670 m!739939))

(declare-fun m!739941 () Bool)

(assert (=> start!68670 m!739941))

(declare-fun m!739943 () Bool)

(assert (=> b!798846 m!739943))

(declare-fun m!739945 () Bool)

(assert (=> b!798846 m!739945))

(declare-fun m!739947 () Bool)

(assert (=> b!798846 m!739947))

(declare-fun m!739949 () Bool)

(assert (=> b!798846 m!739949))

(check-sat (not start!68670) (not b!798845) (not b!798846) (not b!798837) (not b!798839) (not b!798849) (not b!798844) (not b!798848) (not b!798838) (not b!798842) (not b!798843) (not b!798847))
(check-sat)
