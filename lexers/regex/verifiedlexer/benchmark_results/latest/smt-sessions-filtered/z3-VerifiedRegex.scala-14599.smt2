; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755932 () Bool)

(assert start!755932)

(declare-fun b!8027138 () Bool)

(declare-fun e!4728944 () Bool)

(declare-fun tp_is_empty!54297 () Bool)

(declare-fun tp!2402229 () Bool)

(assert (=> b!8027138 (= e!4728944 (and tp_is_empty!54297 tp!2402229))))

(declare-fun b!8027139 () Bool)

(declare-fun e!4728943 () Bool)

(declare-fun tp!2402231 () Bool)

(assert (=> b!8027139 (= e!4728943 (and tp_is_empty!54297 tp!2402231))))

(declare-fun b!8027140 () Bool)

(declare-fun e!4728942 () Bool)

(declare-datatypes ((B!4393 0))(
  ( (B!4394 (val!32596 Int)) )
))
(declare-datatypes ((List!75112 0))(
  ( (Nil!74986) (Cons!74986 (h!81434 B!4393) (t!390868 List!75112)) )
))
(declare-fun s1!480 () List!75112)

(assert (=> b!8027140 (= e!4728942 (not (= s1!480 Nil!74986)))))

(declare-fun lt!2721163 () List!75112)

(declare-fun contains!20944 (List!75112 B!4393) Bool)

(declare-fun head!16478 (List!75112) B!4393)

(assert (=> b!8027140 (contains!20944 lt!2721163 (head!16478 s1!480))))

(declare-fun lt!2721161 () List!75112)

(declare-fun p1!159 () List!75112)

(declare-datatypes ((Unit!170960 0))(
  ( (Unit!170961) )
))
(declare-fun lt!2721160 () Unit!170960)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!160 (List!75112 List!75112 List!75112 List!75112) Unit!170960)

(assert (=> b!8027140 (= lt!2721160 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!160 (t!390868 p1!159) s1!480 lt!2721163 lt!2721161))))

(declare-fun b!8027141 () Bool)

(declare-fun e!4728949 () Bool)

(declare-fun e!4728945 () Bool)

(assert (=> b!8027141 (= e!4728949 e!4728945)))

(declare-fun res!3174465 () Bool)

(assert (=> b!8027141 (=> (not res!3174465) (not e!4728945))))

(declare-fun lt!2721164 () List!75112)

(declare-fun l!3185 () List!75112)

(assert (=> b!8027141 (= res!3174465 (= lt!2721164 l!3185))))

(declare-fun ++!18588 (List!75112 List!75112) List!75112)

(assert (=> b!8027141 (= lt!2721164 (++!18588 p1!159 s1!480))))

(declare-fun b!8027142 () Bool)

(declare-fun res!3174464 () Bool)

(assert (=> b!8027142 (=> (not res!3174464) (not e!4728945))))

(declare-fun p2!159 () List!75112)

(declare-fun size!43721 (List!75112) Int)

(assert (=> b!8027142 (= res!3174464 (< (size!43721 p1!159) (size!43721 p2!159)))))

(declare-fun b!8027143 () Bool)

(declare-fun e!4728946 () Bool)

(declare-fun tp!2402230 () Bool)

(assert (=> b!8027143 (= e!4728946 (and tp_is_empty!54297 tp!2402230))))

(declare-fun b!8027144 () Bool)

(declare-fun res!3174470 () Bool)

(assert (=> b!8027144 (=> (not res!3174470) (not e!4728945))))

(declare-fun isEmpty!42994 (List!75112) Bool)

(assert (=> b!8027144 (= res!3174470 (not (isEmpty!42994 s1!480)))))

(declare-fun b!8027145 () Bool)

(declare-fun res!3174469 () Bool)

(assert (=> b!8027145 (=> res!3174469 e!4728942)))

(assert (=> b!8027145 (= res!3174469 (>= (size!43721 (t!390868 p1!159)) (size!43721 lt!2721163)))))

(declare-fun res!3174467 () Bool)

(assert (=> start!755932 (=> (not res!3174467) (not e!4728949))))

(declare-fun isPrefix!6861 (List!75112 List!75112) Bool)

(assert (=> start!755932 (= res!3174467 (isPrefix!6861 p2!159 l!3185))))

