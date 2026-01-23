; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!208732 () Bool)

(assert start!208732)

(assert (=> start!208732 true))

(declare-fun bs!445647 () Bool)

(declare-fun b!2151807 () Bool)

(assert (= bs!445647 (and b!2151807 start!208732)))

(declare-fun lambda!80998 () Int)

(declare-fun res1!7 () Int)

(declare-fun res2!7 () Int)

(declare-fun lambda!80997 () Int)

(assert (=> bs!445647 (= (= res2!7 res1!7) (= lambda!80998 lambda!80997))))

(assert (=> b!2151807 true))

(declare-fun e!1376176 () Bool)

(declare-fun b!2151801 () Bool)

(declare-fun setRes!17287 () Bool)

(declare-fun e!1376175 () Bool)

(declare-datatypes ((C!11898 0))(
  ( (C!11899 (val!6935 Int)) )
))
(declare-datatypes ((List!24797 0))(
  ( (Nil!24713) (Cons!24713 (h!30114 C!11898) (t!197345 List!24797)) )
))
(declare-datatypes ((IArray!16029 0))(
  ( (IArray!16030 (innerList!8072 List!24797)) )
))
(declare-datatypes ((Conc!8012 0))(
  ( (Node!8012 (left!18991 Conc!8012) (right!19321 Conc!8012) (csize!16254 Int) (cheight!8223 Int)) (Leaf!11718 (xs!10954 IArray!16029) (csize!16255 Int)) (Empty!8012) )
))
(declare-datatypes ((Regex!5876 0))(
  ( (ElementMatch!5876 (c!341311 C!11898)) (Concat!10178 (regOne!12264 Regex!5876) (regTwo!12264 Regex!5876)) (EmptyExpr!5876) (Star!5876 (reg!6205 Regex!5876)) (EmptyLang!5876) (Union!5876 (regOne!12265 Regex!5876) (regTwo!12265 Regex!5876)) )
))
(declare-datatypes ((List!24798 0))(
  ( (Nil!24714) (Cons!24714 (h!30115 Regex!5876) (t!197346 List!24798)) )
))
(declare-datatypes ((Context!2892 0))(
  ( (Context!2893 (exprs!1946 List!24798)) )
))
(declare-datatypes ((BalanceConc!15786 0))(
  ( (BalanceConc!15787 (c!341312 Conc!8012)) )
))
(declare-datatypes ((StackFrame!286 0))(
  ( (StackFrame!287 (z!5945 (Set Context!2892)) (from!2788 Int) (lastNullablePos!475 Int) (res!927838 Int) (totalInput!3277 BalanceConc!15786)) )
))
(declare-datatypes ((List!24799 0))(
  ( (Nil!24715) (Cons!24715 (h!30116 StackFrame!286) (t!197347 List!24799)) )
))
(declare-fun s!7978 () List!24799)

(declare-fun inv!32585 (BalanceConc!15786) Bool)

(assert (=> b!2151801 (= e!1376175 (and setRes!17287 (inv!32585 (totalInput!3277 (h!30116 s!7978))) e!1376176))))

(declare-fun condSetEmpty!17287 () Bool)

(assert (=> b!2151801 (= condSetEmpty!17287 (= (z!5945 (h!30116 s!7978)) (as set.empty (Set Context!2892))))))

(declare-fun res!927835 () Bool)

(declare-fun e!1376178 () Bool)

(assert (=> start!208732 (=> (not res!927835) (not e!1376178))))

(declare-fun forall!5048 (List!24799 Int) Bool)

(assert (=> start!208732 (= res!927835 (forall!5048 s!7978 lambda!80997))))

(assert (=> start!208732 e!1376178))

(declare-fun e!1376180 () Bool)

(assert (=> start!208732 e!1376180))

(assert (=> start!208732 true))

(declare-fun b!2151802 () Bool)

(declare-fun res!927836 () Bool)

(assert (=> b!2151802 (=> (not res!927836) (not e!1376178))))

(assert (=> b!2151802 (= res!927836 (and (= res1!7 res2!7) (not (is-Nil!24715 s!7978))))))

