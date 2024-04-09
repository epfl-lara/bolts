; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120510 () Bool)

(assert start!120510)

(declare-fun b!1402627 () Bool)

(declare-fun res!941249 () Bool)

(declare-fun e!794258 () Bool)

(assert (=> b!1402627 (=> (not res!941249) (not e!794258))))

(declare-datatypes ((array!95837 0))(
  ( (array!95838 (arr!46265 (Array (_ BitVec 32) (_ BitVec 64))) (size!46816 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95837)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95837 (_ BitVec 32)) Bool)

(assert (=> b!1402627 (= res!941249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402628 () Bool)

(declare-fun e!794260 () Bool)

(declare-fun e!794261 () Bool)

(assert (=> b!1402628 (= e!794260 e!794261)))

(declare-fun res!941255 () Bool)

(assert (=> b!1402628 (=> res!941255 e!794261)))

(declare-datatypes ((SeekEntryResult!10604 0))(
  ( (MissingZero!10604 (index!44792 (_ BitVec 32))) (Found!10604 (index!44793 (_ BitVec 32))) (Intermediate!10604 (undefined!11416 Bool) (index!44794 (_ BitVec 32)) (x!126418 (_ BitVec 32))) (Undefined!10604) (MissingVacant!10604 (index!44795 (_ BitVec 32))) )
))
(declare-fun lt!617936 () SeekEntryResult!10604)

(declare-fun lt!617939 () SeekEntryResult!10604)

(get-info :version)

(assert (=> b!1402628 (= res!941255 (or (= lt!617936 lt!617939) (not ((_ is Intermediate!10604) lt!617939))))))

(declare-fun lt!617935 () array!95837)

(declare-fun lt!617940 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95837 (_ BitVec 32)) SeekEntryResult!10604)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402628 (= lt!617939 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617940 mask!2840) lt!617940 lt!617935 mask!2840))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1402628 (= lt!617940 (select (store (arr!46265 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402628 (= lt!617935 (array!95838 (store (arr!46265 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46816 a!2901)))))

(declare-fun b!1402629 () Bool)

(declare-fun res!941252 () Bool)

(assert (=> b!1402629 (=> (not res!941252) (not e!794258))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402629 (= res!941252 (validKeyInArray!0 (select (arr!46265 a!2901) i!1037)))))

(declare-fun b!1402630 () Bool)

(declare-fun res!941250 () Bool)

(assert (=> b!1402630 (=> (not res!941250) (not e!794258))))

(assert (=> b!1402630 (= res!941250 (validKeyInArray!0 (select (arr!46265 a!2901) j!112)))))

(declare-fun res!941251 () Bool)

(assert (=> start!120510 (=> (not res!941251) (not e!794258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120510 (= res!941251 (validMask!0 mask!2840))))

(assert (=> start!120510 e!794258))

(assert (=> start!120510 true))

(declare-fun array_inv!35210 (array!95837) Bool)

(assert (=> start!120510 (array_inv!35210 a!2901)))

(declare-fun b!1402631 () Bool)

(declare-fun e!794259 () Bool)

(assert (=> b!1402631 (= e!794261 e!794259)))

(declare-fun res!941254 () Bool)

(assert (=> b!1402631 (=> res!941254 e!794259)))

(declare-fun lt!617932 () (_ BitVec 32))

(assert (=> b!1402631 (= res!941254 (or (bvslt (x!126418 lt!617936) #b00000000000000000000000000000000) (bvsgt (x!126418 lt!617936) #b01111111111111111111111111111110) (bvslt (x!126418 lt!617939) #b00000000000000000000000000000000) (bvsgt (x!126418 lt!617939) #b01111111111111111111111111111110) (bvslt lt!617932 #b00000000000000000000000000000000) (bvsge lt!617932 (size!46816 a!2901)) (bvslt (index!44794 lt!617936) #b00000000000000000000000000000000) (bvsge (index!44794 lt!617936) (size!46816 a!2901)) (bvslt (index!44794 lt!617939) #b00000000000000000000000000000000) (bvsge (index!44794 lt!617939) (size!46816 a!2901)) (not (= lt!617936 (Intermediate!10604 false (index!44794 lt!617936) (x!126418 lt!617936)))) (not (= lt!617939 (Intermediate!10604 false (index!44794 lt!617939) (x!126418 lt!617939))))))))

(declare-fun lt!617937 () SeekEntryResult!10604)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95837 (_ BitVec 32)) SeekEntryResult!10604)

(assert (=> b!1402631 (= lt!617937 (seekKeyOrZeroReturnVacant!0 (x!126418 lt!617939) (index!44794 lt!617939) (index!44794 lt!617939) (select (arr!46265 a!2901) j!112) lt!617935 mask!2840))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95837 (_ BitVec 32)) SeekEntryResult!10604)

(assert (=> b!1402631 (= lt!617937 (seekEntryOrOpen!0 lt!617940 lt!617935 mask!2840))))

(assert (=> b!1402631 (and (not (undefined!11416 lt!617939)) (= (index!44794 lt!617939) i!1037) (bvslt (x!126418 lt!617939) (x!126418 lt!617936)) (= (select (store (arr!46265 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44794 lt!617939)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!47162 0))(
  ( (Unit!47163) )
))
(declare-fun lt!617938 () Unit!47162)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95837 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47162)

(assert (=> b!1402631 (= lt!617938 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617932 (x!126418 lt!617936) (index!44794 lt!617936) (x!126418 lt!617939) (index!44794 lt!617939) (undefined!11416 lt!617939) mask!2840))))

(declare-fun b!1402632 () Bool)

(declare-fun res!941253 () Bool)

(assert (=> b!1402632 (=> res!941253 e!794259)))

(assert (=> b!1402632 (= res!941253 (not (= lt!617939 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617932 lt!617940 lt!617935 mask!2840))))))

(declare-fun b!1402633 () Bool)

(declare-fun res!941247 () Bool)

(assert (=> b!1402633 (=> (not res!941247) (not e!794258))))

(declare-datatypes ((List!32964 0))(
  ( (Nil!32961) (Cons!32960 (h!34208 (_ BitVec 64)) (t!47665 List!32964)) )
))
(declare-fun arrayNoDuplicates!0 (array!95837 (_ BitVec 32) List!32964) Bool)

(assert (=> b!1402633 (= res!941247 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32961))))

(declare-fun b!1402634 () Bool)

(assert (=> b!1402634 (= e!794259 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun lt!617941 () SeekEntryResult!10604)

(assert (=> b!1402634 (= lt!617941 lt!617937)))

(declare-fun lt!617933 () Unit!47162)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95837 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47162)

(assert (=> b!1402634 (= lt!617933 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617932 (x!126418 lt!617936) (index!44794 lt!617936) (x!126418 lt!617939) (index!44794 lt!617939) mask!2840))))

(declare-fun b!1402635 () Bool)

(assert (=> b!1402635 (= e!794258 (not e!794260))))

(declare-fun res!941256 () Bool)

(assert (=> b!1402635 (=> res!941256 e!794260)))

(assert (=> b!1402635 (= res!941256 (or (not ((_ is Intermediate!10604) lt!617936)) (undefined!11416 lt!617936)))))

(assert (=> b!1402635 (= lt!617941 (Found!10604 j!112))))

(assert (=> b!1402635 (= lt!617941 (seekEntryOrOpen!0 (select (arr!46265 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402635 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!617934 () Unit!47162)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95837 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47162)

(assert (=> b!1402635 (= lt!617934 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1402635 (= lt!617936 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617932 (select (arr!46265 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402635 (= lt!617932 (toIndex!0 (select (arr!46265 a!2901) j!112) mask!2840))))

(declare-fun b!1402636 () Bool)

(declare-fun res!941248 () Bool)

(assert (=> b!1402636 (=> (not res!941248) (not e!794258))))

(assert (=> b!1402636 (= res!941248 (and (= (size!46816 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46816 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46816 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120510 res!941251) b!1402636))

(assert (= (and b!1402636 res!941248) b!1402629))

(assert (= (and b!1402629 res!941252) b!1402630))

(assert (= (and b!1402630 res!941250) b!1402627))

(assert (= (and b!1402627 res!941249) b!1402633))

(assert (= (and b!1402633 res!941247) b!1402635))

(assert (= (and b!1402635 (not res!941256)) b!1402628))

(assert (= (and b!1402628 (not res!941255)) b!1402631))

(assert (= (and b!1402631 (not res!941254)) b!1402632))

(assert (= (and b!1402632 (not res!941253)) b!1402634))

(declare-fun m!1290993 () Bool)

(assert (=> b!1402627 m!1290993))

(declare-fun m!1290995 () Bool)

(assert (=> b!1402631 m!1290995))

(assert (=> b!1402631 m!1290995))

(declare-fun m!1290997 () Bool)

(assert (=> b!1402631 m!1290997))

(declare-fun m!1290999 () Bool)

(assert (=> b!1402631 m!1290999))

(declare-fun m!1291001 () Bool)

(assert (=> b!1402631 m!1291001))

(declare-fun m!1291003 () Bool)

(assert (=> b!1402631 m!1291003))

(declare-fun m!1291005 () Bool)

(assert (=> b!1402631 m!1291005))

(declare-fun m!1291007 () Bool)

(assert (=> b!1402628 m!1291007))

(assert (=> b!1402628 m!1291007))

(declare-fun m!1291009 () Bool)

(assert (=> b!1402628 m!1291009))

(assert (=> b!1402628 m!1291001))

(declare-fun m!1291011 () Bool)

(assert (=> b!1402628 m!1291011))

(declare-fun m!1291013 () Bool)

(assert (=> b!1402632 m!1291013))

(declare-fun m!1291015 () Bool)

(assert (=> b!1402629 m!1291015))

(assert (=> b!1402629 m!1291015))

(declare-fun m!1291017 () Bool)

(assert (=> b!1402629 m!1291017))

(assert (=> b!1402630 m!1290995))

(assert (=> b!1402630 m!1290995))

(declare-fun m!1291019 () Bool)

(assert (=> b!1402630 m!1291019))

(declare-fun m!1291021 () Bool)

(assert (=> b!1402633 m!1291021))

(assert (=> b!1402635 m!1290995))

(declare-fun m!1291023 () Bool)

(assert (=> b!1402635 m!1291023))

(declare-fun m!1291025 () Bool)

(assert (=> b!1402635 m!1291025))

(assert (=> b!1402635 m!1290995))

(declare-fun m!1291027 () Bool)

(assert (=> b!1402635 m!1291027))

(declare-fun m!1291029 () Bool)

(assert (=> b!1402635 m!1291029))

(assert (=> b!1402635 m!1290995))

(declare-fun m!1291031 () Bool)

(assert (=> b!1402635 m!1291031))

(assert (=> b!1402635 m!1290995))

(declare-fun m!1291033 () Bool)

(assert (=> b!1402634 m!1291033))

(declare-fun m!1291035 () Bool)

(assert (=> start!120510 m!1291035))

(declare-fun m!1291037 () Bool)

(assert (=> start!120510 m!1291037))

(check-sat (not b!1402630) (not b!1402629) (not b!1402635) (not b!1402632) (not b!1402628) (not b!1402634) (not b!1402633) (not b!1402631) (not b!1402627) (not start!120510))
(check-sat)