(assert (=> start!755932 e!4728949))

(assert (=> start!755932 e!4728946))

(assert (=> start!755932 e!4728944))

(assert (=> start!755932 e!4728943))

(declare-fun e!4728948 () Bool)

(assert (=> start!755932 e!4728948))

(declare-fun b!8027146 () Bool)

(declare-fun tp!2402228 () Bool)

(assert (=> b!8027146 (= e!4728948 (and tp_is_empty!54297 tp!2402228))))

(declare-fun b!8027147 () Bool)

(declare-fun e!4728947 () Bool)

(assert (=> b!8027147 (= e!4728947 e!4728942)))

(declare-fun res!3174471 () Bool)

(assert (=> b!8027147 (=> res!3174471 e!4728942)))

(assert (=> b!8027147 (= res!3174471 (not (isPrefix!6861 lt!2721163 lt!2721161)))))

(declare-fun tail!16021 (List!75112) List!75112)

(assert (=> b!8027147 (= lt!2721161 (tail!16021 l!3185))))

(assert (=> b!8027147 (= lt!2721163 (tail!16021 p2!159))))

(declare-fun b!8027148 () Bool)

(declare-fun res!3174468 () Bool)

(assert (=> b!8027148 (=> res!3174468 e!4728942)))

(assert (=> b!8027148 (= res!3174468 (not (= (++!18588 (t!390868 p1!159) s1!480) lt!2721161)))))

(declare-fun b!8027149 () Bool)

(assert (=> b!8027149 (= e!4728945 (not e!4728947))))

(declare-fun res!3174466 () Bool)

(assert (=> b!8027149 (=> res!3174466 e!4728947)))

(get-info :version)

(assert (=> b!8027149 (= res!3174466 (not ((_ is Cons!74986) p1!159)))))

(assert (=> b!8027149 (isPrefix!6861 p1!159 lt!2721164)))

(declare-fun lt!2721162 () Unit!170960)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3982 (List!75112 List!75112) Unit!170960)

(assert (=> b!8027149 (= lt!2721162 (lemmaConcatTwoListThenFirstIsPrefix!3982 p1!159 s1!480))))

(assert (= (and start!755932 res!3174467) b!8027141))

(assert (= (and b!8027141 res!3174465) b!8027144))

(assert (= (and b!8027144 res!3174470) b!8027142))

(assert (= (and b!8027142 res!3174464) b!8027149))

(assert (= (and b!8027149 (not res!3174466)) b!8027147))

(assert (= (and b!8027147 (not res!3174471)) b!8027148))

(assert (= (and b!8027148 (not res!3174468)) b!8027145))

(assert (= (and b!8027145 (not res!3174469)) b!8027140))

(assert (= (and start!755932 ((_ is Cons!74986) p2!159)) b!8027143))

(assert (= (and start!755932 ((_ is Cons!74986) l!3185)) b!8027138))

(assert (= (and start!755932 ((_ is Cons!74986) p1!159)) b!8027139))

(assert (= (and start!755932 ((_ is Cons!74986) s1!480)) b!8027146))

(declare-fun m!8389326 () Bool)

(assert (=> b!8027141 m!8389326))

(declare-fun m!8389328 () Bool)

(assert (=> b!8027148 m!8389328))

(declare-fun m!8389330 () Bool)

(assert (=> b!8027149 m!8389330))

(declare-fun m!8389332 () Bool)

(assert (=> b!8027149 m!8389332))

(declare-fun m!8389334 () Bool)

(assert (=> b!8027142 m!8389334))

(declare-fun m!8389336 () Bool)

(assert (=> b!8027142 m!8389336))

(declare-fun m!8389338 () Bool)

(assert (=> start!755932 m!8389338))

(declare-fun m!8389340 () Bool)

(assert (=> b!8027144 m!8389340))

(declare-fun m!8389342 () Bool)

(assert (=> b!8027145 m!8389342))

(declare-fun m!8389344 () Bool)

(assert (=> b!8027145 m!8389344))

(declare-fun m!8389346 () Bool)

(assert (=> b!8027147 m!8389346))

(declare-fun m!8389348 () Bool)

(assert (=> b!8027147 m!8389348))

(declare-fun m!8389350 () Bool)

(assert (=> b!8027147 m!8389350))

(declare-fun m!8389352 () Bool)

