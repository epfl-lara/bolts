; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104164 () Bool)

(assert start!104164)

(declare-fun res!830601 () Bool)

(declare-fun e!705826 () Bool)

(assert (=> start!104164 (=> (not res!830601) (not e!705826))))

(declare-datatypes ((array!80094 0))(
  ( (array!80095 (arr!38630 (Array (_ BitVec 32) (_ BitVec 64))) (size!39167 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80094)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104164 (= res!830601 (and (bvslt (size!39167 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39167 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39167 a!3892))))))

(assert (=> start!104164 e!705826))

(declare-fun array_inv!29406 (array!80094) Bool)

(assert (=> start!104164 (array_inv!29406 a!3892)))

(assert (=> start!104164 true))

(declare-fun b!1244957 () Bool)

(declare-fun res!830602 () Bool)

(assert (=> b!1244957 (=> (not res!830602) (not e!705826))))

(declare-datatypes ((List!27611 0))(
  ( (Nil!27608) (Cons!27607 (h!28816 (_ BitVec 64)) (t!41087 List!27611)) )
))
(declare-fun arrayNoDuplicates!0 (array!80094 (_ BitVec 32) List!27611) Bool)

(assert (=> b!1244957 (= res!830602 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27608))))

(declare-fun b!1244958 () Bool)

(assert (=> b!1244958 (= e!705826 (and (= from!3270 newFrom!287) (bvslt newFrom!287 #b00000000000000000000000000000000)))))

(assert (= (and start!104164 res!830601) b!1244957))

(assert (= (and b!1244957 res!830602) b!1244958))

(declare-fun m!1147145 () Bool)

(assert (=> start!104164 m!1147145))

(declare-fun m!1147147 () Bool)

(assert (=> b!1244957 m!1147147))

(push 1)

(assert (not b!1244957))

(assert (not start!104164))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

