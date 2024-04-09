; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47544 () Bool)

(assert start!47544)

(declare-fun b!522928 () Bool)

(declare-fun e!304998 () Bool)

(declare-fun e!305002 () Bool)

(assert (=> b!522928 (= e!304998 (not e!305002))))

(declare-fun res!320481 () Bool)

(assert (=> b!522928 (=> res!320481 e!305002)))

(declare-datatypes ((array!33267 0))(
  ( (array!33268 (arr!15985 (Array (_ BitVec 32) (_ BitVec 64))) (size!16349 (_ BitVec 32))) )
))
(declare-fun lt!239937 () array!33267)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!239945 () (_ BitVec 32))

(declare-fun lt!239943 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4459 0))(
  ( (MissingZero!4459 (index!20042 (_ BitVec 32))) (Found!4459 (index!20043 (_ BitVec 32))) (Intermediate!4459 (undefined!5271 Bool) (index!20044 (_ BitVec 32)) (x!49049 (_ BitVec 32))) (Undefined!4459) (MissingVacant!4459 (index!20045 (_ BitVec 32))) )
))
(declare-fun lt!239942 () SeekEntryResult!4459)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33267 (_ BitVec 32)) SeekEntryResult!4459)

(assert (=> b!522928 (= res!320481 (= lt!239942 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239945 lt!239943 lt!239937 mask!3524)))))

(declare-fun a!3235 () array!33267)

