; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104166 () Bool)

(assert start!104166)

(declare-fun res!830605 () Bool)

(declare-fun e!705832 () Bool)

(assert (=> start!104166 (=> (not res!830605) (not e!705832))))

(declare-datatypes ((array!80096 0))(
  ( (array!80097 (arr!38631 (Array (_ BitVec 32) (_ BitVec 64))) (size!39168 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80096)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104166 (= res!830605 (and (bvslt (size!39168 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39168 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39168 a!3892))))))

(assert (=> start!104166 e!705832))

(declare-fun array_inv!29407 (array!80096) Bool)

(assert (=> start!104166 (array_inv!29407 a!3892)))

(assert (=> start!104166 true))

(declare-fun b!1244961 () Bool)

(assert (=> b!1244961 (= e!705832 false)))

(declare-fun lt!562798 () Bool)

(declare-datatypes ((List!27612 0))(
  ( (Nil!27609) (Cons!27608 (h!28817 (_ BitVec 64)) (t!41088 List!27612)) )
))
(declare-fun arrayNoDuplicates!0 (array!80096 (_ BitVec 32) List!27612) Bool)

(assert (=> b!1244961 (= lt!562798 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27609))))

(assert (= (and start!104166 res!830605) b!1244961))

(declare-fun m!1147149 () Bool)

(assert (=> start!104166 m!1147149))

(declare-fun m!1147151 () Bool)

(assert (=> b!1244961 m!1147151))

(push 1)

(assert (not b!1244961))

(assert (not start!104166))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

