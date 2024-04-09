; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46772 () Bool)

(assert start!46772)

(declare-fun b!516241 () Bool)

(declare-fun e!301293 () Bool)

(declare-fun e!301295 () Bool)

(assert (=> b!516241 (= e!301293 (not e!301295))))

(declare-fun res!315960 () Bool)

(assert (=> b!516241 (=> res!315960 e!301295)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33044 0))(
  ( (array!33045 (arr!15887 (Array (_ BitVec 32) (_ BitVec 64))) (size!16251 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33044)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4361 0))(
  ( (MissingZero!4361 (index!19632 (_ BitVec 32))) (Found!4361 (index!19633 (_ BitVec 32))) (Intermediate!4361 (undefined!5173 Bool) (index!19634 (_ BitVec 32)) (x!48615 (_ BitVec 32))) (Undefined!4361) (MissingVacant!4361 (index!19635 (_ BitVec 32))) )
))
(declare-fun lt!236380 () SeekEntryResult!4361)

(declare-fun lt!236381 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33044 (_ BitVec 32)) SeekEntryResult!4361)

(assert (=> b!516241 (= res!315960 (= lt!236380 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236381 (select (store (arr!15887 a!3235) i!1204 k!2280) j!176) (array!33045 (store (arr!15887 a!3235) i!1204 k!2280) (size!16251 a!3235)) mask!3524)))))

(declare-fun lt!236377 () (_ BitVec 32))

