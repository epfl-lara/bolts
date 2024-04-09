; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130756 () Bool)

(assert start!130756)

(declare-fun b!1533001 () Bool)

(declare-fun res!1050228 () Bool)

(declare-fun e!854105 () Bool)

(assert (=> b!1533001 (=> (not res!1050228) (not e!854105))))

(declare-datatypes ((array!101781 0))(
  ( (array!101782 (arr!49102 (Array (_ BitVec 32) (_ BitVec 64))) (size!49653 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101781)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533001 (= res!1050228 (validKeyInArray!0 (select (arr!49102 a!2792) j!64)))))

(declare-fun b!1533002 () Bool)

(assert (=> b!1533002 (= e!854105 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13257 0))(
  ( (MissingZero!13257 (index!55422 (_ BitVec 32))) (Found!13257 (index!55423 (_ BitVec 32))) (Intermediate!13257 (undefined!14069 Bool) (index!55424 (_ BitVec 32)) (x!137206 (_ BitVec 32))) (Undefined!13257) (MissingVacant!13257 (index!55425 (_ BitVec 32))) )
))
(declare-fun lt!663700 () SeekEntryResult!13257)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101781 (_ BitVec 32)) SeekEntryResult!13257)

(assert (=> b!1533002 (= lt!663700 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49102 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1533003 () Bool)

(declare-fun res!1050230 () Bool)

(assert (=> b!1533003 (=> (not res!1050230) (not e!854105))))

(assert (=> b!1533003 (= res!1050230 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49653 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49653 a!2792)) (= (select (arr!49102 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533004 () Bool)

(declare-fun res!1050225 () Bool)

(assert (=> b!1533004 (=> (not res!1050225) (not e!854105))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101781 (_ BitVec 32)) Bool)

(assert (=> b!1533004 (= res!1050225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533005 () Bool)

(declare-fun res!1050227 () Bool)

(assert (=> b!1533005 (=> (not res!1050227) (not e!854105))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533005 (= res!1050227 (validKeyInArray!0 (select (arr!49102 a!2792) i!951)))))

(declare-fun b!1533006 () Bool)

(declare-fun res!1050231 () Bool)

(assert (=> b!1533006 (=> (not res!1050231) (not e!854105))))

(declare-datatypes ((List!35756 0))(
  ( (Nil!35753) (Cons!35752 (h!37198 (_ BitVec 64)) (t!50457 List!35756)) )
))
(declare-fun arrayNoDuplicates!0 (array!101781 (_ BitVec 32) List!35756) Bool)

(assert (=> b!1533006 (= res!1050231 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35753))))

(declare-fun b!1533007 () Bool)

(declare-fun res!1050226 () Bool)

(assert (=> b!1533007 (=> (not res!1050226) (not e!854105))))

(assert (=> b!1533007 (= res!1050226 (and (= (size!49653 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49653 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49653 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1050229 () Bool)

(assert (=> start!130756 (=> (not res!1050229) (not e!854105))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130756 (= res!1050229 (validMask!0 mask!2480))))

(assert (=> start!130756 e!854105))

(assert (=> start!130756 true))

(declare-fun array_inv!38047 (array!101781) Bool)

(assert (=> start!130756 (array_inv!38047 a!2792)))

(assert (= (and start!130756 res!1050229) b!1533007))

(assert (= (and b!1533007 res!1050226) b!1533005))

(assert (= (and b!1533005 res!1050227) b!1533001))

(assert (= (and b!1533001 res!1050228) b!1533004))

(assert (= (and b!1533004 res!1050225) b!1533006))

(assert (= (and b!1533006 res!1050231) b!1533003))

(assert (= (and b!1533003 res!1050230) b!1533002))

(declare-fun m!1415763 () Bool)

(assert (=> b!1533001 m!1415763))

(assert (=> b!1533001 m!1415763))

(declare-fun m!1415765 () Bool)

(assert (=> b!1533001 m!1415765))

(declare-fun m!1415767 () Bool)

(assert (=> start!130756 m!1415767))

(declare-fun m!1415769 () Bool)

(assert (=> start!130756 m!1415769))

(assert (=> b!1533002 m!1415763))

(assert (=> b!1533002 m!1415763))

(declare-fun m!1415771 () Bool)

(assert (=> b!1533002 m!1415771))

(declare-fun m!1415773 () Bool)

(assert (=> b!1533006 m!1415773))

(declare-fun m!1415775 () Bool)

(assert (=> b!1533003 m!1415775))

(declare-fun m!1415777 () Bool)

(assert (=> b!1533005 m!1415777))

(assert (=> b!1533005 m!1415777))

(declare-fun m!1415779 () Bool)

(assert (=> b!1533005 m!1415779))

(declare-fun m!1415781 () Bool)

(assert (=> b!1533004 m!1415781))

(push 1)

(assert (not b!1533002))

(assert (not b!1533001))

(assert (not start!130756))

(assert (not b!1533005))

(assert (not b!1533006))

(assert (not b!1533004))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

