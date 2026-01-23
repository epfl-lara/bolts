; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534386 () Bool)

(assert start!534386)

(declare-fun b!5052826 () Bool)

(declare-fun e!3154497 () Bool)

(declare-fun e!3154500 () Bool)

(assert (=> b!5052826 (= e!3154497 e!3154500)))

(declare-fun res!2151495 () Bool)

(assert (=> b!5052826 (=> (not res!2151495) (not e!3154500))))

(declare-datatypes ((T!104894 0))(
  ( (T!104895 (val!23616 Int)) )
))
(declare-datatypes ((List!58526 0))(
  ( (Nil!58402) (Cons!58402 (h!64850 T!104894) (t!371165 List!58526)) )
))
(declare-fun lt!2087073 () List!58526)

(declare-fun r!2041 () List!58526)

(declare-fun l!2757 () List!58526)

(declare-fun tail!9948 (List!58526) List!58526)

(declare-fun ++!12765 (List!58526 List!58526) List!58526)

(assert (=> b!5052826 (= res!2151495 (= (tail!9948 (++!12765 l!2757 r!2041)) (++!12765 lt!2087073 r!2041)))))

(assert (=> b!5052826 (= lt!2087073 (tail!9948 l!2757))))

(declare-fun b!5052827 () Bool)

(declare-fun e!3154498 () Bool)

(assert (=> b!5052827 (= e!3154498 e!3154497)))

(declare-fun res!2151492 () Bool)

(assert (=> b!5052827 (=> (not res!2151492) (not e!3154497))))

(declare-fun lt!2087070 () Int)

(declare-fun lt!2087071 () Int)

(declare-fun i!652 () Int)

(assert (=> b!5052827 (= res!2151492 (and (<= i!652 (+ lt!2087071 lt!2087070)) (not (= l!2757 Nil!58402)) (not (= r!2041 Nil!58402))))))

(declare-fun size!39025 (List!58526) Int)

(assert (=> b!5052827 (= lt!2087070 (size!39025 r!2041))))

(assert (=> b!5052827 (= lt!2087071 (size!39025 l!2757))))

(declare-fun b!5052828 () Bool)

(declare-fun res!2151490 () Bool)

(assert (=> b!5052828 (=> (not res!2151490) (not e!3154497))))

(assert (=> b!5052828 (= res!2151490 (> i!652 0))))

(declare-fun b!5052829 () Bool)

(declare-fun res!2151489 () Bool)

(assert (=> b!5052829 (=> (not res!2151489) (not e!3154497))))

(declare-fun isEmpty!31581 (List!58526) Bool)

(assert (=> b!5052829 (= res!2151489 (not (isEmpty!31581 r!2041)))))

(declare-fun b!5052830 () Bool)

(declare-fun e!3154496 () Bool)

(declare-fun tp_is_empty!36987 () Bool)

(declare-fun tp!1412385 () Bool)

(assert (=> b!5052830 (= e!3154496 (and tp_is_empty!36987 tp!1412385))))

(declare-fun b!5052831 () Bool)

(declare-fun res!2151494 () Bool)

(assert (=> b!5052831 (=> (not res!2151494) (not e!3154500))))

(assert (=> b!5052831 (= res!2151494 (<= (- i!652 1) (+ (size!39025 lt!2087073) lt!2087070)))))

(declare-fun b!5052832 () Bool)

(declare-fun res!2151491 () Bool)

(assert (=> b!5052832 (=> (not res!2151491) (not e!3154500))))

(assert (=> b!5052832 (= res!2151491 (<= 0 (- i!652 1)))))

(declare-fun b!5052833 () Bool)

(declare-fun res!2151488 () Bool)

(assert (=> b!5052833 (=> (not res!2151488) (not e!3154497))))

(assert (=> b!5052833 (= res!2151488 (not (isEmpty!31581 l!2757)))))

(declare-fun res!2151493 () Bool)

(assert (=> start!534386 (=> (not res!2151493) (not e!3154498))))

(assert (=> start!534386 (= res!2151493 (<= 0 i!652))))

(assert (=> start!534386 e!3154498))

(assert (=> start!534386 true))

