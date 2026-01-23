; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13574 () Bool)

(assert start!13574)

(declare-fun b!131171 () Bool)

(declare-fun res!60807 () Bool)

(declare-fun e!75669 () Bool)

(assert (=> b!131171 (=> res!60807 e!75669)))

(declare-datatypes ((B!761 0))(
  ( (B!762 (val!866 Int)) )
))
(declare-datatypes ((List!2184 0))(
  ( (Nil!2178) (Cons!2178 (h!7575 B!761) (t!22770 List!2184)) )
))
(declare-fun baseList!9 () List!2184)

(declare-fun lt!39625 () List!2184)

(declare-fun isPrefix!173 (List!2184 List!2184) Bool)

(assert (=> b!131171 (= res!60807 (not (isPrefix!173 baseList!9 lt!39625)))))

(declare-fun b!131172 () Bool)

(declare-fun res!60803 () Bool)

(declare-fun e!75666 () Bool)

(assert (=> b!131172 (=> (not res!60803) (not e!75666))))

(declare-fun lt!39623 () List!2184)

(declare-fun subseq!47 (List!2184 List!2184) Bool)

(assert (=> b!131172 (= res!60803 (subseq!47 lt!39625 lt!39623))))

(declare-fun b!131173 () Bool)

(assert (=> b!131173 (= e!75666 (isPrefix!173 baseList!9 lt!39625))))

(declare-fun b!131174 () Bool)

(declare-fun e!75668 () Bool)

(declare-fun tp_is_empty!1405 () Bool)

(declare-fun tp!70394 () Bool)

(assert (=> b!131174 (= e!75668 (and tp_is_empty!1405 tp!70394))))

(declare-fun b!131175 () Bool)

(declare-fun e!75673 () Bool)

(assert (=> b!131175 (= e!75673 e!75669)))

(declare-fun res!60801 () Bool)

(assert (=> b!131175 (=> res!60801 e!75669)))

(declare-fun lt!39626 () List!2184)

(declare-fun lt!39627 () List!2184)

(assert (=> b!131175 (= res!60801 (not (= lt!39626 lt!39627)))))

(assert (=> b!131175 (= lt!39627 lt!39626)))

(declare-fun newList!20 () List!2184)

(declare-fun lt!39624 () List!2184)

(declare-fun ++!454 (List!2184 List!2184) List!2184)

(assert (=> b!131175 (= lt!39626 (++!454 baseList!9 (++!454 lt!39624 (t!22770 newList!20))))))

(declare-datatypes ((Unit!1736 0))(
  ( (Unit!1737) )
))
(declare-fun lt!39619 () Unit!1736)

(declare-fun lemmaConcatAssociativity!136 (List!2184 List!2184 List!2184) Unit!1736)

(assert (=> b!131175 (= lt!39619 (lemmaConcatAssociativity!136 baseList!9 lt!39624 (t!22770 newList!20)))))

(assert (=> b!131175 (subseq!47 lt!39625 lt!39627)))

(assert (=> b!131175 (= lt!39627 (++!454 (++!454 baseList!9 lt!39624) (t!22770 newList!20)))))

(declare-fun lt!39620 () Unit!1736)

(declare-fun lemmaBiggerSndListPreservesSubSeq!10 (List!2184 List!2184 List!2184 List!2184) Unit!1736)

(assert (=> b!131175 (= lt!39620 (lemmaBiggerSndListPreservesSubSeq!10 lt!39625 baseList!9 (t!22770 newList!20) lt!39624))))

(assert (=> b!131175 (= lt!39624 (Cons!2178 (h!7575 newList!20) Nil!2178))))

(declare-fun b!131176 () Bool)

(declare-fun ListPrimitiveSize!22 (List!2184) Int)

(assert (=> b!131176 (= e!75669 (< (ListPrimitiveSize!22 (t!22770 newList!20)) (ListPrimitiveSize!22 newList!20)))))

(declare-fun b!131177 () Bool)

(declare-fun res!60810 () Bool)

(declare-fun e!75670 () Bool)

(assert (=> b!131177 (=> (not res!60810) (not e!75670))))

(get-info :version)

(assert (=> b!131177 (= res!60810 ((_ is Cons!2178) newList!20))))

(declare-fun b!131178 () Bool)

(declare-fun e!75671 () Bool)

(assert (=> b!131178 (= e!75671 e!75673)))

(declare-fun res!60808 () Bool)

(assert (=> b!131178 (=> res!60808 e!75673)))

(declare-fun lt!39628 () List!2184)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!291 (List!2184) (InoxSet B!761))

(assert (=> b!131178 (= res!60808 (not (= (content!291 lt!39628) (content!291 lt!39625))))))

(assert (=> b!131178 (= lt!39628 (++!454 baseList!9 (t!22770 newList!20)))))

(declare-fun res!60806 () Bool)

(assert (=> start!13574 (=> (not res!60806) (not e!75670))))

(declare-fun noDuplicate!74 (List!2184) Bool)

(assert (=> start!13574 (= res!60806 (noDuplicate!74 baseList!9))))

(assert (=> start!13574 e!75670))

(declare-fun e!75667 () Bool)

(assert (=> start!13574 e!75667))

(assert (=> start!13574 e!75668))

(declare-fun b!131179 () Bool)

(declare-fun res!60805 () Bool)

(assert (=> b!131179 (=> res!60805 e!75669)))

(assert (=> b!131179 (= res!60805 (not (subseq!47 lt!39625 lt!39626)))))

(declare-fun b!131180 () Bool)

(declare-fun res!60804 () Bool)

(assert (=> b!131180 (=> res!60804 e!75673)))

(assert (=> b!131180 (= res!60804 (not (subseq!47 lt!39625 lt!39628)))))

(declare-fun b!131181 () Bool)

(declare-fun e!75672 () Bool)

(assert (=> b!131181 (= e!75672 e!75666)))

(declare-fun res!60812 () Bool)

(assert (=> b!131181 (=> (not res!60812) (not e!75666))))

(assert (=> b!131181 (= res!60812 (= (content!291 lt!39623) (content!291 lt!39625)))))

(assert (=> b!131181 (= lt!39623 (++!454 baseList!9 (t!22770 newList!20)))))

(declare-fun b!131182 () Bool)

(declare-fun res!60811 () Bool)

(assert (=> b!131182 (=> (not res!60811) (not e!75670))))

(declare-fun contains!358 (List!2184 B!761) Bool)

(assert (=> b!131182 (= res!60811 (contains!358 baseList!9 (h!7575 newList!20)))))

(declare-fun b!131183 () Bool)

(declare-fun tp!70393 () Bool)

(assert (=> b!131183 (= e!75667 (and tp_is_empty!1405 tp!70393))))

(declare-fun b!131184 () Bool)

(assert (=> b!131184 (= e!75670 (not e!75671))))

