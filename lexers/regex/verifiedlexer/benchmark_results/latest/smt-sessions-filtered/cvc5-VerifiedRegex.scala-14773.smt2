; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759376 () Bool)

(assert start!759376)

(declare-fun res!3188312 () Bool)

(declare-fun e!4749269 () Bool)

(assert (=> start!759376 (=> (not res!3188312) (not e!4749269))))

(declare-datatypes ((K!22996 0))(
  ( (K!22997 (val!33069 Int)) )
))
(declare-datatypes ((B!4483 0))(
  ( (B!4484 (val!33070 Int)) )
))
(declare-datatypes ((tuple2!71034 0))(
  ( (tuple2!71035 (_1!38820 K!22996) (_2!38820 B!4483)) )
))
(declare-datatypes ((List!75772 0))(
  ( (Nil!75646) (Cons!75646 (h!82094 tuple2!71034) (t!391544 List!75772)) )
))
(declare-datatypes ((ListMap!7405 0))(
  ( (ListMap!7406 (toList!11977 List!75772)) )
))
(declare-fun thiss!41808 () ListMap!7405)

(declare-fun isEmpty!43034 (ListMap!7405) Bool)

(assert (=> start!759376 (= res!3188312 (not (isEmpty!43034 thiss!41808)))))

(assert (=> start!759376 e!4749269))

(declare-fun e!4749270 () Bool)

(declare-fun inv!97470 (ListMap!7405) Bool)

(assert (=> start!759376 (and (inv!97470 thiss!41808) e!4749270)))

(declare-fun b!8058962 () Bool)

(declare-fun tail!16059 (List!75772) List!75772)

(assert (=> b!8058962 (= e!4749269 (not (inv!97470 (ListMap!7406 (tail!16059 (toList!11977 thiss!41808))))))))

(declare-fun b!8058963 () Bool)

(declare-fun tp!2414320 () Bool)

(assert (=> b!8058963 (= e!4749270 tp!2414320)))

(assert (= (and start!759376 res!3188312) b!8058962))

(assert (= start!759376 b!8058963))

(declare-fun m!8412280 () Bool)

(assert (=> start!759376 m!8412280))

(declare-fun m!8412282 () Bool)

(assert (=> start!759376 m!8412282))

(declare-fun m!8412284 () Bool)

(assert (=> b!8058962 m!8412284))

(declare-fun m!8412286 () Bool)

(assert (=> b!8058962 m!8412286))

(push 1)

(assert (not start!759376))

(assert (not b!8058962))

(assert (not b!8058963))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2399230 () Bool)

(declare-fun e!4749279 () Bool)

(assert (=> d!2399230 e!4749279))

(declare-fun res!3188318 () Bool)

(assert (=> d!2399230 (=> res!3188318 e!4749279)))

(declare-fun size!43762 (List!75772) Int)

(assert (=> d!2399230 (= res!3188318 (>= (size!43762 (toList!11977 thiss!41808)) 2147483647))))

(declare-fun lt!2732510 () Bool)

(declare-fun isEmpty!43036 (List!75772) Bool)

(assert (=> d!2399230 (= lt!2732510 (isEmpty!43036 (toList!11977 thiss!41808)))))

(assert (=> d!2399230 (= (isEmpty!43034 thiss!41808) lt!2732510)))

(declare-fun b!8058972 () Bool)

(declare-fun size!43763 (ListMap!7405) (_ BitVec 32))

