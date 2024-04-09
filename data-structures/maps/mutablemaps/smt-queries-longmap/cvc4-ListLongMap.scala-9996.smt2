; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118028 () Bool)

(assert start!118028)

(declare-fun b!1381982 () Bool)

(declare-fun res!923723 () Bool)

(declare-fun e!783353 () Bool)

(assert (=> b!1381982 (=> (not res!923723) (not e!783353))))

(declare-datatypes ((array!94335 0))(
  ( (array!94336 (arr!45546 (Array (_ BitVec 32) (_ BitVec 64))) (size!46097 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94335)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381982 (= res!923723 (validKeyInArray!0 (select (arr!45546 a!2971) i!1094)))))

(declare-fun res!923721 () Bool)

(assert (=> start!118028 (=> (not res!923721) (not e!783353))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118028 (= res!923721 (validMask!0 mask!3034))))

(assert (=> start!118028 e!783353))

(assert (=> start!118028 true))

(declare-fun array_inv!34491 (array!94335) Bool)

(assert (=> start!118028 (array_inv!34491 a!2971)))

(declare-fun b!1381983 () Bool)

(declare-fun res!923722 () Bool)

(assert (=> b!1381983 (=> (not res!923722) (not e!783353))))

(assert (=> b!1381983 (= res!923722 (and (= (size!46097 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46097 a!2971))))))

(declare-fun b!1381984 () Bool)

(declare-fun res!923720 () Bool)

(assert (=> b!1381984 (=> (not res!923720) (not e!783353))))

(assert (=> b!1381984 (= res!923720 (and (not (= (select (arr!45546 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45546 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!46097 a!2971))))))

(declare-fun b!1381985 () Bool)

(assert (=> b!1381985 (= e!783353 (not (bvsle #b00000000000000000000000000000000 (size!46097 a!2971))))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94335 (_ BitVec 32)) Bool)

(assert (=> b!1381985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!94336 (store (arr!45546 a!2971) i!1094 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46097 a!2971)) mask!3034)))

(declare-datatypes ((Unit!45993 0))(
  ( (Unit!45994) )
))
(declare-fun lt!608278 () Unit!45993)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94335 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45993)

(assert (=> b!1381985 (= lt!608278 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2971 i!1094 #b00000000000000000000000000000000 mask!3034))))

(declare-fun b!1381986 () Bool)

(declare-fun res!923724 () Bool)

(assert (=> b!1381986 (=> (not res!923724) (not e!783353))))

(assert (=> b!1381986 (= res!923724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381987 () Bool)

(declare-fun res!923719 () Bool)

(assert (=> b!1381987 (=> (not res!923719) (not e!783353))))

(declare-datatypes ((List!32260 0))(
  ( (Nil!32257) (Cons!32256 (h!33465 (_ BitVec 64)) (t!46961 List!32260)) )
))
(declare-fun arrayNoDuplicates!0 (array!94335 (_ BitVec 32) List!32260) Bool)

(assert (=> b!1381987 (= res!923719 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32257))))

(assert (= (and start!118028 res!923721) b!1381983))

(assert (= (and b!1381983 res!923722) b!1381982))

(assert (= (and b!1381982 res!923723) b!1381987))

(assert (= (and b!1381987 res!923719) b!1381986))

(assert (= (and b!1381986 res!923724) b!1381984))

(assert (= (and b!1381984 res!923720) b!1381985))

(declare-fun m!1267221 () Bool)

(assert (=> b!1381985 m!1267221))

(declare-fun m!1267223 () Bool)

(assert (=> b!1381985 m!1267223))

(declare-fun m!1267225 () Bool)

(assert (=> b!1381985 m!1267225))

(declare-fun m!1267227 () Bool)

(assert (=> b!1381982 m!1267227))

(assert (=> b!1381982 m!1267227))

(declare-fun m!1267229 () Bool)

(assert (=> b!1381982 m!1267229))

(declare-fun m!1267231 () Bool)

(assert (=> b!1381986 m!1267231))

(declare-fun m!1267233 () Bool)

(assert (=> start!118028 m!1267233))

(declare-fun m!1267235 () Bool)

(assert (=> start!118028 m!1267235))

(declare-fun m!1267237 () Bool)

(assert (=> b!1381987 m!1267237))

(assert (=> b!1381984 m!1267227))

(push 1)

(assert (not b!1381982))

(assert (not start!118028))

(assert (not b!1381985))

