; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44764 () Bool)

(assert start!44764)

(declare-fun b!491085 () Bool)

(declare-fun res!294176 () Bool)

(declare-fun e!288578 () Bool)

(assert (=> b!491085 (=> (not res!294176) (not e!288578))))

(declare-datatypes ((array!31783 0))(
  ( (array!31784 (arr!15276 (Array (_ BitVec 32) (_ BitVec 64))) (size!15640 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31783)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31783 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491085 (= res!294176 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!491086 () Bool)

(declare-fun res!294175 () Bool)

(declare-fun e!288579 () Bool)

(assert (=> b!491086 (=> (not res!294175) (not e!288579))))

(declare-datatypes ((List!9487 0))(
  ( (Nil!9484) (Cons!9483 (h!10345 (_ BitVec 64)) (t!15723 List!9487)) )
))
(declare-fun arrayNoDuplicates!0 (array!31783 (_ BitVec 32) List!9487) Bool)

(assert (=> b!491086 (= res!294175 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9484))))

(declare-fun res!294174 () Bool)

(assert (=> start!44764 (=> (not res!294174) (not e!288578))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44764 (= res!294174 (validMask!0 mask!3524))))

(assert (=> start!44764 e!288578))

(assert (=> start!44764 true))

(declare-fun array_inv!11050 (array!31783) Bool)

(assert (=> start!44764 (array_inv!11050 a!3235)))

(declare-fun b!491087 () Bool)

(declare-fun res!294179 () Bool)

(assert (=> b!491087 (=> (not res!294179) (not e!288578))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491087 (= res!294179 (validKeyInArray!0 k!2280))))

(declare-fun b!491088 () Bool)

(declare-fun res!294178 () Bool)

(assert (=> b!491088 (=> (not res!294178) (not e!288579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31783 (_ BitVec 32)) Bool)

(assert (=> b!491088 (= res!294178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491089 () Bool)

(assert (=> b!491089 (= e!288578 e!288579)))

(declare-fun res!294173 () Bool)

(assert (=> b!491089 (=> (not res!294173) (not e!288579))))

(declare-datatypes ((SeekEntryResult!3750 0))(
  ( (MissingZero!3750 (index!17179 (_ BitVec 32))) (Found!3750 (index!17180 (_ BitVec 32))) (Intermediate!3750 (undefined!4562 Bool) (index!17181 (_ BitVec 32)) (x!46299 (_ BitVec 32))) (Undefined!3750) (MissingVacant!3750 (index!17182 (_ BitVec 32))) )
))
(declare-fun lt!222014 () SeekEntryResult!3750)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!491089 (= res!294173 (or (= lt!222014 (MissingZero!3750 i!1204)) (= lt!222014 (MissingVacant!3750 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31783 (_ BitVec 32)) SeekEntryResult!3750)

(assert (=> b!491089 (= lt!222014 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!491090 () Bool)

(declare-fun e!288580 () Bool)

(assert (=> b!491090 (= e!288579 (not e!288580))))

(declare-fun res!294177 () Bool)

(assert (=> b!491090 (=> res!294177 e!288580)))

(declare-fun lt!222011 () array!31783)

(declare-fun lt!222013 () (_ BitVec 64))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31783 (_ BitVec 32)) SeekEntryResult!3750)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491090 (= res!294177 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15276 a!3235) j!176) mask!3524) (select (arr!15276 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!222013 mask!3524) lt!222013 lt!222011 mask!3524))))))

(assert (=> b!491090 (= lt!222013 (select (store (arr!15276 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!491090 (= lt!222011 (array!31784 (store (arr!15276 a!3235) i!1204 k!2280) (size!15640 a!3235)))))

(declare-fun lt!222010 () SeekEntryResult!3750)

(assert (=> b!491090 (= lt!222010 (Found!3750 j!176))))

(assert (=> b!491090 (= lt!222010 (seekEntryOrOpen!0 (select (arr!15276 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!491090 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14438 0))(
  ( (Unit!14439) )
))
(declare-fun lt!222012 () Unit!14438)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31783 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14438)

(assert (=> b!491090 (= lt!222012 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491091 () Bool)

(declare-fun res!294172 () Bool)

(assert (=> b!491091 (=> (not res!294172) (not e!288578))))

(assert (=> b!491091 (= res!294172 (and (= (size!15640 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15640 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15640 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!491092 () Bool)

(assert (=> b!491092 (= e!288580 true)))

(assert (=> b!491092 (= lt!222010 (seekEntryOrOpen!0 lt!222013 lt!222011 mask!3524))))

(declare-fun lt!222009 () Unit!14438)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31783 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14438)

(assert (=> b!491092 (= lt!222009 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!491093 () Bool)

(declare-fun res!294171 () Bool)

(assert (=> b!491093 (=> (not res!294171) (not e!288578))))

(assert (=> b!491093 (= res!294171 (validKeyInArray!0 (select (arr!15276 a!3235) j!176)))))

(assert (= (and start!44764 res!294174) b!491091))

(assert (= (and b!491091 res!294172) b!491093))

(assert (= (and b!491093 res!294171) b!491087))

(assert (= (and b!491087 res!294179) b!491085))

(assert (= (and b!491085 res!294176) b!491089))

(assert (= (and b!491089 res!294173) b!491088))

(assert (= (and b!491088 res!294178) b!491086))

(assert (= (and b!491086 res!294175) b!491090))

(assert (= (and b!491090 (not res!294177)) b!491092))

(declare-fun m!471625 () Bool)

(assert (=> b!491092 m!471625))

(declare-fun m!471627 () Bool)

(assert (=> b!491092 m!471627))

(declare-fun m!471629 () Bool)

(assert (=> start!44764 m!471629))

(declare-fun m!471631 () Bool)

(assert (=> start!44764 m!471631))

(declare-fun m!471633 () Bool)

(assert (=> b!491087 m!471633))

(declare-fun m!471635 () Bool)

(assert (=> b!491085 m!471635))

(declare-fun m!471637 () Bool)

(assert (=> b!491088 m!471637))

(declare-fun m!471639 () Bool)

(assert (=> b!491086 m!471639))

(declare-fun m!471641 () Bool)

(assert (=> b!491090 m!471641))

(declare-fun m!471643 () Bool)

(assert (=> b!491090 m!471643))

(declare-fun m!471645 () Bool)

(assert (=> b!491090 m!471645))

(declare-fun m!471647 () Bool)

(assert (=> b!491090 m!471647))

(declare-fun m!471649 () Bool)

(assert (=> b!491090 m!471649))

(declare-fun m!471651 () Bool)

(assert (=> b!491090 m!471651))

(declare-fun m!471653 () Bool)

(assert (=> b!491090 m!471653))

(declare-fun m!471655 () Bool)

(assert (=> b!491090 m!471655))

(assert (=> b!491090 m!471653))

(assert (=> b!491090 m!471651))

(assert (=> b!491090 m!471653))

(declare-fun m!471657 () Bool)

(assert (=> b!491090 m!471657))

(assert (=> b!491090 m!471653))

(declare-fun m!471659 () Bool)

(assert (=> b!491090 m!471659))

(assert (=> b!491090 m!471641))

(declare-fun m!471661 () Bool)

(assert (=> b!491089 m!471661))

(assert (=> b!491093 m!471653))

(assert (=> b!491093 m!471653))

(declare-fun m!471663 () Bool)

(assert (=> b!491093 m!471663))

(push 1)

