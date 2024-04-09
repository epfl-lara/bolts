; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2224 () Bool)

(assert start!2224)

(declare-fun b!14869 () Bool)

(assert (=> b!14869 true))

(declare-fun bm!449 () Bool)

(declare-fun call!452 () Bool)

(declare-datatypes ((B!566 0))(
  ( (B!567 (val!381 Int)) )
))
(declare-datatypes ((tuple2!544 0))(
  ( (tuple2!545 (_1!272 (_ BitVec 64)) (_2!272 B!566)) )
))
(declare-datatypes ((List!431 0))(
  ( (Nil!428) (Cons!427 (h!993 tuple2!544) (t!2833 List!431)) )
))
(declare-fun lt!3630 () List!431)

(declare-fun isEmpty!108 (List!431) Bool)

(assert (=> bm!449 (= call!452 (isEmpty!108 lt!3630))))

(declare-fun b!14865 () Bool)

(declare-fun e!8950 () Bool)

(declare-fun tp_is_empty!745 () Bool)

(declare-fun tp!2392 () Bool)

(assert (=> b!14865 (= e!8950 (and tp_is_empty!745 tp!2392))))

(declare-fun b!14866 () Bool)

(declare-fun e!8949 () Bool)

(declare-fun e!8952 () Bool)

(assert (=> b!14866 (= e!8949 e!8952)))

(declare-fun c!1403 () Bool)

(declare-fun l!522 () List!431)

(assert (=> b!14866 (= c!1403 (isEmpty!108 l!522))))

(declare-fun b!14867 () Bool)

(declare-fun e!8951 () Bool)

(declare-fun head!797 (List!431) tuple2!544)

(assert (=> b!14867 (= e!8951 (bvslt (_1!272 (head!797 lt!3630)) (_1!272 (head!797 l!522))))))

(declare-fun b!14868 () Bool)

(declare-fun res!11403 () Bool)

(declare-fun e!8953 () Bool)

(assert (=> b!14868 (=> (not res!11403) (not e!8953))))

(declare-fun value!159 () B!566)

(assert (=> b!14868 (= res!11403 (and (or (not (is-Cons!427 l!522)) (not (= (_2!272 (h!993 l!522)) value!159))) (or (not (is-Cons!427 l!522)) (= (_2!272 (h!993 l!522)) value!159)) (not (is-Nil!428 l!522))))))

(declare-fun res!11405 () Bool)

(assert (=> start!2224 (=> (not res!11405) (not e!8953))))

(declare-fun isStrictlySorted!122 (List!431) Bool)

(assert (=> start!2224 (= res!11405 (isStrictlySorted!122 l!522))))

(assert (=> start!2224 e!8953))

(declare-fun e!8948 () Bool)

(assert (=> start!2224 e!8948))

(assert (=> start!2224 tp_is_empty!745))

(declare-fun res!11404 () Bool)

(assert (=> b!14869 (=> res!11404 e!8949)))

(declare-fun lambda!185 () Int)

(declare-fun forall!101 (List!431 Int) Bool)

(assert (=> b!14869 (= res!11404 (not (forall!101 lt!3630 lambda!185)))))

(declare-fun b!14870 () Bool)

(declare-fun tp!2393 () Bool)

(assert (=> b!14870 (= e!8948 (and tp_is_empty!745 tp!2393))))

(declare-fun b!14871 () Bool)

(assert (=> b!14871 (= e!8952 (not call!452))))

(declare-fun b!14872 () Bool)

(assert (=> b!14872 (= e!8952 e!8951)))

(declare-fun res!11406 () Bool)

(assert (=> b!14872 (= res!11406 (not call!452))))

(assert (=> b!14872 (=> (not res!11406) (not e!8951))))

(declare-fun b!14873 () Bool)

(assert (=> b!14873 (= e!8953 e!8949)))

(declare-fun res!11407 () Bool)

(assert (=> b!14873 (=> res!11407 e!8949)))

(assert (=> b!14873 (= res!11407 (not (isStrictlySorted!122 lt!3630)))))

(declare-fun err!27 () List!431)

(assert (=> b!14873 (= lt!3630 err!27)))

(assert (=> b!14873 true))

(assert (=> b!14873 e!8950))

(assert (= (and start!2224 res!11405) b!14868))

(assert (= (and b!14868 res!11403) b!14873))

(assert (= (and b!14873 (is-Cons!427 err!27)) b!14865))

(assert (= (and b!14873 (not res!11407)) b!14869))

(assert (= (and b!14869 (not res!11404)) b!14866))

(assert (= (and b!14866 c!1403) b!14871))

(assert (= (and b!14866 (not c!1403)) b!14872))

(assert (= (and b!14872 res!11406) b!14867))

(assert (= (or b!14871 b!14872) bm!449))

(assert (= (and start!2224 (is-Cons!427 l!522)) b!14870))

(declare-fun m!9895 () Bool)

(assert (=> bm!449 m!9895))

(declare-fun m!9897 () Bool)

(assert (=> b!14867 m!9897))

(declare-fun m!9899 () Bool)

(assert (=> b!14867 m!9899))

(declare-fun m!9901 () Bool)

(assert (=> b!14873 m!9901))

(declare-fun m!9903 () Bool)

(assert (=> start!2224 m!9903))

(declare-fun m!9905 () Bool)

(assert (=> b!14869 m!9905))

(declare-fun m!9907 () Bool)

(assert (=> b!14866 m!9907))

(push 1)

(assert (not b!14869))

(assert (not b!14866))

(assert (not b!14873))

(assert tp_is_empty!745)

(assert (not b!14867))

(assert (not start!2224))

(assert (not b!14865))

