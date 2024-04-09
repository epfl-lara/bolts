; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130744 () Bool)

(assert start!130744)

(declare-fun b!1532907 () Bool)

(declare-fun res!1050131 () Bool)

(declare-fun e!854068 () Bool)

(assert (=> b!1532907 (=> (not res!1050131) (not e!854068))))

(declare-datatypes ((array!101769 0))(
  ( (array!101770 (arr!49096 (Array (_ BitVec 32) (_ BitVec 64))) (size!49647 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101769)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532907 (= res!1050131 (and (= (size!49647 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49647 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49647 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1050134 () Bool)

(assert (=> start!130744 (=> (not res!1050134) (not e!854068))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130744 (= res!1050134 (validMask!0 mask!2480))))

(assert (=> start!130744 e!854068))

(assert (=> start!130744 true))

(declare-fun array_inv!38041 (array!101769) Bool)

(assert (=> start!130744 (array_inv!38041 a!2792)))

(declare-fun b!1532908 () Bool)

(declare-fun res!1050132 () Bool)

(assert (=> b!1532908 (=> (not res!1050132) (not e!854068))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532908 (= res!1050132 (validKeyInArray!0 (select (arr!49096 a!2792) i!951)))))

(declare-fun b!1532909 () Bool)

(assert (=> b!1532909 (= e!854068 false)))

(declare-fun lt!663682 () Bool)

(declare-datatypes ((List!35750 0))(
  ( (Nil!35747) (Cons!35746 (h!37192 (_ BitVec 64)) (t!50451 List!35750)) )
))
(declare-fun arrayNoDuplicates!0 (array!101769 (_ BitVec 32) List!35750) Bool)

(assert (=> b!1532909 (= lt!663682 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35747))))

(declare-fun b!1532910 () Bool)

(declare-fun res!1050133 () Bool)

(assert (=> b!1532910 (=> (not res!1050133) (not e!854068))))

(assert (=> b!1532910 (= res!1050133 (validKeyInArray!0 (select (arr!49096 a!2792) j!64)))))

(declare-fun b!1532911 () Bool)

(declare-fun res!1050135 () Bool)

(assert (=> b!1532911 (=> (not res!1050135) (not e!854068))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101769 (_ BitVec 32)) Bool)

(assert (=> b!1532911 (= res!1050135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!130744 res!1050134) b!1532907))

(assert (= (and b!1532907 res!1050131) b!1532908))

(assert (= (and b!1532908 res!1050132) b!1532910))

(assert (= (and b!1532910 res!1050133) b!1532911))

(assert (= (and b!1532911 res!1050135) b!1532909))

(declare-fun m!1415667 () Bool)

(assert (=> b!1532910 m!1415667))

(assert (=> b!1532910 m!1415667))

(declare-fun m!1415669 () Bool)

(assert (=> b!1532910 m!1415669))

(declare-fun m!1415671 () Bool)

(assert (=> b!1532911 m!1415671))

(declare-fun m!1415673 () Bool)

(assert (=> start!130744 m!1415673))

(declare-fun m!1415675 () Bool)

(assert (=> start!130744 m!1415675))

(declare-fun m!1415677 () Bool)

(assert (=> b!1532908 m!1415677))

(assert (=> b!1532908 m!1415677))

(declare-fun m!1415679 () Bool)

(assert (=> b!1532908 m!1415679))

(declare-fun m!1415681 () Bool)

(assert (=> b!1532909 m!1415681))

(push 1)

(assert (not b!1532908))

(assert (not b!1532909))

(assert (not b!1532910))

(assert (not b!1532911))

(assert (not start!130744))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

