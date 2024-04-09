; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119084 () Bool)

(assert start!119084)

(declare-fun b!1389158 () Bool)

(declare-fun res!929463 () Bool)

(declare-fun e!786922 () Bool)

(assert (=> b!1389158 (=> (not res!929463) (not e!786922))))

(declare-datatypes ((array!94972 0))(
  ( (array!94973 (arr!45849 (Array (_ BitVec 32) (_ BitVec 64))) (size!46400 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94972)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94972 (_ BitVec 32)) Bool)

(assert (=> b!1389158 (= res!929463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389159 () Bool)

(assert (=> b!1389159 (= e!786922 false)))

(declare-fun lt!610441 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389159 (= lt!610441 (toIndex!0 (select (arr!45849 a!2901) j!112) mask!2840))))

(declare-fun b!1389160 () Bool)

(declare-fun res!929464 () Bool)

(assert (=> b!1389160 (=> (not res!929464) (not e!786922))))

(declare-datatypes ((List!32548 0))(
  ( (Nil!32545) (Cons!32544 (h!33759 (_ BitVec 64)) (t!47249 List!32548)) )
))
(declare-fun arrayNoDuplicates!0 (array!94972 (_ BitVec 32) List!32548) Bool)

(assert (=> b!1389160 (= res!929464 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32545))))

(declare-fun b!1389161 () Bool)

(declare-fun res!929466 () Bool)

(assert (=> b!1389161 (=> (not res!929466) (not e!786922))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389161 (= res!929466 (and (= (size!46400 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46400 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46400 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!929461 () Bool)

(assert (=> start!119084 (=> (not res!929461) (not e!786922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119084 (= res!929461 (validMask!0 mask!2840))))

(assert (=> start!119084 e!786922))

(assert (=> start!119084 true))

(declare-fun array_inv!34794 (array!94972) Bool)

(assert (=> start!119084 (array_inv!34794 a!2901)))

(declare-fun b!1389162 () Bool)

(declare-fun res!929462 () Bool)

(assert (=> b!1389162 (=> (not res!929462) (not e!786922))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389162 (= res!929462 (validKeyInArray!0 (select (arr!45849 a!2901) j!112)))))

(declare-fun b!1389163 () Bool)

(declare-fun res!929465 () Bool)

(assert (=> b!1389163 (=> (not res!929465) (not e!786922))))

(assert (=> b!1389163 (= res!929465 (validKeyInArray!0 (select (arr!45849 a!2901) i!1037)))))

(assert (= (and start!119084 res!929461) b!1389161))

(assert (= (and b!1389161 res!929466) b!1389163))

(assert (= (and b!1389163 res!929465) b!1389162))

(assert (= (and b!1389162 res!929462) b!1389158))

(assert (= (and b!1389158 res!929463) b!1389160))

(assert (= (and b!1389160 res!929464) b!1389159))

(declare-fun m!1274891 () Bool)

(assert (=> b!1389159 m!1274891))

(assert (=> b!1389159 m!1274891))

(declare-fun m!1274893 () Bool)

(assert (=> b!1389159 m!1274893))

(assert (=> b!1389162 m!1274891))

(assert (=> b!1389162 m!1274891))

(declare-fun m!1274895 () Bool)

(assert (=> b!1389162 m!1274895))

(declare-fun m!1274897 () Bool)

(assert (=> start!119084 m!1274897))

(declare-fun m!1274899 () Bool)

(assert (=> start!119084 m!1274899))

(declare-fun m!1274901 () Bool)

(assert (=> b!1389163 m!1274901))

(assert (=> b!1389163 m!1274901))

(declare-fun m!1274903 () Bool)

(assert (=> b!1389163 m!1274903))

(declare-fun m!1274905 () Bool)

(assert (=> b!1389158 m!1274905))

(declare-fun m!1274907 () Bool)

(assert (=> b!1389160 m!1274907))

(push 1)

(assert (not b!1389163))

(assert (not b!1389158))

(assert (not start!119084))

(assert (not b!1389159))

(assert (not b!1389162))

(assert (not b!1389160))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

