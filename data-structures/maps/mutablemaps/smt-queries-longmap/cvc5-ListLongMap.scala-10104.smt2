; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119158 () Bool)

(assert start!119158)

(declare-fun b!1389581 () Bool)

(declare-fun e!787100 () Bool)

(assert (=> b!1389581 (= e!787100 false)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95013 0))(
  ( (array!95014 (arr!45868 (Array (_ BitVec 32) (_ BitVec 64))) (size!46419 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95013)

(declare-datatypes ((SeekEntryResult!10207 0))(
  ( (MissingZero!10207 (index!43198 (_ BitVec 32))) (Found!10207 (index!43199 (_ BitVec 32))) (Intermediate!10207 (undefined!11019 Bool) (index!43200 (_ BitVec 32)) (x!124896 (_ BitVec 32))) (Undefined!10207) (MissingVacant!10207 (index!43201 (_ BitVec 32))) )
))
(declare-fun lt!610543 () SeekEntryResult!10207)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95013 (_ BitVec 32)) SeekEntryResult!10207)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389581 (= lt!610543 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45868 a!2901) j!112) mask!2840) (select (arr!45868 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389583 () Bool)

(declare-fun res!929852 () Bool)

(assert (=> b!1389583 (=> (not res!929852) (not e!787100))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389583 (= res!929852 (and (= (size!46419 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46419 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46419 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389584 () Bool)

(declare-fun res!929854 () Bool)

(assert (=> b!1389584 (=> (not res!929854) (not e!787100))))

(declare-datatypes ((List!32567 0))(
  ( (Nil!32564) (Cons!32563 (h!33781 (_ BitVec 64)) (t!47268 List!32567)) )
))
(declare-fun arrayNoDuplicates!0 (array!95013 (_ BitVec 32) List!32567) Bool)

(assert (=> b!1389584 (= res!929854 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32564))))

(declare-fun res!929851 () Bool)

(assert (=> start!119158 (=> (not res!929851) (not e!787100))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119158 (= res!929851 (validMask!0 mask!2840))))

(assert (=> start!119158 e!787100))

(assert (=> start!119158 true))

(declare-fun array_inv!34813 (array!95013) Bool)

(assert (=> start!119158 (array_inv!34813 a!2901)))

(declare-fun b!1389582 () Bool)

(declare-fun res!929855 () Bool)

(assert (=> b!1389582 (=> (not res!929855) (not e!787100))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389582 (= res!929855 (validKeyInArray!0 (select (arr!45868 a!2901) i!1037)))))

(declare-fun b!1389585 () Bool)

(declare-fun res!929856 () Bool)

(assert (=> b!1389585 (=> (not res!929856) (not e!787100))))

(assert (=> b!1389585 (= res!929856 (validKeyInArray!0 (select (arr!45868 a!2901) j!112)))))

(declare-fun b!1389586 () Bool)

(declare-fun res!929853 () Bool)

(assert (=> b!1389586 (=> (not res!929853) (not e!787100))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95013 (_ BitVec 32)) Bool)

(assert (=> b!1389586 (= res!929853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119158 res!929851) b!1389583))

(assert (= (and b!1389583 res!929852) b!1389582))

(assert (= (and b!1389582 res!929855) b!1389585))

(assert (= (and b!1389585 res!929856) b!1389586))

(assert (= (and b!1389586 res!929853) b!1389584))

(assert (= (and b!1389584 res!929854) b!1389581))

(declare-fun m!1275299 () Bool)

(assert (=> b!1389586 m!1275299))

(declare-fun m!1275301 () Bool)

(assert (=> start!119158 m!1275301))

(declare-fun m!1275303 () Bool)

(assert (=> start!119158 m!1275303))

(declare-fun m!1275305 () Bool)

(assert (=> b!1389584 m!1275305))

(declare-fun m!1275307 () Bool)

(assert (=> b!1389581 m!1275307))

(assert (=> b!1389581 m!1275307))

(declare-fun m!1275309 () Bool)

(assert (=> b!1389581 m!1275309))

(assert (=> b!1389581 m!1275309))

(assert (=> b!1389581 m!1275307))

(declare-fun m!1275311 () Bool)

(assert (=> b!1389581 m!1275311))

(declare-fun m!1275313 () Bool)

(assert (=> b!1389582 m!1275313))

(assert (=> b!1389582 m!1275313))

(declare-fun m!1275315 () Bool)

(assert (=> b!1389582 m!1275315))

(assert (=> b!1389585 m!1275307))

(assert (=> b!1389585 m!1275307))

(declare-fun m!1275317 () Bool)

(assert (=> b!1389585 m!1275317))

(push 1)

(assert (not start!119158))

(assert (not b!1389585))

(assert (not b!1389582))

(assert (not b!1389586))

(assert (not b!1389581))

(assert (not b!1389584))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

