; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47754 () Bool)

(assert start!47754)

(declare-fun res!322152 () Bool)

(declare-fun e!306247 () Bool)

(assert (=> start!47754 (=> (not res!322152) (not e!306247))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47754 (= res!322152 (validMask!0 mask!3524))))

(assert (=> start!47754 e!306247))

(assert (=> start!47754 true))

(declare-datatypes ((array!33351 0))(
  ( (array!33352 (arr!16024 (Array (_ BitVec 32) (_ BitVec 64))) (size!16388 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33351)

(declare-fun array_inv!11798 (array!33351) Bool)

(assert (=> start!47754 (array_inv!11798 a!3235)))

(declare-fun b!525229 () Bool)

(declare-fun res!322148 () Bool)

(assert (=> b!525229 (=> (not res!322148) (not e!306247))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525229 (= res!322148 (validKeyInArray!0 (select (arr!16024 a!3235) j!176)))))

(declare-fun b!525230 () Bool)

(declare-fun res!322151 () Bool)

(declare-fun e!306249 () Bool)

(assert (=> b!525230 (=> (not res!322151) (not e!306249))))

(declare-datatypes ((List!10235 0))(
  ( (Nil!10232) (Cons!10231 (h!11162 (_ BitVec 64)) (t!16471 List!10235)) )
))
(declare-fun arrayNoDuplicates!0 (array!33351 (_ BitVec 32) List!10235) Bool)

(assert (=> b!525230 (= res!322151 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10232))))

(declare-fun b!525231 () Bool)

(declare-fun e!306245 () Bool)

(declare-datatypes ((SeekEntryResult!4498 0))(
  ( (MissingZero!4498 (index!20204 (_ BitVec 32))) (Found!4498 (index!20205 (_ BitVec 32))) (Intermediate!4498 (undefined!5310 Bool) (index!20206 (_ BitVec 32)) (x!49210 (_ BitVec 32))) (Undefined!4498) (MissingVacant!4498 (index!20207 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33351 (_ BitVec 32)) SeekEntryResult!4498)

(assert (=> b!525231 (= e!306245 (= (seekEntryOrOpen!0 (select (arr!16024 a!3235) j!176) a!3235 mask!3524) (Found!4498 j!176)))))

(declare-fun b!525232 () Bool)

(declare-fun res!322150 () Bool)

(declare-fun e!306244 () Bool)

(assert (=> b!525232 (=> res!322150 e!306244)))

(declare-fun lt!241355 () SeekEntryResult!4498)

(get-info :version)

(assert (=> b!525232 (= res!322150 (or (undefined!5310 lt!241355) (not ((_ is Intermediate!4498) lt!241355))))))

(declare-fun b!525233 () Bool)

(declare-fun res!322149 () Bool)

(assert (=> b!525233 (=> (not res!322149) (not e!306247))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33351 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525233 (= res!322149 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!525234 () Bool)

(declare-fun res!322153 () Bool)

(assert (=> b!525234 (=> (not res!322153) (not e!306247))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!525234 (= res!322153 (and (= (size!16388 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16388 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16388 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525235 () Bool)

(declare-datatypes ((Unit!16458 0))(
  ( (Unit!16459) )
))
(declare-fun e!306250 () Unit!16458)

(declare-fun Unit!16460 () Unit!16458)

(assert (=> b!525235 (= e!306250 Unit!16460)))

(declare-fun lt!241346 () Unit!16458)

(declare-fun lt!241348 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33351 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16458)

(assert (=> b!525235 (= lt!241346 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!241348 #b00000000000000000000000000000000 (index!20206 lt!241355) (x!49210 lt!241355) mask!3524))))

(declare-fun res!322147 () Bool)

(declare-fun lt!241347 () array!33351)

(declare-fun lt!241352 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33351 (_ BitVec 32)) SeekEntryResult!4498)

(assert (=> b!525235 (= res!322147 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241348 lt!241352 lt!241347 mask!3524) (Intermediate!4498 false (index!20206 lt!241355) (x!49210 lt!241355))))))

(declare-fun e!306248 () Bool)

(assert (=> b!525235 (=> (not res!322147) (not e!306248))))

(assert (=> b!525235 e!306248))

(declare-fun b!525236 () Bool)

(declare-fun res!322155 () Bool)

(assert (=> b!525236 (=> (not res!322155) (not e!306247))))

(assert (=> b!525236 (= res!322155 (validKeyInArray!0 k0!2280))))

(declare-fun b!525237 () Bool)

(declare-fun Unit!16461 () Unit!16458)

(assert (=> b!525237 (= e!306250 Unit!16461)))

(declare-fun b!525238 () Bool)

(assert (=> b!525238 (= e!306247 e!306249)))

(declare-fun res!322154 () Bool)

(assert (=> b!525238 (=> (not res!322154) (not e!306249))))

(declare-fun lt!241353 () SeekEntryResult!4498)

(assert (=> b!525238 (= res!322154 (or (= lt!241353 (MissingZero!4498 i!1204)) (= lt!241353 (MissingVacant!4498 i!1204))))))

(assert (=> b!525238 (= lt!241353 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!525239 () Bool)

(assert (=> b!525239 (= e!306248 false)))

(declare-fun b!525240 () Bool)

(assert (=> b!525240 (= e!306244 true)))

(assert (=> b!525240 (= (index!20206 lt!241355) i!1204)))

(declare-fun lt!241350 () Unit!16458)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33351 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16458)

(assert (=> b!525240 (= lt!241350 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!241348 #b00000000000000000000000000000000 (index!20206 lt!241355) (x!49210 lt!241355) mask!3524))))

(assert (=> b!525240 (and (or (= (select (arr!16024 a!3235) (index!20206 lt!241355)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16024 a!3235) (index!20206 lt!241355)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16024 a!3235) (index!20206 lt!241355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16024 a!3235) (index!20206 lt!241355)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241354 () Unit!16458)

(assert (=> b!525240 (= lt!241354 e!306250)))

(declare-fun c!61847 () Bool)

(assert (=> b!525240 (= c!61847 (= (select (arr!16024 a!3235) (index!20206 lt!241355)) (select (arr!16024 a!3235) j!176)))))

(assert (=> b!525240 (and (bvslt (x!49210 lt!241355) #b01111111111111111111111111111110) (or (= (select (arr!16024 a!3235) (index!20206 lt!241355)) (select (arr!16024 a!3235) j!176)) (= (select (arr!16024 a!3235) (index!20206 lt!241355)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16024 a!3235) (index!20206 lt!241355)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!525241 () Bool)

(declare-fun res!322146 () Bool)

(assert (=> b!525241 (=> (not res!322146) (not e!306249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33351 (_ BitVec 32)) Bool)

(assert (=> b!525241 (= res!322146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525242 () Bool)

(assert (=> b!525242 (= e!306249 (not e!306244))))

(declare-fun res!322156 () Bool)

(assert (=> b!525242 (=> res!322156 e!306244)))

(declare-fun lt!241349 () (_ BitVec 32))

(assert (=> b!525242 (= res!322156 (= lt!241355 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241349 lt!241352 lt!241347 mask!3524)))))

(assert (=> b!525242 (= lt!241355 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241348 (select (arr!16024 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525242 (= lt!241349 (toIndex!0 lt!241352 mask!3524))))

(assert (=> b!525242 (= lt!241352 (select (store (arr!16024 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!525242 (= lt!241348 (toIndex!0 (select (arr!16024 a!3235) j!176) mask!3524))))

(assert (=> b!525242 (= lt!241347 (array!33352 (store (arr!16024 a!3235) i!1204 k0!2280) (size!16388 a!3235)))))

(assert (=> b!525242 e!306245))

(declare-fun res!322157 () Bool)

(assert (=> b!525242 (=> (not res!322157) (not e!306245))))

(assert (=> b!525242 (= res!322157 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241351 () Unit!16458)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33351 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16458)

(assert (=> b!525242 (= lt!241351 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!47754 res!322152) b!525234))

(assert (= (and b!525234 res!322153) b!525229))

(assert (= (and b!525229 res!322148) b!525236))

(assert (= (and b!525236 res!322155) b!525233))

(assert (= (and b!525233 res!322149) b!525238))

(assert (= (and b!525238 res!322154) b!525241))

(assert (= (and b!525241 res!322146) b!525230))

(assert (= (and b!525230 res!322151) b!525242))

(assert (= (and b!525242 res!322157) b!525231))

(assert (= (and b!525242 (not res!322156)) b!525232))

(assert (= (and b!525232 (not res!322150)) b!525240))

(assert (= (and b!525240 c!61847) b!525235))

(assert (= (and b!525240 (not c!61847)) b!525237))

(assert (= (and b!525235 res!322147) b!525239))

(declare-fun m!505923 () Bool)

(assert (=> b!525235 m!505923))

(declare-fun m!505925 () Bool)

(assert (=> b!525235 m!505925))

(declare-fun m!505927 () Bool)

(assert (=> b!525233 m!505927))

(declare-fun m!505929 () Bool)

(assert (=> b!525236 m!505929))

(declare-fun m!505931 () Bool)

(assert (=> b!525230 m!505931))

(declare-fun m!505933 () Bool)

(assert (=> b!525241 m!505933))

(declare-fun m!505935 () Bool)

(assert (=> start!47754 m!505935))

(declare-fun m!505937 () Bool)

(assert (=> start!47754 m!505937))

(declare-fun m!505939 () Bool)

(assert (=> b!525229 m!505939))

(assert (=> b!525229 m!505939))

(declare-fun m!505941 () Bool)

(assert (=> b!525229 m!505941))

(declare-fun m!505943 () Bool)

(assert (=> b!525238 m!505943))

(assert (=> b!525231 m!505939))

(assert (=> b!525231 m!505939))

(declare-fun m!505945 () Bool)

(assert (=> b!525231 m!505945))

(declare-fun m!505947 () Bool)

(assert (=> b!525242 m!505947))

(assert (=> b!525242 m!505939))

(declare-fun m!505949 () Bool)

(assert (=> b!525242 m!505949))

(declare-fun m!505951 () Bool)

(assert (=> b!525242 m!505951))

(declare-fun m!505953 () Bool)

(assert (=> b!525242 m!505953))

(declare-fun m!505955 () Bool)

(assert (=> b!525242 m!505955))

(assert (=> b!525242 m!505939))

(declare-fun m!505957 () Bool)

(assert (=> b!525242 m!505957))

(assert (=> b!525242 m!505939))

(declare-fun m!505959 () Bool)

(assert (=> b!525242 m!505959))

(declare-fun m!505961 () Bool)

(assert (=> b!525242 m!505961))

(declare-fun m!505963 () Bool)

(assert (=> b!525240 m!505963))

(declare-fun m!505965 () Bool)

(assert (=> b!525240 m!505965))

(assert (=> b!525240 m!505939))

(check-sat (not start!47754) (not b!525238) (not b!525241) (not b!525242) (not b!525231) (not b!525230) (not b!525240) (not b!525229) (not b!525233) (not b!525236) (not b!525235))
(check-sat)
