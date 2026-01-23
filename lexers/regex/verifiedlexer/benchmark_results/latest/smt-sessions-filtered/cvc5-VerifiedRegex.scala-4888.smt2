; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!250802 () Bool)

(assert start!250802)

(declare-fun b!2589944 () Bool)

(assert (=> b!2589944 true))

(declare-fun b!2589940 () Bool)

(declare-fun e!1633721 () Bool)

(declare-fun e!1633720 () Bool)

(assert (=> b!2589940 (= e!1633721 e!1633720)))

(declare-fun res!1088862 () Bool)

(assert (=> b!2589940 (=> res!1088862 e!1633720)))

(declare-fun lt!910540 () Int)

(declare-fun lt!910532 () Int)

(assert (=> b!2589940 (= res!1088862 (<= lt!910540 lt!910532))))

(declare-datatypes ((Unit!43660 0))(
  ( (Unit!43661) )
))
(declare-fun lt!910530 () Unit!43660)

(declare-fun e!1633722 () Unit!43660)

(assert (=> b!2589940 (= lt!910530 e!1633722)))

(declare-fun c!417555 () Bool)

(assert (=> b!2589940 (= c!417555 (< lt!910540 lt!910532))))

(declare-datatypes ((B!1971 0))(
  ( (B!1972 (val!9453 Int)) )
))
(declare-datatypes ((List!29886 0))(
  ( (Nil!29786) (Cons!29786 (h!35206 B!1971) (t!212899 List!29886)) )
))
(declare-fun lt!910528 () List!29886)

(declare-fun size!23099 (List!29886) Int)

(assert (=> b!2589940 (= lt!910540 (size!23099 lt!910528))))

(declare-fun lt!910537 () (Set B!1971))

(declare-fun toList!1737 ((Set B!1971)) List!29886)

(assert (=> b!2589940 (= lt!910528 (toList!1737 lt!910537))))

(declare-fun b!2589941 () Bool)

(declare-fun e!1633725 () Bool)

(declare-fun e!1633723 () Bool)

(assert (=> b!2589941 (= e!1633725 (not e!1633723))))

(declare-fun res!1088855 () Bool)

(assert (=> b!2589941 (=> res!1088855 e!1633723)))

(declare-fun lt!910536 () Int)

(declare-fun l!3230 () List!29886)

(assert (=> b!2589941 (= res!1088855 (>= lt!910536 (size!23099 l!3230)))))

(declare-fun lt!910533 () Int)

(assert (=> b!2589941 (= lt!910536 lt!910533)))

(assert (=> b!2589941 (= lt!910533 (size!23099 (t!212899 l!3230)))))

(declare-fun lt!910529 () (Set B!1971))

(assert (=> b!2589941 (= lt!910536 (size!23099 (toList!1737 lt!910529)))))

(declare-fun content!4127 (List!29886) (Set B!1971))

(assert (=> b!2589941 (= lt!910529 (content!4127 (t!212899 l!3230)))))

(declare-fun lt!910539 () Unit!43660)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!27 (List!29886) Unit!43660)

(assert (=> b!2589941 (= lt!910539 (lemmaNoDuplicateThenContentToListSameSize!27 (t!212899 l!3230)))))

(declare-fun b!2589942 () Bool)

(declare-fun e!1633727 () Bool)

(assert (=> b!2589942 (= e!1633723 e!1633727)))

(declare-fun res!1088858 () Bool)

(assert (=> b!2589942 (=> res!1088858 e!1633727)))

(assert (=> b!2589942 (= res!1088858 (not (= (size!23099 l!3230) lt!910532)))))

(assert (=> b!2589942 (= lt!910532 (+ 1 lt!910533))))

(declare-fun res!1088859 () Bool)

(assert (=> start!250802 (=> (not res!1088859) (not e!1633725))))

(declare-fun noDuplicate!334 (List!29886) Bool)

(assert (=> start!250802 (= res!1088859 (noDuplicate!334 l!3230))))

(assert (=> start!250802 e!1633725))

(declare-fun e!1633724 () Bool)

(assert (=> start!250802 e!1633724))

(declare-fun b!2589943 () Bool)

(declare-fun e!1633726 () Bool)

(declare-fun lt!910531 () (Set B!1971))

(assert (=> b!2589943 (= e!1633726 (set.subset lt!910531 (content!4127 lt!910528)))))

