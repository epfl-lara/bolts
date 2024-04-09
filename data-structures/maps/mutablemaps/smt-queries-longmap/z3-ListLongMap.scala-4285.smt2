; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59720 () Bool)

(assert start!59720)

(declare-fun b!659495 () Bool)

(declare-fun res!427736 () Bool)

(declare-fun e!378928 () Bool)

(assert (=> b!659495 (=> (not res!427736) (not e!378928))))

(declare-datatypes ((List!12662 0))(
  ( (Nil!12659) (Cons!12658 (h!13703 (_ BitVec 64)) (t!18898 List!12662)) )
))
(declare-fun acc!681 () List!12662)

(declare-fun noDuplicate!452 (List!12662) Bool)

(assert (=> b!659495 (= res!427736 (noDuplicate!452 acc!681))))

(declare-fun b!659496 () Bool)

(declare-fun e!378927 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3205 (List!12662 (_ BitVec 64)) Bool)

(assert (=> b!659496 (= e!378927 (contains!3205 acc!681 k0!2843))))

(declare-fun b!659497 () Bool)

(assert (=> b!659497 (= e!378928 false)))

(declare-fun lt!308646 () Bool)

(declare-fun e!378926 () Bool)

(assert (=> b!659497 (= lt!308646 e!378926)))

(declare-fun res!427737 () Bool)

(assert (=> b!659497 (=> res!427737 e!378926)))

(assert (=> b!659497 (= res!427737 e!378927)))

(declare-fun res!427735 () Bool)

(assert (=> b!659497 (=> (not res!427735) (not e!378927))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!659497 (= res!427735 (bvsgt from!3004 i!1382))))

(declare-fun b!659498 () Bool)

(declare-fun e!378925 () Bool)

(assert (=> b!659498 (= e!378926 e!378925)))

(declare-fun res!427739 () Bool)

(assert (=> b!659498 (=> (not res!427739) (not e!378925))))

(assert (=> b!659498 (= res!427739 (bvsle from!3004 i!1382))))

(declare-fun b!659499 () Bool)

(declare-fun res!427733 () Bool)

(assert (=> b!659499 (=> (not res!427733) (not e!378928))))

(assert (=> b!659499 (= res!427733 (not (contains!3205 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!427738 () Bool)

(assert (=> start!59720 (=> (not res!427738) (not e!378928))))

(declare-datatypes ((array!38753 0))(
  ( (array!38754 (arr!18568 (Array (_ BitVec 32) (_ BitVec 64))) (size!18932 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38753)

(assert (=> start!59720 (= res!427738 (and (bvslt (size!18932 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18932 a!3626))))))

(assert (=> start!59720 e!378928))

(assert (=> start!59720 true))

(declare-fun array_inv!14342 (array!38753) Bool)

(assert (=> start!59720 (array_inv!14342 a!3626)))

(declare-fun b!659500 () Bool)

(declare-fun res!427734 () Bool)

(assert (=> b!659500 (=> (not res!427734) (not e!378928))))

(assert (=> b!659500 (= res!427734 (not (contains!3205 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659501 () Bool)

(assert (=> b!659501 (= e!378925 (not (contains!3205 acc!681 k0!2843)))))

(assert (= (and start!59720 res!427738) b!659495))

(assert (= (and b!659495 res!427736) b!659500))

(assert (= (and b!659500 res!427734) b!659499))

(assert (= (and b!659499 res!427733) b!659497))

(assert (= (and b!659497 res!427735) b!659496))

(assert (= (and b!659497 (not res!427737)) b!659498))

(assert (= (and b!659498 res!427739) b!659501))

(declare-fun m!632521 () Bool)

(assert (=> start!59720 m!632521))

(declare-fun m!632523 () Bool)

(assert (=> b!659500 m!632523))

(declare-fun m!632525 () Bool)

(assert (=> b!659495 m!632525))

(declare-fun m!632527 () Bool)

(assert (=> b!659496 m!632527))

(declare-fun m!632529 () Bool)

(assert (=> b!659499 m!632529))

(assert (=> b!659501 m!632527))

(check-sat (not b!659501) (not start!59720) (not b!659495) (not b!659500) (not b!659499) (not b!659496))
