; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64276 () Bool)

(assert start!64276)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40810 0))(
  ( (array!40811 (arr!19524 (Array (_ BitVec 32) (_ BitVec 64))) (size!19945 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40810)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!404511 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!721306 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7131 0))(
  ( (MissingZero!7131 (index!30891 (_ BitVec 32))) (Found!7131 (index!30892 (_ BitVec 32))) (Intermediate!7131 (undefined!7943 Bool) (index!30893 (_ BitVec 32)) (x!61933 (_ BitVec 32))) (Undefined!7131) (MissingVacant!7131 (index!30894 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40810 (_ BitVec 32)) SeekEntryResult!7131)

(assert (=> b!721306 (= e!404511 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19524 a!3186) j!159) a!3186 mask!3328) (Found!7131 j!159)))))

(declare-fun b!721307 () Bool)

(declare-fun res!483302 () Bool)

(declare-fun e!404510 () Bool)

(assert (=> b!721307 (=> (not res!483302) (not e!404510))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!721307 (= res!483302 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19524 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!721308 () Bool)

(assert (=> b!721308 (= e!404510 false)))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun lt!320045 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!721308 (= lt!320045 (toIndex!0 (select (store (arr!19524 a!3186) i!1173 k!2102) j!159) mask!3328))))

(declare-fun b!721310 () Bool)

(declare-fun res!483309 () Bool)

(declare-fun e!404513 () Bool)

(assert (=> b!721310 (=> (not res!483309) (not e!404513))))

(declare-fun arrayContainsKey!0 (array!40810 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!721310 (= res!483309 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!721311 () Bool)

(declare-fun res!483307 () Bool)

(assert (=> b!721311 (=> (not res!483307) (not e!404513))))

(assert (=> b!721311 (= res!483307 (and (= (size!19945 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19945 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19945 a!3186)) (not (= i!1173 j!159))))))

(declare-fun lt!320043 () SeekEntryResult!7131)

(declare-fun b!721312 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40810 (_ BitVec 32)) SeekEntryResult!7131)

(assert (=> b!721312 (= e!404511 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19524 a!3186) j!159) a!3186 mask!3328) lt!320043))))

(declare-fun b!721313 () Bool)

(declare-fun e!404514 () Bool)

(assert (=> b!721313 (= e!404514 e!404510)))

(declare-fun res!483301 () Bool)

(assert (=> b!721313 (=> (not res!483301) (not e!404510))))

(assert (=> b!721313 (= res!483301 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19524 a!3186) j!159) mask!3328) (select (arr!19524 a!3186) j!159) a!3186 mask!3328) lt!320043))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!721313 (= lt!320043 (Intermediate!7131 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!721314 () Bool)

(declare-fun res!483310 () Bool)

(assert (=> b!721314 (=> (not res!483310) (not e!404514))))

(assert (=> b!721314 (= res!483310 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19945 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19945 a!3186))))))

(declare-fun b!721315 () Bool)

(assert (=> b!721315 (= e!404513 e!404514)))

(declare-fun res!483308 () Bool)

(assert (=> b!721315 (=> (not res!483308) (not e!404514))))

(declare-fun lt!320044 () SeekEntryResult!7131)

