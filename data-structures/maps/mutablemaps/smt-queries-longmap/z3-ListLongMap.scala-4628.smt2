; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64488 () Bool)

(assert start!64488)

(declare-fun b!724934 () Bool)

(declare-fun res!486218 () Bool)

(declare-fun e!406032 () Bool)

(assert (=> b!724934 (=> (not res!486218) (not e!406032))))

(declare-datatypes ((array!40959 0))(
  ( (array!40960 (arr!19597 (Array (_ BitVec 32) (_ BitVec 64))) (size!20018 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40959)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!724934 (= res!486218 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19597 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!724935 () Bool)

(declare-fun res!486225 () Bool)

(declare-fun e!406034 () Bool)

(assert (=> b!724935 (=> (not res!486225) (not e!406034))))

(declare-datatypes ((List!13652 0))(
  ( (Nil!13649) (Cons!13648 (h!14705 (_ BitVec 64)) (t!19975 List!13652)) )
))
(declare-fun arrayNoDuplicates!0 (array!40959 (_ BitVec 32) List!13652) Bool)

(assert (=> b!724935 (= res!486225 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13649))))

(declare-fun b!724936 () Bool)

(declare-fun e!406031 () Bool)

(assert (=> b!724936 (= e!406031 e!406034)))

(declare-fun res!486224 () Bool)

(assert (=> b!724936 (=> (not res!486224) (not e!406034))))

(declare-datatypes ((SeekEntryResult!7204 0))(
  ( (MissingZero!7204 (index!31183 (_ BitVec 32))) (Found!7204 (index!31184 (_ BitVec 32))) (Intermediate!7204 (undefined!8016 Bool) (index!31185 (_ BitVec 32)) (x!62207 (_ BitVec 32))) (Undefined!7204) (MissingVacant!7204 (index!31186 (_ BitVec 32))) )
))
(declare-fun lt!321178 () SeekEntryResult!7204)

(assert (=> b!724936 (= res!486224 (or (= lt!321178 (MissingZero!7204 i!1173)) (= lt!321178 (MissingVacant!7204 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40959 (_ BitVec 32)) SeekEntryResult!7204)

(assert (=> b!724936 (= lt!321178 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun e!406029 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!724937 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40959 (_ BitVec 32)) SeekEntryResult!7204)

(assert (=> b!724937 (= e!406029 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19597 a!3186) j!159) a!3186 mask!3328) (Found!7204 j!159)))))

(declare-fun b!724938 () Bool)

(declare-fun res!486231 () Bool)

(assert (=> b!724938 (=> (not res!486231) (not e!406031))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!724938 (= res!486231 (validKeyInArray!0 (select (arr!19597 a!3186) j!159)))))

(declare-fun b!724939 () Bool)

(declare-fun res!486229 () Bool)

(assert (=> b!724939 (=> (not res!486229) (not e!406031))))

(assert (=> b!724939 (= res!486229 (validKeyInArray!0 k0!2102))))

(declare-fun b!724940 () Bool)

(declare-fun res!486219 () Bool)

(assert (=> b!724940 (=> (not res!486219) (not e!406034))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!724940 (= res!486219 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20018 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20018 a!3186))))))

(declare-fun res!486230 () Bool)

(assert (=> start!64488 (=> (not res!486230) (not e!406031))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64488 (= res!486230 (validMask!0 mask!3328))))

(assert (=> start!64488 e!406031))

(assert (=> start!64488 true))

(declare-fun array_inv!15371 (array!40959) Bool)

(assert (=> start!64488 (array_inv!15371 a!3186)))

(declare-fun b!724941 () Bool)

(declare-fun res!486228 () Bool)

(assert (=> b!724941 (=> (not res!486228) (not e!406034))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40959 (_ BitVec 32)) Bool)

(assert (=> b!724941 (= res!486228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!724942 () Bool)

(declare-fun res!486222 () Bool)

(assert (=> b!724942 (=> (not res!486222) (not e!406031))))

(declare-fun arrayContainsKey!0 (array!40959 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!724942 (= res!486222 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!724943 () Bool)

(assert (=> b!724943 (= e!406034 e!406032)))

(declare-fun res!486221 () Bool)

(assert (=> b!724943 (=> (not res!486221) (not e!406032))))

(declare-fun lt!321179 () SeekEntryResult!7204)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40959 (_ BitVec 32)) SeekEntryResult!7204)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!724943 (= res!486221 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19597 a!3186) j!159) mask!3328) (select (arr!19597 a!3186) j!159) a!3186 mask!3328) lt!321179))))

(assert (=> b!724943 (= lt!321179 (Intermediate!7204 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!724944 () Bool)

(declare-fun e!406035 () Bool)

(assert (=> b!724944 (= e!406032 e!406035)))

(declare-fun res!486220 () Bool)

(assert (=> b!724944 (=> (not res!486220) (not e!406035))))

(declare-fun lt!321176 () array!40959)

(declare-fun lt!321175 () (_ BitVec 64))

(assert (=> b!724944 (= res!486220 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321175 mask!3328) lt!321175 lt!321176 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321175 lt!321176 mask!3328)))))

