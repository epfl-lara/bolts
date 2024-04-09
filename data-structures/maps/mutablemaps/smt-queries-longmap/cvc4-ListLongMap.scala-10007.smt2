; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118124 () Bool)

(assert start!118124)

(declare-fun res!924181 () Bool)

(declare-fun e!783614 () Bool)

(assert (=> start!118124 (=> (not res!924181) (not e!783614))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118124 (= res!924181 (validMask!0 mask!3034))))

(assert (=> start!118124 e!783614))

(assert (=> start!118124 true))

(declare-datatypes ((array!94404 0))(
  ( (array!94405 (arr!45579 (Array (_ BitVec 32) (_ BitVec 64))) (size!46130 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94404)

(declare-fun array_inv!34524 (array!94404) Bool)

(assert (=> start!118124 (array_inv!34524 a!2971)))

(declare-fun b!1382479 () Bool)

(declare-fun res!924180 () Bool)

(assert (=> b!1382479 (=> (not res!924180) (not e!783614))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1382479 (= res!924180 (and (= (size!46130 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46130 a!2971))))))

(declare-fun b!1382480 () Bool)

(declare-fun res!924183 () Bool)

(assert (=> b!1382480 (=> (not res!924183) (not e!783614))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382480 (= res!924183 (validKeyInArray!0 (select (arr!45579 a!2971) i!1094)))))

(declare-fun b!1382482 () Bool)

(assert (=> b!1382482 (= e!783614 false)))

(declare-fun lt!608386 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94404 (_ BitVec 32)) Bool)

(assert (=> b!1382482 (= lt!608386 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382481 () Bool)

(declare-fun res!924182 () Bool)

(assert (=> b!1382481 (=> (not res!924182) (not e!783614))))

(declare-datatypes ((List!32293 0))(
  ( (Nil!32290) (Cons!32289 (h!33498 (_ BitVec 64)) (t!46994 List!32293)) )
))
(declare-fun arrayNoDuplicates!0 (array!94404 (_ BitVec 32) List!32293) Bool)

(assert (=> b!1382481 (= res!924182 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32290))))

(assert (= (and start!118124 res!924181) b!1382479))

(assert (= (and b!1382479 res!924180) b!1382480))

(assert (= (and b!1382480 res!924183) b!1382481))

(assert (= (and b!1382481 res!924182) b!1382482))

(declare-fun m!1267671 () Bool)

(assert (=> start!118124 m!1267671))

(declare-fun m!1267673 () Bool)

(assert (=> start!118124 m!1267673))

(declare-fun m!1267675 () Bool)

(assert (=> b!1382480 m!1267675))

(assert (=> b!1382480 m!1267675))

(declare-fun m!1267677 () Bool)

(assert (=> b!1382480 m!1267677))

(declare-fun m!1267679 () Bool)

(assert (=> b!1382482 m!1267679))

(declare-fun m!1267681 () Bool)

(assert (=> b!1382481 m!1267681))

(push 1)

(assert (not start!118124))

(assert (not b!1382481))

(assert (not b!1382480))

(assert (not b!1382482))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

