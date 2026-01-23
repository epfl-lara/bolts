; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!726386 () Bool)

(assert start!726386)

(declare-fun b!7504853 () Bool)

(declare-fun e!4474710 () Bool)

(declare-datatypes ((C!39712 0))(
  ( (C!39713 (val!30254 Int)) )
))
(declare-datatypes ((List!72480 0))(
  ( (Nil!72356) (Cons!72356 (h!78804 C!39712) (t!387049 List!72480)) )
))
(declare-fun testedP!204 () List!72480)

(declare-fun totalInput!779 () List!72480)

(declare-fun ++!17322 (List!72480 List!72480) List!72480)

(declare-fun getSuffix!3487 (List!72480 List!72480) List!72480)

(assert (=> b!7504853 (= e!4474710 (= (++!17322 testedP!204 (getSuffix!3487 totalInput!779 testedP!204)) totalInput!779))))

(declare-fun b!7504854 () Bool)

(declare-fun e!4474712 () Bool)

(declare-fun tp_is_empty!49727 () Bool)

(declare-fun tp!2178505 () Bool)

(assert (=> b!7504854 (= e!4474712 (and tp_is_empty!49727 tp!2178505))))

(declare-fun b!7504855 () Bool)

(declare-fun e!4474711 () Bool)

(assert (=> b!7504855 (= e!4474711 (not e!4474710))))

(declare-fun res!3010812 () Bool)

(assert (=> b!7504855 (=> res!3010812 e!4474710)))

(declare-fun isPrefix!5987 (List!72480 List!72480) Bool)

(assert (=> b!7504855 (= res!3010812 (not (isPrefix!5987 testedP!204 totalInput!779)))))

(declare-fun lt!2634227 () List!72480)

(assert (=> b!7504855 (isPrefix!5987 testedP!204 lt!2634227)))

(declare-datatypes ((Unit!166336 0))(
  ( (Unit!166337) )
))
(declare-fun lt!2634228 () Unit!166336)

(declare-fun testedSuffix!164 () List!72480)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3700 (List!72480 List!72480) Unit!166336)

(assert (=> b!7504855 (= lt!2634228 (lemmaConcatTwoListThenFirstIsPrefix!3700 testedP!204 testedSuffix!164))))

(declare-fun b!7504856 () Bool)

(declare-fun e!4474708 () Bool)

(declare-fun tp!2178506 () Bool)

(assert (=> b!7504856 (= e!4474708 (and tp_is_empty!49727 tp!2178506))))

(declare-fun b!7504857 () Bool)

(declare-fun res!3010811 () Bool)

(assert (=> b!7504857 (=> (not res!3010811) (not e!4474711))))

(declare-fun totalInputSize!226 () Int)

(declare-fun size!42264 (List!72480) Int)

(assert (=> b!7504857 (= res!3010811 (= totalInputSize!226 (size!42264 totalInput!779)))))

(declare-fun res!3010810 () Bool)

(assert (=> start!726386 (=> (not res!3010810) (not e!4474711))))

(assert (=> start!726386 (= res!3010810 (= lt!2634227 totalInput!779))))

(assert (=> start!726386 (= lt!2634227 (++!17322 testedP!204 testedSuffix!164))))

(assert (=> start!726386 e!4474711))

(assert (=> start!726386 e!4474708))

(assert (=> start!726386 true))

(declare-fun e!4474709 () Bool)

(assert (=> start!726386 e!4474709))

(assert (=> start!726386 e!4474712))

(declare-fun b!7504858 () Bool)

(declare-fun res!3010809 () Bool)

(assert (=> b!7504858 (=> (not res!3010809) (not e!4474711))))

(declare-fun testedPSize!164 () Int)

(assert (=> b!7504858 (= res!3010809 (= testedPSize!164 (size!42264 testedP!204)))))

(declare-fun b!7504859 () Bool)

(declare-fun tp!2178507 () Bool)