(declare-fun res!60802 () Bool)

(assert (=> b!131184 (=> res!60802 e!75671)))

(declare-fun lt!39622 () Bool)

(assert (=> b!131184 (= res!60802 lt!39622)))

(assert (=> b!131184 e!75672))

(declare-fun res!60809 () Bool)

(assert (=> b!131184 (=> (not res!60809) (not e!75672))))

(assert (=> b!131184 (= res!60809 (not lt!39622))))

(assert (=> b!131184 (= lt!39622 (not (noDuplicate!74 lt!39625)))))

(declare-fun concatWithoutDuplicates!32 (List!2184 List!2184) List!2184)

(assert (=> b!131184 (= lt!39625 (concatWithoutDuplicates!32 baseList!9 (t!22770 newList!20)))))

(assert (=> b!131184 (subseq!47 baseList!9 baseList!9)))

(declare-fun lt!39621 () Unit!1736)

(declare-fun lemmaSubseqRefl!34 (List!2184) Unit!1736)

(assert (=> b!131184 (= lt!39621 (lemmaSubseqRefl!34 baseList!9))))

(assert (= (and start!13574 res!60806) b!131177))

(assert (= (and b!131177 res!60810) b!131182))

(assert (= (and b!131182 res!60811) b!131184))

(assert (= (and b!131184 res!60809) b!131181))

(assert (= (and b!131181 res!60812) b!131172))

(assert (= (and b!131172 res!60803) b!131173))

(assert (= (and b!131184 (not res!60802)) b!131178))

(assert (= (and b!131178 (not res!60808)) b!131180))

(assert (= (and b!131180 (not res!60804)) b!131175))

(assert (= (and b!131175 (not res!60801)) b!131179))

(assert (= (and b!131179 (not res!60805)) b!131171))

(assert (= (and b!131171 (not res!60807)) b!131176))

(assert (= (and start!13574 ((_ is Cons!2178) baseList!9)) b!131183))

(assert (= (and start!13574 ((_ is Cons!2178) newList!20)) b!131174))

(declare-fun m!115787 () Bool)

(assert (=> start!13574 m!115787))

(declare-fun m!115789 () Bool)

(assert (=> b!131180 m!115789))

(declare-fun m!115791 () Bool)

(assert (=> b!131173 m!115791))

(declare-fun m!115793 () Bool)

(assert (=> b!131178 m!115793))

(declare-fun m!115795 () Bool)

(assert (=> b!131178 m!115795))

(declare-fun m!115797 () Bool)

(assert (=> b!131178 m!115797))

(assert (=> b!131171 m!115791))

(declare-fun m!115799 () Bool)

(assert (=> b!131172 m!115799))

(declare-fun m!115801 () Bool)

(assert (=> b!131182 m!115801))

(declare-fun m!115803 () Bool)

(assert (=> b!131179 m!115803))

(declare-fun m!115805 () Bool)

(assert (=> b!131181 m!115805))

(assert (=> b!131181 m!115795))

(assert (=> b!131181 m!115797))

(declare-fun m!115807 () Bool)

(assert (=> b!131175 m!115807))

(declare-fun m!115809 () Bool)

(assert (=> b!131175 m!115809))

(declare-fun m!115811 () Bool)

(assert (=> b!131175 m!115811))

(assert (=> b!131175 m!115809))

(declare-fun m!115813 () Bool)

(assert (=> b!131175 m!115813))

(declare-fun m!115815 () Bool)

(assert (=> b!131175 m!115815))

(declare-fun m!115817 () Bool)

(assert (=> b!131175 m!115817))

(assert (=> b!131175 m!115813))

(declare-fun m!115819 () Bool)

(assert (=> b!131175 m!115819))

(declare-fun m!115821 () Bool)

(assert (=> b!131184 m!115821))

(declare-fun m!115823 () Bool)

(assert (=> b!131184 m!115823))

(declare-fun m!115825 () Bool)

(assert (=> b!131184 m!115825))

(declare-fun m!115827 () Bool)

(assert (=> b!131184 m!115827))

(declare-fun m!115829 () Bool)

(assert (=> b!131176 m!115829))

(declare-fun m!115831 () Bool)

(assert (=> b!131176 m!115831))

(check-sat (not b!131176) tp_is_empty!1405 (not b!131184) (not b!131183) (not b!131178) (not b!131173) (not b!131181) (not b!131182) (not b!131175) (not b!131171) (not b!131174) (not b!131180) (not b!131172) (not start!13574) (not b!131179))
(check-sat)
(get-model)

(declare-fun b!131194 () Bool)

(declare-fun res!60821 () Bool)

(declare-fun e!75682 () Bool)

(assert (=> b!131194 (=> (not res!60821) (not e!75682))))

(declare-fun head!519 (List!2184) B!761)

(assert (=> b!131194 (= res!60821 (= (head!519 baseList!9) (head!519 lt!39625)))))

(declare-fun b!131196 () Bool)

(declare-fun e!75681 () Bool)

(declare-fun size!1981 (List!2184) Int)

(assert (=> b!131196 (= e!75681 (>= (size!1981 lt!39625) (size!1981 baseList!9)))))

(declare-fun b!131195 () Bool)

(declare-fun tail!265 (List!2184) List!2184)

(assert (=> b!131195 (= e!75682 (isPrefix!173 (tail!265 baseList!9) (tail!265 lt!39625)))))

(declare-fun b!131193 () Bool)

(declare-fun e!75680 () Bool)

(assert (=> b!131193 (= e!75680 e!75682)))

(declare-fun res!60823 () Bool)

(assert (=> b!131193 (=> (not res!60823) (not e!75682))))

(assert (=> b!131193 (= res!60823 (not ((_ is Nil!2178) lt!39625)))))

(declare-fun d!30926 () Bool)

(assert (=> d!30926 e!75681))

(declare-fun res!60822 () Bool)

(assert (=> d!30926 (=> res!60822 e!75681)))

(declare-fun lt!39631 () Bool)

(assert (=> d!30926 (= res!60822 (not lt!39631))))

(assert (=> d!30926 (= lt!39631 e!75680)))

(declare-fun res!60824 () Bool)

(assert (=> d!30926 (=> res!60824 e!75680)))

(assert (=> d!30926 (= res!60824 ((_ is Nil!2178) baseList!9))))

(assert (=> d!30926 (= (isPrefix!173 baseList!9 lt!39625) lt!39631)))

(assert (= (and d!30926 (not res!60824)) b!131193))

(assert (= (and b!131193 res!60823) b!131194))

(assert (= (and b!131194 res!60821) b!131195))

(assert (= (and d!30926 (not res!60822)) b!131196))

(declare-fun m!115833 () Bool)

(assert (=> b!131194 m!115833))

(declare-fun m!115835 () Bool)

