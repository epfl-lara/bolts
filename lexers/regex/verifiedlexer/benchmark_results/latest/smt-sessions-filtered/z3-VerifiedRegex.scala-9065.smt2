; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486318 () Bool)

(assert start!486318)

(declare-fun tp!1350989 () Bool)

(declare-fun b!4756251 () Bool)

(declare-fun tp_is_empty!32221 () Bool)

(declare-fun tp_is_empty!32223 () Bool)

(declare-fun e!2967178 () Bool)

(assert (=> b!4756251 (= e!2967178 (and tp_is_empty!32221 tp_is_empty!32223 tp!1350989))))

(declare-fun b!4756252 () Bool)

(declare-fun res!2017841 () Bool)

(declare-fun e!2967177 () Bool)

(assert (=> b!4756252 (=> (not res!2017841) (not e!2967177))))

(declare-datatypes ((K!14730 0))(
  ( (K!14731 (val!20055 Int)) )
))
(declare-datatypes ((V!14976 0))(
  ( (V!14977 (val!20056 Int)) )
))
(declare-datatypes ((tuple2!55036 0))(
  ( (tuple2!55037 (_1!30812 K!14730) (_2!30812 V!14976)) )
))
(declare-datatypes ((List!53302 0))(
  ( (Nil!53178) (Cons!53178 (h!59579 tuple2!55036) (t!360646 List!53302)) )
))
(declare-fun l!13802 () List!53302)

(get-info :version)

(assert (=> b!4756252 (= res!2017841 (not ((_ is Nil!53178) l!13802)))))

(declare-fun res!2017843 () Bool)

(assert (=> start!486318 (=> (not res!2017843) (not e!2967177))))

(declare-fun noDuplicateKeys!2226 (List!53302) Bool)

(assert (=> start!486318 (= res!2017843 (noDuplicateKeys!2226 l!13802))))

(assert (=> start!486318 e!2967177))

(assert (=> start!486318 e!2967178))

(assert (=> start!486318 true))

(declare-fun b!4756253 () Bool)

(declare-fun res!2017842 () Bool)

(assert (=> b!4756253 (=> (not res!2017842) (not e!2967177))))

(declare-datatypes ((Hashable!6458 0))(
  ( (HashableExt!6457 (__x!32161 Int)) )
))
(declare-fun hashF!1449 () Hashable!6458)

(declare-fun hash!423 () (_ BitVec 64))

(declare-fun allKeysSameHash!1915 (List!53302 (_ BitVec 64) Hashable!6458) Bool)

(assert (=> b!4756253 (= res!2017842 (allKeysSameHash!1915 l!13802 hash!423 hashF!1449))))

(declare-fun b!4756254 () Bool)

(assert (=> b!4756254 (= e!2967177 (not (allKeysSameHash!1915 (t!360646 l!13802) hash!423 hashF!1449)))))

(declare-fun b!4756255 () Bool)

(declare-fun res!2017840 () Bool)

(assert (=> b!4756255 (=> (not res!2017840) (not e!2967177))))

(assert (=> b!4756255 (= res!2017840 (noDuplicateKeys!2226 (t!360646 l!13802)))))

(assert (= (and start!486318 res!2017843) b!4756253))

(assert (= (and b!4756253 res!2017842) b!4756252))

(assert (= (and b!4756252 res!2017841) b!4756255))

(assert (= (and b!4756255 res!2017840) b!4756254))

(assert (= (and start!486318 ((_ is Cons!53178) l!13802)) b!4756251))

(declare-fun m!5726335 () Bool)

(assert (=> start!486318 m!5726335))

(declare-fun m!5726337 () Bool)

(assert (=> b!4756253 m!5726337))

(declare-fun m!5726339 () Bool)

(assert (=> b!4756254 m!5726339))

(declare-fun m!5726341 () Bool)

(assert (=> b!4756255 m!5726341))

(check-sat (not b!4756254) tp_is_empty!32221 tp_is_empty!32223 (not b!4756255) (not b!4756251) (not b!4756253) (not start!486318))
(check-sat)
(get-model)

(declare-fun d!1520828 () Bool)

(declare-fun res!2017848 () Bool)

(declare-fun e!2967183 () Bool)

(assert (=> d!1520828 (=> res!2017848 e!2967183)))

(assert (=> d!1520828 (= res!2017848 (not ((_ is Cons!53178) l!13802)))))

(assert (=> d!1520828 (= (noDuplicateKeys!2226 l!13802) e!2967183)))

(declare-fun b!4756260 () Bool)

(declare-fun e!2967184 () Bool)

(assert (=> b!4756260 (= e!2967183 e!2967184)))

(declare-fun res!2017849 () Bool)

(assert (=> b!4756260 (=> (not res!2017849) (not e!2967184))))

