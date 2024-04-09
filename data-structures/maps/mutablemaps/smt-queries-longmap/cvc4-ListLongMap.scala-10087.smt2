; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118808 () Bool)

(assert start!118808)

(declare-fun res!928598 () Bool)

(declare-fun e!786193 () Bool)

(assert (=> start!118808 (=> (not res!928598) (not e!786193))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118808 (= res!928598 (validMask!0 mask!2987))))

(assert (=> start!118808 e!786193))

(assert (=> start!118808 true))

(declare-datatypes ((array!94897 0))(
  ( (array!94898 (arr!45819 (Array (_ BitVec 32) (_ BitVec 64))) (size!46370 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94897)

(declare-fun array_inv!34764 (array!94897) Bool)

(assert (=> start!118808 (array_inv!34764 a!2938)))

(declare-fun b!1387864 () Bool)

(declare-datatypes ((Unit!46351 0))(
  ( (Unit!46352) )
))
(declare-fun e!786191 () Unit!46351)

(declare-fun lt!610042 () Unit!46351)

(assert (=> b!1387864 (= e!786191 lt!610042)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun lt!610044 () Unit!46351)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94897 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46351)

(assert (=> b!1387864 (= lt!610044 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun lt!610043 () array!94897)

(declare-datatypes ((SeekEntryResult!10184 0))(
  ( (MissingZero!10184 (index!43106 (_ BitVec 32))) (Found!10184 (index!43107 (_ BitVec 32))) (Intermediate!10184 (undefined!10996 Bool) (index!43108 (_ BitVec 32)) (x!124725 (_ BitVec 32))) (Undefined!10184) (MissingVacant!10184 (index!43109 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94897 (_ BitVec 32)) SeekEntryResult!10184)

(assert (=> b!1387864 (= (seekEntryOrOpen!0 (select (arr!45819 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610043 mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94897 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46351)

(assert (=> b!1387864 (= lt!610042 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94897 (_ BitVec 32)) Bool)

(assert (=> b!1387864 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1387865 () Bool)

(declare-fun res!928603 () Bool)

(assert (=> b!1387865 (=> (not res!928603) (not e!786193))))

(declare-datatypes ((List!32527 0))(
  ( (Nil!32524) (Cons!32523 (h!33735 (_ BitVec 64)) (t!47228 List!32527)) )
))
(declare-fun arrayNoDuplicates!0 (array!94897 (_ BitVec 32) List!32527) Bool)

(assert (=> b!1387865 (= res!928603 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32524))))

(declare-fun b!1387866 () Bool)

(declare-fun res!928600 () Bool)

(assert (=> b!1387866 (=> (not res!928600) (not e!786193))))

(assert (=> b!1387866 (= res!928600 (and (= (size!46370 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46370 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46370 a!2938))))))

(declare-fun b!1387867 () Bool)

(declare-fun e!786194 () Bool)

(assert (=> b!1387867 (= e!786193 e!786194)))

(declare-fun res!928604 () Bool)

(assert (=> b!1387867 (=> (not res!928604) (not e!786194))))

(assert (=> b!1387867 (= res!928604 (bvsge startIndex!16 (bvsub (size!46370 a!2938) #b00000000000000000000000000000001)))))

(declare-fun lt!610045 () Unit!46351)

(assert (=> b!1387867 (= lt!610045 e!786191)))

(declare-fun c!129077 () Bool)

(declare-fun e!786192 () Bool)

(assert (=> b!1387867 (= c!129077 e!786192)))

(declare-fun res!928601 () Bool)

(assert (=> b!1387867 (=> (not res!928601) (not e!786192))))

(assert (=> b!1387867 (= res!928601 (not (= startIndex!16 i!1065)))))

(assert (=> b!1387867 (= lt!610043 (array!94898 (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46370 a!2938)))))

(declare-fun b!1387868 () Bool)

(declare-fun Unit!46353 () Unit!46351)

(assert (=> b!1387868 (= e!786191 Unit!46353)))

(declare-fun b!1387869 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1387869 (= e!786192 (validKeyInArray!0 (select (arr!45819 a!2938) startIndex!16)))))

(declare-fun b!1387870 () Bool)

(declare-fun res!928599 () Bool)

(assert (=> b!1387870 (=> (not res!928599) (not e!786193))))

(assert (=> b!1387870 (= res!928599 (validKeyInArray!0 (select (arr!45819 a!2938) i!1065)))))

(declare-fun b!1387871 () Bool)

(declare-fun res!928605 () Bool)

(assert (=> b!1387871 (=> (not res!928605) (not e!786193))))

(assert (=> b!1387871 (= res!928605 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1387872 () Bool)

(assert (=> b!1387872 (= e!786194 (not (arrayForallSeekEntryOrOpenFound!0 startIndex!16 lt!610043 mask!2987)))))

(declare-fun b!1387873 () Bool)

(declare-fun res!928602 () Bool)

(assert (=> b!1387873 (=> (not res!928602) (not e!786193))))

(assert (=> b!1387873 (= res!928602 (and (not (= (select (arr!45819 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45819 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!118808 res!928598) b!1387866))

(assert (= (and b!1387866 res!928600) b!1387870))

(assert (= (and b!1387870 res!928599) b!1387865))

(assert (= (and b!1387865 res!928603) b!1387871))

(assert (= (and b!1387871 res!928605) b!1387873))

(assert (= (and b!1387873 res!928602) b!1387867))

(assert (= (and b!1387867 res!928601) b!1387869))

(assert (= (and b!1387867 c!129077) b!1387864))

(assert (= (and b!1387867 (not c!129077)) b!1387868))

(assert (= (and b!1387867 res!928604) b!1387872))

(declare-fun m!1273581 () Bool)

(assert (=> start!118808 m!1273581))

(declare-fun m!1273583 () Bool)

(assert (=> start!118808 m!1273583))

(declare-fun m!1273585 () Bool)

(assert (=> b!1387873 m!1273585))

(declare-fun m!1273587 () Bool)

(assert (=> b!1387864 m!1273587))

(declare-fun m!1273589 () Bool)

(assert (=> b!1387864 m!1273589))

(declare-fun m!1273591 () Bool)

(assert (=> b!1387864 m!1273591))

(assert (=> b!1387864 m!1273589))

(declare-fun m!1273593 () Bool)

(assert (=> b!1387864 m!1273593))

(declare-fun m!1273595 () Bool)

(assert (=> b!1387864 m!1273595))

(declare-fun m!1273597 () Bool)

(assert (=> b!1387864 m!1273597))

(declare-fun m!1273599 () Bool)

(assert (=> b!1387864 m!1273599))

(assert (=> b!1387864 m!1273597))

(declare-fun m!1273601 () Bool)

(assert (=> b!1387864 m!1273601))

(declare-fun m!1273603 () Bool)

(assert (=> b!1387871 m!1273603))

(declare-fun m!1273605 () Bool)

(assert (=> b!1387872 m!1273605))

(assert (=> b!1387870 m!1273585))

(assert (=> b!1387870 m!1273585))

(declare-fun m!1273607 () Bool)

(assert (=> b!1387870 m!1273607))

(assert (=> b!1387869 m!1273597))

(assert (=> b!1387869 m!1273597))

(declare-fun m!1273609 () Bool)

(assert (=> b!1387869 m!1273609))

(declare-fun m!1273611 () Bool)

(assert (=> b!1387865 m!1273611))

(assert (=> b!1387867 m!1273591))

(push 1)

(assert (not b!1387865))

(assert (not b!1387871))

(assert (not start!118808))

(assert (not b!1387872))

(assert (not b!1387864))

(assert (not b!1387870))

(assert (not b!1387869))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun call!66602 () Bool)

(declare-fun bm!66599 () Bool)

(assert (=> bm!66599 (= call!66602 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001) lt!610043 mask!2987))))

(declare-fun b!1387908 () Bool)

(declare-fun e!786217 () Bool)

(declare-fun e!786216 () Bool)

(assert (=> b!1387908 (= e!786217 e!786216)))

(declare-fun lt!610072 () (_ BitVec 64))

(assert (=> b!1387908 (= lt!610072 (select (arr!45819 lt!610043) startIndex!16))))

(declare-fun lt!610071 () Unit!46351)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94897 (_ BitVec 64) (_ BitVec 32)) Unit!46351)

(assert (=> b!1387908 (= lt!610071 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!610043 lt!610072 startIndex!16))))

(declare-fun arrayContainsKey!0 (array!94897 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1387908 (arrayContainsKey!0 lt!610043 lt!610072 #b00000000000000000000000000000000)))

(declare-fun lt!610070 () Unit!46351)

(assert (=> b!1387908 (= lt!610070 lt!610071)))

(declare-fun res!928614 () Bool)

(assert (=> b!1387908 (= res!928614 (= (seekEntryOrOpen!0 (select (arr!45819 lt!610043) startIndex!16) lt!610043 mask!2987) (Found!10184 startIndex!16)))))

(assert (=> b!1387908 (=> (not res!928614) (not e!786216))))

(declare-fun b!1387909 () Bool)

(assert (=> b!1387909 (= e!786217 call!66602)))

(declare-fun d!149661 () Bool)

(declare-fun res!928615 () Bool)

(declare-fun e!786218 () Bool)

(assert (=> d!149661 (=> res!928615 e!786218)))

(assert (=> d!149661 (= res!928615 (bvsge startIndex!16 (size!46370 lt!610043)))))

(assert (=> d!149661 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!16 lt!610043 mask!2987) e!786218)))

(declare-fun b!1387910 () Bool)

(assert (=> b!1387910 (= e!786218 e!786217)))

(declare-fun c!129091 () Bool)

(assert (=> b!1387910 (= c!129091 (validKeyInArray!0 (select (arr!45819 lt!610043) startIndex!16)))))

(declare-fun b!1387911 () Bool)

(assert (=> b!1387911 (= e!786216 call!66602)))

(assert (= (and d!149661 (not res!928615)) b!1387910))

(assert (= (and b!1387910 c!129091) b!1387908))

(assert (= (and b!1387910 (not c!129091)) b!1387909))

(assert (= (and b!1387908 res!928614) b!1387911))

(assert (= (or b!1387911 b!1387909) bm!66599))

(declare-fun m!1273629 () Bool)

(assert (=> bm!66599 m!1273629))

(declare-fun m!1273631 () Bool)

(assert (=> b!1387908 m!1273631))

(declare-fun m!1273633 () Bool)

(assert (=> b!1387908 m!1273633))

(declare-fun m!1273635 () Bool)

(assert (=> b!1387908 m!1273635))

(assert (=> b!1387908 m!1273631))

(declare-fun m!1273637 () Bool)

(assert (=> b!1387908 m!1273637))

(assert (=> b!1387910 m!1273631))

(assert (=> b!1387910 m!1273631))

(declare-fun m!1273639 () Bool)

(assert (=> b!1387910 m!1273639))

(assert (=> b!1387872 d!149661))

(declare-fun d!149667 () Bool)

(assert (=> d!149667 (= (validKeyInArray!0 (select (arr!45819 a!2938) i!1065)) (and (not (= (select (arr!45819 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45819 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387870 d!149667))

(declare-fun d!149669 () Bool)

(assert (=> d!149669 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun lt!610078 () Unit!46351)

(declare-fun choose!38 (array!94897 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46351)

(assert (=> d!149669 (= lt!610078 (choose!38 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> d!149669 (validMask!0 mask!2987)))

(assert (=> d!149669 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16) lt!610078)))

(declare-fun bs!40335 () Bool)

(assert (= bs!40335 d!149669))

(assert (=> bs!40335 m!1273601))

(declare-fun m!1273655 () Bool)

(assert (=> bs!40335 m!1273655))

(assert (=> bs!40335 m!1273581))

(assert (=> b!1387864 d!149669))

(declare-fun bm!66604 () Bool)

(declare-fun call!66607 () Bool)

(assert (=> bm!66604 (= call!66607 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001) a!2938 mask!2987))))

(declare-fun b!1387931 () Bool)

(declare-fun e!786235 () Bool)

(declare-fun e!786234 () Bool)

(assert (=> b!1387931 (= e!786235 e!786234)))

(declare-fun lt!610081 () (_ BitVec 64))

(assert (=> b!1387931 (= lt!610081 (select (arr!45819 a!2938) startIndex!16))))

(declare-fun lt!610080 () Unit!46351)

(assert (=> b!1387931 (= lt!610080 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!610081 startIndex!16))))

(assert (=> b!1387931 (arrayContainsKey!0 a!2938 lt!610081 #b00000000000000000000000000000000)))

(declare-fun lt!610079 () Unit!46351)

(assert (=> b!1387931 (= lt!610079 lt!610080)))

(declare-fun res!928627 () Bool)

(assert (=> b!1387931 (= res!928627 (= (seekEntryOrOpen!0 (select (arr!45819 a!2938) startIndex!16) a!2938 mask!2987) (Found!10184 startIndex!16)))))

(assert (=> b!1387931 (=> (not res!928627) (not e!786234))))

(declare-fun b!1387932 () Bool)

(assert (=> b!1387932 (= e!786235 call!66607)))

(declare-fun d!149675 () Bool)

(declare-fun res!928628 () Bool)

(declare-fun e!786236 () Bool)

(assert (=> d!149675 (=> res!928628 e!786236)))

(assert (=> d!149675 (= res!928628 (bvsge startIndex!16 (size!46370 a!2938)))))

(assert (=> d!149675 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987) e!786236)))

(declare-fun b!1387933 () Bool)

(assert (=> b!1387933 (= e!786236 e!786235)))

(declare-fun c!129096 () Bool)

(assert (=> b!1387933 (= c!129096 (validKeyInArray!0 (select (arr!45819 a!2938) startIndex!16)))))

(declare-fun b!1387934 () Bool)

(assert (=> b!1387934 (= e!786234 call!66607)))

(assert (= (and d!149675 (not res!928628)) b!1387933))

(assert (= (and b!1387933 c!129096) b!1387931))

(assert (= (and b!1387933 (not c!129096)) b!1387932))

(assert (= (and b!1387931 res!928627) b!1387934))

(assert (= (or b!1387934 b!1387932) bm!66604))

(declare-fun m!1273657 () Bool)

(assert (=> bm!66604 m!1273657))

(assert (=> b!1387931 m!1273597))

(declare-fun m!1273659 () Bool)

(assert (=> b!1387931 m!1273659))

(declare-fun m!1273661 () Bool)

(assert (=> b!1387931 m!1273661))

(assert (=> b!1387931 m!1273597))

(assert (=> b!1387931 m!1273599))

(assert (=> b!1387933 m!1273597))

(assert (=> b!1387933 m!1273597))

(assert (=> b!1387933 m!1273609))

(assert (=> b!1387864 d!149675))

(declare-fun d!149677 () Bool)

(declare-fun e!786260 () Bool)

(assert (=> d!149677 e!786260))

(declare-fun res!928644 () Bool)

(assert (=> d!149677 (=> (not res!928644) (not e!786260))))

(assert (=> d!149677 (= res!928644 (and (or (bvslt i!1065 #b00000000000000000000000000000000) (bvsge i!1065 (size!46370 a!2938)) (and (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46370 a!2938)))) (or (bvslt i!1065 #b00000000000000000000000000000000) (bvsge i!1065 (size!46370 a!2938)) (and (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46370 a!2938)))) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46370 a!2938))))))

(declare-fun lt!610108 () Unit!46351)

(declare-fun choose!14 (array!94897 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46351)

(assert (=> d!149677 (= lt!610108 (choose!14 a!2938 i!1065 startIndex!16 mask!2987))))

(assert (=> d!149677 (validMask!0 mask!2987)))

(assert (=> d!149677 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987) lt!610108)))

(declare-fun b!1387966 () Bool)

(assert (=> b!1387966 (= e!786260 (= (seekEntryOrOpen!0 (select (arr!45819 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94898 (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46370 a!2938)) mask!2987)))))

(assert (= (and d!149677 res!928644) b!1387966))

(declare-fun m!1273715 () Bool)

(assert (=> d!149677 m!1273715))

(assert (=> d!149677 m!1273581))

(assert (=> b!1387966 m!1273589))

(declare-fun m!1273717 () Bool)

(assert (=> b!1387966 m!1273717))

(assert (=> b!1387966 m!1273589))

(assert (=> b!1387966 m!1273591))

(assert (=> b!1387966 m!1273597))

(assert (=> b!1387966 m!1273597))

(assert (=> b!1387966 m!1273599))

(assert (=> b!1387864 d!149677))

(declare-fun b!1388014 () Bool)

(declare-fun e!786291 () SeekEntryResult!10184)

(declare-fun lt!610128 () SeekEntryResult!10184)

(assert (=> b!1388014 (= e!786291 (MissingZero!10184 (index!43108 lt!610128)))))

(declare-fun d!149695 () Bool)

(declare-fun lt!610127 () SeekEntryResult!10184)

(assert (=> d!149695 (and (or (is-Undefined!10184 lt!610127) (not (is-Found!10184 lt!610127)) (and (bvsge (index!43107 lt!610127) #b00000000000000000000000000000000) (bvslt (index!43107 lt!610127) (size!46370 lt!610043)))) (or (is-Undefined!10184 lt!610127) (is-Found!10184 lt!610127) (not (is-MissingZero!10184 lt!610127)) (and (bvsge (index!43106 lt!610127) #b00000000000000000000000000000000) (bvslt (index!43106 lt!610127) (size!46370 lt!610043)))) (or (is-Undefined!10184 lt!610127) (is-Found!10184 lt!610127) (is-MissingZero!10184 lt!610127) (not (is-MissingVacant!10184 lt!610127)) (and (bvsge (index!43109 lt!610127) #b00000000000000000000000000000000) (bvslt (index!43109 lt!610127) (size!46370 lt!610043)))) (or (is-Undefined!10184 lt!610127) (ite (is-Found!10184 lt!610127) (= (select (arr!45819 lt!610043) (index!43107 lt!610127)) (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)) (ite (is-MissingZero!10184 lt!610127) (= (select (arr!45819 lt!610043) (index!43106 lt!610127)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10184 lt!610127) (= (select (arr!45819 lt!610043) (index!43109 lt!610127)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!786293 () SeekEntryResult!10184)

(assert (=> d!149695 (= lt!610127 e!786293)))

(declare-fun c!129123 () Bool)

(assert (=> d!149695 (= c!129123 (and (is-Intermediate!10184 lt!610128) (undefined!10996 lt!610128)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!94897 (_ BitVec 32)) SeekEntryResult!10184)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!149695 (= lt!610128 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610043 mask!2987))))

(assert (=> d!149695 (validMask!0 mask!2987)))

(assert (=> d!149695 (= (seekEntryOrOpen!0 (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610043 mask!2987) lt!610127)))

(declare-fun b!1388015 () Bool)

(declare-fun e!786292 () SeekEntryResult!10184)

(assert (=> b!1388015 (= e!786293 e!786292)))

(declare-fun lt!610129 () (_ BitVec 64))

(assert (=> b!1388015 (= lt!610129 (select (arr!45819 lt!610043) (index!43108 lt!610128)))))

(declare-fun c!129124 () Bool)

(assert (=> b!1388015 (= c!129124 (= lt!610129 (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)))))

(declare-fun b!1388016 () Bool)

(declare-fun c!129122 () Bool)

(assert (=> b!1388016 (= c!129122 (= lt!610129 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1388016 (= e!786292 e!786291)))

(declare-fun b!1388017 () Bool)

(assert (=> b!1388017 (= e!786292 (Found!10184 (index!43108 lt!610128)))))

(declare-fun b!1388018 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!94897 (_ BitVec 32)) SeekEntryResult!10184)

(assert (=> b!1388018 (= e!786291 (seekKeyOrZeroReturnVacant!0 (x!124725 lt!610128) (index!43108 lt!610128) (index!43108 lt!610128) (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610043 mask!2987))))

(declare-fun b!1388019 () Bool)

(assert (=> b!1388019 (= e!786293 Undefined!10184)))

(assert (= (and d!149695 c!129123) b!1388019))

(assert (= (and d!149695 (not c!129123)) b!1388015))

(assert (= (and b!1388015 c!129124) b!1388017))

(assert (= (and b!1388015 (not c!129124)) b!1388016))

(assert (= (and b!1388016 c!129122) b!1388014))

(assert (= (and b!1388016 (not c!129122)) b!1388018))

(declare-fun m!1273741 () Bool)

(assert (=> d!149695 m!1273741))

(assert (=> d!149695 m!1273589))

(declare-fun m!1273743 () Bool)

(assert (=> d!149695 m!1273743))

(assert (=> d!149695 m!1273581))

(declare-fun m!1273745 () Bool)

(assert (=> d!149695 m!1273745))

(declare-fun m!1273747 () Bool)

(assert (=> d!149695 m!1273747))

(assert (=> d!149695 m!1273589))

(assert (=> d!149695 m!1273741))

(declare-fun m!1273751 () Bool)

(assert (=> d!149695 m!1273751))

(declare-fun m!1273753 () Bool)

(assert (=> b!1388015 m!1273753))

(assert (=> b!1388018 m!1273589))

(declare-fun m!1273759 () Bool)

(assert (=> b!1388018 m!1273759))

(assert (=> b!1387864 d!149695))

(declare-fun b!1388026 () Bool)

(declare-fun e!786297 () SeekEntryResult!10184)

(declare-fun lt!610134 () SeekEntryResult!10184)

(assert (=> b!1388026 (= e!786297 (MissingZero!10184 (index!43108 lt!610134)))))

(declare-fun d!149709 () Bool)

(declare-fun lt!610133 () SeekEntryResult!10184)

(assert (=> d!149709 (and (or (is-Undefined!10184 lt!610133) (not (is-Found!10184 lt!610133)) (and (bvsge (index!43107 lt!610133) #b00000000000000000000000000000000) (bvslt (index!43107 lt!610133) (size!46370 a!2938)))) (or (is-Undefined!10184 lt!610133) (is-Found!10184 lt!610133) (not (is-MissingZero!10184 lt!610133)) (and (bvsge (index!43106 lt!610133) #b00000000000000000000000000000000) (bvslt (index!43106 lt!610133) (size!46370 a!2938)))) (or (is-Undefined!10184 lt!610133) (is-Found!10184 lt!610133) (is-MissingZero!10184 lt!610133) (not (is-MissingVacant!10184 lt!610133)) (and (bvsge (index!43109 lt!610133) #b00000000000000000000000000000000) (bvslt (index!43109 lt!610133) (size!46370 a!2938)))) (or (is-Undefined!10184 lt!610133) (ite (is-Found!10184 lt!610133) (= (select (arr!45819 a!2938) (index!43107 lt!610133)) (select (arr!45819 a!2938) startIndex!16)) (ite (is-MissingZero!10184 lt!610133) (= (select (arr!45819 a!2938) (index!43106 lt!610133)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10184 lt!610133) (= (select (arr!45819 a!2938) (index!43109 lt!610133)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!786299 () SeekEntryResult!10184)

(assert (=> d!149709 (= lt!610133 e!786299)))

(declare-fun c!129129 () Bool)

(assert (=> d!149709 (= c!129129 (and (is-Intermediate!10184 lt!610134) (undefined!10996 lt!610134)))))

(assert (=> d!149709 (= lt!610134 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45819 a!2938) startIndex!16) mask!2987) (select (arr!45819 a!2938) startIndex!16) a!2938 mask!2987))))

(assert (=> d!149709 (validMask!0 mask!2987)))

(assert (=> d!149709 (= (seekEntryOrOpen!0 (select (arr!45819 a!2938) startIndex!16) a!2938 mask!2987) lt!610133)))

(declare-fun b!1388027 () Bool)

(declare-fun e!786298 () SeekEntryResult!10184)

(assert (=> b!1388027 (= e!786299 e!786298)))

(declare-fun lt!610135 () (_ BitVec 64))

(assert (=> b!1388027 (= lt!610135 (select (arr!45819 a!2938) (index!43108 lt!610134)))))

(declare-fun c!129130 () Bool)

(assert (=> b!1388027 (= c!129130 (= lt!610135 (select (arr!45819 a!2938) startIndex!16)))))

(declare-fun b!1388028 () Bool)

(declare-fun c!129128 () Bool)

(assert (=> b!1388028 (= c!129128 (= lt!610135 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1388028 (= e!786298 e!786297)))

(declare-fun b!1388029 () Bool)

(assert (=> b!1388029 (= e!786298 (Found!10184 (index!43108 lt!610134)))))

(declare-fun b!1388030 () Bool)

(assert (=> b!1388030 (= e!786297 (seekKeyOrZeroReturnVacant!0 (x!124725 lt!610134) (index!43108 lt!610134) (index!43108 lt!610134) (select (arr!45819 a!2938) startIndex!16) a!2938 mask!2987))))

(declare-fun b!1388031 () Bool)

(assert (=> b!1388031 (= e!786299 Undefined!10184)))

(assert (= (and d!149709 c!129129) b!1388031))

(assert (= (and d!149709 (not c!129129)) b!1388027))

(assert (= (and b!1388027 c!129130) b!1388029))

(assert (= (and b!1388027 (not c!129130)) b!1388028))

(assert (= (and b!1388028 c!129128) b!1388026))

(assert (= (and b!1388028 (not c!129128)) b!1388030))

(declare-fun m!1273769 () Bool)

(assert (=> d!149709 m!1273769))

(assert (=> d!149709 m!1273597))

(declare-fun m!1273771 () Bool)

(assert (=> d!149709 m!1273771))

(assert (=> d!149709 m!1273581))

(declare-fun m!1273773 () Bool)

(assert (=> d!149709 m!1273773))

(declare-fun m!1273775 () Bool)

(assert (=> d!149709 m!1273775))

(assert (=> d!149709 m!1273597))

(assert (=> d!149709 m!1273769))

(declare-fun m!1273777 () Bool)

(assert (=> d!149709 m!1273777))

(declare-fun m!1273779 () Bool)

(assert (=> b!1388027 m!1273779))

(assert (=> b!1388030 m!1273597))

(declare-fun m!1273781 () Bool)

(assert (=> b!1388030 m!1273781))

(assert (=> b!1387864 d!149709))

(declare-fun d!149713 () Bool)

(assert (=> d!149713 (= (validMask!0 mask!2987) (and (or (= mask!2987 #b00000000000000000000000000000111) (= mask!2987 #b00000000000000000000000000001111) (= mask!2987 #b00000000000000000000000000011111) (= mask!2987 #b00000000000000000000000000111111) (= mask!2987 #b00000000000000000000000001111111) (= mask!2987 #b00000000000000000000000011111111) (= mask!2987 #b00000000000000000000000111111111) (= mask!2987 #b00000000000000000000001111111111) (= mask!2987 #b00000000000000000000011111111111) (= mask!2987 #b00000000000000000000111111111111) (= mask!2987 #b00000000000000000001111111111111) (= mask!2987 #b00000000000000000011111111111111) (= mask!2987 #b00000000000000000111111111111111) (= mask!2987 #b00000000000000001111111111111111) (= mask!2987 #b00000000000000011111111111111111) (= mask!2987 #b00000000000000111111111111111111) (= mask!2987 #b00000000000001111111111111111111) (= mask!2987 #b00000000000011111111111111111111) (= mask!2987 #b00000000000111111111111111111111) (= mask!2987 #b00000000001111111111111111111111) (= mask!2987 #b00000000011111111111111111111111) (= mask!2987 #b00000000111111111111111111111111) (= mask!2987 #b00000001111111111111111111111111) (= mask!2987 #b00000011111111111111111111111111) (= mask!2987 #b00000111111111111111111111111111) (= mask!2987 #b00001111111111111111111111111111) (= mask!2987 #b00011111111111111111111111111111) (= mask!2987 #b00111111111111111111111111111111)) (bvsle mask!2987 #b00111111111111111111111111111111)))))

(assert (=> start!118808 d!149713))

(declare-fun d!149715 () Bool)

(assert (=> d!149715 (= (array_inv!34764 a!2938) (bvsge (size!46370 a!2938) #b00000000000000000000000000000000))))

(assert (=> start!118808 d!149715))

(declare-fun d!149717 () Bool)

(assert (=> d!149717 (= (validKeyInArray!0 (select (arr!45819 a!2938) startIndex!16)) (and (not (= (select (arr!45819 a!2938) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45819 a!2938) startIndex!16) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387869 d!149717))

(declare-fun bm!66615 () Bool)

(declare-fun call!66618 () Bool)

(assert (=> bm!66615 (= call!66618 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2938 mask!2987))))

(declare-fun b!1388034 () Bool)

(declare-fun e!786303 () Bool)

(declare-fun e!786302 () Bool)

(assert (=> b!1388034 (= e!786303 e!786302)))

(declare-fun lt!610140 () (_ BitVec 64))

(assert (=> b!1388034 (= lt!610140 (select (arr!45819 a!2938) #b00000000000000000000000000000000))))

(declare-fun lt!610139 () Unit!46351)

(assert (=> b!1388034 (= lt!610139 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!610140 #b00000000000000000000000000000000))))

(assert (=> b!1388034 (arrayContainsKey!0 a!2938 lt!610140 #b00000000000000000000000000000000)))

(declare-fun lt!610138 () Unit!46351)

(assert (=> b!1388034 (= lt!610138 lt!610139)))

(declare-fun res!928660 () Bool)

(assert (=> b!1388034 (= res!928660 (= (seekEntryOrOpen!0 (select (arr!45819 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987) (Found!10184 #b00000000000000000000000000000000)))))

(assert (=> b!1388034 (=> (not res!928660) (not e!786302))))

(declare-fun b!1388035 () Bool)

(assert (=> b!1388035 (= e!786303 call!66618)))

(declare-fun d!149719 () Bool)

(declare-fun res!928661 () Bool)

(declare-fun e!786304 () Bool)

(assert (=> d!149719 (=> res!928661 e!786304)))

(assert (=> d!149719 (= res!928661 (bvsge #b00000000000000000000000000000000 (size!46370 a!2938)))))

(assert (=> d!149719 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987) e!786304)))

(declare-fun b!1388036 () Bool)

(assert (=> b!1388036 (= e!786304 e!786303)))

(declare-fun c!129131 () Bool)

(assert (=> b!1388036 (= c!129131 (validKeyInArray!0 (select (arr!45819 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1388037 () Bool)

(assert (=> b!1388037 (= e!786302 call!66618)))

(assert (= (and d!149719 (not res!928661)) b!1388036))

(assert (= (and b!1388036 c!129131) b!1388034))

(assert (= (and b!1388036 (not c!129131)) b!1388035))

(assert (= (and b!1388034 res!928660) b!1388037))

(assert (= (or b!1388037 b!1388035) bm!66615))

(declare-fun m!1273783 () Bool)

(assert (=> bm!66615 m!1273783))

(declare-fun m!1273785 () Bool)

(assert (=> b!1388034 m!1273785))

(declare-fun m!1273787 () Bool)

(assert (=> b!1388034 m!1273787))

(declare-fun m!1273789 () Bool)

(assert (=> b!1388034 m!1273789))

(assert (=> b!1388034 m!1273785))

(declare-fun m!1273791 () Bool)

(assert (=> b!1388034 m!1273791))

(assert (=> b!1388036 m!1273785))

(assert (=> b!1388036 m!1273785))

(declare-fun m!1273793 () Bool)

(assert (=> b!1388036 m!1273793))

(assert (=> b!1387871 d!149719))

(declare-fun b!1388056 () Bool)

(declare-fun e!786320 () Bool)

(declare-fun contains!9761 (List!32527 (_ BitVec 64)) Bool)

(assert (=> b!1388056 (= e!786320 (contains!9761 Nil!32524 (select (arr!45819 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1388057 () Bool)

(declare-fun e!786317 () Bool)

(declare-fun call!66621 () Bool)

(assert (=> b!1388057 (= e!786317 call!66621)))

(declare-fun bm!66618 () Bool)

(declare-fun c!129137 () Bool)

(assert (=> bm!66618 (= call!66621 (arrayNoDuplicates!0 a!2938 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129137 (Cons!32523 (select (arr!45819 a!2938) #b00000000000000000000000000000000) Nil!32524) Nil!32524)))))

(declare-fun d!149721 () Bool)

(declare-fun res!928669 () Bool)

(declare-fun e!786318 () Bool)

(assert (=> d!149721 (=> res!928669 e!786318)))

(assert (=> d!149721 (= res!928669 (bvsge #b00000000000000000000000000000000 (size!46370 a!2938)))))

(assert (=> d!149721 (= (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32524) e!786318)))

(declare-fun b!1388055 () Bool)

(declare-fun e!786319 () Bool)

(assert (=> b!1388055 (= e!786318 e!786319)))

(declare-fun res!928670 () Bool)

(assert (=> b!1388055 (=> (not res!928670) (not e!786319))))

(assert (=> b!1388055 (= res!928670 (not e!786320))))

(declare-fun res!928671 () Bool)

(assert (=> b!1388055 (=> (not res!928671) (not e!786320))))

(assert (=> b!1388055 (= res!928671 (validKeyInArray!0 (select (arr!45819 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1388058 () Bool)

(assert (=> b!1388058 (= e!786319 e!786317)))

(assert (=> b!1388058 (= c!129137 (validKeyInArray!0 (select (arr!45819 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1388059 () Bool)

(assert (=> b!1388059 (= e!786317 call!66621)))

(assert (= (and d!149721 (not res!928669)) b!1388055))

(assert (= (and b!1388055 res!928671) b!1388056))

(assert (= (and b!1388055 res!928670) b!1388058))

(assert (= (and b!1388058 c!129137) b!1388059))

(assert (= (and b!1388058 (not c!129137)) b!1388057))

(assert (= (or b!1388059 b!1388057) bm!66618))

(assert (=> b!1388056 m!1273785))

(assert (=> b!1388056 m!1273785))

(declare-fun m!1273813 () Bool)

(assert (=> b!1388056 m!1273813))

(assert (=> bm!66618 m!1273785))

(declare-fun m!1273815 () Bool)

(assert (=> bm!66618 m!1273815))

(assert (=> b!1388055 m!1273785))

(assert (=> b!1388055 m!1273785))

(assert (=> b!1388055 m!1273793))

(assert (=> b!1388058 m!1273785))

(assert (=> b!1388058 m!1273785))

(assert (=> b!1388058 m!1273793))

(assert (=> b!1387865 d!149721))

(push 1)

(assert (not b!1387931))

(assert (not b!1387910))

(assert (not d!149669))

(assert (not b!1387908))

(assert (not bm!66604))

(assert (not d!149677))

(assert (not b!1388055))

(assert (not bm!66599))

(assert (not b!1388056))

(assert (not b!1388058))

(assert (not b!1388030))

(assert (not bm!66615))

(assert (not d!149695))

(assert (not bm!66618))

(assert (not b!1388018))

(assert (not b!1388036))

(assert (not b!1387966))

(assert (not b!1388034))

(assert (not b!1387933))

(assert (not d!149709))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!149825 () Bool)

(assert (=> d!149825 (arrayContainsKey!0 lt!610043 lt!610072 #b00000000000000000000000000000000)))

(declare-fun lt!610247 () Unit!46351)

(declare-fun choose!13 (array!94897 (_ BitVec 64) (_ BitVec 32)) Unit!46351)

(assert (=> d!149825 (= lt!610247 (choose!13 lt!610043 lt!610072 startIndex!16))))

(assert (=> d!149825 (bvsge startIndex!16 #b00000000000000000000000000000000)))

(assert (=> d!149825 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!610043 lt!610072 startIndex!16) lt!610247)))

(declare-fun bs!40347 () Bool)

(assert (= bs!40347 d!149825))

(assert (=> bs!40347 m!1273635))

(declare-fun m!1274081 () Bool)

(assert (=> bs!40347 m!1274081))

(assert (=> b!1387908 d!149825))

(declare-fun d!149827 () Bool)

(declare-fun res!928752 () Bool)

(declare-fun e!786465 () Bool)

(assert (=> d!149827 (=> res!928752 e!786465)))

(assert (=> d!149827 (= res!928752 (= (select (arr!45819 lt!610043) #b00000000000000000000000000000000) lt!610072))))

(assert (=> d!149827 (= (arrayContainsKey!0 lt!610043 lt!610072 #b00000000000000000000000000000000) e!786465)))

(declare-fun b!1388286 () Bool)

(declare-fun e!786466 () Bool)

(assert (=> b!1388286 (= e!786465 e!786466)))

(declare-fun res!928753 () Bool)

(assert (=> b!1388286 (=> (not res!928753) (not e!786466))))

(assert (=> b!1388286 (= res!928753 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46370 lt!610043)))))

(declare-fun b!1388287 () Bool)

(assert (=> b!1388287 (= e!786466 (arrayContainsKey!0 lt!610043 lt!610072 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!149827 (not res!928752)) b!1388286))

(assert (= (and b!1388286 res!928753) b!1388287))

(declare-fun m!1274083 () Bool)

(assert (=> d!149827 m!1274083))

(declare-fun m!1274085 () Bool)

(assert (=> b!1388287 m!1274085))

(assert (=> b!1387908 d!149827))

(declare-fun b!1388288 () Bool)

(declare-fun e!786467 () SeekEntryResult!10184)

(declare-fun lt!610249 () SeekEntryResult!10184)

(assert (=> b!1388288 (= e!786467 (MissingZero!10184 (index!43108 lt!610249)))))

(declare-fun d!149829 () Bool)

(declare-fun lt!610248 () SeekEntryResult!10184)

(assert (=> d!149829 (and (or (is-Undefined!10184 lt!610248) (not (is-Found!10184 lt!610248)) (and (bvsge (index!43107 lt!610248) #b00000000000000000000000000000000) (bvslt (index!43107 lt!610248) (size!46370 lt!610043)))) (or (is-Undefined!10184 lt!610248) (is-Found!10184 lt!610248) (not (is-MissingZero!10184 lt!610248)) (and (bvsge (index!43106 lt!610248) #b00000000000000000000000000000000) (bvslt (index!43106 lt!610248) (size!46370 lt!610043)))) (or (is-Undefined!10184 lt!610248) (is-Found!10184 lt!610248) (is-MissingZero!10184 lt!610248) (not (is-MissingVacant!10184 lt!610248)) (and (bvsge (index!43109 lt!610248) #b00000000000000000000000000000000) (bvslt (index!43109 lt!610248) (size!46370 lt!610043)))) (or (is-Undefined!10184 lt!610248) (ite (is-Found!10184 lt!610248) (= (select (arr!45819 lt!610043) (index!43107 lt!610248)) (select (arr!45819 lt!610043) startIndex!16)) (ite (is-MissingZero!10184 lt!610248) (= (select (arr!45819 lt!610043) (index!43106 lt!610248)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10184 lt!610248) (= (select (arr!45819 lt!610043) (index!43109 lt!610248)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!786469 () SeekEntryResult!10184)

(assert (=> d!149829 (= lt!610248 e!786469)))

(declare-fun c!129213 () Bool)

(assert (=> d!149829 (= c!129213 (and (is-Intermediate!10184 lt!610249) (undefined!10996 lt!610249)))))

(assert (=> d!149829 (= lt!610249 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45819 lt!610043) startIndex!16) mask!2987) (select (arr!45819 lt!610043) startIndex!16) lt!610043 mask!2987))))

(assert (=> d!149829 (validMask!0 mask!2987)))

(assert (=> d!149829 (= (seekEntryOrOpen!0 (select (arr!45819 lt!610043) startIndex!16) lt!610043 mask!2987) lt!610248)))

(declare-fun b!1388289 () Bool)

(declare-fun e!786468 () SeekEntryResult!10184)

(assert (=> b!1388289 (= e!786469 e!786468)))

(declare-fun lt!610250 () (_ BitVec 64))

(assert (=> b!1388289 (= lt!610250 (select (arr!45819 lt!610043) (index!43108 lt!610249)))))

(declare-fun c!129214 () Bool)

(assert (=> b!1388289 (= c!129214 (= lt!610250 (select (arr!45819 lt!610043) startIndex!16)))))

(declare-fun b!1388290 () Bool)

(declare-fun c!129212 () Bool)

(assert (=> b!1388290 (= c!129212 (= lt!610250 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1388290 (= e!786468 e!786467)))

(declare-fun b!1388291 () Bool)

(assert (=> b!1388291 (= e!786468 (Found!10184 (index!43108 lt!610249)))))

(declare-fun b!1388292 () Bool)

(assert (=> b!1388292 (= e!786467 (seekKeyOrZeroReturnVacant!0 (x!124725 lt!610249) (index!43108 lt!610249) (index!43108 lt!610249) (select (arr!45819 lt!610043) startIndex!16) lt!610043 mask!2987))))

(declare-fun b!1388293 () Bool)

(assert (=> b!1388293 (= e!786469 Undefined!10184)))

(assert (= (and d!149829 c!129213) b!1388293))

(assert (= (and d!149829 (not c!129213)) b!1388289))

(assert (= (and b!1388289 c!129214) b!1388291))

(assert (= (and b!1388289 (not c!129214)) b!1388290))

(assert (= (and b!1388290 c!129212) b!1388288))

(assert (= (and b!1388290 (not c!129212)) b!1388292))

(declare-fun m!1274087 () Bool)

(assert (=> d!149829 m!1274087))

(assert (=> d!149829 m!1273631))

(declare-fun m!1274089 () Bool)

(assert (=> d!149829 m!1274089))

(assert (=> d!149829 m!1273581))

(declare-fun m!1274091 () Bool)

(assert (=> d!149829 m!1274091))

(declare-fun m!1274093 () Bool)

(assert (=> d!149829 m!1274093))

(assert (=> d!149829 m!1273631))

(assert (=> d!149829 m!1274087))

(declare-fun m!1274095 () Bool)

(assert (=> d!149829 m!1274095))

(declare-fun m!1274097 () Bool)

(assert (=> b!1388289 m!1274097))

(assert (=> b!1388292 m!1273631))

(declare-fun m!1274099 () Bool)

(assert (=> b!1388292 m!1274099))

(assert (=> b!1387908 d!149829))

(declare-fun d!149831 () Bool)

(assert (=> d!149831 (= (validKeyInArray!0 (select (arr!45819 lt!610043) startIndex!16)) (and (not (= (select (arr!45819 lt!610043) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45819 lt!610043) startIndex!16) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387910 d!149831))

(declare-fun bm!66627 () Bool)

(declare-fun call!66630 () Bool)

(assert (=> bm!66627 (= call!66630 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2938 mask!2987))))

(declare-fun b!1388294 () Bool)

(declare-fun e!786471 () Bool)

(declare-fun e!786470 () Bool)

(assert (=> b!1388294 (= e!786471 e!786470)))

(declare-fun lt!610253 () (_ BitVec 64))

(assert (=> b!1388294 (= lt!610253 (select (arr!45819 a!2938) (bvadd startIndex!16 #b00000000000000000000000000000001)))))

(declare-fun lt!610252 () Unit!46351)

(assert (=> b!1388294 (= lt!610252 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!610253 (bvadd startIndex!16 #b00000000000000000000000000000001)))))

(assert (=> b!1388294 (arrayContainsKey!0 a!2938 lt!610253 #b00000000000000000000000000000000)))

(declare-fun lt!610251 () Unit!46351)

(assert (=> b!1388294 (= lt!610251 lt!610252)))

(declare-fun res!928754 () Bool)

(assert (=> b!1388294 (= res!928754 (= (seekEntryOrOpen!0 (select (arr!45819 a!2938) (bvadd startIndex!16 #b00000000000000000000000000000001)) a!2938 mask!2987) (Found!10184 (bvadd startIndex!16 #b00000000000000000000000000000001))))))

(assert (=> b!1388294 (=> (not res!928754) (not e!786470))))

(declare-fun b!1388295 () Bool)

(assert (=> b!1388295 (= e!786471 call!66630)))

(declare-fun d!149833 () Bool)

(declare-fun res!928755 () Bool)

(declare-fun e!786472 () Bool)

(assert (=> d!149833 (=> res!928755 e!786472)))

(assert (=> d!149833 (= res!928755 (bvsge (bvadd startIndex!16 #b00000000000000000000000000000001) (size!46370 a!2938)))))

(assert (=> d!149833 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001) a!2938 mask!2987) e!786472)))

(declare-fun b!1388296 () Bool)

(assert (=> b!1388296 (= e!786472 e!786471)))

(declare-fun c!129215 () Bool)

(assert (=> b!1388296 (= c!129215 (validKeyInArray!0 (select (arr!45819 a!2938) (bvadd startIndex!16 #b00000000000000000000000000000001))))))

(declare-fun b!1388297 () Bool)

(assert (=> b!1388297 (= e!786470 call!66630)))

(assert (= (and d!149833 (not res!928755)) b!1388296))

(assert (= (and b!1388296 c!129215) b!1388294))

(assert (= (and b!1388296 (not c!129215)) b!1388295))

(assert (= (and b!1388294 res!928754) b!1388297))

(assert (= (or b!1388297 b!1388295) bm!66627))

(declare-fun m!1274101 () Bool)

(assert (=> bm!66627 m!1274101))

(declare-fun m!1274103 () Bool)

(assert (=> b!1388294 m!1274103))

(declare-fun m!1274105 () Bool)

(assert (=> b!1388294 m!1274105))

(declare-fun m!1274107 () Bool)

(assert (=> b!1388294 m!1274107))

(assert (=> b!1388294 m!1274103))

(declare-fun m!1274109 () Bool)

(assert (=> b!1388294 m!1274109))

(assert (=> b!1388296 m!1274103))

(assert (=> b!1388296 m!1274103))

(declare-fun m!1274111 () Bool)

(assert (=> b!1388296 m!1274111))

(assert (=> bm!66604 d!149833))

(declare-fun d!149835 () Bool)

(assert (=> d!149835 (= (validKeyInArray!0 (select (arr!45819 a!2938) #b00000000000000000000000000000000)) (and (not (= (select (arr!45819 a!2938) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45819 a!2938) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388055 d!149835))

(declare-fun b!1388317 () Bool)

(declare-fun e!786484 () Bool)

(declare-fun e!786483 () Bool)

(assert (=> b!1388317 (= e!786484 e!786483)))

(declare-fun res!928763 () Bool)

(declare-fun lt!610259 () SeekEntryResult!10184)

(assert (=> b!1388317 (= res!928763 (and (is-Intermediate!10184 lt!610259) (not (undefined!10996 lt!610259)) (bvslt (x!124725 lt!610259) #b01111111111111111111111111111110) (bvsge (x!124725 lt!610259) #b00000000000000000000000000000000) (bvsge (x!124725 lt!610259) #b00000000000000000000000000000000)))))

(assert (=> b!1388317 (=> (not res!928763) (not e!786483))))

(declare-fun b!1388318 () Bool)

(declare-fun e!786486 () SeekEntryResult!10184)

(declare-fun e!786485 () SeekEntryResult!10184)

(assert (=> b!1388318 (= e!786486 e!786485)))

(declare-fun lt!610258 () (_ BitVec 64))

(declare-fun c!129222 () Bool)

(assert (=> b!1388318 (= c!129222 (or (= lt!610258 (select (arr!45819 a!2938) startIndex!16)) (= (bvadd lt!610258 lt!610258) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1388319 () Bool)

(assert (=> b!1388319 (= e!786484 (bvsge (x!124725 lt!610259) #b01111111111111111111111111111110))))

(declare-fun b!1388320 () Bool)

(assert (=> b!1388320 (= e!786485 (Intermediate!10184 false (toIndex!0 (select (arr!45819 a!2938) startIndex!16) mask!2987) #b00000000000000000000000000000000))))

(declare-fun b!1388321 () Bool)

(assert (=> b!1388321 (and (bvsge (index!43108 lt!610259) #b00000000000000000000000000000000) (bvslt (index!43108 lt!610259) (size!46370 a!2938)))))

(declare-fun e!786487 () Bool)

(assert (=> b!1388321 (= e!786487 (= (select (arr!45819 a!2938) (index!43108 lt!610259)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1388322 () Bool)

(assert (=> b!1388322 (and (bvsge (index!43108 lt!610259) #b00000000000000000000000000000000) (bvslt (index!43108 lt!610259) (size!46370 a!2938)))))

(declare-fun res!928764 () Bool)

(assert (=> b!1388322 (= res!928764 (= (select (arr!45819 a!2938) (index!43108 lt!610259)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1388322 (=> res!928764 e!786487)))

(declare-fun d!149837 () Bool)

(assert (=> d!149837 e!786484))

(declare-fun c!129224 () Bool)

(assert (=> d!149837 (= c!129224 (and (is-Intermediate!10184 lt!610259) (undefined!10996 lt!610259)))))

(assert (=> d!149837 (= lt!610259 e!786486)))

(declare-fun c!129223 () Bool)

(assert (=> d!149837 (= c!129223 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!149837 (= lt!610258 (select (arr!45819 a!2938) (toIndex!0 (select (arr!45819 a!2938) startIndex!16) mask!2987)))))

(assert (=> d!149837 (validMask!0 mask!2987)))

(assert (=> d!149837 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45819 a!2938) startIndex!16) mask!2987) (select (arr!45819 a!2938) startIndex!16) a!2938 mask!2987) lt!610259)))

(declare-fun b!1388316 () Bool)

(assert (=> b!1388316 (and (bvsge (index!43108 lt!610259) #b00000000000000000000000000000000) (bvslt (index!43108 lt!610259) (size!46370 a!2938)))))

(declare-fun res!928762 () Bool)

(assert (=> b!1388316 (= res!928762 (= (select (arr!45819 a!2938) (index!43108 lt!610259)) (select (arr!45819 a!2938) startIndex!16)))))

(assert (=> b!1388316 (=> res!928762 e!786487)))

(assert (=> b!1388316 (= e!786483 e!786487)))

(declare-fun b!1388323 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1388323 (= e!786485 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!45819 a!2938) startIndex!16) mask!2987) #b00000000000000000000000000000000 mask!2987) (select (arr!45819 a!2938) startIndex!16) a!2938 mask!2987))))

(declare-fun b!1388324 () Bool)

(assert (=> b!1388324 (= e!786486 (Intermediate!10184 true (toIndex!0 (select (arr!45819 a!2938) startIndex!16) mask!2987) #b00000000000000000000000000000000))))

(assert (= (and d!149837 c!129223) b!1388324))

(assert (= (and d!149837 (not c!129223)) b!1388318))

(assert (= (and b!1388318 c!129222) b!1388320))

(assert (= (and b!1388318 (not c!129222)) b!1388323))

(assert (= (and d!149837 c!129224) b!1388319))

(assert (= (and d!149837 (not c!129224)) b!1388317))

(assert (= (and b!1388317 res!928763) b!1388316))

(assert (= (and b!1388316 (not res!928762)) b!1388322))

(assert (= (and b!1388322 (not res!928764)) b!1388321))

(assert (=> b!1388323 m!1273769))

(declare-fun m!1274113 () Bool)

(assert (=> b!1388323 m!1274113))

(assert (=> b!1388323 m!1274113))

(assert (=> b!1388323 m!1273597))

(declare-fun m!1274115 () Bool)

(assert (=> b!1388323 m!1274115))

(assert (=> d!149837 m!1273769))

(declare-fun m!1274117 () Bool)

(assert (=> d!149837 m!1274117))

(assert (=> d!149837 m!1273581))

(declare-fun m!1274119 () Bool)

(assert (=> b!1388322 m!1274119))

(assert (=> b!1388316 m!1274119))

(assert (=> b!1388321 m!1274119))

(assert (=> d!149709 d!149837))

(declare-fun d!149839 () Bool)

(declare-fun lt!610265 () (_ BitVec 32))

(declare-fun lt!610264 () (_ BitVec 32))

(assert (=> d!149839 (= lt!610265 (bvmul (bvxor lt!610264 (bvlshr lt!610264 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!149839 (= lt!610264 ((_ extract 31 0) (bvand (bvxor (select (arr!45819 a!2938) startIndex!16) (bvlshr (select (arr!45819 a!2938) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!149839 (and (bvsge mask!2987 #b00000000000000000000000000000000) (let ((res!928765 (let ((h!33738 ((_ extract 31 0) (bvand (bvxor (select (arr!45819 a!2938) startIndex!16) (bvlshr (select (arr!45819 a!2938) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!124733 (bvmul (bvxor h!33738 (bvlshr h!33738 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!124733 (bvlshr x!124733 #b00000000000000000000000000001101)) mask!2987))))) (and (bvslt res!928765 (bvadd mask!2987 #b00000000000000000000000000000001)) (bvsge res!928765 #b00000000000000000000000000000000))))))

(assert (=> d!149839 (= (toIndex!0 (select (arr!45819 a!2938) startIndex!16) mask!2987) (bvand (bvxor lt!610265 (bvlshr lt!610265 #b00000000000000000000000000001101)) mask!2987))))

(assert (=> d!149709 d!149839))

(assert (=> d!149709 d!149713))

(assert (=> d!149669 d!149675))

(declare-fun d!149841 () Bool)

(assert (=> d!149841 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(assert (=> d!149841 true))

(declare-fun _$72!140 () Unit!46351)

(assert (=> d!149841 (= (choose!38 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16) _$72!140)))

(declare-fun bs!40348 () Bool)

(assert (= bs!40348 d!149841))

(assert (=> bs!40348 m!1273601))

(assert (=> d!149669 d!149841))

(assert (=> d!149669 d!149713))

(declare-fun call!66631 () Bool)

(declare-fun bm!66628 () Bool)

(assert (=> bm!66628 (= call!66631 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!610043 mask!2987))))

(declare-fun b!1388325 () Bool)

(declare-fun e!786489 () Bool)

(declare-fun e!786488 () Bool)

(assert (=> b!1388325 (= e!786489 e!786488)))

(declare-fun lt!610268 () (_ BitVec 64))

(assert (=> b!1388325 (= lt!610268 (select (arr!45819 lt!610043) (bvadd startIndex!16 #b00000000000000000000000000000001)))))

(declare-fun lt!610267 () Unit!46351)

(assert (=> b!1388325 (= lt!610267 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!610043 lt!610268 (bvadd startIndex!16 #b00000000000000000000000000000001)))))

(assert (=> b!1388325 (arrayContainsKey!0 lt!610043 lt!610268 #b00000000000000000000000000000000)))

(declare-fun lt!610266 () Unit!46351)

(assert (=> b!1388325 (= lt!610266 lt!610267)))

(declare-fun res!928766 () Bool)

(assert (=> b!1388325 (= res!928766 (= (seekEntryOrOpen!0 (select (arr!45819 lt!610043) (bvadd startIndex!16 #b00000000000000000000000000000001)) lt!610043 mask!2987) (Found!10184 (bvadd startIndex!16 #b00000000000000000000000000000001))))))

(assert (=> b!1388325 (=> (not res!928766) (not e!786488))))

(declare-fun b!1388326 () Bool)

(assert (=> b!1388326 (= e!786489 call!66631)))

(declare-fun d!149843 () Bool)

(declare-fun res!928767 () Bool)

(declare-fun e!786490 () Bool)

(assert (=> d!149843 (=> res!928767 e!786490)))

(assert (=> d!149843 (= res!928767 (bvsge (bvadd startIndex!16 #b00000000000000000000000000000001) (size!46370 lt!610043)))))

(assert (=> d!149843 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001) lt!610043 mask!2987) e!786490)))

(declare-fun b!1388327 () Bool)

(assert (=> b!1388327 (= e!786490 e!786489)))

(declare-fun c!129225 () Bool)

(assert (=> b!1388327 (= c!129225 (validKeyInArray!0 (select (arr!45819 lt!610043) (bvadd startIndex!16 #b00000000000000000000000000000001))))))

(declare-fun b!1388328 () Bool)

(assert (=> b!1388328 (= e!786488 call!66631)))

(assert (= (and d!149843 (not res!928767)) b!1388327))

(assert (= (and b!1388327 c!129225) b!1388325))

(assert (= (and b!1388327 (not c!129225)) b!1388326))

(assert (= (and b!1388325 res!928766) b!1388328))

(assert (= (or b!1388328 b!1388326) bm!66628))

(declare-fun m!1274121 () Bool)

(assert (=> bm!66628 m!1274121))

(declare-fun m!1274123 () Bool)

(assert (=> b!1388325 m!1274123))

(declare-fun m!1274125 () Bool)

(assert (=> b!1388325 m!1274125))

(declare-fun m!1274127 () Bool)

(assert (=> b!1388325 m!1274127))

(assert (=> b!1388325 m!1274123))

(declare-fun m!1274129 () Bool)

(assert (=> b!1388325 m!1274129))

(assert (=> b!1388327 m!1274123))

(assert (=> b!1388327 m!1274123))

(declare-fun m!1274131 () Bool)

(assert (=> b!1388327 m!1274131))

(assert (=> bm!66599 d!149843))

(assert (=> b!1387966 d!149709))

(declare-fun b!1388329 () Bool)

(declare-fun e!786491 () SeekEntryResult!10184)

(declare-fun lt!610270 () SeekEntryResult!10184)

(assert (=> b!1388329 (= e!786491 (MissingZero!10184 (index!43108 lt!610270)))))

(declare-fun d!149845 () Bool)

(declare-fun lt!610269 () SeekEntryResult!10184)

(assert (=> d!149845 (and (or (is-Undefined!10184 lt!610269) (not (is-Found!10184 lt!610269)) (and (bvsge (index!43107 lt!610269) #b00000000000000000000000000000000) (bvslt (index!43107 lt!610269) (size!46370 (array!94898 (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46370 a!2938)))))) (or (is-Undefined!10184 lt!610269) (is-Found!10184 lt!610269) (not (is-MissingZero!10184 lt!610269)) (and (bvsge (index!43106 lt!610269) #b00000000000000000000000000000000) (bvslt (index!43106 lt!610269) (size!46370 (array!94898 (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46370 a!2938)))))) (or (is-Undefined!10184 lt!610269) (is-Found!10184 lt!610269) (is-MissingZero!10184 lt!610269) (not (is-MissingVacant!10184 lt!610269)) (and (bvsge (index!43109 lt!610269) #b00000000000000000000000000000000) (bvslt (index!43109 lt!610269) (size!46370 (array!94898 (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46370 a!2938)))))) (or (is-Undefined!10184 lt!610269) (ite (is-Found!10184 lt!610269) (= (select (arr!45819 (array!94898 (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46370 a!2938))) (index!43107 lt!610269)) (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)) (ite (is-MissingZero!10184 lt!610269) (= (select (arr!45819 (array!94898 (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46370 a!2938))) (index!43106 lt!610269)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10184 lt!610269) (= (select (arr!45819 (array!94898 (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46370 a!2938))) (index!43109 lt!610269)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!786493 () SeekEntryResult!10184)

(assert (=> d!149845 (= lt!610269 e!786493)))

(declare-fun c!129227 () Bool)

(assert (=> d!149845 (= c!129227 (and (is-Intermediate!10184 lt!610270) (undefined!10996 lt!610270)))))

(assert (=> d!149845 (= lt!610270 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94898 (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46370 a!2938)) mask!2987))))

(assert (=> d!149845 (validMask!0 mask!2987)))

(assert (=> d!149845 (= (seekEntryOrOpen!0 (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94898 (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46370 a!2938)) mask!2987) lt!610269)))

(declare-fun b!1388330 () Bool)

(declare-fun e!786492 () SeekEntryResult!10184)

(assert (=> b!1388330 (= e!786493 e!786492)))

(declare-fun lt!610271 () (_ BitVec 64))

(assert (=> b!1388330 (= lt!610271 (select (arr!45819 (array!94898 (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46370 a!2938))) (index!43108 lt!610270)))))

(declare-fun c!129228 () Bool)

(assert (=> b!1388330 (= c!129228 (= lt!610271 (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)))))

(declare-fun b!1388331 () Bool)

(declare-fun c!129226 () Bool)

(assert (=> b!1388331 (= c!129226 (= lt!610271 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1388331 (= e!786492 e!786491)))

(declare-fun b!1388332 () Bool)

(assert (=> b!1388332 (= e!786492 (Found!10184 (index!43108 lt!610270)))))

(declare-fun b!1388333 () Bool)

(assert (=> b!1388333 (= e!786491 (seekKeyOrZeroReturnVacant!0 (x!124725 lt!610270) (index!43108 lt!610270) (index!43108 lt!610270) (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94898 (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46370 a!2938)) mask!2987))))

(declare-fun b!1388334 () Bool)

(assert (=> b!1388334 (= e!786493 Undefined!10184)))

(assert (= (and d!149845 c!129227) b!1388334))

(assert (= (and d!149845 (not c!129227)) b!1388330))

(assert (= (and b!1388330 c!129228) b!1388332))

(assert (= (and b!1388330 (not c!129228)) b!1388331))

(assert (= (and b!1388331 c!129226) b!1388329))

(assert (= (and b!1388331 (not c!129226)) b!1388333))

(assert (=> d!149845 m!1273741))

(assert (=> d!149845 m!1273589))

(declare-fun m!1274133 () Bool)

(assert (=> d!149845 m!1274133))

(assert (=> d!149845 m!1273581))

(declare-fun m!1274135 () Bool)

(assert (=> d!149845 m!1274135))

(declare-fun m!1274137 () Bool)

(assert (=> d!149845 m!1274137))

(assert (=> d!149845 m!1273589))

(assert (=> d!149845 m!1273741))

(declare-fun m!1274139 () Bool)

(assert (=> d!149845 m!1274139))

(declare-fun m!1274141 () Bool)

(assert (=> b!1388330 m!1274141))

(assert (=> b!1388333 m!1273589))

(declare-fun m!1274143 () Bool)

(assert (=> b!1388333 m!1274143))

(assert (=> b!1387966 d!149845))

(assert (=> b!1388058 d!149835))

(declare-fun d!149847 () Bool)

(assert (=> d!149847 (arrayContainsKey!0 a!2938 lt!610140 #b00000000000000000000000000000000)))

(declare-fun lt!610272 () Unit!46351)

(assert (=> d!149847 (= lt!610272 (choose!13 a!2938 lt!610140 #b00000000000000000000000000000000))))

(assert (=> d!149847 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!149847 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!610140 #b00000000000000000000000000000000) lt!610272)))

(declare-fun bs!40349 () Bool)

(assert (= bs!40349 d!149847))

(assert (=> bs!40349 m!1273789))

(declare-fun m!1274145 () Bool)

(assert (=> bs!40349 m!1274145))

(assert (=> b!1388034 d!149847))

(declare-fun d!149849 () Bool)

(declare-fun res!928768 () Bool)

(declare-fun e!786494 () Bool)

(assert (=> d!149849 (=> res!928768 e!786494)))

(assert (=> d!149849 (= res!928768 (= (select (arr!45819 a!2938) #b00000000000000000000000000000000) lt!610140))))

(assert (=> d!149849 (= (arrayContainsKey!0 a!2938 lt!610140 #b00000000000000000000000000000000) e!786494)))

(declare-fun b!1388335 () Bool)

(declare-fun e!786495 () Bool)

(assert (=> b!1388335 (= e!786494 e!786495)))

(declare-fun res!928769 () Bool)

(assert (=> b!1388335 (=> (not res!928769) (not e!786495))))

(assert (=> b!1388335 (= res!928769 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46370 a!2938)))))

(declare-fun b!1388336 () Bool)

(assert (=> b!1388336 (= e!786495 (arrayContainsKey!0 a!2938 lt!610140 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!149849 (not res!928768)) b!1388335))

(assert (= (and b!1388335 res!928769) b!1388336))

(assert (=> d!149849 m!1273785))

(declare-fun m!1274147 () Bool)

(assert (=> b!1388336 m!1274147))

(assert (=> b!1388034 d!149849))

(declare-fun b!1388337 () Bool)

(declare-fun e!786496 () SeekEntryResult!10184)

(declare-fun lt!610274 () SeekEntryResult!10184)

(assert (=> b!1388337 (= e!786496 (MissingZero!10184 (index!43108 lt!610274)))))

(declare-fun d!149851 () Bool)

(declare-fun lt!610273 () SeekEntryResult!10184)

(assert (=> d!149851 (and (or (is-Undefined!10184 lt!610273) (not (is-Found!10184 lt!610273)) (and (bvsge (index!43107 lt!610273) #b00000000000000000000000000000000) (bvslt (index!43107 lt!610273) (size!46370 a!2938)))) (or (is-Undefined!10184 lt!610273) (is-Found!10184 lt!610273) (not (is-MissingZero!10184 lt!610273)) (and (bvsge (index!43106 lt!610273) #b00000000000000000000000000000000) (bvslt (index!43106 lt!610273) (size!46370 a!2938)))) (or (is-Undefined!10184 lt!610273) (is-Found!10184 lt!610273) (is-MissingZero!10184 lt!610273) (not (is-MissingVacant!10184 lt!610273)) (and (bvsge (index!43109 lt!610273) #b00000000000000000000000000000000) (bvslt (index!43109 lt!610273) (size!46370 a!2938)))) (or (is-Undefined!10184 lt!610273) (ite (is-Found!10184 lt!610273) (= (select (arr!45819 a!2938) (index!43107 lt!610273)) (select (arr!45819 a!2938) #b00000000000000000000000000000000)) (ite (is-MissingZero!10184 lt!610273) (= (select (arr!45819 a!2938) (index!43106 lt!610273)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10184 lt!610273) (= (select (arr!45819 a!2938) (index!43109 lt!610273)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!786498 () SeekEntryResult!10184)

(assert (=> d!149851 (= lt!610273 e!786498)))

(declare-fun c!129230 () Bool)

(assert (=> d!149851 (= c!129230 (and (is-Intermediate!10184 lt!610274) (undefined!10996 lt!610274)))))

(assert (=> d!149851 (= lt!610274 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45819 a!2938) #b00000000000000000000000000000000) mask!2987) (select (arr!45819 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987))))

(assert (=> d!149851 (validMask!0 mask!2987)))

(assert (=> d!149851 (= (seekEntryOrOpen!0 (select (arr!45819 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987) lt!610273)))

(declare-fun b!1388338 () Bool)

(declare-fun e!786497 () SeekEntryResult!10184)

(assert (=> b!1388338 (= e!786498 e!786497)))

(declare-fun lt!610275 () (_ BitVec 64))

(assert (=> b!1388338 (= lt!610275 (select (arr!45819 a!2938) (index!43108 lt!610274)))))

(declare-fun c!129231 () Bool)

(assert (=> b!1388338 (= c!129231 (= lt!610275 (select (arr!45819 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1388339 () Bool)

(declare-fun c!129229 () Bool)

(assert (=> b!1388339 (= c!129229 (= lt!610275 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1388339 (= e!786497 e!786496)))

(declare-fun b!1388340 () Bool)

(assert (=> b!1388340 (= e!786497 (Found!10184 (index!43108 lt!610274)))))

(declare-fun b!1388341 () Bool)

(assert (=> b!1388341 (= e!786496 (seekKeyOrZeroReturnVacant!0 (x!124725 lt!610274) (index!43108 lt!610274) (index!43108 lt!610274) (select (arr!45819 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987))))

(declare-fun b!1388342 () Bool)

(assert (=> b!1388342 (= e!786498 Undefined!10184)))

(assert (= (and d!149851 c!129230) b!1388342))

(assert (= (and d!149851 (not c!129230)) b!1388338))

(assert (= (and b!1388338 c!129231) b!1388340))

(assert (= (and b!1388338 (not c!129231)) b!1388339))

(assert (= (and b!1388339 c!129229) b!1388337))

(assert (= (and b!1388339 (not c!129229)) b!1388341))

(declare-fun m!1274149 () Bool)

(assert (=> d!149851 m!1274149))

(assert (=> d!149851 m!1273785))

(declare-fun m!1274151 () Bool)

(assert (=> d!149851 m!1274151))

(assert (=> d!149851 m!1273581))

(declare-fun m!1274153 () Bool)

(assert (=> d!149851 m!1274153))

(declare-fun m!1274155 () Bool)

(assert (=> d!149851 m!1274155))

(assert (=> d!149851 m!1273785))

(assert (=> d!149851 m!1274149))

(declare-fun m!1274157 () Bool)

(assert (=> d!149851 m!1274157))

(declare-fun m!1274159 () Bool)

(assert (=> b!1388338 m!1274159))

(assert (=> b!1388341 m!1273785))

(declare-fun m!1274161 () Bool)

(assert (=> b!1388341 m!1274161))

(assert (=> b!1388034 d!149851))

(declare-fun b!1388355 () Bool)

(declare-fun c!129239 () Bool)

(declare-fun lt!610281 () (_ BitVec 64))

(assert (=> b!1388355 (= c!129239 (= lt!610281 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!786505 () SeekEntryResult!10184)

(declare-fun e!786506 () SeekEntryResult!10184)

(assert (=> b!1388355 (= e!786505 e!786506)))

(declare-fun d!149853 () Bool)

(declare-fun lt!610280 () SeekEntryResult!10184)

(assert (=> d!149853 (and (or (is-Undefined!10184 lt!610280) (not (is-Found!10184 lt!610280)) (and (bvsge (index!43107 lt!610280) #b00000000000000000000000000000000) (bvslt (index!43107 lt!610280) (size!46370 a!2938)))) (or (is-Undefined!10184 lt!610280) (is-Found!10184 lt!610280) (not (is-MissingVacant!10184 lt!610280)) (not (= (index!43109 lt!610280) (index!43108 lt!610134))) (and (bvsge (index!43109 lt!610280) #b00000000000000000000000000000000) (bvslt (index!43109 lt!610280) (size!46370 a!2938)))) (or (is-Undefined!10184 lt!610280) (ite (is-Found!10184 lt!610280) (= (select (arr!45819 a!2938) (index!43107 lt!610280)) (select (arr!45819 a!2938) startIndex!16)) (and (is-MissingVacant!10184 lt!610280) (= (index!43109 lt!610280) (index!43108 lt!610134)) (= (select (arr!45819 a!2938) (index!43109 lt!610280)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!786507 () SeekEntryResult!10184)

(assert (=> d!149853 (= lt!610280 e!786507)))

(declare-fun c!129238 () Bool)

(assert (=> d!149853 (= c!129238 (bvsge (x!124725 lt!610134) #b01111111111111111111111111111110))))

(assert (=> d!149853 (= lt!610281 (select (arr!45819 a!2938) (index!43108 lt!610134)))))

(assert (=> d!149853 (validMask!0 mask!2987)))

(assert (=> d!149853 (= (seekKeyOrZeroReturnVacant!0 (x!124725 lt!610134) (index!43108 lt!610134) (index!43108 lt!610134) (select (arr!45819 a!2938) startIndex!16) a!2938 mask!2987) lt!610280)))

(declare-fun b!1388356 () Bool)

(assert (=> b!1388356 (= e!786506 (MissingVacant!10184 (index!43108 lt!610134)))))

(declare-fun b!1388357 () Bool)

(assert (=> b!1388357 (= e!786507 e!786505)))

(declare-fun c!129240 () Bool)

(assert (=> b!1388357 (= c!129240 (= lt!610281 (select (arr!45819 a!2938) startIndex!16)))))

(declare-fun b!1388358 () Bool)

(assert (=> b!1388358 (= e!786506 (seekKeyOrZeroReturnVacant!0 (bvadd (x!124725 lt!610134) #b00000000000000000000000000000001) (nextIndex!0 (index!43108 lt!610134) (x!124725 lt!610134) mask!2987) (index!43108 lt!610134) (select (arr!45819 a!2938) startIndex!16) a!2938 mask!2987))))

(declare-fun b!1388359 () Bool)

(assert (=> b!1388359 (= e!786507 Undefined!10184)))

(declare-fun b!1388360 () Bool)

(assert (=> b!1388360 (= e!786505 (Found!10184 (index!43108 lt!610134)))))

(assert (= (and d!149853 c!129238) b!1388359))

(assert (= (and d!149853 (not c!129238)) b!1388357))

(assert (= (and b!1388357 c!129240) b!1388360))

(assert (= (and b!1388357 (not c!129240)) b!1388355))

(assert (= (and b!1388355 c!129239) b!1388356))

(assert (= (and b!1388355 (not c!129239)) b!1388358))

(declare-fun m!1274163 () Bool)

(assert (=> d!149853 m!1274163))

(declare-fun m!1274165 () Bool)

(assert (=> d!149853 m!1274165))

(assert (=> d!149853 m!1273779))

(assert (=> d!149853 m!1273581))

(declare-fun m!1274167 () Bool)

(assert (=> b!1388358 m!1274167))

(assert (=> b!1388358 m!1274167))

(assert (=> b!1388358 m!1273597))

(declare-fun m!1274169 () Bool)

(assert (=> b!1388358 m!1274169))

(assert (=> b!1388030 d!149853))

(assert (=> b!1388036 d!149835))

(declare-fun d!149855 () Bool)

(assert (=> d!149855 (arrayContainsKey!0 a!2938 lt!610081 #b00000000000000000000000000000000)))

(declare-fun lt!610282 () Unit!46351)

(assert (=> d!149855 (= lt!610282 (choose!13 a!2938 lt!610081 startIndex!16))))

(assert (=> d!149855 (bvsge startIndex!16 #b00000000000000000000000000000000)))

(assert (=> d!149855 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!610081 startIndex!16) lt!610282)))

(declare-fun bs!40350 () Bool)

(assert (= bs!40350 d!149855))

(assert (=> bs!40350 m!1273661))

(declare-fun m!1274171 () Bool)

(assert (=> bs!40350 m!1274171))

(assert (=> b!1387931 d!149855))

(declare-fun d!149857 () Bool)

(declare-fun res!928770 () Bool)

(declare-fun e!786508 () Bool)

(assert (=> d!149857 (=> res!928770 e!786508)))

(assert (=> d!149857 (= res!928770 (= (select (arr!45819 a!2938) #b00000000000000000000000000000000) lt!610081))))

(assert (=> d!149857 (= (arrayContainsKey!0 a!2938 lt!610081 #b00000000000000000000000000000000) e!786508)))

(declare-fun b!1388361 () Bool)

(declare-fun e!786509 () Bool)

(assert (=> b!1388361 (= e!786508 e!786509)))

(declare-fun res!928771 () Bool)

(assert (=> b!1388361 (=> (not res!928771) (not e!786509))))

(assert (=> b!1388361 (= res!928771 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46370 a!2938)))))

(declare-fun b!1388362 () Bool)

(assert (=> b!1388362 (= e!786509 (arrayContainsKey!0 a!2938 lt!610081 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!149857 (not res!928770)) b!1388361))

(assert (= (and b!1388361 res!928771) b!1388362))

(assert (=> d!149857 m!1273785))

(declare-fun m!1274173 () Bool)

(assert (=> b!1388362 m!1274173))

(assert (=> b!1387931 d!149857))

(assert (=> b!1387931 d!149709))

(declare-fun b!1388364 () Bool)

(declare-fun e!786511 () Bool)

(declare-fun e!786510 () Bool)

(assert (=> b!1388364 (= e!786511 e!786510)))

(declare-fun res!928773 () Bool)

(declare-fun lt!610284 () SeekEntryResult!10184)

(assert (=> b!1388364 (= res!928773 (and (is-Intermediate!10184 lt!610284) (not (undefined!10996 lt!610284)) (bvslt (x!124725 lt!610284) #b01111111111111111111111111111110) (bvsge (x!124725 lt!610284) #b00000000000000000000000000000000) (bvsge (x!124725 lt!610284) #b00000000000000000000000000000000)))))

(assert (=> b!1388364 (=> (not res!928773) (not e!786510))))

(declare-fun b!1388365 () Bool)

(declare-fun e!786513 () SeekEntryResult!10184)

(declare-fun e!786512 () SeekEntryResult!10184)

(assert (=> b!1388365 (= e!786513 e!786512)))

(declare-fun lt!610283 () (_ BitVec 64))

(declare-fun c!129241 () Bool)

(assert (=> b!1388365 (= c!129241 (or (= lt!610283 (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)) (= (bvadd lt!610283 lt!610283) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1388366 () Bool)

(assert (=> b!1388366 (= e!786511 (bvsge (x!124725 lt!610284) #b01111111111111111111111111111110))))

(declare-fun b!1388367 () Bool)

(assert (=> b!1388367 (= e!786512 (Intermediate!10184 false (toIndex!0 (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) #b00000000000000000000000000000000))))

(declare-fun b!1388368 () Bool)

(assert (=> b!1388368 (and (bvsge (index!43108 lt!610284) #b00000000000000000000000000000000) (bvslt (index!43108 lt!610284) (size!46370 lt!610043)))))

(declare-fun e!786514 () Bool)

(assert (=> b!1388368 (= e!786514 (= (select (arr!45819 lt!610043) (index!43108 lt!610284)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1388369 () Bool)

(assert (=> b!1388369 (and (bvsge (index!43108 lt!610284) #b00000000000000000000000000000000) (bvslt (index!43108 lt!610284) (size!46370 lt!610043)))))

(declare-fun res!928774 () Bool)

(assert (=> b!1388369 (= res!928774 (= (select (arr!45819 lt!610043) (index!43108 lt!610284)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1388369 (=> res!928774 e!786514)))

(declare-fun d!149859 () Bool)

(assert (=> d!149859 e!786511))

(declare-fun c!129243 () Bool)

(assert (=> d!149859 (= c!129243 (and (is-Intermediate!10184 lt!610284) (undefined!10996 lt!610284)))))

(assert (=> d!149859 (= lt!610284 e!786513)))

(declare-fun c!129242 () Bool)

(assert (=> d!149859 (= c!129242 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!149859 (= lt!610283 (select (arr!45819 lt!610043) (toIndex!0 (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987)))))

(assert (=> d!149859 (validMask!0 mask!2987)))

(assert (=> d!149859 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610043 mask!2987) lt!610284)))

(declare-fun b!1388363 () Bool)

(assert (=> b!1388363 (and (bvsge (index!43108 lt!610284) #b00000000000000000000000000000000) (bvslt (index!43108 lt!610284) (size!46370 lt!610043)))))

(declare-fun res!928772 () Bool)

(assert (=> b!1388363 (= res!928772 (= (select (arr!45819 lt!610043) (index!43108 lt!610284)) (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)))))

(assert (=> b!1388363 (=> res!928772 e!786514)))

(assert (=> b!1388363 (= e!786510 e!786514)))

(declare-fun b!1388370 () Bool)

(assert (=> b!1388370 (= e!786512 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) #b00000000000000000000000000000000 mask!2987) (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610043 mask!2987))))

(declare-fun b!1388371 () Bool)

(assert (=> b!1388371 (= e!786513 (Intermediate!10184 true (toIndex!0 (select (store (arr!45819 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) #b00000000000000000000000000000000))))

(assert (= (and d!149859 c!129242) b!1388371))

(assert (= (and d!149859 (not c!129242)) b!1388365))

(assert (= (and b!1388365 c!129241) b!1388367))

(assert (= (and b!1388365 (not c!129241)) b!1388370))

