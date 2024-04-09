; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130594 () Bool)

(assert start!130594)

(declare-fun b!1532226 () Bool)

(declare-fun res!1049504 () Bool)

(declare-fun e!853738 () Bool)

(assert (=> b!1532226 (=> (not res!1049504) (not e!853738))))

(declare-datatypes ((array!101700 0))(
  ( (array!101701 (arr!49066 (Array (_ BitVec 32) (_ BitVec 64))) (size!49617 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101700)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532226 (= res!1049504 (validKeyInArray!0 (select (arr!49066 a!2792) i!951)))))

(declare-fun b!1532227 () Bool)

(declare-fun res!1049508 () Bool)

(assert (=> b!1532227 (=> (not res!1049508) (not e!853738))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101700 (_ BitVec 32)) Bool)

(assert (=> b!1532227 (= res!1049508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532228 () Bool)

(declare-fun res!1049507 () Bool)

(assert (=> b!1532228 (=> (not res!1049507) (not e!853738))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1532228 (= res!1049507 (validKeyInArray!0 (select (arr!49066 a!2792) j!64)))))

(declare-fun b!1532229 () Bool)

(declare-fun res!1049506 () Bool)

(assert (=> b!1532229 (=> (not res!1049506) (not e!853738))))

(assert (=> b!1532229 (= res!1049506 (and (= (size!49617 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49617 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49617 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1049505 () Bool)

(assert (=> start!130594 (=> (not res!1049505) (not e!853738))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130594 (= res!1049505 (validMask!0 mask!2480))))

(assert (=> start!130594 e!853738))

(assert (=> start!130594 true))

(declare-fun array_inv!38011 (array!101700) Bool)

(assert (=> start!130594 (array_inv!38011 a!2792)))

(declare-fun b!1532230 () Bool)

(assert (=> b!1532230 (= e!853738 (bvsgt #b00000000000000000000000000000000 (size!49617 a!2792)))))

(assert (= (and start!130594 res!1049505) b!1532229))

(assert (= (and b!1532229 res!1049506) b!1532226))

(assert (= (and b!1532226 res!1049504) b!1532228))

(assert (= (and b!1532228 res!1049507) b!1532227))

(assert (= (and b!1532227 res!1049508) b!1532230))

(declare-fun m!1415007 () Bool)

(assert (=> b!1532226 m!1415007))

(assert (=> b!1532226 m!1415007))

(declare-fun m!1415009 () Bool)

(assert (=> b!1532226 m!1415009))

(declare-fun m!1415011 () Bool)

(assert (=> b!1532227 m!1415011))

(declare-fun m!1415013 () Bool)

(assert (=> b!1532228 m!1415013))

(assert (=> b!1532228 m!1415013))

(declare-fun m!1415015 () Bool)

(assert (=> b!1532228 m!1415015))

(declare-fun m!1415017 () Bool)

(assert (=> start!130594 m!1415017))

(declare-fun m!1415019 () Bool)

(assert (=> start!130594 m!1415019))

(push 1)

(assert (not b!1532226))

(assert (not start!130594))

(assert (not b!1532227))

(assert (not b!1532228))

(check-sat)