(assert (=> b!131194 m!115835))

(declare-fun m!115837 () Bool)

(assert (=> b!131196 m!115837))

(declare-fun m!115839 () Bool)

(assert (=> b!131196 m!115839))

(declare-fun m!115841 () Bool)

(assert (=> b!131195 m!115841))

(declare-fun m!115843 () Bool)

(assert (=> b!131195 m!115843))

(assert (=> b!131195 m!115841))

(assert (=> b!131195 m!115843))

(declare-fun m!115845 () Bool)

(assert (=> b!131195 m!115845))

(assert (=> b!131171 d!30926))

(declare-fun d!30930 () Bool)

(declare-fun c!28331 () Bool)

(assert (=> d!30930 (= c!28331 ((_ is Nil!2178) lt!39623))))

(declare-fun e!75685 () (InoxSet B!761))

(assert (=> d!30930 (= (content!291 lt!39623) e!75685)))

(declare-fun b!131201 () Bool)

(assert (=> b!131201 (= e!75685 ((as const (Array B!761 Bool)) false))))

(declare-fun b!131202 () Bool)

(assert (=> b!131202 (= e!75685 ((_ map or) (store ((as const (Array B!761 Bool)) false) (h!7575 lt!39623) true) (content!291 (t!22770 lt!39623))))))

(assert (= (and d!30930 c!28331) b!131201))

(assert (= (and d!30930 (not c!28331)) b!131202))

(declare-fun m!115849 () Bool)

(assert (=> b!131202 m!115849))

(declare-fun m!115851 () Bool)

(assert (=> b!131202 m!115851))

(assert (=> b!131181 d!30930))

(declare-fun d!30934 () Bool)

(declare-fun c!28332 () Bool)

(assert (=> d!30934 (= c!28332 ((_ is Nil!2178) lt!39625))))

(declare-fun e!75686 () (InoxSet B!761))

(assert (=> d!30934 (= (content!291 lt!39625) e!75686)))

(declare-fun b!131203 () Bool)

(assert (=> b!131203 (= e!75686 ((as const (Array B!761 Bool)) false))))

(declare-fun b!131204 () Bool)

(assert (=> b!131204 (= e!75686 ((_ map or) (store ((as const (Array B!761 Bool)) false) (h!7575 lt!39625) true) (content!291 (t!22770 lt!39625))))))

(assert (= (and d!30934 c!28332) b!131203))

(assert (= (and d!30934 (not c!28332)) b!131204))

(declare-fun m!115853 () Bool)

(assert (=> b!131204 m!115853))

(declare-fun m!115855 () Bool)

(assert (=> b!131204 m!115855))

(assert (=> b!131181 d!30934))

(declare-fun b!131227 () Bool)

(declare-fun res!60835 () Bool)

(declare-fun e!75698 () Bool)

(assert (=> b!131227 (=> (not res!60835) (not e!75698))))

(declare-fun lt!39640 () List!2184)

(assert (=> b!131227 (= res!60835 (= (size!1981 lt!39640) (+ (size!1981 baseList!9) (size!1981 (t!22770 newList!20)))))))

(declare-fun b!131225 () Bool)

(declare-fun e!75697 () List!2184)

(assert (=> b!131225 (= e!75697 (t!22770 newList!20))))

(declare-fun d!30936 () Bool)

(assert (=> d!30936 e!75698))

(declare-fun res!60836 () Bool)

(assert (=> d!30936 (=> (not res!60836) (not e!75698))))

(assert (=> d!30936 (= res!60836 (= (content!291 lt!39640) ((_ map or) (content!291 baseList!9) (content!291 (t!22770 newList!20)))))))

(assert (=> d!30936 (= lt!39640 e!75697)))

(declare-fun c!28338 () Bool)

(assert (=> d!30936 (= c!28338 ((_ is Nil!2178) baseList!9))))

(assert (=> d!30936 (= (++!454 baseList!9 (t!22770 newList!20)) lt!39640)))

(declare-fun b!131226 () Bool)

(assert (=> b!131226 (= e!75697 (Cons!2178 (h!7575 baseList!9) (++!454 (t!22770 baseList!9) (t!22770 newList!20))))))

(declare-fun b!131228 () Bool)

(assert (=> b!131228 (= e!75698 (or (not (= (t!22770 newList!20) Nil!2178)) (= lt!39640 baseList!9)))))

(assert (= (and d!30936 c!28338) b!131225))

(assert (= (and d!30936 (not c!28338)) b!131226))

(assert (= (and d!30936 res!60836) b!131227))

(assert (= (and b!131227 res!60835) b!131228))

(declare-fun m!115871 () Bool)

(assert (=> b!131227 m!115871))

(assert (=> b!131227 m!115839))

(declare-fun m!115873 () Bool)

(assert (=> b!131227 m!115873))

(declare-fun m!115875 () Bool)

(assert (=> d!30936 m!115875))

(declare-fun m!115877 () Bool)

(assert (=> d!30936 m!115877))

(declare-fun m!115879 () Bool)

(assert (=> d!30936 m!115879))

(declare-fun m!115881 () Bool)

(assert (=> b!131226 m!115881))

(assert (=> b!131181 d!30936))

(declare-fun b!131247 () Bool)

(declare-fun e!75713 () Bool)

(assert (=> b!131247 (= e!75713 (subseq!47 (t!22770 lt!39625) (t!22770 lt!39623)))))

(declare-fun b!131246 () Bool)

(declare-fun e!75714 () Bool)

(declare-fun e!75712 () Bool)

(assert (=> b!131246 (= e!75714 e!75712)))

(declare-fun res!60849 () Bool)

(assert (=> b!131246 (=> res!60849 e!75712)))

(assert (=> b!131246 (= res!60849 e!75713)))

(declare-fun res!60851 () Bool)

(assert (=> b!131246 (=> (not res!60851) (not e!75713))))

(assert (=> b!131246 (= res!60851 (= (h!7575 lt!39625) (h!7575 lt!39623)))))

(declare-fun d!30940 () Bool)

(declare-fun res!60850 () Bool)

(declare-fun e!75711 () Bool)

(assert (=> d!30940 (=> res!60850 e!75711)))

(assert (=> d!30940 (= res!60850 ((_ is Nil!2178) lt!39625))))

(assert (=> d!30940 (= (subseq!47 lt!39625 lt!39623) e!75711)))

(declare-fun b!131245 () Bool)

(assert (=> b!131245 (= e!75711 e!75714)))

(declare-fun res!60852 () Bool)

(assert (=> b!131245 (=> (not res!60852) (not e!75714))))

(assert (=> b!131245 (= res!60852 ((_ is Cons!2178) lt!39623))))

(declare-fun b!131248 () Bool)

(assert (=> b!131248 (= e!75712 (subseq!47 lt!39625 (t!22770 lt!39623)))))