(declare-fun lt!239944 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!522928 (= lt!239942 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239944 (select (arr!15985 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!522928 (= lt!239945 (toIndex!0 lt!239943 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!522928 (= lt!239943 (select (store (arr!15985 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!522928 (= lt!239944 (toIndex!0 (select (arr!15985 a!3235) j!176) mask!3524))))

(assert (=> b!522928 (= lt!239937 (array!33268 (store (arr!15985 a!3235) i!1204 k0!2280) (size!16349 a!3235)))))

(declare-fun e!304997 () Bool)

(assert (=> b!522928 e!304997))

(declare-fun res!320483 () Bool)

(assert (=> b!522928 (=> (not res!320483) (not e!304997))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33267 (_ BitVec 32)) Bool)

(assert (=> b!522928 (= res!320483 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16302 0))(
  ( (Unit!16303) )
))
(declare-fun lt!239940 () Unit!16302)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33267 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16302)

(assert (=> b!522928 (= lt!239940 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!522929 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33267 (_ BitVec 32)) SeekEntryResult!4459)

(assert (=> b!522929 (= e!304997 (= (seekEntryOrOpen!0 (select (arr!15985 a!3235) j!176) a!3235 mask!3524) (Found!4459 j!176)))))

(declare-fun b!522931 () Bool)

(declare-fun res!320482 () Bool)

(declare-fun e!304996 () Bool)

(assert (=> b!522931 (=> (not res!320482) (not e!304996))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!522931 (= res!320482 (validKeyInArray!0 (select (arr!15985 a!3235) j!176)))))

(declare-fun b!522932 () Bool)

(assert (=> b!522932 (= e!304996 e!304998)))

(declare-fun res!320491 () Bool)

(assert (=> b!522932 (=> (not res!320491) (not e!304998))))

(declare-fun lt!239941 () SeekEntryResult!4459)

(assert (=> b!522932 (= res!320491 (or (= lt!239941 (MissingZero!4459 i!1204)) (= lt!239941 (MissingVacant!4459 i!1204))))))

(assert (=> b!522932 (= lt!239941 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!522933 () Bool)

(declare-fun e!305001 () Unit!16302)

(declare-fun Unit!16304 () Unit!16302)

(assert (=> b!522933 (= e!305001 Unit!16304)))

(declare-fun lt!239939 () Unit!16302)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33267 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16302)

(assert (=> b!522933 (= lt!239939 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!239944 #b00000000000000000000000000000000 (index!20044 lt!239942) (x!49049 lt!239942) mask!3524))))

(declare-fun res!320489 () Bool)

(assert (=> b!522933 (= res!320489 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239944 lt!239943 lt!239937 mask!3524) (Intermediate!4459 false (index!20044 lt!239942) (x!49049 lt!239942))))))

(declare-fun e!305000 () Bool)

(assert (=> b!522933 (=> (not res!320489) (not e!305000))))

(assert (=> b!522933 e!305000))

(declare-fun b!522934 () Bool)

(declare-fun res!320492 () Bool)

(assert (=> b!522934 (=> (not res!320492) (not e!304996))))

(assert (=> b!522934 (= res!320492 (validKeyInArray!0 k0!2280))))

(declare-fun b!522935 () Bool)

(declare-fun Unit!16305 () Unit!16302)

(assert (=> b!522935 (= e!305001 Unit!16305)))

(declare-fun b!522936 () Bool)

(declare-fun res!320485 () Bool)

(assert (=> b!522936 (=> (not res!320485) (not e!304998))))

(declare-datatypes ((List!10196 0))(
  ( (Nil!10193) (Cons!10192 (h!11117 (_ BitVec 64)) (t!16432 List!10196)) )
))
(declare-fun arrayNoDuplicates!0 (array!33267 (_ BitVec 32) List!10196) Bool)

(assert (=> b!522936 (= res!320485 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10193))))

(declare-fun b!522937 () Bool)

(assert (=> b!522937 (= e!305002 true)))

(assert (=> b!522937 (and (or (= (select (arr!15985 a!3235) (index!20044 lt!239942)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15985 a!3235) (index!20044 lt!239942)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15985 a!3235) (index!20044 lt!239942)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15985 a!3235) (index!20044 lt!239942)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239938 () Unit!16302)

(assert (=> b!522937 (= lt!239938 e!305001)))

(declare-fun c!61526 () Bool)

(assert (=> b!522937 (= c!61526 (= (select (arr!15985 a!3235) (index!20044 lt!239942)) (select (arr!15985 a!3235) j!176)))))

(assert (=> b!522937 (and (bvslt (x!49049 lt!239942) #b01111111111111111111111111111110) (or (= (select (arr!15985 a!3235) (index!20044 lt!239942)) (select (arr!15985 a!3235) j!176)) (= (select (arr!15985 a!3235) (index!20044 lt!239942)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15985 a!3235) (index!20044 lt!239942)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!522938 () Bool)

(assert (=> b!522938 (= e!305000 false)))

(declare-fun b!522939 () Bool)

(declare-fun res!320490 () Bool)

(assert (=> b!522939 (=> (not res!320490) (not e!304996))))

(declare-fun arrayContainsKey!0 (array!33267 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!522939 (= res!320490 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!522930 () Bool)

(declare-fun res!320487 () Bool)

(assert (=> b!522930 (=> (not res!320487) (not e!304996))))

(assert (=> b!522930 (= res!320487 (and (= (size!16349 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16349 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16349 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!320486 () Bool)

(assert (=> start!47544 (=> (not res!320486) (not e!304996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47544 (= res!320486 (validMask!0 mask!3524))))

(assert (=> start!47544 e!304996))

(assert (=> start!47544 true))

(declare-fun array_inv!11759 (array!33267) Bool)

(assert (=> start!47544 (array_inv!11759 a!3235)))

(declare-fun b!522940 () Bool)

(declare-fun res!320484 () Bool)

(assert (=> b!522940 (=> res!320484 e!305002)))

(get-info :version)

(assert (=> b!522940 (= res!320484 (or (undefined!5271 lt!239942) (not ((_ is Intermediate!4459) lt!239942))))))

(declare-fun b!522941 () Bool)

(declare-fun res!320488 () Bool)

(assert (=> b!522941 (=> (not res!320488) (not e!304998))))

(assert (=> b!522941 (= res!320488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!47544 res!320486) b!522930))

(assert (= (and b!522930 res!320487) b!522931))

(assert (= (and b!522931 res!320482) b!522934))

(assert (= (and b!522934 res!320492) b!522939))

(assert (= (and b!522939 res!320490) b!522932))

(assert (= (and b!522932 res!320491) b!522941))

(assert (= (and b!522941 res!320488) b!522936))

(assert (= (and b!522936 res!320485) b!522928))

(assert (= (and b!522928 res!320483) b!522929))

(assert (= (and b!522928 (not res!320481)) b!522940))

(assert (= (and b!522940 (not res!320484)) b!522937))

(assert (= (and b!522937 c!61526) b!522933))

(assert (= (and b!522937 (not c!61526)) b!522935))

(assert (= (and b!522933 res!320489) b!522938))

(declare-fun m!503785 () Bool)

(assert (=> b!522929 m!503785))

(assert (=> b!522929 m!503785))

(declare-fun m!503787 () Bool)

(assert (=> b!522929 m!503787))

(declare-fun m!503789 () Bool)

(assert (=> b!522936 m!503789))

(declare-fun m!503791 () Bool)

(assert (=> b!522934 m!503791))

(declare-fun m!503793 () Bool)

(assert (=> b!522932 m!503793))

(assert (=> b!522931 m!503785))

(assert (=> b!522931 m!503785))

(declare-fun m!503795 () Bool)

(assert (=> b!522931 m!503795))

(declare-fun m!503797 () Bool)

(assert (=> b!522928 m!503797))

(declare-fun m!503799 () Bool)

(assert (=> b!522928 m!503799))

(assert (=> b!522928 m!503785))

(declare-fun m!503801 () Bool)

(assert (=> b!522928 m!503801))

(declare-fun m!503803 () Bool)

(assert (=> b!522928 m!503803))

(assert (=> b!522928 m!503785))

(declare-fun m!503805 () Bool)

(assert (=> b!522928 m!503805))

(declare-fun m!503807 () Bool)

(assert (=> b!522928 m!503807))

(declare-fun m!503809 () Bool)

(assert (=> b!522928 m!503809))

(assert (=> b!522928 m!503785))

(declare-fun m!503811 () Bool)

(assert (=> b!522928 m!503811))

(declare-fun m!503813 () Bool)

(assert (=> b!522941 m!503813))

(declare-fun m!503815 () Bool)

(assert (=> b!522939 m!503815))

(declare-fun m!503817 () Bool)

(assert (=> b!522933 m!503817))

(declare-fun m!503819 () Bool)

(assert (=> b!522933 m!503819))

(declare-fun m!503821 () Bool)

(assert (=> b!522937 m!503821))

(assert (=> b!522937 m!503785))

(declare-fun m!503823 () Bool)

(assert (=> start!47544 m!503823))

(declare-fun m!503825 () Bool)

(assert (=> start!47544 m!503825))

(check-sat (not b!522939) (not b!522936) (not b!522934) (not b!522933) (not b!522932) (not b!522931) (not b!522929) (not b!522928) (not start!47544) (not b!522941))
(check-sat)
