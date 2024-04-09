; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120506 () Bool)

(assert start!120506)

(declare-fun b!1402567 () Bool)

(declare-fun res!941196 () Bool)

(declare-fun e!794229 () Bool)

(assert (=> b!1402567 (=> (not res!941196) (not e!794229))))

(declare-datatypes ((array!95833 0))(
  ( (array!95834 (arr!46263 (Array (_ BitVec 32) (_ BitVec 64))) (size!46814 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95833)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402567 (= res!941196 (validKeyInArray!0 (select (arr!46263 a!2901) i!1037)))))

(declare-fun b!1402568 () Bool)

(declare-fun e!794230 () Bool)

(assert (=> b!1402568 (= e!794229 (not e!794230))))

(declare-fun res!941193 () Bool)

(assert (=> b!1402568 (=> res!941193 e!794230)))

(declare-datatypes ((SeekEntryResult!10602 0))(
  ( (MissingZero!10602 (index!44784 (_ BitVec 32))) (Found!10602 (index!44785 (_ BitVec 32))) (Intermediate!10602 (undefined!11414 Bool) (index!44786 (_ BitVec 32)) (x!126408 (_ BitVec 32))) (Undefined!10602) (MissingVacant!10602 (index!44787 (_ BitVec 32))) )
))
(declare-fun lt!617872 () SeekEntryResult!10602)

(assert (=> b!1402568 (= res!941193 (or (not (is-Intermediate!10602 lt!617872)) (undefined!11414 lt!617872)))))

(declare-fun lt!617879 () SeekEntryResult!10602)

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1402568 (= lt!617879 (Found!10602 j!112))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95833 (_ BitVec 32)) SeekEntryResult!10602)

