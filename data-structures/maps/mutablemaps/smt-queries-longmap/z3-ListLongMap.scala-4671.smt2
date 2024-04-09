; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64962 () Bool)

(assert start!64962)

(declare-fun b!733202 () Bool)

(declare-fun e!410282 () Bool)

(assert (=> b!733202 (= e!410282 true)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41226 0))(
  ( (array!41227 (arr!19726 (Array (_ BitVec 32) (_ BitVec 64))) (size!20147 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41226)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7333 0))(
  ( (MissingZero!7333 (index!31699 (_ BitVec 32))) (Found!7333 (index!31700 (_ BitVec 32))) (Intermediate!7333 (undefined!8145 Bool) (index!31701 (_ BitVec 32)) (x!62716 (_ BitVec 32))) (Undefined!7333) (MissingVacant!7333 (index!31702 (_ BitVec 32))) )
))
(declare-fun lt!324984 () SeekEntryResult!7333)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41226 (_ BitVec 32)) SeekEntryResult!7333)

(assert (=> b!733202 (= lt!324984 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19726 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!733203 () Bool)

(declare-fun e!410280 () Bool)

(declare-fun e!410274 () Bool)

(assert (=> b!733203 (= e!410280 e!410274)))

(declare-fun res!492851 () Bool)

(assert (=> b!733203 (=> (not res!492851) (not e!410274))))

(declare-fun lt!324981 () SeekEntryResult!7333)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41226 (_ BitVec 32)) SeekEntryResult!7333)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!733203 (= res!492851 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19726 a!3186) j!159) mask!3328) (select (arr!19726 a!3186) j!159) a!3186 mask!3328) lt!324981))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!733203 (= lt!324981 (Intermediate!7333 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!733204 () Bool)

(declare-fun res!492853 () Bool)

(assert (=> b!733204 (=> (not res!492853) (not e!410280))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41226 (_ BitVec 32)) Bool)

(assert (=> b!733204 (= res!492853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!733205 () Bool)

(declare-fun e!410281 () Bool)

(assert (=> b!733205 (= e!410281 e!410282)))

(declare-fun res!492852 () Bool)

(assert (=> b!733205 (=> res!492852 e!410282)))

(assert (=> b!733205 (= res!492852 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!324983 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!733205 (= lt!324983 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun e!410279 () Bool)

(declare-fun b!733206 () Bool)

(assert (=> b!733206 (= e!410279 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19726 a!3186) j!159) a!3186 mask!3328) lt!324981))))

(declare-fun b!733207 () Bool)

(declare-fun e!410278 () Bool)

(declare-fun e!410283 () Bool)

(assert (=> b!733207 (= e!410278 e!410283)))

(declare-fun res!492847 () Bool)

(assert (=> b!733207 (=> (not res!492847) (not e!410283))))

(declare-fun lt!324982 () SeekEntryResult!7333)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41226 (_ BitVec 32)) SeekEntryResult!7333)

(assert (=> b!733207 (= res!492847 (= (seekEntryOrOpen!0 (select (arr!19726 a!3186) j!159) a!3186 mask!3328) lt!324982))))

(assert (=> b!733207 (= lt!324982 (Found!7333 j!159))))

(declare-fun b!733208 () Bool)

(declare-fun res!492839 () Bool)

(assert (=> b!733208 (=> (not res!492839) (not e!410280))))

(declare-datatypes ((List!13781 0))(
  ( (Nil!13778) (Cons!13777 (h!14843 (_ BitVec 64)) (t!20104 List!13781)) )
))
(declare-fun arrayNoDuplicates!0 (array!41226 (_ BitVec 32) List!13781) Bool)

(assert (=> b!733208 (= res!492839 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13778))))

(declare-fun b!733209 () Bool)

(declare-fun res!492850 () Bool)

(declare-fun e!410276 () Bool)