(declare-fun b!2151803 () Bool)

(declare-fun e!1376179 () Bool)

(assert (=> b!2151803 (= e!1376179 (= (res!927838 (h!30116 s!7978)) res1!7))))

(declare-fun b!2151804 () Bool)

(declare-fun tp!668894 () Bool)

(declare-fun inv!32586 (Conc!8012) Bool)

(assert (=> b!2151804 (= e!1376176 (and (inv!32586 (c!341312 (totalInput!3277 (h!30116 s!7978)))) tp!668894))))

(declare-fun setElem!17287 () Context!2892)

(declare-fun tp!668896 () Bool)

(declare-fun setNonEmpty!17287 () Bool)

(declare-fun e!1376177 () Bool)

(declare-fun inv!32587 (Context!2892) Bool)

(assert (=> setNonEmpty!17287 (= setRes!17287 (and tp!668896 (inv!32587 setElem!17287) e!1376177))))

(declare-fun setRest!17287 () (Set Context!2892))

(assert (=> setNonEmpty!17287 (= (z!5945 (h!30116 s!7978)) (set.union (set.insert setElem!17287 (as set.empty (Set Context!2892))) setRest!17287))))

(declare-fun b!2151805 () Bool)

(declare-fun tp!668897 () Bool)

(assert (=> b!2151805 (= e!1376177 tp!668897)))

(declare-fun b!2151806 () Bool)

(declare-fun tp!668895 () Bool)

(declare-fun inv!32588 (StackFrame!286) Bool)

(assert (=> b!2151806 (= e!1376180 (and (inv!32588 (h!30116 s!7978)) e!1376175 tp!668895))))

(assert (=> b!2151807 (= e!1376178 (not e!1376179))))

(declare-fun res!927837 () Bool)

(assert (=> b!2151807 (=> res!927837 e!1376179)))

(assert (=> b!2151807 (= res!927837 (not (forall!5048 (t!197347 s!7978) lambda!80998)))))

(assert (=> b!2151807 (forall!5048 (t!197347 s!7978) lambda!80998)))

(declare-datatypes ((Unit!37874 0))(
  ( (Unit!37875) )
))
(declare-fun lt!801227 () Unit!37874)

(declare-fun lemmaStackPreservesForEqualRes!36 (List!24799 Int Int) Unit!37874)

(assert (=> b!2151807 (= lt!801227 (lemmaStackPreservesForEqualRes!36 (t!197347 s!7978) res1!7 res2!7))))

(declare-fun lt!801228 () Unit!37874)

(declare-fun lemmaInv!794 (StackFrame!286) Unit!37874)

(assert (=> b!2151807 (= lt!801228 (lemmaInv!794 (h!30116 s!7978)))))

(declare-fun setIsEmpty!17287 () Bool)

(assert (=> setIsEmpty!17287 setRes!17287))

(assert (= (and start!208732 res!927835) b!2151802))

(assert (= (and b!2151802 res!927836) b!2151807))

(assert (= (and b!2151807 (not res!927837)) b!2151803))

(assert (= (and b!2151801 condSetEmpty!17287) setIsEmpty!17287))

(assert (= (and b!2151801 (not condSetEmpty!17287)) setNonEmpty!17287))

(assert (= setNonEmpty!17287 b!2151805))

(assert (= b!2151801 b!2151804))

(assert (= b!2151806 b!2151801))

(assert (= (and start!208732 (is-Cons!24715 s!7978)) b!2151806))

(declare-fun m!2594294 () Bool)

(assert (=> b!2151804 m!2594294))

(declare-fun m!2594296 () Bool)

(assert (=> b!2151807 m!2594296))

(assert (=> b!2151807 m!2594296))

(declare-fun m!2594298 () Bool)

(assert (=> b!2151807 m!2594298))

(declare-fun m!2594300 () Bool)

(assert (=> b!2151807 m!2594300))

(declare-fun m!2594302 () Bool)

(assert (=> b!2151806 m!2594302))

(declare-fun m!2594304 () Bool)

(assert (=> setNonEmpty!17287 m!2594304))

