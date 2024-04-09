; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47442 () Bool)

(assert start!47442)

(declare-fun b!521845 () Bool)

(declare-fun res!319714 () Bool)

(declare-fun e!304413 () Bool)

(assert (=> b!521845 (=> (not res!319714) (not e!304413))))

(declare-datatypes ((array!33228 0))(
  ( (array!33229 (arr!15967 (Array (_ BitVec 32) (_ BitVec 64))) (size!16331 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33228)

(declare-datatypes ((List!10178 0))(
  ( (Nil!10175) (Cons!10174 (h!11096 (_ BitVec 64)) (t!16414 List!10178)) )
))
(declare-fun arrayNoDuplicates!0 (array!33228 (_ BitVec 32) List!10178) Bool)

(assert (=> b!521845 (= res!319714 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10175))))

(declare-fun b!521846 () Bool)

(declare-fun res!319717 () Bool)

(declare-fun e!304408 () Bool)

(assert (=> b!521846 (=> (not res!319717) (not e!304408))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521846 (= res!319717 (validKeyInArray!0 k0!2280))))

(declare-fun b!521848 () Bool)

(declare-fun res!319708 () Bool)

(assert (=> b!521848 (=> (not res!319708) (not e!304408))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!521848 (= res!319708 (and (= (size!16331 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16331 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16331 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521849 () Bool)

(declare-fun res!319712 () Bool)

(assert (=> b!521849 (=> (not res!319712) (not e!304408))))

(declare-fun arrayContainsKey!0 (array!33228 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521849 (= res!319712 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521850 () Bool)

(declare-datatypes ((Unit!16230 0))(
  ( (Unit!16231) )
))
(declare-fun e!304411 () Unit!16230)

(declare-fun Unit!16232 () Unit!16230)

(assert (=> b!521850 (= e!304411 Unit!16232)))

(declare-fun lt!239307 () (_ BitVec 32))

(declare-fun lt!239312 () Unit!16230)

(declare-datatypes ((SeekEntryResult!4441 0))(
  ( (MissingZero!4441 (index!19967 (_ BitVec 32))) (Found!4441 (index!19968 (_ BitVec 32))) (Intermediate!4441 (undefined!5253 Bool) (index!19969 (_ BitVec 32)) (x!48974 (_ BitVec 32))) (Undefined!4441) (MissingVacant!4441 (index!19970 (_ BitVec 32))) )
))
(declare-fun lt!239310 () SeekEntryResult!4441)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33228 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16230)

(assert (=> b!521850 (= lt!239312 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!239307 #b00000000000000000000000000000000 (index!19969 lt!239310) (x!48974 lt!239310) mask!3524))))

(declare-fun res!319709 () Bool)

(declare-fun lt!239311 () array!33228)

(declare-fun lt!239309 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33228 (_ BitVec 32)) SeekEntryResult!4441)

(assert (=> b!521850 (= res!319709 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239307 lt!239309 lt!239311 mask!3524) (Intermediate!4441 false (index!19969 lt!239310) (x!48974 lt!239310))))))

(declare-fun e!304409 () Bool)

(assert (=> b!521850 (=> (not res!319709) (not e!304409))))

(assert (=> b!521850 e!304409))

(declare-fun b!521851 () Bool)

(declare-fun e!304414 () Bool)

(assert (=> b!521851 (= e!304413 (not e!304414))))

(declare-fun res!319710 () Bool)

(assert (=> b!521851 (=> res!319710 e!304414)))

(declare-fun lt!239314 () (_ BitVec 32))

(assert (=> b!521851 (= res!319710 (= lt!239310 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239314 lt!239309 lt!239311 mask!3524)))))

(assert (=> b!521851 (= lt!239310 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239307 (select (arr!15967 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521851 (= lt!239314 (toIndex!0 lt!239309 mask!3524))))

(assert (=> b!521851 (= lt!239309 (select (store (arr!15967 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!521851 (= lt!239307 (toIndex!0 (select (arr!15967 a!3235) j!176) mask!3524))))

(assert (=> b!521851 (= lt!239311 (array!33229 (store (arr!15967 a!3235) i!1204 k0!2280) (size!16331 a!3235)))))

(declare-fun e!304412 () Bool)

(assert (=> b!521851 e!304412))

(declare-fun res!319718 () Bool)

(assert (=> b!521851 (=> (not res!319718) (not e!304412))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33228 (_ BitVec 32)) Bool)

(assert (=> b!521851 (= res!319718 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239308 () Unit!16230)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33228 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16230)

(assert (=> b!521851 (= lt!239308 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521852 () Bool)

(declare-fun res!319716 () Bool)

(assert (=> b!521852 (=> res!319716 e!304414)))

(get-info :version)

(assert (=> b!521852 (= res!319716 (or (undefined!5253 lt!239310) (not ((_ is Intermediate!4441) lt!239310))))))

(declare-fun b!521847 () Bool)

(declare-fun res!319711 () Bool)

(assert (=> b!521847 (=> (not res!319711) (not e!304408))))

(assert (=> b!521847 (= res!319711 (validKeyInArray!0 (select (arr!15967 a!3235) j!176)))))

(declare-fun res!319713 () Bool)

(assert (=> start!47442 (=> (not res!319713) (not e!304408))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47442 (= res!319713 (validMask!0 mask!3524))))

(assert (=> start!47442 e!304408))

(assert (=> start!47442 true))

(declare-fun array_inv!11741 (array!33228) Bool)

(assert (=> start!47442 (array_inv!11741 a!3235)))

(declare-fun b!521853 () Bool)

(assert (=> b!521853 (= e!304408 e!304413)))

(declare-fun res!319707 () Bool)

(assert (=> b!521853 (=> (not res!319707) (not e!304413))))

(declare-fun lt!239313 () SeekEntryResult!4441)

(assert (=> b!521853 (= res!319707 (or (= lt!239313 (MissingZero!4441 i!1204)) (= lt!239313 (MissingVacant!4441 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33228 (_ BitVec 32)) SeekEntryResult!4441)

(assert (=> b!521853 (= lt!239313 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!521854 () Bool)

(declare-fun res!319715 () Bool)

(assert (=> b!521854 (=> (not res!319715) (not e!304413))))

(assert (=> b!521854 (= res!319715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!521855 () Bool)

(assert (=> b!521855 (= e!304409 false)))

(declare-fun b!521856 () Bool)

(declare-fun Unit!16233 () Unit!16230)

(assert (=> b!521856 (= e!304411 Unit!16233)))

(declare-fun b!521857 () Bool)

(assert (=> b!521857 (= e!304412 (= (seekEntryOrOpen!0 (select (arr!15967 a!3235) j!176) a!3235 mask!3524) (Found!4441 j!176)))))

(declare-fun b!521858 () Bool)

(assert (=> b!521858 (= e!304414 true)))

(assert (=> b!521858 (and (or (= (select (arr!15967 a!3235) (index!19969 lt!239310)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15967 a!3235) (index!19969 lt!239310)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15967 a!3235) (index!19969 lt!239310)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15967 a!3235) (index!19969 lt!239310)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239315 () Unit!16230)

(assert (=> b!521858 (= lt!239315 e!304411)))

(declare-fun c!61370 () Bool)

(assert (=> b!521858 (= c!61370 (= (select (arr!15967 a!3235) (index!19969 lt!239310)) (select (arr!15967 a!3235) j!176)))))

(assert (=> b!521858 (and (bvslt (x!48974 lt!239310) #b01111111111111111111111111111110) (or (= (select (arr!15967 a!3235) (index!19969 lt!239310)) (select (arr!15967 a!3235) j!176)) (= (select (arr!15967 a!3235) (index!19969 lt!239310)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15967 a!3235) (index!19969 lt!239310)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!47442 res!319713) b!521848))

(assert (= (and b!521848 res!319708) b!521847))

(assert (= (and b!521847 res!319711) b!521846))

(assert (= (and b!521846 res!319717) b!521849))

(assert (= (and b!521849 res!319712) b!521853))

(assert (= (and b!521853 res!319707) b!521854))

(assert (= (and b!521854 res!319715) b!521845))

(assert (= (and b!521845 res!319714) b!521851))

(assert (= (and b!521851 res!319718) b!521857))

(assert (= (and b!521851 (not res!319710)) b!521852))

(assert (= (and b!521852 (not res!319716)) b!521858))

(assert (= (and b!521858 c!61370) b!521850))

(assert (= (and b!521858 (not c!61370)) b!521856))

(assert (= (and b!521850 res!319709) b!521855))

(declare-fun m!502795 () Bool)

(assert (=> b!521846 m!502795))

(declare-fun m!502797 () Bool)

(assert (=> b!521845 m!502797))

(declare-fun m!502799 () Bool)

(assert (=> b!521854 m!502799))

(declare-fun m!502801 () Bool)

(assert (=> b!521847 m!502801))

(assert (=> b!521847 m!502801))

(declare-fun m!502803 () Bool)

(assert (=> b!521847 m!502803))

(declare-fun m!502805 () Bool)

(assert (=> b!521853 m!502805))

(declare-fun m!502807 () Bool)

(assert (=> b!521851 m!502807))

(assert (=> b!521851 m!502801))

(declare-fun m!502809 () Bool)

(assert (=> b!521851 m!502809))

(assert (=> b!521851 m!502801))

(declare-fun m!502811 () Bool)

(assert (=> b!521851 m!502811))

(assert (=> b!521851 m!502801))

(declare-fun m!502813 () Bool)

(assert (=> b!521851 m!502813))

(declare-fun m!502815 () Bool)

(assert (=> b!521851 m!502815))

(declare-fun m!502817 () Bool)

(assert (=> b!521851 m!502817))

(declare-fun m!502819 () Bool)

(assert (=> b!521851 m!502819))

(declare-fun m!502821 () Bool)

(assert (=> b!521851 m!502821))

(declare-fun m!502823 () Bool)

(assert (=> start!47442 m!502823))

(declare-fun m!502825 () Bool)

(assert (=> start!47442 m!502825))

(declare-fun m!502827 () Bool)

(assert (=> b!521849 m!502827))

(declare-fun m!502829 () Bool)

(assert (=> b!521850 m!502829))

(declare-fun m!502831 () Bool)

(assert (=> b!521850 m!502831))

(assert (=> b!521857 m!502801))

(assert (=> b!521857 m!502801))

(declare-fun m!502833 () Bool)

(assert (=> b!521857 m!502833))

(declare-fun m!502835 () Bool)

(assert (=> b!521858 m!502835))

(assert (=> b!521858 m!502801))

(check-sat (not b!521850) (not b!521847) (not start!47442) (not b!521846) (not b!521851) (not b!521857) (not b!521854) (not b!521853) (not b!521849) (not b!521845))
(check-sat)
