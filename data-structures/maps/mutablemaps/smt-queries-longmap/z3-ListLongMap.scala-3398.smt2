; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46992 () Bool)

(assert start!46992)

(declare-fun b!517774 () Bool)

(declare-fun res!316945 () Bool)

(declare-fun e!302155 () Bool)

(assert (=> b!517774 (=> (not res!316945) (not e!302155))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33093 0))(
  ( (array!33094 (arr!15907 (Array (_ BitVec 32) (_ BitVec 64))) (size!16271 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33093)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!517774 (= res!316945 (and (= (size!16271 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16271 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16271 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!517775 () Bool)

(declare-fun res!316942 () Bool)

(assert (=> b!517775 (=> (not res!316942) (not e!302155))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33093 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!517775 (= res!316942 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!517776 () Bool)

(declare-fun e!302153 () Bool)

(assert (=> b!517776 (= e!302153 true)))

(declare-datatypes ((SeekEntryResult!4381 0))(
  ( (MissingZero!4381 (index!19712 (_ BitVec 32))) (Found!4381 (index!19713 (_ BitVec 32))) (Intermediate!4381 (undefined!5193 Bool) (index!19714 (_ BitVec 32)) (x!48709 (_ BitVec 32))) (Undefined!4381) (MissingVacant!4381 (index!19715 (_ BitVec 32))) )
))
(declare-fun lt!237068 () SeekEntryResult!4381)

(assert (=> b!517776 (and (bvslt (x!48709 lt!237068) #b01111111111111111111111111111110) (or (= (select (arr!15907 a!3235) (index!19714 lt!237068)) (select (arr!15907 a!3235) j!176)) (= (select (arr!15907 a!3235) (index!19714 lt!237068)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15907 a!3235) (index!19714 lt!237068)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!517777 () Bool)

(declare-fun e!302152 () Bool)

(assert (=> b!517777 (= e!302152 (not e!302153))))

(declare-fun res!316946 () Bool)

(assert (=> b!517777 (=> res!316946 e!302153)))

(declare-fun lt!237065 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33093 (_ BitVec 32)) SeekEntryResult!4381)

(assert (=> b!517777 (= res!316946 (= lt!237068 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237065 (select (store (arr!15907 a!3235) i!1204 k0!2280) j!176) (array!33094 (store (arr!15907 a!3235) i!1204 k0!2280) (size!16271 a!3235)) mask!3524)))))

(declare-fun lt!237067 () (_ BitVec 32))

(assert (=> b!517777 (= lt!237068 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237067 (select (arr!15907 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!517777 (= lt!237065 (toIndex!0 (select (store (arr!15907 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!517777 (= lt!237067 (toIndex!0 (select (arr!15907 a!3235) j!176) mask!3524))))

(declare-fun e!302151 () Bool)

(assert (=> b!517777 e!302151))

(declare-fun res!316947 () Bool)

(assert (=> b!517777 (=> (not res!316947) (not e!302151))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33093 (_ BitVec 32)) Bool)

(assert (=> b!517777 (= res!316947 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16012 0))(
  ( (Unit!16013) )
))
(declare-fun lt!237066 () Unit!16012)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33093 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16012)

(assert (=> b!517777 (= lt!237066 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!517778 () Bool)

(assert (=> b!517778 (= e!302155 e!302152)))

(declare-fun res!316943 () Bool)

(assert (=> b!517778 (=> (not res!316943) (not e!302152))))

(declare-fun lt!237064 () SeekEntryResult!4381)

(assert (=> b!517778 (= res!316943 (or (= lt!237064 (MissingZero!4381 i!1204)) (= lt!237064 (MissingVacant!4381 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33093 (_ BitVec 32)) SeekEntryResult!4381)

(assert (=> b!517778 (= lt!237064 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!517779 () Bool)

(declare-fun res!316939 () Bool)

(assert (=> b!517779 (=> (not res!316939) (not e!302152))))

(declare-datatypes ((List!10118 0))(
  ( (Nil!10115) (Cons!10114 (h!11021 (_ BitVec 64)) (t!16354 List!10118)) )
))
(declare-fun arrayNoDuplicates!0 (array!33093 (_ BitVec 32) List!10118) Bool)

(assert (=> b!517779 (= res!316939 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10115))))

(declare-fun b!517780 () Bool)

(declare-fun res!316944 () Bool)

(assert (=> b!517780 (=> res!316944 e!302153)))

(get-info :version)

(assert (=> b!517780 (= res!316944 (or (undefined!5193 lt!237068) (not ((_ is Intermediate!4381) lt!237068))))))

(declare-fun b!517781 () Bool)

(declare-fun res!316940 () Bool)

(assert (=> b!517781 (=> (not res!316940) (not e!302155))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!517781 (= res!316940 (validKeyInArray!0 (select (arr!15907 a!3235) j!176)))))

(declare-fun b!517782 () Bool)

(declare-fun res!316948 () Bool)

(assert (=> b!517782 (=> (not res!316948) (not e!302155))))

(assert (=> b!517782 (= res!316948 (validKeyInArray!0 k0!2280))))

(declare-fun b!517783 () Bool)

(assert (=> b!517783 (= e!302151 (= (seekEntryOrOpen!0 (select (arr!15907 a!3235) j!176) a!3235 mask!3524) (Found!4381 j!176)))))

(declare-fun res!316949 () Bool)

(assert (=> start!46992 (=> (not res!316949) (not e!302155))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46992 (= res!316949 (validMask!0 mask!3524))))

(assert (=> start!46992 e!302155))

(assert (=> start!46992 true))

(declare-fun array_inv!11681 (array!33093) Bool)

(assert (=> start!46992 (array_inv!11681 a!3235)))

(declare-fun b!517784 () Bool)

(declare-fun res!316941 () Bool)

(assert (=> b!517784 (=> (not res!316941) (not e!302152))))

(assert (=> b!517784 (= res!316941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!46992 res!316949) b!517774))

(assert (= (and b!517774 res!316945) b!517781))

(assert (= (and b!517781 res!316940) b!517782))

(assert (= (and b!517782 res!316948) b!517775))

(assert (= (and b!517775 res!316942) b!517778))

(assert (= (and b!517778 res!316943) b!517784))

(assert (= (and b!517784 res!316941) b!517779))

(assert (= (and b!517779 res!316939) b!517777))

(assert (= (and b!517777 res!316947) b!517783))

(assert (= (and b!517777 (not res!316946)) b!517780))

(assert (= (and b!517780 (not res!316944)) b!517776))

(declare-fun m!499137 () Bool)

(assert (=> b!517783 m!499137))

(assert (=> b!517783 m!499137))

(declare-fun m!499139 () Bool)

(assert (=> b!517783 m!499139))

(declare-fun m!499141 () Bool)

(assert (=> start!46992 m!499141))

(declare-fun m!499143 () Bool)

(assert (=> start!46992 m!499143))

(declare-fun m!499145 () Bool)

(assert (=> b!517784 m!499145))

(declare-fun m!499147 () Bool)

(assert (=> b!517782 m!499147))

(declare-fun m!499149 () Bool)

(assert (=> b!517776 m!499149))

(assert (=> b!517776 m!499137))

(assert (=> b!517781 m!499137))

(assert (=> b!517781 m!499137))

(declare-fun m!499151 () Bool)

(assert (=> b!517781 m!499151))

(declare-fun m!499153 () Bool)

(assert (=> b!517777 m!499153))

(declare-fun m!499155 () Bool)

(assert (=> b!517777 m!499155))

(declare-fun m!499157 () Bool)

(assert (=> b!517777 m!499157))

(assert (=> b!517777 m!499157))

(declare-fun m!499159 () Bool)

(assert (=> b!517777 m!499159))

(assert (=> b!517777 m!499137))

(declare-fun m!499161 () Bool)

(assert (=> b!517777 m!499161))

(assert (=> b!517777 m!499137))

(declare-fun m!499163 () Bool)

(assert (=> b!517777 m!499163))

(assert (=> b!517777 m!499137))

(declare-fun m!499165 () Bool)

(assert (=> b!517777 m!499165))

(assert (=> b!517777 m!499157))

(declare-fun m!499167 () Bool)

(assert (=> b!517777 m!499167))

(declare-fun m!499169 () Bool)

(assert (=> b!517775 m!499169))

(declare-fun m!499171 () Bool)

(assert (=> b!517779 m!499171))

(declare-fun m!499173 () Bool)

(assert (=> b!517778 m!499173))

(check-sat (not b!517777) (not b!517783) (not b!517784) (not b!517781) (not b!517775) (not b!517782) (not b!517778) (not start!46992) (not b!517779))
(check-sat)
