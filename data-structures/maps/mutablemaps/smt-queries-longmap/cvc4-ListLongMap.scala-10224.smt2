; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120440 () Bool)

(assert start!120440)

(declare-fun b!1401522 () Bool)

(declare-fun res!940150 () Bool)

(declare-fun e!793624 () Bool)

(assert (=> b!1401522 (=> (not res!940150) (not e!793624))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95767 0))(
  ( (array!95768 (arr!46230 (Array (_ BitVec 32) (_ BitVec 64))) (size!46781 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95767)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1401522 (= res!940150 (and (= (size!46781 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46781 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46781 a!2901)) (not (= i!1037 j!112))))))

(declare-fun e!793627 () Bool)

(declare-fun b!1401523 () Bool)

(declare-datatypes ((SeekEntryResult!10569 0))(
  ( (MissingZero!10569 (index!44652 (_ BitVec 32))) (Found!10569 (index!44653 (_ BitVec 32))) (Intermediate!10569 (undefined!11381 Bool) (index!44654 (_ BitVec 32)) (x!126287 (_ BitVec 32))) (Undefined!10569) (MissingVacant!10569 (index!44655 (_ BitVec 32))) )
))
(declare-fun lt!616997 () SeekEntryResult!10569)

(declare-fun lt!616993 () (_ BitVec 64))

(declare-fun lt!616999 () array!95767)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95767 (_ BitVec 32)) SeekEntryResult!10569)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95767 (_ BitVec 32)) SeekEntryResult!10569)

(assert (=> b!1401523 (= e!793627 (= (seekEntryOrOpen!0 lt!616993 lt!616999 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126287 lt!616997) (index!44654 lt!616997) (index!44654 lt!616997) (select (arr!46230 a!2901) j!112) lt!616999 mask!2840)))))

(declare-fun b!1401524 () Bool)

(declare-fun res!940145 () Bool)

(assert (=> b!1401524 (=> (not res!940145) (not e!793624))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401524 (= res!940145 (validKeyInArray!0 (select (arr!46230 a!2901) i!1037)))))

(declare-fun b!1401525 () Bool)

(declare-fun res!940146 () Bool)

(assert (=> b!1401525 (=> (not res!940146) (not e!793624))))

(assert (=> b!1401525 (= res!940146 (validKeyInArray!0 (select (arr!46230 a!2901) j!112)))))

(declare-fun b!1401526 () Bool)

(declare-fun res!940144 () Bool)

(assert (=> b!1401526 (=> (not res!940144) (not e!793624))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95767 (_ BitVec 32)) Bool)

(assert (=> b!1401526 (= res!940144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun e!793625 () Bool)

(declare-fun b!1401527 () Bool)

(assert (=> b!1401527 (= e!793625 (= (seekEntryOrOpen!0 (select (arr!46230 a!2901) j!112) a!2901 mask!2840) (Found!10569 j!112)))))

(declare-fun b!1401528 () Bool)

(declare-fun e!793622 () Bool)

(declare-fun e!793623 () Bool)

(assert (=> b!1401528 (= e!793622 e!793623)))

(declare-fun res!940151 () Bool)

(assert (=> b!1401528 (=> res!940151 e!793623)))

(declare-fun lt!616992 () SeekEntryResult!10569)

(assert (=> b!1401528 (= res!940151 (or (= lt!616992 lt!616997) (not (is-Intermediate!10569 lt!616997))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95767 (_ BitVec 32)) SeekEntryResult!10569)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401528 (= lt!616997 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616993 mask!2840) lt!616993 lt!616999 mask!2840))))