(declare-fun e!3154499 () Bool)

(assert (=> start!534386 e!3154499))

(assert (=> start!534386 e!3154496))

(declare-fun b!5052834 () Bool)

(declare-fun lt!2087072 () Int)

(declare-fun ListPrimitiveSize!393 (List!58526) Int)

(assert (=> b!5052834 (= e!3154500 (>= lt!2087072 (ListPrimitiveSize!393 l!2757)))))

(declare-fun lt!2087069 () Int)

(assert (=> b!5052834 (= lt!2087069 (ListPrimitiveSize!393 r!2041))))

(assert (=> b!5052834 (= lt!2087072 (ListPrimitiveSize!393 lt!2087073))))

(declare-fun b!5052835 () Bool)

(declare-fun tp!1412384 () Bool)

(assert (=> b!5052835 (= e!3154499 (and tp_is_empty!36987 tp!1412384))))

(assert (= (and start!534386 res!2151493) b!5052827))

(assert (= (and b!5052827 res!2151492) b!5052833))

(assert (= (and b!5052833 res!2151488) b!5052829))

(assert (= (and b!5052829 res!2151489) b!5052828))

(assert (= (and b!5052828 res!2151490) b!5052826))

(assert (= (and b!5052826 res!2151495) b!5052832))

(assert (= (and b!5052832 res!2151491) b!5052831))

(assert (= (and b!5052831 res!2151494) b!5052834))

(get-info :version)

(assert (= (and start!534386 ((_ is Cons!58402) l!2757)) b!5052835))

(assert (= (and start!534386 ((_ is Cons!58402) r!2041)) b!5052830))

(declare-fun m!6086950 () Bool)

(assert (=> b!5052834 m!6086950))

(declare-fun m!6086952 () Bool)

(assert (=> b!5052834 m!6086952))

(declare-fun m!6086954 () Bool)

(assert (=> b!5052834 m!6086954))

(declare-fun m!6086956 () Bool)

(assert (=> b!5052833 m!6086956))

(declare-fun m!6086958 () Bool)

(assert (=> b!5052826 m!6086958))

(assert (=> b!5052826 m!6086958))

(declare-fun m!6086960 () Bool)

(assert (=> b!5052826 m!6086960))

(declare-fun m!6086962 () Bool)

(assert (=> b!5052826 m!6086962))

(declare-fun m!6086964 () Bool)

(assert (=> b!5052826 m!6086964))

(declare-fun m!6086966 () Bool)

(assert (=> b!5052831 m!6086966))

(declare-fun m!6086968 () Bool)

(assert (=> b!5052829 m!6086968))

(declare-fun m!6086970 () Bool)

(assert (=> b!5052827 m!6086970))

(declare-fun m!6086972 () Bool)

(assert (=> b!5052827 m!6086972))

(check-sat (not b!5052826) (not b!5052830) (not b!5052835) (not b!5052834) (not b!5052833) (not b!5052831) tp_is_empty!36987 (not b!5052827) (not b!5052829))
(check-sat)
(get-model)

(declare-fun d!1625951 () Bool)

(assert (=> d!1625951 (= (isEmpty!31581 l!2757) ((_ is Nil!58402) l!2757))))

(assert (=> b!5052833 d!1625951))

(declare-fun d!1625953 () Bool)

(declare-fun lt!2087076 () Int)

(assert (=> d!1625953 (>= lt!2087076 0)))

(declare-fun e!3154503 () Int)

(assert (=> d!1625953 (= lt!2087076 e!3154503)))

(declare-fun c!867014 () Bool)

(assert (=> d!1625953 (= c!867014 ((_ is Nil!58402) r!2041))))

(assert (=> d!1625953 (= (size!39025 r!2041) lt!2087076)))

(declare-fun b!5052840 () Bool)

(assert (=> b!5052840 (= e!3154503 0)))

(declare-fun b!5052841 () Bool)

(assert (=> b!5052841 (= e!3154503 (+ 1 (size!39025 (t!371165 r!2041))))))

(assert (= (and d!1625953 c!867014) b!5052840))

(assert (= (and d!1625953 (not c!867014)) b!5052841))

(declare-fun m!6086974 () Bool)

