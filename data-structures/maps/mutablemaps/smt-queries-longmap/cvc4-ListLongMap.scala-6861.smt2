; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86456 () Bool)

(assert start!86456)

(declare-fun b!1000268 () Bool)

(declare-fun res!669912 () Bool)

(declare-fun e!563846 () Bool)

(assert (=> b!1000268 (=> (not res!669912) (not e!563846))))

(declare-datatypes ((array!63209 0))(
  ( (array!63210 (arr!30426 (Array (_ BitVec 32) (_ BitVec 64))) (size!30929 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63209)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9358 0))(
  ( (MissingZero!9358 (index!39802 (_ BitVec 32))) (Found!9358 (index!39803 (_ BitVec 32))) (Intermediate!9358 (undefined!10170 Bool) (index!39804 (_ BitVec 32)) (x!87259 (_ BitVec 32))) (Undefined!9358) (MissingVacant!9358 (index!39805 (_ BitVec 32))) )
))
(declare-fun lt!442225 () SeekEntryResult!9358)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63209 (_ BitVec 32)) SeekEntryResult!9358)

(assert (=> b!1000268 (= res!669912 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30426 a!3219) j!170) a!3219 mask!3464) lt!442225))))

(declare-fun res!669908 () Bool)

(declare-fun e!563847 () Bool)

(assert (=> start!86456 (=> (not res!669908) (not e!563847))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86456 (= res!669908 (validMask!0 mask!3464))))

(assert (=> start!86456 e!563847))

(declare-fun array_inv!23416 (array!63209) Bool)

(assert (=> start!86456 (array_inv!23416 a!3219)))

(assert (=> start!86456 true))

(declare-fun b!1000269 () Bool)

(declare-fun res!669902 () Bool)

(assert (=> b!1000269 (=> (not res!669902) (not e!563847))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000269 (= res!669902 (validKeyInArray!0 (select (arr!30426 a!3219) j!170)))))

(declare-fun b!1000270 () Bool)

(declare-fun res!669913 () Bool)

(assert (=> b!1000270 (=> (not res!669913) (not e!563847))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1000270 (= res!669913 (validKeyInArray!0 k!2224))))

(declare-fun b!1000271 () Bool)

(declare-fun res!669906 () Bool)

(assert (=> b!1000271 (=> (not res!669906) (not e!563846))))

(declare-fun lt!442227 () SeekEntryResult!9358)

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000271 (= res!669906 (not (= lt!442227 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30426 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30426 a!3219) i!1194 k!2224) j!170) (array!63210 (store (arr!30426 a!3219) i!1194 k!2224) (size!30929 a!3219)) mask!3464))))))

(declare-fun b!1000272 () Bool)

(declare-fun res!669911 () Bool)

(assert (=> b!1000272 (=> (not res!669911) (not e!563847))))

