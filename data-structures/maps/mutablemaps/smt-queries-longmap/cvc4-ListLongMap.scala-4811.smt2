; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66228 () Bool)

(assert start!66228)

(declare-fun b!762255 () Bool)

(declare-fun res!515538 () Bool)

(declare-fun e!424921 () Bool)

(assert (=> b!762255 (=> (not res!515538) (not e!424921))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42086 0))(
  ( (array!42087 (arr!20147 (Array (_ BitVec 32) (_ BitVec 64))) (size!20568 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42086)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762255 (= res!515538 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20568 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20568 a!3186))))))

(declare-fun b!762256 () Bool)

(declare-fun e!424922 () Bool)

(assert (=> b!762256 (= e!424922 e!424921)))

(declare-fun res!515540 () Bool)

(assert (=> b!762256 (=> (not res!515540) (not e!424921))))

(declare-datatypes ((SeekEntryResult!7754 0))(
  ( (MissingZero!7754 (index!33383 (_ BitVec 32))) (Found!7754 (index!33384 (_ BitVec 32))) (Intermediate!7754 (undefined!8566 Bool) (index!33385 (_ BitVec 32)) (x!64319 (_ BitVec 32))) (Undefined!7754) (MissingVacant!7754 (index!33386 (_ BitVec 32))) )
))
(declare-fun lt!339514 () SeekEntryResult!7754)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762256 (= res!515540 (or (= lt!339514 (MissingZero!7754 i!1173)) (= lt!339514 (MissingVacant!7754 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42086 (_ BitVec 32)) SeekEntryResult!7754)

(assert (=> b!762256 (= lt!339514 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!762257 () Bool)

(assert (=> b!762257 (= e!424921 false)))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!339513 () SeekEntryResult!7754)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42086 (_ BitVec 32)) SeekEntryResult!7754)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762257 (= lt!339513 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20147 a!3186) j!159) mask!3328) (select (arr!20147 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!762258 () Bool)

(declare-fun res!515543 () Bool)

(assert (=> b!762258 (=> (not res!515543) (not e!424921))))

(declare-datatypes ((List!14202 0))(
  ( (Nil!14199) (Cons!14198 (h!15282 (_ BitVec 64)) (t!20525 List!14202)) )
))
(declare-fun arrayNoDuplicates!0 (array!42086 (_ BitVec 32) List!14202) Bool)

(assert (=> b!762258 (= res!515543 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14199))))

(declare-fun b!762259 () Bool)

(declare-fun res!515536 () Bool)

(assert (=> b!762259 (=> (not res!515536) (not e!424922))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762259 (= res!515536 (validKeyInArray!0 k!2102))))

(declare-fun b!762260 () Bool)

(declare-fun res!515541 () Bool)

(assert (=> b!762260 (=> (not res!515541) (not e!424922))))

(declare-fun arrayContainsKey!0 (array!42086 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762260 (= res!515541 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762261 () Bool)

(declare-fun res!515537 () Bool)

(assert (=> b!762261 (=> (not res!515537) (not e!424921))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42086 (_ BitVec 32)) Bool)

(assert (=> b!762261 (= res!515537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!515542 () Bool)

(assert (=> start!66228 (=> (not res!515542) (not e!424922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66228 (= res!515542 (validMask!0 mask!3328))))

(assert (=> start!66228 e!424922))

(assert (=> start!66228 true))

(declare-fun array_inv!15921 (array!42086) Bool)

(assert (=> start!66228 (array_inv!15921 a!3186)))

(declare-fun b!762262 () Bool)

(declare-fun res!515539 () Bool)

(assert (=> b!762262 (=> (not res!515539) (not e!424922))))

(assert (=> b!762262 (= res!515539 (validKeyInArray!0 (select (arr!20147 a!3186) j!159)))))

(declare-fun b!762263 () Bool)

(declare-fun res!515544 () Bool)

(assert (=> b!762263 (=> (not res!515544) (not e!424922))))

(assert (=> b!762263 (= res!515544 (and (= (size!20568 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20568 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20568 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!66228 res!515542) b!762263))

(assert (= (and b!762263 res!515544) b!762262))

(assert (= (and b!762262 res!515539) b!762259))

(assert (= (and b!762259 res!515536) b!762260))

(assert (= (and b!762260 res!515541) b!762256))

(assert (= (and b!762256 res!515540) b!762261))

(assert (= (and b!762261 res!515537) b!762258))

(assert (= (and b!762258 res!515543) b!762255))

(assert (= (and b!762255 res!515538) b!762257))

(declare-fun m!709087 () Bool)

(assert (=> b!762258 m!709087))

(declare-fun m!709089 () Bool)

(assert (=> b!762256 m!709089))

(declare-fun m!709091 () Bool)

(assert (=> b!762262 m!709091))

(assert (=> b!762262 m!709091))

(declare-fun m!709093 () Bool)

(assert (=> b!762262 m!709093))

(declare-fun m!709095 () Bool)

(assert (=> b!762260 m!709095))

(declare-fun m!709097 () Bool)

(assert (=> start!66228 m!709097))

(declare-fun m!709099 () Bool)

(assert (=> start!66228 m!709099))

(declare-fun m!709101 () Bool)

(assert (=> b!762259 m!709101))

(declare-fun m!709103 () Bool)

(assert (=> b!762261 m!709103))

(assert (=> b!762257 m!709091))

(assert (=> b!762257 m!709091))

(declare-fun m!709105 () Bool)

(assert (=> b!762257 m!709105))

(assert (=> b!762257 m!709105))

(assert (=> b!762257 m!709091))

(declare-fun m!709107 () Bool)

(assert (=> b!762257 m!709107))

(push 1)

(assert (not b!762257))

(assert (not b!762260))

(assert (not b!762262))

(assert (not start!66228))

(assert (not b!762258))

(assert (not b!762261))

