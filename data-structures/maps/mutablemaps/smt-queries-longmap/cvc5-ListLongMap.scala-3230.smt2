; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45196 () Bool)

(assert start!45196)

(declare-fun b!495697 () Bool)

(declare-fun res!298237 () Bool)

(declare-fun e!290767 () Bool)

(assert (=> b!495697 (=> (not res!298237) (not e!290767))))

(declare-datatypes ((array!32044 0))(
  ( (array!32045 (arr!15402 (Array (_ BitVec 32) (_ BitVec 64))) (size!15766 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32044)

(declare-datatypes ((List!9613 0))(
  ( (Nil!9610) (Cons!9609 (h!10480 (_ BitVec 64)) (t!15849 List!9613)) )
))
(declare-fun arrayNoDuplicates!0 (array!32044 (_ BitVec 32) List!9613) Bool)

(assert (=> b!495697 (= res!298237 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9610))))

(declare-fun b!495698 () Bool)

(declare-fun res!298244 () Bool)

(declare-fun e!290770 () Bool)

(assert (=> b!495698 (=> (not res!298244) (not e!290770))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!495698 (= res!298244 (and (= (size!15766 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15766 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15766 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!298243 () Bool)

(assert (=> start!45196 (=> (not res!298243) (not e!290770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45196 (= res!298243 (validMask!0 mask!3524))))

(assert (=> start!45196 e!290770))

(assert (=> start!45196 true))

(declare-fun array_inv!11176 (array!32044) Bool)

(assert (=> start!45196 (array_inv!11176 a!3235)))

(declare-fun b!495699 () Bool)

(declare-fun res!298234 () Bool)

(assert (=> b!495699 (=> (not res!298234) (not e!290770))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32044 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495699 (= res!298234 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!495700 () Bool)

(assert (=> b!495700 (= e!290770 e!290767)))

(declare-fun res!298236 () Bool)

(assert (=> b!495700 (=> (not res!298236) (not e!290767))))

(declare-datatypes ((SeekEntryResult!3876 0))(
  ( (MissingZero!3876 (index!17683 (_ BitVec 32))) (Found!3876 (index!17684 (_ BitVec 32))) (Intermediate!3876 (undefined!4688 Bool) (index!17685 (_ BitVec 32)) (x!46779 (_ BitVec 32))) (Undefined!3876) (MissingVacant!3876 (index!17686 (_ BitVec 32))) )
))
(declare-fun lt!224457 () SeekEntryResult!3876)

(assert (=> b!495700 (= res!298236 (or (= lt!224457 (MissingZero!3876 i!1204)) (= lt!224457 (MissingVacant!3876 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32044 (_ BitVec 32)) SeekEntryResult!3876)

(assert (=> b!495700 (= lt!224457 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!495701 () Bool)

(declare-fun res!298240 () Bool)

(assert (=> b!495701 (=> (not res!298240) (not e!290770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495701 (= res!298240 (validKeyInArray!0 (select (arr!15402 a!3235) j!176)))))

(declare-fun b!495702 () Bool)

(declare-fun res!298239 () Bool)

(assert (=> b!495702 (=> (not res!298239) (not e!290770))))

(assert (=> b!495702 (= res!298239 (validKeyInArray!0 k!2280))))

(declare-fun b!495703 () Bool)

(declare-fun res!298238 () Bool)

(declare-fun e!290769 () Bool)

(assert (=> b!495703 (=> res!298238 e!290769)))

(declare-fun lt!224458 () SeekEntryResult!3876)

(assert (=> b!495703 (= res!298238 (or (undefined!4688 lt!224458) (not (is-Intermediate!3876 lt!224458))))))

(declare-fun b!495704 () Bool)

(declare-fun res!298235 () Bool)

(assert (=> b!495704 (=> (not res!298235) (not e!290767))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32044 (_ BitVec 32)) Bool)

(assert (=> b!495704 (= res!298235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!495705 () Bool)

(assert (=> b!495705 (= e!290767 (not e!290769))))

(declare-fun res!298241 () Bool)

(assert (=> b!495705 (=> res!298241 e!290769)))

(declare-fun lt!224459 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32044 (_ BitVec 32)) SeekEntryResult!3876)

(assert (=> b!495705 (= res!298241 (= lt!224458 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224459 (select (store (arr!15402 a!3235) i!1204 k!2280) j!176) (array!32045 (store (arr!15402 a!3235) i!1204 k!2280) (size!15766 a!3235)) mask!3524)))))

(declare-fun lt!224455 () (_ BitVec 32))

(assert (=> b!495705 (= lt!224458 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224455 (select (arr!15402 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495705 (= lt!224459 (toIndex!0 (select (store (arr!15402 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!495705 (= lt!224455 (toIndex!0 (select (arr!15402 a!3235) j!176) mask!3524))))

(declare-fun e!290768 () Bool)

(assert (=> b!495705 e!290768))

(declare-fun res!298242 () Bool)

(assert (=> b!495705 (=> (not res!298242) (not e!290768))))

(assert (=> b!495705 (= res!298242 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14690 0))(
  ( (Unit!14691) )
))
(declare-fun lt!224456 () Unit!14690)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32044 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14690)

(assert (=> b!495705 (= lt!224456 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!495706 () Bool)

(assert (=> b!495706 (= e!290769 true)))

(assert (=> b!495706 (and (bvslt (x!46779 lt!224458) #b01111111111111111111111111111110) (or (= (select (arr!15402 a!3235) (index!17685 lt!224458)) (select (arr!15402 a!3235) j!176)) (= (select (arr!15402 a!3235) (index!17685 lt!224458)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15402 a!3235) (index!17685 lt!224458)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495707 () Bool)

(assert (=> b!495707 (= e!290768 (= (seekEntryOrOpen!0 (select (arr!15402 a!3235) j!176) a!3235 mask!3524) (Found!3876 j!176)))))

(assert (= (and start!45196 res!298243) b!495698))

(assert (= (and b!495698 res!298244) b!495701))

(assert (= (and b!495701 res!298240) b!495702))

(assert (= (and b!495702 res!298239) b!495699))

(assert (= (and b!495699 res!298234) b!495700))

(assert (= (and b!495700 res!298236) b!495704))

(assert (= (and b!495704 res!298235) b!495697))

(assert (= (and b!495697 res!298237) b!495705))

(assert (= (and b!495705 res!298242) b!495707))

(assert (= (and b!495705 (not res!298241)) b!495703))

(assert (= (and b!495703 (not res!298238)) b!495706))

(declare-fun m!476887 () Bool)

(assert (=> start!45196 m!476887))

(declare-fun m!476889 () Bool)

(assert (=> start!45196 m!476889))

(declare-fun m!476891 () Bool)

(assert (=> b!495699 m!476891))

(declare-fun m!476893 () Bool)

(assert (=> b!495697 m!476893))

(declare-fun m!476895 () Bool)

(assert (=> b!495706 m!476895))

(declare-fun m!476897 () Bool)

(assert (=> b!495706 m!476897))

(declare-fun m!476899 () Bool)

(assert (=> b!495705 m!476899))

(declare-fun m!476901 () Bool)

(assert (=> b!495705 m!476901))

(declare-fun m!476903 () Bool)

(assert (=> b!495705 m!476903))

(assert (=> b!495705 m!476897))

(declare-fun m!476905 () Bool)

(assert (=> b!495705 m!476905))

(assert (=> b!495705 m!476897))

(assert (=> b!495705 m!476903))

(declare-fun m!476907 () Bool)

(assert (=> b!495705 m!476907))

(assert (=> b!495705 m!476903))

(declare-fun m!476909 () Bool)

(assert (=> b!495705 m!476909))

(assert (=> b!495705 m!476897))

(declare-fun m!476911 () Bool)

(assert (=> b!495705 m!476911))

(declare-fun m!476913 () Bool)

(assert (=> b!495705 m!476913))

(assert (=> b!495701 m!476897))

(assert (=> b!495701 m!476897))

(declare-fun m!476915 () Bool)

(assert (=> b!495701 m!476915))

(assert (=> b!495707 m!476897))

(assert (=> b!495707 m!476897))

(declare-fun m!476917 () Bool)

(assert (=> b!495707 m!476917))

(declare-fun m!476919 () Bool)

(assert (=> b!495704 m!476919))

(declare-fun m!476921 () Bool)

(assert (=> b!495700 m!476921))

(declare-fun m!476923 () Bool)

(assert (=> b!495702 m!476923))

(push 1)

