; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104258 () Bool)

(assert start!104258)

(declare-fun b!1245267 () Bool)

(declare-fun e!706124 () Bool)

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1245267 (= e!706124 (bvslt (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(declare-fun res!830875 () Bool)

(assert (=> start!104258 (=> (not res!830875) (not e!706124))))

(declare-datatypes ((array!80152 0))(
  ( (array!80153 (arr!38656 (Array (_ BitVec 32) (_ BitVec 64))) (size!39193 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80152)

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!104258 (= res!830875 (and (bvslt (size!39193 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39193 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39193 a!3892))))))

(assert (=> start!104258 e!706124))

(declare-fun array_inv!29432 (array!80152) Bool)

(assert (=> start!104258 (array_inv!29432 a!3892)))

(assert (=> start!104258 true))

(declare-fun b!1245265 () Bool)

(declare-fun res!830872 () Bool)

(assert (=> b!1245265 (=> (not res!830872) (not e!706124))))

(assert (=> b!1245265 (= res!830872 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39193 a!3892)) (not (= newFrom!287 (size!39193 a!3892)))))))

(declare-fun b!1245266 () Bool)

(declare-fun res!830874 () Bool)

(assert (=> b!1245266 (=> (not res!830874) (not e!706124))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1245266 (= res!830874 (validKeyInArray!0 (select (arr!38656 a!3892) from!3270)))))

(declare-fun b!1245264 () Bool)

(declare-fun res!830873 () Bool)

(assert (=> b!1245264 (=> (not res!830873) (not e!706124))))

(declare-datatypes ((List!27637 0))(
  ( (Nil!27634) (Cons!27633 (h!28842 (_ BitVec 64)) (t!41113 List!27637)) )
))
(declare-fun arrayNoDuplicates!0 (array!80152 (_ BitVec 32) List!27637) Bool)

(assert (=> b!1245264 (= res!830873 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27634))))

(assert (= (and start!104258 res!830875) b!1245264))

(assert (= (and b!1245264 res!830873) b!1245265))

(assert (= (and b!1245265 res!830872) b!1245266))

(assert (= (and b!1245266 res!830874) b!1245267))

(declare-fun m!1147379 () Bool)

(assert (=> start!104258 m!1147379))

(declare-fun m!1147381 () Bool)

(assert (=> b!1245266 m!1147381))

(assert (=> b!1245266 m!1147381))

(declare-fun m!1147383 () Bool)

(assert (=> b!1245266 m!1147383))

(declare-fun m!1147385 () Bool)

(assert (=> b!1245264 m!1147385))

(check-sat (not start!104258) (not b!1245264) (not b!1245266))
(check-sat)
