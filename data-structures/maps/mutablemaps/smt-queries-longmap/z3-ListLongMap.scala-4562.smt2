; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63678 () Bool)

(assert start!63678)

(declare-fun b!716676 () Bool)

(declare-fun res!479604 () Bool)

(declare-fun e!402467 () Bool)

(assert (=> b!716676 (=> (not res!479604) (not e!402467))))

(declare-datatypes ((array!40538 0))(
  ( (array!40539 (arr!19399 (Array (_ BitVec 32) (_ BitVec 64))) (size!19820 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40538)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716676 (= res!479604 (validKeyInArray!0 (select (arr!19399 a!3186) j!159)))))

(declare-fun b!716677 () Bool)

(declare-fun res!479601 () Bool)

(assert (=> b!716677 (=> (not res!479601) (not e!402467))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!716677 (= res!479601 (validKeyInArray!0 k0!2102))))

(declare-fun b!716678 () Bool)

(assert (=> b!716678 (= e!402467 (and (bvslt #b00000000000000000000000000000000 (size!19820 a!3186)) (bvsge (size!19820 a!3186) #b01111111111111111111111111111111)))))

(declare-fun b!716675 () Bool)

(declare-fun res!479602 () Bool)

(assert (=> b!716675 (=> (not res!479602) (not e!402467))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!716675 (= res!479602 (and (= (size!19820 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19820 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19820 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!479603 () Bool)

(assert (=> start!63678 (=> (not res!479603) (not e!402467))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63678 (= res!479603 (validMask!0 mask!3328))))

(assert (=> start!63678 e!402467))

(declare-fun array_inv!15173 (array!40538) Bool)

(assert (=> start!63678 (array_inv!15173 a!3186)))

(assert (=> start!63678 true))

(assert (= (and start!63678 res!479603) b!716675))

(assert (= (and b!716675 res!479602) b!716676))

(assert (= (and b!716676 res!479604) b!716677))

(assert (= (and b!716677 res!479601) b!716678))

(declare-fun m!672787 () Bool)

(assert (=> b!716676 m!672787))

(assert (=> b!716676 m!672787))

(declare-fun m!672789 () Bool)

(assert (=> b!716676 m!672789))

(declare-fun m!672791 () Bool)

(assert (=> b!716677 m!672791))

(declare-fun m!672793 () Bool)

(assert (=> start!63678 m!672793))

(declare-fun m!672795 () Bool)

(assert (=> start!63678 m!672795))

(check-sat (not start!63678) (not b!716676) (not b!716677))
(check-sat)
(get-model)

(declare-fun d!98697 () Bool)

(assert (=> d!98697 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!63678 d!98697))

(declare-fun d!98707 () Bool)

(assert (=> d!98707 (= (array_inv!15173 a!3186) (bvsge (size!19820 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!63678 d!98707))

(declare-fun d!98709 () Bool)

(assert (=> d!98709 (= (validKeyInArray!0 (select (arr!19399 a!3186) j!159)) (and (not (= (select (arr!19399 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19399 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!716676 d!98709))

(declare-fun d!98711 () Bool)

(assert (=> d!98711 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!716677 d!98711))

(check-sat)
