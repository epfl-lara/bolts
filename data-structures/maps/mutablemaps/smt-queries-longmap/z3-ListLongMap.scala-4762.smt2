; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65652 () Bool)

(assert start!65652)

(declare-fun b!751169 () Bool)

(declare-fun res!507222 () Bool)

(declare-fun e!419079 () Bool)

(assert (=> b!751169 (=> (not res!507222) (not e!419079))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41778 0))(
  ( (array!41779 (arr!19999 (Array (_ BitVec 32) (_ BitVec 64))) (size!20420 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41778)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!751169 (= res!507222 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19999 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!751170 () Bool)

(declare-fun res!507223 () Bool)

(declare-fun e!419075 () Bool)

(assert (=> b!751170 (=> (not res!507223) (not e!419075))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!751170 (= res!507223 (and (= (size!20420 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20420 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20420 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!751171 () Bool)

(declare-fun e!419076 () Bool)

(assert (=> b!751171 (= e!419079 e!419076)))

(declare-fun res!507210 () Bool)

(assert (=> b!751171 (=> (not res!507210) (not e!419076))))

(declare-datatypes ((SeekEntryResult!7606 0))(
  ( (MissingZero!7606 (index!32791 (_ BitVec 32))) (Found!7606 (index!32792 (_ BitVec 32))) (Intermediate!7606 (undefined!8418 Bool) (index!32793 (_ BitVec 32)) (x!63741 (_ BitVec 32))) (Undefined!7606) (MissingVacant!7606 (index!32794 (_ BitVec 32))) )
))
(declare-fun lt!334080 () SeekEntryResult!7606)

(declare-fun lt!334075 () SeekEntryResult!7606)

(assert (=> b!751171 (= res!507210 (= lt!334080 lt!334075))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!334077 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!334082 () array!41778)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41778 (_ BitVec 32)) SeekEntryResult!7606)

(assert (=> b!751171 (= lt!334075 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334077 lt!334082 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!751171 (= lt!334080 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334077 mask!3328) lt!334077 lt!334082 mask!3328))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!751171 (= lt!334077 (select (store (arr!19999 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!751171 (= lt!334082 (array!41779 (store (arr!19999 a!3186) i!1173 k0!2102) (size!20420 a!3186)))))

(declare-fun b!751172 () Bool)

(declare-fun res!507215 () Bool)

(assert (=> b!751172 (=> (not res!507215) (not e!419075))))

(declare-fun arrayContainsKey!0 (array!41778 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!751172 (= res!507215 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!751173 () Bool)

(declare-fun e!419081 () Bool)

(assert (=> b!751173 (= e!419075 e!419081)))

(declare-fun res!507218 () Bool)

(assert (=> b!751173 (=> (not res!507218) (not e!419081))))

(declare-fun lt!334072 () SeekEntryResult!7606)

(assert (=> b!751173 (= res!507218 (or (= lt!334072 (MissingZero!7606 i!1173)) (= lt!334072 (MissingVacant!7606 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41778 (_ BitVec 32)) SeekEntryResult!7606)

(assert (=> b!751173 (= lt!334072 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!751174 () Bool)

(declare-fun res!507211 () Bool)

(assert (=> b!751174 (=> (not res!507211) (not e!419075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!751174 (= res!507211 (validKeyInArray!0 (select (arr!19999 a!3186) j!159)))))

(declare-fun b!751175 () Bool)

(declare-fun e!419077 () Bool)

(assert (=> b!751175 (= e!419076 (not e!419077))))

(declare-fun res!507216 () Bool)

(assert (=> b!751175 (=> res!507216 e!419077)))

(get-info :version)

(assert (=> b!751175 (= res!507216 (or (not ((_ is Intermediate!7606) lt!334075)) (bvslt x!1131 (x!63741 lt!334075)) (not (= x!1131 (x!63741 lt!334075))) (not (= index!1321 (index!32793 lt!334075)))))))

(declare-fun e!419072 () Bool)

(assert (=> b!751175 e!419072))

(declare-fun res!507220 () Bool)

(assert (=> b!751175 (=> (not res!507220) (not e!419072))))

(declare-fun lt!334081 () SeekEntryResult!7606)

(declare-fun lt!334074 () SeekEntryResult!7606)

(assert (=> b!751175 (= res!507220 (= lt!334081 lt!334074))))

(assert (=> b!751175 (= lt!334074 (Found!7606 j!159))))

(assert (=> b!751175 (= lt!334081 (seekEntryOrOpen!0 (select (arr!19999 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41778 (_ BitVec 32)) Bool)

(assert (=> b!751175 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25826 0))(
  ( (Unit!25827) )
))
(declare-fun lt!334078 () Unit!25826)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41778 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25826)

(assert (=> b!751175 (= lt!334078 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!751176 () Bool)

(assert (=> b!751176 (= e!419081 e!419079)))

(declare-fun res!507221 () Bool)

(assert (=> b!751176 (=> (not res!507221) (not e!419079))))

(declare-fun lt!334079 () SeekEntryResult!7606)

(assert (=> b!751176 (= res!507221 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19999 a!3186) j!159) mask!3328) (select (arr!19999 a!3186) j!159) a!3186 mask!3328) lt!334079))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!751176 (= lt!334079 (Intermediate!7606 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!751177 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41778 (_ BitVec 32)) SeekEntryResult!7606)

(assert (=> b!751177 (= e!419072 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19999 a!3186) j!159) a!3186 mask!3328) lt!334074))))

(declare-fun b!751178 () Bool)

(declare-fun e!419080 () Unit!25826)

(declare-fun Unit!25828 () Unit!25826)

(assert (=> b!751178 (= e!419080 Unit!25828)))

(assert (=> b!751178 false))

(declare-fun res!507219 () Bool)

(assert (=> start!65652 (=> (not res!507219) (not e!419075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65652 (= res!507219 (validMask!0 mask!3328))))

(assert (=> start!65652 e!419075))

(assert (=> start!65652 true))

(declare-fun array_inv!15773 (array!41778) Bool)

(assert (=> start!65652 (array_inv!15773 a!3186)))

(declare-fun b!751179 () Bool)

(declare-fun res!507208 () Bool)

(assert (=> b!751179 (=> res!507208 e!419077)))

(assert (=> b!751179 (= res!507208 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19999 a!3186) j!159) a!3186 mask!3328) lt!334074)))))

(declare-fun b!751180 () Bool)

(declare-fun res!507212 () Bool)

(assert (=> b!751180 (=> (not res!507212) (not e!419079))))

(declare-fun e!419082 () Bool)

(assert (=> b!751180 (= res!507212 e!419082)))

(declare-fun c!82362 () Bool)

(assert (=> b!751180 (= c!82362 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!751181 () Bool)

(assert (=> b!751181 (= e!419082 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19999 a!3186) j!159) a!3186 mask!3328) (Found!7606 j!159)))))

(declare-fun b!751182 () Bool)

(declare-fun res!507217 () Bool)

(assert (=> b!751182 (=> (not res!507217) (not e!419081))))

(declare-datatypes ((List!14054 0))(
  ( (Nil!14051) (Cons!14050 (h!15122 (_ BitVec 64)) (t!20377 List!14054)) )
))
(declare-fun arrayNoDuplicates!0 (array!41778 (_ BitVec 32) List!14054) Bool)

(assert (=> b!751182 (= res!507217 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14051))))

(declare-fun b!751183 () Bool)

(declare-fun res!507213 () Bool)

(assert (=> b!751183 (=> (not res!507213) (not e!419081))))

(assert (=> b!751183 (= res!507213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!751184 () Bool)

(declare-fun e!419074 () Bool)

(assert (=> b!751184 (= e!419074 true)))

(declare-fun e!419078 () Bool)

(assert (=> b!751184 e!419078))

(declare-fun res!507214 () Bool)

(assert (=> b!751184 (=> (not res!507214) (not e!419078))))

(declare-fun lt!334073 () (_ BitVec 64))

(assert (=> b!751184 (= res!507214 (= lt!334073 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334076 () Unit!25826)

(assert (=> b!751184 (= lt!334076 e!419080)))

(declare-fun c!82361 () Bool)

(assert (=> b!751184 (= c!82361 (= lt!334073 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!751185 () Bool)

(assert (=> b!751185 (= e!419078 (= (seekEntryOrOpen!0 lt!334077 lt!334082 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334077 lt!334082 mask!3328)))))

(declare-fun b!751186 () Bool)

(declare-fun res!507225 () Bool)

(assert (=> b!751186 (=> (not res!507225) (not e!419081))))

(assert (=> b!751186 (= res!507225 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20420 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20420 a!3186))))))

(declare-fun b!751187 () Bool)

(assert (=> b!751187 (= e!419082 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19999 a!3186) j!159) a!3186 mask!3328) lt!334079))))

(declare-fun b!751188 () Bool)

(assert (=> b!751188 (= e!419077 e!419074)))

(declare-fun res!507209 () Bool)

(assert (=> b!751188 (=> res!507209 e!419074)))

(assert (=> b!751188 (= res!507209 (= lt!334073 lt!334077))))

(assert (=> b!751188 (= lt!334073 (select (store (arr!19999 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!751189 () Bool)

(declare-fun Unit!25829 () Unit!25826)

(assert (=> b!751189 (= e!419080 Unit!25829)))

(declare-fun b!751190 () Bool)

(declare-fun res!507224 () Bool)

(assert (=> b!751190 (=> (not res!507224) (not e!419075))))

(assert (=> b!751190 (= res!507224 (validKeyInArray!0 k0!2102))))

(assert (= (and start!65652 res!507219) b!751170))

(assert (= (and b!751170 res!507223) b!751174))

(assert (= (and b!751174 res!507211) b!751190))

(assert (= (and b!751190 res!507224) b!751172))

(assert (= (and b!751172 res!507215) b!751173))

(assert (= (and b!751173 res!507218) b!751183))

(assert (= (and b!751183 res!507213) b!751182))

(assert (= (and b!751182 res!507217) b!751186))

(assert (= (and b!751186 res!507225) b!751176))

(assert (= (and b!751176 res!507221) b!751169))

(assert (= (and b!751169 res!507222) b!751180))

(assert (= (and b!751180 c!82362) b!751187))

(assert (= (and b!751180 (not c!82362)) b!751181))

(assert (= (and b!751180 res!507212) b!751171))

(assert (= (and b!751171 res!507210) b!751175))

(assert (= (and b!751175 res!507220) b!751177))

(assert (= (and b!751175 (not res!507216)) b!751179))

(assert (= (and b!751179 (not res!507208)) b!751188))

(assert (= (and b!751188 (not res!507209)) b!751184))

(assert (= (and b!751184 c!82361) b!751178))

(assert (= (and b!751184 (not c!82361)) b!751189))

(assert (= (and b!751184 res!507214) b!751185))

(declare-fun m!700481 () Bool)

(assert (=> b!751176 m!700481))

(assert (=> b!751176 m!700481))

(declare-fun m!700483 () Bool)

(assert (=> b!751176 m!700483))

(assert (=> b!751176 m!700483))

(assert (=> b!751176 m!700481))

(declare-fun m!700485 () Bool)

(assert (=> b!751176 m!700485))

(declare-fun m!700487 () Bool)

(assert (=> b!751172 m!700487))

(assert (=> b!751177 m!700481))

(assert (=> b!751177 m!700481))

(declare-fun m!700489 () Bool)

(assert (=> b!751177 m!700489))

(declare-fun m!700491 () Bool)

(assert (=> b!751183 m!700491))

(declare-fun m!700493 () Bool)

(assert (=> b!751171 m!700493))

(declare-fun m!700495 () Bool)

(assert (=> b!751171 m!700495))

(declare-fun m!700497 () Bool)

(assert (=> b!751171 m!700497))

(assert (=> b!751171 m!700493))

(declare-fun m!700499 () Bool)

(assert (=> b!751171 m!700499))

(declare-fun m!700501 () Bool)

(assert (=> b!751171 m!700501))

(assert (=> b!751187 m!700481))

(assert (=> b!751187 m!700481))

(declare-fun m!700503 () Bool)

(assert (=> b!751187 m!700503))

(declare-fun m!700505 () Bool)

(assert (=> b!751185 m!700505))

(declare-fun m!700507 () Bool)

(assert (=> b!751185 m!700507))

(assert (=> b!751181 m!700481))

(assert (=> b!751181 m!700481))

(declare-fun m!700509 () Bool)

(assert (=> b!751181 m!700509))

(assert (=> b!751174 m!700481))

(assert (=> b!751174 m!700481))

(declare-fun m!700511 () Bool)

(assert (=> b!751174 m!700511))

(assert (=> b!751188 m!700497))

(declare-fun m!700513 () Bool)

(assert (=> b!751188 m!700513))

(assert (=> b!751179 m!700481))

(assert (=> b!751179 m!700481))

(assert (=> b!751179 m!700509))

(declare-fun m!700515 () Bool)

(assert (=> b!751190 m!700515))

(assert (=> b!751175 m!700481))

(assert (=> b!751175 m!700481))

(declare-fun m!700517 () Bool)

(assert (=> b!751175 m!700517))

(declare-fun m!700519 () Bool)

(assert (=> b!751175 m!700519))

(declare-fun m!700521 () Bool)

(assert (=> b!751175 m!700521))

(declare-fun m!700523 () Bool)

(assert (=> b!751169 m!700523))

(declare-fun m!700525 () Bool)

(assert (=> b!751173 m!700525))

(declare-fun m!700527 () Bool)

(assert (=> b!751182 m!700527))

(declare-fun m!700529 () Bool)

(assert (=> start!65652 m!700529))

(declare-fun m!700531 () Bool)

(assert (=> start!65652 m!700531))

(check-sat (not b!751182) (not b!751172) (not b!751190) (not b!751177) (not b!751176) (not b!751175) (not b!751183) (not b!751179) (not b!751181) (not b!751174) (not b!751171) (not b!751185) (not b!751187) (not b!751173) (not start!65652))
(check-sat)