(assert (=> b!7504859 (= e!4474709 (and tp_is_empty!49727 tp!2178507))))

(assert (= (and start!726386 res!3010810) b!7504858))

(assert (= (and b!7504858 res!3010809) b!7504857))

(assert (= (and b!7504857 res!3010811) b!7504855))

(assert (= (and b!7504855 (not res!3010812)) b!7504853))

(get-info :version)

(assert (= (and start!726386 ((_ is Cons!72356) testedSuffix!164)) b!7504856))

(assert (= (and start!726386 ((_ is Cons!72356) totalInput!779)) b!7504859))

(assert (= (and start!726386 ((_ is Cons!72356) testedP!204)) b!7504854))

(declare-fun m!8087130 () Bool)

(assert (=> b!7504853 m!8087130))

(assert (=> b!7504853 m!8087130))

(declare-fun m!8087132 () Bool)

(assert (=> b!7504853 m!8087132))

(declare-fun m!8087134 () Bool)

(assert (=> b!7504855 m!8087134))

(declare-fun m!8087136 () Bool)

(assert (=> b!7504855 m!8087136))

(declare-fun m!8087138 () Bool)

(assert (=> b!7504855 m!8087138))

(declare-fun m!8087140 () Bool)

(assert (=> b!7504858 m!8087140))

(declare-fun m!8087142 () Bool)

(assert (=> start!726386 m!8087142))

(declare-fun m!8087144 () Bool)

(assert (=> b!7504857 m!8087144))

(check-sat (not b!7504859) (not b!7504856) (not b!7504854) (not b!7504855) (not start!726386) tp_is_empty!49727 (not b!7504858) (not b!7504857) (not b!7504853))
(check-sat)
(get-model)

(declare-fun d!2303773 () Bool)

(declare-fun lt!2634231 () Int)

(assert (=> d!2303773 (>= lt!2634231 0)))

(declare-fun e!4474715 () Int)

(assert (=> d!2303773 (= lt!2634231 e!4474715)))

(declare-fun c!1385507 () Bool)

(assert (=> d!2303773 (= c!1385507 ((_ is Nil!72356) totalInput!779))))

(assert (=> d!2303773 (= (size!42264 totalInput!779) lt!2634231)))

(declare-fun b!7504864 () Bool)

(assert (=> b!7504864 (= e!4474715 0)))

(declare-fun b!7504865 () Bool)

(assert (=> b!7504865 (= e!4474715 (+ 1 (size!42264 (t!387049 totalInput!779))))))

(assert (= (and d!2303773 c!1385507) b!7504864))

(assert (= (and d!2303773 (not c!1385507)) b!7504865))

(declare-fun m!8087146 () Bool)

(assert (=> b!7504865 m!8087146))

(assert (=> b!7504857 d!2303773))

(declare-fun d!2303777 () Bool)

(declare-fun lt!2634232 () Int)

(assert (=> d!2303777 (>= lt!2634232 0)))

(declare-fun e!4474716 () Int)

(assert (=> d!2303777 (= lt!2634232 e!4474716)))

(declare-fun c!1385508 () Bool)

(assert (=> d!2303777 (= c!1385508 ((_ is Nil!72356) testedP!204))))

(assert (=> d!2303777 (= (size!42264 testedP!204) lt!2634232)))

(declare-fun b!7504866 () Bool)

(assert (=> b!7504866 (= e!4474716 0)))

(declare-fun b!7504867 () Bool)

(assert (=> b!7504867 (= e!4474716 (+ 1 (size!42264 (t!387049 testedP!204))))))

(assert (= (and d!2303777 c!1385508) b!7504866))

(assert (= (and d!2303777 (not c!1385508)) b!7504867))

(declare-fun m!8087148 () Bool)

(assert (=> b!7504867 m!8087148))

(assert (=> b!7504858 d!2303777))

(declare-fun d!2303779 () Bool)

(declare-fun e!4474730 () Bool)

(assert (=> d!2303779 e!4474730))

(declare-fun res!3010826 () Bool)

