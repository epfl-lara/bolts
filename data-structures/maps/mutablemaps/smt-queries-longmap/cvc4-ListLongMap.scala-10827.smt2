; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126788 () Bool)

(assert start!126788)

(declare-fun b!1487851 () Bool)

(declare-fun e!834031 () Bool)

(declare-fun e!834023 () Bool)

(assert (=> b!1487851 (= e!834031 e!834023)))

(declare-fun res!1011917 () Bool)

(assert (=> b!1487851 (=> res!1011917 e!834023)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!648948 () (_ BitVec 64))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99541 0))(
  ( (array!99542 (arr!48039 (Array (_ BitVec 32) (_ BitVec 64))) (size!48590 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99541)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1487851 (= res!1011917 (or (and (= (select (arr!48039 a!2862) index!646) lt!648948) (= (select (arr!48039 a!2862) index!646) (select (arr!48039 a!2862) j!93))) (= (select (arr!48039 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1487851 (= lt!648948 (select (store (arr!48039 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1487852 () Bool)

(declare-fun res!1011918 () Bool)

(declare-fun e!834022 () Bool)

(assert (=> b!1487852 (=> (not res!1011918) (not e!834022))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1487852 (= res!1011918 (validKeyInArray!0 (select (arr!48039 a!2862) j!93)))))

(declare-fun b!1487853 () Bool)

(declare-fun e!834030 () Bool)

(declare-fun e!834026 () Bool)

(assert (=> b!1487853 (= e!834030 (not e!834026))))

(declare-fun res!1011924 () Bool)

(assert (=> b!1487853 (=> res!1011924 e!834026)))

(assert (=> b!1487853 (= res!1011924 (or (and (= (select (arr!48039 a!2862) index!646) (select (store (arr!48039 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48039 a!2862) index!646) (select (arr!48039 a!2862) j!93))) (= (select (arr!48039 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1487853 e!834031))

(declare-fun res!1011926 () Bool)

(assert (=> b!1487853 (=> (not res!1011926) (not e!834031))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99541 (_ BitVec 32)) Bool)

(assert (=> b!1487853 (= res!1011926 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49892 0))(
  ( (Unit!49893) )
))
(declare-fun lt!648950 () Unit!49892)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99541 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49892)

(assert (=> b!1487853 (= lt!648950 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1487854 () Bool)

(declare-fun res!1011920 () Bool)

(assert (=> b!1487854 (=> (not res!1011920) (not e!834031))))

(declare-datatypes ((SeekEntryResult!12302 0))(
  ( (MissingZero!12302 (index!51599 (_ BitVec 32))) (Found!12302 (index!51600 (_ BitVec 32))) (Intermediate!12302 (undefined!13114 Bool) (index!51601 (_ BitVec 32)) (x!133189 (_ BitVec 32))) (Undefined!12302) (MissingVacant!12302 (index!51602 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99541 (_ BitVec 32)) SeekEntryResult!12302)

(assert (=> b!1487854 (= res!1011920 (= (seekEntryOrOpen!0 (select (arr!48039 a!2862) j!93) a!2862 mask!2687) (Found!12302 j!93)))))

(declare-fun lt!648945 () (_ BitVec 64))

(declare-fun lt!648946 () array!99541)

(declare-fun e!834029 () Bool)

(declare-fun b!1487855 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99541 (_ BitVec 32)) SeekEntryResult!12302)

(assert (=> b!1487855 (= e!834029 (= (seekEntryOrOpen!0 lt!648945 lt!648946 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648945 lt!648946 mask!2687)))))

(declare-fun res!1011929 () Bool)

(assert (=> start!126788 (=> (not res!1011929) (not e!834022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126788 (= res!1011929 (validMask!0 mask!2687))))

(assert (=> start!126788 e!834022))

(assert (=> start!126788 true))

(declare-fun array_inv!36984 (array!99541) Bool)

(assert (=> start!126788 (array_inv!36984 a!2862)))

(declare-fun b!1487856 () Bool)

(declare-fun res!1011933 () Bool)

(assert (=> b!1487856 (=> (not res!1011933) (not e!834022))))

(assert (=> b!1487856 (= res!1011933 (validKeyInArray!0 (select (arr!48039 a!2862) i!1006)))))

(declare-fun b!1487857 () Bool)

(declare-fun e!834032 () Bool)

(assert (=> b!1487857 (= e!834026 e!834032)))

(declare-fun res!1011925 () Bool)

(assert (=> b!1487857 (=> res!1011925 e!834032)))

(declare-fun lt!648951 () (_ BitVec 32))

(assert (=> b!1487857 (= res!1011925 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!648951 #b00000000000000000000000000000000) (bvsge lt!648951 (size!48590 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1487857 (= lt!648951 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1487858 () Bool)

(declare-fun e!834027 () Bool)

(assert (=> b!1487858 (= e!834027 e!834030)))

(declare-fun res!1011935 () Bool)

(assert (=> b!1487858 (=> (not res!1011935) (not e!834030))))

(declare-fun lt!648947 () SeekEntryResult!12302)

(assert (=> b!1487858 (= res!1011935 (= lt!648947 (Intermediate!12302 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99541 (_ BitVec 32)) SeekEntryResult!12302)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1487858 (= lt!648947 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648945 mask!2687) lt!648945 lt!648946 mask!2687))))

(assert (=> b!1487858 (= lt!648945 (select (store (arr!48039 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1487859 () Bool)

(declare-fun res!1011930 () Bool)

(assert (=> b!1487859 (=> (not res!1011930) (not e!834022))))

(assert (=> b!1487859 (= res!1011930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1487860 () Bool)

(declare-fun e!834024 () Bool)

(assert (=> b!1487860 (= e!834024 (= lt!648947 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648945 lt!648946 mask!2687)))))

(declare-fun b!1487861 () Bool)

(declare-fun res!1011922 () Bool)

(assert (=> b!1487861 (=> (not res!1011922) (not e!834031))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1487861 (= res!1011922 (or (= (select (arr!48039 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48039 a!2862) intermediateBeforeIndex!19) (select (arr!48039 a!2862) j!93))))))

(declare-fun b!1487862 () Bool)

(declare-fun res!1011928 () Bool)

(assert (=> b!1487862 (=> (not res!1011928) (not e!834022))))

(declare-datatypes ((List!34720 0))(
  ( (Nil!34717) (Cons!34716 (h!36096 (_ BitVec 64)) (t!49421 List!34720)) )
))
(declare-fun arrayNoDuplicates!0 (array!99541 (_ BitVec 32) List!34720) Bool)

(assert (=> b!1487862 (= res!1011928 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34717))))

(declare-fun b!1487863 () Bool)

(declare-fun res!1011919 () Bool)

(assert (=> b!1487863 (=> (not res!1011919) (not e!834030))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1487863 (= res!1011919 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1487864 () Bool)

(assert (=> b!1487864 (= e!834032 true)))

(declare-fun lt!648949 () SeekEntryResult!12302)

(assert (=> b!1487864 (= lt!648949 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!648951 (select (arr!48039 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1487865 () Bool)

(assert (=> b!1487865 (= e!834023 e!834029)))

(declare-fun res!1011921 () Bool)

(assert (=> b!1487865 (=> (not res!1011921) (not e!834029))))

(assert (=> b!1487865 (= res!1011921 (and (= index!646 intermediateAfterIndex!19) (= lt!648948 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1487866 () Bool)

(declare-fun e!834028 () Bool)

(assert (=> b!1487866 (= e!834022 e!834028)))

(declare-fun res!1011934 () Bool)

(assert (=> b!1487866 (=> (not res!1011934) (not e!834028))))

(assert (=> b!1487866 (= res!1011934 (= (select (store (arr!48039 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1487866 (= lt!648946 (array!99542 (store (arr!48039 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48590 a!2862)))))

(declare-fun b!1487867 () Bool)

(assert (=> b!1487867 (= e!834028 e!834027)))

(declare-fun res!1011931 () Bool)

(assert (=> b!1487867 (=> (not res!1011931) (not e!834027))))

(declare-fun lt!648952 () SeekEntryResult!12302)

(assert (=> b!1487867 (= res!1011931 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48039 a!2862) j!93) mask!2687) (select (arr!48039 a!2862) j!93) a!2862 mask!2687) lt!648952))))

(assert (=> b!1487867 (= lt!648952 (Intermediate!12302 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1487868 () Bool)

(declare-fun res!1011927 () Bool)

(assert (=> b!1487868 (=> (not res!1011927) (not e!834022))))

(assert (=> b!1487868 (= res!1011927 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48590 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48590 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48590 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1487869 () Bool)

(assert (=> b!1487869 (= e!834024 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648945 lt!648946 mask!2687) (seekEntryOrOpen!0 lt!648945 lt!648946 mask!2687)))))

(declare-fun b!1487870 () Bool)

(declare-fun res!1011923 () Bool)

(assert (=> b!1487870 (=> (not res!1011923) (not e!834027))))

(assert (=> b!1487870 (= res!1011923 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48039 a!2862) j!93) a!2862 mask!2687) lt!648952))))

(declare-fun b!1487871 () Bool)

(declare-fun res!1011936 () Bool)

(assert (=> b!1487871 (=> (not res!1011936) (not e!834030))))

(assert (=> b!1487871 (= res!1011936 e!834024)))

(declare-fun c!137495 () Bool)

(assert (=> b!1487871 (= c!137495 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1487872 () Bool)

(declare-fun res!1011932 () Bool)

(assert (=> b!1487872 (=> (not res!1011932) (not e!834022))))

(assert (=> b!1487872 (= res!1011932 (and (= (size!48590 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48590 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48590 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!126788 res!1011929) b!1487872))

(assert (= (and b!1487872 res!1011932) b!1487856))

(assert (= (and b!1487856 res!1011933) b!1487852))

(assert (= (and b!1487852 res!1011918) b!1487859))

(assert (= (and b!1487859 res!1011930) b!1487862))

(assert (= (and b!1487862 res!1011928) b!1487868))

(assert (= (and b!1487868 res!1011927) b!1487866))

(assert (= (and b!1487866 res!1011934) b!1487867))

(assert (= (and b!1487867 res!1011931) b!1487870))

(assert (= (and b!1487870 res!1011923) b!1487858))

(assert (= (and b!1487858 res!1011935) b!1487871))

(assert (= (and b!1487871 c!137495) b!1487860))

(assert (= (and b!1487871 (not c!137495)) b!1487869))

(assert (= (and b!1487871 res!1011936) b!1487863))

(assert (= (and b!1487863 res!1011919) b!1487853))

(assert (= (and b!1487853 res!1011926) b!1487854))

(assert (= (and b!1487854 res!1011920) b!1487861))

(assert (= (and b!1487861 res!1011922) b!1487851))

(assert (= (and b!1487851 (not res!1011917)) b!1487865))

(assert (= (and b!1487865 res!1011921) b!1487855))

(assert (= (and b!1487853 (not res!1011924)) b!1487857))

(assert (= (and b!1487857 (not res!1011925)) b!1487864))

(declare-fun m!1372443 () Bool)

(assert (=> start!126788 m!1372443))

(declare-fun m!1372445 () Bool)

(assert (=> start!126788 m!1372445))

(declare-fun m!1372447 () Bool)

(assert (=> b!1487869 m!1372447))

(declare-fun m!1372449 () Bool)

(assert (=> b!1487869 m!1372449))

(declare-fun m!1372451 () Bool)

(assert (=> b!1487856 m!1372451))

(assert (=> b!1487856 m!1372451))

(declare-fun m!1372453 () Bool)

(assert (=> b!1487856 m!1372453))

(declare-fun m!1372455 () Bool)

(assert (=> b!1487854 m!1372455))

(assert (=> b!1487854 m!1372455))

(declare-fun m!1372457 () Bool)

(assert (=> b!1487854 m!1372457))

(declare-fun m!1372459 () Bool)

(assert (=> b!1487851 m!1372459))

(assert (=> b!1487851 m!1372455))

(declare-fun m!1372461 () Bool)

(assert (=> b!1487851 m!1372461))

(declare-fun m!1372463 () Bool)

(assert (=> b!1487851 m!1372463))

(declare-fun m!1372465 () Bool)

(assert (=> b!1487853 m!1372465))

(assert (=> b!1487853 m!1372461))

(assert (=> b!1487853 m!1372463))

(assert (=> b!1487853 m!1372459))

(declare-fun m!1372467 () Bool)

(assert (=> b!1487853 m!1372467))

(assert (=> b!1487853 m!1372455))

(declare-fun m!1372469 () Bool)

(assert (=> b!1487859 m!1372469))

(assert (=> b!1487852 m!1372455))

(assert (=> b!1487852 m!1372455))

(declare-fun m!1372471 () Bool)

(assert (=> b!1487852 m!1372471))

(assert (=> b!1487867 m!1372455))

(assert (=> b!1487867 m!1372455))

(declare-fun m!1372473 () Bool)

(assert (=> b!1487867 m!1372473))

(assert (=> b!1487867 m!1372473))

(assert (=> b!1487867 m!1372455))

(declare-fun m!1372475 () Bool)

(assert (=> b!1487867 m!1372475))

(declare-fun m!1372477 () Bool)

(assert (=> b!1487861 m!1372477))

(assert (=> b!1487861 m!1372455))

(declare-fun m!1372479 () Bool)

(assert (=> b!1487858 m!1372479))

(assert (=> b!1487858 m!1372479))

(declare-fun m!1372481 () Bool)

(assert (=> b!1487858 m!1372481))

(assert (=> b!1487858 m!1372461))

(declare-fun m!1372483 () Bool)

(assert (=> b!1487858 m!1372483))

(declare-fun m!1372485 () Bool)

(assert (=> b!1487862 m!1372485))

(assert (=> b!1487870 m!1372455))

(assert (=> b!1487870 m!1372455))

(declare-fun m!1372487 () Bool)

(assert (=> b!1487870 m!1372487))

(assert (=> b!1487855 m!1372449))

(assert (=> b!1487855 m!1372447))

(assert (=> b!1487866 m!1372461))

(declare-fun m!1372489 () Bool)

(assert (=> b!1487866 m!1372489))

(declare-fun m!1372491 () Bool)

(assert (=> b!1487857 m!1372491))

(assert (=> b!1487864 m!1372455))

(assert (=> b!1487864 m!1372455))

(declare-fun m!1372493 () Bool)

(assert (=> b!1487864 m!1372493))

(declare-fun m!1372495 () Bool)

(assert (=> b!1487860 m!1372495))

(push 1)