(assert (=> b!516241 (= lt!236380 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236377 (select (arr!15887 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516241 (= lt!236381 (toIndex!0 (select (store (arr!15887 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!516241 (= lt!236377 (toIndex!0 (select (arr!15887 a!3235) j!176) mask!3524))))

(declare-fun e!301294 () Bool)

(assert (=> b!516241 e!301294))

(declare-fun res!315955 () Bool)

(assert (=> b!516241 (=> (not res!315955) (not e!301294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33044 (_ BitVec 32)) Bool)

(assert (=> b!516241 (= res!315955 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15972 0))(
  ( (Unit!15973) )
))
(declare-fun lt!236378 () Unit!15972)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33044 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15972)

(assert (=> b!516241 (= lt!236378 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!516242 () Bool)

(declare-fun res!315961 () Bool)

(declare-fun e!301296 () Bool)

(assert (=> b!516242 (=> (not res!315961) (not e!301296))))

(declare-fun arrayContainsKey!0 (array!33044 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!516242 (= res!315961 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!516244 () Bool)

(declare-fun res!315962 () Bool)

(assert (=> b!516244 (=> (not res!315962) (not e!301296))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516244 (= res!315962 (validKeyInArray!0 (select (arr!15887 a!3235) j!176)))))

(declare-fun b!516245 () Bool)

(assert (=> b!516245 (= e!301296 e!301293)))

(declare-fun res!315958 () Bool)

(assert (=> b!516245 (=> (not res!315958) (not e!301293))))

(declare-fun lt!236379 () SeekEntryResult!4361)

(assert (=> b!516245 (= res!315958 (or (= lt!236379 (MissingZero!4361 i!1204)) (= lt!236379 (MissingVacant!4361 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33044 (_ BitVec 32)) SeekEntryResult!4361)

(assert (=> b!516245 (= lt!236379 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!315964 () Bool)

(assert (=> start!46772 (=> (not res!315964) (not e!301296))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46772 (= res!315964 (validMask!0 mask!3524))))

(assert (=> start!46772 e!301296))

(assert (=> start!46772 true))

(declare-fun array_inv!11661 (array!33044) Bool)

(assert (=> start!46772 (array_inv!11661 a!3235)))

(declare-fun b!516243 () Bool)

(assert (=> b!516243 (= e!301294 (= (seekEntryOrOpen!0 (select (arr!15887 a!3235) j!176) a!3235 mask!3524) (Found!4361 j!176)))))

(declare-fun b!516246 () Bool)

(declare-fun res!315963 () Bool)

(assert (=> b!516246 (=> (not res!315963) (not e!301293))))

(declare-datatypes ((List!10098 0))(
  ( (Nil!10095) (Cons!10094 (h!10992 (_ BitVec 64)) (t!16334 List!10098)) )
))
(declare-fun arrayNoDuplicates!0 (array!33044 (_ BitVec 32) List!10098) Bool)

(assert (=> b!516246 (= res!315963 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10095))))

(declare-fun b!516247 () Bool)

(declare-fun res!315957 () Bool)

(assert (=> b!516247 (=> (not res!315957) (not e!301296))))

(assert (=> b!516247 (= res!315957 (validKeyInArray!0 k!2280))))

(declare-fun b!516248 () Bool)

(declare-fun res!315959 () Bool)

(assert (=> b!516248 (=> (not res!315959) (not e!301293))))

(assert (=> b!516248 (= res!315959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!516249 () Bool)

(declare-fun res!315965 () Bool)

(assert (=> b!516249 (=> res!315965 e!301295)))

(assert (=> b!516249 (= res!315965 (or (undefined!5173 lt!236380) (not (is-Intermediate!4361 lt!236380))))))

(declare-fun b!516250 () Bool)

(declare-fun res!315956 () Bool)

(assert (=> b!516250 (=> (not res!315956) (not e!301296))))

(assert (=> b!516250 (= res!315956 (and (= (size!16251 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16251 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16251 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!516251 () Bool)

(assert (=> b!516251 (= e!301295 true)))

(assert (=> b!516251 (and (bvslt (x!48615 lt!236380) #b01111111111111111111111111111110) (or (= (select (arr!15887 a!3235) (index!19634 lt!236380)) (select (arr!15887 a!3235) j!176)) (= (select (arr!15887 a!3235) (index!19634 lt!236380)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15887 a!3235) (index!19634 lt!236380)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!46772 res!315964) b!516250))

(assert (= (and b!516250 res!315956) b!516244))

(assert (= (and b!516244 res!315962) b!516247))

(assert (= (and b!516247 res!315957) b!516242))

(assert (= (and b!516242 res!315961) b!516245))

(assert (= (and b!516245 res!315958) b!516248))

(assert (= (and b!516248 res!315959) b!516246))

(assert (= (and b!516246 res!315963) b!516241))

(assert (= (and b!516241 res!315955) b!516243))

(assert (= (and b!516241 (not res!315960)) b!516249))

(assert (= (and b!516249 (not res!315965)) b!516251))

(declare-fun m!497765 () Bool)

(assert (=> b!516245 m!497765))

(declare-fun m!497767 () Bool)

(assert (=> b!516244 m!497767))

(assert (=> b!516244 m!497767))

(declare-fun m!497769 () Bool)

(assert (=> b!516244 m!497769))

(assert (=> b!516243 m!497767))

(assert (=> b!516243 m!497767))

(declare-fun m!497771 () Bool)

(assert (=> b!516243 m!497771))

(declare-fun m!497773 () Bool)

(assert (=> b!516241 m!497773))

(declare-fun m!497775 () Bool)

(assert (=> b!516241 m!497775))

(assert (=> b!516241 m!497767))

(declare-fun m!497777 () Bool)

(assert (=> b!516241 m!497777))

(assert (=> b!516241 m!497767))

(declare-fun m!497779 () Bool)

(assert (=> b!516241 m!497779))

(declare-fun m!497781 () Bool)

(assert (=> b!516241 m!497781))

(assert (=> b!516241 m!497779))

(declare-fun m!497783 () Bool)

(assert (=> b!516241 m!497783))

(assert (=> b!516241 m!497779))

(assert (=> b!516241 m!497767))

(declare-fun m!497785 () Bool)

(assert (=> b!516241 m!497785))

(declare-fun m!497787 () Bool)

(assert (=> b!516241 m!497787))

(declare-fun m!497789 () Bool)

(assert (=> start!46772 m!497789))

(declare-fun m!497791 () Bool)

(assert (=> start!46772 m!497791))

(declare-fun m!497793 () Bool)

(assert (=> b!516251 m!497793))

(assert (=> b!516251 m!497767))

(declare-fun m!497795 () Bool)

(assert (=> b!516248 m!497795))

(declare-fun m!497797 () Bool)

(assert (=> b!516247 m!497797))

(declare-fun m!497799 () Bool)

(assert (=> b!516246 m!497799))

(declare-fun m!497801 () Bool)

(assert (=> b!516242 m!497801))

(push 1)

