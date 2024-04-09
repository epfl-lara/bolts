; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48344 () Bool)

(assert start!48344)

(declare-fun b!531215 () Bool)

(declare-fun res!326934 () Bool)

(declare-fun e!309414 () Bool)

(assert (=> b!531215 (=> (not res!326934) (not e!309414))))

(declare-datatypes ((array!33653 0))(
  ( (array!33654 (arr!16166 (Array (_ BitVec 32) (_ BitVec 64))) (size!16530 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33653)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531215 (= res!326934 (validKeyInArray!0 (select (arr!16166 a!3154) j!147)))))

(declare-fun res!326928 () Bool)

(assert (=> start!48344 (=> (not res!326928) (not e!309414))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48344 (= res!326928 (validMask!0 mask!3216))))

(assert (=> start!48344 e!309414))

(assert (=> start!48344 true))

(declare-fun array_inv!11940 (array!33653) Bool)

(assert (=> start!48344 (array_inv!11940 a!3154)))

(declare-fun b!531216 () Bool)

(declare-fun res!326936 () Bool)

(assert (=> b!531216 (=> (not res!326936) (not e!309414))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531216 (= res!326936 (and (= (size!16530 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16530 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16530 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!531217 () Bool)

(declare-fun e!309413 () Bool)

(declare-datatypes ((List!10338 0))(
  ( (Nil!10335) (Cons!10334 (h!11274 (_ BitVec 64)) (t!16574 List!10338)) )
))
(declare-fun contains!2791 (List!10338 (_ BitVec 64)) Bool)

(assert (=> b!531217 (= e!309413 (contains!2791 Nil!10335 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!531218 () Bool)

(declare-fun res!326930 () Bool)

(declare-fun e!309415 () Bool)

(assert (=> b!531218 (=> (not res!326930) (not e!309415))))

(assert (=> b!531218 (= res!326930 (and (bvsle #b00000000000000000000000000000000 (size!16530 a!3154)) (bvslt (size!16530 a!3154) #b01111111111111111111111111111111)))))

(declare-fun b!531219 () Bool)

(declare-fun res!326935 () Bool)

(assert (=> b!531219 (=> (not res!326935) (not e!309414))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33653 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531219 (= res!326935 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!531220 () Bool)

(declare-fun res!326927 () Bool)

(assert (=> b!531220 (=> (not res!326927) (not e!309414))))

(assert (=> b!531220 (= res!326927 (validKeyInArray!0 k!1998))))

(declare-fun b!531221 () Bool)

(assert (=> b!531221 (= e!309414 e!309415)))

(declare-fun res!326931 () Bool)

(assert (=> b!531221 (=> (not res!326931) (not e!309415))))

(declare-datatypes ((SeekEntryResult!4631 0))(
  ( (MissingZero!4631 (index!20748 (_ BitVec 32))) (Found!4631 (index!20749 (_ BitVec 32))) (Intermediate!4631 (undefined!5443 Bool) (index!20750 (_ BitVec 32)) (x!49752 (_ BitVec 32))) (Undefined!4631) (MissingVacant!4631 (index!20751 (_ BitVec 32))) )
))
(declare-fun lt!244925 () SeekEntryResult!4631)

(assert (=> b!531221 (= res!326931 (or (= lt!244925 (MissingZero!4631 i!1153)) (= lt!244925 (MissingVacant!4631 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33653 (_ BitVec 32)) SeekEntryResult!4631)

(assert (=> b!531221 (= lt!244925 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!531222 () Bool)

(assert (=> b!531222 (= e!309415 e!309413)))

(declare-fun res!326933 () Bool)

(assert (=> b!531222 (=> res!326933 e!309413)))

(assert (=> b!531222 (= res!326933 (contains!2791 Nil!10335 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!531223 () Bool)

(declare-fun res!326929 () Bool)

(assert (=> b!531223 (=> (not res!326929) (not e!309415))))

(declare-fun noDuplicate!219 (List!10338) Bool)

(assert (=> b!531223 (= res!326929 (noDuplicate!219 Nil!10335))))

(declare-fun b!531224 () Bool)

(declare-fun res!326932 () Bool)

(assert (=> b!531224 (=> (not res!326932) (not e!309415))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33653 (_ BitVec 32)) Bool)

(assert (=> b!531224 (= res!326932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48344 res!326928) b!531216))

(assert (= (and b!531216 res!326936) b!531215))

(assert (= (and b!531215 res!326934) b!531220))

(assert (= (and b!531220 res!326927) b!531219))

(assert (= (and b!531219 res!326935) b!531221))

(assert (= (and b!531221 res!326931) b!531224))

(assert (= (and b!531224 res!326932) b!531218))

(assert (= (and b!531218 res!326930) b!531223))

(assert (= (and b!531223 res!326929) b!531222))

(assert (= (and b!531222 (not res!326933)) b!531217))

(declare-fun m!511665 () Bool)

(assert (=> b!531222 m!511665))

(declare-fun m!511667 () Bool)

(assert (=> b!531224 m!511667))

(declare-fun m!511669 () Bool)

(assert (=> b!531215 m!511669))

(assert (=> b!531215 m!511669))

(declare-fun m!511671 () Bool)

(assert (=> b!531215 m!511671))

(declare-fun m!511673 () Bool)

(assert (=> b!531217 m!511673))

(declare-fun m!511675 () Bool)

(assert (=> b!531219 m!511675))

(declare-fun m!511677 () Bool)

(assert (=> start!48344 m!511677))

(declare-fun m!511679 () Bool)

(assert (=> start!48344 m!511679))

(declare-fun m!511681 () Bool)

(assert (=> b!531221 m!511681))

(declare-fun m!511683 () Bool)

(assert (=> b!531220 m!511683))

(declare-fun m!511685 () Bool)

(assert (=> b!531223 m!511685))

(push 1)

(assert (not b!531220))

(assert (not b!531223))

(assert (not b!531222))

(assert (not b!531215))

(assert (not b!531217))

(assert (not b!531224))

(assert (not b!531221))

(assert (not start!48344))

(assert (not b!531219))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!81149 () Bool)

(declare-fun lt!244943 () Bool)

(declare-fun content!224 (List!10338) (Set (_ BitVec 64)))

(assert (=> d!81149 (= lt!244943 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!224 Nil!10335)))))

(declare-fun e!309435 () Bool)

(assert (=> d!81149 (= lt!244943 e!309435)))

(declare-fun res!326947 () Bool)

(assert (=> d!81149 (=> (not res!326947) (not e!309435))))

(assert (=> d!81149 (= res!326947 (is-Cons!10334 Nil!10335))))

(assert (=> d!81149 (= (contains!2791 Nil!10335 #b0000000000000000000000000000000000000000000000000000000000000000) lt!244943)))

(declare-fun b!531253 () Bool)

(declare-fun e!309436 () Bool)

(assert (=> b!531253 (= e!309435 e!309436)))

(declare-fun res!326948 () Bool)

(assert (=> b!531253 (=> res!326948 e!309436)))

(assert (=> b!531253 (= res!326948 (= (h!11274 Nil!10335) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!531254 () Bool)

(assert (=> b!531254 (= e!309436 (contains!2791 (t!16574 Nil!10335) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!81149 res!326947) b!531253))

(assert (= (and b!531253 (not res!326948)) b!531254))

(declare-fun m!511699 () Bool)

(assert (=> d!81149 m!511699))

(declare-fun m!511701 () Bool)

(assert (=> d!81149 m!511701))

(declare-fun m!511703 () Bool)

(assert (=> b!531254 m!511703))

(assert (=> b!531222 d!81149))

(declare-fun d!81151 () Bool)

(declare-fun lt!244947 () Bool)

(assert (=> d!81151 (= lt!244947 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!224 Nil!10335)))))

(declare-fun e!309440 () Bool)

(assert (=> d!81151 (= lt!244947 e!309440)))

(declare-fun res!326949 () Bool)

(assert (=> d!81151 (=> (not res!326949) (not e!309440))))

(assert (=> d!81151 (= res!326949 (is-Cons!10334 Nil!10335))))

(assert (=> d!81151 (= (contains!2791 Nil!10335 #b1000000000000000000000000000000000000000000000000000000000000000) lt!244947)))

(declare-fun b!531261 () Bool)

(declare-fun e!309441 () Bool)

(assert (=> b!531261 (= e!309440 e!309441)))

(declare-fun res!326950 () Bool)

(assert (=> b!531261 (=> res!326950 e!309441)))

(assert (=> b!531261 (= res!326950 (= (h!11274 Nil!10335) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!531262 () Bool)

(assert (=> b!531262 (= e!309441 (contains!2791 (t!16574 Nil!10335) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!81151 res!326949) b!531261))

(assert (= (and b!531261 (not res!326950)) b!531262))

(assert (=> d!81151 m!511699))

(declare-fun m!511705 () Bool)

(assert (=> d!81151 m!511705))

(declare-fun m!511709 () Bool)

(assert (=> b!531262 m!511709))

(assert (=> b!531217 d!81151))

(declare-fun d!81153 () Bool)

(declare-fun res!326959 () Bool)

(declare-fun e!309450 () Bool)

(assert (=> d!81153 (=> res!326959 e!309450)))

(assert (=> d!81153 (= res!326959 (is-Nil!10335 Nil!10335))))

(assert (=> d!81153 (= (noDuplicate!219 Nil!10335) e!309450)))

(declare-fun b!531271 () Bool)

(declare-fun e!309451 () Bool)

(assert (=> b!531271 (= e!309450 e!309451)))

(declare-fun res!326960 () Bool)

(assert (=> b!531271 (=> (not res!326960) (not e!309451))))

(assert (=> b!531271 (= res!326960 (not (contains!2791 (t!16574 Nil!10335) (h!11274 Nil!10335))))))

(declare-fun b!531272 () Bool)

(assert (=> b!531272 (= e!309451 (noDuplicate!219 (t!16574 Nil!10335)))))

(assert (= (and d!81153 (not res!326959)) b!531271))

(assert (= (and b!531271 res!326960) b!531272))

(declare-fun m!511723 () Bool)

(assert (=> b!531271 m!511723))

(declare-fun m!511725 () Bool)

(assert (=> b!531272 m!511725))

(assert (=> b!531223 d!81153))

(declare-fun d!81157 () Bool)

(assert (=> d!81157 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

