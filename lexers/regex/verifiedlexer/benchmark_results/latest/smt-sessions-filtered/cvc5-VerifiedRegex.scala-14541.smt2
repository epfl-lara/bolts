; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!755034 () Bool)

(assert start!755034)

(declare-fun res!3171595 () Bool)

(declare-fun e!4725089 () Bool)

(assert (=> start!755034 (=> (not res!3171595) (not e!4725089))))

(declare-datatypes ((B!4179 0))(
  ( (B!4180 (val!32479 Int)) )
))
(declare-datatypes ((List!74991 0))(
  ( (Nil!74867) (Cons!74867 (h!81315 B!4179) (t!390734 List!74991)) )
))
(declare-fun p1!173 () List!74991)

(declare-fun l!3353 () List!74991)

(declare-fun isPrefix!6798 (List!74991 List!74991) Bool)

(assert (=> start!755034 (= res!3171595 (isPrefix!6798 p1!173 l!3353))))

(assert (=> start!755034 e!4725089))

(declare-fun e!4725086 () Bool)

(assert (=> start!755034 e!4725086))

(declare-fun e!4725087 () Bool)

(assert (=> start!755034 e!4725087))

(declare-fun e!4725090 () Bool)

(assert (=> start!755034 e!4725090))

(declare-fun b!8021115 () Bool)

(declare-fun tp_is_empty!54067 () Bool)

(declare-fun tp!2400651 () Bool)

(assert (=> b!8021115 (= e!4725087 (and tp_is_empty!54067 tp!2400651))))

(declare-fun b!8021116 () Bool)

(declare-fun tp!2400649 () Bool)

(assert (=> b!8021116 (= e!4725090 (and tp_is_empty!54067 tp!2400649))))

(declare-fun b!8021117 () Bool)

(declare-fun res!3171592 () Bool)

(assert (=> b!8021117 (=> (not res!3171592) (not e!4725089))))

(declare-fun p2!173 () List!74991)

(declare-fun size!43652 (List!74991) Int)

(assert (=> b!8021117 (= res!3171592 (= (size!43652 p1!173) (size!43652 p2!173)))))

(declare-fun b!8021118 () Bool)

(declare-fun e!4725088 () Bool)

(declare-fun lt!2719956 () List!74991)

(assert (=> b!8021118 (= e!4725088 (not (= (size!43652 (t!390734 p1!173)) (size!43652 lt!2719956))))))

(declare-fun b!8021119 () Bool)

(declare-fun res!3171593 () Bool)

(assert (=> b!8021119 (=> (not res!3171593) (not e!4725089))))

(assert (=> b!8021119 (= res!3171593 (isPrefix!6798 p2!173 l!3353))))

(declare-fun b!8021120 () Bool)

(declare-fun tp!2400650 () Bool)

(assert (=> b!8021120 (= e!4725086 (and tp_is_empty!54067 tp!2400650))))

(declare-fun b!8021121 () Bool)

(assert (=> b!8021121 (= e!4725089 e!4725088)))

(declare-fun res!3171591 () Bool)

(assert (=> b!8021121 (=> (not res!3171591) (not e!4725088))))

(declare-fun lt!2719957 () List!74991)

(assert (=> b!8021121 (= res!3171591 (isPrefix!6798 (t!390734 p1!173) lt!2719957))))

(declare-fun tail!15941 (List!74991) List!74991)

(assert (=> b!8021121 (= lt!2719957 (tail!15941 l!3353))))

(assert (=> b!8021121 (= lt!2719956 (tail!15941 p2!173))))

(declare-fun b!8021122 () Bool)

(declare-fun res!3171596 () Bool)

(assert (=> b!8021122 (=> (not res!3171596) (not e!4725089))))

(assert (=> b!8021122 (= res!3171596 (is-Cons!74867 p1!173))))

(declare-fun b!8021123 () Bool)

(declare-fun res!3171594 () Bool)

(assert (=> b!8021123 (=> (not res!3171594) (not e!4725088))))