(declare-fun m!2594306 () Bool)

(assert (=> b!2151801 m!2594306))

(declare-fun m!2594308 () Bool)

(assert (=> start!208732 m!2594308))

(push 1)

(assert (not b!2151801))

(assert (not b!2151804))

(assert (not start!208732))

(assert (not b!2151807))

(assert (not b!2151805))

(assert (not setNonEmpty!17287))

(assert (not b!2151806))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!645802 () Bool)

(declare-fun c!341317 () Bool)

(assert (=> d!645802 (= c!341317 (is-Node!8012 (c!341312 (totalInput!3277 (h!30116 s!7978)))))))

(declare-fun e!1376203 () Bool)

(assert (=> d!645802 (= (inv!32586 (c!341312 (totalInput!3277 (h!30116 s!7978)))) e!1376203)))

(declare-fun b!2151839 () Bool)

(declare-fun inv!32593 (Conc!8012) Bool)

(assert (=> b!2151839 (= e!1376203 (inv!32593 (c!341312 (totalInput!3277 (h!30116 s!7978)))))))

(declare-fun b!2151840 () Bool)

(declare-fun e!1376204 () Bool)

(assert (=> b!2151840 (= e!1376203 e!1376204)))

(declare-fun res!927851 () Bool)

(assert (=> b!2151840 (= res!927851 (not (is-Leaf!11718 (c!341312 (totalInput!3277 (h!30116 s!7978))))))))

(assert (=> b!2151840 (=> res!927851 e!1376204)))

(declare-fun b!2151841 () Bool)

(declare-fun inv!32594 (Conc!8012) Bool)

(assert (=> b!2151841 (= e!1376204 (inv!32594 (c!341312 (totalInput!3277 (h!30116 s!7978)))))))

(assert (= (and d!645802 c!341317) b!2151839))

(assert (= (and d!645802 (not c!341317)) b!2151840))

(assert (= (and b!2151840 (not res!927851)) b!2151841))

(declare-fun m!2594326 () Bool)

(assert (=> b!2151839 m!2594326))

(declare-fun m!2594328 () Bool)

(assert (=> b!2151841 m!2594328))

(assert (=> b!2151804 d!645802))

(declare-fun d!645804 () Bool)

(declare-fun lambda!81009 () Int)

(declare-fun forall!5050 (List!24798 Int) Bool)

(assert (=> d!645804 (= (inv!32587 setElem!17287) (forall!5050 (exprs!1946 setElem!17287) lambda!81009))))

(declare-fun bs!445649 () Bool)

(assert (= bs!445649 d!645804))

(declare-fun m!2594330 () Bool)

(assert (=> bs!445649 m!2594330))

(assert (=> setNonEmpty!17287 d!645804))

(declare-fun b!2151854 () Bool)

(declare-fun res!927865 () Bool)

(declare-fun e!1376210 () Bool)

(assert (=> b!2151854 (=> (not res!927865) (not e!1376210))))

(declare-fun size!19341 (BalanceConc!15786) Int)

(assert (=> b!2151854 (= res!927865 (<= (from!2788 (h!30116 s!7978)) (size!19341 (totalInput!3277 (h!30116 s!7978)))))))

(declare-fun b!2151855 () Bool)

(declare-fun e!1376209 () Bool)

(assert (=> b!2151855 (= e!1376209 (= (lastNullablePos!475 (h!30116 s!7978)) (- (from!2788 (h!30116 s!7978)) 1)))))

(declare-fun b!2151856 () Bool)

(declare-fun furthestNullablePosition!111 ((Set Context!2892) Int BalanceConc!15786 Int Int) Int)

(assert (=> b!2151856 (= e!1376210 (= (res!927838 (h!30116 s!7978)) (furthestNullablePosition!111 (z!5945 (h!30116 s!7978)) (from!2788 (h!30116 s!7978)) (totalInput!3277 (h!30116 s!7978)) (size!19341 (totalInput!3277 (h!30116 s!7978))) (lastNullablePos!475 (h!30116 s!7978)))))))

(declare-fun d!645806 () Bool)