(assert (= (and d!30940 (not res!60850)) b!131245))

(assert (= (and b!131245 res!60852) b!131246))

(assert (= (and b!131246 res!60851) b!131247))

(assert (= (and b!131246 (not res!60849)) b!131248))

(declare-fun m!115909 () Bool)

(assert (=> b!131247 m!115909))

(declare-fun m!115911 () Bool)

(assert (=> b!131248 m!115911))

(assert (=> b!131172 d!30940))

(declare-fun d!30948 () Bool)

(declare-fun res!60869 () Bool)

(declare-fun e!75731 () Bool)

(assert (=> d!30948 (=> res!60869 e!75731)))

(assert (=> d!30948 (= res!60869 ((_ is Nil!2178) baseList!9))))

(assert (=> d!30948 (= (noDuplicate!74 baseList!9) e!75731)))

(declare-fun b!131265 () Bool)

(declare-fun e!75732 () Bool)

(assert (=> b!131265 (= e!75731 e!75732)))

(declare-fun res!60870 () Bool)

(assert (=> b!131265 (=> (not res!60870) (not e!75732))))

(assert (=> b!131265 (= res!60870 (not (contains!358 (t!22770 baseList!9) (h!7575 baseList!9))))))

(declare-fun b!131266 () Bool)

(assert (=> b!131266 (= e!75732 (noDuplicate!74 (t!22770 baseList!9)))))

(assert (= (and d!30948 (not res!60869)) b!131265))

(assert (= (and b!131265 res!60870) b!131266))

(declare-fun m!115917 () Bool)

(assert (=> b!131265 m!115917))

(declare-fun m!115919 () Bool)

(assert (=> b!131266 m!115919))

(assert (=> start!13574 d!30948))

(declare-fun d!30952 () Bool)

(declare-fun lt!39649 () Bool)

(assert (=> d!30952 (= lt!39649 (select (content!291 baseList!9) (h!7575 newList!20)))))

(declare-fun e!75746 () Bool)

(assert (=> d!30952 (= lt!39649 e!75746)))

(declare-fun res!60884 () Bool)

(assert (=> d!30952 (=> (not res!60884) (not e!75746))))

(assert (=> d!30952 (= res!60884 ((_ is Cons!2178) baseList!9))))

(assert (=> d!30952 (= (contains!358 baseList!9 (h!7575 newList!20)) lt!39649)))

(declare-fun b!131281 () Bool)

(declare-fun e!75745 () Bool)

(assert (=> b!131281 (= e!75746 e!75745)))

(declare-fun res!60883 () Bool)

(assert (=> b!131281 (=> res!60883 e!75745)))

(assert (=> b!131281 (= res!60883 (= (h!7575 baseList!9) (h!7575 newList!20)))))

(declare-fun b!131282 () Bool)

(assert (=> b!131282 (= e!75745 (contains!358 (t!22770 baseList!9) (h!7575 newList!20)))))

(assert (= (and d!30952 res!60884) b!131281))

(assert (= (and b!131281 (not res!60883)) b!131282))

(assert (=> d!30952 m!115877))

(declare-fun m!115935 () Bool)

(assert (=> d!30952 m!115935))

(declare-fun m!115937 () Bool)

(assert (=> b!131282 m!115937))

(assert (=> b!131182 d!30952))

(declare-fun b!131285 () Bool)

(declare-fun e!75749 () Bool)

(assert (=> b!131285 (= e!75749 (subseq!47 (t!22770 lt!39625) (t!22770 lt!39626)))))

(declare-fun b!131284 () Bool)

(declare-fun e!75750 () Bool)

(declare-fun e!75748 () Bool)

(assert (=> b!131284 (= e!75750 e!75748)))

(declare-fun res!60885 () Bool)

(assert (=> b!131284 (=> res!60885 e!75748)))

(assert (=> b!131284 (= res!60885 e!75749)))

(declare-fun res!60887 () Bool)

(assert (=> b!131284 (=> (not res!60887) (not e!75749))))

(assert (=> b!131284 (= res!60887 (= (h!7575 lt!39625) (h!7575 lt!39626)))))

(declare-fun d!30958 () Bool)

(declare-fun res!60886 () Bool)

(declare-fun e!75747 () Bool)

(assert (=> d!30958 (=> res!60886 e!75747)))

(assert (=> d!30958 (= res!60886 ((_ is Nil!2178) lt!39625))))

(assert (=> d!30958 (= (subseq!47 lt!39625 lt!39626) e!75747)))

(declare-fun b!131283 () Bool)

(assert (=> b!131283 (= e!75747 e!75750)))

(declare-fun res!60888 () Bool)

(assert (=> b!131283 (=> (not res!60888) (not e!75750))))

(assert (=> b!131283 (= res!60888 ((_ is Cons!2178) lt!39626))))

(declare-fun b!131286 () Bool)

(assert (=> b!131286 (= e!75748 (subseq!47 lt!39625 (t!22770 lt!39626)))))

(assert (= (and d!30958 (not res!60886)) b!131283))

(assert (= (and b!131283 res!60888) b!131284))

(assert (= (and b!131284 res!60887) b!131285))

(assert (= (and b!131284 (not res!60885)) b!131286))

(declare-fun m!115939 () Bool)

(assert (=> b!131285 m!115939))

(declare-fun m!115941 () Bool)

(assert (=> b!131286 m!115941))

(assert (=> b!131179 d!30958))

(declare-fun d!30960 () Bool)

(declare-fun c!28342 () Bool)

(assert (=> d!30960 (= c!28342 ((_ is Nil!2178) lt!39628))))

(declare-fun e!75751 () (InoxSet B!761))

(assert (=> d!30960 (= (content!291 lt!39628) e!75751)))

(declare-fun b!131287 () Bool)

(assert (=> b!131287 (= e!75751 ((as const (Array B!761 Bool)) false))))

(declare-fun b!131288 () Bool)

(assert (=> b!131288 (= e!75751 ((_ map or) (store ((as const (Array B!761 Bool)) false) (h!7575 lt!39628) true) (content!291 (t!22770 lt!39628))))))

(assert (= (and d!30960 c!28342) b!131287))

(assert (= (and d!30960 (not c!28342)) b!131288))

(declare-fun m!115943 () Bool)

(assert (=> b!131288 m!115943))

(declare-fun m!115945 () Bool)

(assert (=> b!131288 m!115945))

(assert (=> b!131178 d!30960))

(assert (=> b!131178 d!30934))

(assert (=> b!131178 d!30936))

(declare-fun b!131291 () Bool)

(declare-fun e!75754 () Bool)

(assert (=> b!131291 (= e!75754 (subseq!47 (t!22770 lt!39625) (t!22770 lt!39628)))))

(declare-fun b!131290 () Bool)