(assert (=> b!8021123 (= res!3171594 (isPrefix!6798 lt!2719956 lt!2719957))))

(assert (= (and start!755034 res!3171595) b!8021119))

(assert (= (and b!8021119 res!3171593) b!8021117))

(assert (= (and b!8021117 res!3171592) b!8021122))

(assert (= (and b!8021122 res!3171596) b!8021121))

(assert (= (and b!8021121 res!3171591) b!8021123))

(assert (= (and b!8021123 res!3171594) b!8021118))

(assert (= (and start!755034 (is-Cons!74867 p1!173)) b!8021120))

(assert (= (and start!755034 (is-Cons!74867 l!3353)) b!8021115))

(assert (= (and start!755034 (is-Cons!74867 p2!173)) b!8021116))

(declare-fun m!8384034 () Bool)

(assert (=> start!755034 m!8384034))

(declare-fun m!8384036 () Bool)

(assert (=> b!8021119 m!8384036))

(declare-fun m!8384038 () Bool)

(assert (=> b!8021123 m!8384038))

(declare-fun m!8384040 () Bool)

(assert (=> b!8021118 m!8384040))

(declare-fun m!8384042 () Bool)

(assert (=> b!8021118 m!8384042))

(declare-fun m!8384044 () Bool)

(assert (=> b!8021117 m!8384044))

(declare-fun m!8384046 () Bool)

(assert (=> b!8021117 m!8384046))

(declare-fun m!8384048 () Bool)

(assert (=> b!8021121 m!8384048))

(declare-fun m!8384050 () Bool)

(assert (=> b!8021121 m!8384050))

(declare-fun m!8384052 () Bool)

(assert (=> b!8021121 m!8384052))

(push 1)

(assert (not b!8021123))

(assert (not b!8021119))

(assert (not b!8021116))

(assert (not b!8021118))

(assert (not b!8021121))

(assert tp_is_empty!54067)

(assert (not b!8021115))

(assert (not start!755034))

(assert (not b!8021117))

(assert (not b!8021120))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!8021159 () Bool)

(declare-fun e!4725114 () Bool)

(declare-fun e!4725113 () Bool)

(assert (=> b!8021159 (= e!4725114 e!4725113)))

(declare-fun res!3171625 () Bool)

(assert (=> b!8021159 (=> (not res!3171625) (not e!4725113))))

(assert (=> b!8021159 (= res!3171625 (not (is-Nil!74867 l!3353)))))

(declare-fun b!8021161 () Bool)

(assert (=> b!8021161 (= e!4725113 (isPrefix!6798 (tail!15941 p2!173) (tail!15941 l!3353)))))

(declare-fun b!8021160 () Bool)

(declare-fun res!3171623 () Bool)

(assert (=> b!8021160 (=> (not res!3171623) (not e!4725113))))

(declare-fun head!16406 (List!74991) B!4179)

(assert (=> b!8021160 (= res!3171623 (= (head!16406 p2!173) (head!16406 l!3353)))))

(declare-fun b!8021162 () Bool)

(declare-fun e!4725112 () Bool)

(assert (=> b!8021162 (= e!4725112 (>= (size!43652 l!3353) (size!43652 p2!173)))))

(declare-fun d!2391850 () Bool)

(assert (=> d!2391850 e!4725112))

(declare-fun res!3171626 () Bool)

(assert (=> d!2391850 (=> res!3171626 e!4725112)))

(declare-fun lt!2719966 () Bool)

(assert (=> d!2391850 (= res!3171626 (not lt!2719966))))

(assert (=> d!2391850 (= lt!2719966 e!4725114)))

(declare-fun res!3171624 () Bool)

(assert (=> d!2391850 (=> res!3171624 e!4725114)))

(assert (=> d!2391850 (= res!3171624 (is-Nil!74867 p2!173))))

(assert (=> d!2391850 (= (isPrefix!6798 p2!173 l!3353) lt!2719966)))

(assert (= (and d!2391850 (not res!3171624)) b!8021159))