(declare-fun Unit!43662 () Unit!43660)

(assert (=> b!2589944 (= e!1633722 Unit!43662)))

(declare-fun lt!910534 () Unit!43660)

(declare-fun subsetContains!29 (List!29886 List!29886) Unit!43660)

(assert (=> b!2589944 (= lt!910534 (subsetContains!29 lt!910528 l!3230))))

(declare-fun lt!910535 () Unit!43660)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!3 (List!29886 List!29886) Unit!43660)

(assert (=> b!2589944 (= lt!910535 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!3 l!3230 lt!910528))))

(declare-fun lambda!95897 () Int)

(declare-fun exists!887 (List!29886 Int) Bool)

(assert (=> b!2589944 (exists!887 l!3230 lambda!95897)))

(declare-fun lt!910538 () B!1971)

(declare-fun getWitness!515 (List!29886 Int) B!1971)

(assert (=> b!2589944 (= lt!910538 (getWitness!515 l!3230 lambda!95897))))

(assert (=> b!2589944 false))

(declare-fun b!2589945 () Bool)

(declare-fun res!1088856 () Bool)

(assert (=> b!2589945 (=> res!1088856 e!1633723)))

(assert (=> b!2589945 (= res!1088856 (set.member (h!35206 l!3230) lt!910529))))

(declare-fun b!2589946 () Bool)

(declare-fun res!1088854 () Bool)

(assert (=> b!2589946 (=> res!1088854 e!1633723)))

(declare-fun contains!5338 (List!29886 B!1971) Bool)

(assert (=> b!2589946 (= res!1088854 (contains!5338 (t!212899 l!3230) (h!35206 l!3230)))))

(declare-fun b!2589947 () Bool)

(assert (=> b!2589947 (= e!1633727 e!1633721)))

(declare-fun res!1088861 () Bool)

(assert (=> b!2589947 (=> res!1088861 e!1633721)))

(assert (=> b!2589947 (= res!1088861 (not (= (content!4127 l!3230) lt!910537)))))

(assert (=> b!2589947 (= lt!910537 (set.union lt!910529 (set.insert (h!35206 l!3230) (as set.empty (Set B!1971)))))))

(declare-fun b!2589948 () Bool)

(declare-fun res!1088857 () Bool)

(assert (=> b!2589948 (=> (not res!1088857) (not e!1633725))))

(assert (=> b!2589948 (= res!1088857 (is-Cons!29786 l!3230))))

(declare-fun b!2589949 () Bool)

(declare-fun Unit!43663 () Unit!43660)

(assert (=> b!2589949 (= e!1633722 Unit!43663)))

(declare-fun b!2589950 () Bool)

(assert (=> b!2589950 (= e!1633720 e!1633726)))

(declare-fun res!1088860 () Bool)

(assert (=> b!2589950 (=> res!1088860 e!1633726)))

(assert (=> b!2589950 (= res!1088860 (not (= lt!910537 lt!910531)))))

(assert (=> b!2589950 (= lt!910531 (content!4127 l!3230))))

(declare-fun b!2589951 () Bool)

(declare-fun tp_is_empty!13251 () Bool)

(declare-fun tp!822561 () Bool)

(assert (=> b!2589951 (= e!1633724 (and tp_is_empty!13251 tp!822561))))

(assert (= (and start!250802 res!1088859) b!2589948))

(assert (= (and b!2589948 res!1088857) b!2589941))

(assert (= (and b!2589941 (not res!1088855)) b!2589945))

(assert (= (and b!2589945 (not res!1088856)) b!2589946))

(assert (= (and b!2589946 (not res!1088854)) b!2589942))

(assert (= (and b!2589942 (not res!1088858)) b!2589947))

(assert (= (and b!2589947 (not res!1088861)) b!2589940))

(assert (= (and b!2589940 c!417555) b!2589944))

(assert (= (and b!2589940 (not c!417555)) b!2589949))

(assert (= (and b!2589940 (not res!1088862)) b!2589950))

(assert (= (and b!2589950 (not res!1088860)) b!2589943))

(assert (= (and start!250802 (is-Cons!29786 l!3230)) b!2589951))

(declare-fun m!2926029 () Bool)

(assert (=> b!2589943 m!2926029))

(declare-fun m!2926031 () Bool)

(assert (=> b!2589940 m!2926031))