(declare-fun res!927869 () Bool)

(assert (=> d!645806 (=> (not res!927869) (not e!1376210))))

(assert (=> d!645806 (= res!927869 (>= (from!2788 (h!30116 s!7978)) 0))))

(assert (=> d!645806 (= (inv!32588 (h!30116 s!7978)) e!1376210)))

(declare-fun b!2151857 () Bool)

(declare-fun res!927866 () Bool)

(assert (=> b!2151857 (=> (not res!927866) (not e!1376210))))

(assert (=> b!2151857 (= res!927866 e!1376209)))

(declare-fun res!927864 () Bool)

(assert (=> b!2151857 (=> res!927864 e!1376209)))

(declare-fun nullableZipper!202 ((Set Context!2892)) Bool)

(assert (=> b!2151857 (= res!927864 (not (nullableZipper!202 (z!5945 (h!30116 s!7978)))))))

(declare-fun b!2151858 () Bool)

(declare-fun res!927868 () Bool)

(assert (=> b!2151858 (=> (not res!927868) (not e!1376210))))

(assert (=> b!2151858 (= res!927868 (and (>= (lastNullablePos!475 (h!30116 s!7978)) (- 1)) (< (lastNullablePos!475 (h!30116 s!7978)) (from!2788 (h!30116 s!7978)))))))

(declare-fun b!2151859 () Bool)

(declare-fun res!927867 () Bool)

(assert (=> b!2151859 (=> (not res!927867) (not e!1376210))))

(assert (=> b!2151859 (= res!927867 (= (size!19341 (totalInput!3277 (h!30116 s!7978))) (size!19341 (totalInput!3277 (h!30116 s!7978)))))))

(assert (= (and d!645806 res!927869) b!2151854))

(assert (= (and b!2151854 res!927865) b!2151859))

(assert (= (and b!2151859 res!927867) b!2151858))

(assert (= (and b!2151858 res!927868) b!2151857))

(assert (= (and b!2151857 (not res!927864)) b!2151855))

(assert (= (and b!2151857 res!927866) b!2151856))

(declare-fun m!2594332 () Bool)

(assert (=> b!2151854 m!2594332))

(assert (=> b!2151856 m!2594332))

(assert (=> b!2151856 m!2594332))

(declare-fun m!2594334 () Bool)

(assert (=> b!2151856 m!2594334))

(declare-fun m!2594336 () Bool)

(assert (=> b!2151857 m!2594336))

(assert (=> b!2151859 m!2594332))

(assert (=> b!2151806 d!645806))

(declare-fun d!645808 () Bool)

(declare-fun res!927874 () Bool)

(declare-fun e!1376215 () Bool)

(assert (=> d!645808 (=> res!927874 e!1376215)))

(assert (=> d!645808 (= res!927874 (is-Nil!24715 s!7978))))

(assert (=> d!645808 (= (forall!5048 s!7978 lambda!80997) e!1376215)))

(declare-fun b!2151864 () Bool)

(declare-fun e!1376216 () Bool)

(assert (=> b!2151864 (= e!1376215 e!1376216)))

(declare-fun res!927875 () Bool)

(assert (=> b!2151864 (=> (not res!927875) (not e!1376216))))

(declare-fun dynLambda!11397 (Int StackFrame!286) Bool)

(assert (=> b!2151864 (= res!927875 (dynLambda!11397 lambda!80997 (h!30116 s!7978)))))

(declare-fun b!2151865 () Bool)

(assert (=> b!2151865 (= e!1376216 (forall!5048 (t!197347 s!7978) lambda!80997))))

(assert (= (and d!645808 (not res!927874)) b!2151864))

(assert (= (and b!2151864 res!927875) b!2151865))

(declare-fun b_lambda!70833 () Bool)

(assert (=> (not b_lambda!70833) (not b!2151864)))

(declare-fun m!2594338 () Bool)

(assert (=> b!2151864 m!2594338))

(declare-fun m!2594340 () Bool)

(assert (=> b!2151865 m!2594340))

(assert (=> start!208732 d!645808))

