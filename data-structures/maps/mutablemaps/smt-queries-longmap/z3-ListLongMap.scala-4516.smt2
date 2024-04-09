; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62582 () Bool)

(assert start!62582)

(declare-fun b!705278 () Bool)

(declare-fun res!469274 () Bool)

(declare-fun e!397726 () Bool)

(assert (=> b!705278 (=> (not res!469274) (not e!397726))))

(declare-datatypes ((List!13355 0))(
  ( (Nil!13352) (Cons!13351 (h!14396 (_ BitVec 64)) (t!19645 List!13355)) )
))
(declare-fun acc!652 () List!13355)

(declare-fun noDuplicate!1145 (List!13355) Bool)

(assert (=> b!705278 (= res!469274 (noDuplicate!1145 acc!652))))

(declare-fun b!705279 () Bool)

(declare-fun res!469276 () Bool)

(assert (=> b!705279 (=> (not res!469276) (not e!397726))))

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> b!705279 (= res!469276 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!705280 () Bool)

(declare-fun res!469278 () Bool)

(assert (=> b!705280 (=> (not res!469278) (not e!397726))))

(declare-fun newAcc!49 () List!13355)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun -!307 (List!13355 (_ BitVec 64)) List!13355)

(assert (=> b!705280 (= res!469278 (= (-!307 newAcc!49 k0!2824) acc!652))))

(declare-fun b!705281 () Bool)

(declare-fun res!469279 () Bool)

(assert (=> b!705281 (=> (not res!469279) (not e!397726))))

