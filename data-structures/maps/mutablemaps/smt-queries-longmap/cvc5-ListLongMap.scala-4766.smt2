; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65674 () Bool)

(assert start!65674)

(declare-fun b!751915 () Bool)

(declare-fun e!419464 () Bool)

(declare-fun e!419466 () Bool)

(assert (=> b!751915 (= e!419464 e!419466)))

(declare-fun res!507838 () Bool)

(assert (=> b!751915 (=> (not res!507838) (not e!419466))))

(declare-datatypes ((SeekEntryResult!7617 0))(
  ( (MissingZero!7617 (index!32835 (_ BitVec 32))) (Found!7617 (index!32836 (_ BitVec 32))) (Intermediate!7617 (undefined!8429 Bool) (index!32837 (_ BitVec 32)) (x!63784 (_ BitVec 32))) (Undefined!7617) (MissingVacant!7617 (index!32838 (_ BitVec 32))) )
))
(declare-fun lt!334463 () SeekEntryResult!7617)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!751915 (= res!507838 (or (= lt!334463 (MissingZero!7617 i!1173)) (= lt!334463 (MissingVacant!7617 i!1173))))))

(declare-datatypes ((array!41800 0))(
  ( (array!41801 (arr!20010 (Array (_ BitVec 32) (_ BitVec 64))) (size!20431 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41800)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41800 (_ BitVec 32)) SeekEntryResult!7617)

(assert (=> b!751915 (= lt!334463 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!751917 () Bool)

(declare-fun res!507837 () Bool)

(assert (=> b!751917 (=> (not res!507837) (not e!419464))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!751917 (= res!507837 (and (= (size!20431 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20431 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20431 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!751918 () Bool)

(declare-fun res!507840 () Bool)

(assert (=> b!751918 (=> (not res!507840) (not e!419464))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!751918 (= res!507840 (validKeyInArray!0 k!2102))))

(declare-fun b!751919 () Bool)

(declare-datatypes ((Unit!25870 0))(
  ( (Unit!25871) )
))
(declare-fun e!419461 () Unit!25870)

(declare-fun Unit!25872 () Unit!25870)

(assert (=> b!751919 (= e!419461 Unit!25872)))

(declare-fun b!751920 () Bool)

(declare-fun res!507828 () Bool)

(declare-fun e!419465 () Bool)

(assert (=> b!751920 (=> (not res!507828) (not e!419465))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!334461 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!334465 () array!41800)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41800 (_ BitVec 32)) SeekEntryResult!7617)

(assert (=> b!751920 (= res!507828 (= (seekEntryOrOpen!0 lt!334461 lt!334465 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334461 lt!334465 mask!3328)))))

(declare-fun b!751921 () Bool)

(declare-fun res!507833 () Bool)

(assert (=> b!751921 (=> (not res!507833) (not e!419466))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41800 (_ BitVec 32)) Bool)

(assert (=> b!751921 (= res!507833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!751922 () Bool)

(declare-fun e!419460 () Bool)

(assert (=> b!751922 (= e!419460 true)))

(assert (=> b!751922 e!419465))

(declare-fun res!507826 () Bool)

(assert (=> b!751922 (=> (not res!507826) (not e!419465))))

(declare-fun lt!334458 () (_ BitVec 64))

(assert (=> b!751922 (= res!507826 (= lt!334458 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334460 () Unit!25870)

(assert (=> b!751922 (= lt!334460 e!419461)))

(declare-fun c!82427 () Bool)

(assert (=> b!751922 (= c!82427 (= lt!334458 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!751923 () Bool)

(declare-fun Unit!25873 () Unit!25870)

(assert (=> b!751923 (= e!419461 Unit!25873)))

(assert (=> b!751923 false))

(declare-fun b!751924 () Bool)

(declare-fun res!507836 () Bool)

(assert (=> b!751924 (=> (not res!507836) (not e!419466))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!751924 (= res!507836 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20431 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20431 a!3186))))))

(declare-fun b!751925 () Bool)

(declare-fun e!419462 () Bool)

(assert (=> b!751925 (= e!419462 e!419460)))

(declare-fun res!507830 () Bool)

(assert (=> b!751925 (=> res!507830 e!419460)))

(assert (=> b!751925 (= res!507830 (= lt!334458 lt!334461))))

(assert (=> b!751925 (= lt!334458 (select (store (arr!20010 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!751926 () Bool)

(declare-fun e!419456 () Bool)

(declare-fun lt!334457 () SeekEntryResult!7617)

(assert (=> b!751926 (= e!419456 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20010 a!3186) j!159) a!3186 mask!3328) lt!334457))))

(declare-fun b!751927 () Bool)

(declare-fun res!507827 () Bool)

(assert (=> b!751927 (=> (not res!507827) (not e!419464))))

(assert (=> b!751927 (= res!507827 (validKeyInArray!0 (select (arr!20010 a!3186) j!159)))))

(declare-fun b!751928 () Bool)

(declare-fun res!507831 () Bool)

(declare-fun e!419455 () Bool)

(assert (=> b!751928 (=> (not res!507831) (not e!419455))))

(assert (=> b!751928 (= res!507831 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20010 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!751929 () Bool)

(declare-fun res!507822 () Bool)

(assert (=> b!751929 (=> (not res!507822) (not e!419464))))

(declare-fun arrayContainsKey!0 (array!41800 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!751929 (= res!507822 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!751930 () Bool)

(declare-fun res!507825 () Bool)

(assert (=> b!751930 (=> (not res!507825) (not e!419466))))

(declare-datatypes ((List!14065 0))(
  ( (Nil!14062) (Cons!14061 (h!15133 (_ BitVec 64)) (t!20388 List!14065)) )
))
(declare-fun arrayNoDuplicates!0 (array!41800 (_ BitVec 32) List!14065) Bool)

(assert (=> b!751930 (= res!507825 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14062))))

(declare-fun e!419457 () Bool)

(declare-fun lt!334456 () SeekEntryResult!7617)

(declare-fun b!751931 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41800 (_ BitVec 32)) SeekEntryResult!7617)

(assert (=> b!751931 (= e!419457 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20010 a!3186) j!159) a!3186 mask!3328) lt!334456))))

(declare-fun b!751932 () Bool)

(assert (=> b!751932 (= e!419457 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20010 a!3186) j!159) a!3186 mask!3328) (Found!7617 j!159)))))

(declare-fun b!751933 () Bool)

(declare-fun e!419459 () Bool)

(declare-fun e!419463 () Bool)

(assert (=> b!751933 (= e!419459 (not e!419463))))

(declare-fun res!507832 () Bool)

(assert (=> b!751933 (=> res!507832 e!419463)))

(declare-fun lt!334466 () SeekEntryResult!7617)

(assert (=> b!751933 (= res!507832 (or (not (is-Intermediate!7617 lt!334466)) (bvslt x!1131 (x!63784 lt!334466)) (not (= x!1131 (x!63784 lt!334466))) (not (= index!1321 (index!32837 lt!334466)))))))

(assert (=> b!751933 e!419456))

(declare-fun res!507829 () Bool)

(assert (=> b!751933 (=> (not res!507829) (not e!419456))))

(declare-fun lt!334455 () SeekEntryResult!7617)

(assert (=> b!751933 (= res!507829 (= lt!334455 lt!334457))))

(assert (=> b!751933 (= lt!334457 (Found!7617 j!159))))

(assert (=> b!751933 (= lt!334455 (seekEntryOrOpen!0 (select (arr!20010 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!751933 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!334464 () Unit!25870)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41800 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25870)

(assert (=> b!751933 (= lt!334464 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!751934 () Bool)

(assert (=> b!751934 (= e!419466 e!419455)))

(declare-fun res!507823 () Bool)

(assert (=> b!751934 (=> (not res!507823) (not e!419455))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!751934 (= res!507823 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20010 a!3186) j!159) mask!3328) (select (arr!20010 a!3186) j!159) a!3186 mask!3328) lt!334456))))

(assert (=> b!751934 (= lt!334456 (Intermediate!7617 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!751935 () Bool)

(declare-fun res!507839 () Bool)

(assert (=> b!751935 (=> (not res!507839) (not e!419455))))

(assert (=> b!751935 (= res!507839 e!419457)))

(declare-fun c!82428 () Bool)

(assert (=> b!751935 (= c!82428 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!751916 () Bool)

(assert (=> b!751916 (= e!419455 e!419459)))

(declare-fun res!507824 () Bool)

(assert (=> b!751916 (=> (not res!507824) (not e!419459))))

(declare-fun lt!334462 () SeekEntryResult!7617)

(assert (=> b!751916 (= res!507824 (= lt!334462 lt!334466))))

(assert (=> b!751916 (= lt!334466 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334461 lt!334465 mask!3328))))

(assert (=> b!751916 (= lt!334462 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334461 mask!3328) lt!334461 lt!334465 mask!3328))))

(assert (=> b!751916 (= lt!334461 (select (store (arr!20010 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!751916 (= lt!334465 (array!41801 (store (arr!20010 a!3186) i!1173 k!2102) (size!20431 a!3186)))))

(declare-fun res!507835 () Bool)

(assert (=> start!65674 (=> (not res!507835) (not e!419464))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65674 (= res!507835 (validMask!0 mask!3328))))

(assert (=> start!65674 e!419464))

(assert (=> start!65674 true))

(declare-fun array_inv!15784 (array!41800) Bool)

(assert (=> start!65674 (array_inv!15784 a!3186)))

(declare-fun b!751936 () Bool)

(declare-fun lt!334459 () SeekEntryResult!7617)

(assert (=> b!751936 (= e!419465 (= lt!334455 lt!334459))))

(declare-fun b!751937 () Bool)

(assert (=> b!751937 (= e!419463 e!419462)))

(declare-fun res!507834 () Bool)

(assert (=> b!751937 (=> res!507834 e!419462)))

(assert (=> b!751937 (= res!507834 (not (= lt!334459 lt!334457)))))

(assert (=> b!751937 (= lt!334459 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20010 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and start!65674 res!507835) b!751917))

(assert (= (and b!751917 res!507837) b!751927))

(assert (= (and b!751927 res!507827) b!751918))

(assert (= (and b!751918 res!507840) b!751929))

(assert (= (and b!751929 res!507822) b!751915))

(assert (= (and b!751915 res!507838) b!751921))

(assert (= (and b!751921 res!507833) b!751930))

(assert (= (and b!751930 res!507825) b!751924))

(assert (= (and b!751924 res!507836) b!751934))

(assert (= (and b!751934 res!507823) b!751928))

(assert (= (and b!751928 res!507831) b!751935))

(assert (= (and b!751935 c!82428) b!751931))

(assert (= (and b!751935 (not c!82428)) b!751932))

(assert (= (and b!751935 res!507839) b!751916))

(assert (= (and b!751916 res!507824) b!751933))

(assert (= (and b!751933 res!507829) b!751926))

(assert (= (and b!751933 (not res!507832)) b!751937))

(assert (= (and b!751937 (not res!507834)) b!751925))

(assert (= (and b!751925 (not res!507830)) b!751922))

(assert (= (and b!751922 c!82427) b!751923))

(assert (= (and b!751922 (not c!82427)) b!751919))

(assert (= (and b!751922 res!507826) b!751920))

(assert (= (and b!751920 res!507828) b!751936))

(declare-fun m!701053 () Bool)

(assert (=> b!751937 m!701053))

(assert (=> b!751937 m!701053))

(declare-fun m!701055 () Bool)

(assert (=> b!751937 m!701055))

(declare-fun m!701057 () Bool)

(assert (=> b!751928 m!701057))

(declare-fun m!701059 () Bool)

(assert (=> b!751916 m!701059))

(declare-fun m!701061 () Bool)

(assert (=> b!751916 m!701061))

(declare-fun m!701063 () Bool)

(assert (=> b!751916 m!701063))

(declare-fun m!701065 () Bool)

(assert (=> b!751916 m!701065))

(assert (=> b!751916 m!701063))

(declare-fun m!701067 () Bool)

(assert (=> b!751916 m!701067))

(declare-fun m!701069 () Bool)

(assert (=> b!751930 m!701069))

(assert (=> b!751927 m!701053))

(assert (=> b!751927 m!701053))

(declare-fun m!701071 () Bool)

(assert (=> b!751927 m!701071))

(declare-fun m!701073 () Bool)

(assert (=> b!751920 m!701073))

(declare-fun m!701075 () Bool)

(assert (=> b!751920 m!701075))

(assert (=> b!751934 m!701053))

(assert (=> b!751934 m!701053))

(declare-fun m!701077 () Bool)

(assert (=> b!751934 m!701077))

(assert (=> b!751934 m!701077))

(assert (=> b!751934 m!701053))

(declare-fun m!701079 () Bool)

(assert (=> b!751934 m!701079))

(assert (=> b!751931 m!701053))

(assert (=> b!751931 m!701053))

(declare-fun m!701081 () Bool)

(assert (=> b!751931 m!701081))

(declare-fun m!701083 () Bool)

(assert (=> b!751921 m!701083))

(declare-fun m!701085 () Bool)

(assert (=> b!751929 m!701085))

(declare-fun m!701087 () Bool)

(assert (=> b!751918 m!701087))

(declare-fun m!701089 () Bool)

(assert (=> b!751915 m!701089))

(assert (=> b!751926 m!701053))

(assert (=> b!751926 m!701053))

(declare-fun m!701091 () Bool)

(assert (=> b!751926 m!701091))

(assert (=> b!751933 m!701053))

(assert (=> b!751933 m!701053))

(declare-fun m!701093 () Bool)

(assert (=> b!751933 m!701093))

(declare-fun m!701095 () Bool)

(assert (=> b!751933 m!701095))

(declare-fun m!701097 () Bool)

(assert (=> b!751933 m!701097))

(assert (=> b!751932 m!701053))

(assert (=> b!751932 m!701053))

(assert (=> b!751932 m!701055))

(assert (=> b!751925 m!701059))

(declare-fun m!701099 () Bool)

(assert (=> b!751925 m!701099))

(declare-fun m!701101 () Bool)

(assert (=> start!65674 m!701101))

(declare-fun m!701103 () Bool)

(assert (=> start!65674 m!701103))

(push 1)

