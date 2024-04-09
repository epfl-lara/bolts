; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62230 () Bool)

(assert start!62230)

(declare-fun b!696769 () Bool)

(declare-fun e!396155 () Bool)

(declare-datatypes ((List!13221 0))(
  ( (Nil!13218) (Cons!13217 (h!14262 (_ BitVec 64)) (t!19511 List!13221)) )
))
(declare-fun acc!681 () List!13221)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3764 (List!13221 (_ BitVec 64)) Bool)

(assert (=> b!696769 (= e!396155 (contains!3764 acc!681 k!2843))))

(declare-fun b!696770 () Bool)

(declare-fun e!396154 () Bool)

(declare-fun e!396153 () Bool)

(assert (=> b!696770 (= e!396154 e!396153)))

(declare-fun res!460867 () Bool)

(assert (=> b!696770 (=> (not res!460867) (not e!396153))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!696770 (= res!460867 (bvsle from!3004 i!1382))))

(declare-fun b!696772 () Bool)

(declare-fun e!396157 () Bool)

(assert (=> b!696772 (= e!396157 false)))

(declare-datatypes ((array!39943 0))(
  ( (array!39944 (arr!19127 (Array (_ BitVec 32) (_ BitVec 64))) (size!19510 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39943)

(declare-fun lt!317076 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39943 (_ BitVec 32) List!13221) Bool)

(assert (=> b!696772 (= lt!317076 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!696773 () Bool)

(declare-fun res!460862 () Bool)

(assert (=> b!696773 (=> (not res!460862) (not e!396157))))

(assert (=> b!696773 (= res!460862 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!696774 () Bool)

(declare-fun res!460868 () Bool)

(assert (=> b!696774 (=> (not res!460868) (not e!396157))))

(assert (=> b!696774 (= res!460868 e!396154)))

(declare-fun res!460871 () Bool)

(assert (=> b!696774 (=> res!460871 e!396154)))

(declare-fun e!396160 () Bool)

(assert (=> b!696774 (= res!460871 e!396160)))

(declare-fun res!460876 () Bool)

(assert (=> b!696774 (=> (not res!460876) (not e!396160))))

(assert (=> b!696774 (= res!460876 (bvsgt from!3004 i!1382))))

(declare-fun b!696775 () Bool)

(assert (=> b!696775 (= e!396160 (contains!3764 acc!681 k!2843))))

(declare-fun b!696776 () Bool)

(declare-fun res!460866 () Bool)

(assert (=> b!696776 (=> (not res!460866) (not e!396157))))

(assert (=> b!696776 (= res!460866 (not (contains!3764 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!696777 () Bool)

(assert (=> b!696777 (= e!396153 (not (contains!3764 acc!681 k!2843)))))

(declare-fun b!696778 () Bool)

(declare-fun res!460864 () Bool)

(assert (=> b!696778 (=> (not res!460864) (not e!396157))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!696778 (= res!460864 (validKeyInArray!0 k!2843))))

(declare-fun b!696779 () Bool)

(declare-fun res!460878 () Bool)

(assert (=> b!696779 (=> (not res!460878) (not e!396157))))

(assert (=> b!696779 (= res!460878 (not (contains!3764 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!696780 () Bool)

(declare-fun res!460875 () Bool)

(assert (=> b!696780 (=> (not res!460875) (not e!396157))))

(assert (=> b!696780 (= res!460875 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!696781 () Bool)

(declare-fun e!396159 () Bool)

(assert (=> b!696781 (= e!396159 (not (contains!3764 acc!681 k!2843)))))

(declare-fun b!696782 () Bool)

(declare-fun res!460872 () Bool)

(assert (=> b!696782 (=> (not res!460872) (not e!396157))))

(declare-fun noDuplicate!1011 (List!13221) Bool)

(assert (=> b!696782 (= res!460872 (noDuplicate!1011 acc!681))))

(declare-fun b!696783 () Bool)

(declare-fun res!460865 () Bool)

(assert (=> b!696783 (=> (not res!460865) (not e!396157))))

(assert (=> b!696783 (= res!460865 (not (validKeyInArray!0 (select (arr!19127 a!3626) from!3004))))))

(declare-fun b!696784 () Bool)

(declare-fun e!396158 () Bool)

(assert (=> b!696784 (= e!396158 e!396159)))

(declare-fun res!460874 () Bool)

(assert (=> b!696784 (=> (not res!460874) (not e!396159))))

(assert (=> b!696784 (= res!460874 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!696785 () Bool)

(declare-fun res!460879 () Bool)

(assert (=> b!696785 (=> (not res!460879) (not e!396157))))

(assert (=> b!696785 (= res!460879 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19510 a!3626))))))

(declare-fun b!696786 () Bool)

(declare-fun res!460877 () Bool)

(assert (=> b!696786 (=> (not res!460877) (not e!396157))))

(assert (=> b!696786 (= res!460877 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19510 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!696787 () Bool)

(declare-fun res!460861 () Bool)

(assert (=> b!696787 (=> (not res!460861) (not e!396157))))

(assert (=> b!696787 (= res!460861 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13218))))

(declare-fun b!696788 () Bool)

(declare-fun res!460863 () Bool)

(assert (=> b!696788 (=> (not res!460863) (not e!396157))))

(declare-fun arrayContainsKey!0 (array!39943 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!696788 (= res!460863 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!696771 () Bool)

(declare-fun res!460869 () Bool)

(assert (=> b!696771 (=> (not res!460869) (not e!396157))))

(assert (=> b!696771 (= res!460869 e!396158)))

(declare-fun res!460870 () Bool)

(assert (=> b!696771 (=> res!460870 e!396158)))

(assert (=> b!696771 (= res!460870 e!396155)))

(declare-fun res!460880 () Bool)

(assert (=> b!696771 (=> (not res!460880) (not e!396155))))

(assert (=> b!696771 (= res!460880 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun res!460873 () Bool)

(assert (=> start!62230 (=> (not res!460873) (not e!396157))))

(assert (=> start!62230 (= res!460873 (and (bvslt (size!19510 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19510 a!3626))))))

(assert (=> start!62230 e!396157))

(assert (=> start!62230 true))

(declare-fun array_inv!14901 (array!39943) Bool)

(assert (=> start!62230 (array_inv!14901 a!3626)))

(assert (= (and start!62230 res!460873) b!696782))

(assert (= (and b!696782 res!460872) b!696776))

(assert (= (and b!696776 res!460866) b!696779))

(assert (= (and b!696779 res!460878) b!696774))

(assert (= (and b!696774 res!460876) b!696775))

(assert (= (and b!696774 (not res!460871)) b!696770))

(assert (= (and b!696770 res!460867) b!696777))

(assert (= (and b!696774 res!460868) b!696787))

(assert (= (and b!696787 res!460861) b!696773))

(assert (= (and b!696773 res!460862) b!696785))

(assert (= (and b!696785 res!460879) b!696778))

(assert (= (and b!696778 res!460864) b!696788))

(assert (= (and b!696788 res!460863) b!696786))

(assert (= (and b!696786 res!460877) b!696783))

(assert (= (and b!696783 res!460865) b!696780))

(assert (= (and b!696780 res!460875) b!696771))

(assert (= (and b!696771 res!460880) b!696769))

(assert (= (and b!696771 (not res!460870)) b!696784))

(assert (= (and b!696784 res!460874) b!696781))

(assert (= (and b!696771 res!460869) b!696772))

(declare-fun m!657513 () Bool)

(assert (=> b!696781 m!657513))

(declare-fun m!657515 () Bool)

(assert (=> b!696783 m!657515))

(assert (=> b!696783 m!657515))

(declare-fun m!657517 () Bool)

(assert (=> b!696783 m!657517))

(declare-fun m!657519 () Bool)

(assert (=> b!696773 m!657519))

(declare-fun m!657521 () Bool)

(assert (=> b!696788 m!657521))

(assert (=> b!696769 m!657513))

(assert (=> b!696775 m!657513))

(declare-fun m!657523 () Bool)

(assert (=> b!696779 m!657523))

(declare-fun m!657525 () Bool)

(assert (=> b!696778 m!657525))

(declare-fun m!657527 () Bool)

(assert (=> b!696772 m!657527))

(assert (=> b!696777 m!657513))

(declare-fun m!657529 () Bool)

(assert (=> start!62230 m!657529))

(declare-fun m!657531 () Bool)

(assert (=> b!696776 m!657531))

(declare-fun m!657533 () Bool)

(assert (=> b!696787 m!657533))

(declare-fun m!657535 () Bool)

(assert (=> b!696782 m!657535))

(push 1)

(assert (not b!696782))

(assert (not b!696776))

(assert (not b!696777))

(assert (not b!696787))

(assert (not b!696779))

(assert (not b!696781))

(assert (not b!696788))

(assert (not start!62230))

(assert (not b!696773))

(assert (not b!696783))

(assert (not b!696769))

(assert (not b!696775))

(assert (not b!696772))

(assert (not b!696778))

(check-sat)

