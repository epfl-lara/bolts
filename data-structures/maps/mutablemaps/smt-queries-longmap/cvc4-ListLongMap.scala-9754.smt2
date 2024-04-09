; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115596 () Bool)

(assert start!115596)

(declare-fun b!1366843 () Bool)

(declare-fun res!910521 () Bool)

(declare-fun e!774676 () Bool)

(assert (=> b!1366843 (=> (not res!910521) (not e!774676))))

(declare-datatypes ((List!32068 0))(
  ( (Nil!32065) (Cons!32064 (h!33273 (_ BitVec 64)) (t!46769 List!32068)) )
))
(declare-fun newAcc!98 () List!32068)

(declare-fun contains!9606 (List!32068 (_ BitVec 64)) Bool)

(assert (=> b!1366843 (= res!910521 (not (contains!9606 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366844 () Bool)

(declare-fun res!910514 () Bool)

(assert (=> b!1366844 (=> (not res!910514) (not e!774676))))

(assert (=> b!1366844 (= res!910514 (not (contains!9606 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366845 () Bool)

(declare-fun res!910524 () Bool)

(declare-fun e!774675 () Bool)

(assert (=> b!1366845 (=> (not res!910524) (not e!774675))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!92795 0))(
  ( (array!92796 (arr!44820 (Array (_ BitVec 32) (_ BitVec 64))) (size!45371 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92795)

(assert (=> b!1366845 (= res!910524 (bvslt from!3239 (size!45371 a!3861)))))

(declare-fun b!1366846 () Bool)

(declare-fun res!910517 () Bool)

(assert (=> b!1366846 (=> (not res!910517) (not e!774675))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1366846 (= res!910517 (validKeyInArray!0 (select (arr!44820 a!3861) from!3239)))))

(declare-fun res!910518 () Bool)

(assert (=> start!115596 (=> (not res!910518) (not e!774676))))

(assert (=> start!115596 (= res!910518 (and (bvslt (size!45371 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45371 a!3861))))))

(assert (=> start!115596 e!774676))

(declare-fun array_inv!33765 (array!92795) Bool)

(assert (=> start!115596 (array_inv!33765 a!3861)))

(assert (=> start!115596 true))

(declare-fun b!1366847 () Bool)

(declare-fun noDuplicate!2485 (List!32068) Bool)

(assert (=> b!1366847 (= e!774675 (not (noDuplicate!2485 newAcc!98)))))

(declare-datatypes ((Unit!45075 0))(
  ( (Unit!45076) )
))
(declare-fun lt!601683 () Unit!45075)

(declare-fun lt!601681 () List!32068)

(declare-fun lt!601685 () List!32068)

(declare-fun noDuplicateSubseq!184 (List!32068 List!32068) Unit!45075)

(assert (=> b!1366847 (= lt!601683 (noDuplicateSubseq!184 lt!601681 lt!601685))))

(declare-fun arrayNoDuplicates!0 (array!92795 (_ BitVec 32) List!32068) Bool)

(assert (=> b!1366847 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601681)))

(declare-fun lt!601682 () Unit!45075)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92795 List!32068 List!32068 (_ BitVec 32)) Unit!45075)

(assert (=> b!1366847 (= lt!601682 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!601685 lt!601681 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> b!1366847 (= lt!601681 (Cons!32064 (select (arr!44820 a!3861) from!3239) newAcc!98))))

(declare-fun acc!866 () List!32068)

(assert (=> b!1366847 (= lt!601685 (Cons!32064 (select (arr!44820 a!3861) from!3239) acc!866))))

(declare-fun b!1366848 () Bool)

(declare-fun res!910515 () Bool)

(assert (=> b!1366848 (=> (not res!910515) (not e!774676))))

(assert (=> b!1366848 (= res!910515 (not (contains!9606 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366849 () Bool)

(declare-fun res!910520 () Bool)

(assert (=> b!1366849 (=> (not res!910520) (not e!774675))))

(assert (=> b!1366849 (= res!910520 (not (contains!9606 acc!866 (select (arr!44820 a!3861) from!3239))))))

(declare-fun b!1366850 () Bool)

(declare-fun res!910519 () Bool)

(assert (=> b!1366850 (=> (not res!910519) (not e!774676))))

(assert (=> b!1366850 (= res!910519 (noDuplicate!2485 acc!866))))

(declare-fun b!1366851 () Bool)

(declare-fun res!910523 () Bool)

(assert (=> b!1366851 (=> (not res!910523) (not e!774676))))

(declare-fun subseq!997 (List!32068 List!32068) Bool)

(assert (=> b!1366851 (= res!910523 (subseq!997 newAcc!98 acc!866))))

(declare-fun b!1366852 () Bool)

(assert (=> b!1366852 (= e!774676 e!774675)))

(declare-fun res!910516 () Bool)

(assert (=> b!1366852 (=> (not res!910516) (not e!774675))))

(assert (=> b!1366852 (= res!910516 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!601684 () Unit!45075)

(assert (=> b!1366852 (= lt!601684 (noDuplicateSubseq!184 newAcc!98 acc!866))))

(declare-fun b!1366853 () Bool)

(declare-fun res!910522 () Bool)

(assert (=> b!1366853 (=> (not res!910522) (not e!774676))))

(assert (=> b!1366853 (= res!910522 (not (contains!9606 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115596 res!910518) b!1366850))

(assert (= (and b!1366850 res!910519) b!1366853))

(assert (= (and b!1366853 res!910522) b!1366848))

(assert (= (and b!1366848 res!910515) b!1366843))

(assert (= (and b!1366843 res!910521) b!1366844))

(assert (= (and b!1366844 res!910514) b!1366851))

(assert (= (and b!1366851 res!910523) b!1366852))

(assert (= (and b!1366852 res!910516) b!1366845))

(assert (= (and b!1366845 res!910524) b!1366846))

(assert (= (and b!1366846 res!910517) b!1366849))

(assert (= (and b!1366849 res!910520) b!1366847))

(declare-fun m!1251149 () Bool)

(assert (=> b!1366849 m!1251149))

(assert (=> b!1366849 m!1251149))

(declare-fun m!1251151 () Bool)

(assert (=> b!1366849 m!1251151))

(declare-fun m!1251153 () Bool)

(assert (=> b!1366843 m!1251153))

(declare-fun m!1251155 () Bool)

(assert (=> b!1366848 m!1251155))

(declare-fun m!1251157 () Bool)

(assert (=> b!1366844 m!1251157))

(declare-fun m!1251159 () Bool)

(assert (=> start!115596 m!1251159))

(declare-fun m!1251161 () Bool)

(assert (=> b!1366850 m!1251161))

(declare-fun m!1251163 () Bool)

(assert (=> b!1366851 m!1251163))

(declare-fun m!1251165 () Bool)

(assert (=> b!1366847 m!1251165))

(declare-fun m!1251167 () Bool)

(assert (=> b!1366847 m!1251167))

(declare-fun m!1251169 () Bool)

(assert (=> b!1366847 m!1251169))

(assert (=> b!1366847 m!1251149))

(declare-fun m!1251171 () Bool)

(assert (=> b!1366847 m!1251171))

(declare-fun m!1251173 () Bool)

(assert (=> b!1366852 m!1251173))

(declare-fun m!1251175 () Bool)

(assert (=> b!1366852 m!1251175))

(assert (=> b!1366846 m!1251149))

(assert (=> b!1366846 m!1251149))

(declare-fun m!1251177 () Bool)

(assert (=> b!1366846 m!1251177))

(declare-fun m!1251179 () Bool)

(assert (=> b!1366853 m!1251179))

(push 1)

(assert (not b!1366850))

(assert (not b!1366848))

(assert (not b!1366852))

(assert (not b!1366847))

(assert (not start!115596))

(assert (not b!1366843))

(assert (not b!1366844))

(assert (not b!1366846))

(assert (not b!1366851))

(assert (not b!1366853))

(assert (not b!1366849))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146641 () Bool)

(declare-fun res!910552 () Bool)

(declare-fun e!774708 () Bool)

(assert (=> d!146641 (=> res!910552 e!774708)))

(assert (=> d!146641 (= res!910552 (bvsge from!3239 (size!45371 a!3861)))))

(assert (=> d!146641 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!774708)))

(declare-fun b!1366889 () Bool)

(declare-fun e!774709 () Bool)

(declare-fun e!774707 () Bool)

(assert (=> b!1366889 (= e!774709 e!774707)))

(declare-fun c!127612 () Bool)

(assert (=> b!1366889 (= c!127612 (validKeyInArray!0 (select (arr!44820 a!3861) from!3239)))))

(declare-fun b!1366890 () Bool)

(declare-fun call!65473 () Bool)

(assert (=> b!1366890 (= e!774707 call!65473)))

(declare-fun b!1366891 () Bool)

(assert (=> b!1366891 (= e!774708 e!774709)))

(declare-fun res!910550 () Bool)

(assert (=> b!1366891 (=> (not res!910550) (not e!774709))))

(declare-fun e!774710 () Bool)

(assert (=> b!1366891 (= res!910550 (not e!774710))))

(declare-fun res!910551 () Bool)

(assert (=> b!1366891 (=> (not res!910551) (not e!774710))))

(assert (=> b!1366891 (= res!910551 (validKeyInArray!0 (select (arr!44820 a!3861) from!3239)))))

(declare-fun b!1366892 () Bool)

(assert (=> b!1366892 (= e!774710 (contains!9606 acc!866 (select (arr!44820 a!3861) from!3239)))))

(declare-fun bm!65470 () Bool)

(assert (=> bm!65470 (= call!65473 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127612 (Cons!32064 (select (arr!44820 a!3861) from!3239) acc!866) acc!866)))))

(declare-fun b!1366893 () Bool)

(assert (=> b!1366893 (= e!774707 call!65473)))

(assert (= (and d!146641 (not res!910552)) b!1366891))

(assert (= (and b!1366891 res!910551) b!1366892))

(assert (= (and b!1366891 res!910550) b!1366889))

(assert (= (and b!1366889 c!127612) b!1366890))

(assert (= (and b!1366889 (not c!127612)) b!1366893))

(assert (= (or b!1366890 b!1366893) bm!65470))

(assert (=> b!1366889 m!1251149))

(assert (=> b!1366889 m!1251149))

(assert (=> b!1366889 m!1251177))

(assert (=> b!1366891 m!1251149))

(assert (=> b!1366891 m!1251149))

(assert (=> b!1366891 m!1251177))

(assert (=> b!1366892 m!1251149))

(assert (=> b!1366892 m!1251149))

(assert (=> b!1366892 m!1251151))

(assert (=> bm!65470 m!1251149))

(declare-fun m!1251199 () Bool)

(assert (=> bm!65470 m!1251199))

(assert (=> b!1366852 d!146641))

(declare-fun d!146655 () Bool)

(assert (=> d!146655 (noDuplicate!2485 newAcc!98)))

(declare-fun lt!601696 () Unit!45075)

(declare-fun choose!2002 (List!32068 List!32068) Unit!45075)

(assert (=> d!146655 (= lt!601696 (choose!2002 newAcc!98 acc!866))))

(declare-fun e!774724 () Bool)

(assert (=> d!146655 e!774724))

(declare-fun res!910566 () Bool)

(assert (=> d!146655 (=> (not res!910566) (not e!774724))))

(assert (=> d!146655 (= res!910566 (subseq!997 newAcc!98 acc!866))))

(assert (=> d!146655 (= (noDuplicateSubseq!184 newAcc!98 acc!866) lt!601696)))

(declare-fun b!1366907 () Bool)

(assert (=> b!1366907 (= e!774724 (noDuplicate!2485 acc!866))))

(assert (= (and d!146655 res!910566) b!1366907))

(assert (=> d!146655 m!1251165))

(declare-fun m!1251207 () Bool)

(assert (=> d!146655 m!1251207))

(assert (=> d!146655 m!1251163))

(assert (=> b!1366907 m!1251161))

(assert (=> b!1366852 d!146655))

(declare-fun d!146663 () Bool)

(declare-fun res!910580 () Bool)

(declare-fun e!774738 () Bool)

(assert (=> d!146663 (=> res!910580 e!774738)))

(assert (=> d!146663 (= res!910580 (is-Nil!32065 newAcc!98))))

(assert (=> d!146663 (= (noDuplicate!2485 newAcc!98) e!774738)))

(declare-fun b!1366921 () Bool)

(declare-fun e!774739 () Bool)

(assert (=> b!1366921 (= e!774738 e!774739)))

(declare-fun res!910581 () Bool)

(assert (=> b!1366921 (=> (not res!910581) (not e!774739))))

(assert (=> b!1366921 (= res!910581 (not (contains!9606 (t!46769 newAcc!98) (h!33273 newAcc!98))))))

(declare-fun b!1366922 () Bool)

(assert (=> b!1366922 (= e!774739 (noDuplicate!2485 (t!46769 newAcc!98)))))

(assert (= (and d!146663 (not res!910580)) b!1366921))

(assert (= (and b!1366921 res!910581) b!1366922))

(declare-fun m!1251227 () Bool)

(assert (=> b!1366921 m!1251227))

(declare-fun m!1251229 () Bool)

(assert (=> b!1366922 m!1251229))

(assert (=> b!1366847 d!146663))

(declare-fun d!146671 () Bool)

(assert (=> d!146671 (noDuplicate!2485 lt!601681)))

(declare-fun lt!601704 () Unit!45075)

(assert (=> d!146671 (= lt!601704 (choose!2002 lt!601681 lt!601685))))

(declare-fun e!774740 () Bool)

(assert (=> d!146671 e!774740))

(declare-fun res!910582 () Bool)

(assert (=> d!146671 (=> (not res!910582) (not e!774740))))

(assert (=> d!146671 (= res!910582 (subseq!997 lt!601681 lt!601685))))

(assert (=> d!146671 (= (noDuplicateSubseq!184 lt!601681 lt!601685) lt!601704)))

(declare-fun b!1366923 () Bool)

(assert (=> b!1366923 (= e!774740 (noDuplicate!2485 lt!601685))))

(assert (= (and d!146671 res!910582) b!1366923))

(declare-fun m!1251231 () Bool)

(assert (=> d!146671 m!1251231))

(declare-fun m!1251233 () Bool)

(assert (=> d!146671 m!1251233))

(declare-fun m!1251235 () Bool)

(assert (=> d!146671 m!1251235))

(declare-fun m!1251237 () Bool)

(assert (=> b!1366923 m!1251237))

(assert (=> b!1366847 d!146671))

(declare-fun d!146673 () Bool)

(declare-fun res!910585 () Bool)

(declare-fun e!774742 () Bool)

(assert (=> d!146673 (=> res!910585 e!774742)))

(assert (=> d!146673 (= res!910585 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) (size!45371 a!3861)))))

(assert (=> d!146673 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601681) e!774742)))

(declare-fun b!1366924 () Bool)

(declare-fun e!774743 () Bool)

(declare-fun e!774741 () Bool)

(assert (=> b!1366924 (= e!774743 e!774741)))

(declare-fun c!127613 () Bool)

(assert (=> b!1366924 (= c!127613 (validKeyInArray!0 (select (arr!44820 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1366925 () Bool)

(declare-fun call!65474 () Bool)

(assert (=> b!1366925 (= e!774741 call!65474)))

(declare-fun b!1366926 () Bool)

(assert (=> b!1366926 (= e!774742 e!774743)))

(declare-fun res!910583 () Bool)

(assert (=> b!1366926 (=> (not res!910583) (not e!774743))))

(declare-fun e!774744 () Bool)

(assert (=> b!1366926 (= res!910583 (not e!774744))))

(declare-fun res!910584 () Bool)

(assert (=> b!1366926 (=> (not res!910584) (not e!774744))))

(assert (=> b!1366926 (= res!910584 (validKeyInArray!0 (select (arr!44820 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1366927 () Bool)

(assert (=> b!1366927 (= e!774744 (contains!9606 lt!601681 (select (arr!44820 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun bm!65471 () Bool)

(assert (=> bm!65471 (= call!65474 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127613 (Cons!32064 (select (arr!44820 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) lt!601681) lt!601681)))))

(declare-fun b!1366928 () Bool)

(assert (=> b!1366928 (= e!774741 call!65474)))

(assert (= (and d!146673 (not res!910585)) b!1366926))

(assert (= (and b!1366926 res!910584) b!1366927))

(assert (= (and b!1366926 res!910583) b!1366924))

(assert (= (and b!1366924 c!127613) b!1366925))

(assert (= (and b!1366924 (not c!127613)) b!1366928))

(assert (= (or b!1366925 b!1366928) bm!65471))

(declare-fun m!1251239 () Bool)

(assert (=> b!1366924 m!1251239))

(assert (=> b!1366924 m!1251239))

(declare-fun m!1251241 () Bool)

(assert (=> b!1366924 m!1251241))

(assert (=> b!1366926 m!1251239))

(assert (=> b!1366926 m!1251239))

(assert (=> b!1366926 m!1251241))

(assert (=> b!1366927 m!1251239))

(assert (=> b!1366927 m!1251239))

(declare-fun m!1251243 () Bool)

(assert (=> b!1366927 m!1251243))

(assert (=> bm!65471 m!1251239))

(declare-fun m!1251245 () Bool)

(assert (=> bm!65471 m!1251245))

(assert (=> b!1366847 d!146673))

(declare-fun d!146675 () Bool)

(assert (=> d!146675 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601681)))

(declare-fun lt!601707 () Unit!45075)

(declare-fun choose!80 (array!92795 List!32068 List!32068 (_ BitVec 32)) Unit!45075)

(assert (=> d!146675 (= lt!601707 (choose!80 a!3861 lt!601685 lt!601681 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> d!146675 (bvslt (size!45371 a!3861) #b01111111111111111111111111111111)))

(assert (=> d!146675 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!601685 lt!601681 (bvadd #b00000000000000000000000000000001 from!3239)) lt!601707)))

(declare-fun bs!39209 () Bool)

(assert (= bs!39209 d!146675))

(assert (=> bs!39209 m!1251171))

(declare-fun m!1251251 () Bool)

(assert (=> bs!39209 m!1251251))

(assert (=> b!1366847 d!146675))

(declare-fun d!146679 () Bool)

(assert (=> d!146679 (= (validKeyInArray!0 (select (arr!44820 a!3861) from!3239)) (and (not (= (select (arr!44820 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44820 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1366846 d!146679))

(declare-fun d!146681 () Bool)

(declare-fun res!910629 () Bool)

(declare-fun e!774794 () Bool)

(assert (=> d!146681 (=> res!910629 e!774794)))

(assert (=> d!146681 (= res!910629 (is-Nil!32065 newAcc!98))))

(assert (=> d!146681 (= (subseq!997 newAcc!98 acc!866) e!774794)))

(declare-fun b!1366984 () Bool)

(declare-fun e!774795 () Bool)

(assert (=> b!1366984 (= e!774795 (subseq!997 (t!46769 newAcc!98) (t!46769 acc!866)))))

(declare-fun b!1366985 () Bool)

(declare-fun e!774793 () Bool)

(assert (=> b!1366985 (= e!774793 (subseq!997 newAcc!98 (t!46769 acc!866)))))

(declare-fun b!1366982 () Bool)

(declare-fun e!774796 () Bool)

(assert (=> b!1366982 (= e!774794 e!774796)))

(declare-fun res!910632 () Bool)

(assert (=> b!1366982 (=> (not res!910632) (not e!774796))))

(assert (=> b!1366982 (= res!910632 (is-Cons!32064 acc!866))))

(declare-fun b!1366983 () Bool)

(assert (=> b!1366983 (= e!774796 e!774793)))

(declare-fun res!910631 () Bool)

(assert (=> b!1366983 (=> res!910631 e!774793)))

(assert (=> b!1366983 (= res!910631 e!774795)))

(declare-fun res!910630 () Bool)

(assert (=> b!1366983 (=> (not res!910630) (not e!774795))))

(assert (=> b!1366983 (= res!910630 (= (h!33273 newAcc!98) (h!33273 acc!866)))))

(assert (= (and d!146681 (not res!910629)) b!1366982))

(assert (= (and b!1366982 res!910632) b!1366983))

(assert (= (and b!1366983 res!910630) b!1366984))

(assert (= (and b!1366983 (not res!910631)) b!1366985))

(declare-fun m!1251287 () Bool)

(assert (=> b!1366984 m!1251287))

(declare-fun m!1251289 () Bool)

(assert (=> b!1366985 m!1251289))

(assert (=> b!1366851 d!146681))

(declare-fun d!146697 () Bool)

(declare-fun res!910635 () Bool)

(declare-fun e!774799 () Bool)

(assert (=> d!146697 (=> res!910635 e!774799)))

(assert (=> d!146697 (= res!910635 (is-Nil!32065 acc!866))))

(assert (=> d!146697 (= (noDuplicate!2485 acc!866) e!774799)))

(declare-fun b!1366988 () Bool)

(declare-fun e!774800 () Bool)

(assert (=> b!1366988 (= e!774799 e!774800)))

(declare-fun res!910636 () Bool)

(assert (=> b!1366988 (=> (not res!910636) (not e!774800))))

(assert (=> b!1366988 (= res!910636 (not (contains!9606 (t!46769 acc!866) (h!33273 acc!866))))))

(declare-fun b!1366989 () Bool)

(assert (=> b!1366989 (= e!774800 (noDuplicate!2485 (t!46769 acc!866)))))

(assert (= (and d!146697 (not res!910635)) b!1366988))

