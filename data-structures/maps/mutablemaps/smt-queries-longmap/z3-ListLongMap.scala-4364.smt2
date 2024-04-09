; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60230 () Bool)

(assert start!60230)

(declare-fun b!673759 () Bool)

(declare-fun e!384675 () Bool)

(declare-fun e!384681 () Bool)

(assert (=> b!673759 (= e!384675 e!384681)))

(declare-fun res!440448 () Bool)

(assert (=> b!673759 (=> (not res!440448) (not e!384681))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-datatypes ((array!39233 0))(
  ( (array!39234 (arr!18805 (Array (_ BitVec 32) (_ BitVec 64))) (size!19169 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39233)

(assert (=> b!673759 (= res!440448 (not (= (select (arr!18805 a!3626) from!3004) k0!2843)))))

(declare-datatypes ((Unit!23684 0))(
  ( (Unit!23685) )
))
(declare-fun lt!312486 () Unit!23684)

(declare-fun e!384682 () Unit!23684)

(assert (=> b!673759 (= lt!312486 e!384682)))

(declare-fun c!77027 () Bool)

(assert (=> b!673759 (= c!77027 (= (select (arr!18805 a!3626) from!3004) k0!2843))))

(declare-fun b!673761 () Bool)

(declare-fun res!440442 () Bool)

(declare-fun e!384674 () Bool)

(assert (=> b!673761 (=> (not res!440442) (not e!384674))))

(declare-datatypes ((List!12899 0))(
  ( (Nil!12896) (Cons!12895 (h!13940 (_ BitVec 64)) (t!19135 List!12899)) )
))
(declare-fun lt!312489 () List!12899)

(declare-fun contains!3442 (List!12899 (_ BitVec 64)) Bool)

(assert (=> b!673761 (= res!440442 (not (contains!3442 lt!312489 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673762 () Bool)

(declare-fun res!440447 () Bool)

(assert (=> b!673762 (=> (not res!440447) (not e!384675))))

(declare-fun arrayNoDuplicates!0 (array!39233 (_ BitVec 32) List!12899) Bool)

(assert (=> b!673762 (= res!440447 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12896))))

(declare-fun b!673763 () Bool)

(declare-fun Unit!23686 () Unit!23684)

(assert (=> b!673763 (= e!384682 Unit!23686)))

(declare-fun arrayContainsKey!0 (array!39233 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!673763 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!312488 () Unit!23684)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39233 (_ BitVec 64) (_ BitVec 32)) Unit!23684)

(assert (=> b!673763 (= lt!312488 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!673763 false))

(declare-fun b!673764 () Bool)

(declare-fun res!440461 () Bool)

(assert (=> b!673764 (=> (not res!440461) (not e!384674))))

(assert (=> b!673764 (= res!440461 (not (contains!3442 lt!312489 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673765 () Bool)

(declare-fun res!440457 () Bool)

(assert (=> b!673765 (=> (not res!440457) (not e!384675))))

(declare-fun acc!681 () List!12899)

(assert (=> b!673765 (= res!440457 (not (contains!3442 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673766 () Bool)

(assert (=> b!673766 (= e!384681 e!384674)))

(declare-fun res!440454 () Bool)

(assert (=> b!673766 (=> (not res!440454) (not e!384674))))

(assert (=> b!673766 (= res!440454 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!290 (List!12899 (_ BitVec 64)) List!12899)

(assert (=> b!673766 (= lt!312489 ($colon$colon!290 acc!681 (select (arr!18805 a!3626) from!3004)))))

(declare-fun b!673767 () Bool)

(declare-fun res!440450 () Bool)

(assert (=> b!673767 (=> (not res!440450) (not e!384675))))

(assert (=> b!673767 (= res!440450 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!673768 () Bool)

(declare-fun e!384672 () Bool)

(declare-fun e!384676 () Bool)

(assert (=> b!673768 (= e!384672 e!384676)))

(declare-fun res!440459 () Bool)

(assert (=> b!673768 (=> (not res!440459) (not e!384676))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!673768 (= res!440459 (bvsle from!3004 i!1382))))

(declare-fun b!673769 () Bool)

(declare-fun res!440449 () Bool)

(assert (=> b!673769 (=> (not res!440449) (not e!384675))))

(assert (=> b!673769 (= res!440449 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19169 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!673770 () Bool)

(declare-fun res!440444 () Bool)

(assert (=> b!673770 (=> (not res!440444) (not e!384675))))

(assert (=> b!673770 (= res!440444 e!384672)))

(declare-fun res!440441 () Bool)

(assert (=> b!673770 (=> res!440441 e!384672)))

(declare-fun e!384673 () Bool)

(assert (=> b!673770 (= res!440441 e!384673)))

(declare-fun res!440453 () Bool)

(assert (=> b!673770 (=> (not res!440453) (not e!384673))))

(assert (=> b!673770 (= res!440453 (bvsgt from!3004 i!1382))))

(declare-fun b!673771 () Bool)

(declare-fun res!440456 () Bool)

(assert (=> b!673771 (=> (not res!440456) (not e!384674))))

(declare-fun noDuplicate!689 (List!12899) Bool)

(assert (=> b!673771 (= res!440456 (noDuplicate!689 lt!312489))))

(declare-fun b!673772 () Bool)

(declare-fun res!440440 () Bool)

(assert (=> b!673772 (=> (not res!440440) (not e!384675))))

(assert (=> b!673772 (= res!440440 (not (contains!3442 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673773 () Bool)

(assert (=> b!673773 (= e!384676 (not (contains!3442 acc!681 k0!2843)))))

(declare-fun res!440446 () Bool)

(assert (=> start!60230 (=> (not res!440446) (not e!384675))))

(assert (=> start!60230 (= res!440446 (and (bvslt (size!19169 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19169 a!3626))))))

(assert (=> start!60230 e!384675))

(assert (=> start!60230 true))

(declare-fun array_inv!14579 (array!39233) Bool)

(assert (=> start!60230 (array_inv!14579 a!3626)))

(declare-fun b!673760 () Bool)

(declare-fun res!440455 () Bool)

(assert (=> b!673760 (=> (not res!440455) (not e!384674))))

(declare-fun e!384680 () Bool)

(assert (=> b!673760 (= res!440455 e!384680)))

(declare-fun res!440460 () Bool)

(assert (=> b!673760 (=> res!440460 e!384680)))

(declare-fun e!384677 () Bool)

(assert (=> b!673760 (= res!440460 e!384677)))

(declare-fun res!440439 () Bool)

(assert (=> b!673760 (=> (not res!440439) (not e!384677))))

(assert (=> b!673760 (= res!440439 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673774 () Bool)

(assert (=> b!673774 (= e!384673 (contains!3442 acc!681 k0!2843))))

(declare-fun b!673775 () Bool)

(assert (=> b!673775 (= e!384674 false)))

(declare-fun lt!312487 () Bool)

(assert (=> b!673775 (= lt!312487 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312489))))

(declare-fun b!673776 () Bool)

(declare-fun res!440462 () Bool)

(assert (=> b!673776 (=> (not res!440462) (not e!384675))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!673776 (= res!440462 (validKeyInArray!0 k0!2843))))

(declare-fun b!673777 () Bool)

(declare-fun res!440445 () Bool)

(assert (=> b!673777 (=> (not res!440445) (not e!384675))))

(assert (=> b!673777 (= res!440445 (validKeyInArray!0 (select (arr!18805 a!3626) from!3004)))))

(declare-fun b!673778 () Bool)

(declare-fun res!440443 () Bool)

(assert (=> b!673778 (=> (not res!440443) (not e!384675))))

(assert (=> b!673778 (= res!440443 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!673779 () Bool)

(assert (=> b!673779 (= e!384677 (contains!3442 lt!312489 k0!2843))))

(declare-fun b!673780 () Bool)

(declare-fun Unit!23687 () Unit!23684)

(assert (=> b!673780 (= e!384682 Unit!23687)))

(declare-fun b!673781 () Bool)

(declare-fun e!384679 () Bool)

(assert (=> b!673781 (= e!384679 (not (contains!3442 lt!312489 k0!2843)))))

(declare-fun b!673782 () Bool)

(assert (=> b!673782 (= e!384680 e!384679)))

(declare-fun res!440458 () Bool)

(assert (=> b!673782 (=> (not res!440458) (not e!384679))))

(assert (=> b!673782 (= res!440458 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673783 () Bool)

(declare-fun res!440452 () Bool)

(assert (=> b!673783 (=> (not res!440452) (not e!384675))))

(assert (=> b!673783 (= res!440452 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19169 a!3626))))))

(declare-fun b!673784 () Bool)

(declare-fun res!440451 () Bool)

(assert (=> b!673784 (=> (not res!440451) (not e!384675))))

(assert (=> b!673784 (= res!440451 (noDuplicate!689 acc!681))))

(assert (= (and start!60230 res!440446) b!673784))

(assert (= (and b!673784 res!440451) b!673765))

(assert (= (and b!673765 res!440457) b!673772))

(assert (= (and b!673772 res!440440) b!673770))

(assert (= (and b!673770 res!440453) b!673774))

(assert (= (and b!673770 (not res!440441)) b!673768))

(assert (= (and b!673768 res!440459) b!673773))

(assert (= (and b!673770 res!440444) b!673762))

(assert (= (and b!673762 res!440447) b!673778))

(assert (= (and b!673778 res!440443) b!673783))

(assert (= (and b!673783 res!440452) b!673776))

(assert (= (and b!673776 res!440462) b!673767))

(assert (= (and b!673767 res!440450) b!673769))

(assert (= (and b!673769 res!440449) b!673777))

(assert (= (and b!673777 res!440445) b!673759))

(assert (= (and b!673759 c!77027) b!673763))

(assert (= (and b!673759 (not c!77027)) b!673780))

(assert (= (and b!673759 res!440448) b!673766))

(assert (= (and b!673766 res!440454) b!673771))

(assert (= (and b!673771 res!440456) b!673761))

(assert (= (and b!673761 res!440442) b!673764))

(assert (= (and b!673764 res!440461) b!673760))

(assert (= (and b!673760 res!440439) b!673779))

(assert (= (and b!673760 (not res!440460)) b!673782))

(assert (= (and b!673782 res!440458) b!673781))

(assert (= (and b!673760 res!440455) b!673775))

(declare-fun m!642005 () Bool)

(assert (=> b!673767 m!642005))

(declare-fun m!642007 () Bool)

(assert (=> b!673772 m!642007))

(declare-fun m!642009 () Bool)

(assert (=> b!673778 m!642009))

(declare-fun m!642011 () Bool)

(assert (=> start!60230 m!642011))

(declare-fun m!642013 () Bool)

(assert (=> b!673771 m!642013))

(declare-fun m!642015 () Bool)

(assert (=> b!673781 m!642015))

(declare-fun m!642017 () Bool)

(assert (=> b!673766 m!642017))

(assert (=> b!673766 m!642017))

(declare-fun m!642019 () Bool)

(assert (=> b!673766 m!642019))

(assert (=> b!673759 m!642017))

(declare-fun m!642021 () Bool)

(assert (=> b!673773 m!642021))

(declare-fun m!642023 () Bool)

(assert (=> b!673765 m!642023))

(declare-fun m!642025 () Bool)

(assert (=> b!673762 m!642025))

(assert (=> b!673774 m!642021))

(assert (=> b!673779 m!642015))

(declare-fun m!642027 () Bool)

(assert (=> b!673763 m!642027))

(declare-fun m!642029 () Bool)

(assert (=> b!673763 m!642029))

(declare-fun m!642031 () Bool)

(assert (=> b!673775 m!642031))

(declare-fun m!642033 () Bool)

(assert (=> b!673784 m!642033))

(declare-fun m!642035 () Bool)

(assert (=> b!673761 m!642035))

(declare-fun m!642037 () Bool)

(assert (=> b!673764 m!642037))

(assert (=> b!673777 m!642017))

(assert (=> b!673777 m!642017))

(declare-fun m!642039 () Bool)

(assert (=> b!673777 m!642039))

(declare-fun m!642041 () Bool)

(assert (=> b!673776 m!642041))

(check-sat (not b!673777) (not b!673779) (not b!673784) (not start!60230) (not b!673781) (not b!673771) (not b!673761) (not b!673773) (not b!673775) (not b!673767) (not b!673766) (not b!673778) (not b!673774) (not b!673763) (not b!673765) (not b!673772) (not b!673762) (not b!673776) (not b!673764))
(check-sat)