(declare-datatypes ((array!40217 0))(
  ( (array!40218 (arr!19261 (Array (_ BitVec 32) (_ BitVec 64))) (size!19644 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40217)

(declare-fun arrayNoDuplicates!0 (array!40217 (_ BitVec 32) List!13355) Bool)

(assert (=> b!705281 (= res!469279 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun res!469271 () Bool)

(assert (=> start!62582 (=> (not res!469271) (not e!397726))))

(assert (=> start!62582 (= res!469271 (and (bvslt (size!19644 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19644 a!3591))))))

(assert (=> start!62582 e!397726))

(assert (=> start!62582 true))

(declare-fun array_inv!15035 (array!40217) Bool)

(assert (=> start!62582 (array_inv!15035 a!3591)))

(declare-fun b!705282 () Bool)

(declare-fun res!469275 () Bool)

(assert (=> b!705282 (=> (not res!469275) (not e!397726))))

(assert (=> b!705282 (= res!469275 (noDuplicate!1145 newAcc!49))))

(declare-fun b!705283 () Bool)

(declare-fun res!469277 () Bool)

(assert (=> b!705283 (=> (not res!469277) (not e!397726))))

(assert (=> b!705283 (= res!469277 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19644 a!3591)))))

(declare-fun b!705284 () Bool)

(declare-fun res!469268 () Bool)

(assert (=> b!705284 (=> (not res!469268) (not e!397726))))

(declare-fun contains!3898 (List!13355 (_ BitVec 64)) Bool)

(assert (=> b!705284 (= res!469268 (not (contains!3898 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705285 () Bool)

(assert (=> b!705285 (= e!397726 (not (bvsle from!2969 (size!19644 a!3591))))))

(assert (=> b!705285 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) newAcc!49)))

(declare-datatypes ((Unit!24588 0))(
  ( (Unit!24589) )
))
(declare-fun lt!317844 () Unit!24588)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40217 (_ BitVec 64) (_ BitVec 32) List!13355 List!13355) Unit!24588)

(assert (=> b!705285 (= lt!317844 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969) acc!652 newAcc!49))))

(declare-fun b!705286 () Bool)

(declare-fun res!469270 () Bool)

(assert (=> b!705286 (=> (not res!469270) (not e!397726))))

(assert (=> b!705286 (= res!469270 (not (contains!3898 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705287 () Bool)

(declare-fun res!469263 () Bool)

(assert (=> b!705287 (=> (not res!469263) (not e!397726))))

(assert (=> b!705287 (= res!469263 (not (contains!3898 acc!652 k0!2824)))))

(declare-fun b!705288 () Bool)

(declare-fun res!469262 () Bool)

(assert (=> b!705288 (=> (not res!469262) (not e!397726))))

(declare-fun arrayContainsKey!0 (array!40217 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!705288 (= res!469262 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!705289 () Bool)

(declare-fun res!469269 () Bool)

(assert (=> b!705289 (=> (not res!469269) (not e!397726))))

(assert (=> b!705289 (= res!469269 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!705290 () Bool)

(declare-fun res!469264 () Bool)

(assert (=> b!705290 (=> (not res!469264) (not e!397726))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!705290 (= res!469264 (not (validKeyInArray!0 (select (arr!19261 a!3591) from!2969))))))

(declare-fun b!705291 () Bool)

(declare-fun res!469265 () Bool)

(assert (=> b!705291 (=> (not res!469265) (not e!397726))))

(assert (=> b!705291 (= res!469265 (not (contains!3898 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705292 () Bool)

(declare-fun res!469266 () Bool)

(assert (=> b!705292 (=> (not res!469266) (not e!397726))))

(assert (=> b!705292 (= res!469266 (validKeyInArray!0 k0!2824))))

(declare-fun b!705293 () Bool)

(declare-fun res!469267 () Bool)

(assert (=> b!705293 (=> (not res!469267) (not e!397726))))

(assert (=> b!705293 (= res!469267 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!705294 () Bool)

(declare-fun res!469280 () Bool)

(assert (=> b!705294 (=> (not res!469280) (not e!397726))))

(assert (=> b!705294 (= res!469280 (contains!3898 newAcc!49 k0!2824))))

(declare-fun b!705295 () Bool)

(declare-fun res!469272 () Bool)

(assert (=> b!705295 (=> (not res!469272) (not e!397726))))

(declare-fun subseq!342 (List!13355 List!13355) Bool)

(assert (=> b!705295 (= res!469272 (subseq!342 acc!652 newAcc!49))))

(declare-fun b!705296 () Bool)

(declare-fun res!469273 () Bool)

(assert (=> b!705296 (=> (not res!469273) (not e!397726))))

(assert (=> b!705296 (= res!469273 (not (contains!3898 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62582 res!469271) b!705278))

(assert (= (and b!705278 res!469274) b!705282))

(assert (= (and b!705282 res!469275) b!705296))

(assert (= (and b!705296 res!469273) b!705284))

(assert (= (and b!705284 res!469268) b!705289))

(assert (= (and b!705289 res!469269) b!705287))

(assert (= (and b!705287 res!469263) b!705292))

(assert (= (and b!705292 res!469266) b!705281))

(assert (= (and b!705281 res!469279) b!705295))

(assert (= (and b!705295 res!469272) b!705294))

(assert (= (and b!705294 res!469280) b!705280))

(assert (= (and b!705280 res!469278) b!705291))

(assert (= (and b!705291 res!469265) b!705286))

(assert (= (and b!705286 res!469270) b!705283))

(assert (= (and b!705283 res!469277) b!705290))

(assert (= (and b!705290 res!469264) b!705279))

(assert (= (and b!705279 res!469276) b!705288))

(assert (= (and b!705288 res!469262) b!705293))

(assert (= (and b!705293 res!469267) b!705285))

(declare-fun m!663511 () Bool)

(assert (=> b!705285 m!663511))

(declare-fun m!663513 () Bool)

(assert (=> b!705285 m!663513))

(declare-fun m!663515 () Bool)

(assert (=> b!705291 m!663515))

(declare-fun m!663517 () Bool)

(assert (=> b!705278 m!663517))

(declare-fun m!663519 () Bool)

(assert (=> b!705293 m!663519))

(declare-fun m!663521 () Bool)

(assert (=> b!705284 m!663521))

(declare-fun m!663523 () Bool)

(assert (=> b!705292 m!663523))

(declare-fun m!663525 () Bool)

(assert (=> b!705296 m!663525))

(declare-fun m!663527 () Bool)

(assert (=> b!705295 m!663527))

(declare-fun m!663529 () Bool)

(assert (=> b!705294 m!663529))

(declare-fun m!663531 () Bool)

(assert (=> b!705280 m!663531))

(declare-fun m!663533 () Bool)

(assert (=> b!705287 m!663533))

(declare-fun m!663535 () Bool)

(assert (=> b!705282 m!663535))

(declare-fun m!663537 () Bool)

(assert (=> b!705290 m!663537))

(assert (=> b!705290 m!663537))

(declare-fun m!663539 () Bool)

(assert (=> b!705290 m!663539))

(declare-fun m!663541 () Bool)

(assert (=> b!705289 m!663541))

(declare-fun m!663543 () Bool)

(assert (=> b!705286 m!663543))

(declare-fun m!663545 () Bool)

(assert (=> b!705281 m!663545))

(declare-fun m!663547 () Bool)

(assert (=> start!62582 m!663547))

(declare-fun m!663549 () Bool)

(assert (=> b!705288 m!663549))

(check-sat (not b!705293) (not b!705280) (not b!705296) (not b!705282) (not b!705281) (not b!705284) (not b!705291) (not b!705288) (not b!705285) (not b!705286) (not start!62582) (not b!705290) (not b!705295) (not b!705287) (not b!705292) (not b!705289) (not b!705278) (not b!705294))
(check-sat)
