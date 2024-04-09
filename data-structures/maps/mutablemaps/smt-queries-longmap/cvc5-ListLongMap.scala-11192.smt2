; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130816 () Bool)

(assert start!130816)

(declare-fun b!1533694 () Bool)

(declare-fun res!1050919 () Bool)

(declare-fun e!854284 () Bool)

(assert (=> b!1533694 (=> (not res!1050919) (not e!854284))))

(declare-datatypes ((array!101841 0))(
  ( (array!101842 (arr!49132 (Array (_ BitVec 32) (_ BitVec 64))) (size!49683 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101841)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533694 (= res!1050919 (and (= (size!49683 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49683 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49683 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533695 () Bool)

(assert (=> b!1533695 (= e!854284 false)))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13287 0))(
  ( (MissingZero!13287 (index!55542 (_ BitVec 32))) (Found!13287 (index!55543 (_ BitVec 32))) (Intermediate!13287 (undefined!14099 Bool) (index!55544 (_ BitVec 32)) (x!137316 (_ BitVec 32))) (Undefined!13287) (MissingVacant!13287 (index!55545 (_ BitVec 32))) )
))
(declare-fun lt!663736 () SeekEntryResult!13287)

(declare-fun index!463 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101841 (_ BitVec 32)) SeekEntryResult!13287)

(assert (=> b!1533695 (= lt!663736 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49132 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1533696 () Bool)

(declare-fun res!1050922 () Bool)

(assert (=> b!1533696 (=> (not res!1050922) (not e!854284))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101841 (_ BitVec 32)) Bool)

(assert (=> b!1533696 (= res!1050922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533697 () Bool)

(declare-fun res!1050918 () Bool)

(assert (=> b!1533697 (=> (not res!1050918) (not e!854284))))

(declare-datatypes ((List!35786 0))(
  ( (Nil!35783) (Cons!35782 (h!37228 (_ BitVec 64)) (t!50487 List!35786)) )
))
(declare-fun arrayNoDuplicates!0 (array!101841 (_ BitVec 32) List!35786) Bool)

(assert (=> b!1533697 (= res!1050918 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35783))))

(declare-fun b!1533698 () Bool)

(declare-fun res!1050923 () Bool)

(assert (=> b!1533698 (=> (not res!1050923) (not e!854284))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533698 (= res!1050923 (validKeyInArray!0 (select (arr!49132 a!2792) i!951)))))

(declare-fun b!1533700 () Bool)

(declare-fun res!1050921 () Bool)

(assert (=> b!1533700 (=> (not res!1050921) (not e!854284))))

(assert (=> b!1533700 (= res!1050921 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49683 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49683 a!2792)) (= (select (arr!49132 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533699 () Bool)

(declare-fun res!1050920 () Bool)

(assert (=> b!1533699 (=> (not res!1050920) (not e!854284))))

(assert (=> b!1533699 (= res!1050920 (validKeyInArray!0 (select (arr!49132 a!2792) j!64)))))

(declare-fun res!1050924 () Bool)

(assert (=> start!130816 (=> (not res!1050924) (not e!854284))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130816 (= res!1050924 (validMask!0 mask!2480))))

(assert (=> start!130816 e!854284))

(assert (=> start!130816 true))

(declare-fun array_inv!38077 (array!101841) Bool)

(assert (=> start!130816 (array_inv!38077 a!2792)))

(assert (= (and start!130816 res!1050924) b!1533694))

(assert (= (and b!1533694 res!1050919) b!1533698))

(assert (= (and b!1533698 res!1050923) b!1533699))

(assert (= (and b!1533699 res!1050920) b!1533696))

(assert (= (and b!1533696 res!1050922) b!1533697))

(assert (= (and b!1533697 res!1050918) b!1533700))

(assert (= (and b!1533700 res!1050921) b!1533695))

(declare-fun m!1416435 () Bool)

(assert (=> start!130816 m!1416435))

(declare-fun m!1416437 () Bool)

(assert (=> start!130816 m!1416437))

(declare-fun m!1416439 () Bool)

(assert (=> b!1533698 m!1416439))

(assert (=> b!1533698 m!1416439))

(declare-fun m!1416441 () Bool)

(assert (=> b!1533698 m!1416441))

(declare-fun m!1416443 () Bool)

(assert (=> b!1533695 m!1416443))

(assert (=> b!1533695 m!1416443))

(declare-fun m!1416445 () Bool)

(assert (=> b!1533695 m!1416445))

(declare-fun m!1416447 () Bool)

(assert (=> b!1533697 m!1416447))

(declare-fun m!1416449 () Bool)

(assert (=> b!1533696 m!1416449))

(assert (=> b!1533699 m!1416443))

(assert (=> b!1533699 m!1416443))

(declare-fun m!1416451 () Bool)

(assert (=> b!1533699 m!1416451))

(declare-fun m!1416453 () Bool)

(assert (=> b!1533700 m!1416453))

(push 1)

(assert (not b!1533695))

(assert (not b!1533698))

(assert (not start!130816))

(assert (not b!1533696))

(assert (not b!1533699))

(assert (not b!1533697))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

