; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131386 () Bool)

(assert start!131386)

(declare-fun b!1539885 () Bool)

(declare-fun res!1056723 () Bool)

(declare-fun e!856505 () Bool)

(assert (=> b!1539885 (=> (not res!1056723) (not e!856505))))

(declare-datatypes ((array!102261 0))(
  ( (array!102262 (arr!49336 (Array (_ BitVec 32) (_ BitVec 64))) (size!49887 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102261)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102261 (_ BitVec 32)) Bool)

(assert (=> b!1539885 (= res!1056723 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1539887 () Bool)

(declare-fun res!1056721 () Bool)

(assert (=> b!1539887 (=> (not res!1056721) (not e!856505))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1539887 (= res!1056721 (and (= (size!49887 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49887 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49887 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1539888 () Bool)

(declare-fun res!1056716 () Bool)

(declare-fun e!856503 () Bool)

(assert (=> b!1539888 (=> (not res!1056716) (not e!856503))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1539888 (= res!1056716 (not (= (select (arr!49336 a!2792) index!463) (select (arr!49336 a!2792) j!64))))))

(declare-fun b!1539889 () Bool)

(declare-fun res!1056719 () Bool)

(assert (=> b!1539889 (=> (not res!1056719) (not e!856505))))

(declare-datatypes ((List!35990 0))(
  ( (Nil!35987) (Cons!35986 (h!37432 (_ BitVec 64)) (t!50691 List!35990)) )
))
(declare-fun arrayNoDuplicates!0 (array!102261 (_ BitVec 32) List!35990) Bool)

(assert (=> b!1539889 (= res!1056719 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35987))))

(declare-fun b!1539890 () Bool)

(declare-fun res!1056718 () Bool)

(assert (=> b!1539890 (=> (not res!1056718) (not e!856505))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1539890 (= res!1056718 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49887 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49887 a!2792)) (= (select (arr!49336 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1539891 () Bool)

(declare-fun res!1056715 () Bool)

(declare-fun e!856502 () Bool)

(assert (=> b!1539891 (=> (not res!1056715) (not e!856502))))

(declare-fun lt!665128 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13485 0))(
  ( (MissingZero!13485 (index!56334 (_ BitVec 32))) (Found!13485 (index!56335 (_ BitVec 32))) (Intermediate!13485 (undefined!14297 Bool) (index!56336 (_ BitVec 32)) (x!138079 (_ BitVec 32))) (Undefined!13485) (MissingVacant!13485 (index!56337 (_ BitVec 32))) )
))
(declare-fun lt!665127 () SeekEntryResult!13485)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102261 (_ BitVec 32)) SeekEntryResult!13485)

(assert (=> b!1539891 (= res!1056715 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665128 vacantIndex!5 (select (arr!49336 a!2792) j!64) a!2792 mask!2480) lt!665127))))

(declare-fun b!1539892 () Bool)

(assert (=> b!1539892 (= e!856505 e!856503)))

(declare-fun res!1056717 () Bool)

(assert (=> b!1539892 (=> (not res!1056717) (not e!856503))))

(assert (=> b!1539892 (= res!1056717 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49336 a!2792) j!64) a!2792 mask!2480) lt!665127))))

(assert (=> b!1539892 (= lt!665127 (Found!13485 j!64))))

(declare-fun b!1539893 () Bool)

(declare-fun res!1056713 () Bool)

(assert (=> b!1539893 (=> (not res!1056713) (not e!856505))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1539893 (= res!1056713 (validKeyInArray!0 (select (arr!49336 a!2792) i!951)))))

(declare-fun b!1539886 () Bool)

(declare-fun res!1056722 () Bool)

(assert (=> b!1539886 (=> (not res!1056722) (not e!856505))))

(assert (=> b!1539886 (= res!1056722 (validKeyInArray!0 (select (arr!49336 a!2792) j!64)))))

(declare-fun res!1056720 () Bool)

(assert (=> start!131386 (=> (not res!1056720) (not e!856505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131386 (= res!1056720 (validMask!0 mask!2480))))

(assert (=> start!131386 e!856505))

(assert (=> start!131386 true))

(declare-fun array_inv!38281 (array!102261) Bool)

(assert (=> start!131386 (array_inv!38281 a!2792)))

(declare-fun b!1539894 () Bool)

(assert (=> b!1539894 (= e!856503 e!856502)))

(declare-fun res!1056714 () Bool)

(assert (=> b!1539894 (=> (not res!1056714) (not e!856502))))

(assert (=> b!1539894 (= res!1056714 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!665128 #b00000000000000000000000000000000) (bvslt lt!665128 (size!49887 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1539894 (= lt!665128 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1539895 () Bool)

(assert (=> b!1539895 (= e!856502 (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!510)) (bvsub #b01111111111111111111111111111110 x!510)))))

(assert (= (and start!131386 res!1056720) b!1539887))

(assert (= (and b!1539887 res!1056721) b!1539893))

(assert (= (and b!1539893 res!1056713) b!1539886))

(assert (= (and b!1539886 res!1056722) b!1539885))

(assert (= (and b!1539885 res!1056723) b!1539889))

(assert (= (and b!1539889 res!1056719) b!1539890))

(assert (= (and b!1539890 res!1056718) b!1539892))

(assert (= (and b!1539892 res!1056717) b!1539888))

(assert (= (and b!1539888 res!1056716) b!1539894))

(assert (= (and b!1539894 res!1056714) b!1539891))

(assert (= (and b!1539891 res!1056715) b!1539895))

(declare-fun m!1422057 () Bool)

(assert (=> b!1539893 m!1422057))

(assert (=> b!1539893 m!1422057))

(declare-fun m!1422059 () Bool)

(assert (=> b!1539893 m!1422059))

(declare-fun m!1422061 () Bool)

(assert (=> b!1539891 m!1422061))

(assert (=> b!1539891 m!1422061))

(declare-fun m!1422063 () Bool)

(assert (=> b!1539891 m!1422063))

(declare-fun m!1422065 () Bool)

(assert (=> b!1539889 m!1422065))

(declare-fun m!1422067 () Bool)

(assert (=> b!1539888 m!1422067))

(assert (=> b!1539888 m!1422061))

(assert (=> b!1539886 m!1422061))

(assert (=> b!1539886 m!1422061))

(declare-fun m!1422069 () Bool)

(assert (=> b!1539886 m!1422069))

(declare-fun m!1422071 () Bool)

(assert (=> b!1539885 m!1422071))

(assert (=> b!1539892 m!1422061))

(assert (=> b!1539892 m!1422061))

(declare-fun m!1422073 () Bool)

(assert (=> b!1539892 m!1422073))

(declare-fun m!1422075 () Bool)

(assert (=> start!131386 m!1422075))

(declare-fun m!1422077 () Bool)

(assert (=> start!131386 m!1422077))

(declare-fun m!1422079 () Bool)

(assert (=> b!1539894 m!1422079))

(declare-fun m!1422081 () Bool)

(assert (=> b!1539890 m!1422081))

(push 1)

(assert (not b!1539891))

(assert (not b!1539894))

(assert (not b!1539893))

(assert (not b!1539889))

(assert (not b!1539886))

(assert (not start!131386))

(assert (not b!1539885))

(assert (not b!1539892))

(check-sat)

(pop 1)

(push 1)

(check-sat)

