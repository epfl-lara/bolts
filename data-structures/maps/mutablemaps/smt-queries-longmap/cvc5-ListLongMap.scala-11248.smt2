; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131188 () Bool)

(assert start!131188)

(declare-fun b!1538477 () Bool)

(declare-fun res!1055596 () Bool)

(declare-fun e!855986 () Bool)

(assert (=> b!1538477 (=> (not res!1055596) (not e!855986))))

(declare-datatypes ((array!102180 0))(
  ( (array!102181 (arr!49300 (Array (_ BitVec 32) (_ BitVec 64))) (size!49851 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102180)

(declare-datatypes ((List!35954 0))(
  ( (Nil!35951) (Cons!35950 (h!37396 (_ BitVec 64)) (t!50655 List!35954)) )
))
(declare-fun arrayNoDuplicates!0 (array!102180 (_ BitVec 32) List!35954) Bool)

(assert (=> b!1538477 (= res!1055596 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35951))))

(declare-fun b!1538478 () Bool)

(declare-fun res!1055593 () Bool)

(assert (=> b!1538478 (=> (not res!1055593) (not e!855986))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538478 (= res!1055593 (and (= (size!49851 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49851 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49851 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538479 () Bool)

(declare-fun res!1055599 () Bool)

(assert (=> b!1538479 (=> (not res!1055599) (not e!855986))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13449 0))(
  ( (MissingZero!13449 (index!56190 (_ BitVec 32))) (Found!13449 (index!56191 (_ BitVec 32))) (Intermediate!13449 (undefined!14261 Bool) (index!56192 (_ BitVec 32)) (x!137929 (_ BitVec 32))) (Undefined!13449) (MissingVacant!13449 (index!56193 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102180 (_ BitVec 32)) SeekEntryResult!13449)

(assert (=> b!1538479 (= res!1055599 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49300 a!2792) j!64) a!2792 mask!2480) (Found!13449 j!64)))))

(declare-fun b!1538480 () Bool)

(declare-fun res!1055594 () Bool)

(assert (=> b!1538480 (=> (not res!1055594) (not e!855986))))

(assert (=> b!1538480 (= res!1055594 (not (= (select (arr!49300 a!2792) index!463) (select (arr!49300 a!2792) j!64))))))

(declare-fun b!1538481 () Bool)

(declare-fun res!1055598 () Bool)

(assert (=> b!1538481 (=> (not res!1055598) (not e!855986))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102180 (_ BitVec 32)) Bool)

(assert (=> b!1538481 (= res!1055598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538482 () Bool)

(assert (=> b!1538482 (= e!855986 false)))

(declare-fun lt!664840 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538482 (= lt!664840 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538483 () Bool)

(declare-fun res!1055600 () Bool)

(assert (=> b!1538483 (=> (not res!1055600) (not e!855986))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538483 (= res!1055600 (validKeyInArray!0 (select (arr!49300 a!2792) i!951)))))

(declare-fun b!1538484 () Bool)

(declare-fun res!1055597 () Bool)

(assert (=> b!1538484 (=> (not res!1055597) (not e!855986))))

(assert (=> b!1538484 (= res!1055597 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49851 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49851 a!2792)) (= (select (arr!49300 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538485 () Bool)

(declare-fun res!1055595 () Bool)

(assert (=> b!1538485 (=> (not res!1055595) (not e!855986))))

(assert (=> b!1538485 (= res!1055595 (validKeyInArray!0 (select (arr!49300 a!2792) j!64)))))

(declare-fun res!1055601 () Bool)

(assert (=> start!131188 (=> (not res!1055601) (not e!855986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131188 (= res!1055601 (validMask!0 mask!2480))))

(assert (=> start!131188 e!855986))

(assert (=> start!131188 true))

(declare-fun array_inv!38245 (array!102180) Bool)

(assert (=> start!131188 (array_inv!38245 a!2792)))

(assert (= (and start!131188 res!1055601) b!1538478))

(assert (= (and b!1538478 res!1055593) b!1538483))

(assert (= (and b!1538483 res!1055600) b!1538485))

(assert (= (and b!1538485 res!1055595) b!1538481))

(assert (= (and b!1538481 res!1055598) b!1538477))

(assert (= (and b!1538477 res!1055596) b!1538484))

(assert (= (and b!1538484 res!1055597) b!1538479))

(assert (= (and b!1538479 res!1055599) b!1538480))

(assert (= (and b!1538480 res!1055594) b!1538482))

(declare-fun m!1420941 () Bool)

(assert (=> b!1538481 m!1420941))

(declare-fun m!1420943 () Bool)

(assert (=> b!1538484 m!1420943))

(declare-fun m!1420945 () Bool)

(assert (=> start!131188 m!1420945))

(declare-fun m!1420947 () Bool)

(assert (=> start!131188 m!1420947))

(declare-fun m!1420949 () Bool)

(assert (=> b!1538479 m!1420949))

(assert (=> b!1538479 m!1420949))

(declare-fun m!1420951 () Bool)

(assert (=> b!1538479 m!1420951))

(declare-fun m!1420953 () Bool)

(assert (=> b!1538482 m!1420953))

(declare-fun m!1420955 () Bool)

(assert (=> b!1538480 m!1420955))

(assert (=> b!1538480 m!1420949))

(assert (=> b!1538485 m!1420949))

(assert (=> b!1538485 m!1420949))

(declare-fun m!1420957 () Bool)

(assert (=> b!1538485 m!1420957))

(declare-fun m!1420959 () Bool)

(assert (=> b!1538483 m!1420959))

(assert (=> b!1538483 m!1420959))

(declare-fun m!1420961 () Bool)

(assert (=> b!1538483 m!1420961))

(declare-fun m!1420963 () Bool)

(assert (=> b!1538477 m!1420963))

(push 1)

(assert (not b!1538483))

(assert (not b!1538477))

(assert (not b!1538485))

(assert (not b!1538481))

(assert (not b!1538479))

(assert (not start!131188))

(assert (not b!1538482))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

