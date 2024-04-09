; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47394 () Bool)

(assert start!47394)

(declare-fun b!520837 () Bool)

(declare-datatypes ((Unit!16134 0))(
  ( (Unit!16135) )
))
(declare-fun e!303905 () Unit!16134)

(declare-fun Unit!16136 () Unit!16134)

(assert (=> b!520837 (= e!303905 Unit!16136)))

(declare-fun lt!238660 () Unit!16134)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4417 0))(
  ( (MissingZero!4417 (index!19871 (_ BitVec 32))) (Found!4417 (index!19872 (_ BitVec 32))) (Intermediate!4417 (undefined!5229 Bool) (index!19873 (_ BitVec 32)) (x!48886 (_ BitVec 32))) (Undefined!4417) (MissingVacant!4417 (index!19874 (_ BitVec 32))) )
))
(declare-fun lt!238659 () SeekEntryResult!4417)

(declare-datatypes ((array!33180 0))(
  ( (array!33181 (arr!15943 (Array (_ BitVec 32) (_ BitVec 64))) (size!16307 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33180)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!238665 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33180 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16134)

(assert (=> b!520837 (= lt!238660 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!238665 #b00000000000000000000000000000000 (index!19873 lt!238659) (x!48886 lt!238659) mask!3524))))

(declare-fun lt!238666 () (_ BitVec 64))

(declare-fun res!318845 () Bool)

(declare-fun lt!238667 () array!33180)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33180 (_ BitVec 32)) SeekEntryResult!4417)

(assert (=> b!520837 (= res!318845 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238665 lt!238666 lt!238667 mask!3524) (Intermediate!4417 false (index!19873 lt!238659) (x!48886 lt!238659))))))

(declare-fun e!303907 () Bool)

(assert (=> b!520837 (=> (not res!318845) (not e!303907))))

(assert (=> b!520837 e!303907))

(declare-fun b!520838 () Bool)

(declare-fun e!303904 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33180 (_ BitVec 32)) SeekEntryResult!4417)

(assert (=> b!520838 (= e!303904 (= (seekEntryOrOpen!0 (select (arr!15943 a!3235) j!176) a!3235 mask!3524) (Found!4417 j!176)))))

(declare-fun b!520839 () Bool)

(declare-fun res!318843 () Bool)

(declare-fun e!303910 () Bool)

(assert (=> b!520839 (=> (not res!318843) (not e!303910))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!520839 (= res!318843 (validKeyInArray!0 k0!2280))))

(declare-fun b!520840 () Bool)

(declare-fun e!303908 () Bool)

(assert (=> b!520840 (= e!303910 e!303908)))

(declare-fun res!318847 () Bool)

(assert (=> b!520840 (=> (not res!318847) (not e!303908))))

(declare-fun lt!238661 () SeekEntryResult!4417)

(assert (=> b!520840 (= res!318847 (or (= lt!238661 (MissingZero!4417 i!1204)) (= lt!238661 (MissingVacant!4417 i!1204))))))

(assert (=> b!520840 (= lt!238661 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!520841 () Bool)

(declare-fun res!318853 () Bool)

(assert (=> b!520841 (=> (not res!318853) (not e!303908))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33180 (_ BitVec 32)) Bool)

(assert (=> b!520841 (= res!318853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!520842 () Bool)

(declare-fun Unit!16137 () Unit!16134)

(assert (=> b!520842 (= e!303905 Unit!16137)))

(declare-fun res!318849 () Bool)

(assert (=> start!47394 (=> (not res!318849) (not e!303910))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47394 (= res!318849 (validMask!0 mask!3524))))

(assert (=> start!47394 e!303910))

(assert (=> start!47394 true))

(declare-fun array_inv!11717 (array!33180) Bool)

(assert (=> start!47394 (array_inv!11717 a!3235)))

(declare-fun b!520843 () Bool)

(declare-fun e!303906 () Bool)

(assert (=> b!520843 (= e!303906 true)))

(assert (=> b!520843 (and (or (= (select (arr!15943 a!3235) (index!19873 lt!238659)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15943 a!3235) (index!19873 lt!238659)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15943 a!3235) (index!19873 lt!238659)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15943 a!3235) (index!19873 lt!238659)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!238664 () Unit!16134)

(assert (=> b!520843 (= lt!238664 e!303905)))

(declare-fun c!61298 () Bool)

(assert (=> b!520843 (= c!61298 (= (select (arr!15943 a!3235) (index!19873 lt!238659)) (select (arr!15943 a!3235) j!176)))))

(assert (=> b!520843 (and (bvslt (x!48886 lt!238659) #b01111111111111111111111111111110) (or (= (select (arr!15943 a!3235) (index!19873 lt!238659)) (select (arr!15943 a!3235) j!176)) (= (select (arr!15943 a!3235) (index!19873 lt!238659)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15943 a!3235) (index!19873 lt!238659)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520844 () Bool)

(declare-fun res!318852 () Bool)

(assert (=> b!520844 (=> (not res!318852) (not e!303908))))

(declare-datatypes ((List!10154 0))(
  ( (Nil!10151) (Cons!10150 (h!11072 (_ BitVec 64)) (t!16390 List!10154)) )
))
(declare-fun arrayNoDuplicates!0 (array!33180 (_ BitVec 32) List!10154) Bool)

(assert (=> b!520844 (= res!318852 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10151))))

(declare-fun b!520845 () Bool)

(assert (=> b!520845 (= e!303907 false)))

(declare-fun b!520846 () Bool)

(declare-fun res!318844 () Bool)

(assert (=> b!520846 (=> (not res!318844) (not e!303910))))

(assert (=> b!520846 (= res!318844 (validKeyInArray!0 (select (arr!15943 a!3235) j!176)))))

(declare-fun b!520847 () Bool)

(assert (=> b!520847 (= e!303908 (not e!303906))))

(declare-fun res!318850 () Bool)

(assert (=> b!520847 (=> res!318850 e!303906)))

(declare-fun lt!238662 () (_ BitVec 32))

(assert (=> b!520847 (= res!318850 (= lt!238659 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238662 lt!238666 lt!238667 mask!3524)))))

(assert (=> b!520847 (= lt!238659 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238665 (select (arr!15943 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!520847 (= lt!238662 (toIndex!0 lt!238666 mask!3524))))

(assert (=> b!520847 (= lt!238666 (select (store (arr!15943 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!520847 (= lt!238665 (toIndex!0 (select (arr!15943 a!3235) j!176) mask!3524))))

(assert (=> b!520847 (= lt!238667 (array!33181 (store (arr!15943 a!3235) i!1204 k0!2280) (size!16307 a!3235)))))

(assert (=> b!520847 e!303904))

(declare-fun res!318851 () Bool)

(assert (=> b!520847 (=> (not res!318851) (not e!303904))))

(assert (=> b!520847 (= res!318851 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!238663 () Unit!16134)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33180 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16134)

(assert (=> b!520847 (= lt!238663 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!520848 () Bool)

(declare-fun res!318854 () Bool)

(assert (=> b!520848 (=> (not res!318854) (not e!303910))))

(declare-fun arrayContainsKey!0 (array!33180 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!520848 (= res!318854 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!520849 () Bool)

(declare-fun res!318848 () Bool)

(assert (=> b!520849 (=> res!318848 e!303906)))

(get-info :version)

(assert (=> b!520849 (= res!318848 (or (undefined!5229 lt!238659) (not ((_ is Intermediate!4417) lt!238659))))))

(declare-fun b!520850 () Bool)

(declare-fun res!318846 () Bool)

(assert (=> b!520850 (=> (not res!318846) (not e!303910))))

(assert (=> b!520850 (= res!318846 (and (= (size!16307 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16307 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16307 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!47394 res!318849) b!520850))

(assert (= (and b!520850 res!318846) b!520846))

(assert (= (and b!520846 res!318844) b!520839))

(assert (= (and b!520839 res!318843) b!520848))

(assert (= (and b!520848 res!318854) b!520840))

(assert (= (and b!520840 res!318847) b!520841))

(assert (= (and b!520841 res!318853) b!520844))

(assert (= (and b!520844 res!318852) b!520847))

(assert (= (and b!520847 res!318851) b!520838))

(assert (= (and b!520847 (not res!318850)) b!520849))

(assert (= (and b!520849 (not res!318848)) b!520843))

(assert (= (and b!520843 c!61298) b!520837))

(assert (= (and b!520843 (not c!61298)) b!520842))

(assert (= (and b!520837 res!318845) b!520845))

(declare-fun m!501787 () Bool)

(assert (=> start!47394 m!501787))

(declare-fun m!501789 () Bool)

(assert (=> start!47394 m!501789))

(declare-fun m!501791 () Bool)

(assert (=> b!520847 m!501791))

(declare-fun m!501793 () Bool)

(assert (=> b!520847 m!501793))

(declare-fun m!501795 () Bool)

(assert (=> b!520847 m!501795))

(declare-fun m!501797 () Bool)

(assert (=> b!520847 m!501797))

(declare-fun m!501799 () Bool)

(assert (=> b!520847 m!501799))

(declare-fun m!501801 () Bool)

(assert (=> b!520847 m!501801))

(assert (=> b!520847 m!501797))

(declare-fun m!501803 () Bool)

(assert (=> b!520847 m!501803))

(assert (=> b!520847 m!501797))

(declare-fun m!501805 () Bool)

(assert (=> b!520847 m!501805))

(declare-fun m!501807 () Bool)

(assert (=> b!520847 m!501807))

(declare-fun m!501809 () Bool)

(assert (=> b!520844 m!501809))

(declare-fun m!501811 () Bool)

(assert (=> b!520841 m!501811))

(declare-fun m!501813 () Bool)

(assert (=> b!520840 m!501813))

(declare-fun m!501815 () Bool)

(assert (=> b!520843 m!501815))

(assert (=> b!520843 m!501797))

(assert (=> b!520838 m!501797))

(assert (=> b!520838 m!501797))

(declare-fun m!501817 () Bool)

(assert (=> b!520838 m!501817))

(declare-fun m!501819 () Bool)

(assert (=> b!520837 m!501819))

(declare-fun m!501821 () Bool)

(assert (=> b!520837 m!501821))

(declare-fun m!501823 () Bool)

(assert (=> b!520848 m!501823))

(assert (=> b!520846 m!501797))

(assert (=> b!520846 m!501797))

(declare-fun m!501825 () Bool)

(assert (=> b!520846 m!501825))

(declare-fun m!501827 () Bool)

(assert (=> b!520839 m!501827))

(check-sat (not b!520840) (not b!520844) (not b!520838) (not b!520837) (not b!520846) (not start!47394) (not b!520841) (not b!520839) (not b!520848) (not b!520847))
(check-sat)
