; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45242 () Bool)

(assert start!45242)

(declare-fun b!496456 () Bool)

(declare-fun e!291114 () Bool)

(declare-fun e!291111 () Bool)

(assert (=> b!496456 (= e!291114 (not e!291111))))

(declare-fun res!299001 () Bool)

(assert (=> b!496456 (=> res!299001 e!291111)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32090 0))(
  ( (array!32091 (arr!15425 (Array (_ BitVec 32) (_ BitVec 64))) (size!15789 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32090)

(declare-fun lt!224804 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3899 0))(
  ( (MissingZero!3899 (index!17775 (_ BitVec 32))) (Found!3899 (index!17776 (_ BitVec 32))) (Intermediate!3899 (undefined!4711 Bool) (index!17777 (_ BitVec 32)) (x!46858 (_ BitVec 32))) (Undefined!3899) (MissingVacant!3899 (index!17778 (_ BitVec 32))) )
))
(declare-fun lt!224800 () SeekEntryResult!3899)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32090 (_ BitVec 32)) SeekEntryResult!3899)

(assert (=> b!496456 (= res!299001 (= lt!224800 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224804 (select (store (arr!15425 a!3235) i!1204 k!2280) j!176) (array!32091 (store (arr!15425 a!3235) i!1204 k!2280) (size!15789 a!3235)) mask!3524)))))

(declare-fun lt!224803 () (_ BitVec 32))