(assert (=> b!8027140 m!8389352))

(assert (=> b!8027140 m!8389352))

(declare-fun m!8389354 () Bool)

(assert (=> b!8027140 m!8389354))

(declare-fun m!8389356 () Bool)

(assert (=> b!8027140 m!8389356))

(check-sat (not b!8027138) (not b!8027140) (not b!8027149) (not start!755932) (not b!8027142) (not b!8027145) (not b!8027144) (not b!8027139) (not b!8027146) (not b!8027141) tp_is_empty!54297 (not b!8027148) (not b!8027147) (not b!8027143))
(check-sat)
(get-model)

(declare-fun b!8027177 () Bool)

(declare-fun lt!2721175 () List!75112)

(declare-fun e!4728965 () Bool)

(assert (=> b!8027177 (= e!4728965 (or (not (= s1!480 Nil!74986)) (= lt!2721175 p1!159)))))

(declare-fun b!8027175 () Bool)

(declare-fun e!4728964 () List!75112)

(assert (=> b!8027175 (= e!4728964 (Cons!74986 (h!81434 p1!159) (++!18588 (t!390868 p1!159) s1!480)))))

(declare-fun b!8027176 () Bool)

(declare-fun res!3174481 () Bool)

(assert (=> b!8027176 (=> (not res!3174481) (not e!4728965))))

(assert (=> b!8027176 (= res!3174481 (= (size!43721 lt!2721175) (+ (size!43721 p1!159) (size!43721 s1!480))))))

(declare-fun d!2393646 () Bool)

(assert (=> d!2393646 e!4728965))

(declare-fun res!3174480 () Bool)

