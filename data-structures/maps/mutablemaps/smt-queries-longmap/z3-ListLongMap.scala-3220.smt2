; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45078 () Bool)

(assert start!45078)

(declare-fun res!297199 () Bool)

(declare-fun e!290169 () Bool)

(assert (=> start!45078 (=> (not res!297199) (not e!290169))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45078 (= res!297199 (validMask!0 mask!3524))))

(assert (=> start!45078 e!290169))

(assert (=> start!45078 true))

(declare-datatypes ((array!31983 0))(
  ( (array!31984 (arr!15373 (Array (_ BitVec 32) (_ BitVec 64))) (size!15737 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31983)

(declare-fun array_inv!11147 (array!31983) Bool)

(assert (=> start!45078 (array_inv!11147 a!3235)))

(declare-fun b!494471 () Bool)

(declare-fun e!290167 () Bool)

(declare-fun e!290170 () Bool)

(assert (=> b!494471 (= e!290167 (not e!290170))))

(declare-fun res!297197 () Bool)

(assert (=> b!494471 (=> res!297197 e!290170)))

(declare-datatypes ((SeekEntryResult!3847 0))(
  ( (MissingZero!3847 (index!17567 (_ BitVec 32))) (Found!3847 (index!17568 (_ BitVec 32))) (Intermediate!3847 (undefined!4659 Bool) (index!17569 (_ BitVec 32)) (x!46664 (_ BitVec 32))) (Undefined!3847) (MissingVacant!3847 (index!17570 (_ BitVec 32))) )
))
(declare-fun lt!223869 () SeekEntryResult!3847)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!223873 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31983 (_ BitVec 32)) SeekEntryResult!3847)

(assert (=> b!494471 (= res!297197 (= lt!223869 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223873 (select (store (arr!15373 a!3235) i!1204 k0!2280) j!176) (array!31984 (store (arr!15373 a!3235) i!1204 k0!2280) (size!15737 a!3235)) mask!3524)))))

(declare-fun lt!223870 () (_ BitVec 32))

(assert (=> b!494471 (= lt!223869 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223870 (select (arr!15373 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494471 (= lt!223873 (toIndex!0 (select (store (arr!15373 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!494471 (= lt!223870 (toIndex!0 (select (arr!15373 a!3235) j!176) mask!3524))))

(declare-fun lt!223874 () SeekEntryResult!3847)

(assert (=> b!494471 (= lt!223874 (Found!3847 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31983 (_ BitVec 32)) SeekEntryResult!3847)

(assert (=> b!494471 (= lt!223874 (seekEntryOrOpen!0 (select (arr!15373 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31983 (_ BitVec 32)) Bool)

(assert (=> b!494471 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14632 0))(
  ( (Unit!14633) )
))
(declare-fun lt!223871 () Unit!14632)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31983 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14632)

(assert (=> b!494471 (= lt!223871 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494472 () Bool)

(declare-fun res!297191 () Bool)

(assert (=> b!494472 (=> (not res!297191) (not e!290169))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494472 (= res!297191 (validKeyInArray!0 (select (arr!15373 a!3235) j!176)))))

(declare-fun b!494473 () Bool)

(declare-fun res!297194 () Bool)

(assert (=> b!494473 (=> (not res!297194) (not e!290167))))

(declare-datatypes ((List!9584 0))(
  ( (Nil!9581) (Cons!9580 (h!10448 (_ BitVec 64)) (t!15820 List!9584)) )
))
(declare-fun arrayNoDuplicates!0 (array!31983 (_ BitVec 32) List!9584) Bool)

(assert (=> b!494473 (= res!297194 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9581))))

(declare-fun b!494474 () Bool)

(declare-fun res!297196 () Bool)

(assert (=> b!494474 (=> (not res!297196) (not e!290167))))

(assert (=> b!494474 (= res!297196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494475 () Bool)

(declare-fun res!297195 () Bool)

(assert (=> b!494475 (=> (not res!297195) (not e!290169))))

(assert (=> b!494475 (= res!297195 (and (= (size!15737 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15737 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15737 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494476 () Bool)

(declare-fun res!297200 () Bool)

(assert (=> b!494476 (=> (not res!297200) (not e!290169))))

(declare-fun arrayContainsKey!0 (array!31983 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494476 (= res!297200 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494477 () Bool)

(declare-fun res!297192 () Bool)

(assert (=> b!494477 (=> (not res!297192) (not e!290169))))

(assert (=> b!494477 (= res!297192 (validKeyInArray!0 k0!2280))))

(declare-fun b!494478 () Bool)

(declare-fun res!297198 () Bool)

(assert (=> b!494478 (=> res!297198 e!290170)))

(get-info :version)

(assert (=> b!494478 (= res!297198 (or (not ((_ is Intermediate!3847) lt!223869)) (not (undefined!4659 lt!223869))))))

(declare-fun b!494479 () Bool)

(assert (=> b!494479 (= e!290170 true)))

(assert (=> b!494479 (= lt!223874 Undefined!3847)))

(declare-fun b!494480 () Bool)

(assert (=> b!494480 (= e!290169 e!290167)))

(declare-fun res!297193 () Bool)

(assert (=> b!494480 (=> (not res!297193) (not e!290167))))

(declare-fun lt!223872 () SeekEntryResult!3847)

(assert (=> b!494480 (= res!297193 (or (= lt!223872 (MissingZero!3847 i!1204)) (= lt!223872 (MissingVacant!3847 i!1204))))))

(assert (=> b!494480 (= lt!223872 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!45078 res!297199) b!494475))

(assert (= (and b!494475 res!297195) b!494472))

(assert (= (and b!494472 res!297191) b!494477))

(assert (= (and b!494477 res!297192) b!494476))

(assert (= (and b!494476 res!297200) b!494480))

(assert (= (and b!494480 res!297193) b!494474))

(assert (= (and b!494474 res!297196) b!494473))

(assert (= (and b!494473 res!297194) b!494471))

(assert (= (and b!494471 (not res!297197)) b!494478))

(assert (= (and b!494478 (not res!297198)) b!494479))

(declare-fun m!475597 () Bool)

(assert (=> b!494480 m!475597))

(declare-fun m!475599 () Bool)

(assert (=> b!494471 m!475599))

(declare-fun m!475601 () Bool)

(assert (=> b!494471 m!475601))

(declare-fun m!475603 () Bool)

(assert (=> b!494471 m!475603))

(declare-fun m!475605 () Bool)

(assert (=> b!494471 m!475605))

(declare-fun m!475607 () Bool)

(assert (=> b!494471 m!475607))

(assert (=> b!494471 m!475605))

(assert (=> b!494471 m!475603))

(declare-fun m!475609 () Bool)

(assert (=> b!494471 m!475609))

(declare-fun m!475611 () Bool)

(assert (=> b!494471 m!475611))

(assert (=> b!494471 m!475605))

(declare-fun m!475613 () Bool)

(assert (=> b!494471 m!475613))

(assert (=> b!494471 m!475605))

(declare-fun m!475615 () Bool)

(assert (=> b!494471 m!475615))

(assert (=> b!494471 m!475603))

(declare-fun m!475617 () Bool)

(assert (=> b!494471 m!475617))

(declare-fun m!475619 () Bool)

(assert (=> b!494473 m!475619))

(declare-fun m!475621 () Bool)

(assert (=> b!494476 m!475621))

(assert (=> b!494472 m!475605))

(assert (=> b!494472 m!475605))

(declare-fun m!475623 () Bool)

(assert (=> b!494472 m!475623))

(declare-fun m!475625 () Bool)

(assert (=> b!494474 m!475625))

(declare-fun m!475627 () Bool)

(assert (=> start!45078 m!475627))

(declare-fun m!475629 () Bool)

(assert (=> start!45078 m!475629))

(declare-fun m!475631 () Bool)

(assert (=> b!494477 m!475631))

(check-sat (not b!494473) (not b!494476) (not b!494480) (not start!45078) (not b!494474) (not b!494477) (not b!494471) (not b!494472))
(check-sat)