(declare-fun e!75755 () Bool)

(declare-fun e!75753 () Bool)

(assert (=> b!131290 (= e!75755 e!75753)))

(declare-fun res!60889 () Bool)

(assert (=> b!131290 (=> res!60889 e!75753)))

(assert (=> b!131290 (= res!60889 e!75754)))

(declare-fun res!60891 () Bool)

(assert (=> b!131290 (=> (not res!60891) (not e!75754))))

(assert (=> b!131290 (= res!60891 (= (h!7575 lt!39625) (h!7575 lt!39628)))))

(declare-fun d!30962 () Bool)

(declare-fun res!60890 () Bool)

(declare-fun e!75752 () Bool)

(assert (=> d!30962 (=> res!60890 e!75752)))

(assert (=> d!30962 (= res!60890 ((_ is Nil!2178) lt!39625))))

(assert (=> d!30962 (= (subseq!47 lt!39625 lt!39628) e!75752)))

(declare-fun b!131289 () Bool)

(assert (=> b!131289 (= e!75752 e!75755)))

(declare-fun res!60892 () Bool)

(assert (=> b!131289 (=> (not res!60892) (not e!75755))))

(assert (=> b!131289 (= res!60892 ((_ is Cons!2178) lt!39628))))

(declare-fun b!131292 () Bool)

(assert (=> b!131292 (= e!75753 (subseq!47 lt!39625 (t!22770 lt!39628)))))

(assert (= (and d!30962 (not res!60890)) b!131289))

(assert (= (and b!131289 res!60892) b!131290))

(assert (= (and b!131290 res!60891) b!131291))

(assert (= (and b!131290 (not res!60889)) b!131292))

(declare-fun m!115947 () Bool)

(assert (=> b!131291 m!115947))

(declare-fun m!115949 () Bool)

(assert (=> b!131292 m!115949))

(assert (=> b!131180 d!30962))

(declare-fun d!30964 () Bool)

(declare-fun lt!39655 () Int)

(assert (=> d!30964 (>= lt!39655 0)))

(declare-fun e!75763 () Int)

(assert (=> d!30964 (= lt!39655 e!75763)))

(declare-fun c!28345 () Bool)

(assert (=> d!30964 (= c!28345 ((_ is Nil!2178) (t!22770 newList!20)))))

(assert (=> d!30964 (= (ListPrimitiveSize!22 (t!22770 newList!20)) lt!39655)))

(declare-fun b!131306 () Bool)

(assert (=> b!131306 (= e!75763 0)))

(declare-fun b!131307 () Bool)

(assert (=> b!131307 (= e!75763 (+ 1 (ListPrimitiveSize!22 (t!22770 (t!22770 newList!20)))))))

(assert (= (and d!30964 c!28345) b!131306))

(assert (= (and d!30964 (not c!28345)) b!131307))

(declare-fun m!115963 () Bool)

(assert (=> b!131307 m!115963))

(assert (=> b!131176 d!30964))

(declare-fun d!30968 () Bool)

(declare-fun lt!39656 () Int)

(assert (=> d!30968 (>= lt!39656 0)))

(declare-fun e!75766 () Int)

(assert (=> d!30968 (= lt!39656 e!75766)))

(declare-fun c!28346 () Bool)

(assert (=> d!30968 (= c!28346 ((_ is Nil!2178) newList!20))))

(assert (=> d!30968 (= (ListPrimitiveSize!22 newList!20) lt!39656)))

(declare-fun b!131312 () Bool)

(assert (=> b!131312 (= e!75766 0)))

(declare-fun b!131313 () Bool)

(assert (=> b!131313 (= e!75766 (+ 1 (ListPrimitiveSize!22 (t!22770 newList!20))))))

(assert (= (and d!30968 c!28346) b!131312))

(assert (= (and d!30968 (not c!28346)) b!131313))

(assert (=> b!131313 m!115829))

(assert (=> b!131176 d!30968))

(declare-fun d!30972 () Bool)

(declare-fun res!60906 () Bool)

(declare-fun e!75767 () Bool)

(assert (=> d!30972 (=> res!60906 e!75767)))

(assert (=> d!30972 (= res!60906 ((_ is Nil!2178) lt!39625))))

(assert (=> d!30972 (= (noDuplicate!74 lt!39625) e!75767)))

(declare-fun b!131314 () Bool)

(declare-fun e!75768 () Bool)

(assert (=> b!131314 (= e!75767 e!75768)))

(declare-fun res!60907 () Bool)

(assert (=> b!131314 (=> (not res!60907) (not e!75768))))

(assert (=> b!131314 (= res!60907 (not (contains!358 (t!22770 lt!39625) (h!7575 lt!39625))))))

(declare-fun b!131315 () Bool)

(assert (=> b!131315 (= e!75768 (noDuplicate!74 (t!22770 lt!39625)))))

(assert (= (and d!30972 (not res!60906)) b!131314))

(assert (= (and b!131314 res!60907) b!131315))

(declare-fun m!115969 () Bool)

(assert (=> b!131314 m!115969))

(declare-fun m!115971 () Bool)

(assert (=> b!131315 m!115971))

(assert (=> b!131184 d!30972))

(declare-fun d!30974 () Bool)

(declare-fun e!75792 () Bool)

(assert (=> d!30974 e!75792))

(declare-fun res!60939 () Bool)

(assert (=> d!30974 (=> (not res!60939) (not e!75792))))

(declare-fun lt!39665 () List!2184)

(assert (=> d!30974 (= res!60939 (noDuplicate!74 lt!39665))))

(declare-fun choose!1662 (List!2184 List!2184) List!2184)

(assert (=> d!30974 (= lt!39665 (choose!1662 baseList!9 (t!22770 newList!20)))))

(assert (=> d!30974 (noDuplicate!74 baseList!9)))

(assert (=> d!30974 (= (concatWithoutDuplicates!32 baseList!9 (t!22770 newList!20)) lt!39665)))

(declare-fun b!131346 () Bool)

(declare-fun res!60940 () Bool)

(assert (=> b!131346 (=> (not res!60940) (not e!75792))))

(assert (=> b!131346 (= res!60940 (= (content!291 (++!454 baseList!9 (t!22770 newList!20))) (content!291 lt!39665)))))

(declare-fun b!131347 () Bool)

(declare-fun res!60938 () Bool)

(assert (=> b!131347 (=> (not res!60938) (not e!75792))))

(assert (=> b!131347 (= res!60938 (subseq!47 lt!39665 (++!454 baseList!9 (t!22770 newList!20))))))

(declare-fun b!131348 () Bool)

(assert (=> b!131348 (= e!75792 (isPrefix!173 baseList!9 lt!39665))))

(assert (= (and d!30974 res!60939) b!131346))

(assert (= (and b!131346 res!60940) b!131347))

