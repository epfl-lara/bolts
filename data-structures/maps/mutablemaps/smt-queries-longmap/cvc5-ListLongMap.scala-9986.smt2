; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117964 () Bool)

(assert start!117964)

(declare-fun res!923265 () Bool)

(declare-fun e!783160 () Bool)

(assert (=> start!117964 (=> (not res!923265) (not e!783160))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117964 (= res!923265 (validMask!0 mask!3034))))

(assert (=> start!117964 e!783160))

(assert (=> start!117964 true))

(declare-datatypes ((array!94271 0))(
  ( (array!94272 (arr!45514 (Array (_ BitVec 32) (_ BitVec 64))) (size!46065 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94271)

(declare-fun array_inv!34459 (array!94271) Bool)

(assert (=> start!117964 (array_inv!34459 a!2971)))

(declare-fun b!1381529 () Bool)

(declare-fun res!923267 () Bool)

(assert (=> b!1381529 (=> (not res!923267) (not e!783160))))

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381529 (= res!923267 (validKeyInArray!0 (select (arr!45514 a!2971) i!1094)))))

(declare-fun b!1381530 () Bool)

(declare-fun res!923266 () Bool)

(assert (=> b!1381530 (=> (not res!923266) (not e!783160))))

(declare-datatypes ((List!32228 0))(
  ( (Nil!32225) (Cons!32224 (h!33433 (_ BitVec 64)) (t!46929 List!32228)) )
))
(declare-fun arrayNoDuplicates!0 (array!94271 (_ BitVec 32) List!32228) Bool)

(assert (=> b!1381530 (= res!923266 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32225))))

(declare-fun b!1381531 () Bool)

(assert (=> b!1381531 (= e!783160 false)))

(declare-fun lt!608182 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94271 (_ BitVec 32)) Bool)

(assert (=> b!1381531 (= lt!608182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381528 () Bool)

(declare-fun res!923268 () Bool)

(assert (=> b!1381528 (=> (not res!923268) (not e!783160))))

(assert (=> b!1381528 (= res!923268 (and (= (size!46065 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46065 a!2971))))))

(assert (= (and start!117964 res!923265) b!1381528))

(assert (= (and b!1381528 res!923268) b!1381529))

(assert (= (and b!1381529 res!923267) b!1381530))

(assert (= (and b!1381530 res!923266) b!1381531))

(declare-fun m!1266771 () Bool)

(assert (=> start!117964 m!1266771))

(declare-fun m!1266773 () Bool)

(assert (=> start!117964 m!1266773))

(declare-fun m!1266775 () Bool)

(assert (=> b!1381529 m!1266775))

(assert (=> b!1381529 m!1266775))

(declare-fun m!1266777 () Bool)

(assert (=> b!1381529 m!1266777))

(declare-fun m!1266779 () Bool)

(assert (=> b!1381530 m!1266779))

(declare-fun m!1266781 () Bool)

(assert (=> b!1381531 m!1266781))

(push 1)

(assert (not start!117964))

(assert (not b!1381530))

(assert (not b!1381531))

(assert (not b!1381529))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

