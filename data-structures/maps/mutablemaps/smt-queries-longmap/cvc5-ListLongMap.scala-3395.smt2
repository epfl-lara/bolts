; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46852 () Bool)

(assert start!46852)

(declare-fun b!516862 () Bool)

(declare-fun res!316396 () Bool)

(declare-fun e!301629 () Bool)

(assert (=> b!516862 (=> (not res!316396) (not e!301629))))

(declare-datatypes ((array!33067 0))(
  ( (array!33068 (arr!15897 (Array (_ BitVec 32) (_ BitVec 64))) (size!16261 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33067)

(declare-datatypes ((List!10108 0))(
  ( (Nil!10105) (Cons!10104 (h!11005 (_ BitVec 64)) (t!16344 List!10108)) )
))
(declare-fun arrayNoDuplicates!0 (array!33067 (_ BitVec 32) List!10108) Bool)

(assert (=> b!516862 (= res!316396 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10105))))

(declare-fun b!516863 () Bool)

(declare-fun res!316399 () Bool)

(declare-fun e!301633 () Bool)

(assert (=> b!516863 (=> (not res!316399) (not e!301633))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516863 (= res!316399 (validKeyInArray!0 (select (arr!15897 a!3235) j!176)))))

(declare-fun b!516864 () Bool)

(assert (=> b!516864 (= e!301633 e!301629)))

(declare-fun res!316398 () Bool)

(assert (=> b!516864 (=> (not res!316398) (not e!301629))))

(declare-datatypes ((SeekEntryResult!4371 0))(
  ( (MissingZero!4371 (index!19672 (_ BitVec 32))) (Found!4371 (index!19673 (_ BitVec 32))) (Intermediate!4371 (undefined!5183 Bool) (index!19674 (_ BitVec 32)) (x!48663 (_ BitVec 32))) (Undefined!4371) (MissingVacant!4371 (index!19675 (_ BitVec 32))) )
))
(declare-fun lt!236656 () SeekEntryResult!4371)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!516864 (= res!316398 (or (= lt!236656 (MissingZero!4371 i!1204)) (= lt!236656 (MissingVacant!4371 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33067 (_ BitVec 32)) SeekEntryResult!4371)

(assert (=> b!516864 (= lt!236656 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!516865 () Bool)

(declare-fun res!316393 () Bool)

(assert (=> b!516865 (=> (not res!316393) (not e!301629))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33067 (_ BitVec 32)) Bool)

(assert (=> b!516865 (= res!316393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!516866 () Bool)

(declare-fun res!316397 () Bool)

(declare-fun e!301630 () Bool)

(assert (=> b!516866 (=> res!316397 e!301630)))

(declare-fun lt!236660 () SeekEntryResult!4371)

(assert (=> b!516866 (= res!316397 (or (undefined!5183 lt!236660) (not (is-Intermediate!4371 lt!236660))))))

(declare-fun b!516867 () Bool)

(assert (=> b!516867 (= e!301630 true)))

(assert (=> b!516867 (and (bvslt (x!48663 lt!236660) #b01111111111111111111111111111110) (or (= (select (arr!15897 a!3235) (index!19674 lt!236660)) (select (arr!15897 a!3235) j!176)) (= (select (arr!15897 a!3235) (index!19674 lt!236660)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15897 a!3235) (index!19674 lt!236660)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516868 () Bool)

(assert (=> b!516868 (= e!301629 (not e!301630))))

(declare-fun res!316402 () Bool)

(assert (=> b!516868 (=> res!316402 e!301630)))

(declare-fun lt!236657 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33067 (_ BitVec 32)) SeekEntryResult!4371)

(assert (=> b!516868 (= res!316402 (= lt!236660 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236657 (select (store (arr!15897 a!3235) i!1204 k!2280) j!176) (array!33068 (store (arr!15897 a!3235) i!1204 k!2280) (size!16261 a!3235)) mask!3524)))))

(declare-fun lt!236659 () (_ BitVec 32))

(assert (=> b!516868 (= lt!236660 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236659 (select (arr!15897 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516868 (= lt!236657 (toIndex!0 (select (store (arr!15897 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!516868 (= lt!236659 (toIndex!0 (select (arr!15897 a!3235) j!176) mask!3524))))

(declare-fun e!301631 () Bool)

(assert (=> b!516868 e!301631))

(declare-fun res!316401 () Bool)

(assert (=> b!516868 (=> (not res!316401) (not e!301631))))

(assert (=> b!516868 (= res!316401 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15992 0))(
  ( (Unit!15993) )
))
(declare-fun lt!236658 () Unit!15992)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33067 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15992)

(assert (=> b!516868 (= lt!236658 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!516869 () Bool)

(assert (=> b!516869 (= e!301631 (= (seekEntryOrOpen!0 (select (arr!15897 a!3235) j!176) a!3235 mask!3524) (Found!4371 j!176)))))

(declare-fun b!516871 () Bool)

(declare-fun res!316403 () Bool)

(assert (=> b!516871 (=> (not res!316403) (not e!301633))))

(assert (=> b!516871 (= res!316403 (and (= (size!16261 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16261 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16261 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!516872 () Bool)

(declare-fun res!316400 () Bool)

(assert (=> b!516872 (=> (not res!316400) (not e!301633))))

(declare-fun arrayContainsKey!0 (array!33067 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!516872 (= res!316400 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!516870 () Bool)

(declare-fun res!316395 () Bool)

(assert (=> b!516870 (=> (not res!316395) (not e!301633))))

(assert (=> b!516870 (= res!316395 (validKeyInArray!0 k!2280))))

(declare-fun res!316394 () Bool)

(assert (=> start!46852 (=> (not res!316394) (not e!301633))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46852 (= res!316394 (validMask!0 mask!3524))))

(assert (=> start!46852 e!301633))

(assert (=> start!46852 true))

(declare-fun array_inv!11671 (array!33067) Bool)

(assert (=> start!46852 (array_inv!11671 a!3235)))

(assert (= (and start!46852 res!316394) b!516871))

(assert (= (and b!516871 res!316403) b!516863))

(assert (= (and b!516863 res!316399) b!516870))

(assert (= (and b!516870 res!316395) b!516872))

(assert (= (and b!516872 res!316400) b!516864))

(assert (= (and b!516864 res!316398) b!516865))

(assert (= (and b!516865 res!316393) b!516862))

(assert (= (and b!516862 res!316396) b!516868))

(assert (= (and b!516868 res!316401) b!516869))

(assert (= (and b!516868 (not res!316402)) b!516866))

(assert (= (and b!516866 (not res!316397)) b!516867))

(declare-fun m!498349 () Bool)

(assert (=> b!516869 m!498349))

(assert (=> b!516869 m!498349))

(declare-fun m!498351 () Bool)

(assert (=> b!516869 m!498351))

(declare-fun m!498353 () Bool)

(assert (=> start!46852 m!498353))

(declare-fun m!498355 () Bool)

(assert (=> start!46852 m!498355))

(declare-fun m!498357 () Bool)

(assert (=> b!516867 m!498357))

(assert (=> b!516867 m!498349))

(declare-fun m!498359 () Bool)

(assert (=> b!516865 m!498359))

(declare-fun m!498361 () Bool)

(assert (=> b!516862 m!498361))

(declare-fun m!498363 () Bool)

(assert (=> b!516864 m!498363))

(assert (=> b!516863 m!498349))

(assert (=> b!516863 m!498349))

(declare-fun m!498365 () Bool)

(assert (=> b!516863 m!498365))

(declare-fun m!498367 () Bool)

(assert (=> b!516870 m!498367))

(declare-fun m!498369 () Bool)

(assert (=> b!516868 m!498369))

(declare-fun m!498371 () Bool)

(assert (=> b!516868 m!498371))

(declare-fun m!498373 () Bool)

(assert (=> b!516868 m!498373))

(assert (=> b!516868 m!498349))

(assert (=> b!516868 m!498349))

(declare-fun m!498375 () Bool)

(assert (=> b!516868 m!498375))

(declare-fun m!498377 () Bool)

(assert (=> b!516868 m!498377))

(assert (=> b!516868 m!498373))

(declare-fun m!498379 () Bool)

(assert (=> b!516868 m!498379))

(assert (=> b!516868 m!498349))

(declare-fun m!498381 () Bool)

(assert (=> b!516868 m!498381))

(assert (=> b!516868 m!498373))

(declare-fun m!498383 () Bool)

(assert (=> b!516868 m!498383))

(declare-fun m!498385 () Bool)

(assert (=> b!516872 m!498385))

(push 1)

