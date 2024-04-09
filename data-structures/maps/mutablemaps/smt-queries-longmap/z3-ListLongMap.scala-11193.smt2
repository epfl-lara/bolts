; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130824 () Bool)

(assert start!130824)

(declare-fun b!1533783 () Bool)

(declare-fun res!1051010 () Bool)

(declare-fun e!854309 () Bool)

(assert (=> b!1533783 (=> (not res!1051010) (not e!854309))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101849 0))(
  ( (array!101850 (arr!49136 (Array (_ BitVec 32) (_ BitVec 64))) (size!49687 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101849)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13291 0))(
  ( (MissingZero!13291 (index!55558 (_ BitVec 32))) (Found!13291 (index!55559 (_ BitVec 32))) (Intermediate!13291 (undefined!14103 Bool) (index!55560 (_ BitVec 32)) (x!137328 (_ BitVec 32))) (Undefined!13291) (MissingVacant!13291 (index!55561 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101849 (_ BitVec 32)) SeekEntryResult!13291)

(assert (=> b!1533783 (= res!1051010 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49136 a!2792) j!64) a!2792 mask!2480) (Found!13291 j!64)))))

(declare-fun b!1533784 () Bool)

(declare-fun res!1051011 () Bool)

(assert (=> b!1533784 (=> (not res!1051011) (not e!854309))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533784 (= res!1051011 (validKeyInArray!0 (select (arr!49136 a!2792) i!951)))))

(declare-fun b!1533785 () Bool)

(declare-fun res!1051007 () Bool)

(assert (=> b!1533785 (=> (not res!1051007) (not e!854309))))

(assert (=> b!1533785 (= res!1051007 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49687 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49687 a!2792)) (= (select (arr!49136 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533786 () Bool)

(declare-fun res!1051008 () Bool)

(assert (=> b!1533786 (=> (not res!1051008) (not e!854309))))

(declare-datatypes ((List!35790 0))(
  ( (Nil!35787) (Cons!35786 (h!37232 (_ BitVec 64)) (t!50491 List!35790)) )
))
(declare-fun arrayNoDuplicates!0 (array!101849 (_ BitVec 32) List!35790) Bool)

(assert (=> b!1533786 (= res!1051008 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35787))))

(declare-fun res!1051013 () Bool)

(assert (=> start!130824 (=> (not res!1051013) (not e!854309))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130824 (= res!1051013 (validMask!0 mask!2480))))

(assert (=> start!130824 e!854309))

(assert (=> start!130824 true))

(declare-fun array_inv!38081 (array!101849) Bool)

(assert (=> start!130824 (array_inv!38081 a!2792)))

(declare-fun b!1533787 () Bool)

(declare-fun res!1051014 () Bool)

(assert (=> b!1533787 (=> (not res!1051014) (not e!854309))))

(assert (=> b!1533787 (= res!1051014 (validKeyInArray!0 (select (arr!49136 a!2792) j!64)))))

(declare-fun b!1533788 () Bool)

(assert (=> b!1533788 (= e!854309 (and (= (select (arr!49136 a!2792) index!463) (select (arr!49136 a!2792) j!64)) (bvsge mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480))))))

(declare-fun b!1533789 () Bool)

(declare-fun res!1051009 () Bool)

(assert (=> b!1533789 (=> (not res!1051009) (not e!854309))))

(assert (=> b!1533789 (= res!1051009 (and (= (size!49687 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49687 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49687 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533790 () Bool)

(declare-fun res!1051012 () Bool)

(assert (=> b!1533790 (=> (not res!1051012) (not e!854309))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101849 (_ BitVec 32)) Bool)

(assert (=> b!1533790 (= res!1051012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!130824 res!1051013) b!1533789))

(assert (= (and b!1533789 res!1051009) b!1533784))

(assert (= (and b!1533784 res!1051011) b!1533787))

(assert (= (and b!1533787 res!1051014) b!1533790))

(assert (= (and b!1533790 res!1051012) b!1533786))

(assert (= (and b!1533786 res!1051008) b!1533785))

(assert (= (and b!1533785 res!1051007) b!1533783))

(assert (= (and b!1533783 res!1051010) b!1533788))

(declare-fun m!1416517 () Bool)

(assert (=> start!130824 m!1416517))

(declare-fun m!1416519 () Bool)

(assert (=> start!130824 m!1416519))

(declare-fun m!1416521 () Bool)

(assert (=> b!1533785 m!1416521))

(declare-fun m!1416523 () Bool)

(assert (=> b!1533786 m!1416523))

(declare-fun m!1416525 () Bool)

(assert (=> b!1533783 m!1416525))

(assert (=> b!1533783 m!1416525))

(declare-fun m!1416527 () Bool)

(assert (=> b!1533783 m!1416527))

(declare-fun m!1416529 () Bool)

(assert (=> b!1533788 m!1416529))

(assert (=> b!1533788 m!1416525))

(declare-fun m!1416531 () Bool)

(assert (=> b!1533790 m!1416531))

(assert (=> b!1533787 m!1416525))

(assert (=> b!1533787 m!1416525))

(declare-fun m!1416533 () Bool)

(assert (=> b!1533787 m!1416533))

(declare-fun m!1416535 () Bool)

(assert (=> b!1533784 m!1416535))

(assert (=> b!1533784 m!1416535))

(declare-fun m!1416537 () Bool)

(assert (=> b!1533784 m!1416537))

(check-sat (not start!130824) (not b!1533783) (not b!1533786) (not b!1533784) (not b!1533787) (not b!1533790))
(check-sat)
