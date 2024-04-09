; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64490 () Bool)

(assert start!64490)

(declare-fun b!724982 () Bool)

(declare-fun res!486263 () Bool)

(declare-fun e!406056 () Bool)

(assert (=> b!724982 (=> (not res!486263) (not e!406056))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40961 0))(
  ( (array!40962 (arr!19598 (Array (_ BitVec 32) (_ BitVec 64))) (size!20019 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40961)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!724982 (= res!486263 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19598 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!724983 () Bool)

(declare-fun res!486273 () Bool)

(declare-fun e!406050 () Bool)

(assert (=> b!724983 (=> (not res!486273) (not e!406050))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!724983 (= res!486273 (validKeyInArray!0 (select (arr!19598 a!3186) j!159)))))

(declare-fun b!724984 () Bool)

(declare-fun e!406053 () Bool)

(assert (=> b!724984 (= e!406053 e!406056)))

(declare-fun res!486264 () Bool)

(assert (=> b!724984 (=> (not res!486264) (not e!406056))))

(declare-datatypes ((SeekEntryResult!7205 0))(
  ( (MissingZero!7205 (index!31187 (_ BitVec 32))) (Found!7205 (index!31188 (_ BitVec 32))) (Intermediate!7205 (undefined!8017 Bool) (index!31189 (_ BitVec 32)) (x!62208 (_ BitVec 32))) (Undefined!7205) (MissingVacant!7205 (index!31190 (_ BitVec 32))) )
))
(declare-fun lt!321191 () SeekEntryResult!7205)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40961 (_ BitVec 32)) SeekEntryResult!7205)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!724984 (= res!486264 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19598 a!3186) j!159) mask!3328) (select (arr!19598 a!3186) j!159) a!3186 mask!3328) lt!321191))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!724984 (= lt!321191 (Intermediate!7205 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!724985 () Bool)

(declare-fun res!486265 () Bool)

(assert (=> b!724985 (=> (not res!486265) (not e!406050))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40961 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!724985 (= res!486265 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!724986 () Bool)

(declare-fun e!406051 () Bool)

(assert (=> b!724986 (= e!406051 (not true))))

(declare-fun e!406054 () Bool)

(assert (=> b!724986 e!406054))

(declare-fun res!486268 () Bool)

(assert (=> b!724986 (=> (not res!486268) (not e!406054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40961 (_ BitVec 32)) Bool)

(assert (=> b!724986 (= res!486268 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24728 0))(
  ( (Unit!24729) )
))
(declare-fun lt!321193 () Unit!24728)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40961 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24728)

(assert (=> b!724986 (= lt!321193 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!724988 () Bool)

(assert (=> b!724988 (= e!406056 e!406051)))

(declare-fun res!486266 () Bool)

(assert (=> b!724988 (=> (not res!486266) (not e!406051))))

(declare-fun lt!321192 () array!40961)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!321190 () (_ BitVec 64))

(assert (=> b!724988 (= res!486266 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321190 mask!3328) lt!321190 lt!321192 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321190 lt!321192 mask!3328)))))

(assert (=> b!724988 (= lt!321190 (select (store (arr!19598 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!724988 (= lt!321192 (array!40962 (store (arr!19598 a!3186) i!1173 k!2102) (size!20019 a!3186)))))

(declare-fun b!724989 () Bool)

(declare-fun res!486262 () Bool)

(assert (=> b!724989 (=> (not res!486262) (not e!406050))))

(assert (=> b!724989 (= res!486262 (and (= (size!20019 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20019 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20019 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!406052 () Bool)

(declare-fun b!724990 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40961 (_ BitVec 32)) SeekEntryResult!7205)

(assert (=> b!724990 (= e!406052 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19598 a!3186) j!159) a!3186 mask!3328) (Found!7205 j!159)))))

(declare-fun b!724991 () Bool)

(assert (=> b!724991 (= e!406050 e!406053)))

(declare-fun res!486261 () Bool)

(assert (=> b!724991 (=> (not res!486261) (not e!406053))))

(declare-fun lt!321194 () SeekEntryResult!7205)

(assert (=> b!724991 (= res!486261 (or (= lt!321194 (MissingZero!7205 i!1173)) (= lt!321194 (MissingVacant!7205 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40961 (_ BitVec 32)) SeekEntryResult!7205)

(assert (=> b!724991 (= lt!321194 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!486271 () Bool)

(assert (=> start!64490 (=> (not res!486271) (not e!406050))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64490 (= res!486271 (validMask!0 mask!3328))))

(assert (=> start!64490 e!406050))

(assert (=> start!64490 true))

(declare-fun array_inv!15372 (array!40961) Bool)

(assert (=> start!64490 (array_inv!15372 a!3186)))

(declare-fun b!724987 () Bool)

(assert (=> b!724987 (= e!406054 (= (seekEntryOrOpen!0 (select (arr!19598 a!3186) j!159) a!3186 mask!3328) (Found!7205 j!159)))))

(declare-fun b!724992 () Bool)

(declare-fun res!486270 () Bool)

(assert (=> b!724992 (=> (not res!486270) (not e!406053))))

(declare-datatypes ((List!13653 0))(
  ( (Nil!13650) (Cons!13649 (h!14706 (_ BitVec 64)) (t!19976 List!13653)) )
))
(declare-fun arrayNoDuplicates!0 (array!40961 (_ BitVec 32) List!13653) Bool)

(assert (=> b!724992 (= res!486270 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13650))))

(declare-fun b!724993 () Bool)

(declare-fun res!486260 () Bool)

(assert (=> b!724993 (=> (not res!486260) (not e!406056))))

(assert (=> b!724993 (= res!486260 e!406052)))

(declare-fun c!79734 () Bool)

(assert (=> b!724993 (= c!79734 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!724994 () Bool)

(declare-fun res!486269 () Bool)

(assert (=> b!724994 (=> (not res!486269) (not e!406050))))

(assert (=> b!724994 (= res!486269 (validKeyInArray!0 k!2102))))

(declare-fun b!724995 () Bool)

(declare-fun res!486267 () Bool)

(assert (=> b!724995 (=> (not res!486267) (not e!406053))))

(assert (=> b!724995 (= res!486267 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!724996 () Bool)

(assert (=> b!724996 (= e!406052 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19598 a!3186) j!159) a!3186 mask!3328) lt!321191))))

(declare-fun b!724997 () Bool)

(declare-fun res!486272 () Bool)

(assert (=> b!724997 (=> (not res!486272) (not e!406053))))

(assert (=> b!724997 (= res!486272 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20019 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20019 a!3186))))))

(assert (= (and start!64490 res!486271) b!724989))

(assert (= (and b!724989 res!486262) b!724983))

(assert (= (and b!724983 res!486273) b!724994))

(assert (= (and b!724994 res!486269) b!724985))

(assert (= (and b!724985 res!486265) b!724991))

(assert (= (and b!724991 res!486261) b!724995))

(assert (= (and b!724995 res!486267) b!724992))

(assert (= (and b!724992 res!486270) b!724997))

(assert (= (and b!724997 res!486272) b!724984))

(assert (= (and b!724984 res!486264) b!724982))

(assert (= (and b!724982 res!486263) b!724993))

(assert (= (and b!724993 c!79734) b!724996))

(assert (= (and b!724993 (not c!79734)) b!724990))

(assert (= (and b!724993 res!486260) b!724988))

(assert (= (and b!724988 res!486266) b!724986))

(assert (= (and b!724986 res!486268) b!724987))

(declare-fun m!679277 () Bool)

(assert (=> b!724987 m!679277))

(assert (=> b!724987 m!679277))

(declare-fun m!679279 () Bool)

(assert (=> b!724987 m!679279))

(assert (=> b!724990 m!679277))

(assert (=> b!724990 m!679277))

(declare-fun m!679281 () Bool)

(assert (=> b!724990 m!679281))

(declare-fun m!679283 () Bool)

(assert (=> b!724991 m!679283))

(assert (=> b!724984 m!679277))

(assert (=> b!724984 m!679277))

(declare-fun m!679285 () Bool)

(assert (=> b!724984 m!679285))

(assert (=> b!724984 m!679285))

(assert (=> b!724984 m!679277))

(declare-fun m!679287 () Bool)

(assert (=> b!724984 m!679287))

(declare-fun m!679289 () Bool)

(assert (=> b!724994 m!679289))

(declare-fun m!679291 () Bool)

(assert (=> b!724992 m!679291))

(declare-fun m!679293 () Bool)

(assert (=> b!724995 m!679293))

(declare-fun m!679295 () Bool)

(assert (=> start!64490 m!679295))

(declare-fun m!679297 () Bool)

(assert (=> start!64490 m!679297))

(declare-fun m!679299 () Bool)

(assert (=> b!724985 m!679299))

(assert (=> b!724996 m!679277))

(assert (=> b!724996 m!679277))

(declare-fun m!679301 () Bool)

(assert (=> b!724996 m!679301))

(assert (=> b!724983 m!679277))

(assert (=> b!724983 m!679277))

(declare-fun m!679303 () Bool)

(assert (=> b!724983 m!679303))

(declare-fun m!679305 () Bool)

(assert (=> b!724982 m!679305))

(declare-fun m!679307 () Bool)

(assert (=> b!724988 m!679307))

(declare-fun m!679309 () Bool)

(assert (=> b!724988 m!679309))

(declare-fun m!679311 () Bool)

(assert (=> b!724988 m!679311))

(declare-fun m!679313 () Bool)

(assert (=> b!724988 m!679313))

(assert (=> b!724988 m!679309))

(declare-fun m!679315 () Bool)

(assert (=> b!724988 m!679315))

(declare-fun m!679317 () Bool)

(assert (=> b!724986 m!679317))

(declare-fun m!679319 () Bool)

(assert (=> b!724986 m!679319))

(push 1)

(assert (not start!64490))

