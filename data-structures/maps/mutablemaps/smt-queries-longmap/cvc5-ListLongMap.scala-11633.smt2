; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135810 () Bool)

(assert start!135810)

(declare-fun res!1076209 () Bool)

(declare-fun e!878400 () Bool)

(assert (=> start!135810 (=> (not res!1076209) (not e!878400))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135810 (= res!1076209 (validMask!0 mask!898))))

(assert (=> start!135810 e!878400))

(assert (=> start!135810 true))

(declare-datatypes ((array!105328 0))(
  ( (array!105329 (arr!50800 (Array (_ BitVec 32) (_ BitVec 64))) (size!51351 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105328)

(declare-fun array_inv!39445 (array!105328) Bool)

(assert (=> start!135810 (array_inv!39445 _keys!605)))

(declare-fun b!1574928 () Bool)

(declare-fun res!1076208 () Bool)

(assert (=> b!1574928 (=> (not res!1076208) (not e!878400))))

(assert (=> b!1574928 (= res!1076208 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51351 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574929 () Bool)

(declare-fun res!1076210 () Bool)

(assert (=> b!1574929 (=> (not res!1076210) (not e!878400))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574929 (= res!1076210 (validKeyInArray!0 k!761))))

(declare-fun b!1574930 () Bool)

(assert (=> b!1574930 (= e!878400 false)))

(declare-datatypes ((SeekEntryResult!13681 0))(
  ( (MissingZero!13681 (index!57121 (_ BitVec 32))) (Found!13681 (index!57122 (_ BitVec 32))) (Intermediate!13681 (undefined!14493 Bool) (index!57123 (_ BitVec 32)) (x!142086 (_ BitVec 32))) (Undefined!13681) (MissingVacant!13681 (index!57124 (_ BitVec 32))) )
))
(declare-fun lt!674971 () SeekEntryResult!13681)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105328 (_ BitVec 32)) SeekEntryResult!13681)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574930 (= lt!674971 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135810 res!1076209) b!1574928))

(assert (= (and b!1574928 res!1076208) b!1574929))

(assert (= (and b!1574929 res!1076210) b!1574930))

(declare-fun m!1448077 () Bool)

(assert (=> start!135810 m!1448077))

(declare-fun m!1448079 () Bool)

(assert (=> start!135810 m!1448079))

(declare-fun m!1448081 () Bool)

(assert (=> b!1574929 m!1448081))

(declare-fun m!1448083 () Bool)

(assert (=> b!1574930 m!1448083))

(assert (=> b!1574930 m!1448083))

(declare-fun m!1448085 () Bool)

(assert (=> b!1574930 m!1448085))

(push 1)

(assert (not start!135810))

(assert (not b!1574930))

(assert (not b!1574929))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