(assert (=> b!5052841 m!6086974))

(assert (=> b!5052827 d!1625953))

(declare-fun d!1625955 () Bool)

(declare-fun lt!2087077 () Int)

(assert (=> d!1625955 (>= lt!2087077 0)))

(declare-fun e!3154504 () Int)

(assert (=> d!1625955 (= lt!2087077 e!3154504)))

(declare-fun c!867015 () Bool)

(assert (=> d!1625955 (= c!867015 ((_ is Nil!58402) l!2757))))

(assert (=> d!1625955 (= (size!39025 l!2757) lt!2087077)))

(declare-fun b!5052842 () Bool)

(assert (=> b!5052842 (= e!3154504 0)))

(declare-fun b!5052843 () Bool)

(assert (=> b!5052843 (= e!3154504 (+ 1 (size!39025 (t!371165 l!2757))))))

(assert (= (and d!1625955 c!867015) b!5052842))

(assert (= (and d!1625955 (not c!867015)) b!5052843))

(declare-fun m!6086976 () Bool)

(assert (=> b!5052843 m!6086976))

(assert (=> b!5052827 d!1625955))

(declare-fun d!1625957 () Bool)

(assert (=> d!1625957 (= (tail!9948 (++!12765 l!2757 r!2041)) (t!371165 (++!12765 l!2757 r!2041)))))

(assert (=> b!5052826 d!1625957))

(declare-fun d!1625959 () Bool)

(declare-fun e!3154514 () Bool)

(assert (=> d!1625959 e!3154514))

(declare-fun res!2151501 () Bool)

(assert (=> d!1625959 (=> (not res!2151501) (not e!3154514))))

(declare-fun lt!2087085 () List!58526)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10403 (List!58526) (InoxSet T!104894))

(assert (=> d!1625959 (= res!2151501 (= (content!10403 lt!2087085) ((_ map or) (content!10403 l!2757) (content!10403 r!2041))))))

(declare-fun e!3154515 () List!58526)

(assert (=> d!1625959 (= lt!2087085 e!3154515)))

(declare-fun c!867023 () Bool)

(assert (=> d!1625959 (= c!867023 ((_ is Nil!58402) l!2757))))

(assert (=> d!1625959 (= (++!12765 l!2757 r!2041) lt!2087085)))

(declare-fun b!5052865 () Bool)

(assert (=> b!5052865 (= e!3154514 (or (not (= r!2041 Nil!58402)) (= lt!2087085 l!2757)))))

(declare-fun b!5052862 () Bool)

(assert (=> b!5052862 (= e!3154515 r!2041)))

(declare-fun b!5052864 () Bool)

(declare-fun res!2151500 () Bool)

(assert (=> b!5052864 (=> (not res!2151500) (not e!3154514))))

(assert (=> b!5052864 (= res!2151500 (= (size!39025 lt!2087085) (+ (size!39025 l!2757) (size!39025 r!2041))))))

(declare-fun b!5052863 () Bool)

(assert (=> b!5052863 (= e!3154515 (Cons!58402 (h!64850 l!2757) (++!12765 (t!371165 l!2757) r!2041)))))

(assert (= (and d!1625959 c!867023) b!5052862))

(assert (= (and d!1625959 (not c!867023)) b!5052863))

(assert (= (and d!1625959 res!2151501) b!5052864))

(assert (= (and b!5052864 res!2151500) b!5052865))

(declare-fun m!6086984 () Bool)

(assert (=> d!1625959 m!6086984))

(declare-fun m!6086986 () Bool)

(assert (=> d!1625959 m!6086986))

(declare-fun m!6086988 () Bool)

(assert (=> d!1625959 m!6086988))

(declare-fun m!6086990 () Bool)

(assert (=> b!5052864 m!6086990))

(assert (=> b!5052864 m!6086972))

(assert (=> b!5052864 m!6086970))

(declare-fun m!6086992 () Bool)

(assert (=> b!5052863 m!6086992))

(assert (=> b!5052826 d!1625959))

(declare-fun d!1625975 () Bool)

(declare-fun e!3154516 () Bool)

(assert (=> d!1625975 e!3154516))

