; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51406 () Bool)

(assert start!51406)

(declare-fun b!561062 () Bool)

(declare-fun e!323306 () Bool)

(assert (=> b!561062 (= e!323306 (not true))))

(declare-fun e!323303 () Bool)

(assert (=> b!561062 e!323303))

(declare-fun res!352375 () Bool)

(assert (=> b!561062 (=> (not res!352375) (not e!323303))))

(declare-datatypes ((SeekEntryResult!5365 0))(
  ( (MissingZero!5365 (index!23687 (_ BitVec 32))) (Found!5365 (index!23688 (_ BitVec 32))) (Intermediate!5365 (undefined!6177 Bool) (index!23689 (_ BitVec 32)) (x!52623 (_ BitVec 32))) (Undefined!5365) (MissingVacant!5365 (index!23690 (_ BitVec 32))) )
))
(declare-fun lt!255349 () SeekEntryResult!5365)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!561062 (= res!352375 (= lt!255349 (Found!5365 j!142)))))

(declare-datatypes ((array!35225 0))(
  ( (array!35226 (arr!16909 (Array (_ BitVec 32) (_ BitVec 64))) (size!17273 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35225)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35225 (_ BitVec 32)) SeekEntryResult!5365)

(assert (=> b!561062 (= lt!255349 (seekEntryOrOpen!0 (select (arr!16909 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35225 (_ BitVec 32)) Bool)

(assert (=> b!561062 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17504 0))(
  ( (Unit!17505) )
))
(declare-fun lt!255351 () Unit!17504)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35225 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17504)

(assert (=> b!561062 (= lt!255351 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561063 () Bool)

(declare-fun e!323307 () Bool)

(assert (=> b!561063 (= e!323303 e!323307)))

(declare-fun res!352372 () Bool)

(assert (=> b!561063 (=> res!352372 e!323307)))

(declare-fun lt!255345 () SeekEntryResult!5365)

(get-info :version)

(assert (=> b!561063 (= res!352372 (or (undefined!6177 lt!255345) (not ((_ is Intermediate!5365) lt!255345))))))

(declare-fun b!561064 () Bool)

(declare-fun e!323302 () Bool)

(declare-fun e!323305 () Bool)

(assert (=> b!561064 (= e!323302 e!323305)))

(declare-fun res!352366 () Bool)

(assert (=> b!561064 (=> (not res!352366) (not e!323305))))

(declare-fun lt!255353 () SeekEntryResult!5365)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!561064 (= res!352366 (or (= lt!255353 (MissingZero!5365 i!1132)) (= lt!255353 (MissingVacant!5365 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!561064 (= lt!255353 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!561065 () Bool)

(declare-fun res!352364 () Bool)

(assert (=> b!561065 (=> (not res!352364) (not e!323305))))

(assert (=> b!561065 (= res!352364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun lt!255348 () (_ BitVec 64))

(declare-fun b!561066 () Bool)

(declare-fun lt!255346 () array!35225)

(declare-fun e!323308 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35225 (_ BitVec 32)) SeekEntryResult!5365)

(assert (=> b!561066 (= e!323308 (= (seekEntryOrOpen!0 lt!255348 lt!255346 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52623 lt!255345) (index!23689 lt!255345) (index!23689 lt!255345) lt!255348 lt!255346 mask!3119)))))

(declare-fun b!561067 () Bool)

(declare-fun e!323304 () Bool)

(assert (=> b!561067 (= e!323307 e!323304)))

(declare-fun res!352371 () Bool)

(assert (=> b!561067 (=> res!352371 e!323304)))

(declare-fun lt!255350 () (_ BitVec 64))

(assert (=> b!561067 (= res!352371 (or (= lt!255350 (select (arr!16909 a!3118) j!142)) (= lt!255350 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561067 (= lt!255350 (select (arr!16909 a!3118) (index!23689 lt!255345)))))

(declare-fun b!561068 () Bool)

(declare-fun res!352373 () Bool)

(assert (=> b!561068 (=> (not res!352373) (not e!323305))))

(declare-datatypes ((List!11042 0))(
  ( (Nil!11039) (Cons!11038 (h!12041 (_ BitVec 64)) (t!17278 List!11042)) )
))
(declare-fun arrayNoDuplicates!0 (array!35225 (_ BitVec 32) List!11042) Bool)

(assert (=> b!561068 (= res!352373 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11039))))

(declare-fun b!561069 () Bool)

(declare-fun res!352376 () Bool)

(assert (=> b!561069 (=> (not res!352376) (not e!323302))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561069 (= res!352376 (validKeyInArray!0 k0!1914))))

(declare-fun b!561070 () Bool)

(declare-fun res!352365 () Bool)

(assert (=> b!561070 (=> (not res!352365) (not e!323302))))

(declare-fun arrayContainsKey!0 (array!35225 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561070 (= res!352365 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!352374 () Bool)

(assert (=> start!51406 (=> (not res!352374) (not e!323302))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51406 (= res!352374 (validMask!0 mask!3119))))

(assert (=> start!51406 e!323302))

(assert (=> start!51406 true))

(declare-fun array_inv!12683 (array!35225) Bool)

(assert (=> start!51406 (array_inv!12683 a!3118)))

(declare-fun b!561071 () Bool)

(assert (=> b!561071 (= e!323305 e!323306)))

(declare-fun res!352369 () Bool)

(assert (=> b!561071 (=> (not res!352369) (not e!323306))))

(declare-fun lt!255347 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35225 (_ BitVec 32)) SeekEntryResult!5365)

(assert (=> b!561071 (= res!352369 (= lt!255345 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255347 lt!255348 lt!255346 mask!3119)))))

(declare-fun lt!255352 () (_ BitVec 32))

(assert (=> b!561071 (= lt!255345 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255352 (select (arr!16909 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561071 (= lt!255347 (toIndex!0 lt!255348 mask!3119))))

(assert (=> b!561071 (= lt!255348 (select (store (arr!16909 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!561071 (= lt!255352 (toIndex!0 (select (arr!16909 a!3118) j!142) mask!3119))))

(assert (=> b!561071 (= lt!255346 (array!35226 (store (arr!16909 a!3118) i!1132 k0!1914) (size!17273 a!3118)))))

(declare-fun b!561072 () Bool)

(assert (=> b!561072 (= e!323304 e!323308)))

(declare-fun res!352370 () Bool)

(assert (=> b!561072 (=> (not res!352370) (not e!323308))))

(assert (=> b!561072 (= res!352370 (= lt!255349 (seekKeyOrZeroReturnVacant!0 (x!52623 lt!255345) (index!23689 lt!255345) (index!23689 lt!255345) (select (arr!16909 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!561073 () Bool)

(declare-fun res!352368 () Bool)

(assert (=> b!561073 (=> (not res!352368) (not e!323302))))

(assert (=> b!561073 (= res!352368 (and (= (size!17273 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17273 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17273 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!561074 () Bool)

(declare-fun res!352367 () Bool)

(assert (=> b!561074 (=> (not res!352367) (not e!323302))))

(assert (=> b!561074 (= res!352367 (validKeyInArray!0 (select (arr!16909 a!3118) j!142)))))

(assert (= (and start!51406 res!352374) b!561073))

(assert (= (and b!561073 res!352368) b!561074))

(assert (= (and b!561074 res!352367) b!561069))

(assert (= (and b!561069 res!352376) b!561070))

(assert (= (and b!561070 res!352365) b!561064))

(assert (= (and b!561064 res!352366) b!561065))

(assert (= (and b!561065 res!352364) b!561068))

(assert (= (and b!561068 res!352373) b!561071))

(assert (= (and b!561071 res!352369) b!561062))

(assert (= (and b!561062 res!352375) b!561063))

(assert (= (and b!561063 (not res!352372)) b!561067))

(assert (= (and b!561067 (not res!352371)) b!561072))

(assert (= (and b!561072 res!352370) b!561066))

(declare-fun m!538971 () Bool)

(assert (=> b!561071 m!538971))

(declare-fun m!538973 () Bool)

(assert (=> b!561071 m!538973))

(assert (=> b!561071 m!538971))

(declare-fun m!538975 () Bool)

(assert (=> b!561071 m!538975))

(assert (=> b!561071 m!538971))

(declare-fun m!538977 () Bool)

(assert (=> b!561071 m!538977))

(declare-fun m!538979 () Bool)

(assert (=> b!561071 m!538979))

(declare-fun m!538981 () Bool)

(assert (=> b!561071 m!538981))

(declare-fun m!538983 () Bool)

(assert (=> b!561071 m!538983))

(declare-fun m!538985 () Bool)

(assert (=> b!561065 m!538985))

(declare-fun m!538987 () Bool)

(assert (=> b!561070 m!538987))

(assert (=> b!561074 m!538971))

(assert (=> b!561074 m!538971))

(declare-fun m!538989 () Bool)

(assert (=> b!561074 m!538989))

(declare-fun m!538991 () Bool)

(assert (=> b!561064 m!538991))

(assert (=> b!561067 m!538971))

(declare-fun m!538993 () Bool)

(assert (=> b!561067 m!538993))

(assert (=> b!561072 m!538971))

(assert (=> b!561072 m!538971))

(declare-fun m!538995 () Bool)

(assert (=> b!561072 m!538995))

(assert (=> b!561062 m!538971))

(assert (=> b!561062 m!538971))

(declare-fun m!538997 () Bool)

(assert (=> b!561062 m!538997))

(declare-fun m!538999 () Bool)

(assert (=> b!561062 m!538999))

(declare-fun m!539001 () Bool)

(assert (=> b!561062 m!539001))

(declare-fun m!539003 () Bool)

(assert (=> b!561066 m!539003))

(declare-fun m!539005 () Bool)

(assert (=> b!561066 m!539005))

(declare-fun m!539007 () Bool)

(assert (=> start!51406 m!539007))

(declare-fun m!539009 () Bool)

(assert (=> start!51406 m!539009))

(declare-fun m!539011 () Bool)

(assert (=> b!561069 m!539011))

(declare-fun m!539013 () Bool)

(assert (=> b!561068 m!539013))

(check-sat (not b!561069) (not b!561062) (not b!561071) (not b!561074) (not b!561064) (not b!561072) (not b!561065) (not start!51406) (not b!561068) (not b!561070) (not b!561066))
(check-sat)
