; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49716 () Bool)

(assert start!49716)

(declare-fun res!340212 () Bool)

(declare-fun e!315789 () Bool)

(assert (=> start!49716 (=> (not res!340212) (not e!315789))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49716 (= res!340212 (validMask!0 mask!3119))))

(assert (=> start!49716 e!315789))

(assert (=> start!49716 true))

(declare-datatypes ((array!34422 0))(
  ( (array!34423 (arr!16534 (Array (_ BitVec 32) (_ BitVec 64))) (size!16898 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34422)

(declare-fun array_inv!12308 (array!34422) Bool)

(assert (=> start!49716 (array_inv!12308 a!3118)))

(declare-fun b!546348 () Bool)

(declare-fun res!340214 () Bool)

(assert (=> b!546348 (=> (not res!340214) (not e!315789))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546348 (= res!340214 (validKeyInArray!0 (select (arr!16534 a!3118) j!142)))))

(declare-fun b!546347 () Bool)

(declare-fun res!340213 () Bool)

(assert (=> b!546347 (=> (not res!340213) (not e!315789))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546347 (= res!340213 (and (= (size!16898 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16898 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16898 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546350 () Bool)

(assert (=> b!546350 (= e!315789 (and (bvslt #b00000000000000000000000000000000 (size!16898 a!3118)) (bvsge (size!16898 a!3118) #b01111111111111111111111111111111)))))

(declare-fun b!546349 () Bool)

(declare-fun res!340211 () Bool)

(assert (=> b!546349 (=> (not res!340211) (not e!315789))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!546349 (= res!340211 (validKeyInArray!0 k0!1914))))

(assert (= (and start!49716 res!340212) b!546347))

(assert (= (and b!546347 res!340213) b!546348))

(assert (= (and b!546348 res!340214) b!546349))

(assert (= (and b!546349 res!340211) b!546350))

(declare-fun m!523811 () Bool)

(assert (=> start!49716 m!523811))

(declare-fun m!523813 () Bool)

(assert (=> start!49716 m!523813))

(declare-fun m!523815 () Bool)

(assert (=> b!546348 m!523815))

(assert (=> b!546348 m!523815))

(declare-fun m!523817 () Bool)

(assert (=> b!546348 m!523817))

(declare-fun m!523819 () Bool)

(assert (=> b!546349 m!523819))

(check-sat (not b!546349) (not b!546348) (not start!49716))
(check-sat)
(get-model)

(declare-fun d!82241 () Bool)

(assert (=> d!82241 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!546349 d!82241))

(declare-fun d!82243 () Bool)

(assert (=> d!82243 (= (validKeyInArray!0 (select (arr!16534 a!3118) j!142)) (and (not (= (select (arr!16534 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16534 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!546348 d!82243))

(declare-fun d!82245 () Bool)

(assert (=> d!82245 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!49716 d!82245))

(declare-fun d!82259 () Bool)

(assert (=> d!82259 (= (array_inv!12308 a!3118) (bvsge (size!16898 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!49716 d!82259))

(check-sat)
