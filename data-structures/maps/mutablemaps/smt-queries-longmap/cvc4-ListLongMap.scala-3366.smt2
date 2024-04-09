; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46262 () Bool)

(assert start!46262)

(declare-fun b!512075 () Bool)

(declare-fun res!312888 () Bool)

(declare-fun e!299092 () Bool)

(assert (=> b!512075 (=> (not res!312888) (not e!299092))))

(declare-datatypes ((array!32876 0))(
  ( (array!32877 (arr!15812 (Array (_ BitVec 32) (_ BitVec 64))) (size!16176 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32876)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32876 (_ BitVec 32)) Bool)

(assert (=> b!512075 (= res!312888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!512076 () Bool)

(declare-fun res!312892 () Bool)

(declare-fun e!299090 () Bool)

(assert (=> b!512076 (=> (not res!312892) (not e!299090))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32876 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!512076 (= res!312892 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!512077 () Bool)

(declare-fun res!312889 () Bool)

(assert (=> b!512077 (=> (not res!312889) (not e!299090))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!512077 (= res!312889 (validKeyInArray!0 k!2280))))

(declare-fun b!512078 () Bool)

(declare-fun res!312895 () Bool)

(declare-fun e!299089 () Bool)

(assert (=> b!512078 (=> res!312895 e!299089)))

(declare-datatypes ((SeekEntryResult!4286 0))(
  ( (MissingZero!4286 (index!19332 (_ BitVec 32))) (Found!4286 (index!19333 (_ BitVec 32))) (Intermediate!4286 (undefined!5098 Bool) (index!19334 (_ BitVec 32)) (x!48304 (_ BitVec 32))) (Undefined!4286) (MissingVacant!4286 (index!19335 (_ BitVec 32))) )
))
(declare-fun lt!234442 () SeekEntryResult!4286)

(assert (=> b!512078 (= res!312895 (or (not (is-Intermediate!4286 lt!234442)) (not (undefined!5098 lt!234442))))))

(declare-fun b!512079 () Bool)

(declare-fun res!312893 () Bool)

(assert (=> b!512079 (=> (not res!312893) (not e!299090))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!512079 (= res!312893 (and (= (size!16176 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16176 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16176 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!512081 () Bool)

(assert (=> b!512081 (= e!299090 e!299092)))

(declare-fun res!312891 () Bool)

(assert (=> b!512081 (=> (not res!312891) (not e!299092))))

(declare-fun lt!234443 () SeekEntryResult!4286)

(assert (=> b!512081 (= res!312891 (or (= lt!234443 (MissingZero!4286 i!1204)) (= lt!234443 (MissingVacant!4286 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32876 (_ BitVec 32)) SeekEntryResult!4286)

(assert (=> b!512081 (= lt!234443 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!512082 () Bool)

(declare-fun res!312894 () Bool)

(assert (=> b!512082 (=> (not res!312894) (not e!299090))))

(assert (=> b!512082 (= res!312894 (validKeyInArray!0 (select (arr!15812 a!3235) j!176)))))

(declare-fun b!512080 () Bool)

(assert (=> b!512080 (= e!299089 true)))

(declare-fun lt!234444 () SeekEntryResult!4286)

(assert (=> b!512080 (= lt!234444 Undefined!4286)))

(declare-fun res!312890 () Bool)

(assert (=> start!46262 (=> (not res!312890) (not e!299090))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46262 (= res!312890 (validMask!0 mask!3524))))

(assert (=> start!46262 e!299090))

(assert (=> start!46262 true))

(declare-fun array_inv!11586 (array!32876) Bool)

(assert (=> start!46262 (array_inv!11586 a!3235)))

(declare-fun b!512083 () Bool)

(declare-fun res!312887 () Bool)

(assert (=> b!512083 (=> (not res!312887) (not e!299092))))

(declare-datatypes ((List!10023 0))(
  ( (Nil!10020) (Cons!10019 (h!10899 (_ BitVec 64)) (t!16259 List!10023)) )
))
(declare-fun arrayNoDuplicates!0 (array!32876 (_ BitVec 32) List!10023) Bool)

(assert (=> b!512083 (= res!312887 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10020))))

(declare-fun b!512084 () Bool)

(assert (=> b!512084 (= e!299092 (not e!299089))))

(declare-fun res!312896 () Bool)

(assert (=> b!512084 (=> res!312896 e!299089)))

(declare-fun lt!234446 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32876 (_ BitVec 32)) SeekEntryResult!4286)

(assert (=> b!512084 (= res!312896 (= lt!234442 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234446 (select (store (arr!15812 a!3235) i!1204 k!2280) j!176) (array!32877 (store (arr!15812 a!3235) i!1204 k!2280) (size!16176 a!3235)) mask!3524)))))

(declare-fun lt!234441 () (_ BitVec 32))

(assert (=> b!512084 (= lt!234442 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234441 (select (arr!15812 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512084 (= lt!234446 (toIndex!0 (select (store (arr!15812 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!512084 (= lt!234441 (toIndex!0 (select (arr!15812 a!3235) j!176) mask!3524))))

(assert (=> b!512084 (= lt!234444 (Found!4286 j!176))))

(assert (=> b!512084 (= lt!234444 (seekEntryOrOpen!0 (select (arr!15812 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!512084 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15822 0))(
  ( (Unit!15823) )
))
(declare-fun lt!234445 () Unit!15822)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32876 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15822)

(assert (=> b!512084 (= lt!234445 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46262 res!312890) b!512079))

(assert (= (and b!512079 res!312893) b!512082))

(assert (= (and b!512082 res!312894) b!512077))

(assert (= (and b!512077 res!312889) b!512076))

(assert (= (and b!512076 res!312892) b!512081))

(assert (= (and b!512081 res!312891) b!512075))

(assert (= (and b!512075 res!312888) b!512083))

(assert (= (and b!512083 res!312887) b!512084))

(assert (= (and b!512084 (not res!312896)) b!512078))

(assert (= (and b!512078 (not res!312895)) b!512080))

(declare-fun m!493735 () Bool)

(assert (=> b!512082 m!493735))

(assert (=> b!512082 m!493735))

(declare-fun m!493737 () Bool)

(assert (=> b!512082 m!493737))

(declare-fun m!493739 () Bool)

(assert (=> b!512084 m!493739))

(declare-fun m!493741 () Bool)

(assert (=> b!512084 m!493741))

(declare-fun m!493743 () Bool)

(assert (=> b!512084 m!493743))

(assert (=> b!512084 m!493743))

(declare-fun m!493745 () Bool)

(assert (=> b!512084 m!493745))

(assert (=> b!512084 m!493735))

(declare-fun m!493747 () Bool)

(assert (=> b!512084 m!493747))

(assert (=> b!512084 m!493735))

(declare-fun m!493749 () Bool)

(assert (=> b!512084 m!493749))

(assert (=> b!512084 m!493743))

(declare-fun m!493751 () Bool)

(assert (=> b!512084 m!493751))

(assert (=> b!512084 m!493735))

(declare-fun m!493753 () Bool)

(assert (=> b!512084 m!493753))

(assert (=> b!512084 m!493735))

(declare-fun m!493755 () Bool)

(assert (=> b!512084 m!493755))

(declare-fun m!493757 () Bool)

(assert (=> b!512081 m!493757))

(declare-fun m!493759 () Bool)

(assert (=> b!512077 m!493759))

(declare-fun m!493761 () Bool)

(assert (=> b!512083 m!493761))

(declare-fun m!493763 () Bool)

(assert (=> b!512075 m!493763))

(declare-fun m!493765 () Bool)

(assert (=> start!46262 m!493765))

(declare-fun m!493767 () Bool)

(assert (=> start!46262 m!493767))

(declare-fun m!493769 () Bool)

(assert (=> b!512076 m!493769))

(push 1)

