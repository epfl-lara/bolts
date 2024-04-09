; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131180 () Bool)

(assert start!131180)

(declare-fun b!1538369 () Bool)

(declare-fun res!1055489 () Bool)

(declare-fun e!855962 () Bool)

(assert (=> b!1538369 (=> (not res!1055489) (not e!855962))))

(declare-datatypes ((array!102172 0))(
  ( (array!102173 (arr!49296 (Array (_ BitVec 32) (_ BitVec 64))) (size!49847 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102172)

(declare-datatypes ((List!35950 0))(
  ( (Nil!35947) (Cons!35946 (h!37392 (_ BitVec 64)) (t!50651 List!35950)) )
))
(declare-fun arrayNoDuplicates!0 (array!102172 (_ BitVec 32) List!35950) Bool)

(assert (=> b!1538369 (= res!1055489 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35947))))

(declare-fun b!1538370 () Bool)

(declare-fun res!1055485 () Bool)

(assert (=> b!1538370 (=> (not res!1055485) (not e!855962))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538370 (= res!1055485 (validKeyInArray!0 (select (arr!49296 a!2792) j!64)))))

(declare-fun b!1538371 () Bool)

(declare-fun res!1055490 () Bool)

(assert (=> b!1538371 (=> (not res!1055490) (not e!855962))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13445 0))(
  ( (MissingZero!13445 (index!56174 (_ BitVec 32))) (Found!13445 (index!56175 (_ BitVec 32))) (Intermediate!13445 (undefined!14257 Bool) (index!56176 (_ BitVec 32)) (x!137909 (_ BitVec 32))) (Undefined!13445) (MissingVacant!13445 (index!56177 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102172 (_ BitVec 32)) SeekEntryResult!13445)

(assert (=> b!1538371 (= res!1055490 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49296 a!2792) j!64) a!2792 mask!2480) (Found!13445 j!64)))))

(declare-fun b!1538372 () Bool)

(declare-fun res!1055493 () Bool)

(assert (=> b!1538372 (=> (not res!1055493) (not e!855962))))

(assert (=> b!1538372 (= res!1055493 (not (= (select (arr!49296 a!2792) index!463) (select (arr!49296 a!2792) j!64))))))

(declare-fun b!1538373 () Bool)

(declare-fun res!1055492 () Bool)

(assert (=> b!1538373 (=> (not res!1055492) (not e!855962))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538373 (= res!1055492 (and (= (size!49847 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49847 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49847 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538374 () Bool)

(declare-fun res!1055487 () Bool)

(assert (=> b!1538374 (=> (not res!1055487) (not e!855962))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102172 (_ BitVec 32)) Bool)

(assert (=> b!1538374 (= res!1055487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1055491 () Bool)

(assert (=> start!131180 (=> (not res!1055491) (not e!855962))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131180 (= res!1055491 (validMask!0 mask!2480))))

(assert (=> start!131180 e!855962))

(assert (=> start!131180 true))

(declare-fun array_inv!38241 (array!102172) Bool)

(assert (=> start!131180 (array_inv!38241 a!2792)))

(declare-fun b!1538375 () Bool)

(declare-fun res!1055488 () Bool)

(assert (=> b!1538375 (=> (not res!1055488) (not e!855962))))

(assert (=> b!1538375 (= res!1055488 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49847 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49847 a!2792)) (= (select (arr!49296 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538376 () Bool)

(declare-fun res!1055486 () Bool)

(assert (=> b!1538376 (=> (not res!1055486) (not e!855962))))

(assert (=> b!1538376 (= res!1055486 (validKeyInArray!0 (select (arr!49296 a!2792) i!951)))))

(declare-fun b!1538377 () Bool)

(assert (=> b!1538377 (= e!855962 false)))

(declare-fun lt!664828 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538377 (= lt!664828 (nextIndex!0 index!463 x!510 mask!2480))))

(assert (= (and start!131180 res!1055491) b!1538373))

(assert (= (and b!1538373 res!1055492) b!1538376))

(assert (= (and b!1538376 res!1055486) b!1538370))

(assert (= (and b!1538370 res!1055485) b!1538374))

(assert (= (and b!1538374 res!1055487) b!1538369))

(assert (= (and b!1538369 res!1055489) b!1538375))

(assert (= (and b!1538375 res!1055488) b!1538371))

(assert (= (and b!1538371 res!1055490) b!1538372))

(assert (= (and b!1538372 res!1055493) b!1538377))

(declare-fun m!1420845 () Bool)

(assert (=> b!1538369 m!1420845))

(declare-fun m!1420847 () Bool)

(assert (=> b!1538377 m!1420847))

(declare-fun m!1420849 () Bool)

(assert (=> b!1538370 m!1420849))

(assert (=> b!1538370 m!1420849))

(declare-fun m!1420851 () Bool)

(assert (=> b!1538370 m!1420851))

(declare-fun m!1420853 () Bool)

(assert (=> b!1538375 m!1420853))

(assert (=> b!1538371 m!1420849))

(assert (=> b!1538371 m!1420849))

(declare-fun m!1420855 () Bool)

(assert (=> b!1538371 m!1420855))

(declare-fun m!1420857 () Bool)

(assert (=> start!131180 m!1420857))

(declare-fun m!1420859 () Bool)

(assert (=> start!131180 m!1420859))

(declare-fun m!1420861 () Bool)

(assert (=> b!1538374 m!1420861))

(declare-fun m!1420863 () Bool)

(assert (=> b!1538372 m!1420863))

(assert (=> b!1538372 m!1420849))

(declare-fun m!1420865 () Bool)

(assert (=> b!1538376 m!1420865))

(assert (=> b!1538376 m!1420865))

(declare-fun m!1420867 () Bool)

(assert (=> b!1538376 m!1420867))

(push 1)

(assert (not start!131180))

(assert (not b!1538371))

(assert (not b!1538374))

(assert (not b!1538377))

(assert (not b!1538369))

(assert (not b!1538370))

(assert (not b!1538376))

(check-sat)

