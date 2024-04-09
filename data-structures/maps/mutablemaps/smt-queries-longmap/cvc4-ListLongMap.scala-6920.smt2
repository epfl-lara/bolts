; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86972 () Bool)

(assert start!86972)

(declare-fun b!1008393 () Bool)

(declare-fun res!677448 () Bool)

(declare-fun e!567422 () Bool)

(assert (=> b!1008393 (=> (not res!677448) (not e!567422))))

(declare-datatypes ((array!63572 0))(
  ( (array!63573 (arr!30603 (Array (_ BitVec 32) (_ BitVec 64))) (size!31106 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63572)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(assert (=> b!1008393 (= res!677448 (and (= (size!31106 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31106 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31106 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1008394 () Bool)

(declare-fun res!677454 () Bool)

(declare-fun e!567418 () Bool)

(assert (=> b!1008394 (=> (not res!677454) (not e!567418))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!445690 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9535 0))(
  ( (MissingZero!9535 (index!40510 (_ BitVec 32))) (Found!9535 (index!40511 (_ BitVec 32))) (Intermediate!9535 (undefined!10347 Bool) (index!40512 (_ BitVec 32)) (x!87926 (_ BitVec 32))) (Undefined!9535) (MissingVacant!9535 (index!40513 (_ BitVec 32))) )
))
(declare-fun lt!445687 () SeekEntryResult!9535)

(declare-fun lt!445689 () array!63572)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63572 (_ BitVec 32)) SeekEntryResult!9535)

(assert (=> b!1008394 (= res!677454 (not (= lt!445687 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445690 lt!445689 mask!3464))))))

(declare-fun res!677446 () Bool)

(assert (=> start!86972 (=> (not res!677446) (not e!567422))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86972 (= res!677446 (validMask!0 mask!3464))))

(assert (=> start!86972 e!567422))

(declare-fun array_inv!23593 (array!63572) Bool)

(assert (=> start!86972 (array_inv!23593 a!3219)))

(assert (=> start!86972 true))

(declare-fun b!1008395 () Bool)

(declare-fun res!677442 () Bool)

(assert (=> b!1008395 (=> (not res!677442) (not e!567422))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63572 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1008395 (= res!677442 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1008396 () Bool)

(declare-fun e!567420 () Bool)

(declare-fun e!567419 () Bool)

(assert (=> b!1008396 (= e!567420 e!567419)))

(declare-fun res!677451 () Bool)

(assert (=> b!1008396 (=> (not res!677451) (not e!567419))))

(declare-fun lt!445686 () SeekEntryResult!9535)

(assert (=> b!1008396 (= res!677451 (= lt!445687 lt!445686))))

(assert (=> b!1008396 (= lt!445687 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30603 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008397 () Bool)

(declare-fun res!677452 () Bool)

(declare-fun e!567417 () Bool)

(assert (=> b!1008397 (=> (not res!677452) (not e!567417))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1008397 (= res!677452 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31106 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31106 a!3219))))))

(declare-fun b!1008398 () Bool)

(assert (=> b!1008398 (= e!567419 e!567418)))

(declare-fun res!677443 () Bool)

(assert (=> b!1008398 (=> (not res!677443) (not e!567418))))

(declare-fun lt!445688 () SeekEntryResult!9535)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008398 (= res!677443 (not (= lt!445688 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445690 mask!3464) lt!445690 lt!445689 mask!3464))))))

(assert (=> b!1008398 (= lt!445690 (select (store (arr!30603 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1008398 (= lt!445689 (array!63573 (store (arr!30603 a!3219) i!1194 k!2224) (size!31106 a!3219)))))

(declare-fun b!1008399 () Bool)

(declare-fun res!677455 () Bool)

(assert (=> b!1008399 (=> (not res!677455) (not e!567422))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1008399 (= res!677455 (validKeyInArray!0 k!2224))))

(declare-fun b!1008400 () Bool)

(assert (=> b!1008400 (= e!567422 e!567417)))

(declare-fun res!677449 () Bool)

(assert (=> b!1008400 (=> (not res!677449) (not e!567417))))

(declare-fun lt!445692 () SeekEntryResult!9535)

(assert (=> b!1008400 (= res!677449 (or (= lt!445692 (MissingVacant!9535 i!1194)) (= lt!445692 (MissingZero!9535 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63572 (_ BitVec 32)) SeekEntryResult!9535)

(assert (=> b!1008400 (= lt!445692 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1008401 () Bool)

(declare-fun res!677444 () Bool)

(assert (=> b!1008401 (=> (not res!677444) (not e!567422))))

(assert (=> b!1008401 (= res!677444 (validKeyInArray!0 (select (arr!30603 a!3219) j!170)))))

(declare-fun b!1008402 () Bool)

(assert (=> b!1008402 (= e!567418 false)))

(declare-fun lt!445691 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008402 (= lt!445691 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1008403 () Bool)

(declare-fun res!677447 () Bool)

(assert (=> b!1008403 (=> (not res!677447) (not e!567417))))

(declare-datatypes ((List!21405 0))(
  ( (Nil!21402) (Cons!21401 (h!22587 (_ BitVec 64)) (t!30414 List!21405)) )
))
(declare-fun arrayNoDuplicates!0 (array!63572 (_ BitVec 32) List!21405) Bool)

(assert (=> b!1008403 (= res!677447 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21402))))

(declare-fun b!1008404 () Bool)

(assert (=> b!1008404 (= e!567417 e!567420)))

(declare-fun res!677445 () Bool)

(assert (=> b!1008404 (=> (not res!677445) (not e!567420))))

(assert (=> b!1008404 (= res!677445 (= lt!445688 lt!445686))))

(assert (=> b!1008404 (= lt!445686 (Intermediate!9535 false resIndex!38 resX!38))))

(assert (=> b!1008404 (= lt!445688 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30603 a!3219) j!170) mask!3464) (select (arr!30603 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008405 () Bool)

(declare-fun res!677450 () Bool)

(assert (=> b!1008405 (=> (not res!677450) (not e!567417))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63572 (_ BitVec 32)) Bool)

(assert (=> b!1008405 (= res!677450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1008406 () Bool)

(declare-fun res!677453 () Bool)

(assert (=> b!1008406 (=> (not res!677453) (not e!567418))))

(assert (=> b!1008406 (= res!677453 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(assert (= (and start!86972 res!677446) b!1008393))

(assert (= (and b!1008393 res!677448) b!1008401))

(assert (= (and b!1008401 res!677444) b!1008399))

(assert (= (and b!1008399 res!677455) b!1008395))

(assert (= (and b!1008395 res!677442) b!1008400))

(assert (= (and b!1008400 res!677449) b!1008405))

(assert (= (and b!1008405 res!677450) b!1008403))

(assert (= (and b!1008403 res!677447) b!1008397))

(assert (= (and b!1008397 res!677452) b!1008404))

(assert (= (and b!1008404 res!677445) b!1008396))

(assert (= (and b!1008396 res!677451) b!1008398))

(assert (= (and b!1008398 res!677443) b!1008394))

(assert (= (and b!1008394 res!677454) b!1008406))

(assert (= (and b!1008406 res!677453) b!1008402))

(declare-fun m!933243 () Bool)

(assert (=> b!1008399 m!933243))

(declare-fun m!933245 () Bool)

(assert (=> b!1008395 m!933245))

(declare-fun m!933247 () Bool)

(assert (=> b!1008396 m!933247))

(assert (=> b!1008396 m!933247))

(declare-fun m!933249 () Bool)

(assert (=> b!1008396 m!933249))

(assert (=> b!1008401 m!933247))

(assert (=> b!1008401 m!933247))

(declare-fun m!933251 () Bool)

(assert (=> b!1008401 m!933251))

(declare-fun m!933253 () Bool)

(assert (=> b!1008400 m!933253))

(declare-fun m!933255 () Bool)

(assert (=> b!1008403 m!933255))

(declare-fun m!933257 () Bool)

(assert (=> start!86972 m!933257))

(declare-fun m!933259 () Bool)

(assert (=> start!86972 m!933259))

(declare-fun m!933261 () Bool)

(assert (=> b!1008394 m!933261))

(declare-fun m!933263 () Bool)

(assert (=> b!1008402 m!933263))

(assert (=> b!1008404 m!933247))

(assert (=> b!1008404 m!933247))

(declare-fun m!933265 () Bool)

(assert (=> b!1008404 m!933265))

(assert (=> b!1008404 m!933265))

(assert (=> b!1008404 m!933247))

(declare-fun m!933267 () Bool)

(assert (=> b!1008404 m!933267))

(declare-fun m!933269 () Bool)

(assert (=> b!1008398 m!933269))

(assert (=> b!1008398 m!933269))

(declare-fun m!933271 () Bool)

(assert (=> b!1008398 m!933271))

(declare-fun m!933273 () Bool)

(assert (=> b!1008398 m!933273))

(declare-fun m!933275 () Bool)

(assert (=> b!1008398 m!933275))

(declare-fun m!933277 () Bool)

(assert (=> b!1008405 m!933277))

(push 1)