(declare-fun arrayContainsKey!0 (array!63209 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000272 (= res!669911 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000273 () Bool)

(assert (=> b!1000273 (= e!563846 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!1000274 () Bool)

(declare-fun e!563849 () Bool)

(assert (=> b!1000274 (= e!563849 e!563846)))

(declare-fun res!669910 () Bool)

(assert (=> b!1000274 (=> (not res!669910) (not e!563846))))

(assert (=> b!1000274 (= res!669910 (= lt!442227 lt!442225))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000274 (= lt!442225 (Intermediate!9358 false resIndex!38 resX!38))))

(assert (=> b!1000274 (= lt!442227 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30426 a!3219) j!170) mask!3464) (select (arr!30426 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1000275 () Bool)

(declare-fun res!669903 () Bool)

(assert (=> b!1000275 (=> (not res!669903) (not e!563847))))

(assert (=> b!1000275 (= res!669903 (and (= (size!30929 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30929 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30929 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000276 () Bool)

(declare-fun res!669905 () Bool)

(assert (=> b!1000276 (=> (not res!669905) (not e!563849))))

(declare-datatypes ((List!21228 0))(
  ( (Nil!21225) (Cons!21224 (h!22401 (_ BitVec 64)) (t!30237 List!21228)) )
))
(declare-fun arrayNoDuplicates!0 (array!63209 (_ BitVec 32) List!21228) Bool)

(assert (=> b!1000276 (= res!669905 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21225))))

(declare-fun b!1000277 () Bool)

(declare-fun res!669904 () Bool)

(assert (=> b!1000277 (=> (not res!669904) (not e!563849))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63209 (_ BitVec 32)) Bool)

(assert (=> b!1000277 (= res!669904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000278 () Bool)

(assert (=> b!1000278 (= e!563847 e!563849)))

(declare-fun res!669909 () Bool)

(assert (=> b!1000278 (=> (not res!669909) (not e!563849))))

(declare-fun lt!442226 () SeekEntryResult!9358)

(assert (=> b!1000278 (= res!669909 (or (= lt!442226 (MissingVacant!9358 i!1194)) (= lt!442226 (MissingZero!9358 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63209 (_ BitVec 32)) SeekEntryResult!9358)

(assert (=> b!1000278 (= lt!442226 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1000279 () Bool)

(declare-fun res!669907 () Bool)

(assert (=> b!1000279 (=> (not res!669907) (not e!563849))))

(assert (=> b!1000279 (= res!669907 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30929 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30929 a!3219))))))

(assert (= (and start!86456 res!669908) b!1000275))

(assert (= (and b!1000275 res!669903) b!1000269))

(assert (= (and b!1000269 res!669902) b!1000270))

(assert (= (and b!1000270 res!669913) b!1000272))

(assert (= (and b!1000272 res!669911) b!1000278))

(assert (= (and b!1000278 res!669909) b!1000277))

(assert (= (and b!1000277 res!669904) b!1000276))

(assert (= (and b!1000276 res!669905) b!1000279))

(assert (= (and b!1000279 res!669907) b!1000274))

(assert (= (and b!1000274 res!669910) b!1000268))

(assert (= (and b!1000268 res!669912) b!1000271))

(assert (= (and b!1000271 res!669906) b!1000273))

(declare-fun m!926551 () Bool)

(assert (=> b!1000272 m!926551))

(declare-fun m!926553 () Bool)

(assert (=> b!1000271 m!926553))

(declare-fun m!926555 () Bool)

(assert (=> b!1000271 m!926555))

(assert (=> b!1000271 m!926555))

(declare-fun m!926557 () Bool)

(assert (=> b!1000271 m!926557))

(assert (=> b!1000271 m!926557))

(assert (=> b!1000271 m!926555))

(declare-fun m!926559 () Bool)

(assert (=> b!1000271 m!926559))

(declare-fun m!926561 () Bool)

(assert (=> b!1000268 m!926561))

(assert (=> b!1000268 m!926561))

(declare-fun m!926563 () Bool)

(assert (=> b!1000268 m!926563))

(assert (=> b!1000274 m!926561))

(assert (=> b!1000274 m!926561))

(declare-fun m!926565 () Bool)

(assert (=> b!1000274 m!926565))

(assert (=> b!1000274 m!926565))

(assert (=> b!1000274 m!926561))

(declare-fun m!926567 () Bool)

(assert (=> b!1000274 m!926567))

(declare-fun m!926569 () Bool)

(assert (=> start!86456 m!926569))

(declare-fun m!926571 () Bool)

(assert (=> start!86456 m!926571))

(declare-fun m!926573 () Bool)

(assert (=> b!1000277 m!926573))

(declare-fun m!926575 () Bool)

(assert (=> b!1000270 m!926575))

(assert (=> b!1000269 m!926561))

(assert (=> b!1000269 m!926561))

(declare-fun m!926577 () Bool)

(assert (=> b!1000269 m!926577))

(declare-fun m!926579 () Bool)

(assert (=> b!1000278 m!926579))

(declare-fun m!926581 () Bool)

(assert (=> b!1000276 m!926581))

(push 1)

(assert (not b!1000268))

(assert (not b!1000270))

(assert (not b!1000278))

(assert (not start!86456))

(assert (not b!1000274))

(assert (not b!1000276))

(assert (not b!1000269))

(assert (not b!1000271))