(declare-fun m!2926033 () Bool)

(assert (=> b!2589940 m!2926033))

(declare-fun m!2926035 () Bool)

(assert (=> b!2589942 m!2926035))

(declare-fun m!2926037 () Bool)

(assert (=> b!2589946 m!2926037))

(declare-fun m!2926039 () Bool)

(assert (=> b!2589944 m!2926039))

(declare-fun m!2926041 () Bool)

(assert (=> b!2589944 m!2926041))

(declare-fun m!2926043 () Bool)

(assert (=> b!2589944 m!2926043))

(declare-fun m!2926045 () Bool)

(assert (=> b!2589944 m!2926045))

(declare-fun m!2926047 () Bool)

(assert (=> b!2589945 m!2926047))

(declare-fun m!2926049 () Bool)

(assert (=> b!2589950 m!2926049))

(declare-fun m!2926051 () Bool)

(assert (=> b!2589941 m!2926051))

(assert (=> b!2589941 m!2926035))

(declare-fun m!2926053 () Bool)

(assert (=> b!2589941 m!2926053))

(assert (=> b!2589941 m!2926051))

(declare-fun m!2926055 () Bool)

(assert (=> b!2589941 m!2926055))

(declare-fun m!2926057 () Bool)

(assert (=> b!2589941 m!2926057))

(declare-fun m!2926059 () Bool)

(assert (=> b!2589941 m!2926059))

(declare-fun m!2926061 () Bool)

(assert (=> start!250802 m!2926061))

(assert (=> b!2589947 m!2926049))

(declare-fun m!2926063 () Bool)

(assert (=> b!2589947 m!2926063))

(push 1)

(assert (not b!2589942))

(assert (not b!2589943))

(assert (not b!2589946))

(assert (not b!2589944))

(assert tp_is_empty!13251)

(assert (not b!2589950))

(assert (not b!2589951))

(assert (not b!2589940))

(assert (not b!2589947))

(assert (not b!2589941))

(assert (not start!250802))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!733709 () Bool)

(declare-fun c!417561 () Bool)

(assert (=> d!733709 (= c!417561 (is-Nil!29786 lt!910528))))

(declare-fun e!1633758 () (Set B!1971))

(assert (=> d!733709 (= (content!4127 lt!910528) e!1633758)))

(declare-fun b!2589996 () Bool)

(assert (=> b!2589996 (= e!1633758 (as set.empty (Set B!1971)))))

(declare-fun b!2589997 () Bool)

(assert (=> b!2589997 (= e!1633758 (set.union (set.insert (h!35206 lt!910528) (as set.empty (Set B!1971))) (content!4127 (t!212899 lt!910528))))))

(assert (= (and d!733709 c!417561) b!2589996))

(assert (= (and d!733709 (not c!417561)) b!2589997))

(declare-fun m!2926101 () Bool)

(assert (=> b!2589997 m!2926101))

(declare-fun m!2926103 () Bool)

(assert (=> b!2589997 m!2926103))

(assert (=> b!2589943 d!733709))

(declare-fun d!733711 () Bool)

(declare-fun lt!910582 () Int)

(assert (=> d!733711 (>= lt!910582 0)))

(declare-fun e!1633761 () Int)

(assert (=> d!733711 (= lt!910582 e!1633761)))

(declare-fun c!417564 () Bool)

(assert (=> d!733711 (= c!417564 (is-Nil!29786 l!3230))))

(assert (=> d!733711 (= (size!23099 l!3230) lt!910582)))

(declare-fun b!2590002 () Bool)

(assert (=> b!2590002 (= e!1633761 0)))

(declare-fun b!2590003 () Bool)

(assert (=> b!2590003 (= e!1633761 (+ 1 (size!23099 (t!212899 l!3230))))))

(assert (= (and d!733711 c!417564) b!2590002))

(assert (= (and d!733711 (not c!417564)) b!2590003))

(assert (=> b!2590003 m!2926053))

(assert (=> b!2589942 d!733711))

(declare-fun bs!472079 () Bool)

(declare-fun d!733713 () Bool)

(assert (= bs!472079 (and d!733713 b!2589944)))

(declare-fun lambda!95905 () Int)

(assert (=> bs!472079 (not (= lambda!95905 lambda!95897))))

(assert (=> d!733713 true))

(declare-fun forall!6070 (List!29886 Int) Bool)

