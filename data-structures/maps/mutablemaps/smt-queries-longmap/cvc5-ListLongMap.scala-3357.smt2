; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46204 () Bool)

(assert start!46204)

(declare-fun b!511205 () Bool)

(declare-fun res!312024 () Bool)

(declare-fun e!298744 () Bool)

(assert (=> b!511205 (=> (not res!312024) (not e!298744))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511205 (= res!312024 (validKeyInArray!0 k!2280))))

(declare-fun b!511206 () Bool)

(declare-fun res!312018 () Bool)

(declare-fun e!298741 () Bool)

(assert (=> b!511206 (=> (not res!312018) (not e!298741))))

(declare-datatypes ((array!32818 0))(
  ( (array!32819 (arr!15783 (Array (_ BitVec 32) (_ BitVec 64))) (size!16147 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32818)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32818 (_ BitVec 32)) Bool)

(assert (=> b!511206 (= res!312018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511207 () Bool)

(declare-fun res!312019 () Bool)

(assert (=> b!511207 (=> (not res!312019) (not e!298744))))

(declare-fun arrayContainsKey!0 (array!32818 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511207 (= res!312019 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511208 () Bool)

(assert (=> b!511208 (= e!298744 e!298741)))

(declare-fun res!312026 () Bool)

(assert (=> b!511208 (=> (not res!312026) (not e!298741))))

(declare-datatypes ((SeekEntryResult!4257 0))(
  ( (MissingZero!4257 (index!19216 (_ BitVec 32))) (Found!4257 (index!19217 (_ BitVec 32))) (Intermediate!4257 (undefined!5069 Bool) (index!19218 (_ BitVec 32)) (x!48203 (_ BitVec 32))) (Undefined!4257) (MissingVacant!4257 (index!19219 (_ BitVec 32))) )
))
(declare-fun lt!233922 () SeekEntryResult!4257)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!511208 (= res!312026 (or (= lt!233922 (MissingZero!4257 i!1204)) (= lt!233922 (MissingVacant!4257 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32818 (_ BitVec 32)) SeekEntryResult!4257)

(assert (=> b!511208 (= lt!233922 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!511209 () Bool)

(declare-fun e!298743 () Bool)

(assert (=> b!511209 (= e!298741 (not e!298743))))

(declare-fun res!312022 () Bool)

(assert (=> b!511209 (=> res!312022 e!298743)))

(declare-fun lt!233924 () SeekEntryResult!4257)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!233919 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32818 (_ BitVec 32)) SeekEntryResult!4257)

(assert (=> b!511209 (= res!312022 (= lt!233924 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233919 (select (store (arr!15783 a!3235) i!1204 k!2280) j!176) (array!32819 (store (arr!15783 a!3235) i!1204 k!2280) (size!16147 a!3235)) mask!3524)))))

(declare-fun lt!233920 () (_ BitVec 32))

(assert (=> b!511209 (= lt!233924 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233920 (select (arr!15783 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511209 (= lt!233919 (toIndex!0 (select (store (arr!15783 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!511209 (= lt!233920 (toIndex!0 (select (arr!15783 a!3235) j!176) mask!3524))))

(declare-fun lt!233921 () SeekEntryResult!4257)

(assert (=> b!511209 (= lt!233921 (Found!4257 j!176))))

(assert (=> b!511209 (= lt!233921 (seekEntryOrOpen!0 (select (arr!15783 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!511209 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15764 0))(
  ( (Unit!15765) )
))
(declare-fun lt!233923 () Unit!15764)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32818 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15764)

(assert (=> b!511209 (= lt!233923 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!312017 () Bool)

(assert (=> start!46204 (=> (not res!312017) (not e!298744))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46204 (= res!312017 (validMask!0 mask!3524))))

(assert (=> start!46204 e!298744))

(assert (=> start!46204 true))

(declare-fun array_inv!11557 (array!32818) Bool)

(assert (=> start!46204 (array_inv!11557 a!3235)))

(declare-fun b!511210 () Bool)

(declare-fun res!312025 () Bool)

(assert (=> b!511210 (=> (not res!312025) (not e!298741))))

(declare-datatypes ((List!9994 0))(
  ( (Nil!9991) (Cons!9990 (h!10870 (_ BitVec 64)) (t!16230 List!9994)) )
))
(declare-fun arrayNoDuplicates!0 (array!32818 (_ BitVec 32) List!9994) Bool)

(assert (=> b!511210 (= res!312025 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9991))))

(declare-fun b!511211 () Bool)

(declare-fun res!312023 () Bool)

(assert (=> b!511211 (=> (not res!312023) (not e!298744))))

(assert (=> b!511211 (= res!312023 (validKeyInArray!0 (select (arr!15783 a!3235) j!176)))))

(declare-fun b!511212 () Bool)

(assert (=> b!511212 (= e!298743 true)))

(assert (=> b!511212 (= lt!233921 Undefined!4257)))

(declare-fun b!511213 () Bool)

(declare-fun res!312020 () Bool)

(assert (=> b!511213 (=> (not res!312020) (not e!298744))))

(assert (=> b!511213 (= res!312020 (and (= (size!16147 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16147 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16147 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!511214 () Bool)

(declare-fun res!312021 () Bool)

(assert (=> b!511214 (=> res!312021 e!298743)))

(assert (=> b!511214 (= res!312021 (or (not (is-Intermediate!4257 lt!233924)) (not (undefined!5069 lt!233924))))))

(assert (= (and start!46204 res!312017) b!511213))

(assert (= (and b!511213 res!312020) b!511211))

(assert (= (and b!511211 res!312023) b!511205))

(assert (= (and b!511205 res!312024) b!511207))

(assert (= (and b!511207 res!312019) b!511208))

(assert (= (and b!511208 res!312026) b!511206))

(assert (= (and b!511206 res!312018) b!511210))

(assert (= (and b!511210 res!312025) b!511209))

(assert (= (and b!511209 (not res!312022)) b!511214))

(assert (= (and b!511214 (not res!312021)) b!511212))

(declare-fun m!492691 () Bool)

(assert (=> b!511209 m!492691))

(declare-fun m!492693 () Bool)

(assert (=> b!511209 m!492693))

(declare-fun m!492695 () Bool)

(assert (=> b!511209 m!492695))

(declare-fun m!492697 () Bool)

(assert (=> b!511209 m!492697))

(assert (=> b!511209 m!492695))

(declare-fun m!492699 () Bool)

(assert (=> b!511209 m!492699))

(assert (=> b!511209 m!492695))

(declare-fun m!492701 () Bool)

(assert (=> b!511209 m!492701))

(assert (=> b!511209 m!492695))

(declare-fun m!492703 () Bool)

(assert (=> b!511209 m!492703))

(assert (=> b!511209 m!492693))

(declare-fun m!492705 () Bool)

(assert (=> b!511209 m!492705))

(declare-fun m!492707 () Bool)

(assert (=> b!511209 m!492707))

(assert (=> b!511209 m!492693))

(declare-fun m!492709 () Bool)

(assert (=> b!511209 m!492709))

(declare-fun m!492711 () Bool)

(assert (=> start!46204 m!492711))

(declare-fun m!492713 () Bool)

(assert (=> start!46204 m!492713))

(assert (=> b!511211 m!492695))

(assert (=> b!511211 m!492695))

(declare-fun m!492715 () Bool)

(assert (=> b!511211 m!492715))

(declare-fun m!492717 () Bool)

(assert (=> b!511206 m!492717))

(declare-fun m!492719 () Bool)

(assert (=> b!511205 m!492719))

(declare-fun m!492721 () Bool)

(assert (=> b!511207 m!492721))

(declare-fun m!492723 () Bool)

(assert (=> b!511208 m!492723))

(declare-fun m!492725 () Bool)

(assert (=> b!511210 m!492725))

(push 1)