(assert (=> b!1401528 (= lt!616993 (select (store (arr!46230 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401528 (= lt!616999 (array!95768 (store (arr!46230 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46781 a!2901)))))

(declare-fun b!1401529 () Bool)

(declare-fun res!940143 () Bool)

(assert (=> b!1401529 (=> (not res!940143) (not e!793624))))

(declare-datatypes ((List!32929 0))(
  ( (Nil!32926) (Cons!32925 (h!34173 (_ BitVec 64)) (t!47630 List!32929)) )
))
(declare-fun arrayNoDuplicates!0 (array!95767 (_ BitVec 32) List!32929) Bool)

(assert (=> b!1401529 (= res!940143 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32926))))

(declare-fun b!1401530 () Bool)

(assert (=> b!1401530 (= e!793624 (not e!793622))))

(declare-fun res!940149 () Bool)

(assert (=> b!1401530 (=> res!940149 e!793622)))

(assert (=> b!1401530 (= res!940149 (or (not (is-Intermediate!10569 lt!616992)) (undefined!11381 lt!616992)))))

(assert (=> b!1401530 e!793625))

(declare-fun res!940147 () Bool)

(assert (=> b!1401530 (=> (not res!940147) (not e!793625))))

(assert (=> b!1401530 (= res!940147 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47092 0))(
  ( (Unit!47093) )
))
(declare-fun lt!616995 () Unit!47092)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95767 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47092)

(assert (=> b!1401530 (= lt!616995 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!616994 () (_ BitVec 32))

(assert (=> b!1401530 (= lt!616992 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616994 (select (arr!46230 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1401530 (= lt!616994 (toIndex!0 (select (arr!46230 a!2901) j!112) mask!2840))))

(declare-fun res!940142 () Bool)

(assert (=> start!120440 (=> (not res!940142) (not e!793624))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120440 (= res!940142 (validMask!0 mask!2840))))

(assert (=> start!120440 e!793624))

(assert (=> start!120440 true))

(declare-fun array_inv!35175 (array!95767) Bool)

(assert (=> start!120440 (array_inv!35175 a!2901)))

(declare-fun b!1401531 () Bool)

(declare-fun e!793626 () Bool)

(assert (=> b!1401531 (= e!793626 true)))

(declare-fun lt!616996 () SeekEntryResult!10569)

(assert (=> b!1401531 (= lt!616996 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616994 lt!616993 lt!616999 mask!2840))))

(declare-fun b!1401532 () Bool)

(assert (=> b!1401532 (= e!793623 e!793626)))

(declare-fun res!940148 () Bool)

(assert (=> b!1401532 (=> res!940148 e!793626)))

(assert (=> b!1401532 (= res!940148 (or (bvslt (x!126287 lt!616992) #b00000000000000000000000000000000) (bvsgt (x!126287 lt!616992) #b01111111111111111111111111111110) (bvslt (x!126287 lt!616997) #b00000000000000000000000000000000) (bvsgt (x!126287 lt!616997) #b01111111111111111111111111111110) (bvslt lt!616994 #b00000000000000000000000000000000) (bvsge lt!616994 (size!46781 a!2901)) (bvslt (index!44654 lt!616992) #b00000000000000000000000000000000) (bvsge (index!44654 lt!616992) (size!46781 a!2901)) (bvslt (index!44654 lt!616997) #b00000000000000000000000000000000) (bvsge (index!44654 lt!616997) (size!46781 a!2901)) (not (= lt!616992 (Intermediate!10569 false (index!44654 lt!616992) (x!126287 lt!616992)))) (not (= lt!616997 (Intermediate!10569 false (index!44654 lt!616997) (x!126287 lt!616997))))))))

(assert (=> b!1401532 e!793627))

(declare-fun res!940152 () Bool)

(assert (=> b!1401532 (=> (not res!940152) (not e!793627))))

(assert (=> b!1401532 (= res!940152 (and (not (undefined!11381 lt!616997)) (= (index!44654 lt!616997) i!1037) (bvslt (x!126287 lt!616997) (x!126287 lt!616992)) (= (select (store (arr!46230 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44654 lt!616997)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616998 () Unit!47092)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95767 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47092)

(assert (=> b!1401532 (= lt!616998 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616994 (x!126287 lt!616992) (index!44654 lt!616992) (x!126287 lt!616997) (index!44654 lt!616997) (undefined!11381 lt!616997) mask!2840))))

(assert (= (and start!120440 res!940142) b!1401522))

(assert (= (and b!1401522 res!940150) b!1401524))

(assert (= (and b!1401524 res!940145) b!1401525))

(assert (= (and b!1401525 res!940146) b!1401526))

(assert (= (and b!1401526 res!940144) b!1401529))

(assert (= (and b!1401529 res!940143) b!1401530))

(assert (= (and b!1401530 res!940147) b!1401527))

(assert (= (and b!1401530 (not res!940149)) b!1401528))

(assert (= (and b!1401528 (not res!940151)) b!1401532))

(assert (= (and b!1401532 res!940152) b!1401523))

(assert (= (and b!1401532 (not res!940148)) b!1401531))

(declare-fun m!1289421 () Bool)

(assert (=> b!1401525 m!1289421))

(assert (=> b!1401525 m!1289421))

(declare-fun m!1289423 () Bool)

(assert (=> b!1401525 m!1289423))

(declare-fun m!1289425 () Bool)

(assert (=> b!1401532 m!1289425))

(declare-fun m!1289427 () Bool)

(assert (=> b!1401532 m!1289427))

(declare-fun m!1289429 () Bool)

(assert (=> b!1401532 m!1289429))

(declare-fun m!1289431 () Bool)

(assert (=> b!1401523 m!1289431))

(assert (=> b!1401523 m!1289421))

(assert (=> b!1401523 m!1289421))

(declare-fun m!1289433 () Bool)

(assert (=> b!1401523 m!1289433))

(declare-fun m!1289435 () Bool)

(assert (=> start!120440 m!1289435))

(declare-fun m!1289437 () Bool)

(assert (=> start!120440 m!1289437))

(assert (=> b!1401527 m!1289421))

(assert (=> b!1401527 m!1289421))

(declare-fun m!1289439 () Bool)

(assert (=> b!1401527 m!1289439))

(declare-fun m!1289441 () Bool)

(assert (=> b!1401524 m!1289441))

(assert (=> b!1401524 m!1289441))

(declare-fun m!1289443 () Bool)

(assert (=> b!1401524 m!1289443))

(declare-fun m!1289445 () Bool)

(assert (=> b!1401528 m!1289445))

(assert (=> b!1401528 m!1289445))

(declare-fun m!1289447 () Bool)

(assert (=> b!1401528 m!1289447))

(assert (=> b!1401528 m!1289425))

(declare-fun m!1289449 () Bool)

(assert (=> b!1401528 m!1289449))

(declare-fun m!1289451 () Bool)

(assert (=> b!1401531 m!1289451))

(declare-fun m!1289453 () Bool)

(assert (=> b!1401529 m!1289453))

(assert (=> b!1401530 m!1289421))

(declare-fun m!1289455 () Bool)

(assert (=> b!1401530 m!1289455))

(assert (=> b!1401530 m!1289421))

(assert (=> b!1401530 m!1289421))

(declare-fun m!1289457 () Bool)

(assert (=> b!1401530 m!1289457))

(declare-fun m!1289459 () Bool)

(assert (=> b!1401530 m!1289459))

(declare-fun m!1289461 () Bool)

(assert (=> b!1401530 m!1289461))

(declare-fun m!1289463 () Bool)

(assert (=> b!1401526 m!1289463))

(push 1)