(assert (=> b!733209 (=> (not res!492850) (not e!410276))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41226 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!733209 (= res!492850 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!733210 () Bool)

(declare-fun res!492840 () Bool)

(assert (=> b!733210 (=> (not res!492840) (not e!410276))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!733210 (= res!492840 (validKeyInArray!0 k0!2102))))

(declare-fun b!733211 () Bool)

(declare-fun res!492843 () Bool)

(assert (=> b!733211 (=> (not res!492843) (not e!410274))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!733211 (= res!492843 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19726 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733212 () Bool)

(declare-fun e!410275 () Bool)

(assert (=> b!733212 (= e!410274 e!410275)))

(declare-fun res!492846 () Bool)

(assert (=> b!733212 (=> (not res!492846) (not e!410275))))

(declare-fun lt!324987 () SeekEntryResult!7333)

(declare-fun lt!324989 () SeekEntryResult!7333)

(assert (=> b!733212 (= res!492846 (= lt!324987 lt!324989))))

(declare-fun lt!324988 () array!41226)

(declare-fun lt!324986 () (_ BitVec 64))

(assert (=> b!733212 (= lt!324989 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324986 lt!324988 mask!3328))))

(assert (=> b!733212 (= lt!324987 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324986 mask!3328) lt!324986 lt!324988 mask!3328))))

(assert (=> b!733212 (= lt!324986 (select (store (arr!19726 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!733212 (= lt!324988 (array!41227 (store (arr!19726 a!3186) i!1173 k0!2102) (size!20147 a!3186)))))

(declare-fun b!733213 () Bool)

(assert (=> b!733213 (= e!410283 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19726 a!3186) j!159) a!3186 mask!3328) lt!324982))))

(declare-fun b!733214 () Bool)

(assert (=> b!733214 (= e!410275 (not e!410281))))

(declare-fun res!492845 () Bool)

(assert (=> b!733214 (=> res!492845 e!410281)))

(get-info :version)

(assert (=> b!733214 (= res!492845 (or (not ((_ is Intermediate!7333) lt!324989)) (bvsge x!1131 (x!62716 lt!324989))))))

(assert (=> b!733214 e!410278))

(declare-fun res!492855 () Bool)

(assert (=> b!733214 (=> (not res!492855) (not e!410278))))

(assert (=> b!733214 (= res!492855 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24984 0))(
  ( (Unit!24985) )
))
(declare-fun lt!324985 () Unit!24984)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41226 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24984)

