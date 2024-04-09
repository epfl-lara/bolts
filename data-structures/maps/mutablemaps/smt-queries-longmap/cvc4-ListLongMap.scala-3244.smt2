; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45284 () Bool)

(assert start!45284)

(declare-fun b!497149 () Bool)

(declare-fun e!291429 () Bool)

(declare-fun e!291428 () Bool)

(assert (=> b!497149 (= e!291429 (not e!291428))))

(declare-fun res!299696 () Bool)

(assert (=> b!497149 (=> res!299696 e!291428)))

(declare-datatypes ((SeekEntryResult!3920 0))(
  ( (MissingZero!3920 (index!17859 (_ BitVec 32))) (Found!3920 (index!17860 (_ BitVec 32))) (Intermediate!3920 (undefined!4732 Bool) (index!17861 (_ BitVec 32)) (x!46935 (_ BitVec 32))) (Undefined!3920) (MissingVacant!3920 (index!17862 (_ BitVec 32))) )
))
(declare-fun lt!225116 () SeekEntryResult!3920)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32132 0))(
  ( (array!32133 (arr!15446 (Array (_ BitVec 32) (_ BitVec 64))) (size!15810 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32132)

(declare-fun lt!225119 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32132 (_ BitVec 32)) SeekEntryResult!3920)

(assert (=> b!497149 (= res!299696 (= lt!225116 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225119 (select (store (arr!15446 a!3235) i!1204 k!2280) j!176) (array!32133 (store (arr!15446 a!3235) i!1204 k!2280) (size!15810 a!3235)) mask!3524)))))

(declare-fun lt!225117 () (_ BitVec 32))

(assert (=> b!497149 (= lt!225116 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225117 (select (arr!15446 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!497149 (= lt!225119 (toIndex!0 (select (store (arr!15446 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!497149 (= lt!225117 (toIndex!0 (select (arr!15446 a!3235) j!176) mask!3524))))

(declare-fun e!291430 () Bool)

(assert (=> b!497149 e!291430))

(declare-fun res!299686 () Bool)

(assert (=> b!497149 (=> (not res!299686) (not e!291430))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32132 (_ BitVec 32)) Bool)

(assert (=> b!497149 (= res!299686 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14778 0))(
  ( (Unit!14779) )
))
(declare-fun lt!225118 () Unit!14778)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32132 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14778)

(assert (=> b!497149 (= lt!225118 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!299693 () Bool)

(declare-fun e!291426 () Bool)

(assert (=> start!45284 (=> (not res!299693) (not e!291426))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45284 (= res!299693 (validMask!0 mask!3524))))

(assert (=> start!45284 e!291426))

(assert (=> start!45284 true))

(declare-fun array_inv!11220 (array!32132) Bool)

(assert (=> start!45284 (array_inv!11220 a!3235)))

(declare-fun b!497150 () Bool)

(declare-fun res!299694 () Bool)

(assert (=> b!497150 (=> (not res!299694) (not e!291426))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!497150 (= res!299694 (validKeyInArray!0 (select (arr!15446 a!3235) j!176)))))

(declare-fun b!497151 () Bool)

(declare-fun res!299689 () Bool)

(assert (=> b!497151 (=> (not res!299689) (not e!291429))))

(assert (=> b!497151 (= res!299689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!497152 () Bool)

(declare-fun res!299687 () Bool)

(assert (=> b!497152 (=> (not res!299687) (not e!291426))))

(declare-fun arrayContainsKey!0 (array!32132 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!497152 (= res!299687 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!497153 () Bool)

(declare-fun res!299692 () Bool)

(assert (=> b!497153 (=> (not res!299692) (not e!291429))))

(declare-datatypes ((List!9657 0))(
  ( (Nil!9654) (Cons!9653 (h!10524 (_ BitVec 64)) (t!15893 List!9657)) )
))
(declare-fun arrayNoDuplicates!0 (array!32132 (_ BitVec 32) List!9657) Bool)

(assert (=> b!497153 (= res!299692 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9654))))

(declare-fun b!497154 () Bool)

(declare-fun res!299691 () Bool)

(assert (=> b!497154 (=> (not res!299691) (not e!291426))))

(assert (=> b!497154 (= res!299691 (validKeyInArray!0 k!2280))))

(declare-fun b!497155 () Bool)

(declare-fun res!299695 () Bool)

(assert (=> b!497155 (=> res!299695 e!291428)))

(assert (=> b!497155 (= res!299695 (or (undefined!4732 lt!225116) (not (is-Intermediate!3920 lt!225116))))))

(declare-fun b!497156 () Bool)

(assert (=> b!497156 (= e!291428 true)))

(assert (=> b!497156 (and (bvslt (x!46935 lt!225116) #b01111111111111111111111111111110) (or (= (select (arr!15446 a!3235) (index!17861 lt!225116)) (select (arr!15446 a!3235) j!176)) (= (select (arr!15446 a!3235) (index!17861 lt!225116)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15446 a!3235) (index!17861 lt!225116)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!497157 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32132 (_ BitVec 32)) SeekEntryResult!3920)

(assert (=> b!497157 (= e!291430 (= (seekEntryOrOpen!0 (select (arr!15446 a!3235) j!176) a!3235 mask!3524) (Found!3920 j!176)))))

(declare-fun b!497158 () Bool)

(assert (=> b!497158 (= e!291426 e!291429)))

(declare-fun res!299690 () Bool)

(assert (=> b!497158 (=> (not res!299690) (not e!291429))))

(declare-fun lt!225115 () SeekEntryResult!3920)

(assert (=> b!497158 (= res!299690 (or (= lt!225115 (MissingZero!3920 i!1204)) (= lt!225115 (MissingVacant!3920 i!1204))))))

(assert (=> b!497158 (= lt!225115 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!497159 () Bool)

(declare-fun res!299688 () Bool)

(assert (=> b!497159 (=> (not res!299688) (not e!291426))))

(assert (=> b!497159 (= res!299688 (and (= (size!15810 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15810 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15810 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45284 res!299693) b!497159))

(assert (= (and b!497159 res!299688) b!497150))

(assert (= (and b!497150 res!299694) b!497154))

(assert (= (and b!497154 res!299691) b!497152))

(assert (= (and b!497152 res!299687) b!497158))

(assert (= (and b!497158 res!299690) b!497151))

(assert (= (and b!497151 res!299689) b!497153))

(assert (= (and b!497153 res!299692) b!497149))

(assert (= (and b!497149 res!299686) b!497157))

(assert (= (and b!497149 (not res!299696)) b!497155))

(assert (= (and b!497155 (not res!299695)) b!497156))

(declare-fun m!478559 () Bool)

(assert (=> b!497152 m!478559))

(declare-fun m!478561 () Bool)

(assert (=> b!497154 m!478561))

(declare-fun m!478563 () Bool)

(assert (=> b!497150 m!478563))

(assert (=> b!497150 m!478563))

(declare-fun m!478565 () Bool)

(assert (=> b!497150 m!478565))

(declare-fun m!478567 () Bool)

(assert (=> b!497153 m!478567))

(declare-fun m!478569 () Bool)

(assert (=> b!497158 m!478569))

(declare-fun m!478571 () Bool)

(assert (=> start!45284 m!478571))

(declare-fun m!478573 () Bool)

(assert (=> start!45284 m!478573))

(declare-fun m!478575 () Bool)

(assert (=> b!497151 m!478575))

(declare-fun m!478577 () Bool)

(assert (=> b!497156 m!478577))

(assert (=> b!497156 m!478563))

(declare-fun m!478579 () Bool)

(assert (=> b!497149 m!478579))

(declare-fun m!478581 () Bool)

(assert (=> b!497149 m!478581))

(assert (=> b!497149 m!478563))

(declare-fun m!478583 () Bool)

(assert (=> b!497149 m!478583))

(assert (=> b!497149 m!478563))

(assert (=> b!497149 m!478581))

(declare-fun m!478585 () Bool)

(assert (=> b!497149 m!478585))

(declare-fun m!478587 () Bool)

(assert (=> b!497149 m!478587))

(assert (=> b!497149 m!478581))

(declare-fun m!478589 () Bool)

(assert (=> b!497149 m!478589))

(declare-fun m!478591 () Bool)

(assert (=> b!497149 m!478591))

(assert (=> b!497149 m!478563))

(declare-fun m!478593 () Bool)

(assert (=> b!497149 m!478593))

(assert (=> b!497157 m!478563))

(assert (=> b!497157 m!478563))

(declare-fun m!478595 () Bool)

(assert (=> b!497157 m!478595))

(push 1)

(assert (not b!497152))

(assert (not b!497153))

(assert (not b!497151))

(assert (not start!45284))

(assert (not b!497149))

(assert (not b!497154))

(assert (not b!497157))

(assert (not 