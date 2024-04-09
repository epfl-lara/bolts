; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104168 () Bool)

(assert start!104168)

(declare-fun res!830608 () Bool)

(declare-fun e!705838 () Bool)

(assert (=> start!104168 (=> (not res!830608) (not e!705838))))

(declare-datatypes ((array!80098 0))(
  ( (array!80099 (arr!38632 (Array (_ BitVec 32) (_ BitVec 64))) (size!39169 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80098)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104168 (= res!830608 (and (bvslt (size!39169 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39169 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39169 a!3892))))))

(assert (=> start!104168 e!705838))

(declare-fun array_inv!29408 (array!80098) Bool)

(assert (=> start!104168 (array_inv!29408 a!3892)))

(assert (=> start!104168 true))

(declare-fun b!1244964 () Bool)

(assert (=> b!1244964 (= e!705838 false)))

(declare-fun lt!562801 () Bool)

(declare-datatypes ((List!27613 0))(
  ( (Nil!27610) (Cons!27609 (h!28818 (_ BitVec 64)) (t!41089 List!27613)) )
))
(declare-fun arrayNoDuplicates!0 (array!80098 (_ BitVec 32) List!27613) Bool)

(assert (=> b!1244964 (= lt!562801 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27610))))

(assert (= (and start!104168 res!830608) b!1244964))

(declare-fun m!1147153 () Bool)

(assert (=> start!104168 m!1147153))

(declare-fun m!1147155 () Bool)

(assert (=> b!1244964 m!1147155))

(check-sat (not start!104168) (not b!1244964))
