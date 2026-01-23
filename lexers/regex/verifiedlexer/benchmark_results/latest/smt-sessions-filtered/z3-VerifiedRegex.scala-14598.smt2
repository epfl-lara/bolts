; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755928 () Bool)

(assert start!755928)

(declare-fun b!8027067 () Bool)

(declare-fun e!4728897 () Bool)

(declare-fun tp_is_empty!54293 () Bool)

(declare-fun tp!2402205 () Bool)

(assert (=> b!8027067 (= e!4728897 (and tp_is_empty!54293 tp!2402205))))

(declare-fun b!8027068 () Bool)

(declare-fun e!4728901 () Bool)

(declare-fun tp!2402207 () Bool)

(assert (=> b!8027068 (= e!4728901 (and tp_is_empty!54293 tp!2402207))))

(declare-fun b!8027069 () Bool)

(declare-fun e!4728894 () Bool)

(declare-fun e!4728896 () Bool)

(assert (=> b!8027069 (= e!4728894 e!4728896)))

(declare-fun res!3174421 () Bool)

(assert (=> b!8027069 (=> res!3174421 e!4728896)))

(declare-datatypes ((B!4389 0))(
  ( (B!4390 (val!32594 Int)) )
))
(declare-datatypes ((List!75110 0))(
  ( (Nil!74984) (Cons!74984 (h!81432 B!4389) (t!390866 List!75110)) )
))
(declare-fun lt!2721134 () List!75110)

(declare-fun lt!2721130 () List!75110)

(declare-fun isPrefix!6859 (List!75110 List!75110) Bool)

(assert (=> b!8027069 (= res!3174421 (not (isPrefix!6859 lt!2721134 lt!2721130)))))

(declare-fun l!3185 () List!75110)

(declare-fun tail!16019 (List!75110) List!75110)

(assert (=> b!8027069 (= lt!2721130 (tail!16019 l!3185))))

(declare-fun p2!159 () List!75110)

(assert (=> b!8027069 (= lt!2721134 (tail!16019 p2!159))))

(declare-fun res!3174423 () Bool)

(declare-fun e!4728900 () Bool)

(assert (=> start!755928 (=> (not res!3174423) (not e!4728900))))

(assert (=> start!755928 (= res!3174423 (isPrefix!6859 p2!159 l!3185))))

(assert (=> start!755928 e!4728900))

(assert (=> start!755928 e!4728901))

(declare-fun e!4728899 () Bool)

(assert (=> start!755928 e!4728899))

(assert (=> start!755928 e!4728897))

(declare-fun e!4728898 () Bool)

(assert (=> start!755928 e!4728898))

(declare-fun b!8027070 () Bool)

(declare-fun tp!2402206 () Bool)

(assert (=> b!8027070 (= e!4728899 (and tp_is_empty!54293 tp!2402206))))

(declare-fun b!8027071 () Bool)

(assert (=> b!8027071 (= e!4728896 true)))

(declare-fun lt!2721131 () Int)

(declare-fun size!43719 (List!75110) Int)

(assert (=> b!8027071 (= lt!2721131 (size!43719 lt!2721134))))

(declare-fun lt!2721129 () Int)

(declare-fun p1!159 () List!75110)

(assert (=> b!8027071 (= lt!2721129 (size!43719 (t!390866 p1!159)))))

(declare-fun b!8027072 () Bool)

(declare-fun e!4728895 () Bool)

(assert (=> b!8027072 (= e!4728900 e!4728895)))

(declare-fun res!3174418 () Bool)

(assert (=> b!8027072 (=> (not res!3174418) (not e!4728895))))

(declare-fun lt!2721133 () List!75110)

(assert (=> b!8027072 (= res!3174418 (= lt!2721133 l!3185))))

(declare-fun s1!480 () List!75110)

(declare-fun ++!18586 (List!75110 List!75110) List!75110)

(assert (=> b!8027072 (= lt!2721133 (++!18586 p1!159 s1!480))))

(declare-fun b!8027073 () Bool)

(declare-fun res!3174419 () Bool)

(assert (=> b!8027073 (=> (not res!3174419) (not e!4728895))))

