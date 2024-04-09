; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44302 () Bool)

(assert start!44302)

(declare-fun b!486877 () Bool)

(declare-fun res!290418 () Bool)

(declare-fun e!286533 () Bool)

(assert (=> b!486877 (=> (not res!290418) (not e!286533))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486877 (= res!290418 (validKeyInArray!0 k!2280))))

(declare-fun b!486878 () Bool)

(declare-fun res!290414 () Bool)

(assert (=> b!486878 (=> (not res!290414) (not e!286533))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31513 0))(
  ( (array!31514 (arr!15147 (Array (_ BitVec 32) (_ BitVec 64))) (size!15511 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31513)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!486878 (= res!290414 (and (= (size!15511 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15511 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15511 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486879 () Bool)

(declare-fun e!286534 () Bool)

(assert (=> b!486879 (= e!286533 e!286534)))

(declare-fun res!290419 () Bool)

(assert (=> b!486879 (=> (not res!290419) (not e!286534))))

(declare-datatypes ((SeekEntryResult!3621 0))(
  ( (MissingZero!3621 (index!16663 (_ BitVec 32))) (Found!3621 (index!16664 (_ BitVec 32))) (Intermediate!3621 (undefined!4433 Bool) (index!16665 (_ BitVec 32)) (x!45820 (_ BitVec 32))) (Undefined!3621) (MissingVacant!3621 (index!16666 (_ BitVec 32))) )
))
(declare-fun lt!219895 () SeekEntryResult!3621)

(assert (=> b!486879 (= res!290419 (or (= lt!219895 (MissingZero!3621 i!1204)) (= lt!219895 (MissingVacant!3621 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31513 (_ BitVec 32)) SeekEntryResult!3621)

(assert (=> b!486879 (= lt!219895 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!486880 () Bool)

(assert (=> b!486880 (= e!286534 (not (bvsge mask!3524 #b00000000000000000000000000000000)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31513 (_ BitVec 32)) Bool)

(assert (=> b!486880 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14180 0))(
  ( (Unit!14181) )
))
(declare-fun lt!219896 () Unit!14180)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31513 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14180)

(assert (=> b!486880 (= lt!219896 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!486881 () Bool)

(declare-fun res!290417 () Bool)

(assert (=> b!486881 (=> (not res!290417) (not e!286533))))

(assert (=> b!486881 (= res!290417 (validKeyInArray!0 (select (arr!15147 a!3235) j!176)))))

(declare-fun res!290420 () Bool)

(assert (=> start!44302 (=> (not res!290420) (not e!286533))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44302 (= res!290420 (validMask!0 mask!3524))))

(assert (=> start!44302 e!286533))

(assert (=> start!44302 true))

(declare-fun array_inv!10921 (array!31513) Bool)

(assert (=> start!44302 (array_inv!10921 a!3235)))

(declare-fun b!486882 () Bool)

(declare-fun res!290416 () Bool)

(assert (=> b!486882 (=> (not res!290416) (not e!286533))))

(declare-fun arrayContainsKey!0 (array!31513 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486882 (= res!290416 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486883 () Bool)

(declare-fun res!290415 () Bool)

(assert (=> b!486883 (=> (not res!290415) (not e!286534))))

(assert (=> b!486883 (= res!290415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486884 () Bool)

(declare-fun res!290413 () Bool)

(assert (=> b!486884 (=> (not res!290413) (not e!286534))))

(declare-datatypes ((List!9358 0))(
  ( (Nil!9355) (Cons!9354 (h!10210 (_ BitVec 64)) (t!15594 List!9358)) )
))
(declare-fun arrayNoDuplicates!0 (array!31513 (_ BitVec 32) List!9358) Bool)

(assert (=> b!486884 (= res!290413 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9355))))

(assert (= (and start!44302 res!290420) b!486878))

(assert (= (and b!486878 res!290414) b!486881))

(assert (= (and b!486881 res!290417) b!486877))

(assert (= (and b!486877 res!290418) b!486882))

(assert (= (and b!486882 res!290416) b!486879))

(assert (= (and b!486879 res!290419) b!486883))

(assert (= (and b!486883 res!290415) b!486884))

(assert (= (and b!486884 res!290413) b!486880))

(declare-fun m!466765 () Bool)

(assert (=> b!486879 m!466765))

(declare-fun m!466767 () Bool)

(assert (=> b!486883 m!466767))

(declare-fun m!466769 () Bool)

(assert (=> start!44302 m!466769))

(declare-fun m!466771 () Bool)

(assert (=> start!44302 m!466771))

(declare-fun m!466773 () Bool)

(assert (=> b!486877 m!466773))

(declare-fun m!466775 () Bool)

(assert (=> b!486882 m!466775))

(declare-fun m!466777 () Bool)

(assert (=> b!486881 m!466777))

(assert (=> b!486881 m!466777))

(declare-fun m!466779 () Bool)

(assert (=> b!486881 m!466779))

(declare-fun m!466781 () Bool)

(assert (=> b!486880 m!466781))

(declare-fun m!466783 () Bool)

(assert (=> b!486880 m!466783))

(declare-fun m!466785 () Bool)

(assert (=> b!486884 m!466785))

(push 1)