(assert (=> b!496456 (= lt!224800 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224803 (select (arr!15425 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496456 (= lt!224804 (toIndex!0 (select (store (arr!15425 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!496456 (= lt!224803 (toIndex!0 (select (arr!15425 a!3235) j!176) mask!3524))))

(declare-fun e!291113 () Bool)

(assert (=> b!496456 e!291113))

(declare-fun res!299002 () Bool)

(assert (=> b!496456 (=> (not res!299002) (not e!291113))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32090 (_ BitVec 32)) Bool)

(assert (=> b!496456 (= res!299002 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14736 0))(
  ( (Unit!14737) )
))
(declare-fun lt!224801 () Unit!14736)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32090 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14736)

(assert (=> b!496456 (= lt!224801 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496457 () Bool)

(declare-fun res!298998 () Bool)

(assert (=> b!496457 (=> res!298998 e!291111)))

(assert (=> b!496457 (= res!298998 (or (undefined!4711 lt!224800) (not (is-Intermediate!3899 lt!224800))))))

(declare-fun b!496458 () Bool)

(declare-fun res!299000 () Bool)

(declare-fun e!291112 () Bool)

(assert (=> b!496458 (=> (not res!299000) (not e!291112))))

(declare-fun arrayContainsKey!0 (array!32090 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496458 (= res!299000 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496459 () Bool)

(assert (=> b!496459 (= e!291111 true)))

(assert (=> b!496459 (and (bvslt (x!46858 lt!224800) #b01111111111111111111111111111110) (or (= (select (arr!15425 a!3235) (index!17777 lt!224800)) (select (arr!15425 a!3235) j!176)) (= (select (arr!15425 a!3235) (index!17777 lt!224800)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15425 a!3235) (index!17777 lt!224800)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!299003 () Bool)

(assert (=> start!45242 (=> (not res!299003) (not e!291112))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45242 (= res!299003 (validMask!0 mask!3524))))

(assert (=> start!45242 e!291112))

(assert (=> start!45242 true))

(declare-fun array_inv!11199 (array!32090) Bool)

(assert (=> start!45242 (array_inv!11199 a!3235)))

(declare-fun b!496460 () Bool)

(assert (=> b!496460 (= e!291112 e!291114)))

(declare-fun res!298996 () Bool)

(assert (=> b!496460 (=> (not res!298996) (not e!291114))))

(declare-fun lt!224802 () SeekEntryResult!3899)

(assert (=> b!496460 (= res!298996 (or (= lt!224802 (MissingZero!3899 i!1204)) (= lt!224802 (MissingVacant!3899 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32090 (_ BitVec 32)) SeekEntryResult!3899)

(assert (=> b!496460 (= lt!224802 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!496461 () Bool)

(declare-fun res!298994 () Bool)

(assert (=> b!496461 (=> (not res!298994) (not e!291112))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496461 (= res!298994 (validKeyInArray!0 (select (arr!15425 a!3235) j!176)))))

(declare-fun b!496462 () Bool)

(declare-fun res!298997 () Bool)

(assert (=> b!496462 (=> (not res!298997) (not e!291112))))

(assert (=> b!496462 (= res!298997 (and (= (size!15789 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15789 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15789 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496463 () Bool)

(declare-fun res!298995 () Bool)

(assert (=> b!496463 (=> (not res!298995) (not e!291112))))

(assert (=> b!496463 (= res!298995 (validKeyInArray!0 k!2280))))

(declare-fun b!496464 () Bool)

(assert (=> b!496464 (= e!291113 (= (seekEntryOrOpen!0 (select (arr!15425 a!3235) j!176) a!3235 mask!3524) (Found!3899 j!176)))))

(declare-fun b!496465 () Bool)

(declare-fun res!298993 () Bool)

(assert (=> b!496465 (=> (not res!298993) (not e!291114))))

(declare-datatypes ((List!9636 0))(
  ( (Nil!9633) (Cons!9632 (h!10503 (_ BitVec 64)) (t!15872 List!9636)) )
))
(declare-fun arrayNoDuplicates!0 (array!32090 (_ BitVec 32) List!9636) Bool)

(assert (=> b!496465 (= res!298993 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9633))))

(declare-fun b!496466 () Bool)

(declare-fun res!298999 () Bool)

(assert (=> b!496466 (=> (not res!298999) (not e!291114))))

(assert (=> b!496466 (= res!298999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45242 res!299003) b!496462))

(assert (= (and b!496462 res!298997) b!496461))

(assert (= (and b!496461 res!298994) b!496463))

(assert (= (and b!496463 res!298995) b!496458))

(assert (= (and b!496458 res!299000) b!496460))

(assert (= (and b!496460 res!298996) b!496466))

(assert (= (and b!496466 res!298999) b!496465))

(assert (= (and b!496465 res!298993) b!496456))

(assert (= (and b!496456 res!299002) b!496464))

(assert (= (and b!496456 (not res!299001)) b!496457))

(assert (= (and b!496457 (not res!298998)) b!496459))

(declare-fun m!477761 () Bool)

(assert (=> b!496459 m!477761))

(declare-fun m!477763 () Bool)

(assert (=> b!496459 m!477763))

(declare-fun m!477765 () Bool)

(assert (=> b!496465 m!477765))

(assert (=> b!496461 m!477763))

(assert (=> b!496461 m!477763))

(declare-fun m!477767 () Bool)

(assert (=> b!496461 m!477767))

(declare-fun m!477769 () Bool)

(assert (=> b!496456 m!477769))

(declare-fun m!477771 () Bool)

(assert (=> b!496456 m!477771))

(declare-fun m!477773 () Bool)

(assert (=> b!496456 m!477773))

(assert (=> b!496456 m!477763))

(declare-fun m!477775 () Bool)

(assert (=> b!496456 m!477775))

(assert (=> b!496456 m!477763))

(declare-fun m!477777 () Bool)

(assert (=> b!496456 m!477777))

(assert (=> b!496456 m!477763))

(declare-fun m!477779 () Bool)

(assert (=> b!496456 m!477779))

(assert (=> b!496456 m!477773))

(declare-fun m!477781 () Bool)

(assert (=> b!496456 m!477781))

(assert (=> b!496456 m!477773))

(declare-fun m!477783 () Bool)

(assert (=> b!496456 m!477783))

(assert (=> b!496464 m!477763))

(assert (=> b!496464 m!477763))

(declare-fun m!477785 () Bool)

(assert (=> b!496464 m!477785))

(declare-fun m!477787 () Bool)

(assert (=> start!45242 m!477787))

(declare-fun m!477789 () Bool)

(assert (=> start!45242 m!477789))

(declare-fun m!477791 () Bool)

(assert (=> b!496463 m!477791))

(declare-fun m!477793 () Bool)

(assert (=> b!496460 m!477793))

(declare-fun m!477795 () Bool)

(assert (=> b!496466 m!477795))

(declare-fun m!477797 () Bool)

(assert (=> b!496458 m!477797))

(push 1)