(assert (=> b!724944 (= lt!321175 (select (store (arr!19597 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!724944 (= lt!321176 (array!40960 (store (arr!19597 a!3186) i!1173 k0!2102) (size!20018 a!3186)))))

(declare-fun b!724945 () Bool)

(declare-fun res!486227 () Bool)

(assert (=> b!724945 (=> (not res!486227) (not e!406032))))

(assert (=> b!724945 (= res!486227 e!406029)))

(declare-fun c!79731 () Bool)

(assert (=> b!724945 (= c!79731 (bvsle x!1131 resIntermediateX!5))))

(declare-fun e!406030 () Bool)

(declare-fun b!724946 () Bool)

(assert (=> b!724946 (= e!406030 (= (seekEntryOrOpen!0 (select (arr!19597 a!3186) j!159) a!3186 mask!3328) (Found!7204 j!159)))))

(declare-fun b!724947 () Bool)

(assert (=> b!724947 (= e!406035 (not true))))

(assert (=> b!724947 e!406030))

(declare-fun res!486223 () Bool)

(assert (=> b!724947 (=> (not res!486223) (not e!406030))))

(assert (=> b!724947 (= res!486223 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24726 0))(
  ( (Unit!24727) )
))
(declare-fun lt!321177 () Unit!24726)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40959 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24726)

(assert (=> b!724947 (= lt!321177 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!724948 () Bool)

(assert (=> b!724948 (= e!406029 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19597 a!3186) j!159) a!3186 mask!3328) lt!321179))))

(declare-fun b!724949 () Bool)

(declare-fun res!486226 () Bool)

(assert (=> b!724949 (=> (not res!486226) (not e!406031))))

(assert (=> b!724949 (= res!486226 (and (= (size!20018 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20018 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20018 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!64488 res!486230) b!724949))

(assert (= (and b!724949 res!486226) b!724938))

(assert (= (and b!724938 res!486231) b!724939))

(assert (= (and b!724939 res!486229) b!724942))

(assert (= (and b!724942 res!486222) b!724936))

(assert (= (and b!724936 res!486224) b!724941))

(assert (= (and b!724941 res!486228) b!724935))

(assert (= (and b!724935 res!486225) b!724940))

(assert (= (and b!724940 res!486219) b!724943))

(assert (= (and b!724943 res!486221) b!724934))

(assert (= (and b!724934 res!486218) b!724945))

(assert (= (and b!724945 c!79731) b!724948))

(assert (= (and b!724945 (not c!79731)) b!724937))

(assert (= (and b!724945 res!486227) b!724944))

(assert (= (and b!724944 res!486220) b!724947))

(assert (= (and b!724947 res!486223) b!724946))

(declare-fun m!679233 () Bool)

(assert (=> b!724947 m!679233))

(declare-fun m!679235 () Bool)

(assert (=> b!724947 m!679235))

(declare-fun m!679237 () Bool)

(assert (=> b!724935 m!679237))

(declare-fun m!679239 () Bool)

(assert (=> b!724943 m!679239))

(assert (=> b!724943 m!679239))

(declare-fun m!679241 () Bool)

(assert (=> b!724943 m!679241))

(assert (=> b!724943 m!679241))

(assert (=> b!724943 m!679239))

(declare-fun m!679243 () Bool)

(assert (=> b!724943 m!679243))

(declare-fun m!679245 () Bool)

(assert (=> b!724942 m!679245))

(declare-fun m!679247 () Bool)

(assert (=> b!724939 m!679247))

(declare-fun m!679249 () Bool)

(assert (=> start!64488 m!679249))

(declare-fun m!679251 () Bool)

(assert (=> start!64488 m!679251))

(assert (=> b!724938 m!679239))

(assert (=> b!724938 m!679239))

(declare-fun m!679253 () Bool)

(assert (=> b!724938 m!679253))

(assert (=> b!724937 m!679239))

(assert (=> b!724937 m!679239))

(declare-fun m!679255 () Bool)

(assert (=> b!724937 m!679255))

(declare-fun m!679257 () Bool)

(assert (=> b!724934 m!679257))

(declare-fun m!679259 () Bool)

(assert (=> b!724944 m!679259))

(declare-fun m!679261 () Bool)

(assert (=> b!724944 m!679261))

(declare-fun m!679263 () Bool)

(assert (=> b!724944 m!679263))

(declare-fun m!679265 () Bool)

(assert (=> b!724944 m!679265))

(declare-fun m!679267 () Bool)

(assert (=> b!724944 m!679267))

(assert (=> b!724944 m!679263))

(assert (=> b!724946 m!679239))

(assert (=> b!724946 m!679239))

(declare-fun m!679269 () Bool)

(assert (=> b!724946 m!679269))

(declare-fun m!679271 () Bool)

(assert (=> b!724936 m!679271))

(assert (=> b!724948 m!679239))

(assert (=> b!724948 m!679239))

(declare-fun m!679273 () Bool)

(assert (=> b!724948 m!679273))

(declare-fun m!679275 () Bool)

(assert (=> b!724941 m!679275))

(check-sat (not b!724947) (not b!724946) (not b!724935) (not b!724948) (not b!724942) (not b!724941) (not b!724939) (not b!724943) (not start!64488) (not b!724937) (not b!724938) (not b!724936) (not b!724944))
(check-sat)
