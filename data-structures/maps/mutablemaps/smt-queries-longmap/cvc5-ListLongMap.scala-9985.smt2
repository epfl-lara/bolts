; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117958 () Bool)

(assert start!117958)

(declare-fun res!923232 () Bool)

(declare-fun e!783143 () Bool)

(assert (=> start!117958 (=> (not res!923232) (not e!783143))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117958 (= res!923232 (validMask!0 mask!3034))))

(assert (=> start!117958 e!783143))

(assert (=> start!117958 true))

(declare-datatypes ((array!94265 0))(
  ( (array!94266 (arr!45511 (Array (_ BitVec 32) (_ BitVec 64))) (size!46062 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94265)

(declare-fun array_inv!34456 (array!94265) Bool)

(assert (=> start!117958 (array_inv!34456 a!2971)))

(declare-fun b!1381494 () Bool)

(declare-fun res!923229 () Bool)

(assert (=> b!1381494 (=> (not res!923229) (not e!783143))))

(declare-datatypes ((List!32225 0))(
  ( (Nil!32222) (Cons!32221 (h!33430 (_ BitVec 64)) (t!46926 List!32225)) )
))
(declare-fun arrayNoDuplicates!0 (array!94265 (_ BitVec 32) List!32225) Bool)

(assert (=> b!1381494 (= res!923229 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32222))))

(declare-fun b!1381493 () Bool)

(declare-fun res!923230 () Bool)

(assert (=> b!1381493 (=> (not res!923230) (not e!783143))))

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381493 (= res!923230 (validKeyInArray!0 (select (arr!45511 a!2971) i!1094)))))

(declare-fun b!1381492 () Bool)

(declare-fun res!923231 () Bool)

(assert (=> b!1381492 (=> (not res!923231) (not e!783143))))

(assert (=> b!1381492 (= res!923231 (and (= (size!46062 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46062 a!2971))))))

(declare-fun b!1381495 () Bool)

(assert (=> b!1381495 (= e!783143 false)))

(declare-fun lt!608173 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94265 (_ BitVec 32)) Bool)

(assert (=> b!1381495 (= lt!608173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(assert (= (and start!117958 res!923232) b!1381492))

(assert (= (and b!1381492 res!923231) b!1381493))

(assert (= (and b!1381493 res!923230) b!1381494))

(assert (= (and b!1381494 res!923229) b!1381495))

(declare-fun m!1266735 () Bool)

(assert (=> start!117958 m!1266735))

(declare-fun m!1266737 () Bool)

(assert (=> start!117958 m!1266737))

(declare-fun m!1266739 () Bool)

(assert (=> b!1381494 m!1266739))

(declare-fun m!1266741 () Bool)

(assert (=> b!1381493 m!1266741))

(assert (=> b!1381493 m!1266741))

(declare-fun m!1266743 () Bool)

(assert (=> b!1381493 m!1266743))

(declare-fun m!1266745 () Bool)

(assert (=> b!1381495 m!1266745))

(push 1)

(assert (not b!1381495))

(assert (not b!1381494))

(assert (not start!117958))

(assert (not b!1381493))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

