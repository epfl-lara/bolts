; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118010 () Bool)

(assert start!118010)

(declare-fun b!1381820 () Bool)

(declare-fun res!923559 () Bool)

(declare-fun e!783299 () Bool)

(assert (=> b!1381820 (=> (not res!923559) (not e!783299))))

(declare-datatypes ((array!94317 0))(
  ( (array!94318 (arr!45537 (Array (_ BitVec 32) (_ BitVec 64))) (size!46088 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94317)

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381820 (= res!923559 (and (not (= (select (arr!45537 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45537 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!46088 a!2971))))))

(declare-fun res!923558 () Bool)

(assert (=> start!118010 (=> (not res!923558) (not e!783299))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118010 (= res!923558 (validMask!0 mask!3034))))

(assert (=> start!118010 e!783299))

(assert (=> start!118010 true))

(declare-fun array_inv!34482 (array!94317) Bool)

(assert (=> start!118010 (array_inv!34482 a!2971)))

(declare-fun b!1381821 () Bool)

(declare-fun res!923557 () Bool)

(assert (=> b!1381821 (=> (not res!923557) (not e!783299))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94317 (_ BitVec 32)) Bool)

(assert (=> b!1381821 (= res!923557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381822 () Bool)

(declare-fun res!923562 () Bool)

(assert (=> b!1381822 (=> (not res!923562) (not e!783299))))

(assert (=> b!1381822 (= res!923562 (and (= (size!46088 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46088 a!2971))))))

(declare-fun b!1381823 () Bool)

(assert (=> b!1381823 (= e!783299 (not true))))

(assert (=> b!1381823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!94318 (store (arr!45537 a!2971) i!1094 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46088 a!2971)) mask!3034)))

(declare-datatypes ((Unit!45975 0))(
  ( (Unit!45976) )
))
(declare-fun lt!608251 () Unit!45975)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94317 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45975)

(assert (=> b!1381823 (= lt!608251 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2971 i!1094 #b00000000000000000000000000000000 mask!3034))))

(declare-fun b!1381824 () Bool)

(declare-fun res!923561 () Bool)

(assert (=> b!1381824 (=> (not res!923561) (not e!783299))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381824 (= res!923561 (validKeyInArray!0 (select (arr!45537 a!2971) i!1094)))))

(declare-fun b!1381825 () Bool)

(declare-fun res!923560 () Bool)

(assert (=> b!1381825 (=> (not res!923560) (not e!783299))))

(declare-datatypes ((List!32251 0))(
  ( (Nil!32248) (Cons!32247 (h!33456 (_ BitVec 64)) (t!46952 List!32251)) )
))
(declare-fun arrayNoDuplicates!0 (array!94317 (_ BitVec 32) List!32251) Bool)

(assert (=> b!1381825 (= res!923560 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32248))))

(assert (= (and start!118010 res!923558) b!1381822))

(assert (= (and b!1381822 res!923562) b!1381824))

(assert (= (and b!1381824 res!923561) b!1381825))

(assert (= (and b!1381825 res!923560) b!1381821))

(assert (= (and b!1381821 res!923557) b!1381820))

(assert (= (and b!1381820 res!923559) b!1381823))

(declare-fun m!1267059 () Bool)

(assert (=> start!118010 m!1267059))

(declare-fun m!1267061 () Bool)

(assert (=> start!118010 m!1267061))

(declare-fun m!1267063 () Bool)

(assert (=> b!1381821 m!1267063))

(declare-fun m!1267065 () Bool)

(assert (=> b!1381820 m!1267065))

(assert (=> b!1381824 m!1267065))

(assert (=> b!1381824 m!1267065))

(declare-fun m!1267067 () Bool)

(assert (=> b!1381824 m!1267067))

(declare-fun m!1267069 () Bool)

(assert (=> b!1381825 m!1267069))

(declare-fun m!1267071 () Bool)

(assert (=> b!1381823 m!1267071))

(declare-fun m!1267073 () Bool)

(assert (=> b!1381823 m!1267073))

(declare-fun m!1267075 () Bool)

(assert (=> b!1381823 m!1267075))

(push 1)

(assert (not b!1381823))

(assert (not b!1381821))

(assert (not b!1381825))

(assert (not b!1381824))

(assert (not start!118010))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