(declare-fun containsKey!3615 (List!53302 K!14730) Bool)

(assert (=> b!4756260 (= res!2017849 (not (containsKey!3615 (t!360646 l!13802) (_1!30812 (h!59579 l!13802)))))))

(declare-fun b!4756261 () Bool)

(assert (=> b!4756261 (= e!2967184 (noDuplicateKeys!2226 (t!360646 l!13802)))))

(assert (= (and d!1520828 (not res!2017848)) b!4756260))

(assert (= (and b!4756260 res!2017849) b!4756261))

(declare-fun m!5726343 () Bool)

(assert (=> b!4756260 m!5726343))

(assert (=> b!4756261 m!5726341))

(assert (=> start!486318 d!1520828))

(declare-fun d!1520832 () Bool)

(assert (=> d!1520832 true))

(assert (=> d!1520832 true))

(declare-fun lambda!223509 () Int)

(declare-fun forall!11800 (List!53302 Int) Bool)

(assert (=> d!1520832 (= (allKeysSameHash!1915 l!13802 hash!423 hashF!1449) (forall!11800 l!13802 lambda!223509))))

(declare-fun bs!1146911 () Bool)

(assert (= bs!1146911 d!1520832))

(declare-fun m!5726355 () Bool)

(assert (=> bs!1146911 m!5726355))

(assert (=> b!4756253 d!1520832))

(declare-fun bs!1146912 () Bool)

(declare-fun d!1520840 () Bool)

(assert (= bs!1146912 (and d!1520840 d!1520832)))

(declare-fun lambda!223510 () Int)

(assert (=> bs!1146912 (= lambda!223510 lambda!223509)))

(assert (=> d!1520840 true))

(assert (=> d!1520840 true))

(assert (=> d!1520840 (= (allKeysSameHash!1915 (t!360646 l!13802) hash!423 hashF!1449) (forall!11800 (t!360646 l!13802) lambda!223510))))

(declare-fun bs!1146913 () Bool)

(assert (= bs!1146913 d!1520840))

(declare-fun m!5726357 () Bool)

(assert (=> bs!1146913 m!5726357))

(assert (=> b!4756254 d!1520840))

(declare-fun d!1520842 () Bool)

(declare-fun res!2017858 () Bool)

(declare-fun e!2967196 () Bool)

(assert (=> d!1520842 (=> res!2017858 e!2967196)))

(assert (=> d!1520842 (= res!2017858 (not ((_ is Cons!53178) (t!360646 l!13802))))))

(assert (=> d!1520842 (= (noDuplicateKeys!2226 (t!360646 l!13802)) e!2967196)))

(declare-fun b!4756283 () Bool)

(declare-fun e!2967197 () Bool)

(assert (=> b!4756283 (= e!2967196 e!2967197)))

(declare-fun res!2017859 () Bool)

(assert (=> b!4756283 (=> (not res!2017859) (not e!2967197))))

(assert (=> b!4756283 (= res!2017859 (not (containsKey!3615 (t!360646 (t!360646 l!13802)) (_1!30812 (h!59579 (t!360646 l!13802))))))))

(declare-fun b!4756284 () Bool)

(assert (=> b!4756284 (= e!2967197 (noDuplicateKeys!2226 (t!360646 (t!360646 l!13802))))))

(assert (= (and d!1520842 (not res!2017858)) b!4756283))

(assert (= (and b!4756283 res!2017859) b!4756284))

(declare-fun m!5726359 () Bool)

(assert (=> b!4756283 m!5726359))

(declare-fun m!5726361 () Bool)

(assert (=> b!4756284 m!5726361))

(assert (=> b!4756255 d!1520842))

(declare-fun b!4756289 () Bool)

(declare-fun e!2967200 () Bool)

(declare-fun tp!1350995 () Bool)

(assert (=> b!4756289 (= e!2967200 (and tp_is_empty!32221 tp_is_empty!32223 tp!1350995))))

(assert (=> b!4756251 (= tp!1350989 e!2967200)))

(assert (= (and b!4756251 ((_ is Cons!53178) (t!360646 l!13802))) b!4756289))

(check-sat (not d!1520832) (not b!4756261) (not b!4756289) tp_is_empty!32221 (not b!4756284) (not d!1520840) (not b!4756283) tp_is_empty!32223 (not b!4756260))
(check-sat)
(get-model)

(declare-fun d!1520848 () Bool)

(declare-fun res!2017868 () Bool)

(declare-fun e!2967209 () Bool)

(assert (=> d!1520848 (=> res!2017868 e!2967209)))

(assert (=> d!1520848 (= res!2017868 (not ((_ is Cons!53178) (t!360646 (t!360646 l!13802)))))))

(assert (=> d!1520848 (= (noDuplicateKeys!2226 (t!360646 (t!360646 l!13802))) e!2967209)))