(assert (= (and b!131347 res!60938) b!131348))

(declare-fun m!116003 () Bool)

(assert (=> d!30974 m!116003))

(declare-fun m!116005 () Bool)

(assert (=> d!30974 m!116005))

(assert (=> d!30974 m!115787))

(assert (=> b!131346 m!115797))

(assert (=> b!131346 m!115797))

(declare-fun m!116007 () Bool)

(assert (=> b!131346 m!116007))

(declare-fun m!116009 () Bool)

(assert (=> b!131346 m!116009))

(assert (=> b!131347 m!115797))

(assert (=> b!131347 m!115797))

(declare-fun m!116011 () Bool)

(assert (=> b!131347 m!116011))

(declare-fun m!116013 () Bool)

(assert (=> b!131348 m!116013))

(assert (=> b!131184 d!30974))

(declare-fun b!131353 () Bool)

(declare-fun e!75797 () Bool)

(assert (=> b!131353 (= e!75797 (subseq!47 (t!22770 baseList!9) (t!22770 baseList!9)))))

(declare-fun b!131352 () Bool)

(declare-fun e!75798 () Bool)

(declare-fun e!75796 () Bool)

(assert (=> b!131352 (= e!75798 e!75796)))

(declare-fun res!60943 () Bool)

(assert (=> b!131352 (=> res!60943 e!75796)))

(assert (=> b!131352 (= res!60943 e!75797)))

(declare-fun res!60945 () Bool)

(assert (=> b!131352 (=> (not res!60945) (not e!75797))))

(assert (=> b!131352 (= res!60945 (= (h!7575 baseList!9) (h!7575 baseList!9)))))

(declare-fun d!30988 () Bool)

(declare-fun res!60944 () Bool)

(declare-fun e!75795 () Bool)

(assert (=> d!30988 (=> res!60944 e!75795)))

(assert (=> d!30988 (= res!60944 ((_ is Nil!2178) baseList!9))))

(assert (=> d!30988 (= (subseq!47 baseList!9 baseList!9) e!75795)))

(declare-fun b!131351 () Bool)

(assert (=> b!131351 (= e!75795 e!75798)))

(declare-fun res!60946 () Bool)

(assert (=> b!131351 (=> (not res!60946) (not e!75798))))

(assert (=> b!131351 (= res!60946 ((_ is Cons!2178) baseList!9))))

(declare-fun b!131354 () Bool)

(assert (=> b!131354 (= e!75796 (subseq!47 baseList!9 (t!22770 baseList!9)))))

(assert (= (and d!30988 (not res!60944)) b!131351))

(assert (= (and b!131351 res!60946) b!131352))

(assert (= (and b!131352 res!60945) b!131353))

(assert (= (and b!131352 (not res!60943)) b!131354))

(declare-fun m!116015 () Bool)

(assert (=> b!131353 m!116015))

(declare-fun m!116017 () Bool)

(assert (=> b!131354 m!116017))

(assert (=> b!131184 d!30988))

(declare-fun d!30990 () Bool)

(assert (=> d!30990 (subseq!47 baseList!9 baseList!9)))

(declare-fun lt!39669 () Unit!1736)

(declare-fun choose!1663 (List!2184) Unit!1736)

(assert (=> d!30990 (= lt!39669 (choose!1663 baseList!9))))

(assert (=> d!30990 (= (lemmaSubseqRefl!34 baseList!9) lt!39669)))

(declare-fun bs!12625 () Bool)

(assert (= bs!12625 d!30990))

(assert (=> bs!12625 m!115825))

(declare-fun m!116031 () Bool)

(assert (=> bs!12625 m!116031))

(assert (=> b!131184 d!30990))

(assert (=> b!131173 d!30926))

(declare-fun b!131371 () Bool)

(declare-fun e!75808 () Bool)

(assert (=> b!131371 (= e!75808 (subseq!47 (t!22770 lt!39625) (t!22770 lt!39627)))))

(declare-fun b!131370 () Bool)

(declare-fun e!75809 () Bool)

(declare-fun e!75807 () Bool)

(assert (=> b!131370 (= e!75809 e!75807)))

(declare-fun res!60949 () Bool)

(assert (=> b!131370 (=> res!60949 e!75807)))

(assert (=> b!131370 (= res!60949 e!75808)))

(declare-fun res!60951 () Bool)

(assert (=> b!131370 (=> (not res!60951) (not e!75808))))

(assert (=> b!131370 (= res!60951 (= (h!7575 lt!39625) (h!7575 lt!39627)))))

(declare-fun d!30996 () Bool)

(declare-fun res!60950 () Bool)

(declare-fun e!75806 () Bool)

(assert (=> d!30996 (=> res!60950 e!75806)))

(assert (=> d!30996 (= res!60950 ((_ is Nil!2178) lt!39625))))

(assert (=> d!30996 (= (subseq!47 lt!39625 lt!39627) e!75806)))

(declare-fun b!131369 () Bool)

(assert (=> b!131369 (= e!75806 e!75809)))

(declare-fun res!60952 () Bool)

(assert (=> b!131369 (=> (not res!60952) (not e!75809))))

(assert (=> b!131369 (= res!60952 ((_ is Cons!2178) lt!39627))))

(declare-fun b!131372 () Bool)

(assert (=> b!131372 (= e!75807 (subseq!47 lt!39625 (t!22770 lt!39627)))))

(assert (= (and d!30996 (not res!60950)) b!131369))

(assert (= (and b!131369 res!60952) b!131370))

(assert (= (and b!131370 res!60951) b!131371))

(assert (= (and b!131370 (not res!60949)) b!131372))

(declare-fun m!116039 () Bool)

(assert (=> b!131371 m!116039))

(declare-fun m!116041 () Bool)

(assert (=> b!131372 m!116041))

(assert (=> b!131175 d!30996))

(declare-fun b!131375 () Bool)

(declare-fun res!60953 () Bool)

(declare-fun e!75811 () Bool)

(assert (=> b!131375 (=> (not res!60953) (not e!75811))))

(declare-fun lt!39670 () List!2184)

(assert (=> b!131375 (= res!60953 (= (size!1981 lt!39670) (+ (size!1981 (++!454 baseList!9 lt!39624)) (size!1981 (t!22770 newList!20)))))))

(declare-fun b!131373 () Bool)

(declare-fun e!75810 () List!2184)

(assert (=> b!131373 (= e!75810 (t!22770 newList!20))))

(declare-fun d!31002 () Bool)

(assert (=> d!31002 e!75811))

(declare-fun res!60954 () Bool)

(assert (=> d!31002 (=> (not res!60954) (not e!75811))))

(assert (=> d!31002 (= res!60954 (= (content!291 lt!39670) ((_ map or) (content!291 (++!454 baseList!9 lt!39624)) (content!291 (t!22770 newList!20)))))))