(assert (=> b!721315 (= res!483308 (or (= lt!320044 (MissingZero!7131 i!1173)) (= lt!320044 (MissingVacant!7131 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40810 (_ BitVec 32)) SeekEntryResult!7131)

(assert (=> b!721315 (= lt!320044 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!721316 () Bool)

(declare-fun res!483311 () Bool)

(assert (=> b!721316 (=> (not res!483311) (not e!404510))))

(assert (=> b!721316 (= res!483311 e!404511)))

(declare-fun c!79374 () Bool)

(assert (=> b!721316 (= c!79374 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!721317 () Bool)

(declare-fun res!483306 () Bool)

(assert (=> b!721317 (=> (not res!483306) (not e!404513))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!721317 (= res!483306 (validKeyInArray!0 (select (arr!19524 a!3186) j!159)))))

(declare-fun b!721318 () Bool)

(declare-fun res!483303 () Bool)

(assert (=> b!721318 (=> (not res!483303) (not e!404513))))

(assert (=> b!721318 (= res!483303 (validKeyInArray!0 k!2102))))

(declare-fun b!721319 () Bool)

(declare-fun res!483312 () Bool)

(assert (=> b!721319 (=> (not res!483312) (not e!404514))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40810 (_ BitVec 32)) Bool)

(assert (=> b!721319 (= res!483312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!483304 () Bool)

(assert (=> start!64276 (=> (not res!483304) (not e!404513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64276 (= res!483304 (validMask!0 mask!3328))))

(assert (=> start!64276 e!404513))

(assert (=> start!64276 true))

(declare-fun array_inv!15298 (array!40810) Bool)

(assert (=> start!64276 (array_inv!15298 a!3186)))

(declare-fun b!721309 () Bool)

(declare-fun res!483305 () Bool)

(assert (=> b!721309 (=> (not res!483305) (not e!404514))))

(declare-datatypes ((List!13579 0))(
  ( (Nil!13576) (Cons!13575 (h!14629 (_ BitVec 64)) (t!19902 List!13579)) )
))
(declare-fun arrayNoDuplicates!0 (array!40810 (_ BitVec 32) List!13579) Bool)

(assert (=> b!721309 (= res!483305 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13576))))

(assert (= (and start!64276 res!483304) b!721311))

(assert (= (and b!721311 res!483307) b!721317))

(assert (= (and b!721317 res!483306) b!721318))

(assert (= (and b!721318 res!483303) b!721310))

(assert (= (and b!721310 res!483309) b!721315))

(assert (= (and b!721315 res!483308) b!721319))

(assert (= (and b!721319 res!483312) b!721309))

(assert (= (and b!721309 res!483305) b!721314))

(assert (= (and b!721314 res!483310) b!721313))

(assert (= (and b!721313 res!483301) b!721307))

(assert (= (and b!721307 res!483302) b!721316))

(assert (= (and b!721316 c!79374) b!721312))

(assert (= (and b!721316 (not c!79374)) b!721306))

(assert (= (and b!721316 res!483311) b!721308))

(declare-fun m!676201 () Bool)

(assert (=> b!721310 m!676201))

(declare-fun m!676203 () Bool)

(assert (=> b!721318 m!676203))

(declare-fun m!676205 () Bool)

(assert (=> b!721313 m!676205))

(assert (=> b!721313 m!676205))

(declare-fun m!676207 () Bool)

(assert (=> b!721313 m!676207))

(assert (=> b!721313 m!676207))

(assert (=> b!721313 m!676205))

(declare-fun m!676209 () Bool)

(assert (=> b!721313 m!676209))

(assert (=> b!721306 m!676205))

(assert (=> b!721306 m!676205))

(declare-fun m!676211 () Bool)

(assert (=> b!721306 m!676211))

(assert (=> b!721312 m!676205))

(assert (=> b!721312 m!676205))

(declare-fun m!676213 () Bool)

(assert (=> b!721312 m!676213))

(declare-fun m!676215 () Bool)

(assert (=> b!721309 m!676215))

(assert (=> b!721317 m!676205))

(assert (=> b!721317 m!676205))

(declare-fun m!676217 () Bool)

(assert (=> b!721317 m!676217))

(declare-fun m!676219 () Bool)

(assert (=> b!721308 m!676219))

(declare-fun m!676221 () Bool)

(assert (=> b!721308 m!676221))

(assert (=> b!721308 m!676221))

(declare-fun m!676223 () Bool)

(assert (=> b!721308 m!676223))

(declare-fun m!676225 () Bool)

(assert (=> b!721315 m!676225))

(declare-fun m!676227 () Bool)

(assert (=> b!721307 m!676227))

(declare-fun m!676229 () Bool)

(assert (=> start!64276 m!676229))

(declare-fun m!676231 () Bool)

(assert (=> start!64276 m!676231))

(declare-fun m!676233 () Bool)

(assert (=> b!721319 m!676233))

(push 1)

