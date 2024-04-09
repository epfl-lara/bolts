; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104260 () Bool)

(assert start!104260)

(declare-fun b!1245279 () Bool)

(declare-fun e!706129 () Bool)

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1245279 (= e!706129 (bvslt (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(declare-fun res!830887 () Bool)

(assert (=> start!104260 (=> (not res!830887) (not e!706129))))

(declare-datatypes ((array!80154 0))(
  ( (array!80155 (arr!38657 (Array (_ BitVec 32) (_ BitVec 64))) (size!39194 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80154)

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!104260 (= res!830887 (and (bvslt (size!39194 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39194 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39194 a!3892))))))

(assert (=> start!104260 e!706129))

(declare-fun array_inv!29433 (array!80154) Bool)

(assert (=> start!104260 (array_inv!29433 a!3892)))

(assert (=> start!104260 true))

(declare-fun b!1245278 () Bool)

(declare-fun res!830886 () Bool)

(assert (=> b!1245278 (=> (not res!830886) (not e!706129))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1245278 (= res!830886 (validKeyInArray!0 (select (arr!38657 a!3892) from!3270)))))

(declare-fun b!1245276 () Bool)

(declare-fun res!830884 () Bool)

(assert (=> b!1245276 (=> (not res!830884) (not e!706129))))

(declare-datatypes ((List!27638 0))(
  ( (Nil!27635) (Cons!27634 (h!28843 (_ BitVec 64)) (t!41114 List!27638)) )
))
(declare-fun arrayNoDuplicates!0 (array!80154 (_ BitVec 32) List!27638) Bool)

(assert (=> b!1245276 (= res!830884 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27635))))

(declare-fun b!1245277 () Bool)

(declare-fun res!830885 () Bool)

(assert (=> b!1245277 (=> (not res!830885) (not e!706129))))

(assert (=> b!1245277 (= res!830885 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39194 a!3892)) (not (= newFrom!287 (size!39194 a!3892)))))))

(assert (= (and start!104260 res!830887) b!1245276))

(assert (= (and b!1245276 res!830884) b!1245277))

(assert (= (and b!1245277 res!830885) b!1245278))

(assert (= (and b!1245278 res!830886) b!1245279))

(declare-fun m!1147387 () Bool)

(assert (=> start!104260 m!1147387))

(declare-fun m!1147389 () Bool)

(assert (=> b!1245278 m!1147389))

(assert (=> b!1245278 m!1147389))

(declare-fun m!1147391 () Bool)

(assert (=> b!1245278 m!1147391))

(declare-fun m!1147393 () Bool)

(assert (=> b!1245276 m!1147393))

(push 1)

(assert (not b!1245278))

(assert (not b!1245276))

(assert (not start!104260))

(check-sat)

(pop 1)

(push 1)

(check-sat)

