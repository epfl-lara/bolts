; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117446 () Bool)

(assert start!117446)

(declare-fun res!922254 () Bool)

(declare-fun e!781825 () Bool)

(assert (=> start!117446 (=> (not res!922254) (not e!781825))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93913 0))(
  ( (array!93914 (arr!45346 (Array (_ BitVec 32) (_ BitVec 64))) (size!45897 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93913)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(assert (=> start!117446 (= res!922254 (and (bvslt (size!45897 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45897 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117446 e!781825))

(assert (=> start!117446 true))

(declare-fun array_inv!34291 (array!93913) Bool)

(assert (=> start!117446 (array_inv!34291 a!3985)))

(declare-fun b!1379875 () Bool)

(assert (=> b!1379875 (= e!781825 false)))

(declare-fun lt!607744 () Bool)

(declare-fun isPivot!0 (array!93913 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379875 (= lt!607744 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(assert (= (and start!117446 res!922254) b!1379875))

(declare-fun m!1265157 () Bool)

(assert (=> start!117446 m!1265157))

(declare-fun m!1265159 () Bool)

(assert (=> b!1379875 m!1265159))

(push 1)

(assert (not b!1379875))

(assert (not start!117446))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