(assert (=> b!1402568 (= lt!617879 (seekEntryOrOpen!0 (select (arr!46263 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95833 (_ BitVec 32)) Bool)

(assert (=> b!1402568 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47158 0))(
  ( (Unit!47159) )
))
(declare-fun lt!617873 () Unit!47158)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95833 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47158)

(assert (=> b!1402568 (= lt!617873 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!617877 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95833 (_ BitVec 32)) SeekEntryResult!10602)

(assert (=> b!1402568 (= lt!617872 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617877 (select (arr!46263 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402568 (= lt!617877 (toIndex!0 (select (arr!46263 a!2901) j!112) mask!2840))))

(declare-fun b!1402569 () Bool)

(declare-fun e!794227 () Bool)

(declare-fun e!794231 () Bool)

(assert (=> b!1402569 (= e!794227 e!794231)))

(declare-fun res!941187 () Bool)

(assert (=> b!1402569 (=> res!941187 e!794231)))

(declare-fun lt!617875 () SeekEntryResult!10602)

(assert (=> b!1402569 (= res!941187 (or (bvslt (x!126408 lt!617872) #b00000000000000000000000000000000) (bvsgt (x!126408 lt!617872) #b01111111111111111111111111111110) (bvslt (x!126408 lt!617875) #b00000000000000000000000000000000) (bvsgt (x!126408 lt!617875) #b01111111111111111111111111111110) (bvslt lt!617877 #b00000000000000000000000000000000) (bvsge lt!617877 (size!46814 a!2901)) (bvslt (index!44786 lt!617872) #b00000000000000000000000000000000) (bvsge (index!44786 lt!617872) (size!46814 a!2901)) (bvslt (index!44786 lt!617875) #b00000000000000000000000000000000) (bvsge (index!44786 lt!617875) (size!46814 a!2901)) (not (= lt!617872 (Intermediate!10602 false (index!44786 lt!617872) (x!126408 lt!617872)))) (not (= lt!617875 (Intermediate!10602 false (index!44786 lt!617875) (x!126408 lt!617875))))))))

(declare-fun lt!617881 () array!95833)

(declare-fun lt!617880 () SeekEntryResult!10602)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95833 (_ BitVec 32)) SeekEntryResult!10602)

(assert (=> b!1402569 (= lt!617880 (seekKeyOrZeroReturnVacant!0 (x!126408 lt!617875) (index!44786 lt!617875) (index!44786 lt!617875) (select (arr!46263 a!2901) j!112) lt!617881 mask!2840))))

(declare-fun lt!617874 () (_ BitVec 64))

(assert (=> b!1402569 (= lt!617880 (seekEntryOrOpen!0 lt!617874 lt!617881 mask!2840))))

(assert (=> b!1402569 (and (not (undefined!11414 lt!617875)) (= (index!44786 lt!617875) i!1037) (bvslt (x!126408 lt!617875) (x!126408 lt!617872)) (= (select (store (arr!46263 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44786 lt!617875)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!617878 () Unit!47158)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95833 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47158)

(assert (=> b!1402569 (= lt!617878 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617877 (x!126408 lt!617872) (index!44786 lt!617872) (x!126408 lt!617875) (index!44786 lt!617875) (undefined!11414 lt!617875) mask!2840))))

(declare-fun b!1402570 () Bool)

(assert (=> b!1402570 (= e!794231 true)))

(assert (=> b!1402570 (= lt!617879 lt!617880)))

(declare-fun lt!617876 () Unit!47158)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95833 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47158)

(assert (=> b!1402570 (= lt!617876 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617877 (x!126408 lt!617872) (index!44786 lt!617872) (x!126408 lt!617875) (index!44786 lt!617875) mask!2840))))

(declare-fun b!1402571 () Bool)

(declare-fun res!941188 () Bool)

(assert (=> b!1402571 (=> (not res!941188) (not e!794229))))

(assert (=> b!1402571 (= res!941188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!941189 () Bool)

(assert (=> start!120506 (=> (not res!941189) (not e!794229))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120506 (= res!941189 (validMask!0 mask!2840))))

(assert (=> start!120506 e!794229))

(assert (=> start!120506 true))

(declare-fun array_inv!35208 (array!95833) Bool)

(assert (=> start!120506 (array_inv!35208 a!2901)))

(declare-fun b!1402572 () Bool)

(declare-fun res!941191 () Bool)

(assert (=> b!1402572 (=> (not res!941191) (not e!794229))))

(assert (=> b!1402572 (= res!941191 (validKeyInArray!0 (select (arr!46263 a!2901) j!112)))))

(declare-fun b!1402573 () Bool)

(declare-fun res!941195 () Bool)

(assert (=> b!1402573 (=> (not res!941195) (not e!794229))))

(declare-datatypes ((List!32962 0))(
  ( (Nil!32959) (Cons!32958 (h!34206 (_ BitVec 64)) (t!47663 List!32962)) )
))
(declare-fun arrayNoDuplicates!0 (array!95833 (_ BitVec 32) List!32962) Bool)

(assert (=> b!1402573 (= res!941195 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32959))))

(declare-fun b!1402574 () Bool)

(declare-fun res!941190 () Bool)

(assert (=> b!1402574 (=> res!941190 e!794231)))

(assert (=> b!1402574 (= res!941190 (not (= lt!617875 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617877 lt!617874 lt!617881 mask!2840))))))

(declare-fun b!1402575 () Bool)

(declare-fun res!941194 () Bool)

(assert (=> b!1402575 (=> (not res!941194) (not e!794229))))

(assert (=> b!1402575 (= res!941194 (and (= (size!46814 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46814 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46814 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402576 () Bool)

(assert (=> b!1402576 (= e!794230 e!794227)))

(declare-fun res!941192 () Bool)

(assert (=> b!1402576 (=> res!941192 e!794227)))

(assert (=> b!1402576 (= res!941192 (or (= lt!617872 lt!617875) (not (is-Intermediate!10602 lt!617875))))))

(assert (=> b!1402576 (= lt!617875 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617874 mask!2840) lt!617874 lt!617881 mask!2840))))

(assert (=> b!1402576 (= lt!617874 (select (store (arr!46263 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402576 (= lt!617881 (array!95834 (store (arr!46263 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46814 a!2901)))))

(assert (= (and start!120506 res!941189) b!1402575))

(assert (= (and b!1402575 res!941194) b!1402567))

(assert (= (and b!1402567 res!941196) b!1402572))

(assert (= (and b!1402572 res!941191) b!1402571))

(assert (= (and b!1402571 res!941188) b!1402573))

(assert (= (and b!1402573 res!941195) b!1402568))

(assert (= (and b!1402568 (not res!941193)) b!1402576))

(assert (= (and b!1402576 (not res!941192)) b!1402569))

(assert (= (and b!1402569 (not res!941187)) b!1402574))

(assert (= (and b!1402574 (not res!941190)) b!1402570))

(declare-fun m!1290901 () Bool)

(assert (=> b!1402571 m!1290901))

(declare-fun m!1290903 () Bool)

(assert (=> b!1402573 m!1290903))

(declare-fun m!1290905 () Bool)

(assert (=> b!1402568 m!1290905))

(declare-fun m!1290907 () Bool)

(assert (=> b!1402568 m!1290907))

(assert (=> b!1402568 m!1290905))

(declare-fun m!1290909 () Bool)

(assert (=> b!1402568 m!1290909))

(assert (=> b!1402568 m!1290905))

(declare-fun m!1290911 () Bool)

(assert (=> b!1402568 m!1290911))

(declare-fun m!1290913 () Bool)

(assert (=> b!1402568 m!1290913))

(assert (=> b!1402568 m!1290905))

(declare-fun m!1290915 () Bool)

(assert (=> b!1402568 m!1290915))

(declare-fun m!1290917 () Bool)

(assert (=> start!120506 m!1290917))

(declare-fun m!1290919 () Bool)

(assert (=> start!120506 m!1290919))

(declare-fun m!1290921 () Bool)

(assert (=> b!1402567 m!1290921))

(assert (=> b!1402567 m!1290921))

(declare-fun m!1290923 () Bool)

(assert (=> b!1402567 m!1290923))

(declare-fun m!1290925 () Bool)

(assert (=> b!1402576 m!1290925))

(assert (=> b!1402576 m!1290925))

(declare-fun m!1290927 () Bool)

(assert (=> b!1402576 m!1290927))

(declare-fun m!1290929 () Bool)

(assert (=> b!1402576 m!1290929))

(declare-fun m!1290931 () Bool)

(assert (=> b!1402576 m!1290931))

(declare-fun m!1290933 () Bool)

(assert (=> b!1402574 m!1290933))

(assert (=> b!1402569 m!1290905))

(declare-fun m!1290935 () Bool)

(assert (=> b!1402569 m!1290935))

(declare-fun m!1290937 () Bool)

(assert (=> b!1402569 m!1290937))

(assert (=> b!1402569 m!1290929))

(declare-fun m!1290939 () Bool)

(assert (=> b!1402569 m!1290939))

(assert (=> b!1402569 m!1290905))

(declare-fun m!1290941 () Bool)

(assert (=> b!1402569 m!1290941))

(assert (=> b!1402572 m!1290905))

(assert (=> b!1402572 m!1290905))

(declare-fun m!1290943 () Bool)

(assert (=> b!1402572 m!1290943))

(declare-fun m!1290945 () Bool)

(assert (=> b!1402570 m!1290945))

(push 1)