(assert (=> b!8058972 (= e!4749279 (= lt!2732510 (= (size!43763 thiss!41808) #b00000000000000000000000000000000)))))

(assert (= (and d!2399230 (not res!3188318)) b!8058972))

(declare-fun m!8412296 () Bool)

(assert (=> d!2399230 m!8412296))

(declare-fun m!8412298 () Bool)

(assert (=> d!2399230 m!8412298))

(declare-fun m!8412300 () Bool)

(assert (=> b!8058972 m!8412300))

(assert (=> start!759376 d!2399230))

(declare-fun d!2399232 () Bool)

(declare-fun invariantList!1968 (List!75772) Bool)

(assert (=> d!2399232 (= (inv!97470 thiss!41808) (invariantList!1968 (toList!11977 thiss!41808)))))

(declare-fun bs!1973530 () Bool)

(assert (= bs!1973530 d!2399232))

(declare-fun m!8412302 () Bool)

(assert (=> bs!1973530 m!8412302))

(assert (=> start!759376 d!2399232))

(declare-fun d!2399234 () Bool)

(assert (=> d!2399234 (= (inv!97470 (ListMap!7406 (tail!16059 (toList!11977 thiss!41808)))) (invariantList!1968 (toList!11977 (ListMap!7406 (tail!16059 (toList!11977 thiss!41808))))))))

(declare-fun bs!1973531 () Bool)

(assert (= bs!1973531 d!2399234))

(declare-fun m!8412304 () Bool)

(assert (=> bs!1973531 m!8412304))

(assert (=> b!8058962 d!2399234))

(declare-fun d!2399236 () Bool)

(assert (=> d!2399236 (= (tail!16059 (toList!11977 thiss!41808)) (t!391544 (toList!11977 thiss!41808)))))

(assert (=> b!8058962 d!2399236))

(declare-fun b!8058977 () Bool)

(declare-fun tp_is_empty!55193 () Bool)

(declare-fun e!4749282 () Bool)

(declare-fun tp!2414326 () Bool)

(declare-fun tp_is_empty!55191 () Bool)

(assert (=> b!8058977 (= e!4749282 (and tp_is_empty!55191 tp_is_empty!55193 tp!2414326))))

(assert (=> b!8058963 (= tp!2414320 e!4749282)))

(assert (= (and b!8058963 (is-Cons!75646 (toList!11977 thiss!41808))) b!8058977))

(push 1)

(assert (not d!2399232))

(assert (not b!8058972))

(assert (not d!2399234))

(assert (not d!2399230))

(assert tp_is_empty!55193)

(assert (not b!8058977))

(assert tp_is_empty!55191)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2399244 () Bool)

(declare-fun noDuplicatedKeys!518 (List!75772) Bool)

(assert (=> d!2399244 (= (invariantList!1968 (toList!11977 thiss!41808)) (noDuplicatedKeys!518 (toList!11977 thiss!41808)))))

(declare-fun bs!1973533 () Bool)

(assert (= bs!1973533 d!2399244))

(declare-fun m!8412308 () Bool)

(assert (=> bs!1973533 m!8412308))

(assert (=> d!2399232 d!2399244))

(declare-fun d!2399246 () Bool)

(declare-fun lt!2732516 () Int)

(assert (=> d!2399246 (>= lt!2732516 0)))

(declare-fun e!4749288 () Int)

(assert (=> d!2399246 (= lt!2732516 e!4749288)))

(declare-fun c!1476812 () Bool)

(assert (=> d!2399246 (= c!1476812 (is-Nil!75646 (toList!11977 thiss!41808)))))

(assert (=> d!2399246 (= (size!43762 (toList!11977 thiss!41808)) lt!2732516)))

(declare-fun b!8058987 () Bool)

(assert (=> b!8058987 (= e!4749288 0)))

(declare-fun b!8058988 () Bool)

(assert (=> b!8058988 (= e!4749288 (+ 1 (size!43762 (t!391544 (toList!11977 thiss!41808)))))))

(assert (= (and d!2399246 c!1476812) b!8058987))

(assert (= (and d!2399246 (not c!1476812)) b!8058988))

(declare-fun m!8412318 () Bool)

(assert (=> b!8058988 m!8412318))

(assert (=> d!2399230 d!2399246))

(declare-fun d!2399250 () Bool)

(assert (=> d!2399250 (= (isEmpty!43036 (toList!11977 thiss!41808)) (is-Nil!75646 (toList!11977 thiss!41808)))))

(assert (=> d!2399230 d!2399250))

(declare-fun d!2399252 () Bool)

(assert (=> d!2399252 (= (invariantList!1968 (toList!11977 (ListMap!7406 (tail!16059 (toList!11977 thiss!41808))))) (noDuplicatedKeys!518 (toList!11977 (ListMap!7406 (tail!16059 (toList!11977 thiss!41808))))))))

(declare-fun bs!1973535 () Bool)

(assert (= bs!1973535 d!2399252))

(declare-fun m!8412320 () Bool)

(assert (=> bs!1973535 m!8412320))

(assert (=> d!2399234 d!2399252))

(declare-fun d!2399254 () Bool)

(declare-fun intSize!3 (List!75772) (_ BitVec 32))

(assert (=> d!2399254 (= (size!43763 thiss!41808) (intSize!3 (toList!11977 thiss!41808)))))

(declare-fun bs!1973536 () Bool)

(assert (= bs!1973536 d!2399254))

(declare-fun m!8412322 () Bool)

(assert (=> bs!1973536 m!8412322))

(assert (=> b!8058972 d!2399254))

(declare-fun e!4749292 () Bool)

(declare-fun b!8058992 () Bool)

(declare-fun tp!2414330 () Bool)

(assert (=> b!8058992 (= e!4749292 (and tp_is_empty!55191 tp_is_empty!55193 tp!2414330))))

(assert (=> b!8058977 (= tp!2414326 e!4749292)))

(assert (= (and b!8058977 (is-Cons!75646 (t!391544 (toList!11977 thiss!41808)))) b!8058992))

(push 1)

(assert (not d!2399252))

(assert (not d!2399244))

(assert (not d!2399254))

(assert tp_is_empty!55193)

(assert (not b!8058988))

(assert (not b!8058992))

(assert tp_is_empty!55191)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2399256 () Bool)

(declare-fun res!3188326 () Bool)

(declare-fun e!4749297 () Bool)

(assert (=> d!2399256 (=> res!3188326 e!4749297)))

(assert (=> d!2399256 (= res!3188326 (or (is-Nil!75646 (toList!11977 (ListMap!7406 (tail!16059 (toList!11977 thiss!41808))))) (is-Nil!75646 (t!391544 (toList!11977 (ListMap!7406 (tail!16059 (toList!11977 thiss!41808))))))))))

(assert (=> d!2399256 (= (noDuplicatedKeys!518 (toList!11977 (ListMap!7406 (tail!16059 (toList!11977 thiss!41808))))) e!4749297)))

(declare-fun b!8058997 () Bool)

(declare-fun e!4749298 () Bool)

(assert (=> b!8058997 (= e!4749297 e!4749298)))

(declare-fun res!3188327 () Bool)

(assert (=> b!8058997 (=> (not res!3188327) (not e!4749298))))

(declare-fun containsKey!4933 (List!75772 K!22996) Bool)

(assert (=> b!8058997 (= res!3188327 (not (containsKey!4933 (t!391544 (toList!11977 (ListMap!7406 (tail!16059 (toList!11977 thiss!41808))))) (_1!38820 (h!82094 (toList!11977 (ListMap!7406 (tail!16059 (toList!11977 thiss!41808)))))))))))

(declare-fun b!8058998 () Bool)

(assert (=> b!8058998 (= e!4749298 (noDuplicatedKeys!518 (t!391544 (toList!11977 (ListMap!7406 (tail!16059 (toList!11977 thiss!41808)))))))))

(assert (= (and d!2399256 (not res!3188326)) b!8058997))

(assert (= (and b!8058997 res!3188327) b!8058998))

(declare-fun m!8412324 () Bool)

(assert (=> b!8058997 m!8412324))

(declare-fun m!8412326 () Bool)

(assert (=> b!8058998 m!8412326))

(assert (=> d!2399252 d!2399256))

(declare-fun d!2399258 () Bool)

(declare-fun e!4749305 () Bool)

(assert (=> d!2399258 e!4749305))

(declare-fun res!3188330 () Bool)

(assert (=> d!2399258 (=> (not res!3188330) (not e!4749305))))

(declare-fun lt!2732524 () (_ BitVec 32))

(assert (=> d!2399258 (= res!3188330 (bvsge lt!2732524 #b00000000000000000000000000000000))))

(declare-fun e!4749306 () (_ BitVec 32))

(assert (=> d!2399258 (= lt!2732524 e!4749306)))

(declare-fun c!1476817 () Bool)

(assert (=> d!2399258 (= c!1476817 (is-Cons!75646 (toList!11977 thiss!41808)))))

(assert (=> d!2399258 (= (intSize!3 (toList!11977 thiss!41808)) lt!2732524)))

(declare-fun b!8059009 () Bool)

(declare-fun lt!2732523 () (_ BitVec 32))

(assert (=> b!8059009 (= e!4749306 (ite (bvslt lt!2732523 #b01111111111111111111111111111111) (bvadd #b00000000000000000000000000000001 lt!2732523) #b01111111111111111111111111111111))))

(assert (=> b!8059009 (= lt!2732523 (intSize!3 (t!391544 (toList!11977 thiss!41808))))))

(declare-fun b!8059010 () Bool)

(assert (=> b!8059010 (= e!4749306 #b00000000000000000000000000000000)))

(declare-fun b!8059011 () Bool)

(assert (=> b!8059011 (= e!4749305 (= (isEmpty!43036 (toList!11977 thiss!41808)) (= lt!2732524 #b00000000000000000000000000000000)))))

(assert (= (and d!2399258 c!1476817) b!8059009))

(assert (= (and d!2399258 (not c!1476817)) b!8059010))

(assert (= (and d!2399258 res!3188330) b!8059011))

(declare-fun m!8412328 () Bool)

(assert (=> b!8059009 m!8412328))

(assert (=> b!8059011 m!8412298))

(assert (=> d!2399254 d!2399258))

(declare-fun d!2399262 () Bool)

(declare-fun lt!2732525 () Int)

(assert (=> d!2399262 (>= lt!2732525 0)))

(declare-fun e!4749307 () Int)

(assert (=> d!2399262 (= lt!2732525 e!4749307)))

(declare-fun c!1476818 () Bool)

(assert (=> d!2399262 (= c!1476818 (is-Nil!75646 (t!391544 (toList!11977 thiss!41808))))))

(assert (=> d!2399262 (= (size!43762 (t!391544 (toList!11977 thiss!41808))) lt!2732525)))

(declare-fun b!8059012 () Bool)

(assert (=> b!8059012 (= e!4749307 0)))

(declare-fun b!8059013 () Bool)

(assert (=> b!8059013 (= e!4749307 (+ 1 (size!43762 (t!391544 (t!391544 (toList!11977 thiss!41808))))))))

(assert (= (and d!2399262 c!1476818) b!8059012))

(assert (= (and d!2399262 (not c!1476818)) b!8059013))

(declare-fun m!8412330 () Bool)

(assert (=> b!8059013 m!8412330))

(assert (=> b!8058988 d!2399262))

(declare-fun d!2399264 () Bool)

(declare-fun res!3188331 () Bool)

(declare-fun e!4749308 () Bool)

(assert (=> d!2399264 (=> res!3188331 e!4749308)))

(assert (=> d!2399264 (= res!3188331 (or (is-Nil!75646 (toList!11977 thiss!41808)) (is-Nil!75646 (t!391544 (toList!11977 thiss!41808)))))))

(assert (=> d!2399264 (= (noDuplicatedKeys!518 (toList!11977 thiss!41808)) e!4749308)))

(declare-fun b!8059014 () Bool)

(declare-fun e!4749309 () Bool)

(assert (=> b!8059014 (= e!4749308 e!4749309)))

(declare-fun res!3188332 () Bool)

(assert (=> b!8059014 (=> (not res!3188332) (not e!4749309))))

(assert (=> b!8059014 (= res!3188332 (not (containsKey!4933 (t!391544 (toList!11977 thiss!41808)) (_1!38820 (h!82094 (toList!11977 thiss!41808))))))))

(declare-fun b!8059015 () Bool)

(assert (=> b!8059015 (= e!4749309 (noDuplicatedKeys!518 (t!391544 (toList!11977 thiss!41808))))))

(assert (= (and d!2399264 (not res!3188331)) b!8059014))

(assert (= (and b!8059014 res!3188332) b!8059015))

(declare-fun m!8412332 () Bool)

(assert (=> b!8059014 m!8412332))

(declare-fun m!8412334 () Bool)

(assert (=> b!8059015 m!8412334))

(assert (=> d!2399244 d!2399264))

(declare-fun b!8059016 () Bool)

(declare-fun e!4749310 () Bool)

(declare-fun tp!2414331 () Bool)

(assert (=> b!8059016 (= e!4749310 (and tp_is_empty!55191 tp_is_empty!55193 tp!2414331))))

(assert (=> b!8058992 (= tp!2414330 e!4749310)))

(assert (= (and b!8058992 (is-Cons!75646 (t!391544 (t!391544 (toList!11977 thiss!41808))))) b!8059016))

(push 1)

(assert (not b!8059016))

(assert (not b!8059011))

(assert tp_is_empty!55193)

(assert (not b!8059009))

(assert (not b!8058997))

(assert (not b!8058998))

(assert (not b!8059014))

(assert tp_is_empty!55191)

(assert (not b!8059015))

(assert (not b!8059013))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