(assert (=> d!2393646 (=> (not res!3174480) (not e!4728965))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15998 (List!75112) (InoxSet B!4393))

(assert (=> d!2393646 (= res!3174480 (= (content!15998 lt!2721175) ((_ map or) (content!15998 p1!159) (content!15998 s1!480))))))

(assert (=> d!2393646 (= lt!2721175 e!4728964)))

(declare-fun c!1472803 () Bool)

(assert (=> d!2393646 (= c!1472803 ((_ is Nil!74986) p1!159))))

(assert (=> d!2393646 (= (++!18588 p1!159 s1!480) lt!2721175)))

(declare-fun b!8027174 () Bool)

(assert (=> b!8027174 (= e!4728964 s1!480)))

(assert (= (and d!2393646 c!1472803) b!8027174))

(assert (= (and d!2393646 (not c!1472803)) b!8027175))

(assert (= (and d!2393646 res!3174480) b!8027176))

(assert (= (and b!8027176 res!3174481) b!8027177))

(assert (=> b!8027175 m!8389328))

(declare-fun m!8389364 () Bool)

(assert (=> b!8027176 m!8389364))

(assert (=> b!8027176 m!8389334))

(declare-fun m!8389366 () Bool)

(assert (=> b!8027176 m!8389366))

(declare-fun m!8389368 () Bool)

(assert (=> d!2393646 m!8389368))

(declare-fun m!8389370 () Bool)

(assert (=> d!2393646 m!8389370))

(declare-fun m!8389372 () Bool)

(assert (=> d!2393646 m!8389372))

(assert (=> b!8027141 d!2393646))

(declare-fun d!2393658 () Bool)

(declare-fun lt!2721179 () Int)

(assert (=> d!2393658 (>= lt!2721179 0)))

(declare-fun e!4728970 () Int)

(assert (=> d!2393658 (= lt!2721179 e!4728970)))

(declare-fun c!1472806 () Bool)

(assert (=> d!2393658 (= c!1472806 ((_ is Nil!74986) p1!159))))

(assert (=> d!2393658 (= (size!43721 p1!159) lt!2721179)))

(declare-fun b!8027184 () Bool)

(assert (=> b!8027184 (= e!4728970 0)))

(declare-fun b!8027185 () Bool)

(assert (=> b!8027185 (= e!4728970 (+ 1 (size!43721 (t!390868 p1!159))))))

(assert (= (and d!2393658 c!1472806) b!8027184))

(assert (= (and d!2393658 (not c!1472806)) b!8027185))

(assert (=> b!8027185 m!8389342))

(assert (=> b!8027142 d!2393658))

(declare-fun d!2393664 () Bool)

(declare-fun lt!2721180 () Int)

(assert (=> d!2393664 (>= lt!2721180 0)))

(declare-fun e!4728971 () Int)

(assert (=> d!2393664 (= lt!2721180 e!4728971)))

(declare-fun c!1472807 () Bool)

(assert (=> d!2393664 (= c!1472807 ((_ is Nil!74986) p2!159))))

(assert (=> d!2393664 (= (size!43721 p2!159) lt!2721180)))

(declare-fun b!8027186 () Bool)

(assert (=> b!8027186 (= e!4728971 0)))

(declare-fun b!8027187 () Bool)

(assert (=> b!8027187 (= e!4728971 (+ 1 (size!43721 (t!390868 p2!159))))))

(assert (= (and d!2393664 c!1472807) b!8027186))

(assert (= (and d!2393664 (not c!1472807)) b!8027187))

(declare-fun m!8389380 () Bool)

(assert (=> b!8027187 m!8389380))

(assert (=> b!8027142 d!2393664))

(declare-fun b!8027204 () Bool)

(declare-fun e!4728984 () Bool)

(declare-fun e!4728986 () Bool)

(assert (=> b!8027204 (= e!4728984 e!4728986)))

(declare-fun res!3174502 () Bool)

(assert (=> b!8027204 (=> (not res!3174502) (not e!4728986))))

(assert (=> b!8027204 (= res!3174502 (not ((_ is Nil!74986) lt!2721161)))))

(declare-fun b!8027207 () Bool)

(declare-fun e!4728985 () Bool)

(assert (=> b!8027207 (= e!4728985 (>= (size!43721 lt!2721161) (size!43721 lt!2721163)))))

(declare-fun b!8027206 () Bool)

(assert (=> b!8027206 (= e!4728986 (isPrefix!6861 (tail!16021 lt!2721163) (tail!16021 lt!2721161)))))

(declare-fun b!8027205 () Bool)

(declare-fun res!3174503 () Bool)

(assert (=> b!8027205 (=> (not res!3174503) (not e!4728986))))

(assert (=> b!8027205 (= res!3174503 (= (head!16478 lt!2721163) (head!16478 lt!2721161)))))

(declare-fun d!2393666 () Bool)

(assert (=> d!2393666 e!4728985))

(declare-fun res!3174500 () Bool)

(assert (=> d!2393666 (=> res!3174500 e!4728985)))

(declare-fun lt!2721188 () Bool)

(assert (=> d!2393666 (= res!3174500 (not lt!2721188))))

(assert (=> d!2393666 (= lt!2721188 e!4728984)))

(declare-fun res!3174501 () Bool)

(assert (=> d!2393666 (=> res!3174501 e!4728984)))

(assert (=> d!2393666 (= res!3174501 ((_ is Nil!74986) lt!2721163))))

(assert (=> d!2393666 (= (isPrefix!6861 lt!2721163 lt!2721161) lt!2721188)))

(assert (= (and d!2393666 (not res!3174501)) b!8027204))

(assert (= (and b!8027204 res!3174502) b!8027205))

(assert (= (and b!8027205 res!3174503) b!8027206))

(assert (= (and d!2393666 (not res!3174500)) b!8027207))

(declare-fun m!8389384 () Bool)

(assert (=> b!8027207 m!8389384))

(assert (=> b!8027207 m!8389344))

(declare-fun m!8389386 () Bool)

(assert (=> b!8027206 m!8389386))

(declare-fun m!8389388 () Bool)

(assert (=> b!8027206 m!8389388))

(assert (=> b!8027206 m!8389386))

(assert (=> b!8027206 m!8389388))

(declare-fun m!8389390 () Bool)

(assert (=> b!8027206 m!8389390))

(declare-fun m!8389392 () Bool)

(assert (=> b!8027205 m!8389392))

(declare-fun m!8389394 () Bool)

(assert (=> b!8027205 m!8389394))

(assert (=> b!8027147 d!2393666))

(declare-fun d!2393670 () Bool)

(assert (=> d!2393670 (= (tail!16021 l!3185) (t!390868 l!3185))))

(assert (=> b!8027147 d!2393670))

(declare-fun d!2393672 () Bool)

(assert (=> d!2393672 (= (tail!16021 p2!159) (t!390868 p2!159))))

(assert (=> b!8027147 d!2393672))

(declare-fun b!8027212 () Bool)

(declare-fun e!4728990 () Bool)

(declare-fun e!4728992 () Bool)

(assert (=> b!8027212 (= e!4728990 e!4728992)))

(declare-fun res!3174510 () Bool)

(assert (=> b!8027212 (=> (not res!3174510) (not e!4728992))))

(assert (=> b!8027212 (= res!3174510 (not ((_ is Nil!74986) l!3185)))))

(declare-fun b!8027215 () Bool)

(declare-fun e!4728991 () Bool)

(assert (=> b!8027215 (= e!4728991 (>= (size!43721 l!3185) (size!43721 p2!159)))))

(declare-fun b!8027214 () Bool)

(assert (=> b!8027214 (= e!4728992 (isPrefix!6861 (tail!16021 p2!159) (tail!16021 l!3185)))))

(declare-fun b!8027213 () Bool)

(declare-fun res!3174511 () Bool)

(assert (=> b!8027213 (=> (not res!3174511) (not e!4728992))))

(assert (=> b!8027213 (= res!3174511 (= (head!16478 p2!159) (head!16478 l!3185)))))

(declare-fun d!2393674 () Bool)

(assert (=> d!2393674 e!4728991))

(declare-fun res!3174508 () Bool)

(assert (=> d!2393674 (=> res!3174508 e!4728991)))

(declare-fun lt!2721190 () Bool)

(assert (=> d!2393674 (= res!3174508 (not lt!2721190))))

(assert (=> d!2393674 (= lt!2721190 e!4728990)))

(declare-fun res!3174509 () Bool)

(assert (=> d!2393674 (=> res!3174509 e!4728990)))

(assert (=> d!2393674 (= res!3174509 ((_ is Nil!74986) p2!159))))

(assert (=> d!2393674 (= (isPrefix!6861 p2!159 l!3185) lt!2721190)))

(assert (= (and d!2393674 (not res!3174509)) b!8027212))

(assert (= (and b!8027212 res!3174510) b!8027213))

(assert (= (and b!8027213 res!3174511) b!8027214))

(assert (= (and d!2393674 (not res!3174508)) b!8027215))

(declare-fun m!8389400 () Bool)

(assert (=> b!8027215 m!8389400))

(assert (=> b!8027215 m!8389336))

(assert (=> b!8027214 m!8389350))

(assert (=> b!8027214 m!8389348))

(assert (=> b!8027214 m!8389350))

(assert (=> b!8027214 m!8389348))

(declare-fun m!8389406 () Bool)

(assert (=> b!8027214 m!8389406))

(declare-fun m!8389408 () Bool)

(assert (=> b!8027213 m!8389408))

(declare-fun m!8389410 () Bool)

(assert (=> b!8027213 m!8389410))

(assert (=> start!755932 d!2393674))

(declare-fun b!8027223 () Bool)

(declare-fun lt!2721192 () List!75112)

(declare-fun e!4728997 () Bool)

(assert (=> b!8027223 (= e!4728997 (or (not (= s1!480 Nil!74986)) (= lt!2721192 (t!390868 p1!159))))))

(declare-fun b!8027221 () Bool)

(declare-fun e!4728996 () List!75112)

(assert (=> b!8027221 (= e!4728996 (Cons!74986 (h!81434 (t!390868 p1!159)) (++!18588 (t!390868 (t!390868 p1!159)) s1!480)))))

(declare-fun b!8027222 () Bool)

(declare-fun res!3174517 () Bool)

(assert (=> b!8027222 (=> (not res!3174517) (not e!4728997))))

(assert (=> b!8027222 (= res!3174517 (= (size!43721 lt!2721192) (+ (size!43721 (t!390868 p1!159)) (size!43721 s1!480))))))

(declare-fun d!2393678 () Bool)

(assert (=> d!2393678 e!4728997))

(declare-fun res!3174516 () Bool)

(assert (=> d!2393678 (=> (not res!3174516) (not e!4728997))))

(assert (=> d!2393678 (= res!3174516 (= (content!15998 lt!2721192) ((_ map or) (content!15998 (t!390868 p1!159)) (content!15998 s1!480))))))

(assert (=> d!2393678 (= lt!2721192 e!4728996)))

(declare-fun c!1472808 () Bool)

(assert (=> d!2393678 (= c!1472808 ((_ is Nil!74986) (t!390868 p1!159)))))

(assert (=> d!2393678 (= (++!18588 (t!390868 p1!159) s1!480) lt!2721192)))

(declare-fun b!8027220 () Bool)

(assert (=> b!8027220 (= e!4728996 s1!480)))

(assert (= (and d!2393678 c!1472808) b!8027220))

(assert (= (and d!2393678 (not c!1472808)) b!8027221))

(assert (= (and d!2393678 res!3174516) b!8027222))

(assert (= (and b!8027222 res!3174517) b!8027223))

(declare-fun m!8389424 () Bool)

(assert (=> b!8027221 m!8389424))

(declare-fun m!8389426 () Bool)

(assert (=> b!8027222 m!8389426))

(assert (=> b!8027222 m!8389342))

(assert (=> b!8027222 m!8389366))

(declare-fun m!8389428 () Bool)

(assert (=> d!2393678 m!8389428))

(declare-fun m!8389430 () Bool)

(assert (=> d!2393678 m!8389430))

(assert (=> d!2393678 m!8389372))

(assert (=> b!8027148 d!2393678))

(declare-fun d!2393682 () Bool)

(assert (=> d!2393682 (= (isEmpty!42994 s1!480) ((_ is Nil!74986) s1!480))))

(assert (=> b!8027144 d!2393682))

(declare-fun b!8027224 () Bool)

(declare-fun e!4728998 () Bool)

(declare-fun e!4729000 () Bool)

(assert (=> b!8027224 (= e!4728998 e!4729000)))

(declare-fun res!3174520 () Bool)

(assert (=> b!8027224 (=> (not res!3174520) (not e!4729000))))

(assert (=> b!8027224 (= res!3174520 (not ((_ is Nil!74986) lt!2721164)))))

(declare-fun b!8027227 () Bool)

(declare-fun e!4728999 () Bool)

(assert (=> b!8027227 (= e!4728999 (>= (size!43721 lt!2721164) (size!43721 p1!159)))))

(declare-fun b!8027226 () Bool)

(assert (=> b!8027226 (= e!4729000 (isPrefix!6861 (tail!16021 p1!159) (tail!16021 lt!2721164)))))

(declare-fun b!8027225 () Bool)

(declare-fun res!3174521 () Bool)

(assert (=> b!8027225 (=> (not res!3174521) (not e!4729000))))

(assert (=> b!8027225 (= res!3174521 (= (head!16478 p1!159) (head!16478 lt!2721164)))))

(declare-fun d!2393688 () Bool)

(assert (=> d!2393688 e!4728999))

(declare-fun res!3174518 () Bool)

(assert (=> d!2393688 (=> res!3174518 e!4728999)))

(declare-fun lt!2721193 () Bool)

(assert (=> d!2393688 (= res!3174518 (not lt!2721193))))

(assert (=> d!2393688 (= lt!2721193 e!4728998)))

(declare-fun res!3174519 () Bool)

(assert (=> d!2393688 (=> res!3174519 e!4728998)))

(assert (=> d!2393688 (= res!3174519 ((_ is Nil!74986) p1!159))))

(assert (=> d!2393688 (= (isPrefix!6861 p1!159 lt!2721164) lt!2721193)))

(assert (= (and d!2393688 (not res!3174519)) b!8027224))

(assert (= (and b!8027224 res!3174520) b!8027225))

(assert (= (and b!8027225 res!3174521) b!8027226))

(assert (= (and d!2393688 (not res!3174518)) b!8027227))

(declare-fun m!8389432 () Bool)

(assert (=> b!8027227 m!8389432))

(assert (=> b!8027227 m!8389334))

(declare-fun m!8389434 () Bool)

(assert (=> b!8027226 m!8389434))

(declare-fun m!8389436 () Bool)

(assert (=> b!8027226 m!8389436))

(assert (=> b!8027226 m!8389434))

(assert (=> b!8027226 m!8389436))

(declare-fun m!8389438 () Bool)

(assert (=> b!8027226 m!8389438))

(declare-fun m!8389440 () Bool)

(assert (=> b!8027225 m!8389440))

(declare-fun m!8389442 () Bool)

(assert (=> b!8027225 m!8389442))

(assert (=> b!8027149 d!2393688))

(declare-fun d!2393690 () Bool)

(assert (=> d!2393690 (isPrefix!6861 p1!159 (++!18588 p1!159 s1!480))))

(declare-fun lt!2721198 () Unit!170960)

(declare-fun choose!60457 (List!75112 List!75112) Unit!170960)

(assert (=> d!2393690 (= lt!2721198 (choose!60457 p1!159 s1!480))))

(assert (=> d!2393690 (= (lemmaConcatTwoListThenFirstIsPrefix!3982 p1!159 s1!480) lt!2721198)))

(declare-fun bs!1971350 () Bool)

(assert (= bs!1971350 d!2393690))

(assert (=> bs!1971350 m!8389326))

(assert (=> bs!1971350 m!8389326))

(declare-fun m!8389444 () Bool)

(assert (=> bs!1971350 m!8389444))

(declare-fun m!8389446 () Bool)

(assert (=> bs!1971350 m!8389446))

(assert (=> b!8027149 d!2393690))

(declare-fun d!2393692 () Bool)

(declare-fun lt!2721202 () Bool)

(assert (=> d!2393692 (= lt!2721202 (select (content!15998 lt!2721163) (head!16478 s1!480)))))

(declare-fun e!4729011 () Bool)

(assert (=> d!2393692 (= lt!2721202 e!4729011)))

(declare-fun res!3174532 () Bool)

(assert (=> d!2393692 (=> (not res!3174532) (not e!4729011))))

(assert (=> d!2393692 (= res!3174532 ((_ is Cons!74986) lt!2721163))))

(assert (=> d!2393692 (= (contains!20944 lt!2721163 (head!16478 s1!480)) lt!2721202)))

(declare-fun b!8027244 () Bool)

(declare-fun e!4729012 () Bool)

(assert (=> b!8027244 (= e!4729011 e!4729012)))

(declare-fun res!3174533 () Bool)

(assert (=> b!8027244 (=> res!3174533 e!4729012)))

(assert (=> b!8027244 (= res!3174533 (= (h!81434 lt!2721163) (head!16478 s1!480)))))

(declare-fun b!8027245 () Bool)

(assert (=> b!8027245 (= e!4729012 (contains!20944 (t!390868 lt!2721163) (head!16478 s1!480)))))

(assert (= (and d!2393692 res!3174532) b!8027244))

(assert (= (and b!8027244 (not res!3174533)) b!8027245))

(declare-fun m!8389458 () Bool)

(assert (=> d!2393692 m!8389458))

(assert (=> d!2393692 m!8389352))

(declare-fun m!8389460 () Bool)

(assert (=> d!2393692 m!8389460))

(assert (=> b!8027245 m!8389352))

(declare-fun m!8389462 () Bool)

(assert (=> b!8027245 m!8389462))

(assert (=> b!8027140 d!2393692))

(declare-fun d!2393696 () Bool)

(assert (=> d!2393696 (= (head!16478 s1!480) (h!81434 s1!480))))

(assert (=> b!8027140 d!2393696))

(declare-fun d!2393700 () Bool)

(assert (=> d!2393700 (contains!20944 lt!2721163 (head!16478 s1!480))))

(declare-fun lt!2721210 () Unit!170960)

(declare-fun choose!60458 (List!75112 List!75112 List!75112 List!75112) Unit!170960)

(assert (=> d!2393700 (= lt!2721210 (choose!60458 (t!390868 p1!159) s1!480 lt!2721163 lt!2721161))))

(assert (=> d!2393700 (isPrefix!6861 lt!2721163 lt!2721161)))

(assert (=> d!2393700 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!160 (t!390868 p1!159) s1!480 lt!2721163 lt!2721161) lt!2721210)))

