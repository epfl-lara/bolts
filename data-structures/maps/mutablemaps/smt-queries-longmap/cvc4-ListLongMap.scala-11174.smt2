; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130712 () Bool)

(assert start!130712)

(declare-fun b!1532640 () Bool)

(declare-fun e!853973 () Bool)

(assert (=> b!1532640 (= e!853973 false)))

(declare-fun lt!663661 () Bool)

(declare-datatypes ((array!101737 0))(
  ( (array!101738 (arr!49080 (Array (_ BitVec 32) (_ BitVec 64))) (size!49631 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101737)

(declare-datatypes ((List!35734 0))(
  ( (Nil!35731) (Cons!35730 (h!37176 (_ BitVec 64)) (t!50435 List!35734)) )
))
(declare-fun arrayNoDuplicates!0 (array!101737 (_ BitVec 32) List!35734) Bool)

(assert (=> b!1532640 (= lt!663661 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35731))))

(declare-fun b!1532641 () Bool)

(declare-fun res!1049865 () Bool)

(assert (=> b!1532641 (=> (not res!1049865) (not e!853973))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532641 (= res!1049865 (validKeyInArray!0 (select (arr!49080 a!2792) i!951)))))

(declare-fun res!1049866 () Bool)

(assert (=> start!130712 (=> (not res!1049866) (not e!853973))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130712 (= res!1049866 (validMask!0 mask!2480))))

(assert (=> start!130712 e!853973))

(assert (=> start!130712 true))

(declare-fun array_inv!38025 (array!101737) Bool)

(assert (=> start!130712 (array_inv!38025 a!2792)))

(declare-fun b!1532642 () Bool)

(declare-fun res!1049867 () Bool)

(assert (=> b!1532642 (=> (not res!1049867) (not e!853973))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1532642 (= res!1049867 (validKeyInArray!0 (select (arr!49080 a!2792) j!64)))))

(declare-fun b!1532643 () Bool)

(declare-fun res!1049868 () Bool)

(assert (=> b!1532643 (=> (not res!1049868) (not e!853973))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101737 (_ BitVec 32)) Bool)

(assert (=> b!1532643 (= res!1049868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532644 () Bool)

(declare-fun res!1049864 () Bool)

(assert (=> b!1532644 (=> (not res!1049864) (not e!853973))))

(assert (=> b!1532644 (= res!1049864 (and (= (size!49631 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49631 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49631 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!130712 res!1049866) b!1532644))

(assert (= (and b!1532644 res!1049864) b!1532641))

(assert (= (and b!1532641 res!1049865) b!1532642))

(assert (= (and b!1532642 res!1049867) b!1532643))

(assert (= (and b!1532643 res!1049868) b!1532640))

(declare-fun m!1415393 () Bool)

(assert (=> b!1532641 m!1415393))

(assert (=> b!1532641 m!1415393))

(declare-fun m!1415395 () Bool)

(assert (=> b!1532641 m!1415395))

(declare-fun m!1415397 () Bool)

(assert (=> start!130712 m!1415397))

(declare-fun m!1415399 () Bool)

(assert (=> start!130712 m!1415399))

(declare-fun m!1415401 () Bool)

(assert (=> b!1532640 m!1415401))

(declare-fun m!1415403 () Bool)

(assert (=> b!1532643 m!1415403))

(declare-fun m!1415405 () Bool)

(assert (=> b!1532642 m!1415405))

(assert (=> b!1532642 m!1415405))

(declare-fun m!1415407 () Bool)

(assert (=> b!1532642 m!1415407))

(push 1)

(assert (not b!1532643))

(assert (not b!1532642))

(assert (not start!130712))

(assert (not b!1532640))

(assert (not b!1532641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