(assert (=> b!733214 (= lt!324985 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!733216 () Bool)

(declare-fun res!492849 () Bool)

(assert (=> b!733216 (=> (not res!492849) (not e!410274))))

(assert (=> b!733216 (= res!492849 e!410279)))

(declare-fun c!80559 () Bool)

(assert (=> b!733216 (= c!80559 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!733217 () Bool)

(assert (=> b!733217 (= e!410276 e!410280)))

(declare-fun res!492842 () Bool)

(assert (=> b!733217 (=> (not res!492842) (not e!410280))))

(declare-fun lt!324980 () SeekEntryResult!7333)

(assert (=> b!733217 (= res!492842 (or (= lt!324980 (MissingZero!7333 i!1173)) (= lt!324980 (MissingVacant!7333 i!1173))))))

(assert (=> b!733217 (= lt!324980 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!733218 () Bool)

(declare-fun res!492848 () Bool)

(assert (=> b!733218 (=> (not res!492848) (not e!410276))))

(assert (=> b!733218 (= res!492848 (and (= (size!20147 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20147 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20147 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!733219 () Bool)

(declare-fun res!492841 () Bool)

(assert (=> b!733219 (=> (not res!492841) (not e!410276))))

(assert (=> b!733219 (= res!492841 (validKeyInArray!0 (select (arr!19726 a!3186) j!159)))))

(declare-fun b!733220 () Bool)

(declare-fun res!492854 () Bool)

(assert (=> b!733220 (=> (not res!492854) (not e!410280))))

(assert (=> b!733220 (= res!492854 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20147 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20147 a!3186))))))

(declare-fun res!492844 () Bool)

(assert (=> start!64962 (=> (not res!492844) (not e!410276))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64962 (= res!492844 (validMask!0 mask!3328))))

(assert (=> start!64962 e!410276))

(assert (=> start!64962 true))

(declare-fun array_inv!15500 (array!41226) Bool)

(assert (=> start!64962 (array_inv!15500 a!3186)))

(declare-fun b!733215 () Bool)

(assert (=> b!733215 (= e!410279 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19726 a!3186) j!159) a!3186 mask!3328) (Found!7333 j!159)))))

(assert (= (and start!64962 res!492844) b!733218))

(assert (= (and b!733218 res!492848) b!733219))

(assert (= (and b!733219 res!492841) b!733210))

(assert (= (and b!733210 res!492840) b!733209))

(assert (= (and b!733209 res!492850) b!733217))

(assert (= (and b!733217 res!492842) b!733204))

(assert (= (and b!733204 res!492853) b!733208))

(assert (= (and b!733208 res!492839) b!733220))

(assert (= (and b!733220 res!492854) b!733203))

(assert (= (and b!733203 res!492851) b!733211))

(assert (= (and b!733211 res!492843) b!733216))

(assert (= (and b!733216 c!80559) b!733206))

(assert (= (and b!733216 (not c!80559)) b!733215))

(assert (= (and b!733216 res!492849) b!733212))

(assert (= (and b!733212 res!492846) b!733214))

(assert (= (and b!733214 res!492855) b!733207))

(assert (= (and b!733207 res!492847) b!733213))

(assert (= (and b!733214 (not res!492845)) b!733205))

(assert (= (and b!733205 (not res!492852)) b!733202))

(declare-fun m!686209 () Bool)

(assert (=> b!733206 m!686209))

(assert (=> b!733206 m!686209))

(declare-fun m!686211 () Bool)

(assert (=> b!733206 m!686211))

(declare-fun m!686213 () Bool)

(assert (=> b!733204 m!686213))

(assert (=> b!733219 m!686209))

(assert (=> b!733219 m!686209))

(declare-fun m!686215 () Bool)

(assert (=> b!733219 m!686215))

(declare-fun m!686217 () Bool)

(assert (=> b!733214 m!686217))

(declare-fun m!686219 () Bool)

(assert (=> b!733214 m!686219))

(assert (=> b!733203 m!686209))

(assert (=> b!733203 m!686209))

(declare-fun m!686221 () Bool)

(assert (=> b!733203 m!686221))

(assert (=> b!733203 m!686221))

(assert (=> b!733203 m!686209))

(declare-fun m!686223 () Bool)

(assert (=> b!733203 m!686223))

(declare-fun m!686225 () Bool)

(assert (=> b!733209 m!686225))

(assert (=> b!733202 m!686209))

(assert (=> b!733202 m!686209))

(declare-fun m!686227 () Bool)

(assert (=> b!733202 m!686227))

(declare-fun m!686229 () Bool)

(assert (=> b!733210 m!686229))

(declare-fun m!686231 () Bool)

(assert (=> b!733211 m!686231))

(assert (=> b!733207 m!686209))

(assert (=> b!733207 m!686209))

(declare-fun m!686233 () Bool)

(assert (=> b!733207 m!686233))

(declare-fun m!686235 () Bool)

(assert (=> b!733212 m!686235))

(declare-fun m!686237 () Bool)

(assert (=> b!733212 m!686237))

(declare-fun m!686239 () Bool)

(assert (=> b!733212 m!686239))

(assert (=> b!733212 m!686235))

(declare-fun m!686241 () Bool)

(assert (=> b!733212 m!686241))

(declare-fun m!686243 () Bool)

(assert (=> b!733212 m!686243))

(assert (=> b!733213 m!686209))

(assert (=> b!733213 m!686209))

(declare-fun m!686245 () Bool)

(assert (=> b!733213 m!686245))

(declare-fun m!686247 () Bool)

(assert (=> b!733217 m!686247))

(declare-fun m!686249 () Bool)

(assert (=> b!733208 m!686249))

(declare-fun m!686251 () Bool)

(assert (=> start!64962 m!686251))

(declare-fun m!686253 () Bool)

(assert (=> start!64962 m!686253))

(declare-fun m!686255 () Bool)

(assert (=> b!733205 m!686255))

(assert (=> b!733215 m!686209))

(assert (=> b!733215 m!686209))

(assert (=> b!733215 m!686227))

(check-sat (not b!733202) (not b!733212) (not b!733208) (not b!733203) (not b!733204) (not b!733215) (not b!733217) (not b!733214) (not b!733210) (not b!733209) (not b!733205) (not b!733206) (not start!64962) (not b!733207) (not b!733213) (not b!733219))
(check-sat)