(assert (= (and b!8021159 res!3171625) b!8021160))

(assert (= (and b!8021160 res!3171623) b!8021161))

(assert (= (and d!2391850 (not res!3171626)) b!8021162))

(assert (=> b!8021161 m!8384052))

(assert (=> b!8021161 m!8384050))

(assert (=> b!8021161 m!8384052))

(assert (=> b!8021161 m!8384050))

(declare-fun m!8384074 () Bool)

(assert (=> b!8021161 m!8384074))

(declare-fun m!8384076 () Bool)

(assert (=> b!8021160 m!8384076))

(declare-fun m!8384078 () Bool)

(assert (=> b!8021160 m!8384078))

(declare-fun m!8384080 () Bool)

(assert (=> b!8021162 m!8384080))

(assert (=> b!8021162 m!8384046))

(assert (=> b!8021119 d!2391850))

(declare-fun b!8021163 () Bool)

(declare-fun e!4725117 () Bool)

(declare-fun e!4725116 () Bool)

(assert (=> b!8021163 (= e!4725117 e!4725116)))

(declare-fun res!3171629 () Bool)

(assert (=> b!8021163 (=> (not res!3171629) (not e!4725116))))

(assert (=> b!8021163 (= res!3171629 (not (is-Nil!74867 lt!2719957)))))

(declare-fun b!8021165 () Bool)

(assert (=> b!8021165 (= e!4725116 (isPrefix!6798 (tail!15941 lt!2719956) (tail!15941 lt!2719957)))))

(declare-fun b!8021164 () Bool)

(declare-fun res!3171627 () Bool)

(assert (=> b!8021164 (=> (not res!3171627) (not e!4725116))))

(assert (=> b!8021164 (= res!3171627 (= (head!16406 lt!2719956) (head!16406 lt!2719957)))))

(declare-fun b!8021166 () Bool)

(declare-fun e!4725115 () Bool)

(assert (=> b!8021166 (= e!4725115 (>= (size!43652 lt!2719957) (size!43652 lt!2719956)))))

(declare-fun d!2391854 () Bool)

(assert (=> d!2391854 e!4725115))

(declare-fun res!3171630 () Bool)

(assert (=> d!2391854 (=> res!3171630 e!4725115)))

(declare-fun lt!2719967 () Bool)

(assert (=> d!2391854 (= res!3171630 (not lt!2719967))))

(assert (=> d!2391854 (= lt!2719967 e!4725117)))

(declare-fun res!3171628 () Bool)

(assert (=> d!2391854 (=> res!3171628 e!4725117)))

(assert (=> d!2391854 (= res!3171628 (is-Nil!74867 lt!2719956))))

(assert (=> d!2391854 (= (isPrefix!6798 lt!2719956 lt!2719957) lt!2719967)))

(assert (= (and d!2391854 (not res!3171628)) b!8021163))

(assert (= (and b!8021163 res!3171629) b!8021164))

(assert (= (and b!8021164 res!3171627) b!8021165))

(assert (= (and d!2391854 (not res!3171630)) b!8021166))

(declare-fun m!8384082 () Bool)

(assert (=> b!8021165 m!8384082))

(declare-fun m!8384084 () Bool)

(assert (=> b!8021165 m!8384084))

(assert (=> b!8021165 m!8384082))

(assert (=> b!8021165 m!8384084))

(declare-fun m!8384086 () Bool)

(assert (=> b!8021165 m!8384086))

(declare-fun m!8384088 () Bool)

(assert (=> b!8021164 m!8384088))

(declare-fun m!8384090 () Bool)

(assert (=> b!8021164 m!8384090))

(declare-fun m!8384092 () Bool)

(assert (=> b!8021166 m!8384092))

(assert (=> b!8021166 m!8384042))

(assert (=> b!8021123 d!2391854))

(declare-fun d!2391856 () Bool)

(declare-fun lt!2719972 () Int)

(assert (=> d!2391856 (>= lt!2719972 0)))

