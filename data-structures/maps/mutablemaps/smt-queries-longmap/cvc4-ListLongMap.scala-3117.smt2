; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43826 () Bool)

(assert start!43826)

(declare-fun b!483901 () Bool)

(declare-fun e!284851 () Bool)

(declare-datatypes ((B!1128 0))(
  ( (B!1129 (val!7016 Int)) )
))
(declare-datatypes ((tuple2!9230 0))(
  ( (tuple2!9231 (_1!4625 (_ BitVec 64)) (_2!4625 B!1128)) )
))
(declare-datatypes ((List!9315 0))(
  ( (Nil!9312) (Cons!9311 (h!10167 tuple2!9230) (t!15545 List!9315)) )
))
(declare-fun l!956 () List!9315)

(declare-fun isStrictlySorted!415 (List!9315) Bool)

(assert (=> b!483901 (= e!284851 (not (isStrictlySorted!415 (t!15545 l!956))))))

(declare-fun b!483899 () Bool)

(declare-fun res!288390 () Bool)

(declare-fun e!284850 () Bool)

(assert (=> b!483899 (=> (not res!288390) (not e!284850))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!381 (List!9315 (_ BitVec 64)) Bool)

(assert (=> b!483899 (= res!288390 (not (containsKey!381 l!956 key!251)))))

(declare-fun res!288392 () Bool)

(assert (=> start!43826 (=> (not res!288392) (not e!284850))))

(assert (=> start!43826 (= res!288392 (isStrictlySorted!415 l!956))))

(assert (=> start!43826 e!284850))

(declare-fun e!284849 () Bool)

(assert (=> start!43826 e!284849))

(assert (=> start!43826 true))

(declare-fun tp_is_empty!13937 () Bool)

(assert (=> start!43826 tp_is_empty!13937))

(declare-fun b!483902 () Bool)

(declare-fun tp!43504 () Bool)

(assert (=> b!483902 (= e!284849 (and tp_is_empty!13937 tp!43504))))

(declare-fun b!483900 () Bool)

(assert (=> b!483900 (= e!284850 e!284851)))

(declare-fun res!288391 () Bool)

(assert (=> b!483900 (=> (not res!288391) (not e!284851))))

(assert (=> b!483900 (= res!288391 (and (is-Cons!9311 l!956) (bvslt (_1!4625 (h!10167 l!956)) key!251)))))

(declare-fun value!166 () B!1128)

(declare-fun lt!219311 () List!9315)

(declare-fun insertStrictlySorted!234 (List!9315 (_ BitVec 64) B!1128) List!9315)

(assert (=> b!483900 (= lt!219311 (insertStrictlySorted!234 l!956 key!251 value!166))))

(assert (= (and start!43826 res!288392) b!483899))

(assert (= (and b!483899 res!288390) b!483900))

(assert (= (and b!483900 res!288391) b!483901))

(assert (= (and start!43826 (is-Cons!9311 l!956)) b!483902))

(declare-fun m!464735 () Bool)

(assert (=> b!483901 m!464735))

(declare-fun m!464737 () Bool)

(assert (=> b!483899 m!464737))

(declare-fun m!464739 () Bool)

(assert (=> start!43826 m!464739))

(declare-fun m!464741 () Bool)

(assert (=> b!483900 m!464741))

(push 1)

(assert (not start!43826))

(assert (not b!483900))

(assert tp_is_empty!13937)

(assert (not b!483899))

(assert (not b!483901))

(assert (not b!483902))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76925 () Bool)

(declare-fun e!284910 () Bool)

(assert (=> d!76925 e!284910))

(declare-fun res!288428 () Bool)

(assert (=> d!76925 (=> (not res!288428) (not e!284910))))

(declare-fun lt!219319 () List!9315)

(assert (=> d!76925 (= res!288428 (isStrictlySorted!415 lt!219319))))

(declare-fun e!284908 () List!9315)

(assert (=> d!76925 (= lt!219319 e!284908)))

(declare-fun c!58126 () Bool)

(assert (=> d!76925 (= c!58126 (and (is-Cons!9311 l!956) (bvslt (_1!4625 (h!10167 l!956)) key!251)))))

(assert (=> d!76925 (isStrictlySorted!415 l!956)))

(assert (=> d!76925 (= (insertStrictlySorted!234 l!956 key!251 value!166) lt!219319)))

