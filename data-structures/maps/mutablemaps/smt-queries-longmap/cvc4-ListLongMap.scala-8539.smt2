; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104230 () Bool)

(assert start!104230)

(declare-fun res!830814 () Bool)

(declare-fun e!706039 () Bool)

(assert (=> start!104230 (=> (not res!830814) (not e!706039))))

(declare-datatypes ((array!80124 0))(
  ( (array!80125 (arr!38642 (Array (_ BitVec 32) (_ BitVec 64))) (size!39179 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80124)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104230 (= res!830814 (and (bvslt (size!39179 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39179 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39179 a!3892))))))

(assert (=> start!104230 e!706039))

(declare-fun array_inv!29418 (array!80124) Bool)

(assert (=> start!104230 (array_inv!29418 a!3892)))

(assert (=> start!104230 true))

(declare-fun b!1245206 () Bool)

(declare-fun res!830815 () Bool)

(assert (=> b!1245206 (=> (not res!830815) (not e!706039))))

(declare-datatypes ((List!27623 0))(
  ( (Nil!27620) (Cons!27619 (h!28828 (_ BitVec 64)) (t!41099 List!27623)) )
))
(declare-fun arrayNoDuplicates!0 (array!80124 (_ BitVec 32) List!27623) Bool)

(assert (=> b!1245206 (= res!830815 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27620))))

(declare-fun b!1245207 () Bool)

(assert (=> b!1245207 (= e!706039 (and (not (= from!3270 newFrom!287)) (bvsge from!3270 (size!39179 a!3892))))))

(assert (= (and start!104230 res!830814) b!1245206))

(assert (= (and b!1245206 res!830815) b!1245207))

(declare-fun m!1147319 () Bool)

(assert (=> start!104230 m!1147319))

(declare-fun m!1147321 () Bool)

(assert (=> b!1245206 m!1147321))

(push 1)

(assert (not b!1245206))

(assert (not start!104230))

(check-sat)

(pop 1)

(push 1)

(check-sat)

