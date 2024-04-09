; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67788 () Bool)

(assert start!67788)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42783 0))(
  ( (array!42784 (arr!20476 (Array (_ BitVec 32) (_ BitVec 64))) (size!20897 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42783)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8083 0))(
  ( (MissingZero!8083 (index!34699 (_ BitVec 32))) (Found!8083 (index!34700 (_ BitVec 32))) (Intermediate!8083 (undefined!8895 Bool) (index!34701 (_ BitVec 32)) (x!65664 (_ BitVec 32))) (Undefined!8083) (MissingVacant!8083 (index!34702 (_ BitVec 32))) )
))
(declare-fun lt!351150 () SeekEntryResult!8083)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!437587 () Bool)

(declare-fun b!787175 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42783 (_ BitVec 32)) SeekEntryResult!8083)

(assert (=> b!787175 (= e!437587 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20476 a!3186) j!159) a!3186 mask!3328) lt!351150))))

(declare-fun b!787176 () Bool)

(declare-fun res!533254 () Bool)

(declare-fun e!437585 () Bool)

(assert (=> b!787176 (=> (not res!533254) (not e!437585))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!787176 (= res!533254 (validKeyInArray!0 k0!2102))))

(declare-fun b!787177 () Bool)

(declare-fun e!437589 () Bool)

(declare-fun e!437582 () Bool)

(assert (=> b!787177 (= e!437589 e!437582)))

(declare-fun res!533251 () Bool)

(assert (=> b!787177 (=> res!533251 e!437582)))

(declare-fun lt!351155 () (_ BitVec 64))

(declare-fun lt!351153 () (_ BitVec 64))

(assert (=> b!787177 (= res!533251 (= lt!351155 lt!351153))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!787177 (= lt!351155 (select (store (arr!20476 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!787178 () Bool)

(declare-fun res!533241 () Bool)

(declare-fun e!437584 () Bool)

(assert (=> b!787178 (=> (not res!533241) (not e!437584))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!351151 () array!42783)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42783 (_ BitVec 32)) SeekEntryResult!8083)

(assert (=> b!787178 (= res!533241 (= (seekEntryOrOpen!0 lt!351153 lt!351151 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351153 lt!351151 mask!3328)))))

(declare-fun b!787179 () Bool)

(declare-fun res!533249 () Bool)

(declare-fun e!437590 () Bool)

(assert (=> b!787179 (=> (not res!533249) (not e!437590))))

(declare-datatypes ((List!14531 0))(
  ( (Nil!14528) (Cons!14527 (h!15650 (_ BitVec 64)) (t!20854 List!14531)) )
))
(declare-fun arrayNoDuplicates!0 (array!42783 (_ BitVec 32) List!14531) Bool)

(assert (=> b!787179 (= res!533249 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14528))))

(declare-fun b!787180 () Bool)

(declare-fun e!437581 () Bool)

(assert (=> b!787180 (= e!437581 e!437589)))

(declare-fun res!533243 () Bool)

(assert (=> b!787180 (=> res!533243 e!437589)))

(declare-fun lt!351157 () SeekEntryResult!8083)

(assert (=> b!787180 (= res!533243 (not (= lt!351157 lt!351150)))))

(assert (=> b!787180 (= lt!351157 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20476 a!3186) j!159) a!3186 mask!3328))))

(declare-fun res!533244 () Bool)

(assert (=> start!67788 (=> (not res!533244) (not e!437585))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67788 (= res!533244 (validMask!0 mask!3328))))

(assert (=> start!67788 e!437585))

(assert (=> start!67788 true))

(declare-fun array_inv!16250 (array!42783) Bool)

(assert (=> start!67788 (array_inv!16250 a!3186)))

(declare-fun b!787181 () Bool)

(declare-fun res!533246 () Bool)

(assert (=> b!787181 (=> (not res!533246) (not e!437585))))

(declare-fun arrayContainsKey!0 (array!42783 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!787181 (= res!533246 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!787182 () Bool)

(declare-fun res!533240 () Bool)

(assert (=> b!787182 (=> (not res!533240) (not e!437590))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42783 (_ BitVec 32)) Bool)

(assert (=> b!787182 (= res!533240 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!787183 () Bool)

(declare-datatypes ((Unit!27242 0))(
  ( (Unit!27243) )
))
(declare-fun e!437588 () Unit!27242)

(declare-fun Unit!27244 () Unit!27242)

(assert (=> b!787183 (= e!437588 Unit!27244)))

(declare-fun b!787184 () Bool)

(declare-fun res!533247 () Bool)

(assert (=> b!787184 (=> (not res!533247) (not e!437590))))

(assert (=> b!787184 (= res!533247 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20897 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20897 a!3186))))))

(declare-fun b!787185 () Bool)

(declare-fun e!437580 () Bool)

(assert (=> b!787185 (= e!437590 e!437580)))

(declare-fun res!533236 () Bool)

(assert (=> b!787185 (=> (not res!533236) (not e!437580))))

(declare-fun lt!351154 () SeekEntryResult!8083)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42783 (_ BitVec 32)) SeekEntryResult!8083)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!787185 (= res!533236 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20476 a!3186) j!159) mask!3328) (select (arr!20476 a!3186) j!159) a!3186 mask!3328) lt!351154))))