(assert (=> d!2303779 (=> (not res!3010826) (not e!4474730))))

(declare-fun lt!2634239 () List!72480)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15295 (List!72480) (InoxSet C!39712))

(assert (=> d!2303779 (= res!3010826 (= (content!15295 lt!2634239) ((_ map or) (content!15295 testedP!204) (content!15295 testedSuffix!164))))))

(declare-fun e!4474729 () List!72480)

(assert (=> d!2303779 (= lt!2634239 e!4474729)))

(declare-fun c!1385515 () Bool)

(assert (=> d!2303779 (= c!1385515 ((_ is Nil!72356) testedP!204))))

(assert (=> d!2303779 (= (++!17322 testedP!204 testedSuffix!164) lt!2634239)))

(declare-fun b!7504894 () Bool)

(declare-fun res!3010825 () Bool)

(assert (=> b!7504894 (=> (not res!3010825) (not e!4474730))))

(assert (=> b!7504894 (= res!3010825 (= (size!42264 lt!2634239) (+ (size!42264 testedP!204) (size!42264 testedSuffix!164))))))

(declare-fun b!7504895 () Bool)

(assert (=> b!7504895 (= e!4474730 (or (not (= testedSuffix!164 Nil!72356)) (= lt!2634239 testedP!204)))))

(declare-fun b!7504893 () Bool)

(assert (=> b!7504893 (= e!4474729 (Cons!72356 (h!78804 testedP!204) (++!17322 (t!387049 testedP!204) testedSuffix!164)))))

(declare-fun b!7504892 () Bool)

(assert (=> b!7504892 (= e!4474729 testedSuffix!164)))

(assert (= (and d!2303779 c!1385515) b!7504892))

(assert (= (and d!2303779 (not c!1385515)) b!7504893))

(assert (= (and d!2303779 res!3010826) b!7504894))

(assert (= (and b!7504894 res!3010825) b!7504895))

(declare-fun m!8087172 () Bool)

(assert (=> d!2303779 m!8087172))

(declare-fun m!8087174 () Bool)

(assert (=> d!2303779 m!8087174))

(declare-fun m!8087176 () Bool)

(assert (=> d!2303779 m!8087176))

(declare-fun m!8087178 () Bool)

(assert (=> b!7504894 m!8087178))

(assert (=> b!7504894 m!8087140))

(declare-fun m!8087180 () Bool)

(assert (=> b!7504894 m!8087180))

(declare-fun m!8087182 () Bool)

(assert (=> b!7504893 m!8087182))

(assert (=> start!726386 d!2303779))

(declare-fun d!2303785 () Bool)

(declare-fun e!4474732 () Bool)

(assert (=> d!2303785 e!4474732))

(declare-fun res!3010828 () Bool)

(assert (=> d!2303785 (=> (not res!3010828) (not e!4474732))))

(declare-fun lt!2634240 () List!72480)

(assert (=> d!2303785 (= res!3010828 (= (content!15295 lt!2634240) ((_ map or) (content!15295 testedP!204) (content!15295 (getSuffix!3487 totalInput!779 testedP!204)))))))

(declare-fun e!4474731 () List!72480)

(assert (=> d!2303785 (= lt!2634240 e!4474731)))

(declare-fun c!1385516 () Bool)

(assert (=> d!2303785 (= c!1385516 ((_ is Nil!72356) testedP!204))))

(assert (=> d!2303785 (= (++!17322 testedP!204 (getSuffix!3487 totalInput!779 testedP!204)) lt!2634240)))

(declare-fun b!7504898 () Bool)

(declare-fun res!3010827 () Bool)

(assert (=> b!7504898 (=> (not res!3010827) (not e!4474732))))

(assert (=> b!7504898 (= res!3010827 (= (size!42264 lt!2634240) (+ (size!42264 testedP!204) (size!42264 (getSuffix!3487 totalInput!779 testedP!204)))))))

(declare-fun b!7504899 () Bool)