(declare-fun b!4756298 () Bool)

(declare-fun e!2967210 () Bool)

(assert (=> b!4756298 (= e!2967209 e!2967210)))

(declare-fun res!2017869 () Bool)

(assert (=> b!4756298 (=> (not res!2017869) (not e!2967210))))

(assert (=> b!4756298 (= res!2017869 (not (containsKey!3615 (t!360646 (t!360646 (t!360646 l!13802))) (_1!30812 (h!59579 (t!360646 (t!360646 l!13802)))))))))

(declare-fun b!4756299 () Bool)

(assert (=> b!4756299 (= e!2967210 (noDuplicateKeys!2226 (t!360646 (t!360646 (t!360646 l!13802)))))))

(assert (= (and d!1520848 (not res!2017868)) b!4756298))

(assert (= (and b!4756298 res!2017869) b!4756299))

(declare-fun m!5726369 () Bool)

(assert (=> b!4756298 m!5726369))

(declare-fun m!5726371 () Bool)

(assert (=> b!4756299 m!5726371))

(assert (=> b!4756284 d!1520848))

(declare-fun d!1520852 () Bool)

(declare-fun res!2017878 () Bool)

(declare-fun e!2967219 () Bool)

(assert (=> d!1520852 (=> res!2017878 e!2967219)))

(assert (=> d!1520852 (= res!2017878 ((_ is Nil!53178) l!13802))))

(assert (=> d!1520852 (= (forall!11800 l!13802 lambda!223509) e!2967219)))

(declare-fun b!4756308 () Bool)

(declare-fun e!2967220 () Bool)

(assert (=> b!4756308 (= e!2967219 e!2967220)))

(declare-fun res!2017879 () Bool)

(assert (=> b!4756308 (=> (not res!2017879) (not e!2967220))))

(declare-fun dynLambda!21905 (Int tuple2!55036) Bool)

(assert (=> b!4756308 (= res!2017879 (dynLambda!21905 lambda!223509 (h!59579 l!13802)))))

(declare-fun b!4756309 () Bool)

(assert (=> b!4756309 (= e!2967220 (forall!11800 (t!360646 l!13802) lambda!223509))))

(assert (= (and d!1520852 (not res!2017878)) b!4756308))

(assert (= (and b!4756308 res!2017879) b!4756309))

(declare-fun b_lambda!183709 () Bool)

(assert (=> (not b_lambda!183709) (not b!4756308)))

(declare-fun m!5726373 () Bool)

(assert (=> b!4756308 m!5726373))

(declare-fun m!5726375 () Bool)

(assert (=> b!4756309 m!5726375))

(assert (=> d!1520832 d!1520852))

(declare-fun d!1520854 () Bool)

(declare-fun res!2017888 () Bool)

(declare-fun e!2967229 () Bool)

(assert (=> d!1520854 (=> res!2017888 e!2967229)))

(assert (=> d!1520854 (= res!2017888 (and ((_ is Cons!53178) (t!360646 l!13802)) (= (_1!30812 (h!59579 (t!360646 l!13802))) (_1!30812 (h!59579 l!13802)))))))

(assert (=> d!1520854 (= (containsKey!3615 (t!360646 l!13802) (_1!30812 (h!59579 l!13802))) e!2967229)))

(declare-fun b!4756318 () Bool)

(declare-fun e!2967230 () Bool)

(assert (=> b!4756318 (= e!2967229 e!2967230)))

(declare-fun res!2017889 () Bool)

(assert (=> b!4756318 (=> (not res!2017889) (not e!2967230))))

(assert (=> b!4756318 (= res!2017889 ((_ is Cons!53178) (t!360646 l!13802)))))

(declare-fun b!4756319 () Bool)

(assert (=> b!4756319 (= e!2967230 (containsKey!3615 (t!360646 (t!360646 l!13802)) (_1!30812 (h!59579 l!13802))))))

(assert (= (and d!1520854 (not res!2017888)) b!4756318))

(assert (= (and b!4756318 res!2017889) b!4756319))

(declare-fun m!5726383 () Bool)

(assert (=> b!4756319 m!5726383))

(assert (=> b!4756260 d!1520854))

(declare-fun d!1520860 () Bool)

(declare-fun res!2017892 () Bool)

(declare-fun e!2967233 () Bool)

(assert (=> d!1520860 (=> res!2017892 e!2967233)))

(assert (=> d!1520860 (= res!2017892 (and ((_ is Cons!53178) (t!360646 (t!360646 l!13802))) (= (_1!30812 (h!59579 (t!360646 (t!360646 l!13802)))) (_1!30812 (h!59579 (t!360646 l!13802))))))))

(assert (=> d!1520860 (= (containsKey!3615 (t!360646 (t!360646 l!13802)) (_1!30812 (h!59579 (t!360646 l!13802)))) e!2967233)))

