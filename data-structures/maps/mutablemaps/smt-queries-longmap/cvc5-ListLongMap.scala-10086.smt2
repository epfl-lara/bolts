; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118798 () Bool)

(assert start!118798)

(declare-fun b!1387721 () Bool)

(declare-fun e!786124 () Bool)

(assert (=> b!1387721 (= e!786124 false)))

(declare-datatypes ((Unit!46336 0))(
  ( (Unit!46337) )
))
(declare-fun lt!609989 () Unit!46336)

(declare-fun e!786125 () Unit!46336)

(assert (=> b!1387721 (= lt!609989 e!786125)))

(declare-fun c!129062 () Bool)

(declare-fun e!786122 () Bool)

(assert (=> b!1387721 (= c!129062 e!786122)))

(declare-fun res!928487 () Bool)

(assert (=> b!1387721 (=> (not res!928487) (not e!786122))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1387721 (= res!928487 (not (= startIndex!16 i!1065)))))

(declare-fun b!1387722 () Bool)

(declare-fun res!928489 () Bool)

(assert (=> b!1387722 (=> (not res!928489) (not e!786124))))

(declare-datatypes ((array!94887 0))(
  ( (array!94888 (arr!45814 (Array (_ BitVec 32) (_ BitVec 64))) (size!46365 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94887)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1387722 (= res!928489 (validKeyInArray!0 (select (arr!45814 a!2938) i!1065)))))

(declare-fun b!1387723 () Bool)

(declare-fun res!928486 () Bool)

(assert (=> b!1387723 (=> (not res!928486) (not e!786124))))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1387723 (= res!928486 (and (= (size!46365 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46365 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46365 a!2938))))))

(declare-fun b!1387724 () Bool)

(declare-fun res!928491 () Bool)

(assert (=> b!1387724 (=> (not res!928491) (not e!786124))))

(assert (=> b!1387724 (= res!928491 (and (not (= (select (arr!45814 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45814 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1387725 () Bool)

(declare-fun Unit!46338 () Unit!46336)

(assert (=> b!1387725 (= e!786125 Unit!46338)))

(declare-fun b!1387726 () Bool)

(declare-fun res!928488 () Bool)

(assert (=> b!1387726 (=> (not res!928488) (not e!786124))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94887 (_ BitVec 32)) Bool)

(assert (=> b!1387726 (= res!928488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1387727 () Bool)

(declare-fun res!928490 () Bool)

(assert (=> b!1387727 (=> (not res!928490) (not e!786124))))

(declare-datatypes ((List!32522 0))(
  ( (Nil!32519) (Cons!32518 (h!33730 (_ BitVec 64)) (t!47223 List!32522)) )
))
(declare-fun arrayNoDuplicates!0 (array!94887 (_ BitVec 32) List!32522) Bool)

(assert (=> b!1387727 (= res!928490 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32519))))

(declare-fun b!1387728 () Bool)

(declare-fun lt!609991 () Unit!46336)

(assert (=> b!1387728 (= e!786125 lt!609991)))

(declare-fun lt!609990 () Unit!46336)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94887 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46336)

(assert (=> b!1387728 (= lt!609990 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10179 0))(
  ( (MissingZero!10179 (index!43086 (_ BitVec 32))) (Found!10179 (index!43087 (_ BitVec 32))) (Intermediate!10179 (undefined!10991 Bool) (index!43088 (_ BitVec 32)) (x!124712 (_ BitVec 32))) (Undefined!10179) (MissingVacant!10179 (index!43089 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94887 (_ BitVec 32)) SeekEntryResult!10179)

(assert (=> b!1387728 (= (seekEntryOrOpen!0 (select (arr!45814 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45814 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94888 (store (arr!45814 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46365 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94887 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46336)

(assert (=> b!1387728 (= lt!609991 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1387728 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1387729 () Bool)

(assert (=> b!1387729 (= e!786122 (validKeyInArray!0 (select (arr!45814 a!2938) startIndex!16)))))

(declare-fun res!928485 () Bool)

(assert (=> start!118798 (=> (not res!928485) (not e!786124))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118798 (= res!928485 (validMask!0 mask!2987))))

(assert (=> start!118798 e!786124))

(assert (=> start!118798 true))

(declare-fun array_inv!34759 (array!94887) Bool)

(assert (=> start!118798 (array_inv!34759 a!2938)))

(assert (= (and start!118798 res!928485) b!1387723))

(assert (= (and b!1387723 res!928486) b!1387722))

(assert (= (and b!1387722 res!928489) b!1387727))

(assert (= (and b!1387727 res!928490) b!1387726))

(assert (= (and b!1387726 res!928488) b!1387724))

(assert (= (and b!1387724 res!928491) b!1387721))

(assert (= (and b!1387721 res!928487) b!1387729))

(assert (= (and b!1387721 c!129062) b!1387728))

(assert (= (and b!1387721 (not c!129062)) b!1387725))

(declare-fun m!1273427 () Bool)

(assert (=> b!1387722 m!1273427))

(assert (=> b!1387722 m!1273427))

(declare-fun m!1273429 () Bool)

(assert (=> b!1387722 m!1273429))

(declare-fun m!1273431 () Bool)

(assert (=> b!1387726 m!1273431))

(declare-fun m!1273433 () Bool)

(assert (=> start!118798 m!1273433))

(declare-fun m!1273435 () Bool)

(assert (=> start!118798 m!1273435))

(assert (=> b!1387724 m!1273427))

(declare-fun m!1273437 () Bool)

(assert (=> b!1387727 m!1273437))

(declare-fun m!1273439 () Bool)

(assert (=> b!1387728 m!1273439))

(declare-fun m!1273441 () Bool)

(assert (=> b!1387728 m!1273441))

(assert (=> b!1387728 m!1273441))

(declare-fun m!1273443 () Bool)

(assert (=> b!1387728 m!1273443))

(declare-fun m!1273445 () Bool)

(assert (=> b!1387728 m!1273445))

(declare-fun m!1273447 () Bool)

(assert (=> b!1387728 m!1273447))

(declare-fun m!1273449 () Bool)

(assert (=> b!1387728 m!1273449))

(declare-fun m!1273451 () Bool)

(assert (=> b!1387728 m!1273451))

(assert (=> b!1387728 m!1273449))

(declare-fun m!1273453 () Bool)

(assert (=> b!1387728 m!1273453))

(assert (=> b!1387729 m!1273449))

(assert (=> b!1387729 m!1273449))

(declare-fun m!1273455 () Bool)

(assert (=> b!1387729 m!1273455))

(push 1)

(assert (not b!1387726))

(assert (not b!1387728))

(assert (not b!1387722))

(assert (not b!1387727))

(assert (not b!1387729))

(assert (not start!118798))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

