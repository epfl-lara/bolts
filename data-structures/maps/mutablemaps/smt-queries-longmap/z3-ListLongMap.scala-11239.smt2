; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131100 () Bool)

(assert start!131100)

(declare-fun b!1537693 () Bool)

(declare-fun res!1054922 () Bool)

(declare-fun e!855721 () Bool)

(assert (=> b!1537693 (=> (not res!1054922) (not e!855721))))

(declare-datatypes ((array!102125 0))(
  ( (array!102126 (arr!49274 (Array (_ BitVec 32) (_ BitVec 64))) (size!49825 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102125)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537693 (= res!1054922 (validKeyInArray!0 (select (arr!49274 a!2792) j!64)))))

(declare-fun b!1537695 () Bool)

(declare-fun res!1054923 () Bool)

(assert (=> b!1537695 (=> (not res!1054923) (not e!855721))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537695 (= res!1054923 (and (= (size!49825 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49825 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49825 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537696 () Bool)

(assert (=> b!1537696 (= e!855721 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13423 0))(
  ( (MissingZero!13423 (index!56086 (_ BitVec 32))) (Found!13423 (index!56087 (_ BitVec 32))) (Intermediate!13423 (undefined!14235 Bool) (index!56088 (_ BitVec 32)) (x!137828 (_ BitVec 32))) (Undefined!13423) (MissingVacant!13423 (index!56089 (_ BitVec 32))) )
))
(declare-fun lt!664711 () SeekEntryResult!13423)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102125 (_ BitVec 32)) SeekEntryResult!13423)

(assert (=> b!1537696 (= lt!664711 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49274 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537697 () Bool)

(declare-fun res!1054919 () Bool)

(assert (=> b!1537697 (=> (not res!1054919) (not e!855721))))

(declare-datatypes ((List!35928 0))(
  ( (Nil!35925) (Cons!35924 (h!37370 (_ BitVec 64)) (t!50629 List!35928)) )
))
(declare-fun arrayNoDuplicates!0 (array!102125 (_ BitVec 32) List!35928) Bool)

(assert (=> b!1537697 (= res!1054919 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35925))))

(declare-fun b!1537698 () Bool)

(declare-fun res!1054921 () Bool)

(assert (=> b!1537698 (=> (not res!1054921) (not e!855721))))

(assert (=> b!1537698 (= res!1054921 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49825 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49825 a!2792)) (= (select (arr!49274 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537699 () Bool)

(declare-fun res!1054917 () Bool)

(assert (=> b!1537699 (=> (not res!1054917) (not e!855721))))

(assert (=> b!1537699 (= res!1054917 (validKeyInArray!0 (select (arr!49274 a!2792) i!951)))))

(declare-fun res!1054920 () Bool)

(assert (=> start!131100 (=> (not res!1054920) (not e!855721))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131100 (= res!1054920 (validMask!0 mask!2480))))

(assert (=> start!131100 e!855721))

(assert (=> start!131100 true))

(declare-fun array_inv!38219 (array!102125) Bool)

(assert (=> start!131100 (array_inv!38219 a!2792)))

(declare-fun b!1537694 () Bool)

(declare-fun res!1054918 () Bool)

(assert (=> b!1537694 (=> (not res!1054918) (not e!855721))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102125 (_ BitVec 32)) Bool)

(assert (=> b!1537694 (= res!1054918 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!131100 res!1054920) b!1537695))

(assert (= (and b!1537695 res!1054923) b!1537699))

(assert (= (and b!1537699 res!1054917) b!1537693))

(assert (= (and b!1537693 res!1054922) b!1537694))

(assert (= (and b!1537694 res!1054918) b!1537697))

(assert (= (and b!1537697 res!1054919) b!1537698))

(assert (= (and b!1537698 res!1054921) b!1537696))

(declare-fun m!1420253 () Bool)

(assert (=> b!1537694 m!1420253))

(declare-fun m!1420255 () Bool)

(assert (=> b!1537696 m!1420255))

(assert (=> b!1537696 m!1420255))

(declare-fun m!1420257 () Bool)

(assert (=> b!1537696 m!1420257))

(declare-fun m!1420259 () Bool)

(assert (=> start!131100 m!1420259))

(declare-fun m!1420261 () Bool)

(assert (=> start!131100 m!1420261))

(declare-fun m!1420263 () Bool)

(assert (=> b!1537699 m!1420263))

(assert (=> b!1537699 m!1420263))

(declare-fun m!1420265 () Bool)

(assert (=> b!1537699 m!1420265))

(declare-fun m!1420267 () Bool)

(assert (=> b!1537698 m!1420267))

(assert (=> b!1537693 m!1420255))

(assert (=> b!1537693 m!1420255))

(declare-fun m!1420269 () Bool)

(assert (=> b!1537693 m!1420269))

(declare-fun m!1420271 () Bool)

(assert (=> b!1537697 m!1420271))

(check-sat (not b!1537693) (not b!1537699) (not b!1537696) (not b!1537694) (not start!131100) (not b!1537697))