(declare-fun bs!1971352 () Bool)

(assert (= bs!1971352 d!2393700))

(assert (=> bs!1971352 m!8389352))

(assert (=> bs!1971352 m!8389352))

(assert (=> bs!1971352 m!8389354))

(declare-fun m!8389480 () Bool)

(assert (=> bs!1971352 m!8389480))

(assert (=> bs!1971352 m!8389346))

(assert (=> b!8027140 d!2393700))

(declare-fun d!2393706 () Bool)

(declare-fun lt!2721211 () Int)

(assert (=> d!2393706 (>= lt!2721211 0)))

(declare-fun e!4729018 () Int)

(assert (=> d!2393706 (= lt!2721211 e!4729018)))

(declare-fun c!1472813 () Bool)

(assert (=> d!2393706 (= c!1472813 ((_ is Nil!74986) (t!390868 p1!159)))))

(assert (=> d!2393706 (= (size!43721 (t!390868 p1!159)) lt!2721211)))

(declare-fun b!8027254 () Bool)

(assert (=> b!8027254 (= e!4729018 0)))

(declare-fun b!8027255 () Bool)

(assert (=> b!8027255 (= e!4729018 (+ 1 (size!43721 (t!390868 (t!390868 p1!159)))))))

(assert (= (and d!2393706 c!1472813) b!8027254))