(assert (=> d!733713 (forall!6070 lt!910528 lambda!95905)))

(declare-fun lt!910585 () Unit!43660)

(declare-fun choose!15272 (List!29886 List!29886) Unit!43660)

(assert (=> d!733713 (= lt!910585 (choose!15272 lt!910528 l!3230))))

(assert (=> d!733713 (set.subset (content!4127 lt!910528) (content!4127 l!3230))))

(assert (=> d!733713 (= (subsetContains!29 lt!910528 l!3230) lt!910585)))

(declare-fun bs!472080 () Bool)

(assert (= bs!472080 d!733713))

(declare-fun m!2926105 () Bool)

(assert (=> bs!472080 m!2926105))

(declare-fun m!2926107 () Bool)

(assert (=> bs!472080 m!2926107))

(assert (=> bs!472080 m!2926029))

(assert (=> bs!472080 m!2926049))

(assert (=> b!2589944 d!733713))

(declare-fun bs!472081 () Bool)

(declare-fun d!733715 () Bool)

(assert (= bs!472081 (and d!733715 b!2589944)))

(declare-fun lambda!95908 () Int)

(assert (=> bs!472081 (= lambda!95908 lambda!95897)))

(declare-fun bs!472082 () Bool)

(assert (= bs!472082 (and d!733715 d!733713)))

(assert (=> bs!472082 (not (= lambda!95908 lambda!95905))))

(assert (=> d!733715 true))

(assert (=> d!733715 (exists!887 l!3230 lambda!95908)))

(declare-fun lt!910588 () Unit!43660)

(declare-fun choose!15273 (List!29886 List!29886) Unit!43660)

(assert (=> d!733715 (= lt!910588 (choose!15273 l!3230 lt!910528))))

(assert (=> d!733715 (noDuplicate!334 l!3230)))

(assert (=> d!733715 (= (lemmaNoDuplicateSmallerListExistsElmtNotInOther!3 l!3230 lt!910528) lt!910588)))

(declare-fun bs!472083 () Bool)

(assert (= bs!472083 d!733715))

(declare-fun m!2926109 () Bool)

(assert (=> bs!472083 m!2926109))

(declare-fun m!2926111 () Bool)

(assert (=> bs!472083 m!2926111))

(assert (=> bs!472083 m!2926061))

(assert (=> b!2589944 d!733715))

(declare-fun bs!472084 () Bool)

(declare-fun d!733717 () Bool)

(assert (= bs!472084 (and d!733717 b!2589944)))

(declare-fun lambda!95911 () Int)

(assert (=> bs!472084 (not (= lambda!95911 lambda!95897))))

(declare-fun bs!472085 () Bool)

(assert (= bs!472085 (and d!733717 d!733713)))

(assert (=> bs!472085 (not (= lambda!95911 lambda!95905))))

(declare-fun bs!472086 () Bool)

(assert (= bs!472086 (and d!733717 d!733715)))

(assert (=> bs!472086 (not (= lambda!95911 lambda!95908))))

(assert (=> d!733717 true))

(declare-fun order!15857 () Int)

(declare-fun dynLambda!12600 (Int Int) Int)

(assert (=> d!733717 (< (dynLambda!12600 order!15857 lambda!95897) (dynLambda!12600 order!15857 lambda!95911))))

(assert (=> d!733717 (= (exists!887 l!3230 lambda!95897) (not (forall!6070 l!3230 lambda!95911)))))

(declare-fun bs!472087 () Bool)

(assert (= bs!472087 d!733717))

(declare-fun m!2926113 () Bool)

(assert (=> bs!472087 m!2926113))

(assert (=> b!2589944 d!733717))

(declare-fun b!2590024 () Bool)

(declare-fun e!1633776 () Bool)

(declare-fun lt!910596 () B!1971)

(assert (=> b!2590024 (= e!1633776 (contains!5338 l!3230 lt!910596))))

(declare-fun b!2590025 () Bool)

(declare-fun lt!910597 () Unit!43660)

(declare-fun Unit!43668 () Unit!43660)

(assert (=> b!2590025 (= lt!910597 Unit!43668)))

(assert (=> b!2590025 false))

(declare-fun e!1633778 () B!1971)

(declare-fun head!5863 (List!29886) B!1971)

(assert (=> b!2590025 (= e!1633778 (head!5863 l!3230))))

