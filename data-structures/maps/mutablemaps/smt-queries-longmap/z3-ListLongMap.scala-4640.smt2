; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64560 () Bool)

(assert start!64560)

(declare-fun b!726789 () Bool)

(declare-fun res!487871 () Bool)

(declare-fun e!406919 () Bool)

(assert (=> b!726789 (=> (not res!487871) (not e!406919))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!726789 (= res!487871 (validKeyInArray!0 k0!2102))))

(declare-fun b!726790 () Bool)

(declare-fun res!487870 () Bool)

(declare-fun e!406915 () Bool)

(assert (=> b!726790 (=> (not res!487870) (not e!406915))))

(declare-datatypes ((array!41031 0))(
  ( (array!41032 (arr!19633 (Array (_ BitVec 32) (_ BitVec 64))) (size!20054 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41031)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41031 (_ BitVec 32)) Bool)

(assert (=> b!726790 (= res!487870 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!487861 () Bool)

(assert (=> start!64560 (=> (not res!487861) (not e!406919))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64560 (= res!487861 (validMask!0 mask!3328))))

(assert (=> start!64560 e!406919))

(assert (=> start!64560 true))

(declare-fun array_inv!15407 (array!41031) Bool)

(assert (=> start!64560 (array_inv!15407 a!3186)))

(declare-fun b!726791 () Bool)

(declare-fun res!487864 () Bool)

(assert (=> b!726791 (=> (not res!487864) (not e!406919))))

(declare-fun arrayContainsKey!0 (array!41031 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!726791 (= res!487864 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!726792 () Bool)

(declare-fun res!487858 () Bool)

(assert (=> b!726792 (=> (not res!487858) (not e!406915))))

(declare-datatypes ((List!13688 0))(
  ( (Nil!13685) (Cons!13684 (h!14741 (_ BitVec 64)) (t!20011 List!13688)) )
))
(declare-fun arrayNoDuplicates!0 (array!41031 (_ BitVec 32) List!13688) Bool)

(assert (=> b!726792 (= res!487858 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13685))))

(declare-fun b!726793 () Bool)

(declare-fun res!487857 () Bool)

(declare-fun e!406916 () Bool)

(assert (=> b!726793 (=> (not res!487857) (not e!406916))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!726793 (= res!487857 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19633 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!726794 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!406920 () Bool)

(declare-datatypes ((SeekEntryResult!7240 0))(
  ( (MissingZero!7240 (index!31327 (_ BitVec 32))) (Found!7240 (index!31328 (_ BitVec 32))) (Intermediate!7240 (undefined!8052 Bool) (index!31329 (_ BitVec 32)) (x!62339 (_ BitVec 32))) (Undefined!7240) (MissingVacant!7240 (index!31330 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41031 (_ BitVec 32)) SeekEntryResult!7240)

(assert (=> b!726794 (= e!406920 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19633 a!3186) j!159) a!3186 mask!3328) (Found!7240 j!159)))))

(declare-fun b!726795 () Bool)

(declare-fun e!406918 () Bool)

(declare-fun e!406912 () Bool)

(assert (=> b!726795 (= e!406918 e!406912)))

(declare-fun res!487865 () Bool)

(assert (=> b!726795 (=> (not res!487865) (not e!406912))))

(declare-fun lt!321901 () SeekEntryResult!7240)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41031 (_ BitVec 32)) SeekEntryResult!7240)

(assert (=> b!726795 (= res!487865 (= (seekEntryOrOpen!0 (select (arr!19633 a!3186) j!159) a!3186 mask!3328) lt!321901))))

(assert (=> b!726795 (= lt!321901 (Found!7240 j!159))))

(declare-fun b!726796 () Bool)

(declare-fun res!487860 () Bool)

(assert (=> b!726796 (=> (not res!487860) (not e!406916))))

(assert (=> b!726796 (= res!487860 e!406920)))

(declare-fun c!79839 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!726796 (= c!79839 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!726797 () Bool)

(declare-fun e!406913 () Bool)

(declare-fun e!406914 () Bool)

(assert (=> b!726797 (= e!406913 (not e!406914))))

(declare-fun res!487859 () Bool)

(assert (=> b!726797 (=> res!487859 e!406914)))

(declare-fun lt!321900 () SeekEntryResult!7240)

(get-info :version)

(assert (=> b!726797 (= res!487859 (or (not ((_ is Intermediate!7240) lt!321900)) (bvsge x!1131 (x!62339 lt!321900))))))

(assert (=> b!726797 e!406918))

(declare-fun res!487869 () Bool)

(assert (=> b!726797 (=> (not res!487869) (not e!406918))))

(assert (=> b!726797 (= res!487869 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24798 0))(
  ( (Unit!24799) )
))
(declare-fun lt!321897 () Unit!24798)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41031 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24798)

(assert (=> b!726797 (= lt!321897 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!726798 () Bool)

(assert (=> b!726798 (= e!406916 e!406913)))

(declare-fun res!487872 () Bool)

(assert (=> b!726798 (=> (not res!487872) (not e!406913))))

(declare-fun lt!321899 () SeekEntryResult!7240)

(assert (=> b!726798 (= res!487872 (= lt!321899 lt!321900))))

(declare-fun lt!321905 () array!41031)

(declare-fun lt!321898 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41031 (_ BitVec 32)) SeekEntryResult!7240)

(assert (=> b!726798 (= lt!321900 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321898 lt!321905 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726798 (= lt!321899 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321898 mask!3328) lt!321898 lt!321905 mask!3328))))

(assert (=> b!726798 (= lt!321898 (select (store (arr!19633 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!726798 (= lt!321905 (array!41032 (store (arr!19633 a!3186) i!1173 k0!2102) (size!20054 a!3186)))))

(declare-fun b!726799 () Bool)

(declare-fun res!487863 () Bool)

(assert (=> b!726799 (=> (not res!487863) (not e!406919))))

(assert (=> b!726799 (= res!487863 (and (= (size!20054 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20054 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20054 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!726800 () Bool)

(declare-fun res!487862 () Bool)

(assert (=> b!726800 (=> (not res!487862) (not e!406919))))

(assert (=> b!726800 (= res!487862 (validKeyInArray!0 (select (arr!19633 a!3186) j!159)))))

(declare-fun b!726801 () Bool)

(declare-fun lt!321902 () SeekEntryResult!7240)

(assert (=> b!726801 (= e!406920 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19633 a!3186) j!159) a!3186 mask!3328) lt!321902))))

(declare-fun b!726802 () Bool)

(declare-fun res!487867 () Bool)

(assert (=> b!726802 (=> (not res!487867) (not e!406915))))

(assert (=> b!726802 (= res!487867 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20054 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20054 a!3186))))))

(declare-fun b!726803 () Bool)

(assert (=> b!726803 (= e!406915 e!406916)))

(declare-fun res!487868 () Bool)

(assert (=> b!726803 (=> (not res!487868) (not e!406916))))

(assert (=> b!726803 (= res!487868 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19633 a!3186) j!159) mask!3328) (select (arr!19633 a!3186) j!159) a!3186 mask!3328) lt!321902))))

(assert (=> b!726803 (= lt!321902 (Intermediate!7240 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!726804 () Bool)

(assert (=> b!726804 (= e!406919 e!406915)))

(declare-fun res!487866 () Bool)

(assert (=> b!726804 (=> (not res!487866) (not e!406915))))

(declare-fun lt!321904 () SeekEntryResult!7240)

(assert (=> b!726804 (= res!487866 (or (= lt!321904 (MissingZero!7240 i!1173)) (= lt!321904 (MissingVacant!7240 i!1173))))))

(assert (=> b!726804 (= lt!321904 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!726805 () Bool)

(assert (=> b!726805 (= e!406914 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5) (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun lt!321903 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726805 (= lt!321903 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!726806 () Bool)

(assert (=> b!726806 (= e!406912 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19633 a!3186) j!159) a!3186 mask!3328) lt!321901))))

(assert (= (and start!64560 res!487861) b!726799))

(assert (= (and b!726799 res!487863) b!726800))

(assert (= (and b!726800 res!487862) b!726789))

(assert (= (and b!726789 res!487871) b!726791))

(assert (= (and b!726791 res!487864) b!726804))

(assert (= (and b!726804 res!487866) b!726790))

(assert (= (and b!726790 res!487870) b!726792))

(assert (= (and b!726792 res!487858) b!726802))

(assert (= (and b!726802 res!487867) b!726803))

(assert (= (and b!726803 res!487868) b!726793))

(assert (= (and b!726793 res!487857) b!726796))

(assert (= (and b!726796 c!79839) b!726801))

(assert (= (and b!726796 (not c!79839)) b!726794))

(assert (= (and b!726796 res!487860) b!726798))

(assert (= (and b!726798 res!487872) b!726797))

(assert (= (and b!726797 res!487869) b!726795))

(assert (= (and b!726795 res!487865) b!726806))

(assert (= (and b!726797 (not res!487859)) b!726805))

(declare-fun m!680899 () Bool)

(assert (=> b!726797 m!680899))

(declare-fun m!680901 () Bool)

(assert (=> b!726797 m!680901))

(declare-fun m!680903 () Bool)

(assert (=> start!64560 m!680903))

(declare-fun m!680905 () Bool)

(assert (=> start!64560 m!680905))

(declare-fun m!680907 () Bool)

(assert (=> b!726792 m!680907))

(declare-fun m!680909 () Bool)

(assert (=> b!726805 m!680909))

(declare-fun m!680911 () Bool)

(assert (=> b!726804 m!680911))

(declare-fun m!680913 () Bool)

(assert (=> b!726803 m!680913))

(assert (=> b!726803 m!680913))

(declare-fun m!680915 () Bool)

(assert (=> b!726803 m!680915))

(assert (=> b!726803 m!680915))

(assert (=> b!726803 m!680913))

(declare-fun m!680917 () Bool)

(assert (=> b!726803 m!680917))

(assert (=> b!726801 m!680913))

(assert (=> b!726801 m!680913))

(declare-fun m!680919 () Bool)

(assert (=> b!726801 m!680919))

(assert (=> b!726794 m!680913))

(assert (=> b!726794 m!680913))

(declare-fun m!680921 () Bool)

(assert (=> b!726794 m!680921))

(declare-fun m!680923 () Bool)

(assert (=> b!726791 m!680923))

(declare-fun m!680925 () Bool)

(assert (=> b!726789 m!680925))

(declare-fun m!680927 () Bool)

(assert (=> b!726790 m!680927))

(assert (=> b!726800 m!680913))

(assert (=> b!726800 m!680913))

(declare-fun m!680929 () Bool)

(assert (=> b!726800 m!680929))

(assert (=> b!726795 m!680913))

(assert (=> b!726795 m!680913))

(declare-fun m!680931 () Bool)

(assert (=> b!726795 m!680931))

(declare-fun m!680933 () Bool)

(assert (=> b!726793 m!680933))

(declare-fun m!680935 () Bool)

(assert (=> b!726798 m!680935))

(declare-fun m!680937 () Bool)

(assert (=> b!726798 m!680937))

(declare-fun m!680939 () Bool)

(assert (=> b!726798 m!680939))

(declare-fun m!680941 () Bool)

(assert (=> b!726798 m!680941))

(assert (=> b!726798 m!680935))

(declare-fun m!680943 () Bool)

(assert (=> b!726798 m!680943))

(assert (=> b!726806 m!680913))

(assert (=> b!726806 m!680913))

(declare-fun m!680945 () Bool)

(assert (=> b!726806 m!680945))

(check-sat (not b!726798) (not b!726790) (not b!726805) (not b!726803) (not b!726797) (not b!726791) (not b!726800) (not b!726794) (not b!726795) (not b!726804) (not start!64560) (not b!726801) (not b!726806) (not b!726789) (not b!726792))
(check-sat)