(assert (= (and d!2393706 (not c!1472813)) b!8027255))

(declare-fun m!8389490 () Bool)

(assert (=> b!8027255 m!8389490))

(assert (=> b!8027145 d!2393706))

(declare-fun d!2393708 () Bool)

(declare-fun lt!2721212 () Int)

(assert (=> d!2393708 (>= lt!2721212 0)))

(declare-fun e!4729021 () Int)

(assert (=> d!2393708 (= lt!2721212 e!4729021)))

(declare-fun c!1472814 () Bool)

(assert (=> d!2393708 (= c!1472814 ((_ is Nil!74986) lt!2721163))))

(assert (=> d!2393708 (= (size!43721 lt!2721163) lt!2721212)))

(declare-fun b!8027260 () Bool)

(assert (=> b!8027260 (= e!4729021 0)))

(declare-fun b!8027261 () Bool)

(assert (=> b!8027261 (= e!4729021 (+ 1 (size!43721 (t!390868 lt!2721163))))))

(assert (= (and d!2393708 c!1472814) b!8027260))

(assert (= (and d!2393708 (not c!1472814)) b!8027261))

(declare-fun m!8389492 () Bool)

(assert (=> b!8027261 m!8389492))

(assert (=> b!8027145 d!2393708))

(declare-fun b!8027270 () Bool)