(declare-fun e!4725122 () Int)

(assert (=> d!2391856 (= lt!2719972 e!4725122)))

(declare-fun c!1472107 () Bool)

(assert (=> d!2391856 (= c!1472107 (is-Nil!74867 (t!390734 p1!173)))))

(assert (=> d!2391856 (= (size!43652 (t!390734 p1!173)) lt!2719972)))

(declare-fun b!8021175 () Bool)

(assert (=> b!8021175 (= e!4725122 0)))

(declare-fun b!8021176 () Bool)

(assert (=> b!8021176 (= e!4725122 (+ 1 (size!43652 (t!390734 (t!390734 p1!173)))))))

(assert (= (and d!2391856 c!1472107) b!8021175))

(assert (= (and d!2391856 (not c!1472107)) b!8021176))

(declare-fun m!8384094 () Bool)

(assert (=> b!8021176 m!8384094))

(assert (=> b!8021118 d!2391856))

(declare-fun d!2391858 () Bool)

(declare-fun lt!2719973 () Int)

(assert (=> d!2391858 (>= lt!2719973 0)))

(declare-fun e!4725123 () Int)

(assert (=> d!2391858 (= lt!2719973 e!4725123)))

(declare-fun c!1472108 () Bool)

(assert (=> d!2391858 (= c!1472108 (is-Nil!74867 lt!2719956))))

(assert (=> d!2391858 (= (size!43652 lt!2719956) lt!2719973)))

(declare-fun b!8021177 () Bool)

(assert (=> b!8021177 (= e!4725123 0)))

(declare-fun b!8021178 () Bool)

(assert (=> b!8021178 (= e!4725123 (+ 1 (size!43652 (t!390734 lt!2719956))))))

(assert (= (and d!2391858 c!1472108) b!8021177))

(assert (= (and d!2391858 (not c!1472108)) b!8021178))

(declare-fun m!8384096 () Bool)

(assert (=> b!8021178 m!8384096))

(assert (=> b!8021118 d!2391858))

(declare-fun d!2391860 () Bool)

(declare-fun lt!2719974 () Int)

(assert (=> d!2391860 (>= lt!2719974 0)))

(declare-fun e!4725124 () Int)

(assert (=> d!2391860 (= lt!2719974 e!4725124)))

(declare-fun c!1472109 () Bool)

(assert (=> d!2391860 (= c!1472109 (is-Nil!74867 p1!173))))

(assert (=> d!2391860 (= (size!43652 p1!173) lt!2719974)))

(declare-fun b!8021179 () Bool)

(assert (=> b!8021179 (= e!4725124 0)))

(declare-fun b!8021180 () Bool)

(assert (=> b!8021180 (= e!4725124 (+ 1 (size!43652 (t!390734 p1!173))))))

(assert (= (and d!2391860 c!1472109) b!8021179))

(assert (= (and d!2391860 (not c!1472109)) b!8021180))

(assert (=> b!8021180 m!8384040))

(assert (=> b!8021117 d!2391860))

(declare-fun d!2391862 () Bool)

(declare-fun lt!2719975 () Int)

(assert (=> d!2391862 (>= lt!2719975 0)))

(declare-fun e!4725125 () Int)

(assert (=> d!2391862 (= lt!2719975 e!4725125)))

(declare-fun c!1472110 () Bool)

(assert (=> d!2391862 (= c!1472110 (is-Nil!74867 p2!173))))

(assert (=> d!2391862 (= (size!43652 p2!173) lt!2719975)))

(declare-fun b!8021181 () Bool)

(assert (=> b!8021181 (= e!4725125 0)))

(declare-fun b!8021182 () Bool)

(assert (=> b!8021182 (= e!4725125 (+ 1 (size!43652 (t!390734 p2!173))))))

(assert (= (and d!2391862 c!1472110) b!8021181))

(assert (= (and d!2391862 (not c!1472110)) b!8021182))

(declare-fun m!8384098 () Bool)

(assert (=> b!8021182 m!8384098))