(declare-fun d!645810 () Bool)

(declare-fun isBalanced!2483 (Conc!8012) Bool)

(assert (=> d!645810 (= (inv!32585 (totalInput!3277 (h!30116 s!7978))) (isBalanced!2483 (c!341312 (totalInput!3277 (h!30116 s!7978)))))))

(declare-fun bs!445650 () Bool)

(assert (= bs!445650 d!645810))

(declare-fun m!2594342 () Bool)

(assert (=> bs!445650 m!2594342))

(assert (=> b!2151801 d!645810))

(declare-fun d!645812 () Bool)

(declare-fun res!927876 () Bool)

(declare-fun e!1376217 () Bool)

(assert (=> d!645812 (=> res!927876 e!1376217)))

(assert (=> d!645812 (= res!927876 (is-Nil!24715 (t!197347 s!7978)))))

(assert (=> d!645812 (= (forall!5048 (t!197347 s!7978) lambda!80998) e!1376217)))

(declare-fun b!2151866 () Bool)

(declare-fun e!1376218 () Bool)

(assert (=> b!2151866 (= e!1376217 e!1376218)))

(declare-fun res!927877 () Bool)

(assert (=> b!2151866 (=> (not res!927877) (not e!1376218))))

(assert (=> b!2151866 (= res!927877 (dynLambda!11397 lambda!80998 (h!30116 (t!197347 s!7978))))))

(declare-fun b!2151867 () Bool)

(assert (=> b!2151867 (= e!1376218 (forall!5048 (t!197347 (t!197347 s!7978)) lambda!80998))))

(assert (= (and d!645812 (not res!927876)) b!2151866))

(assert (= (and b!2151866 res!927877) b!2151867))

(declare-fun b_lambda!70835 () Bool)

(assert (=> (not b_lambda!70835) (not b!2151866)))

(declare-fun m!2594344 () Bool)

(assert (=> b!2151866 m!2594344))

(declare-fun m!2594346 () Bool)

(assert (=> b!2151867 m!2594346))

(assert (=> b!2151807 d!645812))

(declare-fun bs!445651 () Bool)

(declare-fun d!645814 () Bool)

(assert (= bs!445651 (and d!645814 start!208732)))

(declare-fun lambda!81014 () Int)

(assert (=> bs!445651 (= lambda!81014 lambda!80997)))

(declare-fun bs!445652 () Bool)

(assert (= bs!445652 (and d!645814 b!2151807)))

(assert (=> bs!445652 (= (= res1!7 res2!7) (= lambda!81014 lambda!80998))))

(assert (=> d!645814 true))

(declare-fun lambda!81015 () Int)

(assert (=> bs!445651 (= (= res2!7 res1!7) (= lambda!81015 lambda!80997))))

(assert (=> bs!445652 (= lambda!81015 lambda!80998)))

(declare-fun bs!445653 () Bool)

(assert (= bs!445653 d!645814))

(assert (=> bs!445653 (= (= res2!7 res1!7) (= lambda!81015 lambda!81014))))

(assert (=> d!645814 true))

(assert (=> d!645814 (forall!5048 (t!197347 s!7978) lambda!81015)))

(declare-fun lt!801237 () Unit!37874)

(declare-fun choose!12706 (List!24799 Int Int) Unit!37874)

(assert (=> d!645814 (= lt!801237 (choose!12706 (t!197347 s!7978) res1!7 res2!7))))

(assert (=> d!645814 (forall!5048 (t!197347 s!7978) lambda!81014)))

(assert (=> d!645814 (= (lemmaStackPreservesForEqualRes!36 (t!197347 s!7978) res1!7 res2!7) lt!801237)))

(declare-fun m!2594348 () Bool)

(assert (=> bs!445653 m!2594348))

(declare-fun m!2594350 () Bool)

(assert (=> bs!445653 m!2594350))

(declare-fun m!2594352 () Bool)

(assert (=> bs!445653 m!2594352))

(assert (=> b!2151807 d!645814))

(declare-fun b!2151880 () Bool)

(declare-fun e!1376224 () Bool)

