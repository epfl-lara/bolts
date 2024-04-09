; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45210 () Bool)

(assert start!45210)

(declare-fun b!495928 () Bool)

(declare-fun e!290873 () Bool)

(assert (=> b!495928 (= e!290873 true)))

(declare-datatypes ((SeekEntryResult!3883 0))(
  ( (MissingZero!3883 (index!17711 (_ BitVec 32))) (Found!3883 (index!17712 (_ BitVec 32))) (Intermediate!3883 (undefined!4695 Bool) (index!17713 (_ BitVec 32)) (x!46802 (_ BitVec 32))) (Undefined!3883) (MissingVacant!3883 (index!17714 (_ BitVec 32))) )
))
(declare-fun lt!224560 () SeekEntryResult!3883)

(declare-datatypes ((array!32058 0))(
  ( (array!32059 (arr!15409 (Array (_ BitVec 32) (_ BitVec 64))) (size!15773 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32058)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!495928 (and (bvslt (x!46802 lt!224560) #b01111111111111111111111111111110) (or (= (select (arr!15409 a!3235) (index!17713 lt!224560)) (select (arr!15409 a!3235) j!176)) (= (select (arr!15409 a!3235) (index!17713 lt!224560)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15409 a!3235) (index!17713 lt!224560)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495930 () Bool)

(declare-fun res!298465 () Bool)

(declare-fun e!290871 () Bool)

(assert (=> b!495930 (=> (not res!298465) (not e!290871))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495930 (= res!298465 (validKeyInArray!0 k0!2280))))

(declare-fun b!495931 () Bool)

(declare-fun res!298472 () Bool)

(assert (=> b!495931 (=> (not res!298472) (not e!290871))))

(assert (=> b!495931 (= res!298472 (validKeyInArray!0 (select (arr!15409 a!3235) j!176)))))

(declare-fun b!495932 () Bool)

(declare-fun res!298475 () Bool)

(declare-fun e!290874 () Bool)

(assert (=> b!495932 (=> (not res!298475) (not e!290874))))

(declare-datatypes ((List!9620 0))(
  ( (Nil!9617) (Cons!9616 (h!10487 (_ BitVec 64)) (t!15856 List!9620)) )
))
(declare-fun arrayNoDuplicates!0 (array!32058 (_ BitVec 32) List!9620) Bool)

(assert (=> b!495932 (= res!298475 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9617))))

(declare-fun b!495933 () Bool)

(assert (=> b!495933 (= e!290871 e!290874)))

(declare-fun res!298467 () Bool)

(assert (=> b!495933 (=> (not res!298467) (not e!290874))))

(declare-fun lt!224563 () SeekEntryResult!3883)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!495933 (= res!298467 (or (= lt!224563 (MissingZero!3883 i!1204)) (= lt!224563 (MissingVacant!3883 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32058 (_ BitVec 32)) SeekEntryResult!3883)

(assert (=> b!495933 (= lt!224563 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!495934 () Bool)

(declare-fun res!298474 () Bool)

(assert (=> b!495934 (=> (not res!298474) (not e!290871))))

(declare-fun arrayContainsKey!0 (array!32058 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495934 (= res!298474 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!298466 () Bool)

(assert (=> start!45210 (=> (not res!298466) (not e!290871))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45210 (= res!298466 (validMask!0 mask!3524))))

(assert (=> start!45210 e!290871))

(assert (=> start!45210 true))

(declare-fun array_inv!11183 (array!32058) Bool)

(assert (=> start!45210 (array_inv!11183 a!3235)))

(declare-fun b!495929 () Bool)

(declare-fun res!298473 () Bool)

(assert (=> b!495929 (=> (not res!298473) (not e!290874))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32058 (_ BitVec 32)) Bool)

(assert (=> b!495929 (= res!298473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!495935 () Bool)

(assert (=> b!495935 (= e!290874 (not e!290873))))

(declare-fun res!298469 () Bool)

(assert (=> b!495935 (=> res!298469 e!290873)))

(declare-fun lt!224564 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32058 (_ BitVec 32)) SeekEntryResult!3883)

(assert (=> b!495935 (= res!298469 (= lt!224560 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224564 (select (store (arr!15409 a!3235) i!1204 k0!2280) j!176) (array!32059 (store (arr!15409 a!3235) i!1204 k0!2280) (size!15773 a!3235)) mask!3524)))))

(declare-fun lt!224562 () (_ BitVec 32))

(assert (=> b!495935 (= lt!224560 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224562 (select (arr!15409 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495935 (= lt!224564 (toIndex!0 (select (store (arr!15409 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!495935 (= lt!224562 (toIndex!0 (select (arr!15409 a!3235) j!176) mask!3524))))

(declare-fun e!290872 () Bool)

(assert (=> b!495935 e!290872))

(declare-fun res!298471 () Bool)

(assert (=> b!495935 (=> (not res!298471) (not e!290872))))

(assert (=> b!495935 (= res!298471 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14704 0))(
  ( (Unit!14705) )
))
(declare-fun lt!224561 () Unit!14704)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32058 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14704)

(assert (=> b!495935 (= lt!224561 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!495936 () Bool)

(declare-fun res!298470 () Bool)

(assert (=> b!495936 (=> (not res!298470) (not e!290871))))

(assert (=> b!495936 (= res!298470 (and (= (size!15773 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15773 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15773 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!495937 () Bool)

(declare-fun res!298468 () Bool)

(assert (=> b!495937 (=> res!298468 e!290873)))

(get-info :version)

(assert (=> b!495937 (= res!298468 (or (undefined!4695 lt!224560) (not ((_ is Intermediate!3883) lt!224560))))))

(declare-fun b!495938 () Bool)

(assert (=> b!495938 (= e!290872 (= (seekEntryOrOpen!0 (select (arr!15409 a!3235) j!176) a!3235 mask!3524) (Found!3883 j!176)))))

(assert (= (and start!45210 res!298466) b!495936))

(assert (= (and b!495936 res!298470) b!495931))

(assert (= (and b!495931 res!298472) b!495930))

(assert (= (and b!495930 res!298465) b!495934))

(assert (= (and b!495934 res!298474) b!495933))

(assert (= (and b!495933 res!298467) b!495929))

(assert (= (and b!495929 res!298473) b!495932))

(assert (= (and b!495932 res!298475) b!495935))

(assert (= (and b!495935 res!298471) b!495938))

(assert (= (and b!495935 (not res!298469)) b!495937))

(assert (= (and b!495937 (not res!298468)) b!495928))

(declare-fun m!477153 () Bool)

(assert (=> b!495928 m!477153))

(declare-fun m!477155 () Bool)

(assert (=> b!495928 m!477155))

(declare-fun m!477157 () Bool)

(assert (=> b!495934 m!477157))

(declare-fun m!477159 () Bool)

(assert (=> b!495933 m!477159))

(declare-fun m!477161 () Bool)

(assert (=> b!495929 m!477161))

(assert (=> b!495938 m!477155))

(assert (=> b!495938 m!477155))

(declare-fun m!477163 () Bool)

(assert (=> b!495938 m!477163))

(assert (=> b!495931 m!477155))

(assert (=> b!495931 m!477155))

(declare-fun m!477165 () Bool)

(assert (=> b!495931 m!477165))

(declare-fun m!477167 () Bool)

(assert (=> b!495930 m!477167))

(declare-fun m!477169 () Bool)

(assert (=> b!495932 m!477169))

(declare-fun m!477171 () Bool)

(assert (=> b!495935 m!477171))

(declare-fun m!477173 () Bool)

(assert (=> b!495935 m!477173))

(assert (=> b!495935 m!477155))

(declare-fun m!477175 () Bool)

(assert (=> b!495935 m!477175))

(assert (=> b!495935 m!477155))

(declare-fun m!477177 () Bool)

(assert (=> b!495935 m!477177))

(assert (=> b!495935 m!477173))

(declare-fun m!477179 () Bool)

(assert (=> b!495935 m!477179))

(assert (=> b!495935 m!477155))

(declare-fun m!477181 () Bool)

(assert (=> b!495935 m!477181))

(assert (=> b!495935 m!477173))

(declare-fun m!477183 () Bool)

(assert (=> b!495935 m!477183))

(declare-fun m!477185 () Bool)

(assert (=> b!495935 m!477185))

(declare-fun m!477187 () Bool)

(assert (=> start!45210 m!477187))

(declare-fun m!477189 () Bool)

(assert (=> start!45210 m!477189))

(check-sat (not b!495935) (not b!495938) (not b!495933) (not b!495929) (not b!495931) (not start!45210) (not b!495932) (not b!495934) (not b!495930))
(check-sat)