(declare-fun res!2151503 () Bool)

(assert (=> d!1625975 (=> (not res!2151503) (not e!3154516))))

(declare-fun lt!2087086 () List!58526)

(assert (=> d!1625975 (= res!2151503 (= (content!10403 lt!2087086) ((_ map or) (content!10403 lt!2087073) (content!10403 r!2041))))))

(declare-fun e!3154517 () List!58526)

(assert (=> d!1625975 (= lt!2087086 e!3154517)))

(declare-fun c!867024 () Bool)

(assert (=> d!1625975 (= c!867024 ((_ is Nil!58402) lt!2087073))))

(assert (=> d!1625975 (= (++!12765 lt!2087073 r!2041) lt!2087086)))

(declare-fun b!5052869 () Bool)

(assert (=> b!5052869 (= e!3154516 (or (not (= r!2041 Nil!58402)) (= lt!2087086 lt!2087073)))))

(declare-fun b!5052866 () Bool)

(assert (=> b!5052866 (= e!3154517 r!2041)))

(declare-fun b!5052868 () Bool)

(declare-fun res!2151502 () Bool)

(assert (=> b!5052868 (=> (not res!2151502) (not e!3154516))))

(assert (=> b!5052868 (= res!2151502 (= (size!39025 lt!2087086) (+ (size!39025 lt!2087073) (size!39025 r!2041))))))

(declare-fun b!5052867 () Bool)

(assert (=> b!5052867 (= e!3154517 (Cons!58402 (h!64850 lt!2087073) (++!12765 (t!371165 lt!2087073) r!2041)))))

(assert (= (and d!1625975 c!867024) b!5052866))

(assert (= (and d!1625975 (not c!867024)) b!5052867))

(assert (= (and d!1625975 res!2151503) b!5052868))

(assert (= (and b!5052868 res!2151502) b!5052869))

(declare-fun m!6086994 () Bool)

(assert (=> d!1625975 m!6086994))

(declare-fun m!6086996 () Bool)

(assert (=> d!1625975 m!6086996))

(assert (=> d!1625975 m!6086988))

(declare-fun m!6086998 () Bool)

(assert (=> b!5052868 m!6086998))

(assert (=> b!5052868 m!6086966))

(assert (=> b!5052868 m!6086970))

(declare-fun m!6087000 () Bool)

(assert (=> b!5052867 m!6087000))

(assert (=> b!5052826 d!1625975))

(declare-fun d!1625977 () Bool)

(assert (=> d!1625977 (= (tail!9948 l!2757) (t!371165 l!2757))))

(assert (=> b!5052826 d!1625977))

(declare-fun d!1625979 () Bool)

(declare-fun lt!2087087 () Int)

(assert (=> d!1625979 (>= lt!2087087 0)))

(declare-fun e!3154518 () Int)

(assert (=> d!1625979 (= lt!2087087 e!3154518)))

(declare-fun c!867025 () Bool)

(assert (=> d!1625979 (= c!867025 ((_ is Nil!58402) lt!2087073))))

(assert (=> d!1625979 (= (size!39025 lt!2087073) lt!2087087)))

(declare-fun b!5052870 () Bool)

(assert (=> b!5052870 (= e!3154518 0)))

(declare-fun b!5052871 () Bool)

(assert (=> b!5052871 (= e!3154518 (+ 1 (size!39025 (t!371165 lt!2087073))))))

(assert (= (and d!1625979 c!867025) b!5052870))

(assert (= (and d!1625979 (not c!867025)) b!5052871))

(declare-fun m!6087002 () Bool)

(assert (=> b!5052871 m!6087002))

(assert (=> b!5052831 d!1625979))

(declare-fun d!1625981 () Bool)

(assert (=> d!1625981 (= (isEmpty!31581 r!2041) ((_ is Nil!58402) r!2041))))

(assert (=> b!5052829 d!1625981))

(declare-fun d!1625983 () Bool)

(declare-fun lt!2087092 () Int)

(assert (=> d!1625983 (>= lt!2087092 0)))

(declare-fun e!3154525 () Int)

(assert (=> d!1625983 (= lt!2087092 e!3154525)))

(declare-fun c!867030 () Bool)

