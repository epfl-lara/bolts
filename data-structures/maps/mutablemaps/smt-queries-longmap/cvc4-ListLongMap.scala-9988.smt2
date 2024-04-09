; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117980 () Bool)

(assert start!117980)

(declare-fun b!1381627 () Bool)

(declare-fun e!783209 () Bool)

(assert (=> b!1381627 (= e!783209 false)))

(declare-fun lt!608206 () Bool)

(declare-datatypes ((array!94287 0))(
  ( (array!94288 (arr!45522 (Array (_ BitVec 32) (_ BitVec 64))) (size!46073 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94287)

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94287 (_ BitVec 32)) Bool)

(assert (=> b!1381627 (= lt!608206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381625 () Bool)

(declare-fun res!923362 () Bool)

(assert (=> b!1381625 (=> (not res!923362) (not e!783209))))

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381625 (= res!923362 (validKeyInArray!0 (select (arr!45522 a!2971) i!1094)))))

(declare-fun b!1381626 () Bool)

(declare-fun res!923363 () Bool)

(assert (=> b!1381626 (=> (not res!923363) (not e!783209))))

(declare-datatypes ((List!32236 0))(
  ( (Nil!32233) (Cons!32232 (h!33441 (_ BitVec 64)) (t!46937 List!32236)) )
))
(declare-fun arrayNoDuplicates!0 (array!94287 (_ BitVec 32) List!32236) Bool)

(assert (=> b!1381626 (= res!923363 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32233))))

(declare-fun res!923364 () Bool)

(assert (=> start!117980 (=> (not res!923364) (not e!783209))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117980 (= res!923364 (validMask!0 mask!3034))))

(assert (=> start!117980 e!783209))

(assert (=> start!117980 true))

(declare-fun array_inv!34467 (array!94287) Bool)

(assert (=> start!117980 (array_inv!34467 a!2971)))

(declare-fun b!1381624 () Bool)

(declare-fun res!923361 () Bool)

(assert (=> b!1381624 (=> (not res!923361) (not e!783209))))

(assert (=> b!1381624 (= res!923361 (and (= (size!46073 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46073 a!2971))))))

(assert (= (and start!117980 res!923364) b!1381624))

(assert (= (and b!1381624 res!923361) b!1381625))

(assert (= (and b!1381625 res!923362) b!1381626))

(assert (= (and b!1381626 res!923363) b!1381627))

(declare-fun m!1266867 () Bool)

(assert (=> b!1381627 m!1266867))

(declare-fun m!1266869 () Bool)

(assert (=> b!1381625 m!1266869))

(assert (=> b!1381625 m!1266869))

(declare-fun m!1266871 () Bool)

(assert (=> b!1381625 m!1266871))

(declare-fun m!1266873 () Bool)

(assert (=> b!1381626 m!1266873))

(declare-fun m!1266875 () Bool)

(assert (=> start!117980 m!1266875))

(declare-fun m!1266877 () Bool)

(assert (=> start!117980 m!1266877))

(push 1)

(assert (not b!1381627))

(assert (not start!117980))

(assert (not b!1381626))

(assert (not b!1381625))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