(declare-fun b!4756322 () Bool)

(declare-fun e!2967234 () Bool)

(assert (=> b!4756322 (= e!2967233 e!2967234)))

(declare-fun res!2017893 () Bool)

(assert (=> b!4756322 (=> (not res!2017893) (not e!2967234))))

(assert (=> b!4756322 (= res!2017893 ((_ is Cons!53178) (t!360646 (t!360646 l!13802))))))

(declare-fun b!4756323 () Bool)

(assert (=> b!4756323 (= e!2967234 (containsKey!3615 (t!360646 (t!360646 (t!360646 l!13802))) (_1!30812 (h!59579 (t!360646 l!13802)))))))

(assert (= (and d!1520860 (not res!2017892)) b!4756322))

(assert (= (and b!4756322 res!2017893) b!4756323))

(declare-fun m!5726385 () Bool)

(assert (=> b!4756323 m!5726385))

(assert (=> b!4756283 d!1520860))

(assert (=> b!4756261 d!1520842))

(declare-fun d!1520862 () Bool)

(declare-fun res!2017894 () Bool)

(declare-fun e!2967235 () Bool)

(assert (=> d!1520862 (=> res!2017894 e!2967235)))

(assert (=> d!1520862 (= res!2017894 ((_ is Nil!53178) (t!360646 l!13802)))))

(assert (=> d!1520862 (= (forall!11800 (t!360646 l!13802) lambda!223510) e!2967235)))

(declare-fun b!4756324 () Bool)

(declare-fun e!2967236 () Bool)

(assert (=> b!4756324 (= e!2967235 e!2967236)))

(declare-fun res!2017895 () Bool)

(assert (=> b!4756324 (=> (not res!2017895) (not e!2967236))))

(assert (=> b!4756324 (= res!2017895 (dynLambda!21905 lambda!223510 (h!59579 (t!360646 l!13802))))))

(declare-fun b!4756325 () Bool)

(assert (=> b!4756325 (= e!2967236 (forall!11800 (t!360646 (t!360646 l!13802)) lambda!223510))))

(assert (= (and d!1520862 (not res!2017894)) b!4756324))

(assert (= (and b!4756324 res!2017895) b!4756325))

(declare-fun b_lambda!183715 () Bool)

(assert (=> (not b_lambda!183715) (not b!4756324)))

(declare-fun m!5726391 () Bool)

(assert (=> b!4756324 m!5726391))

(declare-fun m!5726393 () Bool)

(assert (=> b!4756325 m!5726393))

(assert (=> d!1520840 d!1520862))

(declare-fun tp!1350997 () Bool)

(declare-fun b!4756327 () Bool)

(declare-fun e!2967238 () Bool)

(assert (=> b!4756327 (= e!2967238 (and tp_is_empty!32221 tp_is_empty!32223 tp!1350997))))

(assert (=> b!4756289 (= tp!1350995 e!2967238)))

(assert (= (and b!4756289 ((_ is Cons!53178) (t!360646 (t!360646 l!13802)))) b!4756327))

(declare-fun b_lambda!183717 () Bool)

(assert (= b_lambda!183715 (or d!1520840 b_lambda!183717)))

(declare-fun bs!1146914 () Bool)

(declare-fun d!1520864 () Bool)

(assert (= bs!1146914 (and d!1520864 d!1520840)))

(declare-fun hash!4505 (Hashable!6458 K!14730) (_ BitVec 64))

(assert (=> bs!1146914 (= (dynLambda!21905 lambda!223510 (h!59579 (t!360646 l!13802))) (= (hash!4505 hashF!1449 (_1!30812 (h!59579 (t!360646 l!13802)))) hash!423))))

(declare-fun m!5726395 () Bool)

(assert (=> bs!1146914 m!5726395))

(assert (=> b!4756324 d!1520864))

(declare-fun b_lambda!183719 () Bool)

(assert (= b_lambda!183709 (or d!1520832 b_lambda!183719)))

(declare-fun bs!1146915 () Bool)

(declare-fun d!1520866 () Bool)

(assert (= bs!1146915 (and d!1520866 d!1520832)))

(assert (=> bs!1146915 (= (dynLambda!21905 lambda!223509 (h!59579 l!13802)) (= (hash!4505 hashF!1449 (_1!30812 (h!59579 l!13802))) hash!423))))

(declare-fun m!5726397 () Bool)

(assert (=> bs!1146915 m!5726397))

(assert (=> b!4756308 d!1520866))

(check-sat (not bs!1146915) (not bs!1146914) tp_is_empty!32221 (not b!4756319) (not b!4756299) (not b!4756309) (not b!4756327) (not b!4756298) tp_is_empty!32223 (not b_lambda!183717) (not b!4756323) (not b!4756325) (not b_lambda!183719))
(check-sat)