(assert (=> d!31002 (= lt!39670 e!75810)))

(declare-fun c!28353 () Bool)

(assert (=> d!31002 (= c!28353 ((_ is Nil!2178) (++!454 baseList!9 lt!39624)))))

(assert (=> d!31002 (= (++!454 (++!454 baseList!9 lt!39624) (t!22770 newList!20)) lt!39670)))

(declare-fun b!131374 () Bool)

(assert (=> b!131374 (= e!75810 (Cons!2178 (h!7575 (++!454 baseList!9 lt!39624)) (++!454 (t!22770 (++!454 baseList!9 lt!39624)) (t!22770 newList!20))))))

(declare-fun b!131376 () Bool)

(assert (=> b!131376 (= e!75811 (or (not (= (t!22770 newList!20) Nil!2178)) (= lt!39670 (++!454 baseList!9 lt!39624))))))

(assert (= (and d!31002 c!28353) b!131373))

(assert (= (and d!31002 (not c!28353)) b!131374))

(assert (= (and d!31002 res!60954) b!131375))

(assert (= (and b!131375 res!60953) b!131376))

(declare-fun m!116043 () Bool)

(assert (=> b!131375 m!116043))

(assert (=> b!131375 m!115813))

(declare-fun m!116045 () Bool)

(assert (=> b!131375 m!116045))

(assert (=> b!131375 m!115873))

(declare-fun m!116047 () Bool)

(assert (=> d!31002 m!116047))

(assert (=> d!31002 m!115813))

(declare-fun m!116049 () Bool)

(assert (=> d!31002 m!116049))

(assert (=> d!31002 m!115879))

(declare-fun m!116051 () Bool)

(assert (=> b!131374 m!116051))

(assert (=> b!131175 d!31002))

(declare-fun b!131379 () Bool)

(declare-fun res!60955 () Bool)

(declare-fun e!75813 () Bool)

(assert (=> b!131379 (=> (not res!60955) (not e!75813))))

(declare-fun lt!39673 () List!2184)

(assert (=> b!131379 (= res!60955 (= (size!1981 lt!39673) (+ (size!1981 baseList!9) (size!1981 (++!454 lt!39624 (t!22770 newList!20))))))))

(declare-fun b!131377 () Bool)

(declare-fun e!75812 () List!2184)

(assert (=> b!131377 (= e!75812 (++!454 lt!39624 (t!22770 newList!20)))))

(declare-fun d!31004 () Bool)

(assert (=> d!31004 e!75813))

(declare-fun res!60956 () Bool)

(assert (=> d!31004 (=> (not res!60956) (not e!75813))))

(assert (=> d!31004 (= res!60956 (= (content!291 lt!39673) ((_ map or) (content!291 baseList!9) (content!291 (++!454 lt!39624 (t!22770 newList!20))))))))

(assert (=> d!31004 (= lt!39673 e!75812)))

(declare-fun c!28354 () Bool)

(assert (=> d!31004 (= c!28354 ((_ is Nil!2178) baseList!9))))

(assert (=> d!31004 (= (++!454 baseList!9 (++!454 lt!39624 (t!22770 newList!20))) lt!39673)))

(declare-fun b!131378 () Bool)

(assert (=> b!131378 (= e!75812 (Cons!2178 (h!7575 baseList!9) (++!454 (t!22770 baseList!9) (++!454 lt!39624 (t!22770 newList!20)))))))

(declare-fun b!131380 () Bool)

(assert (=> b!131380 (= e!75813 (or (not (= (++!454 lt!39624 (t!22770 newList!20)) Nil!2178)) (= lt!39673 baseList!9)))))

(assert (= (and d!31004 c!28354) b!131377))

(assert (= (and d!31004 (not c!28354)) b!131378))

(assert (= (and d!31004 res!60956) b!131379))

(assert (= (and b!131379 res!60955) b!131380))

(declare-fun m!116053 () Bool)

(assert (=> b!131379 m!116053))

(assert (=> b!131379 m!115839))

(assert (=> b!131379 m!115809))

(declare-fun m!116055 () Bool)

(assert (=> b!131379 m!116055))

(declare-fun m!116057 () Bool)

(assert (=> d!31004 m!116057))

(assert (=> d!31004 m!115877))

(assert (=> d!31004 m!115809))

(declare-fun m!116059 () Bool)

(assert (=> d!31004 m!116059))

(assert (=> b!131378 m!115809))

(declare-fun m!116061 () Bool)

(assert (=> b!131378 m!116061))

(assert (=> b!131175 d!31004))

(declare-fun b!131387 () Bool)

(declare-fun res!60961 () Bool)

(declare-fun e!75819 () Bool)

(assert (=> b!131387 (=> (not res!60961) (not e!75819))))

(declare-fun lt!39674 () List!2184)

(assert (=> b!131387 (= res!60961 (= (size!1981 lt!39674) (+ (size!1981 lt!39624) (size!1981 (t!22770 newList!20)))))))

(declare-fun b!131385 () Bool)

(declare-fun e!75818 () List!2184)

(assert (=> b!131385 (= e!75818 (t!22770 newList!20))))

(declare-fun d!31006 () Bool)

(assert (=> d!31006 e!75819))

(declare-fun res!60962 () Bool)

(assert (=> d!31006 (=> (not res!60962) (not e!75819))))

(assert (=> d!31006 (= res!60962 (= (content!291 lt!39674) ((_ map or) (content!291 lt!39624) (content!291 (t!22770 newList!20)))))))

(assert (=> d!31006 (= lt!39674 e!75818)))

(declare-fun c!28355 () Bool)

(assert (=> d!31006 (= c!28355 ((_ is Nil!2178) lt!39624))))

(assert (=> d!31006 (= (++!454 lt!39624 (t!22770 newList!20)) lt!39674)))

(declare-fun b!131386 () Bool)

(assert (=> b!131386 (= e!75818 (Cons!2178 (h!7575 lt!39624) (++!454 (t!22770 lt!39624) (t!22770 newList!20))))))

(declare-fun b!131388 () Bool)

(assert (=> b!131388 (= e!75819 (or (not (= (t!22770 newList!20) Nil!2178)) (= lt!39674 lt!39624)))))

(assert (= (and d!31006 c!28355) b!131385))

(assert (= (and d!31006 (not c!28355)) b!131386))

(assert (= (and d!31006 res!60962) b!131387))

(assert (= (and b!131387 res!60961) b!131388))

(declare-fun m!116063 () Bool)

(assert (=> b!131387 m!116063))

(declare-fun m!116065 () Bool)

(assert (=> b!131387 m!116065))

(assert (=> b!131387 m!115873))

(declare-fun m!116067 () Bool)

(assert (=> d!31006 m!116067))

(declare-fun m!116069 () Bool)

(assert (=> d!31006 m!116069))