(declare-fun b!2590026 () Bool)

(declare-fun e!1633777 () B!1971)

(assert (=> b!2590026 (= e!1633777 (h!35206 l!3230))))

(declare-fun b!2590027 () Bool)

(declare-fun e!1633775 () Bool)

(declare-fun dynLambda!12601 (Int B!1971) Bool)

(assert (=> b!2590027 (= e!1633775 (dynLambda!12601 lambda!95897 (h!35206 l!3230)))))

(declare-fun d!733721 () Bool)

(assert (=> d!733721 e!1633776))

(declare-fun res!1088894 () Bool)

(assert (=> d!733721 (=> (not res!1088894) (not e!1633776))))

(assert (=> d!733721 (= res!1088894 (dynLambda!12601 lambda!95897 lt!910596))))

(assert (=> d!733721 (= lt!910596 e!1633777)))

(declare-fun c!417573 () Bool)

(assert (=> d!733721 (= c!417573 e!1633775)))

(declare-fun res!1088895 () Bool)

(assert (=> d!733721 (=> (not res!1088895) (not e!1633775))))

(assert (=> d!733721 (= res!1088895 (is-Cons!29786 l!3230))))

(assert (=> d!733721 (exists!887 l!3230 lambda!95897)))

(assert (=> d!733721 (= (getWitness!515 l!3230 lambda!95897) lt!910596)))

(declare-fun b!2590028 () Bool)

(assert (=> b!2590028 (= e!1633778 (getWitness!515 (t!212899 l!3230) lambda!95897))))

(declare-fun b!2590029 () Bool)

(assert (=> b!2590029 (= e!1633777 e!1633778)))

(declare-fun c!417572 () Bool)

(assert (=> b!2590029 (= c!417572 (is-Cons!29786 l!3230))))

(assert (= (and d!733721 res!1088895) b!2590027))

(assert (= (and d!733721 c!417573) b!2590026))

(assert (= (and d!733721 (not c!417573)) b!2590029))

(assert (= (and b!2590029 c!417572) b!2590028))

(assert (= (and b!2590029 (not c!417572)) b!2590025))

(assert (= (and d!733721 res!1088894) b!2590024))

(declare-fun b_lambda!77083 () Bool)

(assert (=> (not b_lambda!77083) (not b!2590027)))

(declare-fun b_lambda!77085 () Bool)

(assert (=> (not b_lambda!77085) (not d!733721)))

(declare-fun m!2926117 () Bool)

(assert (=> b!2590025 m!2926117))

(declare-fun m!2926119 () Bool)

(assert (=> b!2590024 m!2926119))

(declare-fun m!2926121 () Bool)

(assert (=> b!2590028 m!2926121))

(declare-fun m!2926123 () Bool)

(assert (=> d!733721 m!2926123))

(assert (=> d!733721 m!2926043))

(declare-fun m!2926125 () Bool)

(assert (=> b!2590027 m!2926125))

(assert (=> b!2589944 d!733721))

(declare-fun d!733725 () Bool)

(declare-fun lt!910599 () Int)

(assert (=> d!733725 (>= lt!910599 0)))

(declare-fun e!1633780 () Int)

(assert (=> d!733725 (= lt!910599 e!1633780)))

(declare-fun c!417575 () Bool)

(assert (=> d!733725 (= c!417575 (is-Nil!29786 lt!910528))))

(assert (=> d!733725 (= (size!23099 lt!910528) lt!910599)))

(declare-fun b!2590032 () Bool)

(assert (=> b!2590032 (= e!1633780 0)))

(declare-fun b!2590033 () Bool)

(assert (=> b!2590033 (= e!1633780 (+ 1 (size!23099 (t!212899 lt!910528))))))

(assert (= (and d!733725 c!417575) b!2590032))

(assert (= (and d!733725 (not c!417575)) b!2590033))

(declare-fun m!2926127 () Bool)

(assert (=> b!2590033 m!2926127))

(assert (=> b!2589940 d!733725))

(declare-fun d!733729 () Bool)

(declare-fun e!1633784 () Bool)

(assert (=> d!733729 e!1633784))

(declare-fun res!1088898 () Bool)

(assert (=> d!733729 (=> (not res!1088898) (not e!1633784))))

(declare-fun lt!910602 () List!29886)

(assert (=> d!733729 (= res!1088898 (noDuplicate!334 lt!910602))))

