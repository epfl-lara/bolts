; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118138 () Bool)

(assert start!118138)

(declare-fun res!924291 () Bool)

(declare-fun e!783655 () Bool)

(assert (=> start!118138 (=> (not res!924291) (not e!783655))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118138 (= res!924291 (validMask!0 mask!3034))))

(assert (=> start!118138 e!783655))

(assert (=> start!118138 true))

(declare-datatypes ((array!94418 0))(
  ( (array!94419 (arr!45586 (Array (_ BitVec 32) (_ BitVec 64))) (size!46137 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94418)

(declare-fun array_inv!34531 (array!94418) Bool)

(assert (=> start!118138 (array_inv!34531 a!2971)))

(declare-fun b!1382585 () Bool)

(declare-fun res!924286 () Bool)

(assert (=> b!1382585 (=> (not res!924286) (not e!783655))))

(declare-datatypes ((List!32300 0))(
  ( (Nil!32297) (Cons!32296 (h!33505 (_ BitVec 64)) (t!47001 List!32300)) )
))
(declare-fun arrayNoDuplicates!0 (array!94418 (_ BitVec 32) List!32300) Bool)

(assert (=> b!1382585 (= res!924286 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32297))))

(declare-fun b!1382586 () Bool)

(declare-fun res!924290 () Bool)

(assert (=> b!1382586 (=> (not res!924290) (not e!783655))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1382586 (= res!924290 (and (not (= (select (arr!45586 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45586 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!46137 a!2971))))))

(declare-fun b!1382587 () Bool)

(declare-fun res!924287 () Bool)

(assert (=> b!1382587 (=> (not res!924287) (not e!783655))))

(assert (=> b!1382587 (= res!924287 (and (= (size!46137 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46137 a!2971))))))

(declare-fun b!1382588 () Bool)

(declare-fun res!924288 () Bool)

(assert (=> b!1382588 (=> (not res!924288) (not e!783655))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382588 (= res!924288 (validKeyInArray!0 (select (arr!45586 a!2971) i!1094)))))

(declare-fun b!1382589 () Bool)

(declare-fun res!924289 () Bool)

(assert (=> b!1382589 (=> (not res!924289) (not e!783655))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94418 (_ BitVec 32)) Bool)

(assert (=> b!1382589 (= res!924289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382590 () Bool)

(assert (=> b!1382590 (= e!783655 (not true))))

(assert (=> b!1382590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!94419 (store (arr!45586 a!2971) i!1094 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46137 a!2971)) mask!3034)))

(declare-datatypes ((Unit!46005 0))(
  ( (Unit!46006) )
))
(declare-fun lt!608407 () Unit!46005)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94418 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46005)

(assert (=> b!1382590 (= lt!608407 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2971 i!1094 #b00000000000000000000000000000000 mask!3034))))

(assert (= (and start!118138 res!924291) b!1382587))

(assert (= (and b!1382587 res!924287) b!1382588))

(assert (= (and b!1382588 res!924288) b!1382585))

(assert (= (and b!1382585 res!924286) b!1382589))

(assert (= (and b!1382589 res!924289) b!1382586))

(assert (= (and b!1382586 res!924290) b!1382590))

(declare-fun m!1267773 () Bool)

(assert (=> b!1382586 m!1267773))

(declare-fun m!1267775 () Bool)

(assert (=> b!1382589 m!1267775))

(assert (=> b!1382588 m!1267773))

(assert (=> b!1382588 m!1267773))

(declare-fun m!1267777 () Bool)

(assert (=> b!1382588 m!1267777))

(declare-fun m!1267779 () Bool)

(assert (=> start!118138 m!1267779))

(declare-fun m!1267781 () Bool)

(assert (=> start!118138 m!1267781))

(declare-fun m!1267783 () Bool)

(assert (=> b!1382585 m!1267783))

(declare-fun m!1267785 () Bool)

(assert (=> b!1382590 m!1267785))

(declare-fun m!1267787 () Bool)

(assert (=> b!1382590 m!1267787))

(declare-fun m!1267789 () Bool)

(assert (=> b!1382590 m!1267789))

(push 1)

(assert (not start!118138))

(assert (not b!1382585))

(assert (not b!1382589))

(assert (not b!1382590))

(assert (not b!1382588))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