(assert (=> b!2151880 (= e!1376224 (= (lastNullablePos!475 (h!30116 s!7978)) (- (from!2788 (h!30116 s!7978)) 1)))))

(declare-fun b!2151881 () Bool)

(declare-fun res!927894 () Bool)

(declare-fun e!1376223 () Bool)

(assert (=> b!2151881 (=> (not res!927894) (not e!1376223))))

(assert (=> b!2151881 (= res!927894 e!1376224)))

(declare-fun res!927895 () Bool)

(assert (=> b!2151881 (=> res!927895 e!1376224)))

(assert (=> b!2151881 (= res!927895 (not (nullableZipper!202 (z!5945 (h!30116 s!7978)))))))

(declare-fun b!2151882 () Bool)

(assert (=> b!2151882 (= e!1376223 (= (res!927838 (h!30116 s!7978)) (furthestNullablePosition!111 (z!5945 (h!30116 s!7978)) (from!2788 (h!30116 s!7978)) (totalInput!3277 (h!30116 s!7978)) (size!19341 (totalInput!3277 (h!30116 s!7978))) (lastNullablePos!475 (h!30116 s!7978)))))))

(declare-fun b!2151883 () Bool)

(declare-fun res!927891 () Bool)

(assert (=> b!2151883 (=> (not res!927891) (not e!1376223))))

(assert (=> b!2151883 (= res!927891 (and (>= (lastNullablePos!475 (h!30116 s!7978)) (- 1)) (< (lastNullablePos!475 (h!30116 s!7978)) (from!2788 (h!30116 s!7978)))))))

(declare-fun d!645816 () Bool)

(assert (=> d!645816 e!1376223))

(declare-fun res!927893 () Bool)

(assert (=> d!645816 (=> (not res!927893) (not e!1376223))))

(assert (=> d!645816 (= res!927893 (>= (from!2788 (h!30116 s!7978)) 0))))

(declare-fun Unit!37878 () Unit!37874)

(assert (=> d!645816 (= (lemmaInv!794 (h!30116 s!7978)) Unit!37878)))

(declare-fun b!2151884 () Bool)

(declare-fun res!927890 () Bool)

(assert (=> b!2151884 (=> (not res!927890) (not e!1376223))))

(assert (=> b!2151884 (= res!927890 (<= (from!2788 (h!30116 s!7978)) (size!19341 (totalInput!3277 (h!30116 s!7978)))))))

(declare-fun b!2151885 () Bool)

(declare-fun res!927892 () Bool)

(assert (=> b!2151885 (=> (not res!927892) (not e!1376223))))

(assert (=> b!2151885 (= res!927892 (= (size!19341 (totalInput!3277 (h!30116 s!7978))) (size!19341 (totalInput!3277 (h!30116 s!7978)))))))

(assert (= (and d!645816 res!927893) b!2151884))

(assert (= (and b!2151884 res!927890) b!2151885))

(assert (= (and b!2151885 res!927892) b!2151883))

(assert (= (and b!2151883 res!927891) b!2151881))

(assert (= (and b!2151881 (not res!927895)) b!2151880))

(assert (= (and b!2151881 res!927894) b!2151882))

(assert (=> b!2151881 m!2594336))

(assert (=> b!2151882 m!2594332))

(assert (=> b!2151882 m!2594332))

(assert (=> b!2151882 m!2594334))

(assert (=> b!2151884 m!2594332))

(assert (=> b!2151885 m!2594332))

(assert (=> b!2151807 d!645816))

(declare-fun tp!668918 () Bool)

(declare-fun tp!668917 () Bool)

(declare-fun b!2151903 () Bool)

(declare-fun e!1376236 () Bool)

(assert (=> b!2151903 (= e!1376236 (and (inv!32586 (left!18991 (c!341312 (totalInput!3277 (h!30116 s!7978))))) tp!668918 (inv!32586 (right!19321 (c!341312 (totalInput!3277 (h!30116 s!7978))))) tp!668917))))

(declare-fun b!2151905 () Bool)

(declare-fun e!1376235 () Bool)

(declare-fun tp!668916 () Bool)