(declare-fun choose!15274 ((Set B!1971)) List!29886)

(assert (=> d!733729 (= lt!910602 (choose!15274 lt!910537))))

(assert (=> d!733729 (= (toList!1737 lt!910537) lt!910602)))

(declare-fun b!2590040 () Bool)

(assert (=> b!2590040 (= e!1633784 (= (content!4127 lt!910602) lt!910537))))

(assert (= (and d!733729 res!1088898) b!2590040))

(declare-fun m!2926129 () Bool)

(assert (=> d!733729 m!2926129))

(declare-fun m!2926131 () Bool)

(assert (=> d!733729 m!2926131))

(declare-fun m!2926133 () Bool)

(assert (=> b!2590040 m!2926133))

(assert (=> b!2589940 d!733729))

(declare-fun d!733731 () Bool)

(declare-fun c!417578 () Bool)

(assert (=> d!733731 (= c!417578 (is-Nil!29786 l!3230))))

(declare-fun e!1633786 () (Set B!1971))

(assert (=> d!733731 (= (content!4127 l!3230) e!1633786)))

(declare-fun b!2590041 () Bool)

(assert (=> b!2590041 (= e!1633786 (as set.empty (Set B!1971)))))

(declare-fun b!2590042 () Bool)

(assert (=> b!2590042 (= e!1633786 (set.union (set.insert (h!35206 l!3230) (as set.empty (Set B!1971))) (content!4127 (t!212899 l!3230))))))

(assert (= (and d!733731 c!417578) b!2590041))

(assert (= (and d!733731 (not c!417578)) b!2590042))

(assert (=> b!2590042 m!2926063))

(assert (=> b!2590042 m!2926057))

(assert (=> b!2589950 d!733731))

(declare-fun d!733733 () Bool)

(declare-fun res!1088903 () Bool)

(declare-fun e!1633791 () Bool)

(assert (=> d!733733 (=> res!1088903 e!1633791)))

(assert (=> d!733733 (= res!1088903 (is-Nil!29786 l!3230))))

(assert (=> d!733733 (= (noDuplicate!334 l!3230) e!1633791)))

(declare-fun b!2590047 () Bool)

(declare-fun e!1633792 () Bool)

(assert (=> b!2590047 (= e!1633791 e!1633792)))

(declare-fun res!1088904 () Bool)

(assert (=> b!2590047 (=> (not res!1088904) (not e!1633792))))

(assert (=> b!2590047 (= res!1088904 (not (contains!5338 (t!212899 l!3230) (h!35206 l!3230))))))

(declare-fun b!2590048 () Bool)

(assert (=> b!2590048 (= e!1633792 (noDuplicate!334 (t!212899 l!3230)))))

(assert (= (and d!733733 (not res!1088903)) b!2590047))

(assert (= (and b!2590047 res!1088904) b!2590048))

(assert (=> b!2590047 m!2926037))

(declare-fun m!2926135 () Bool)

(assert (=> b!2590048 m!2926135))

(assert (=> start!250802 d!733733))

(assert (=> b!2589947 d!733731))

(declare-fun d!733735 () Bool)

(declare-fun e!1633793 () Bool)

(assert (=> d!733735 e!1633793))

(declare-fun res!1088905 () Bool)

(assert (=> d!733735 (=> (not res!1088905) (not e!1633793))))

(declare-fun lt!910603 () List!29886)

(assert (=> d!733735 (= res!1088905 (noDuplicate!334 lt!910603))))

(assert (=> d!733735 (= lt!910603 (choose!15274 lt!910529))))

(assert (=> d!733735 (= (toList!1737 lt!910529) lt!910603)))

(declare-fun b!2590049 () Bool)

(assert (=> b!2590049 (= e!1633793 (= (content!4127 lt!910603) lt!910529))))

(assert (= (and d!733735 res!1088905) b!2590049))

(declare-fun m!2926137 () Bool)

(assert (=> d!733735 m!2926137))

(declare-fun m!2926139 () Bool)

(assert (=> d!733735 m!2926139))

(declare-fun m!2926141 () Bool)

(assert (=> b!2590049 m!2926141))

(assert (=> b!2589941 d!733735))

(assert (=> b!2589941 d!733711))

(declare-fun d!733737 () Bool)

(declare-fun lt!910604 () Int)