(assert (=> b!8021117 d!2391862))

(declare-fun b!8021183 () Bool)

(declare-fun e!4725128 () Bool)

(declare-fun e!4725127 () Bool)

(assert (=> b!8021183 (= e!4725128 e!4725127)))

(declare-fun res!3171633 () Bool)

(assert (=> b!8021183 (=> (not res!3171633) (not e!4725127))))

(assert (=> b!8021183 (= res!3171633 (not (is-Nil!74867 lt!2719957)))))

(declare-fun b!8021185 () Bool)

(assert (=> b!8021185 (= e!4725127 (isPrefix!6798 (tail!15941 (t!390734 p1!173)) (tail!15941 lt!2719957)))))

(declare-fun b!8021184 () Bool)

(declare-fun res!3171631 () Bool)

(assert (=> b!8021184 (=> (not res!3171631) (not e!4725127))))

(assert (=> b!8021184 (= res!3171631 (= (head!16406 (t!390734 p1!173)) (head!16406 lt!2719957)))))

(declare-fun b!8021186 () Bool)

(declare-fun e!4725126 () Bool)

(assert (=> b!8021186 (= e!4725126 (>= (size!43652 lt!2719957) (size!43652 (t!390734 p1!173))))))

(declare-fun d!2391864 () Bool)

(assert (=> d!2391864 e!4725126))

(declare-fun res!3171634 () Bool)

(assert (=> d!2391864 (=> res!3171634 e!4725126)))

(declare-fun lt!2719976 () Bool)

(assert (=> d!2391864 (= res!3171634 (not lt!2719976))))

(assert (=> d!2391864 (= lt!2719976 e!4725128)))

(declare-fun res!3171632 () Bool)

(assert (=> d!2391864 (=> res!3171632 e!4725128)))

(assert (=> d!2391864 (= res!3171632 (is-Nil!74867 (t!390734 p1!173)))))

(assert (=> d!2391864 (= (isPrefix!6798 (t!390734 p1!173) lt!2719957) lt!2719976)))

(assert (= (and d!2391864 (not res!3171632)) b!8021183))

(assert (= (and b!8021183 res!3171633) b!8021184))

(assert (= (and b!8021184 res!3171631) b!8021185))

(assert (= (and d!2391864 (not res!3171634)) b!8021186))

(declare-fun m!8384100 () Bool)

(assert (=> b!8021185 m!8384100))

(assert (=> b!8021185 m!8384084))

(assert (=> b!8021185 m!8384100))

(assert (=> b!8021185 m!8384084))

(declare-fun m!8384102 () Bool)

(assert (=> b!8021185 m!8384102))

(declare-fun m!8384104 () Bool)

(assert (=> b!8021184 m!8384104))

(assert (=> b!8021184 m!8384090))

(assert (=> b!8021186 m!8384092))

(assert (=> b!8021186 m!8384040))

(assert (=> b!8021121 d!2391864))

(declare-fun d!2391866 () Bool)

(assert (=> d!2391866 (= (tail!15941 l!3353) (t!390734 l!3353))))

(assert (=> b!8021121 d!2391866))

(declare-fun d!2391868 () Bool)

(assert (=> d!2391868 (= (tail!15941 p2!173) (t!390734 p2!173))))

(assert (=> b!8021121 d!2391868))

(declare-fun b!8021187 () Bool)

(declare-fun e!4725131 () Bool)

(declare-fun e!4725130 () Bool)

(assert (=> b!8021187 (= e!4725131 e!4725130)))

(declare-fun res!3171637 () Bool)

(assert (=> b!8021187 (=> (not res!3171637) (not e!4725130))))

(assert (=> b!8021187 (= res!3171637 (not (is-Nil!74867 l!3353)))))

(declare-fun b!8021189 () Bool)

(assert (=> b!8021189 (= e!4725130 (isPrefix!6798 (tail!15941 p1!173) (tail!15941 l!3353)))))

(declare-fun b!8021188 () Bool)