(declare-fun e!4729028 () Bool)

(declare-fun tp!2402240 () Bool)

(assert (=> b!8027270 (= e!4729028 (and tp_is_empty!54297 tp!2402240))))

(assert (=> b!8027146 (= tp!2402228 e!4729028)))

(assert (= (and b!8027146 ((_ is Cons!74986) (t!390868 s1!480))) b!8027270))

(declare-fun b!8027271 () Bool)

(declare-fun e!4729029 () Bool)

(declare-fun tp!2402241 () Bool)

(assert (=> b!8027271 (= e!4729029 (and tp_is_empty!54297 tp!2402241))))

(assert (=> b!8027138 (= tp!2402229 e!4729029)))

(assert (= (and b!8027138 ((_ is Cons!74986) (t!390868 l!3185))) b!8027271))

(declare-fun b!8027272 () Bool)

(declare-fun e!4729030 () Bool)

(declare-fun tp!2402242 () Bool)

(assert (=> b!8027272 (= e!4729030 (and tp_is_empty!54297 tp!2402242))))

(assert (=> b!8027143 (= tp!2402230 e!4729030)))

(assert (= (and b!8027143 ((_ is Cons!74986) (t!390868 p2!159))) b!8027272))

(declare-fun b!8027273 () Bool)

(declare-fun e!4729031 () Bool)

(declare-fun tp!2402243 () Bool)

(assert (=> b!8027273 (= e!4729031 (and tp_is_empty!54297 tp!2402243))))

(assert (=> b!8027139 (= tp!2402231 e!4729031)))

(assert (= (and b!8027139 ((_ is Cons!74986) (t!390868 p1!159))) b!8027273))

(check-sat (not d!2393692) (not d!2393678) (not b!8027273) (not b!8027185) (not b!8027245) (not b!8027226) (not b!8027206) (not b!8027255) (not b!8027213) (not b!8027227) (not b!8027271) (not b!8027261) (not d!2393646) tp_is_empty!54297 (not b!8027221) (not d!2393690) (not b!8027215) (not b!8027176) (not b!8027272) (not b!8027175) (not b!8027270) (not b!8027187) (not b!8027225) (not b!8027222) (not b!8027207) (not d!2393700) (not b!8027205) (not b!8027214))
(check-sat)
