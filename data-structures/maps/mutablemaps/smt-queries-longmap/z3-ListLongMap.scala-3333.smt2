; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46002 () Bool)

(assert start!46002)

(declare-fun b!508995 () Bool)

(declare-fun res!309992 () Bool)

(declare-fun e!297705 () Bool)

(assert (=> b!508995 (=> (not res!309992) (not e!297705))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508995 (= res!309992 (validKeyInArray!0 k0!2280))))

(declare-fun b!508996 () Bool)

(declare-fun res!309996 () Bool)

(declare-fun e!297706 () Bool)

(assert (=> b!508996 (=> (not res!309996) (not e!297706))))

(declare-datatypes ((array!32673 0))(
  ( (array!32674 (arr!15712 (Array (_ BitVec 32) (_ BitVec 64))) (size!16076 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32673)

(declare-datatypes ((List!9923 0))(
  ( (Nil!9920) (Cons!9919 (h!10796 (_ BitVec 64)) (t!16159 List!9923)) )
))
(declare-fun arrayNoDuplicates!0 (array!32673 (_ BitVec 32) List!9923) Bool)

(assert (=> b!508996 (= res!309996 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9920))))

(declare-fun b!508997 () Bool)

(assert (=> b!508997 (= e!297705 e!297706)))

(declare-fun res!309994 () Bool)

(assert (=> b!508997 (=> (not res!309994) (not e!297706))))

(declare-datatypes ((SeekEntryResult!4186 0))(
  ( (MissingZero!4186 (index!18932 (_ BitVec 32))) (Found!4186 (index!18933 (_ BitVec 32))) (Intermediate!4186 (undefined!4998 Bool) (index!18934 (_ BitVec 32)) (x!47934 (_ BitVec 32))) (Undefined!4186) (MissingVacant!4186 (index!18935 (_ BitVec 32))) )
))
(declare-fun lt!232515 () SeekEntryResult!4186)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508997 (= res!309994 (or (= lt!232515 (MissingZero!4186 i!1204)) (= lt!232515 (MissingVacant!4186 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32673 (_ BitVec 32)) SeekEntryResult!4186)

(assert (=> b!508997 (= lt!232515 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!508998 () Bool)

(declare-fun res!309997 () Bool)

(assert (=> b!508998 (=> (not res!309997) (not e!297706))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32673 (_ BitVec 32)) Bool)

(assert (=> b!508998 (= res!309997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509000 () Bool)

(declare-fun res!309993 () Bool)

(assert (=> b!509000 (=> (not res!309993) (not e!297705))))

(declare-fun arrayContainsKey!0 (array!32673 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509000 (= res!309993 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509001 () Bool)

(declare-fun e!297703 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!509001 (= e!297703 (= (seekEntryOrOpen!0 (select (arr!15712 a!3235) j!176) a!3235 mask!3524) (Found!4186 j!176)))))

(declare-fun b!508999 () Bool)

(assert (=> b!508999 (= e!297706 (not true))))

(declare-fun lt!232516 () (_ BitVec 32))

(declare-fun lt!232517 () SeekEntryResult!4186)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32673 (_ BitVec 32)) SeekEntryResult!4186)

(assert (=> b!508999 (= lt!232517 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232516 (select (store (arr!15712 a!3235) i!1204 k0!2280) j!176) (array!32674 (store (arr!15712 a!3235) i!1204 k0!2280) (size!16076 a!3235)) mask!3524))))

(declare-fun lt!232513 () (_ BitVec 32))

(declare-fun lt!232512 () SeekEntryResult!4186)

(assert (=> b!508999 (= lt!232512 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232513 (select (arr!15712 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!508999 (= lt!232516 (toIndex!0 (select (store (arr!15712 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!508999 (= lt!232513 (toIndex!0 (select (arr!15712 a!3235) j!176) mask!3524))))

(assert (=> b!508999 e!297703))

(declare-fun res!309995 () Bool)

(assert (=> b!508999 (=> (not res!309995) (not e!297703))))

(assert (=> b!508999 (= res!309995 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15622 0))(
  ( (Unit!15623) )
))
(declare-fun lt!232514 () Unit!15622)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32673 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15622)

(assert (=> b!508999 (= lt!232514 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!309990 () Bool)

(assert (=> start!46002 (=> (not res!309990) (not e!297705))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46002 (= res!309990 (validMask!0 mask!3524))))

(assert (=> start!46002 e!297705))

(assert (=> start!46002 true))

(declare-fun array_inv!11486 (array!32673) Bool)

(assert (=> start!46002 (array_inv!11486 a!3235)))

(declare-fun b!509002 () Bool)

(declare-fun res!309991 () Bool)

(assert (=> b!509002 (=> (not res!309991) (not e!297705))))

(assert (=> b!509002 (= res!309991 (and (= (size!16076 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16076 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16076 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509003 () Bool)

(declare-fun res!309998 () Bool)

(assert (=> b!509003 (=> (not res!309998) (not e!297705))))

(assert (=> b!509003 (= res!309998 (validKeyInArray!0 (select (arr!15712 a!3235) j!176)))))

(assert (= (and start!46002 res!309990) b!509002))

(assert (= (and b!509002 res!309991) b!509003))

(assert (= (and b!509003 res!309998) b!508995))

(assert (= (and b!508995 res!309992) b!509000))

(assert (= (and b!509000 res!309993) b!508997))

(assert (= (and b!508997 res!309994) b!508998))

(assert (= (and b!508998 res!309997) b!508996))

(assert (= (and b!508996 res!309996) b!508999))

(assert (= (and b!508999 res!309995) b!509001))

(declare-fun m!489835 () Bool)

(assert (=> b!508996 m!489835))

(declare-fun m!489837 () Bool)

(assert (=> b!509000 m!489837))

(declare-fun m!489839 () Bool)

(assert (=> b!508995 m!489839))

(declare-fun m!489841 () Bool)

(assert (=> start!46002 m!489841))

(declare-fun m!489843 () Bool)

(assert (=> start!46002 m!489843))

(declare-fun m!489845 () Bool)

(assert (=> b!509003 m!489845))

(assert (=> b!509003 m!489845))

(declare-fun m!489847 () Bool)

(assert (=> b!509003 m!489847))

(declare-fun m!489849 () Bool)

(assert (=> b!508997 m!489849))

(assert (=> b!509001 m!489845))

(assert (=> b!509001 m!489845))

(declare-fun m!489851 () Bool)

(assert (=> b!509001 m!489851))

(declare-fun m!489853 () Bool)

(assert (=> b!508998 m!489853))

(declare-fun m!489855 () Bool)

(assert (=> b!508999 m!489855))

(declare-fun m!489857 () Bool)

(assert (=> b!508999 m!489857))

(declare-fun m!489859 () Bool)

(assert (=> b!508999 m!489859))

(assert (=> b!508999 m!489845))

(declare-fun m!489861 () Bool)

(assert (=> b!508999 m!489861))

(assert (=> b!508999 m!489845))

(declare-fun m!489863 () Bool)

(assert (=> b!508999 m!489863))

(declare-fun m!489865 () Bool)

(assert (=> b!508999 m!489865))

(assert (=> b!508999 m!489859))

(declare-fun m!489867 () Bool)

(assert (=> b!508999 m!489867))

(assert (=> b!508999 m!489859))

(declare-fun m!489869 () Bool)

(assert (=> b!508999 m!489869))

(assert (=> b!508999 m!489845))

(check-sat (not b!508996) (not b!509001) (not b!509003) (not b!509000) (not b!508997) (not b!508998) (not b!508995) (not b!508999) (not start!46002))
(check-sat)