(assert (=> b!7504899 (= e!4474732 (or (not (= (getSuffix!3487 totalInput!779 testedP!204) Nil!72356)) (= lt!2634240 testedP!204)))))

(declare-fun b!7504897 () Bool)

(assert (=> b!7504897 (= e!4474731 (Cons!72356 (h!78804 testedP!204) (++!17322 (t!387049 testedP!204) (getSuffix!3487 totalInput!779 testedP!204))))))

(declare-fun b!7504896 () Bool)

(assert (=> b!7504896 (= e!4474731 (getSuffix!3487 totalInput!779 testedP!204))))

(assert (= (and d!2303785 c!1385516) b!7504896))

(assert (= (and d!2303785 (not c!1385516)) b!7504897))

(assert (= (and d!2303785 res!3010828) b!7504898))

(assert (= (and b!7504898 res!3010827) b!7504899))

(declare-fun m!8087184 () Bool)

(assert (=> d!2303785 m!8087184))

(assert (=> d!2303785 m!8087174))

(assert (=> d!2303785 m!8087130))

(declare-fun m!8087186 () Bool)

(assert (=> d!2303785 m!8087186))

(declare-fun m!8087188 () Bool)

(assert (=> b!7504898 m!8087188))

(assert (=> b!7504898 m!8087140))

(assert (=> b!7504898 m!8087130))

(declare-fun m!8087190 () Bool)

(assert (=> b!7504898 m!8087190))

(assert (=> b!7504897 m!8087130))

(declare-fun m!8087192 () Bool)

(assert (=> b!7504897 m!8087192))

(assert (=> b!7504853 d!2303785))

(declare-fun d!2303787 () Bool)

(declare-fun lt!2634249 () List!72480)

(assert (=> d!2303787 (= (++!17322 testedP!204 lt!2634249) totalInput!779)))

(declare-fun e!4474741 () List!72480)

(assert (=> d!2303787 (= lt!2634249 e!4474741)))

(declare-fun c!1385525 () Bool)

(assert (=> d!2303787 (= c!1385525 ((_ is Cons!72356) testedP!204))))

(assert (=> d!2303787 (>= (size!42264 totalInput!779) (size!42264 testedP!204))))

(assert (=> d!2303787 (= (getSuffix!3487 totalInput!779 testedP!204) lt!2634249)))

(declare-fun b!7504916 () Bool)

(declare-fun tail!14984 (List!72480) List!72480)

(assert (=> b!7504916 (= e!4474741 (getSuffix!3487 (tail!14984 totalInput!779) (t!387049 testedP!204)))))

(declare-fun b!7504917 () Bool)

(assert (=> b!7504917 (= e!4474741 totalInput!779)))

(assert (= (and d!2303787 c!1385525) b!7504916))

(assert (= (and d!2303787 (not c!1385525)) b!7504917))

(declare-fun m!8087202 () Bool)

(assert (=> d!2303787 m!8087202))

(assert (=> d!2303787 m!8087144))

(assert (=> d!2303787 m!8087140))

(declare-fun m!8087204 () Bool)

(assert (=> b!7504916 m!8087204))

(assert (=> b!7504916 m!8087204))

(declare-fun m!8087206 () Bool)

(assert (=> b!7504916 m!8087206))

(assert (=> b!7504853 d!2303787))

(declare-fun b!7504940 () Bool)

(declare-fun e!4474759 () Bool)

(assert (=> b!7504940 (= e!4474759 (isPrefix!5987 (tail!14984 testedP!204) (tail!14984 totalInput!779)))))

(declare-fun d!2303793 () Bool)

(declare-fun e!4474757 () Bool)

(assert (=> d!2303793 e!4474757))

(declare-fun res!3010852 () Bool)

(assert (=> d!2303793 (=> res!3010852 e!4474757)))

(declare-fun lt!2634255 () Bool)

(assert (=> d!2303793 (= res!3010852 (not lt!2634255))))