(assert (=> b!787185 (= lt!351154 (Intermediate!8083 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!787186 () Bool)

(declare-fun res!533238 () Bool)

(assert (=> b!787186 (=> (not res!533238) (not e!437585))))

(assert (=> b!787186 (= res!533238 (validKeyInArray!0 (select (arr!20476 a!3186) j!159)))))

(declare-fun b!787187 () Bool)

(declare-fun res!533237 () Bool)

(assert (=> b!787187 (=> (not res!533237) (not e!437585))))

(assert (=> b!787187 (= res!533237 (and (= (size!20897 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20897 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20897 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!787188 () Bool)

(declare-fun e!437583 () Bool)

(assert (=> b!787188 (= e!437583 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20476 a!3186) j!159) a!3186 mask!3328) (Found!8083 j!159)))))

(declare-fun b!787189 () Bool)

(declare-fun res!533242 () Bool)

(assert (=> b!787189 (=> (not res!533242) (not e!437580))))

(assert (=> b!787189 (= res!533242 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20476 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!787190 () Bool)

(declare-fun e!437586 () Bool)

(assert (=> b!787190 (= e!437580 e!437586)))

(declare-fun res!533250 () Bool)

(assert (=> b!787190 (=> (not res!533250) (not e!437586))))

(declare-fun lt!351156 () SeekEntryResult!8083)

(declare-fun lt!351146 () SeekEntryResult!8083)

(assert (=> b!787190 (= res!533250 (= lt!351156 lt!351146))))

(assert (=> b!787190 (= lt!351146 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351153 lt!351151 mask!3328))))

(assert (=> b!787190 (= lt!351156 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351153 mask!3328) lt!351153 lt!351151 mask!3328))))

(assert (=> b!787190 (= lt!351153 (select (store (arr!20476 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!787190 (= lt!351151 (array!42784 (store (arr!20476 a!3186) i!1173 k0!2102) (size!20897 a!3186)))))

(declare-fun b!787191 () Bool)

(assert (=> b!787191 (= e!437586 (not e!437581))))

(declare-fun res!533253 () Bool)

(assert (=> b!787191 (=> res!533253 e!437581)))

(get-info :version)

(assert (=> b!787191 (= res!533253 (or (not ((_ is Intermediate!8083) lt!351146)) (bvslt x!1131 (x!65664 lt!351146)) (not (= x!1131 (x!65664 lt!351146))) (not (= index!1321 (index!34701 lt!351146)))))))

(assert (=> b!787191 e!437587))

(declare-fun res!533252 () Bool)

(assert (=> b!787191 (=> (not res!533252) (not e!437587))))

(declare-fun lt!351152 () SeekEntryResult!8083)

(assert (=> b!787191 (= res!533252 (= lt!351152 lt!351150))))

(assert (=> b!787191 (= lt!351150 (Found!8083 j!159))))

(assert (=> b!787191 (= lt!351152 (seekEntryOrOpen!0 (select (arr!20476 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!787191 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!351149 () Unit!27242)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42783 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27242)

(assert (=> b!787191 (= lt!351149 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!787192 () Bool)

(assert (=> b!787192 (= e!437585 e!437590)))

(declare-fun res!533239 () Bool)

(assert (=> b!787192 (=> (not res!533239) (not e!437590))))

(declare-fun lt!351148 () SeekEntryResult!8083)

(assert (=> b!787192 (= res!533239 (or (= lt!351148 (MissingZero!8083 i!1173)) (= lt!351148 (MissingVacant!8083 i!1173))))))

(assert (=> b!787192 (= lt!351148 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!787193 () Bool)

(declare-fun res!533245 () Bool)

(assert (=> b!787193 (=> (not res!533245) (not e!437580))))

(assert (=> b!787193 (= res!533245 e!437583)))

(declare-fun c!87378 () Bool)

(assert (=> b!787193 (= c!87378 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!787194 () Bool)

(assert (=> b!787194 (= e!437584 (= lt!351152 lt!351157))))

(declare-fun b!787195 () Bool)

(assert (=> b!787195 (= e!437583 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20476 a!3186) j!159) a!3186 mask!3328) lt!351154))))

(declare-fun b!787196 () Bool)

(assert (=> b!787196 (= e!437582 true)))

(assert (=> b!787196 e!437584))

(declare-fun res!533248 () Bool)

(assert (=> b!787196 (=> (not res!533248) (not e!437584))))

(assert (=> b!787196 (= res!533248 (= lt!351155 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!351147 () Unit!27242)

(assert (=> b!787196 (= lt!351147 e!437588)))

(declare-fun c!87377 () Bool)

(assert (=> b!787196 (= c!87377 (= lt!351155 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!787197 () Bool)

(declare-fun Unit!27245 () Unit!27242)

(assert (=> b!787197 (= e!437588 Unit!27245)))

(assert (=> b!787197 false))

(assert (= (and start!67788 res!533244) b!787187))

(assert (= (and b!787187 res!533237) b!787186))

(assert (= (and b!787186 res!533238) b!787176))

(assert (= (and b!787176 res!533254) b!787181))

(assert (= (and b!787181 res!533246) b!787192))

(assert (= (and b!787192 res!533239) b!787182))

(assert (= (and b!787182 res!533240) b!787179))

(assert (= (and b!787179 res!533249) b!787184))

(assert (= (and b!787184 res!533247) b!787185))

(assert (= (and b!787185 res!533236) b!787189))

(assert (= (and b!787189 res!533242) b!787193))

(assert (= (and b!787193 c!87378) b!787195))

(assert (= (and b!787193 (not c!87378)) b!787188))

(assert (= (and b!787193 res!533245) b!787190))

(assert (= (and b!787190 res!533250) b!787191))

(assert (= (and b!787191 res!533252) b!787175))

(assert (= (and b!787191 (not res!533253)) b!787180))

(assert (= (and b!787180 (not res!533243)) b!787177))

(assert (= (and b!787177 (not res!533251)) b!787196))

(assert (= (and b!787196 c!87377) b!787197))

(assert (= (and b!787196 (not c!87377)) b!787183))

(assert (= (and b!787196 res!533248) b!787178))

(assert (= (and b!787178 res!533241) b!787194))

(declare-fun m!728861 () Bool)

(assert (=> b!787189 m!728861))

(declare-fun m!728863 () Bool)

(assert (=> b!787190 m!728863))

(declare-fun m!728865 () Bool)

(assert (=> b!787190 m!728865))

(declare-fun m!728867 () Bool)

(assert (=> b!787190 m!728867))

(declare-fun m!728869 () Bool)

(assert (=> b!787190 m!728869))

(assert (=> b!787190 m!728865))

(declare-fun m!728871 () Bool)

(assert (=> b!787190 m!728871))

(declare-fun m!728873 () Bool)

(assert (=> b!787191 m!728873))

(assert (=> b!787191 m!728873))

(declare-fun m!728875 () Bool)

(assert (=> b!787191 m!728875))

(declare-fun m!728877 () Bool)

(assert (=> b!787191 m!728877))

(declare-fun m!728879 () Bool)

(assert (=> b!787191 m!728879))

(declare-fun m!728881 () Bool)

(assert (=> b!787179 m!728881))

(assert (=> b!787175 m!728873))

(assert (=> b!787175 m!728873))

(declare-fun m!728883 () Bool)

(assert (=> b!787175 m!728883))

(declare-fun m!728885 () Bool)

(assert (=> b!787192 m!728885))

(assert (=> b!787186 m!728873))

(assert (=> b!787186 m!728873))

(declare-fun m!728887 () Bool)

(assert (=> b!787186 m!728887))

(assert (=> b!787180 m!728873))

(assert (=> b!787180 m!728873))

(declare-fun m!728889 () Bool)

(assert (=> b!787180 m!728889))

(assert (=> b!787188 m!728873))

(assert (=> b!787188 m!728873))

(assert (=> b!787188 m!728889))

(assert (=> b!787195 m!728873))

(assert (=> b!787195 m!728873))

(declare-fun m!728891 () Bool)

(assert (=> b!787195 m!728891))

(declare-fun m!728893 () Bool)

(assert (=> start!67788 m!728893))

(declare-fun m!728895 () Bool)

(assert (=> start!67788 m!728895))

(assert (=> b!787177 m!728863))

(declare-fun m!728897 () Bool)

(assert (=> b!787177 m!728897))

(declare-fun m!728899 () Bool)

(assert (=> b!787181 m!728899))

(declare-fun m!728901 () Bool)

(assert (=> b!787182 m!728901))

(declare-fun m!728903 () Bool)

(assert (=> b!787176 m!728903))

(declare-fun m!728905 () Bool)

(assert (=> b!787178 m!728905))

(declare-fun m!728907 () Bool)

(assert (=> b!787178 m!728907))

(assert (=> b!787185 m!728873))

(assert (=> b!787185 m!728873))

(declare-fun m!728909 () Bool)

(assert (=> b!787185 m!728909))

(assert (=> b!787185 m!728909))

(assert (=> b!787185 m!728873))

(declare-fun m!728911 () Bool)

(assert (=> b!787185 m!728911))

(check-sat (not b!787188) (not b!787191) (not b!787190) (not b!787180) (not b!787192) (not b!787179) (not b!787176) (not b!787175) (not b!787195) (not b!787186) (not b!787182) (not b!787178) (not b!787181) (not start!67788) (not b!787185))
(check-sat)