(assert (=> d!1625983 (= c!867030 ((_ is Nil!58402) l!2757))))

(assert (=> d!1625983 (= (ListPrimitiveSize!393 l!2757) lt!2087092)))

(declare-fun b!5052884 () Bool)

(assert (=> b!5052884 (= e!3154525 0)))

(declare-fun b!5052885 () Bool)

(assert (=> b!5052885 (= e!3154525 (+ 1 (ListPrimitiveSize!393 (t!371165 l!2757))))))

(assert (= (and d!1625983 c!867030) b!5052884))

(assert (= (and d!1625983 (not c!867030)) b!5052885))

(declare-fun m!6087004 () Bool)

(assert (=> b!5052885 m!6087004))

(assert (=> b!5052834 d!1625983))

(declare-fun d!1625985 () Bool)

(declare-fun lt!2087093 () Int)

(assert (=> d!1625985 (>= lt!2087093 0)))

(declare-fun e!3154526 () Int)

(assert (=> d!1625985 (= lt!2087093 e!3154526)))

(declare-fun c!867031 () Bool)

(assert (=> d!1625985 (= c!867031 ((_ is Nil!58402) r!2041))))

(assert (=> d!1625985 (= (ListPrimitiveSize!393 r!2041) lt!2087093)))

(declare-fun b!5052886 () Bool)

(assert (=> b!5052886 (= e!3154526 0)))

(declare-fun b!5052887 () Bool)

(assert (=> b!5052887 (= e!3154526 (+ 1 (ListPrimitiveSize!393 (t!371165 r!2041))))))

(assert (= (and d!1625985 c!867031) b!5052886))

(assert (= (and d!1625985 (not c!867031)) b!5052887))

(declare-fun m!6087006 () Bool)

(assert (=> b!5052887 m!6087006))

(assert (=> b!5052834 d!1625985))

(declare-fun d!1625987 () Bool)

(declare-fun lt!2087094 () Int)

(assert (=> d!1625987 (>= lt!2087094 0)))

(declare-fun e!3154527 () Int)

(assert (=> d!1625987 (= lt!2087094 e!3154527)))

(declare-fun c!867032 () Bool)

(assert (=> d!1625987 (= c!867032 ((_ is Nil!58402) lt!2087073))))

(assert (=> d!1625987 (= (ListPrimitiveSize!393 lt!2087073) lt!2087094)))

(declare-fun b!5052888 () Bool)

(assert (=> b!5052888 (= e!3154527 0)))

(declare-fun b!5052889 () Bool)

(assert (=> b!5052889 (= e!3154527 (+ 1 (ListPrimitiveSize!393 (t!371165 lt!2087073))))))

(assert (= (and d!1625987 c!867032) b!5052888))

(assert (= (and d!1625987 (not c!867032)) b!5052889))

(declare-fun m!6087008 () Bool)

(assert (=> b!5052889 m!6087008))

(assert (=> b!5052834 d!1625987))

(declare-fun b!5052898 () Bool)

(declare-fun e!3154532 () Bool)

(declare-fun tp!1412388 () Bool)

(assert (=> b!5052898 (= e!3154532 (and tp_is_empty!36987 tp!1412388))))

(assert (=> b!5052830 (= tp!1412385 e!3154532)))

(assert (= (and b!5052830 ((_ is Cons!58402) (t!371165 r!2041))) b!5052898))

(declare-fun b!5052902 () Bool)

(declare-fun e!3154535 () Bool)

(declare-fun tp!1412389 () Bool)

(assert (=> b!5052902 (= e!3154535 (and tp_is_empty!36987 tp!1412389))))

(assert (=> b!5052835 (= tp!1412384 e!3154535)))

(assert (= (and b!5052835 ((_ is Cons!58402) (t!371165 l!2757))) b!5052902))

(check-sat (not b!5052871) (not d!1625975) (not b!5052868) (not b!5052885) (not b!5052843) tp_is_empty!36987 (not b!5052889) (not b!5052902) (not b!5052898) (not b!5052864) (not b!5052887) (not b!5052867) (not b!5052863) (not d!1625959) (not b!5052841))
(check-sat)