(assert (=> d!31006 m!115879))

(declare-fun m!116071 () Bool)

(assert (=> b!131386 m!116071))

(assert (=> b!131175 d!31006))

(declare-fun d!31008 () Bool)

(assert (=> d!31008 (subseq!47 lt!39625 (++!454 (++!454 baseList!9 lt!39624) (t!22770 newList!20)))))

(declare-fun lt!39682 () Unit!1736)

(declare-fun choose!1664 (List!2184 List!2184 List!2184 List!2184) Unit!1736)

(assert (=> d!31008 (= lt!39682 (choose!1664 lt!39625 baseList!9 (t!22770 newList!20) lt!39624))))

(assert (=> d!31008 (subseq!47 lt!39625 (++!454 baseList!9 (t!22770 newList!20)))))

(assert (=> d!31008 (= (lemmaBiggerSndListPreservesSubSeq!10 lt!39625 baseList!9 (t!22770 newList!20) lt!39624) lt!39682)))

(declare-fun bs!12626 () Bool)

(assert (= bs!12626 d!31008))

(assert (=> bs!12626 m!115813))

(assert (=> bs!12626 m!115813))

(assert (=> bs!12626 m!115815))

(assert (=> bs!12626 m!115797))

(assert (=> bs!12626 m!115815))

(declare-fun m!116079 () Bool)

(assert (=> bs!12626 m!116079))

(declare-fun m!116081 () Bool)

(assert (=> bs!12626 m!116081))

(assert (=> bs!12626 m!115797))

(declare-fun m!116083 () Bool)

(assert (=> bs!12626 m!116083))

(assert (=> b!131175 d!31008))

(declare-fun d!31014 () Bool)

(assert (=> d!31014 (= (++!454 (++!454 baseList!9 lt!39624) (t!22770 newList!20)) (++!454 baseList!9 (++!454 lt!39624 (t!22770 newList!20))))))

(declare-fun lt!39685 () Unit!1736)

(declare-fun choose!1665 (List!2184 List!2184 List!2184) Unit!1736)

(assert (=> d!31014 (= lt!39685 (choose!1665 baseList!9 lt!39624 (t!22770 newList!20)))))

(assert (=> d!31014 (= (lemmaConcatAssociativity!136 baseList!9 lt!39624 (t!22770 newList!20)) lt!39685)))

(declare-fun bs!12627 () Bool)

(assert (= bs!12627 d!31014))

(assert (=> bs!12627 m!115809))

(assert (=> bs!12627 m!115811))

(assert (=> bs!12627 m!115813))

(assert (=> bs!12627 m!115813))

(assert (=> bs!12627 m!115815))

(declare-fun m!116085 () Bool)

(assert (=> bs!12627 m!116085))

(assert (=> bs!12627 m!115809))

(assert (=> b!131175 d!31014))

(declare-fun b!131407 () Bool)

(declare-fun res!60965 () Bool)

(declare-fun e!75831 () Bool)

(assert (=> b!131407 (=> (not res!60965) (not e!75831))))

(declare-fun lt!39686 () List!2184)

(assert (=> b!131407 (= res!60965 (= (size!1981 lt!39686) (+ (size!1981 baseList!9) (size!1981 lt!39624))))))

(declare-fun b!131405 () Bool)

(declare-fun e!75830 () List!2184)

(assert (=> b!131405 (= e!75830 lt!39624)))

(declare-fun d!31016 () Bool)

(assert (=> d!31016 e!75831))

(declare-fun res!60966 () Bool)

(assert (=> d!31016 (=> (not res!60966) (not e!75831))))

(assert (=> d!31016 (= res!60966 (= (content!291 lt!39686) ((_ map or) (content!291 baseList!9) (content!291 lt!39624))))))

(assert (=> d!31016 (= lt!39686 e!75830)))

(declare-fun c!28360 () Bool)

(assert (=> d!31016 (= c!28360 ((_ is Nil!2178) baseList!9))))

(assert (=> d!31016 (= (++!454 baseList!9 lt!39624) lt!39686)))

(declare-fun b!131406 () Bool)

(assert (=> b!131406 (= e!75830 (Cons!2178 (h!7575 baseList!9) (++!454 (t!22770 baseList!9) lt!39624)))))

(declare-fun b!131408 () Bool)

(assert (=> b!131408 (= e!75831 (or (not (= lt!39624 Nil!2178)) (= lt!39686 baseList!9)))))

(assert (= (and d!31016 c!28360) b!131405))

(assert (= (and d!31016 (not c!28360)) b!131406))

(assert (= (and d!31016 res!60966) b!131407))

(assert (= (and b!131407 res!60965) b!131408))

(declare-fun m!116087 () Bool)

(assert (=> b!131407 m!116087))

(assert (=> b!131407 m!115839))

(assert (=> b!131407 m!116065))

(declare-fun m!116089 () Bool)

(assert (=> d!31016 m!116089))

(assert (=> d!31016 m!115877))

(assert (=> d!31016 m!116069))

(declare-fun m!116091 () Bool)

(assert (=> b!131406 m!116091))

(assert (=> b!131175 d!31016))

(declare-fun b!131413 () Bool)

(declare-fun e!75834 () Bool)

(declare-fun tp!70401 () Bool)

(assert (=> b!131413 (= e!75834 (and tp_is_empty!1405 tp!70401))))

(assert (=> b!131183 (= tp!70393 e!75834)))

(assert (= (and b!131183 ((_ is Cons!2178) (t!22770 baseList!9))) b!131413))

(declare-fun b!131414 () Bool)

(declare-fun e!75835 () Bool)

(declare-fun tp!70402 () Bool)

(assert (=> b!131414 (= e!75835 (and tp_is_empty!1405 tp!70402))))

(assert (=> b!131174 (= tp!70394 e!75835)))

(assert (= (and b!131174 ((_ is Cons!2178) (t!22770 newList!20))) b!131414))

(check-sat (not d!31004) (not b!131387) (not b!131194) (not b!131414) (not b!131371) (not b!131196) (not b!131354) (not d!31014) (not b!131266) (not b!131282) (not d!31002) (not b!131202) (not b!131413) (not b!131348) (not b!131247) tp_is_empty!1405 (not b!131378) (not b!131372) (not b!131292) (not b!131353) (not b!131307) (not b!131288) (not b!131406) (not b!131386) (not d!30974) (not d!31008) (not b!131346) (not b!131374) (not d!30936) (not b!131204) (not b!131227) (not b!131248) (not b!131195) (not b!131379) (not b!131407) (not b!131265) (not d!31006) (not b!131347) (not b!131313) (not d!30952) (not b!131314) (not b!131285) (not b!131226) (not b!131315) (not d!31016) (not b!131286) (not b!131291) (not d!30990) (not b!131375))
(check-sat)