(assert (=> d!733737 (>= lt!910604 0)))

(declare-fun e!1633795 () Int)

(assert (=> d!733737 (= lt!910604 e!1633795)))

(declare-fun c!417580 () Bool)

(assert (=> d!733737 (= c!417580 (is-Nil!29786 (toList!1737 lt!910529)))))

(assert (=> d!733737 (= (size!23099 (toList!1737 lt!910529)) lt!910604)))

(declare-fun b!2590052 () Bool)

(assert (=> b!2590052 (= e!1633795 0)))

(declare-fun b!2590053 () Bool)

(assert (=> b!2590053 (= e!1633795 (+ 1 (size!23099 (t!212899 (toList!1737 lt!910529)))))))

(assert (= (and d!733737 c!417580) b!2590052))

(assert (= (and d!733737 (not c!417580)) b!2590053))

(declare-fun m!2926143 () Bool)

(assert (=> b!2590053 m!2926143))

(assert (=> b!2589941 d!733737))

(declare-fun d!733739 () Bool)

(declare-fun lt!910605 () Int)

(assert (=> d!733739 (>= lt!910605 0)))

(declare-fun e!1633796 () Int)

(assert (=> d!733739 (= lt!910605 e!1633796)))

(declare-fun c!417581 () Bool)

(assert (=> d!733739 (= c!417581 (is-Nil!29786 (t!212899 l!3230)))))

(assert (=> d!733739 (= (size!23099 (t!212899 l!3230)) lt!910605)))

(declare-fun b!2590054 () Bool)

(assert (=> b!2590054 (= e!1633796 0)))

(declare-fun b!2590055 () Bool)

(assert (=> b!2590055 (= e!1633796 (+ 1 (size!23099 (t!212899 (t!212899 l!3230)))))))

(assert (= (and d!733739 c!417581) b!2590054))

(assert (= (and d!733739 (not c!417581)) b!2590055))

(declare-fun m!2926147 () Bool)

(assert (=> b!2590055 m!2926147))

(assert (=> b!2589941 d!733739))

(declare-fun d!733741 () Bool)

(declare-fun c!417582 () Bool)

(assert (=> d!733741 (= c!417582 (is-Nil!29786 (t!212899 l!3230)))))

(declare-fun e!1633797 () (Set B!1971))

(assert (=> d!733741 (= (content!4127 (t!212899 l!3230)) e!1633797)))

(declare-fun b!2590056 () Bool)

(assert (=> b!2590056 (= e!1633797 (as set.empty (Set B!1971)))))

(declare-fun b!2590057 () Bool)

(assert (=> b!2590057 (= e!1633797 (set.union (set.insert (h!35206 (t!212899 l!3230)) (as set.empty (Set B!1971))) (content!4127 (t!212899 (t!212899 l!3230)))))))

(assert (= (and d!733741 c!417582) b!2590056))

(assert (= (and d!733741 (not c!417582)) b!2590057))

(declare-fun m!2926151 () Bool)

(assert (=> b!2590057 m!2926151))

(declare-fun m!2926153 () Bool)

(assert (=> b!2590057 m!2926153))

(assert (=> b!2589941 d!733741))

(declare-fun d!733745 () Bool)

(assert (=> d!733745 (= (size!23099 (toList!1737 (content!4127 (t!212899 l!3230)))) (size!23099 (t!212899 l!3230)))))

(declare-fun lt!910608 () Unit!43660)

(declare-fun choose!15275 (List!29886) Unit!43660)

(assert (=> d!733745 (= lt!910608 (choose!15275 (t!212899 l!3230)))))

(assert (=> d!733745 (noDuplicate!334 (t!212899 l!3230))))

(assert (=> d!733745 (= (lemmaNoDuplicateThenContentToListSameSize!27 (t!212899 l!3230)) lt!910608)))

(declare-fun bs!472088 () Bool)

(assert (= bs!472088 d!733745))

(assert (=> bs!472088 m!2926135))

(declare-fun m!2926155 () Bool)

(assert (=> bs!472088 m!2926155))

(declare-fun m!2926157 () Bool)

(assert (=> bs!472088 m!2926157))

(declare-fun m!2926159 () Bool)

(assert (=> bs!472088 m!2926159))

(assert (=> bs!472088 m!2926057))

(assert (=> bs!472088 m!2926157))