(declare-fun e!4474758 () Bool)

(assert (=> d!2303793 (= lt!2634255 e!4474758)))

(declare-fun res!3010849 () Bool)

(assert (=> d!2303793 (=> res!3010849 e!4474758)))

(assert (=> d!2303793 (= res!3010849 ((_ is Nil!72356) testedP!204))))

(assert (=> d!2303793 (= (isPrefix!5987 testedP!204 totalInput!779) lt!2634255)))

(declare-fun b!7504941 () Bool)

(assert (=> b!7504941 (= e!4474757 (>= (size!42264 totalInput!779) (size!42264 testedP!204)))))

(declare-fun b!7504939 () Bool)

(declare-fun res!3010851 () Bool)

(assert (=> b!7504939 (=> (not res!3010851) (not e!4474759))))

(declare-fun head!15418 (List!72480) C!39712)

(assert (=> b!7504939 (= res!3010851 (= (head!15418 testedP!204) (head!15418 totalInput!779)))))

(declare-fun b!7504938 () Bool)

(assert (=> b!7504938 (= e!4474758 e!4474759)))

(declare-fun res!3010850 () Bool)

(assert (=> b!7504938 (=> (not res!3010850) (not e!4474759))))

(assert (=> b!7504938 (= res!3010850 (not ((_ is Nil!72356) totalInput!779)))))

(assert (= (and d!2303793 (not res!3010849)) b!7504938))

(assert (= (and b!7504938 res!3010850) b!7504939))

(assert (= (and b!7504939 res!3010851) b!7504940))

(assert (= (and d!2303793 (not res!3010852)) b!7504941))

(declare-fun m!8087216 () Bool)

(assert (=> b!7504940 m!8087216))

(assert (=> b!7504940 m!8087204))

(assert (=> b!7504940 m!8087216))

(assert (=> b!7504940 m!8087204))

(declare-fun m!8087218 () Bool)

(assert (=> b!7504940 m!8087218))

(assert (=> b!7504941 m!8087144))

(assert (=> b!7504941 m!8087140))

(declare-fun m!8087220 () Bool)

(assert (=> b!7504939 m!8087220))

(declare-fun m!8087222 () Bool)

(assert (=> b!7504939 m!8087222))

(assert (=> b!7504855 d!2303793))

(declare-fun b!7504948 () Bool)

(declare-fun e!4474765 () Bool)

(assert (=> b!7504948 (= e!4474765 (isPrefix!5987 (tail!14984 testedP!204) (tail!14984 lt!2634227)))))

(declare-fun d!2303797 () Bool)

(declare-fun e!4474763 () Bool)

(assert (=> d!2303797 e!4474763))

(declare-fun res!3010860 () Bool)

(assert (=> d!2303797 (=> res!3010860 e!4474763)))

(declare-fun lt!2634257 () Bool)

(assert (=> d!2303797 (= res!3010860 (not lt!2634257))))

(declare-fun e!4474764 () Bool)

(assert (=> d!2303797 (= lt!2634257 e!4474764)))

(declare-fun res!3010857 () Bool)

(assert (=> d!2303797 (=> res!3010857 e!4474764)))

(assert (=> d!2303797 (= res!3010857 ((_ is Nil!72356) testedP!204))))

(assert (=> d!2303797 (= (isPrefix!5987 testedP!204 lt!2634227) lt!2634257)))

(declare-fun b!7504949 () Bool)

(assert (=> b!7504949 (= e!4474763 (>= (size!42264 lt!2634227) (size!42264 testedP!204)))))

(declare-fun b!7504947 () Bool)

(declare-fun res!3010859 () Bool)

(assert (=> b!7504947 (=> (not res!3010859) (not e!4474765))))

(assert (=> b!7504947 (= res!3010859 (= (head!15418 testedP!204) (head!15418 lt!2634227)))))

(declare-fun b!7504946 () Bool)

(assert (=> b!7504946 (= e!4474764 e!4474765)))

