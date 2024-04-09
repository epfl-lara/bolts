; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130590 () Bool)

(assert start!130590)

(declare-fun b!1532202 () Bool)

(declare-fun res!1049481 () Bool)

(declare-fun e!853727 () Bool)

(assert (=> b!1532202 (=> (not res!1049481) (not e!853727))))

(declare-datatypes ((array!101696 0))(
  ( (array!101697 (arr!49064 (Array (_ BitVec 32) (_ BitVec 64))) (size!49615 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101696)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532202 (= res!1049481 (validKeyInArray!0 (select (arr!49064 a!2792) j!64)))))

(declare-fun b!1532200 () Bool)

(declare-fun res!1049478 () Bool)

(assert (=> b!1532200 (=> (not res!1049478) (not e!853727))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532200 (= res!1049478 (and (= (size!49615 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49615 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49615 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1049479 () Bool)

(assert (=> start!130590 (=> (not res!1049479) (not e!853727))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130590 (= res!1049479 (validMask!0 mask!2480))))

(assert (=> start!130590 e!853727))

(assert (=> start!130590 true))

(declare-fun array_inv!38009 (array!101696) Bool)

(assert (=> start!130590 (array_inv!38009 a!2792)))

(declare-fun b!1532201 () Bool)

(declare-fun res!1049480 () Bool)

(assert (=> b!1532201 (=> (not res!1049480) (not e!853727))))

(assert (=> b!1532201 (= res!1049480 (validKeyInArray!0 (select (arr!49064 a!2792) i!951)))))

(declare-fun b!1532203 () Bool)

(assert (=> b!1532203 (= e!853727 (bvsgt #b00000000000000000000000000000000 (size!49615 a!2792)))))

(assert (= (and start!130590 res!1049479) b!1532200))

(assert (= (and b!1532200 res!1049478) b!1532201))

(assert (= (and b!1532201 res!1049480) b!1532202))

(assert (= (and b!1532202 res!1049481) b!1532203))

(declare-fun m!1414983 () Bool)

(assert (=> b!1532202 m!1414983))

(assert (=> b!1532202 m!1414983))

(declare-fun m!1414985 () Bool)

(assert (=> b!1532202 m!1414985))

(declare-fun m!1414987 () Bool)

(assert (=> start!130590 m!1414987))

(declare-fun m!1414989 () Bool)

(assert (=> start!130590 m!1414989))

(declare-fun m!1414991 () Bool)

(assert (=> b!1532201 m!1414991))

(assert (=> b!1532201 m!1414991))

(declare-fun m!1414993 () Bool)

(assert (=> b!1532201 m!1414993))

(check-sat (not b!1532201) (not b!1532202) (not start!130590))
(check-sat)
