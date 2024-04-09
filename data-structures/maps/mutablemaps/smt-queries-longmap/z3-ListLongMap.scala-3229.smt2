; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45192 () Bool)

(assert start!45192)

(declare-fun b!495631 () Bool)

(declare-fun e!290739 () Bool)

(declare-fun e!290738 () Bool)

(assert (=> b!495631 (= e!290739 e!290738)))

(declare-fun res!298170 () Bool)

(assert (=> b!495631 (=> (not res!298170) (not e!290738))))

(declare-datatypes ((SeekEntryResult!3874 0))(
  ( (MissingZero!3874 (index!17675 (_ BitVec 32))) (Found!3874 (index!17676 (_ BitVec 32))) (Intermediate!3874 (undefined!4686 Bool) (index!17677 (_ BitVec 32)) (x!46769 (_ BitVec 32))) (Undefined!3874) (MissingVacant!3874 (index!17678 (_ BitVec 32))) )
))
(declare-fun lt!224427 () SeekEntryResult!3874)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!495631 (= res!298170 (or (= lt!224427 (MissingZero!3874 i!1204)) (= lt!224427 (MissingVacant!3874 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32040 0))(
  ( (array!32041 (arr!15400 (Array (_ BitVec 32) (_ BitVec 64))) (size!15764 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32040)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32040 (_ BitVec 32)) SeekEntryResult!3874)

(assert (=> b!495631 (= lt!224427 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!495633 () Bool)

(declare-fun res!298172 () Bool)

(assert (=> b!495633 (=> (not res!298172) (not e!290739))))

(declare-fun arrayContainsKey!0 (array!32040 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495633 (= res!298172 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!495634 () Bool)

(declare-fun res!298175 () Bool)

(assert (=> b!495634 (=> (not res!298175) (not e!290738))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32040 (_ BitVec 32)) Bool)

(assert (=> b!495634 (= res!298175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!495635 () Bool)

(declare-fun res!298173 () Bool)

(assert (=> b!495635 (=> (not res!298173) (not e!290739))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495635 (= res!298173 (validKeyInArray!0 (select (arr!15400 a!3235) j!176)))))

(declare-fun b!495636 () Bool)

(declare-fun res!298169 () Bool)

(declare-fun e!290740 () Bool)

(assert (=> b!495636 (=> res!298169 e!290740)))

(declare-fun lt!224425 () SeekEntryResult!3874)

(get-info :version)

(assert (=> b!495636 (= res!298169 (or (undefined!4686 lt!224425) (not ((_ is Intermediate!3874) lt!224425))))))

(declare-fun b!495637 () Bool)

(assert (=> b!495637 (= e!290740 true)))

(assert (=> b!495637 (and (bvslt (x!46769 lt!224425) #b01111111111111111111111111111110) (or (= (select (arr!15400 a!3235) (index!17677 lt!224425)) (select (arr!15400 a!3235) j!176)) (= (select (arr!15400 a!3235) (index!17677 lt!224425)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15400 a!3235) (index!17677 lt!224425)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495638 () Bool)

(declare-fun res!298171 () Bool)

(assert (=> b!495638 (=> (not res!298171) (not e!290739))))

(assert (=> b!495638 (= res!298171 (validKeyInArray!0 k0!2280))))

(declare-fun b!495639 () Bool)

(assert (=> b!495639 (= e!290738 (not e!290740))))

(declare-fun res!298168 () Bool)

(assert (=> b!495639 (=> res!298168 e!290740)))

(declare-fun lt!224426 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32040 (_ BitVec 32)) SeekEntryResult!3874)

(assert (=> b!495639 (= res!298168 (= lt!224425 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224426 (select (store (arr!15400 a!3235) i!1204 k0!2280) j!176) (array!32041 (store (arr!15400 a!3235) i!1204 k0!2280) (size!15764 a!3235)) mask!3524)))))

(declare-fun lt!224428 () (_ BitVec 32))

(assert (=> b!495639 (= lt!224425 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224428 (select (arr!15400 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495639 (= lt!224426 (toIndex!0 (select (store (arr!15400 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!495639 (= lt!224428 (toIndex!0 (select (arr!15400 a!3235) j!176) mask!3524))))

(declare-fun e!290737 () Bool)

(assert (=> b!495639 e!290737))

(declare-fun res!298174 () Bool)

(assert (=> b!495639 (=> (not res!298174) (not e!290737))))

(assert (=> b!495639 (= res!298174 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14686 0))(
  ( (Unit!14687) )
))
(declare-fun lt!224429 () Unit!14686)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32040 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14686)

(assert (=> b!495639 (= lt!224429 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!298178 () Bool)

(assert (=> start!45192 (=> (not res!298178) (not e!290739))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45192 (= res!298178 (validMask!0 mask!3524))))

(assert (=> start!45192 e!290739))

(assert (=> start!45192 true))

(declare-fun array_inv!11174 (array!32040) Bool)

(assert (=> start!45192 (array_inv!11174 a!3235)))

(declare-fun b!495632 () Bool)

(declare-fun res!298177 () Bool)

(assert (=> b!495632 (=> (not res!298177) (not e!290738))))

(declare-datatypes ((List!9611 0))(
  ( (Nil!9608) (Cons!9607 (h!10478 (_ BitVec 64)) (t!15847 List!9611)) )
))
(declare-fun arrayNoDuplicates!0 (array!32040 (_ BitVec 32) List!9611) Bool)

(assert (=> b!495632 (= res!298177 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9608))))

(declare-fun b!495640 () Bool)

(declare-fun res!298176 () Bool)

(assert (=> b!495640 (=> (not res!298176) (not e!290739))))

(assert (=> b!495640 (= res!298176 (and (= (size!15764 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15764 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15764 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!495641 () Bool)

(assert (=> b!495641 (= e!290737 (= (seekEntryOrOpen!0 (select (arr!15400 a!3235) j!176) a!3235 mask!3524) (Found!3874 j!176)))))

(assert (= (and start!45192 res!298178) b!495640))

(assert (= (and b!495640 res!298176) b!495635))

(assert (= (and b!495635 res!298173) b!495638))

(assert (= (and b!495638 res!298171) b!495633))

(assert (= (and b!495633 res!298172) b!495631))

(assert (= (and b!495631 res!298170) b!495634))

(assert (= (and b!495634 res!298175) b!495632))

(assert (= (and b!495632 res!298177) b!495639))

(assert (= (and b!495639 res!298174) b!495641))

(assert (= (and b!495639 (not res!298168)) b!495636))

(assert (= (and b!495636 (not res!298169)) b!495637))

(declare-fun m!476811 () Bool)

(assert (=> b!495632 m!476811))

(declare-fun m!476813 () Bool)

(assert (=> b!495635 m!476813))

(assert (=> b!495635 m!476813))

(declare-fun m!476815 () Bool)

(assert (=> b!495635 m!476815))

(declare-fun m!476817 () Bool)

(assert (=> b!495637 m!476817))

(assert (=> b!495637 m!476813))

(declare-fun m!476819 () Bool)

(assert (=> b!495639 m!476819))

(assert (=> b!495639 m!476813))

(declare-fun m!476821 () Bool)

(assert (=> b!495639 m!476821))

(declare-fun m!476823 () Bool)

(assert (=> b!495639 m!476823))

(declare-fun m!476825 () Bool)

(assert (=> b!495639 m!476825))

(assert (=> b!495639 m!476813))

(declare-fun m!476827 () Bool)

(assert (=> b!495639 m!476827))

(assert (=> b!495639 m!476813))

(declare-fun m!476829 () Bool)

(assert (=> b!495639 m!476829))

(assert (=> b!495639 m!476825))

(declare-fun m!476831 () Bool)

(assert (=> b!495639 m!476831))

(assert (=> b!495639 m!476825))

(declare-fun m!476833 () Bool)

(assert (=> b!495639 m!476833))

(assert (=> b!495641 m!476813))

(assert (=> b!495641 m!476813))

(declare-fun m!476835 () Bool)

(assert (=> b!495641 m!476835))

(declare-fun m!476837 () Bool)

(assert (=> b!495631 m!476837))

(declare-fun m!476839 () Bool)

(assert (=> b!495634 m!476839))

(declare-fun m!476841 () Bool)

(assert (=> start!45192 m!476841))

(declare-fun m!476843 () Bool)

(assert (=> start!45192 m!476843))

(declare-fun m!476845 () Bool)

(assert (=> b!495633 m!476845))

(declare-fun m!476847 () Bool)

(assert (=> b!495638 m!476847))

(check-sat (not b!495632) (not b!495634) (not b!495633) (not b!495641) (not b!495638) (not b!495635) (not b!495639) (not b!495631) (not start!45192))
(check-sat)