(assert (=> b!2151905 (= e!1376235 tp!668916)))

(declare-fun b!2151904 () Bool)

(declare-fun inv!32595 (IArray!16029) Bool)

(assert (=> b!2151904 (= e!1376236 (and (inv!32595 (xs!10954 (c!341312 (totalInput!3277 (h!30116 s!7978))))) e!1376235))))

(assert (=> b!2151804 (= tp!668894 (and (inv!32586 (c!341312 (totalInput!3277 (h!30116 s!7978)))) e!1376236))))

(assert (= (and b!2151804 (is-Node!8012 (c!341312 (totalInput!3277 (h!30116 s!7978))))) b!2151903))

(assert (= b!2151904 b!2151905))

(assert (= (and b!2151804 (is-Leaf!11718 (c!341312 (totalInput!3277 (h!30116 s!7978))))) b!2151904))

(declare-fun m!2594360 () Bool)

(assert (=> b!2151903 m!2594360))

(declare-fun m!2594362 () Bool)

(assert (=> b!2151903 m!2594362))

(declare-fun m!2594364 () Bool)

(assert (=> b!2151904 m!2594364))

(assert (=> b!2151804 m!2594294))

(declare-fun b!2151914 () Bool)

(declare-fun e!1376243 () Bool)

(declare-fun tp!668923 () Bool)

(declare-fun tp!668924 () Bool)

(assert (=> b!2151914 (= e!1376243 (and tp!668923 tp!668924))))

(assert (=> b!2151805 (= tp!668897 e!1376243)))

(assert (= (and b!2151805 (is-Cons!24714 (exprs!1946 setElem!17287))) b!2151914))

(declare-fun condSetEmpty!17293 () Bool)

(assert (=> setNonEmpty!17287 (= condSetEmpty!17293 (= setRest!17287 (as set.empty (Set Context!2892))))))

(declare-fun setRes!17293 () Bool)

(assert (=> setNonEmpty!17287 (= tp!668896 setRes!17293)))

(declare-fun setIsEmpty!17293 () Bool)

(assert (=> setIsEmpty!17293 setRes!17293))

(declare-fun setNonEmpty!17293 () Bool)

(declare-fun setElem!17293 () Context!2892)

(declare-fun e!1376248 () Bool)

(declare-fun tp!668929 () Bool)

(assert (=> setNonEmpty!17293 (= setRes!17293 (and tp!668929 (inv!32587 setElem!17293) e!1376248))))

(declare-fun setRest!17293 () (Set Context!2892))

(assert (=> setNonEmpty!17293 (= setRest!17287 (set.union (set.insert setElem!17293 (as set.empty (Set Context!2892))) setRest!17293))))

(declare-fun b!2151921 () Bool)

(declare-fun tp!668930 () Bool)

(assert (=> b!2151921 (= e!1376248 tp!668930)))

(assert (= (and setNonEmpty!17287 condSetEmpty!17293) setIsEmpty!17293))

(assert (= (and setNonEmpty!17287 (not condSetEmpty!17293)) setNonEmpty!17293))

(assert (= setNonEmpty!17293 b!2151921))

(declare-fun m!2594366 () Bool)

(assert (=> setNonEmpty!17293 m!2594366))

(declare-fun tp!668940 () Bool)

(declare-fun b!2151934 () Bool)

(declare-fun e!1376262 () Bool)

(declare-fun e!1376261 () Bool)

(assert (=> b!2151934 (= e!1376261 (and (inv!32588 (h!30116 (t!197347 s!7978))) e!1376262 tp!668940))))

(declare-fun tp!668939 () Bool)

(declare-fun setElem!17296 () Context!2892)

(declare-fun setNonEmpty!17296 () Bool)

(declare-fun setRes!17296 () Bool)

(declare-fun e!1376259 () Bool)

(assert (=> setNonEmpty!17296 (= setRes!17296 (and tp!668939 (inv!32587 setElem!17296) e!1376259))))

(declare-fun setRest!17296 () (Set Context!2892))

