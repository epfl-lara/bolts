; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51370 () Bool)

(assert start!51370)

(declare-fun b!560360 () Bool)

(declare-fun e!322875 () Bool)

(assert (=> b!560360 (= e!322875 (not true))))

(declare-fun e!322871 () Bool)

(assert (=> b!560360 e!322871))

(declare-fun res!351667 () Bool)

(assert (=> b!560360 (=> (not res!351667) (not e!322871))))

(declare-datatypes ((SeekEntryResult!5347 0))(
  ( (MissingZero!5347 (index!23615 (_ BitVec 32))) (Found!5347 (index!23616 (_ BitVec 32))) (Intermediate!5347 (undefined!6159 Bool) (index!23617 (_ BitVec 32)) (x!52557 (_ BitVec 32))) (Undefined!5347) (MissingVacant!5347 (index!23618 (_ BitVec 32))) )
))
(declare-fun lt!254866 () SeekEntryResult!5347)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!560360 (= res!351667 (= lt!254866 (Found!5347 j!142)))))

(declare-datatypes ((array!35189 0))(
  ( (array!35190 (arr!16891 (Array (_ BitVec 32) (_ BitVec 64))) (size!17255 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35189)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35189 (_ BitVec 32)) SeekEntryResult!5347)

(assert (=> b!560360 (= lt!254866 (seekEntryOrOpen!0 (select (arr!16891 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35189 (_ BitVec 32)) Bool)

(assert (=> b!560360 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17468 0))(
  ( (Unit!17469) )
))
(declare-fun lt!254864 () Unit!17468)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35189 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17468)

(assert (=> b!560360 (= lt!254864 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!560361 () Bool)

(declare-fun res!351663 () Bool)

(declare-fun e!322873 () Bool)

(assert (=> b!560361 (=> (not res!351663) (not e!322873))))

(assert (=> b!560361 (= res!351663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560362 () Bool)

(assert (=> b!560362 (= e!322873 e!322875)))

(declare-fun res!351671 () Bool)

(assert (=> b!560362 (=> (not res!351671) (not e!322875))))

(declare-fun lt!254867 () (_ BitVec 64))

(declare-fun lt!254859 () SeekEntryResult!5347)

(declare-fun lt!254860 () (_ BitVec 32))

(declare-fun lt!254861 () array!35189)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35189 (_ BitVec 32)) SeekEntryResult!5347)

(assert (=> b!560362 (= res!351671 (= lt!254859 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254860 lt!254867 lt!254861 mask!3119)))))

(declare-fun lt!254862 () (_ BitVec 32))

(assert (=> b!560362 (= lt!254859 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254862 (select (arr!16891 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560362 (= lt!254860 (toIndex!0 lt!254867 mask!3119))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!560362 (= lt!254867 (select (store (arr!16891 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!560362 (= lt!254862 (toIndex!0 (select (arr!16891 a!3118) j!142) mask!3119))))

(assert (=> b!560362 (= lt!254861 (array!35190 (store (arr!16891 a!3118) i!1132 k0!1914) (size!17255 a!3118)))))

(declare-fun b!560363 () Bool)

(declare-fun res!351664 () Bool)

(assert (=> b!560363 (=> (not res!351664) (not e!322873))))

(declare-datatypes ((List!11024 0))(
  ( (Nil!11021) (Cons!11020 (h!12023 (_ BitVec 64)) (t!17260 List!11024)) )
))
(declare-fun arrayNoDuplicates!0 (array!35189 (_ BitVec 32) List!11024) Bool)

(assert (=> b!560363 (= res!351664 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11021))))

(declare-fun b!560364 () Bool)

(declare-fun e!322876 () Bool)

(declare-fun e!322869 () Bool)

(assert (=> b!560364 (= e!322876 e!322869)))

(declare-fun res!351668 () Bool)

(assert (=> b!560364 (=> res!351668 e!322869)))

(declare-fun lt!254865 () (_ BitVec 64))

(assert (=> b!560364 (= res!351668 (or (= lt!254865 (select (arr!16891 a!3118) j!142)) (= lt!254865 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!560364 (= lt!254865 (select (arr!16891 a!3118) (index!23617 lt!254859)))))

(declare-fun b!560365 () Bool)

(declare-fun res!351670 () Bool)

(declare-fun e!322872 () Bool)

(assert (=> b!560365 (=> (not res!351670) (not e!322872))))

(declare-fun arrayContainsKey!0 (array!35189 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560365 (= res!351670 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!560366 () Bool)

(assert (=> b!560366 (= e!322871 e!322876)))

(declare-fun res!351666 () Bool)

(assert (=> b!560366 (=> res!351666 e!322876)))

(get-info :version)

(assert (=> b!560366 (= res!351666 (or (undefined!6159 lt!254859) (not ((_ is Intermediate!5347) lt!254859))))))

(declare-fun b!560367 () Bool)

(declare-fun res!351662 () Bool)

(assert (=> b!560367 (=> (not res!351662) (not e!322872))))

(assert (=> b!560367 (= res!351662 (and (= (size!17255 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17255 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17255 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560368 () Bool)

(declare-fun res!351674 () Bool)

(assert (=> b!560368 (=> (not res!351674) (not e!322872))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560368 (= res!351674 (validKeyInArray!0 (select (arr!16891 a!3118) j!142)))))

(declare-fun b!560369 () Bool)

(assert (=> b!560369 (= e!322872 e!322873)))

(declare-fun res!351665 () Bool)

(assert (=> b!560369 (=> (not res!351665) (not e!322873))))

(declare-fun lt!254863 () SeekEntryResult!5347)

(assert (=> b!560369 (= res!351665 (or (= lt!254863 (MissingZero!5347 i!1132)) (= lt!254863 (MissingVacant!5347 i!1132))))))

(assert (=> b!560369 (= lt!254863 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!560370 () Bool)

(declare-fun e!322870 () Bool)

(assert (=> b!560370 (= e!322869 e!322870)))

(declare-fun res!351669 () Bool)

(assert (=> b!560370 (=> (not res!351669) (not e!322870))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35189 (_ BitVec 32)) SeekEntryResult!5347)

(assert (=> b!560370 (= res!351669 (= lt!254866 (seekKeyOrZeroReturnVacant!0 (x!52557 lt!254859) (index!23617 lt!254859) (index!23617 lt!254859) (select (arr!16891 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun res!351672 () Bool)

(assert (=> start!51370 (=> (not res!351672) (not e!322872))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51370 (= res!351672 (validMask!0 mask!3119))))

(assert (=> start!51370 e!322872))

(assert (=> start!51370 true))

(declare-fun array_inv!12665 (array!35189) Bool)

(assert (=> start!51370 (array_inv!12665 a!3118)))

(declare-fun b!560371 () Bool)

(assert (=> b!560371 (= e!322870 (= (seekEntryOrOpen!0 lt!254867 lt!254861 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52557 lt!254859) (index!23617 lt!254859) (index!23617 lt!254859) lt!254867 lt!254861 mask!3119)))))

(declare-fun b!560372 () Bool)

(declare-fun res!351673 () Bool)

(assert (=> b!560372 (=> (not res!351673) (not e!322872))))

(assert (=> b!560372 (= res!351673 (validKeyInArray!0 k0!1914))))

(assert (= (and start!51370 res!351672) b!560367))

(assert (= (and b!560367 res!351662) b!560368))

(assert (= (and b!560368 res!351674) b!560372))

(assert (= (and b!560372 res!351673) b!560365))

(assert (= (and b!560365 res!351670) b!560369))

(assert (= (and b!560369 res!351665) b!560361))

(assert (= (and b!560361 res!351663) b!560363))

(assert (= (and b!560363 res!351664) b!560362))

(assert (= (and b!560362 res!351671) b!560360))

(assert (= (and b!560360 res!351667) b!560366))

(assert (= (and b!560366 (not res!351666)) b!560364))

(assert (= (and b!560364 (not res!351668)) b!560370))

(assert (= (and b!560370 res!351669) b!560371))

(declare-fun m!538179 () Bool)

(assert (=> b!560370 m!538179))

(assert (=> b!560370 m!538179))

(declare-fun m!538181 () Bool)

(assert (=> b!560370 m!538181))

(declare-fun m!538183 () Bool)

(assert (=> b!560372 m!538183))

(declare-fun m!538185 () Bool)

(assert (=> b!560371 m!538185))

(declare-fun m!538187 () Bool)

(assert (=> b!560371 m!538187))

(assert (=> b!560364 m!538179))

(declare-fun m!538189 () Bool)

(assert (=> b!560364 m!538189))

(assert (=> b!560368 m!538179))

(assert (=> b!560368 m!538179))

(declare-fun m!538191 () Bool)

(assert (=> b!560368 m!538191))

(assert (=> b!560360 m!538179))

(assert (=> b!560360 m!538179))

(declare-fun m!538193 () Bool)

(assert (=> b!560360 m!538193))

(declare-fun m!538195 () Bool)

(assert (=> b!560360 m!538195))

(declare-fun m!538197 () Bool)

(assert (=> b!560360 m!538197))

(declare-fun m!538199 () Bool)

(assert (=> start!51370 m!538199))

(declare-fun m!538201 () Bool)

(assert (=> start!51370 m!538201))

(declare-fun m!538203 () Bool)

(assert (=> b!560363 m!538203))

(declare-fun m!538205 () Bool)

(assert (=> b!560361 m!538205))

(declare-fun m!538207 () Bool)

(assert (=> b!560369 m!538207))

(declare-fun m!538209 () Bool)

(assert (=> b!560365 m!538209))

(assert (=> b!560362 m!538179))

(declare-fun m!538211 () Bool)

(assert (=> b!560362 m!538211))

(declare-fun m!538213 () Bool)

(assert (=> b!560362 m!538213))

(assert (=> b!560362 m!538179))

(declare-fun m!538215 () Bool)

(assert (=> b!560362 m!538215))

(assert (=> b!560362 m!538179))

(declare-fun m!538217 () Bool)

(assert (=> b!560362 m!538217))

(declare-fun m!538219 () Bool)

(assert (=> b!560362 m!538219))

(declare-fun m!538221 () Bool)

(assert (=> b!560362 m!538221))

(check-sat (not b!560360) (not b!560370) (not start!51370) (not b!560365) (not b!560363) (not b!560362) (not b!560371) (not b!560372) (not b!560368) (not b!560361) (not b!560369))
(check-sat)