(assert (=> bs!472088 m!2926053))

(assert (=> bs!472088 m!2926057))

(assert (=> b!2589941 d!733745))

(declare-fun d!733747 () Bool)

(declare-fun lt!910613 () Bool)

(assert (=> d!733747 (= lt!910613 (set.member (h!35206 l!3230) (content!4127 (t!212899 l!3230))))))

(declare-fun e!1633802 () Bool)

(assert (=> d!733747 (= lt!910613 e!1633802)))

(declare-fun res!1088911 () Bool)

(assert (=> d!733747 (=> (not res!1088911) (not e!1633802))))

(assert (=> d!733747 (= res!1088911 (is-Cons!29786 (t!212899 l!3230)))))

(assert (=> d!733747 (= (contains!5338 (t!212899 l!3230) (h!35206 l!3230)) lt!910613)))

(declare-fun b!2590062 () Bool)

(declare-fun e!1633803 () Bool)

(assert (=> b!2590062 (= e!1633802 e!1633803)))

(declare-fun res!1088910 () Bool)

(assert (=> b!2590062 (=> res!1088910 e!1633803)))

(assert (=> b!2590062 (= res!1088910 (= (h!35206 (t!212899 l!3230)) (h!35206 l!3230)))))

(declare-fun b!2590063 () Bool)

(assert (=> b!2590063 (= e!1633803 (contains!5338 (t!212899 (t!212899 l!3230)) (h!35206 l!3230)))))

(assert (= (and d!733747 res!1088911) b!2590062))

(assert (= (and b!2590062 (not res!1088910)) b!2590063))

(assert (=> d!733747 m!2926057))

(declare-fun m!2926161 () Bool)

(assert (=> d!733747 m!2926161))

(declare-fun m!2926163 () Bool)

(assert (=> b!2590063 m!2926163))

(assert (=> b!2589946 d!733747))

(declare-fun b!2590068 () Bool)

(declare-fun e!1633806 () Bool)

(declare-fun tp!822567 () Bool)

(assert (=> b!2590068 (= e!1633806 (and tp_is_empty!13251 tp!822567))))

(assert (=> b!2589951 (= tp!822561 e!1633806)))

(assert (= (and b!2589951 (is-Cons!29786 (t!212899 l!3230))) b!2590068))

(declare-fun b_lambda!77087 () Bool)

(assert (= b_lambda!77083 (or b!2589944 b_lambda!77087)))

(declare-fun bs!472090 () Bool)

(declare-fun d!733749 () Bool)

(assert (= bs!472090 (and d!733749 b!2589944)))

(assert (=> bs!472090 (= (dynLambda!12601 lambda!95897 (h!35206 l!3230)) (not (contains!5338 lt!910528 (h!35206 l!3230))))))

(declare-fun m!2926171 () Bool)

(assert (=> bs!472090 m!2926171))

(assert (=> b!2590027 d!733749))

(declare-fun b_lambda!77089 () Bool)

(assert (= b_lambda!77085 (or b!2589944 b_lambda!77089)))

(declare-fun bs!472091 () Bool)

(declare-fun d!733751 () Bool)

(assert (= bs!472091 (and d!733751 b!2589944)))

(assert (=> bs!472091 (= (dynLambda!12601 lambda!95897 lt!910596) (not (contains!5338 lt!910528 lt!910596)))))

(declare-fun m!2926175 () Bool)

(assert (=> bs!472091 m!2926175))

(assert (=> d!733721 d!733751))

(push 1)

(assert (not b!2590055))

(assert (not b!2589997))

(assert (not b!2590024))

(assert (not b!2590003))

(assert (not d!733721))

(assert (not b!2590033))

(assert (not b!2590028))

(assert (not b!2590068))

(assert (not b!2590042))

(assert (not d!733735))

(assert (not b_lambda!77089))

(assert (not d!733713))

(assert (not d!733745))

(assert (not d!733715))

(assert (not b!2590063))

(assert (not d!733717))

(assert (not b!2590053))

(assert tp_is_empty!13251)

(assert (not d!733747))

(assert (not b!2590047))

(assert (not b_lambda!77087))

(assert (not b!2590057))

(assert (not bs!472091))

(assert (not b!2590049))

(assert (not b!2590025))

(assert (not b!2590048))

(assert (not bs!472090))

(assert (not b!2590040))

(assert (not d!733729))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