(assert (=> setNonEmpty!17296 (= (z!5945 (h!30116 (t!197347 s!7978))) (set.union (set.insert setElem!17296 (as set.empty (Set Context!2892))) setRest!17296))))

(declare-fun b!2151936 () Bool)

(declare-fun e!1376260 () Bool)

(assert (=> b!2151936 (= e!1376262 (and setRes!17296 (inv!32585 (totalInput!3277 (h!30116 (t!197347 s!7978)))) e!1376260))))

(declare-fun condSetEmpty!17296 () Bool)

(assert (=> b!2151936 (= condSetEmpty!17296 (= (z!5945 (h!30116 (t!197347 s!7978))) (as set.empty (Set Context!2892))))))

(declare-fun b!2151937 () Bool)

(declare-fun tp!668941 () Bool)

(assert (=> b!2151937 (= e!1376259 tp!668941)))

(declare-fun setIsEmpty!17296 () Bool)

(assert (=> setIsEmpty!17296 setRes!17296))

(declare-fun b!2151935 () Bool)

(declare-fun tp!668942 () Bool)

(assert (=> b!2151935 (= e!1376260 (and (inv!32586 (c!341312 (totalInput!3277 (h!30116 (t!197347 s!7978))))) tp!668942))))

(assert (=> b!2151806 (= tp!668895 e!1376261)))

(assert (= (and b!2151936 condSetEmpty!17296) setIsEmpty!17296))

(assert (= (and b!2151936 (not condSetEmpty!17296)) setNonEmpty!17296))

(assert (= setNonEmpty!17296 b!2151937))

(assert (= b!2151936 b!2151935))

(assert (= b!2151934 b!2151936))

(assert (= (and b!2151806 (is-Cons!24715 (t!197347 s!7978))) b!2151934))

(declare-fun m!2594376 () Bool)

(assert (=> b!2151934 m!2594376))

(declare-fun m!2594378 () Bool)

(assert (=> setNonEmpty!17296 m!2594378))

(declare-fun m!2594380 () Bool)

(assert (=> b!2151936 m!2594380))

(declare-fun m!2594382 () Bool)

(assert (=> b!2151935 m!2594382))

(declare-fun b_lambda!70841 () Bool)

(assert (= b_lambda!70835 (or b!2151807 b_lambda!70841)))

(declare-fun bs!445655 () Bool)

(declare-fun d!645826 () Bool)

(assert (= bs!445655 (and d!645826 b!2151807)))

(assert (=> bs!445655 (= (dynLambda!11397 lambda!80998 (h!30116 (t!197347 s!7978))) (= (res!927838 (h!30116 (t!197347 s!7978))) res2!7))))

(assert (=> b!2151866 d!645826))

(declare-fun b_lambda!70843 () Bool)

(assert (= b_lambda!70833 (or start!208732 b_lambda!70843)))

(declare-fun bs!445656 () Bool)

(declare-fun d!645828 () Bool)

(assert (= bs!445656 (and d!645828 start!208732)))

(assert (=> bs!445656 (= (dynLambda!11397 lambda!80997 (h!30116 s!7978)) (= (res!927838 (h!30116 s!7978)) res1!7))))

(assert (=> b!2151864 d!645828))

(push 1)

(assert (not b!2151865))

(assert (not b!2151859))

(assert (not b!2151882))

(assert (not b!2151934))

(assert (not b_lambda!70843))

(assert (not b!2151884))

(assert (not b!2151936))

(assert (not b!2151804))

(assert (not d!645814))

(assert (not b!2151937))

(assert (not b!2151905))

(assert (not d!645804))

(assert (not b!2151914))

(assert (not b!2151881))

(assert (not b!2151854))

(assert (not setNonEmpty!17296))

(assert (not b!2151885))

(assert (not b!2151841))

(assert (not b!2151903))

(assert (not b!2151839))

(assert (not b!2151921))

(assert (not b!2151867))

(assert (not setNonEmpty!17293))

(assert (not b!2151935))

(assert (not b!2151857))

(assert (not b!2151904))

(assert (not d!645810))

(assert (not b_lambda!70841))

(assert (not b!2151856))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

