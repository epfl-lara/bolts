; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51922 () Bool)

(assert start!51922)

(declare-fun b!567158 () Bool)

(declare-fun res!357897 () Bool)

(declare-fun e!326379 () Bool)

(assert (=> b!567158 (=> (not res!357897) (not e!326379))))

(declare-datatypes ((array!35570 0))(
  ( (array!35571 (arr!17077 (Array (_ BitVec 32) (_ BitVec 64))) (size!17441 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35570)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35570 (_ BitVec 32)) Bool)

(assert (=> b!567158 (= res!357897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!357902 () Bool)

(declare-fun e!326380 () Bool)

(assert (=> start!51922 (=> (not res!357902) (not e!326380))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51922 (= res!357902 (validMask!0 mask!3119))))

(assert (=> start!51922 e!326380))

(assert (=> start!51922 true))

(declare-fun array_inv!12851 (array!35570) Bool)

(assert (=> start!51922 (array_inv!12851 a!3118)))

(declare-fun b!567159 () Bool)

(declare-fun res!357898 () Bool)

(assert (=> b!567159 (=> (not res!357898) (not e!326380))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!567159 (= res!357898 (validKeyInArray!0 k0!1914))))

(declare-fun b!567160 () Bool)

(assert (=> b!567160 (= e!326380 e!326379)))

(declare-fun res!357900 () Bool)

(assert (=> b!567160 (=> (not res!357900) (not e!326379))))

(declare-datatypes ((SeekEntryResult!5533 0))(
  ( (MissingZero!5533 (index!24359 (_ BitVec 32))) (Found!5533 (index!24360 (_ BitVec 32))) (Intermediate!5533 (undefined!6345 Bool) (index!24361 (_ BitVec 32)) (x!53257 (_ BitVec 32))) (Undefined!5533) (MissingVacant!5533 (index!24362 (_ BitVec 32))) )
))
(declare-fun lt!258460 () SeekEntryResult!5533)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!567160 (= res!357900 (or (= lt!258460 (MissingZero!5533 i!1132)) (= lt!258460 (MissingVacant!5533 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35570 (_ BitVec 32)) SeekEntryResult!5533)

(assert (=> b!567160 (= lt!258460 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!567161 () Bool)

(declare-fun res!357896 () Bool)

(assert (=> b!567161 (=> (not res!357896) (not e!326379))))

(declare-datatypes ((List!11210 0))(
  ( (Nil!11207) (Cons!11206 (h!12218 (_ BitVec 64)) (t!17446 List!11210)) )
))
(declare-fun arrayNoDuplicates!0 (array!35570 (_ BitVec 32) List!11210) Bool)

(assert (=> b!567161 (= res!357896 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11207))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!326377 () Bool)

(declare-fun b!567162 () Bool)

(assert (=> b!567162 (= e!326377 (= (seekEntryOrOpen!0 (select (arr!17077 a!3118) j!142) a!3118 mask!3119) (Found!5533 j!142)))))

(declare-fun b!567163 () Bool)

(declare-fun res!357893 () Bool)

(assert (=> b!567163 (=> (not res!357893) (not e!326380))))

(declare-fun arrayContainsKey!0 (array!35570 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!567163 (= res!357893 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!567164 () Bool)

(declare-fun res!357899 () Bool)

(assert (=> b!567164 (=> (not res!357899) (not e!326379))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35570 (_ BitVec 32)) SeekEntryResult!5533)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567164 (= res!357899 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17077 a!3118) j!142) mask!3119) (select (arr!17077 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17077 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17077 a!3118) i!1132 k0!1914) j!142) (array!35571 (store (arr!17077 a!3118) i!1132 k0!1914) (size!17441 a!3118)) mask!3119)))))

(declare-fun b!567165 () Bool)

(declare-fun res!357895 () Bool)

(assert (=> b!567165 (=> (not res!357895) (not e!326380))))

(assert (=> b!567165 (= res!357895 (and (= (size!17441 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17441 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17441 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!567166 () Bool)

(declare-fun res!357894 () Bool)

(assert (=> b!567166 (=> (not res!357894) (not e!326380))))

(assert (=> b!567166 (= res!357894 (validKeyInArray!0 (select (arr!17077 a!3118) j!142)))))

(declare-fun b!567167 () Bool)

(assert (=> b!567167 (= e!326379 (not true))))

(assert (=> b!567167 e!326377))

(declare-fun res!357901 () Bool)

(assert (=> b!567167 (=> (not res!357901) (not e!326377))))

(assert (=> b!567167 (= res!357901 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17768 0))(
  ( (Unit!17769) )
))
(declare-fun lt!258461 () Unit!17768)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35570 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17768)

(assert (=> b!567167 (= lt!258461 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!51922 res!357902) b!567165))

(assert (= (and b!567165 res!357895) b!567166))

(assert (= (and b!567166 res!357894) b!567159))

(assert (= (and b!567159 res!357898) b!567163))

(assert (= (and b!567163 res!357893) b!567160))

(assert (= (and b!567160 res!357900) b!567158))

(assert (= (and b!567158 res!357897) b!567161))

(assert (= (and b!567161 res!357896) b!567164))

(assert (= (and b!567164 res!357899) b!567167))

(assert (= (and b!567167 res!357901) b!567162))

(declare-fun m!545767 () Bool)

(assert (=> b!567164 m!545767))

(declare-fun m!545769 () Bool)

(assert (=> b!567164 m!545769))

(assert (=> b!567164 m!545767))

(declare-fun m!545771 () Bool)

(assert (=> b!567164 m!545771))

(declare-fun m!545773 () Bool)

(assert (=> b!567164 m!545773))

(assert (=> b!567164 m!545771))

(declare-fun m!545775 () Bool)

(assert (=> b!567164 m!545775))

(assert (=> b!567164 m!545769))

(assert (=> b!567164 m!545767))

(declare-fun m!545777 () Bool)

(assert (=> b!567164 m!545777))

(declare-fun m!545779 () Bool)

(assert (=> b!567164 m!545779))

(assert (=> b!567164 m!545771))

(assert (=> b!567164 m!545773))

(assert (=> b!567162 m!545767))

(assert (=> b!567162 m!545767))

(declare-fun m!545781 () Bool)

(assert (=> b!567162 m!545781))

(declare-fun m!545783 () Bool)

(assert (=> b!567161 m!545783))

(declare-fun m!545785 () Bool)

(assert (=> b!567163 m!545785))

(declare-fun m!545787 () Bool)

(assert (=> b!567167 m!545787))

(declare-fun m!545789 () Bool)

(assert (=> b!567167 m!545789))

(declare-fun m!545791 () Bool)

(assert (=> b!567158 m!545791))

(declare-fun m!545793 () Bool)

(assert (=> b!567159 m!545793))

(assert (=> b!567166 m!545767))

(assert (=> b!567166 m!545767))

(declare-fun m!545795 () Bool)

(assert (=> b!567166 m!545795))

(declare-fun m!545797 () Bool)

(assert (=> start!51922 m!545797))

(declare-fun m!545799 () Bool)

(assert (=> start!51922 m!545799))

(declare-fun m!545801 () Bool)

(assert (=> b!567160 m!545801))

(check-sat (not b!567167) (not b!567161) (not b!567163) (not b!567162) (not start!51922) (not b!567166) (not b!567160) (not b!567158) (not b!567159) (not b!567164))
(check-sat)
