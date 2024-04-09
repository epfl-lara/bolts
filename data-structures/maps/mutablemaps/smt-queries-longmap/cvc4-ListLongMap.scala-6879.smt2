; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86564 () Bool)

(assert start!86564)

(declare-fun b!1002595 () Bool)

(declare-fun res!672232 () Bool)

(declare-fun e!564825 () Bool)

(assert (=> b!1002595 (=> (not res!672232) (not e!564825))))

(declare-datatypes ((array!63317 0))(
  ( (array!63318 (arr!30480 (Array (_ BitVec 32) (_ BitVec 64))) (size!30983 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63317)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1002595 (= res!672232 (and (= (size!30983 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30983 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30983 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!672244 () Bool)

(assert (=> start!86564 (=> (not res!672244) (not e!564825))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86564 (= res!672244 (validMask!0 mask!3464))))

(assert (=> start!86564 e!564825))

(declare-fun array_inv!23470 (array!63317) Bool)

(assert (=> start!86564 (array_inv!23470 a!3219)))

(assert (=> start!86564 true))

(declare-fun b!1002596 () Bool)

(declare-fun res!672231 () Bool)

(declare-fun e!564829 () Bool)

(assert (=> b!1002596 (=> (not res!672231) (not e!564829))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1002596 (= res!672231 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1002597 () Bool)

(declare-fun e!564824 () Bool)

(assert (=> b!1002597 (= e!564825 e!564824)))

(declare-fun res!672234 () Bool)

(assert (=> b!1002597 (=> (not res!672234) (not e!564824))))

(declare-datatypes ((SeekEntryResult!9412 0))(
  ( (MissingZero!9412 (index!40018 (_ BitVec 32))) (Found!9412 (index!40019 (_ BitVec 32))) (Intermediate!9412 (undefined!10224 Bool) (index!40020 (_ BitVec 32)) (x!87457 (_ BitVec 32))) (Undefined!9412) (MissingVacant!9412 (index!40021 (_ BitVec 32))) )
))
(declare-fun lt!443270 () SeekEntryResult!9412)

(assert (=> b!1002597 (= res!672234 (or (= lt!443270 (MissingVacant!9412 i!1194)) (= lt!443270 (MissingZero!9412 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63317 (_ BitVec 32)) SeekEntryResult!9412)

(assert (=> b!1002597 (= lt!443270 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1002598 () Bool)

(declare-fun e!564828 () Bool)

(assert (=> b!1002598 (= e!564828 e!564829)))

(declare-fun res!672237 () Bool)

(assert (=> b!1002598 (=> (not res!672237) (not e!564829))))

(declare-fun lt!443266 () array!63317)

(declare-fun lt!443271 () SeekEntryResult!9412)

(declare-fun lt!443264 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63317 (_ BitVec 32)) SeekEntryResult!9412)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002598 (= res!672237 (not (= lt!443271 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443264 mask!3464) lt!443264 lt!443266 mask!3464))))))

(assert (=> b!1002598 (= lt!443264 (select (store (arr!30480 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1002598 (= lt!443266 (array!63318 (store (arr!30480 a!3219) i!1194 k!2224) (size!30983 a!3219)))))

(declare-fun b!1002599 () Bool)

(declare-fun res!672230 () Bool)

(assert (=> b!1002599 (=> (not res!672230) (not e!564824))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1002599 (= res!672230 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30983 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30983 a!3219))))))

(declare-fun b!1002600 () Bool)

(declare-fun res!672238 () Bool)

(declare-fun e!564826 () Bool)

(assert (=> b!1002600 (=> (not res!672238) (not e!564826))))

(declare-fun lt!443267 () SeekEntryResult!9412)

(declare-fun lt!443268 () (_ BitVec 32))

(assert (=> b!1002600 (= res!672238 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443268 (select (arr!30480 a!3219) j!170) a!3219 mask!3464) lt!443267))))

(declare-fun b!1002601 () Bool)

(declare-fun res!672240 () Bool)

(assert (=> b!1002601 (=> (not res!672240) (not e!564825))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1002601 (= res!672240 (validKeyInArray!0 k!2224))))

(declare-fun b!1002602 () Bool)

(declare-fun res!672241 () Bool)

(assert (=> b!1002602 (=> (not res!672241) (not e!564825))))

(declare-fun arrayContainsKey!0 (array!63317 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1002602 (= res!672241 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1002603 () Bool)

(declare-fun res!672239 () Bool)

(assert (=> b!1002603 (=> (not res!672239) (not e!564824))))

(declare-datatypes ((List!21282 0))(
  ( (Nil!21279) (Cons!21278 (h!22455 (_ BitVec 64)) (t!30291 List!21282)) )
))
(declare-fun arrayNoDuplicates!0 (array!63317 (_ BitVec 32) List!21282) Bool)

(assert (=> b!1002603 (= res!672239 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21279))))

(declare-fun b!1002604 () Bool)

(declare-fun res!672236 () Bool)

(assert (=> b!1002604 (=> (not res!672236) (not e!564825))))

(assert (=> b!1002604 (= res!672236 (validKeyInArray!0 (select (arr!30480 a!3219) j!170)))))

(declare-fun b!1002605 () Bool)

(declare-fun e!564827 () Bool)

(assert (=> b!1002605 (= e!564827 e!564828)))

(declare-fun res!672243 () Bool)

(assert (=> b!1002605 (=> (not res!672243) (not e!564828))))

(declare-fun lt!443269 () SeekEntryResult!9412)

(assert (=> b!1002605 (= res!672243 (= lt!443269 lt!443267))))

(assert (=> b!1002605 (= lt!443269 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30480 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002606 () Bool)

(declare-fun res!672242 () Bool)

(assert (=> b!1002606 (=> (not res!672242) (not e!564829))))

(assert (=> b!1002606 (= res!672242 (not (= lt!443269 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443264 lt!443266 mask!3464))))))

(declare-fun b!1002607 () Bool)

(declare-fun res!672229 () Bool)

(assert (=> b!1002607 (=> (not res!672229) (not e!564824))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63317 (_ BitVec 32)) Bool)

(assert (=> b!1002607 (= res!672229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1002608 () Bool)

(assert (=> b!1002608 (= e!564824 e!564827)))

(declare-fun res!672235 () Bool)

(assert (=> b!1002608 (=> (not res!672235) (not e!564827))))

(assert (=> b!1002608 (= res!672235 (= lt!443271 lt!443267))))

(assert (=> b!1002608 (= lt!443267 (Intermediate!9412 false resIndex!38 resX!38))))

(assert (=> b!1002608 (= lt!443271 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30480 a!3219) j!170) mask!3464) (select (arr!30480 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002609 () Bool)

(assert (=> b!1002609 (= e!564829 e!564826)))

(declare-fun res!672233 () Bool)

(assert (=> b!1002609 (=> (not res!672233) (not e!564826))))

(assert (=> b!1002609 (= res!672233 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443268 #b00000000000000000000000000000000) (bvslt lt!443268 (size!30983 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002609 (= lt!443268 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1002610 () Bool)

(assert (=> b!1002610 (= e!564826 false)))

(declare-fun lt!443265 () SeekEntryResult!9412)

(assert (=> b!1002610 (= lt!443265 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443268 lt!443264 lt!443266 mask!3464))))

(assert (= (and start!86564 res!672244) b!1002595))

(assert (= (and b!1002595 res!672232) b!1002604))

(assert (= (and b!1002604 res!672236) b!1002601))

(assert (= (and b!1002601 res!672240) b!1002602))

(assert (= (and b!1002602 res!672241) b!1002597))

(assert (= (and b!1002597 res!672234) b!1002607))

(assert (= (and b!1002607 res!672229) b!1002603))

(assert (= (and b!1002603 res!672239) b!1002599))

(assert (= (and b!1002599 res!672230) b!1002608))

(assert (= (and b!1002608 res!672235) b!1002605))

(assert (= (and b!1002605 res!672243) b!1002598))

(assert (= (and b!1002598 res!672237) b!1002606))

(assert (= (and b!1002606 res!672242) b!1002596))

(assert (= (and b!1002596 res!672231) b!1002609))

(assert (= (and b!1002609 res!672233) b!1002600))

(assert (= (and b!1002600 res!672238) b!1002610))

(declare-fun m!928541 () Bool)

(assert (=> b!1002606 m!928541))

(declare-fun m!928543 () Bool)

(assert (=> b!1002609 m!928543))

(declare-fun m!928545 () Bool)

(assert (=> b!1002600 m!928545))

(assert (=> b!1002600 m!928545))

(declare-fun m!928547 () Bool)

(assert (=> b!1002600 m!928547))

(assert (=> b!1002604 m!928545))

(assert (=> b!1002604 m!928545))

(declare-fun m!928549 () Bool)

(assert (=> b!1002604 m!928549))

(declare-fun m!928551 () Bool)

(assert (=> b!1002610 m!928551))

(declare-fun m!928553 () Bool)

(assert (=> start!86564 m!928553))

(declare-fun m!928555 () Bool)

(assert (=> start!86564 m!928555))

(declare-fun m!928557 () Bool)

(assert (=> b!1002597 m!928557))

(declare-fun m!928559 () Bool)

(assert (=> b!1002601 m!928559))

(declare-fun m!928561 () Bool)

(assert (=> b!1002598 m!928561))

(assert (=> b!1002598 m!928561))

(declare-fun m!928563 () Bool)

(assert (=> b!1002598 m!928563))

(declare-fun m!928565 () Bool)

(assert (=> b!1002598 m!928565))

(declare-fun m!928567 () Bool)

(assert (=> b!1002598 m!928567))

(declare-fun m!928569 () Bool)

(assert (=> b!1002607 m!928569))

(declare-fun m!928571 () Bool)

(assert (=> b!1002603 m!928571))

(assert (=> b!1002605 m!928545))

(assert (=> b!1002605 m!928545))

(declare-fun m!928573 () Bool)

(assert (=> b!1002605 m!928573))

(declare-fun m!928575 () Bool)

(assert (=> b!1002602 m!928575))

(assert (=> b!1002608 m!928545))

(assert (=> b!1002608 m!928545))

(declare-fun m!928577 () Bool)

(assert (=> b!1002608 m!928577))

(assert (=> b!1002608 m!928577))

(assert (=> b!1002608 m!928545))

(declare-fun m!928579 () Bool)

(assert (=> b!1002608 m!928579))

(push 1)