(declare-fun res!3010858 () Bool)

(assert (=> b!7504946 (=> (not res!3010858) (not e!4474765))))

(assert (=> b!7504946 (= res!3010858 (not ((_ is Nil!72356) lt!2634227)))))

(assert (= (and d!2303797 (not res!3010857)) b!7504946))

(assert (= (and b!7504946 res!3010858) b!7504947))

(assert (= (and b!7504947 res!3010859) b!7504948))

(assert (= (and d!2303797 (not res!3010860)) b!7504949))

(assert (=> b!7504948 m!8087216))

(declare-fun m!8087232 () Bool)

(assert (=> b!7504948 m!8087232))

(assert (=> b!7504948 m!8087216))

(assert (=> b!7504948 m!8087232))

(declare-fun m!8087234 () Bool)

(assert (=> b!7504948 m!8087234))

(declare-fun m!8087236 () Bool)

(assert (=> b!7504949 m!8087236))

(assert (=> b!7504949 m!8087140))

(assert (=> b!7504947 m!8087220))

(declare-fun m!8087238 () Bool)

(assert (=> b!7504947 m!8087238))

(assert (=> b!7504855 d!2303797))

(declare-fun d!2303801 () Bool)

(assert (=> d!2303801 (isPrefix!5987 testedP!204 (++!17322 testedP!204 testedSuffix!164))))

(declare-fun lt!2634264 () Unit!166336)

(declare-fun choose!58084 (List!72480 List!72480) Unit!166336)

(assert (=> d!2303801 (= lt!2634264 (choose!58084 testedP!204 testedSuffix!164))))

(assert (=> d!2303801 (= (lemmaConcatTwoListThenFirstIsPrefix!3700 testedP!204 testedSuffix!164) lt!2634264)))

(declare-fun bs!1938061 () Bool)

(assert (= bs!1938061 d!2303801))

(assert (=> bs!1938061 m!8087142))

(assert (=> bs!1938061 m!8087142))

(declare-fun m!8087246 () Bool)

(assert (=> bs!1938061 m!8087246))

(declare-fun m!8087248 () Bool)

(assert (=> bs!1938061 m!8087248))

(assert (=> b!7504855 d!2303801))

(declare-fun b!7504962 () Bool)

(declare-fun e!4474773 () Bool)

(declare-fun tp!2178514 () Bool)

(assert (=> b!7504962 (= e!4474773 (and tp_is_empty!49727 tp!2178514))))

(assert (=> b!7504856 (= tp!2178506 e!4474773)))

(assert (= (and b!7504856 ((_ is Cons!72356) (t!387049 testedSuffix!164))) b!7504962))

(declare-fun b!7504964 () Bool)

(declare-fun e!4474775 () Bool)

(declare-fun tp!2178516 () Bool)

(assert (=> b!7504964 (= e!4474775 (and tp_is_empty!49727 tp!2178516))))

(assert (=> b!7504859 (= tp!2178507 e!4474775)))

(assert (= (and b!7504859 ((_ is Cons!72356) (t!387049 totalInput!779))) b!7504964))

(declare-fun b!7504965 () Bool)

(declare-fun e!4474776 () Bool)

(declare-fun tp!2178517 () Bool)

(assert (=> b!7504965 (= e!4474776 (and tp_is_empty!49727 tp!2178517))))

(assert (=> b!7504854 (= tp!2178505 e!4474776)))

(assert (= (and b!7504854 ((_ is Cons!72356) (t!387049 testedP!204))) b!7504965))

(check-sat (not d!2303785) (not b!7504965) (not b!7504941) (not b!7504893) (not b!7504947) (not b!7504916) (not b!7504898) (not b!7504940) tp_is_empty!49727 (not b!7504867) (not b!7504865) (not d!2303787) (not b!7504964) (not d!2303801) (not b!7504949) (not b!7504894) (not b!7504939) (not b!7504948) (not d!2303779) (not b!7504897) (not b!7504962))
(check-sat)