(declare-fun res!3171635 () Bool)

(assert (=> b!8021188 (=> (not res!3171635) (not e!4725130))))

(assert (=> b!8021188 (= res!3171635 (= (head!16406 p1!173) (head!16406 l!3353)))))

(declare-fun b!8021190 () Bool)

(declare-fun e!4725129 () Bool)

(assert (=> b!8021190 (= e!4725129 (>= (size!43652 l!3353) (size!43652 p1!173)))))

(declare-fun d!2391870 () Bool)

(assert (=> d!2391870 e!4725129))

(declare-fun res!3171638 () Bool)

(assert (=> d!2391870 (=> res!3171638 e!4725129)))

(declare-fun lt!2719977 () Bool)

(assert (=> d!2391870 (= res!3171638 (not lt!2719977))))

(assert (=> d!2391870 (= lt!2719977 e!4725131)))

(declare-fun res!3171636 () Bool)

(assert (=> d!2391870 (=> res!3171636 e!4725131)))

(assert (=> d!2391870 (= res!3171636 (is-Nil!74867 p1!173))))

(assert (=> d!2391870 (= (isPrefix!6798 p1!173 l!3353) lt!2719977)))

(assert (= (and d!2391870 (not res!3171636)) b!8021187))

(assert (= (and b!8021187 res!3171637) b!8021188))

(assert (= (and b!8021188 res!3171635) b!8021189))

(assert (= (and d!2391870 (not res!3171638)) b!8021190))

(declare-fun m!8384106 () Bool)

(assert (=> b!8021189 m!8384106))

(assert (=> b!8021189 m!8384050))

(assert (=> b!8021189 m!8384106))

(assert (=> b!8021189 m!8384050))

(declare-fun m!8384108 () Bool)

(assert (=> b!8021189 m!8384108))

(declare-fun m!8384110 () Bool)

(assert (=> b!8021188 m!8384110))

(assert (=> b!8021188 m!8384078))

(assert (=> b!8021190 m!8384080))

(assert (=> b!8021190 m!8384044))

(assert (=> start!755034 d!2391870))

(declare-fun b!8021199 () Bool)

(declare-fun e!4725136 () Bool)

(declare-fun tp!2400663 () Bool)

(assert (=> b!8021199 (= e!4725136 (and tp_is_empty!54067 tp!2400663))))

(assert (=> b!8021116 (= tp!2400649 e!4725136)))

(assert (= (and b!8021116 (is-Cons!74867 (t!390734 p2!173))) b!8021199))

(declare-fun b!8021200 () Bool)

(declare-fun e!4725137 () Bool)

(declare-fun tp!2400664 () Bool)

(assert (=> b!8021200 (= e!4725137 (and tp_is_empty!54067 tp!2400664))))

(assert (=> b!8021115 (= tp!2400651 e!4725137)))

(assert (= (and b!8021115 (is-Cons!74867 (t!390734 l!3353))) b!8021200))

(declare-fun b!8021201 () Bool)

(declare-fun e!4725138 () Bool)

(declare-fun tp!2400665 () Bool)

(assert (=> b!8021201 (= e!4725138 (and tp_is_empty!54067 tp!2400665))))

(assert (=> b!8021120 (= tp!2400650 e!4725138)))

(assert (= (and b!8021120 (is-Cons!74867 (t!390734 p1!173))) b!8021201))

(push 1)

(assert (not b!8021186))

(assert (not b!8021165))

(assert (not b!8021176))

(assert (not b!8021180))

(assert (not b!8021188))

(assert (not b!8021160))

(assert (not b!8021164))

(assert (not b!8021189))

(assert (not b!8021201))

(assert (not b!8021162))

(assert (not b!8021182))

(assert (not b!8021166))

(assert (not b!8021184))

(assert (not b!8021200))

(assert (not b!8021185))

(assert (not b!8021199))

(assert (not b!8021178))

(assert (not b!8021161))

(assert tp_is_empty!54067)

(assert (not b!8021190))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