(declare-fun b!483993 () Bool)

(declare-fun e!284909 () List!9315)

(assert (=> b!483993 (= e!284909 (insertStrictlySorted!234 (t!15545 l!956) key!251 value!166))))

(declare-fun b!483994 () Bool)

(declare-fun e!284907 () List!9315)

(declare-fun call!31088 () List!9315)

(assert (=> b!483994 (= e!284907 call!31088)))

(declare-fun b!483995 () Bool)

(assert (=> b!483995 (= e!284908 e!284907)))

(declare-fun c!58129 () Bool)

(assert (=> b!483995 (= c!58129 (and (is-Cons!9311 l!956) (= (_1!4625 (h!10167 l!956)) key!251)))))

(declare-fun b!483996 () Bool)

(declare-fun c!58127 () Bool)

(assert (=> b!483996 (= c!58127 (and (is-Cons!9311 l!956) (bvsgt (_1!4625 (h!10167 l!956)) key!251)))))

(declare-fun e!284911 () List!9315)

(assert (=> b!483996 (= e!284907 e!284911)))

(declare-fun b!483997 () Bool)

(declare-fun res!288427 () Bool)

(assert (=> b!483997 (=> (not res!288427) (not e!284910))))

(assert (=> b!483997 (= res!288427 (containsKey!381 lt!219319 key!251))))

(declare-fun call!31086 () List!9315)

(declare-fun bm!31083 () Bool)

(declare-fun $colon$colon!117 (List!9315 tuple2!9230) List!9315)

(assert (=> bm!31083 (= call!31086 ($colon$colon!117 e!284909 (ite c!58126 (h!10167 l!956) (tuple2!9231 key!251 value!166))))))

(declare-fun c!58128 () Bool)

(assert (=> bm!31083 (= c!58128 c!58126)))

(declare-fun bm!31084 () Bool)

(declare-fun call!31087 () List!9315)

(assert (=> bm!31084 (= call!31087 call!31088)))

(declare-fun bm!31085 () Bool)

(assert (=> bm!31085 (= call!31088 call!31086)))

(declare-fun b!483998 () Bool)

(assert (=> b!483998 (= e!284909 (ite c!58129 (t!15545 l!956) (ite c!58127 (Cons!9311 (h!10167 l!956) (t!15545 l!956)) Nil!9312)))))

(declare-fun b!483999 () Bool)

(declare-fun contains!2679 (List!9315 tuple2!9230) Bool)

(assert (=> b!483999 (= e!284910 (contains!2679 lt!219319 (tuple2!9231 key!251 value!166)))))

(declare-fun b!484000 () Bool)

(assert (=> b!484000 (= e!284911 call!31087)))

(declare-fun b!484001 () Bool)

(assert (=> b!484001 (= e!284908 call!31086)))

(declare-fun b!484002 () Bool)

(assert (=> b!484002 (= e!284911 call!31087)))

(assert (= (and d!76925 c!58126) b!484001))

(assert (= (and d!76925 (not c!58126)) b!483995))

(assert (= (and b!483995 c!58129) b!483994))

(assert (= (and b!483995 (not c!58129)) b!483996))

(assert (= (and b!483996 c!58127) b!484000))

(assert (= (and b!483996 (not c!58127)) b!484002))

(assert (= (or b!484000 b!484002) bm!31084))

(assert (= (or b!483994 bm!31084) bm!31085))

(assert (= (or b!484001 bm!31085) bm!31083))

(assert (= (and bm!31083 c!58128) b!483993))

(assert (= (and bm!31083 (not c!58128)) b!483998))

(assert (= (and d!76925 res!288428) b!483997))

(assert (= (and b!483997 res!288427) b!483999))

(declare-fun m!464759 () Bool)

(assert (=> b!483997 m!464759))

(declare-fun m!464761 () Bool)

(assert (=> d!76925 m!464761))

(assert (=> d!76925 m!464739))

(declare-fun m!464763 () Bool)

(assert (=> bm!31083 m!464763))

(declare-fun m!464765 () Bool)

(assert (=> b!483993 m!464765))

(declare-fun m!464767 () Bool)

(assert (=> b!483999 m!464767))

(assert (=> b!483900 d!76925))

(declare-fun d!76935 () Bool)

(declare-fun res!288443 () Bool)

(declare-fun e!284931 () Bool)

(assert (