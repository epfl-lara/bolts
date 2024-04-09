; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120342 () Bool)

(assert start!120342)

(declare-fun b!1399905 () Bool)

(declare-fun res!938529 () Bool)

(declare-fun e!792593 () Bool)

(assert (=> b!1399905 (=> (not res!938529) (not e!792593))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95669 0))(
  ( (array!95670 (arr!46181 (Array (_ BitVec 32) (_ BitVec 64))) (size!46732 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95669)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1399905 (= res!938529 (and (= (size!46732 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46732 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46732 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1399906 () Bool)

(declare-fun res!938528 () Bool)

(assert (=> b!1399906 (=> (not res!938528) (not e!792593))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399906 (= res!938528 (validKeyInArray!0 (select (arr!46181 a!2901) j!112)))))

(declare-fun b!1399907 () Bool)

(declare-fun res!938534 () Bool)

(assert (=> b!1399907 (=> (not res!938534) (not e!792593))))

(assert (=> b!1399907 (= res!938534 (validKeyInArray!0 (select (arr!46181 a!2901) i!1037)))))

(declare-fun b!1399908 () Bool)

(declare-fun res!938533 () Bool)

(assert (=> b!1399908 (=> (not res!938533) (not e!792593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95669 (_ BitVec 32)) Bool)

(assert (=> b!1399908 (= res!938533 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun e!792598 () Bool)

(declare-fun b!1399909 () Bool)

(declare-datatypes ((SeekEntryResult!10520 0))(
  ( (MissingZero!10520 (index!44456 (_ BitVec 32))) (Found!10520 (index!44457 (_ BitVec 32))) (Intermediate!10520 (undefined!11332 Bool) (index!44458 (_ BitVec 32)) (x!126110 (_ BitVec 32))) (Undefined!10520) (MissingVacant!10520 (index!44459 (_ BitVec 32))) )
))
(declare-fun lt!615823 () SeekEntryResult!10520)

(declare-fun lt!615818 () array!95669)

(declare-fun lt!615821 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95669 (_ BitVec 32)) SeekEntryResult!10520)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95669 (_ BitVec 32)) SeekEntryResult!10520)

(assert (=> b!1399909 (= e!792598 (= (seekEntryOrOpen!0 lt!615821 lt!615818 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126110 lt!615823) (index!44458 lt!615823) (index!44458 lt!615823) (select (arr!46181 a!2901) j!112) lt!615818 mask!2840)))))

(declare-fun b!1399910 () Bool)

(declare-fun e!792596 () Bool)

(assert (=> b!1399910 (= e!792593 (not e!792596))))

(declare-fun res!938526 () Bool)

(assert (=> b!1399910 (=> res!938526 e!792596)))

(declare-fun lt!615820 () SeekEntryResult!10520)

(get-info :version)

(assert (=> b!1399910 (= res!938526 (or (not ((_ is Intermediate!10520) lt!615820)) (undefined!11332 lt!615820)))))

(declare-fun e!792594 () Bool)

(assert (=> b!1399910 e!792594))

(declare-fun res!938530 () Bool)

(assert (=> b!1399910 (=> (not res!938530) (not e!792594))))

(assert (=> b!1399910 (= res!938530 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46994 0))(
  ( (Unit!46995) )
))
(declare-fun lt!615817 () Unit!46994)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95669 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46994)

(assert (=> b!1399910 (= lt!615817 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!615819 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95669 (_ BitVec 32)) SeekEntryResult!10520)

(assert (=> b!1399910 (= lt!615820 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615819 (select (arr!46181 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399910 (= lt!615819 (toIndex!0 (select (arr!46181 a!2901) j!112) mask!2840))))

(declare-fun b!1399911 () Bool)

(declare-fun e!792599 () Bool)

(declare-fun e!792595 () Bool)

(assert (=> b!1399911 (= e!792599 e!792595)))

(declare-fun res!938535 () Bool)

(assert (=> b!1399911 (=> res!938535 e!792595)))

(assert (=> b!1399911 (= res!938535 (or (bvslt (x!126110 lt!615820) #b00000000000000000000000000000000) (bvsgt (x!126110 lt!615820) #b01111111111111111111111111111110) (bvslt (x!126110 lt!615823) #b00000000000000000000000000000000) (bvsgt (x!126110 lt!615823) #b01111111111111111111111111111110) (bvslt lt!615819 #b00000000000000000000000000000000) (bvsge lt!615819 (size!46732 a!2901)) (bvslt (index!44458 lt!615820) #b00000000000000000000000000000000) (bvsge (index!44458 lt!615820) (size!46732 a!2901)) (bvslt (index!44458 lt!615823) #b00000000000000000000000000000000) (bvsge (index!44458 lt!615823) (size!46732 a!2901)) (not (= lt!615820 (Intermediate!10520 false (index!44458 lt!615820) (x!126110 lt!615820)))) (not (= lt!615823 (Intermediate!10520 false (index!44458 lt!615823) (x!126110 lt!615823))))))))

(assert (=> b!1399911 e!792598))

(declare-fun res!938532 () Bool)

(assert (=> b!1399911 (=> (not res!938532) (not e!792598))))

(assert (=> b!1399911 (= res!938532 (and (not (undefined!11332 lt!615823)) (= (index!44458 lt!615823) i!1037) (bvslt (x!126110 lt!615823) (x!126110 lt!615820)) (= (select (store (arr!46181 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44458 lt!615823)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!615816 () Unit!46994)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95669 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46994)

(assert (=> b!1399911 (= lt!615816 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615819 (x!126110 lt!615820) (index!44458 lt!615820) (x!126110 lt!615823) (index!44458 lt!615823) (undefined!11332 lt!615823) mask!2840))))

(declare-fun b!1399912 () Bool)

(declare-fun res!938527 () Bool)

(assert (=> b!1399912 (=> (not res!938527) (not e!792593))))

(declare-datatypes ((List!32880 0))(
  ( (Nil!32877) (Cons!32876 (h!34124 (_ BitVec 64)) (t!47581 List!32880)) )
))
(declare-fun arrayNoDuplicates!0 (array!95669 (_ BitVec 32) List!32880) Bool)

(assert (=> b!1399912 (= res!938527 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32877))))

(declare-fun b!1399914 () Bool)

(assert (=> b!1399914 (= e!792595 true)))

(declare-fun lt!615822 () SeekEntryResult!10520)

(assert (=> b!1399914 (= lt!615822 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615819 lt!615821 lt!615818 mask!2840))))

(declare-fun b!1399915 () Bool)

(assert (=> b!1399915 (= e!792596 e!792599)))

(declare-fun res!938525 () Bool)

(assert (=> b!1399915 (=> res!938525 e!792599)))

(assert (=> b!1399915 (= res!938525 (or (= lt!615820 lt!615823) (not ((_ is Intermediate!10520) lt!615823))))))

(assert (=> b!1399915 (= lt!615823 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615821 mask!2840) lt!615821 lt!615818 mask!2840))))

(assert (=> b!1399915 (= lt!615821 (select (store (arr!46181 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1399915 (= lt!615818 (array!95670 (store (arr!46181 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46732 a!2901)))))

(declare-fun b!1399913 () Bool)

(assert (=> b!1399913 (= e!792594 (= (seekEntryOrOpen!0 (select (arr!46181 a!2901) j!112) a!2901 mask!2840) (Found!10520 j!112)))))

(declare-fun res!938531 () Bool)

(assert (=> start!120342 (=> (not res!938531) (not e!792593))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120342 (= res!938531 (validMask!0 mask!2840))))

(assert (=> start!120342 e!792593))

(assert (=> start!120342 true))

(declare-fun array_inv!35126 (array!95669) Bool)

(assert (=> start!120342 (array_inv!35126 a!2901)))

(assert (= (and start!120342 res!938531) b!1399905))

(assert (= (and b!1399905 res!938529) b!1399907))

(assert (= (and b!1399907 res!938534) b!1399906))

(assert (= (and b!1399906 res!938528) b!1399908))

(assert (= (and b!1399908 res!938533) b!1399912))

(assert (= (and b!1399912 res!938527) b!1399910))

(assert (= (and b!1399910 res!938530) b!1399913))

(assert (= (and b!1399910 (not res!938526)) b!1399915))

(assert (= (and b!1399915 (not res!938525)) b!1399911))

(assert (= (and b!1399911 res!938532) b!1399909))

(assert (= (and b!1399911 (not res!938535)) b!1399914))

(declare-fun m!1287265 () Bool)

(assert (=> b!1399915 m!1287265))

(assert (=> b!1399915 m!1287265))

(declare-fun m!1287267 () Bool)

(assert (=> b!1399915 m!1287267))

(declare-fun m!1287269 () Bool)

(assert (=> b!1399915 m!1287269))

(declare-fun m!1287271 () Bool)

(assert (=> b!1399915 m!1287271))

(declare-fun m!1287273 () Bool)

(assert (=> b!1399907 m!1287273))

(assert (=> b!1399907 m!1287273))

(declare-fun m!1287275 () Bool)

(assert (=> b!1399907 m!1287275))

(declare-fun m!1287277 () Bool)

(assert (=> b!1399912 m!1287277))

(declare-fun m!1287279 () Bool)

(assert (=> b!1399910 m!1287279))

(declare-fun m!1287281 () Bool)

(assert (=> b!1399910 m!1287281))

(assert (=> b!1399910 m!1287279))

(assert (=> b!1399910 m!1287279))

(declare-fun m!1287283 () Bool)

(assert (=> b!1399910 m!1287283))

(declare-fun m!1287285 () Bool)

(assert (=> b!1399910 m!1287285))

(declare-fun m!1287287 () Bool)

(assert (=> b!1399910 m!1287287))

(declare-fun m!1287289 () Bool)

(assert (=> b!1399908 m!1287289))

(declare-fun m!1287291 () Bool)

(assert (=> start!120342 m!1287291))

(declare-fun m!1287293 () Bool)

(assert (=> start!120342 m!1287293))

(assert (=> b!1399906 m!1287279))

(assert (=> b!1399906 m!1287279))

(declare-fun m!1287295 () Bool)

(assert (=> b!1399906 m!1287295))

(declare-fun m!1287297 () Bool)

(assert (=> b!1399914 m!1287297))

(declare-fun m!1287299 () Bool)

(assert (=> b!1399909 m!1287299))

(assert (=> b!1399909 m!1287279))

(assert (=> b!1399909 m!1287279))

(declare-fun m!1287301 () Bool)

(assert (=> b!1399909 m!1287301))

(assert (=> b!1399911 m!1287269))

(declare-fun m!1287303 () Bool)

(assert (=> b!1399911 m!1287303))

(declare-fun m!1287305 () Bool)

(assert (=> b!1399911 m!1287305))

(assert (=> b!1399913 m!1287279))

(assert (=> b!1399913 m!1287279))

(declare-fun m!1287307 () Bool)

(assert (=> b!1399913 m!1287307))

(check-sat (not b!1399915) (not start!120342) (not b!1399907) (not b!1399910) (not b!1399908) (not b!1399912) (not b!1399914) (not b!1399911) (not b!1399909) (not b!1399906) (not b!1399913))
(check-sat)