(declare-fun isEmpty!42992 (List!75110) Bool)

(assert (=> b!8027073 (= res!3174419 (not (isEmpty!42992 s1!480)))))

(declare-fun b!8027074 () Bool)

(declare-fun res!3174422 () Bool)

(assert (=> b!8027074 (=> res!3174422 e!4728896)))

(assert (=> b!8027074 (= res!3174422 (not (= (++!18586 (t!390866 p1!159) s1!480) lt!2721130)))))

(declare-fun b!8027075 () Bool)

(declare-fun res!3174420 () Bool)

(assert (=> b!8027075 (=> (not res!3174420) (not e!4728895))))

(assert (=> b!8027075 (= res!3174420 (< (size!43719 p1!159) (size!43719 p2!159)))))

(declare-fun b!8027076 () Bool)

(declare-fun tp!2402204 () Bool)

(assert (=> b!8027076 (= e!4728898 (and tp_is_empty!54293 tp!2402204))))

(declare-fun b!8027077 () Bool)

(assert (=> b!8027077 (= e!4728895 (not e!4728894))))

(declare-fun res!3174417 () Bool)

(assert (=> b!8027077 (=> res!3174417 e!4728894)))

(get-info :version)

(assert (=> b!8027077 (= res!3174417 (not ((_ is Cons!74984) p1!159)))))

(assert (=> b!8027077 (isPrefix!6859 p1!159 lt!2721133)))

(declare-datatypes ((Unit!170956 0))(
  ( (Unit!170957) )
))
(declare-fun lt!2721132 () Unit!170956)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3980 (List!75110 List!75110) Unit!170956)

(assert (=> b!8027077 (= lt!2721132 (lemmaConcatTwoListThenFirstIsPrefix!3980 p1!159 s1!480))))

(assert (= (and start!755928 res!3174423) b!8027072))

(assert (= (and b!8027072 res!3174418) b!8027073))

(assert (= (and b!8027073 res!3174419) b!8027075))

(assert (= (and b!8027075 res!3174420) b!8027077))

(assert (= (and b!8027077 (not res!3174417)) b!8027069))

(assert (= (and b!8027069 (not res!3174421)) b!8027074))

(assert (= (and b!8027074 (not res!3174422)) b!8027071))

(assert (= (and start!755928 ((_ is Cons!74984) p2!159)) b!8027068))

(assert (= (and start!755928 ((_ is Cons!74984) l!3185)) b!8027070))

(assert (= (and start!755928 ((_ is Cons!74984) p1!159)) b!8027067))

(assert (= (and start!755928 ((_ is Cons!74984) s1!480)) b!8027076))

(declare-fun m!8389268 () Bool)

(assert (=> b!8027071 m!8389268))

(declare-fun m!8389270 () Bool)

(assert (=> b!8027071 m!8389270))

(declare-fun m!8389272 () Bool)

(assert (=> b!8027073 m!8389272))

(declare-fun m!8389274 () Bool)

(assert (=> b!8027074 m!8389274))

(declare-fun m!8389276 () Bool)

(assert (=> b!8027075 m!8389276))

(declare-fun m!8389278 () Bool)

(assert (=> b!8027075 m!8389278))

(declare-fun m!8389280 () Bool)

(assert (=> b!8027072 m!8389280))

(declare-fun m!8389282 () Bool)

(assert (=> b!8027069 m!8389282))

(declare-fun m!8389284 () Bool)

(assert (=> b!8027069 m!8389284))

(declare-fun m!8389286 () Bool)

(assert (=> b!8027069 m!8389286))

(declare-fun m!8389288 () Bool)

(assert (=> b!8027077 m!8389288))

(declare-fun m!8389290 () Bool)

(assert (=> b!8027077 m!8389290))

(declare-fun m!8389292 () Bool)

(assert (=> start!755928 m!8389292))

(check-sat (not b!8027073) (not start!755928) (not b!8027077) (not b!8027071) (not b!8027076) (not b!8027070) (not b!8027069) (not b!8027075) (not b!8027068) (not b!8027074) tp_is_empty!54293 (not b!8027072) (not b!8027067))
(check-sat)
