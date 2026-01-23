; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!648968 () Bool)

(assert start!648968)

(declare-fun b!6649540 () Bool)

(assert (=> b!6649540 true))

(assert (=> b!6649540 true))

(declare-fun lambda!372184 () Int)

(declare-fun lambda!372183 () Int)

(assert (=> b!6649540 (not (= lambda!372184 lambda!372183))))

(assert (=> b!6649540 true))

(assert (=> b!6649540 true))

(declare-fun b!6649554 () Bool)

(assert (=> b!6649554 true))

(declare-fun bs!1711957 () Bool)

(declare-fun b!6649550 () Bool)

(assert (= bs!1711957 (and b!6649550 b!6649540)))

(declare-datatypes ((C!33294 0))(
  ( (C!33295 (val!26349 Int)) )
))
(declare-datatypes ((Regex!16512 0))(
  ( (ElementMatch!16512 (c!1227274 C!33294)) (Concat!25357 (regOne!33536 Regex!16512) (regTwo!33536 Regex!16512)) (EmptyExpr!16512) (Star!16512 (reg!16841 Regex!16512)) (EmptyLang!16512) (Union!16512 (regOne!33537 Regex!16512) (regTwo!33537 Regex!16512)) )
))
(declare-fun r!7292 () Regex!16512)

(declare-fun lambda!372186 () Int)

(declare-fun lt!2423854 () Regex!16512)

(assert (=> bs!1711957 (= (and (= (regOne!33536 (regOne!33536 r!7292)) (regOne!33536 r!7292)) (= lt!2423854 (regTwo!33536 r!7292))) (= lambda!372186 lambda!372183))))

(assert (=> bs!1711957 (not (= lambda!372186 lambda!372184))))

(assert (=> b!6649550 true))

(assert (=> b!6649550 true))

(assert (=> b!6649550 true))

(declare-fun lambda!372187 () Int)

(assert (=> bs!1711957 (not (= lambda!372187 lambda!372183))))

(assert (=> bs!1711957 (= (and (= (regOne!33536 (regOne!33536 r!7292)) (regOne!33536 r!7292)) (= lt!2423854 (regTwo!33536 r!7292))) (= lambda!372187 lambda!372184))))

(assert (=> b!6649550 (not (= lambda!372187 lambda!372186))))

(assert (=> b!6649550 true))

(assert (=> b!6649550 true))

(assert (=> b!6649550 true))

(declare-fun lambda!372188 () Int)

(declare-fun lt!2423829 () Regex!16512)

(assert (=> bs!1711957 (= (and (= (regTwo!33536 (regOne!33536 r!7292)) (regOne!33536 r!7292)) (= lt!2423829 (regTwo!33536 r!7292))) (= lambda!372188 lambda!372183))))

(assert (=> bs!1711957 (not (= lambda!372188 lambda!372184))))

(assert (=> b!6649550 (= (and (= (regTwo!33536 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (= lt!2423829 lt!2423854)) (= lambda!372188 lambda!372186))))

(assert (=> b!6649550 (not (= lambda!372188 lambda!372187))))

(assert (=> b!6649550 true))

(assert (=> b!6649550 true))

(assert (=> b!6649550 true))

(declare-fun lambda!372189 () Int)

(assert (=> b!6649550 (not (= lambda!372189 lambda!372186))))

(assert (=> bs!1711957 (= (and (= (regTwo!33536 (regOne!33536 r!7292)) (regOne!33536 r!7292)) (= lt!2423829 (regTwo!33536 r!7292))) (= lambda!372189 lambda!372184))))

(assert (=> b!6649550 (= (and (= (regTwo!33536 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (= lt!2423829 lt!2423854)) (= lambda!372189 lambda!372187))))

(assert (=> bs!1711957 (not (= lambda!372189 lambda!372183))))

(assert (=> b!6649550 (not (= lambda!372189 lambda!372188))))

(assert (=> b!6649550 true))

(assert (=> b!6649550 true))

(assert (=> b!6649550 true))

(declare-fun bs!1711958 () Bool)

(declare-fun b!6649552 () Bool)

(assert (= bs!1711958 (and b!6649552 b!6649550)))

(declare-fun lambda!372190 () Int)

(declare-fun lt!2423938 () Regex!16512)

(assert (=> bs!1711958 (= (= lt!2423938 lt!2423854) (= lambda!372190 lambda!372186))))

(assert (=> bs!1711958 (not (= lambda!372190 lambda!372189))))

(declare-fun bs!1711959 () Bool)

(assert (= bs!1711959 (and b!6649552 b!6649540)))

(assert (=> bs!1711959 (not (= lambda!372190 lambda!372184))))

(assert (=> bs!1711958 (not (= lambda!372190 lambda!372187))))

(assert (=> bs!1711959 (= (and (= (regOne!33536 (regOne!33536 r!7292)) (regOne!33536 r!7292)) (= lt!2423938 (regTwo!33536 r!7292))) (= lambda!372190 lambda!372183))))

(assert (=> bs!1711958 (= (and (= (regOne!33536 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) (= lt!2423938 lt!2423829)) (= lambda!372190 lambda!372188))))

(assert (=> b!6649552 true))

(assert (=> b!6649552 true))

(assert (=> b!6649552 true))

(declare-fun lambda!372191 () Int)

(assert (=> bs!1711958 (not (= lambda!372191 lambda!372186))))

(assert (=> bs!1711958 (= (and (= (regOne!33536 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) (= lt!2423938 lt!2423829)) (= lambda!372191 lambda!372189))))

(assert (=> bs!1711959 (= (and (= (regOne!33536 (regOne!33536 r!7292)) (regOne!33536 r!7292)) (= lt!2423938 (regTwo!33536 r!7292))) (= lambda!372191 lambda!372184))))

(assert (=> b!6649552 (not (= lambda!372191 lambda!372190))))

(assert (=> bs!1711958 (= (= lt!2423938 lt!2423854) (= lambda!372191 lambda!372187))))

(assert (=> bs!1711959 (not (= lambda!372191 lambda!372183))))

(assert (=> bs!1711958 (not (= lambda!372191 lambda!372188))))

(assert (=> b!6649552 true))

(assert (=> b!6649552 true))

(assert (=> b!6649552 true))

(declare-fun lambda!372192 () Int)

(declare-fun lt!2423798 () Regex!16512)

(assert (=> bs!1711958 (= (and (= (regTwo!33536 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (= lt!2423798 lt!2423854)) (= lambda!372192 lambda!372186))))

(assert (=> bs!1711958 (not (= lambda!372192 lambda!372189))))

(assert (=> bs!1711959 (not (= lambda!372192 lambda!372184))))

(assert (=> b!6649552 (not (= lambda!372192 lambda!372191))))

(assert (=> b!6649552 (= (and (= (regTwo!33536 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (= lt!2423798 lt!2423938)) (= lambda!372192 lambda!372190))))

(assert (=> bs!1711958 (not (= lambda!372192 lambda!372187))))

(assert (=> bs!1711959 (= (and (= (regTwo!33536 (regOne!33536 r!7292)) (regOne!33536 r!7292)) (= lt!2423798 (regTwo!33536 r!7292))) (= lambda!372192 lambda!372183))))

(assert (=> bs!1711958 (= (= lt!2423798 lt!2423829) (= lambda!372192 lambda!372188))))

(assert (=> b!6649552 true))

(assert (=> b!6649552 true))

(assert (=> b!6649552 true))

(declare-fun lambda!372193 () Int)

(assert (=> bs!1711958 (not (= lambda!372193 lambda!372186))))

(assert (=> b!6649552 (not (= lambda!372193 lambda!372192))))

(assert (=> bs!1711958 (= (= lt!2423798 lt!2423829) (= lambda!372193 lambda!372189))))

(assert (=> bs!1711959 (= (and (= (regTwo!33536 (regOne!33536 r!7292)) (regOne!33536 r!7292)) (= lt!2423798 (regTwo!33536 r!7292))) (= lambda!372193 lambda!372184))))

(assert (=> b!6649552 (= (and (= (regTwo!33536 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (= lt!2423798 lt!2423938)) (= lambda!372193 lambda!372191))))

(assert (=> b!6649552 (not (= lambda!372193 lambda!372190))))

(assert (=> bs!1711958 (= (and (= (regTwo!33536 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (= lt!2423798 lt!2423854)) (= lambda!372193 lambda!372187))))

(assert (=> bs!1711959 (not (= lambda!372193 lambda!372183))))

(assert (=> bs!1711958 (not (= lambda!372193 lambda!372188))))

(assert (=> b!6649552 true))

(assert (=> b!6649552 true))

(assert (=> b!6649552 true))

(declare-fun bs!1711960 () Bool)

(declare-fun b!6649562 () Bool)

(assert (= bs!1711960 (and b!6649562 b!6649550)))

(declare-fun lambda!372194 () Int)

(declare-fun lt!2423835 () Regex!16512)

(assert (=> bs!1711960 (= (and (= lt!2423835 (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423854)) (= lambda!372194 lambda!372186))))

(declare-fun bs!1711961 () Bool)

(assert (= bs!1711961 (and b!6649562 b!6649552)))

(assert (=> bs!1711961 (= (and (= lt!2423835 (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423798)) (= lambda!372194 lambda!372192))))

(assert (=> bs!1711960 (not (= lambda!372194 lambda!372189))))

(declare-fun bs!1711962 () Bool)

(assert (= bs!1711962 (and b!6649562 b!6649540)))

(assert (=> bs!1711962 (not (= lambda!372194 lambda!372184))))

(assert (=> bs!1711961 (not (= lambda!372194 lambda!372191))))

(assert (=> bs!1711961 (= (and (= lt!2423835 (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423938)) (= lambda!372194 lambda!372190))))

(assert (=> bs!1711961 (not (= lambda!372194 lambda!372193))))

(assert (=> bs!1711960 (not (= lambda!372194 lambda!372187))))

(assert (=> bs!1711962 (= (= lt!2423835 (regOne!33536 r!7292)) (= lambda!372194 lambda!372183))))

(assert (=> bs!1711960 (= (and (= lt!2423835 (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423829)) (= lambda!372194 lambda!372188))))

(assert (=> b!6649562 true))

(assert (=> b!6649562 true))

(assert (=> b!6649562 true))

(declare-fun lambda!372195 () Int)

(assert (=> bs!1711960 (not (= lambda!372195 lambda!372186))))

(assert (=> bs!1711961 (not (= lambda!372195 lambda!372192))))

(assert (=> bs!1711962 (= (= lt!2423835 (regOne!33536 r!7292)) (= lambda!372195 lambda!372184))))

(assert (=> bs!1711961 (= (and (= lt!2423835 (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423938)) (= lambda!372195 lambda!372191))))

(assert (=> bs!1711961 (not (= lambda!372195 lambda!372190))))

(assert (=> bs!1711961 (= (and (= lt!2423835 (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423798)) (= lambda!372195 lambda!372193))))

(assert (=> bs!1711960 (= (and (= lt!2423835 (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423854)) (= lambda!372195 lambda!372187))))

(assert (=> bs!1711962 (not (= lambda!372195 lambda!372183))))

(assert (=> bs!1711960 (not (= lambda!372195 lambda!372188))))

(assert (=> bs!1711960 (= (and (= lt!2423835 (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423829)) (= lambda!372195 lambda!372189))))

(assert (=> b!6649562 (not (= lambda!372195 lambda!372194))))

(assert (=> b!6649562 true))

(assert (=> b!6649562 true))

(assert (=> b!6649562 true))

(declare-fun bs!1711963 () Bool)

(declare-fun b!6649576 () Bool)

(assert (= bs!1711963 (and b!6649576 b!6649550)))

(declare-datatypes ((List!65835 0))(
  ( (Nil!65711) (Cons!65711 (h!72159 C!33294) (t!379504 List!65835)) )
))
(declare-fun s!2326 () List!65835)

(declare-datatypes ((tuple2!66982 0))(
  ( (tuple2!66983 (_1!36794 List!65835) (_2!36794 List!65835)) )
))
(declare-fun lt!2423817 () tuple2!66982)

(declare-fun lambda!372196 () Int)

(assert (=> bs!1711963 (= (and (= (_1!36794 lt!2423817) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423854)) (= lambda!372196 lambda!372186))))

(declare-fun bs!1711964 () Bool)

(assert (= bs!1711964 (and b!6649576 b!6649552)))

(assert (=> bs!1711964 (= (and (= (_1!36794 lt!2423817) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423798)) (= lambda!372196 lambda!372192))))

(declare-fun bs!1711965 () Bool)

(assert (= bs!1711965 (and b!6649576 b!6649540)))

(assert (=> bs!1711965 (not (= lambda!372196 lambda!372184))))

(assert (=> bs!1711964 (not (= lambda!372196 lambda!372191))))

(declare-fun bs!1711966 () Bool)

(assert (= bs!1711966 (and b!6649576 b!6649562)))

(assert (=> bs!1711966 (not (= lambda!372196 lambda!372195))))

(assert (=> bs!1711964 (= (and (= (_1!36794 lt!2423817) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423938)) (= lambda!372196 lambda!372190))))

(assert (=> bs!1711964 (not (= lambda!372196 lambda!372193))))

(assert (=> bs!1711963 (not (= lambda!372196 lambda!372187))))

(assert (=> bs!1711965 (= (and (= (_1!36794 lt!2423817) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regOne!33536 r!7292)) (= lt!2423835 (regTwo!33536 r!7292))) (= lambda!372196 lambda!372183))))

(assert (=> bs!1711963 (= (and (= (_1!36794 lt!2423817) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423829)) (= lambda!372196 lambda!372188))))

(assert (=> bs!1711963 (not (= lambda!372196 lambda!372189))))

(assert (=> bs!1711966 (= (and (= (_1!36794 lt!2423817) s!2326) (= (reg!16841 (regOne!33536 r!7292)) lt!2423835) (= lt!2423835 (regTwo!33536 r!7292))) (= lambda!372196 lambda!372194))))

(assert (=> b!6649576 true))

(assert (=> b!6649576 true))

(assert (=> b!6649576 true))

(declare-fun lambda!372197 () Int)

(assert (=> b!6649576 (not (= lambda!372197 lambda!372196))))

(assert (=> bs!1711963 (not (= lambda!372197 lambda!372186))))

(assert (=> bs!1711964 (not (= lambda!372197 lambda!372192))))

(assert (=> bs!1711965 (not (= lambda!372197 lambda!372184))))

(assert (=> bs!1711964 (not (= lambda!372197 lambda!372191))))

(assert (=> bs!1711966 (not (= lambda!372197 lambda!372195))))

(assert (=> bs!1711964 (not (= lambda!372197 lambda!372190))))

(assert (=> bs!1711964 (not (= lambda!372197 lambda!372193))))

(assert (=> bs!1711963 (not (= lambda!372197 lambda!372187))))

(assert (=> bs!1711965 (not (= lambda!372197 lambda!372183))))

(assert (=> bs!1711963 (not (= lambda!372197 lambda!372188))))

(assert (=> bs!1711963 (not (= lambda!372197 lambda!372189))))

(assert (=> bs!1711966 (not (= lambda!372197 lambda!372194))))

(assert (=> b!6649576 true))

(assert (=> b!6649576 true))

(assert (=> b!6649576 true))

(declare-fun lambda!372198 () Int)

(assert (=> b!6649576 (not (= lambda!372198 lambda!372196))))

(assert (=> bs!1711963 (not (= lambda!372198 lambda!372186))))

(assert (=> bs!1711964 (not (= lambda!372198 lambda!372192))))

(assert (=> bs!1711965 (= (and (= (_1!36794 lt!2423817) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regOne!33536 r!7292)) (= lt!2423835 (regTwo!33536 r!7292))) (= lambda!372198 lambda!372184))))

(assert (=> bs!1711964 (= (and (= (_1!36794 lt!2423817) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423938)) (= lambda!372198 lambda!372191))))

(assert (=> bs!1711966 (= (and (= (_1!36794 lt!2423817) s!2326) (= (reg!16841 (regOne!33536 r!7292)) lt!2423835) (= lt!2423835 (regTwo!33536 r!7292))) (= lambda!372198 lambda!372195))))

(assert (=> bs!1711964 (not (= lambda!372198 lambda!372190))))

(assert (=> bs!1711964 (= (and (= (_1!36794 lt!2423817) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423798)) (= lambda!372198 lambda!372193))))

(assert (=> bs!1711965 (not (= lambda!372198 lambda!372183))))

(assert (=> bs!1711963 (not (= lambda!372198 lambda!372188))))

(assert (=> bs!1711963 (= (and (= (_1!36794 lt!2423817) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423829)) (= lambda!372198 lambda!372189))))

(assert (=> bs!1711966 (not (= lambda!372198 lambda!372194))))

(assert (=> b!6649576 (not (= lambda!372198 lambda!372197))))

(assert (=> bs!1711963 (= (and (= (_1!36794 lt!2423817) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423854)) (= lambda!372198 lambda!372187))))

(assert (=> b!6649576 true))

(assert (=> b!6649576 true))

(assert (=> b!6649576 true))

(declare-fun b!6649595 () Bool)

(assert (=> b!6649595 true))

(declare-fun bs!1711967 () Bool)

(assert (= bs!1711967 (and b!6649595 b!6649576)))

(declare-fun lambda!372201 () Int)

(declare-fun lambda!372199 () Int)

(assert (=> bs!1711967 (= lambda!372201 lambda!372199)))

(declare-fun lt!2423842 () Regex!16512)

(declare-fun lambda!372202 () Int)

(assert (=> bs!1711967 (= (and (= s!2326 (_1!36794 lt!2423817)) (= lt!2423842 (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423835)) (= lambda!372202 lambda!372196))))

(declare-fun bs!1711968 () Bool)

(assert (= bs!1711968 (and b!6649595 b!6649550)))

(assert (=> bs!1711968 (= (and (= lt!2423842 (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423854)) (= lambda!372202 lambda!372186))))

(declare-fun bs!1711969 () Bool)

(assert (= bs!1711969 (and b!6649595 b!6649552)))

(assert (=> bs!1711969 (= (and (= lt!2423842 (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423798)) (= lambda!372202 lambda!372192))))

(declare-fun bs!1711970 () Bool)

(assert (= bs!1711970 (and b!6649595 b!6649540)))

(assert (=> bs!1711970 (not (= lambda!372202 lambda!372184))))

(assert (=> bs!1711969 (not (= lambda!372202 lambda!372191))))

(declare-fun bs!1711971 () Bool)

(assert (= bs!1711971 (and b!6649595 b!6649562)))

(assert (=> bs!1711971 (not (= lambda!372202 lambda!372195))))

(assert (=> bs!1711969 (= (and (= lt!2423842 (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423938)) (= lambda!372202 lambda!372190))))

(assert (=> bs!1711969 (not (= lambda!372202 lambda!372193))))

(assert (=> bs!1711970 (= (= lt!2423842 (regOne!33536 r!7292)) (= lambda!372202 lambda!372183))))

(assert (=> bs!1711968 (= (and (= lt!2423842 (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423829)) (= lambda!372202 lambda!372188))))

(assert (=> bs!1711967 (not (= lambda!372202 lambda!372198))))

(assert (=> bs!1711968 (not (= lambda!372202 lambda!372189))))

(assert (=> bs!1711971 (= (= lt!2423842 lt!2423835) (= lambda!372202 lambda!372194))))

(assert (=> bs!1711967 (not (= lambda!372202 lambda!372197))))

(assert (=> bs!1711968 (not (= lambda!372202 lambda!372187))))

(assert (=> b!6649595 true))

(assert (=> b!6649595 true))

(assert (=> b!6649595 true))

(declare-fun lambda!372203 () Int)

(assert (=> bs!1711967 (not (= lambda!372203 lambda!372196))))

(assert (=> bs!1711968 (not (= lambda!372203 lambda!372186))))

(assert (=> bs!1711969 (not (= lambda!372203 lambda!372192))))

(assert (=> bs!1711970 (= (= lt!2423842 (regOne!33536 r!7292)) (= lambda!372203 lambda!372184))))

(assert (=> bs!1711969 (= (and (= lt!2423842 (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423938)) (= lambda!372203 lambda!372191))))

(assert (=> bs!1711971 (= (= lt!2423842 lt!2423835) (= lambda!372203 lambda!372195))))

(assert (=> bs!1711969 (= (and (= lt!2423842 (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423798)) (= lambda!372203 lambda!372193))))

(assert (=> bs!1711970 (not (= lambda!372203 lambda!372183))))

(assert (=> bs!1711968 (not (= lambda!372203 lambda!372188))))

(assert (=> bs!1711967 (= (and (= s!2326 (_1!36794 lt!2423817)) (= lt!2423842 (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423835)) (= lambda!372203 lambda!372198))))

(assert (=> bs!1711968 (= (and (= lt!2423842 (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423829)) (= lambda!372203 lambda!372189))))

(assert (=> bs!1711971 (not (= lambda!372203 lambda!372194))))

(assert (=> bs!1711969 (not (= lambda!372203 lambda!372190))))

(assert (=> b!6649595 (not (= lambda!372203 lambda!372202))))

(assert (=> bs!1711967 (not (= lambda!372203 lambda!372197))))

(assert (=> bs!1711968 (= (and (= lt!2423842 (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423854)) (= lambda!372203 lambda!372187))))

(assert (=> b!6649595 true))

(assert (=> b!6649595 true))

(assert (=> b!6649595 true))

(declare-fun lt!2423861 () tuple2!66982)

(declare-fun lambda!372204 () Int)

(assert (=> bs!1711967 (= (= (_1!36794 lt!2423861) (_1!36794 lt!2423817)) (= lambda!372204 lambda!372196))))

(assert (=> bs!1711968 (= (and (= (_1!36794 lt!2423861) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423854)) (= lambda!372204 lambda!372186))))

(assert (=> bs!1711969 (= (and (= (_1!36794 lt!2423861) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423798)) (= lambda!372204 lambda!372192))))

(assert (=> bs!1711970 (not (= lambda!372204 lambda!372184))))

(assert (=> bs!1711969 (not (= lambda!372204 lambda!372191))))

(assert (=> bs!1711971 (not (= lambda!372204 lambda!372195))))

(assert (=> b!6649595 (not (= lambda!372204 lambda!372203))))

(assert (=> bs!1711969 (not (= lambda!372204 lambda!372193))))

(assert (=> bs!1711970 (= (and (= (_1!36794 lt!2423861) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regOne!33536 r!7292)) (= lt!2423835 (regTwo!33536 r!7292))) (= lambda!372204 lambda!372183))))

(assert (=> bs!1711968 (= (and (= (_1!36794 lt!2423861) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423829)) (= lambda!372204 lambda!372188))))

(assert (=> bs!1711967 (not (= lambda!372204 lambda!372198))))

(assert (=> bs!1711968 (not (= lambda!372204 lambda!372189))))

(assert (=> bs!1711971 (= (and (= (_1!36794 lt!2423861) s!2326) (= (reg!16841 (regOne!33536 r!7292)) lt!2423835) (= lt!2423835 (regTwo!33536 r!7292))) (= lambda!372204 lambda!372194))))

(assert (=> bs!1711969 (= (and (= (_1!36794 lt!2423861) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423938)) (= lambda!372204 lambda!372190))))

(assert (=> b!6649595 (= (and (= (_1!36794 lt!2423861) s!2326) (= (reg!16841 (regOne!33536 r!7292)) lt!2423842) (= lt!2423835 (regTwo!33536 r!7292))) (= lambda!372204 lambda!372202))))

(assert (=> bs!1711967 (not (= lambda!372204 lambda!372197))))

(assert (=> bs!1711968 (not (= lambda!372204 lambda!372187))))

(assert (=> b!6649595 true))

(assert (=> b!6649595 true))

(assert (=> b!6649595 true))

(declare-fun lambda!372205 () Int)

(assert (=> bs!1711967 (not (= lambda!372205 lambda!372196))))

(assert (=> bs!1711968 (not (= lambda!372205 lambda!372186))))

(assert (=> bs!1711969 (not (= lambda!372205 lambda!372192))))

(assert (=> bs!1711970 (= (and (= (_1!36794 lt!2423861) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regOne!33536 r!7292)) (= lt!2423835 (regTwo!33536 r!7292))) (= lambda!372205 lambda!372184))))

(assert (=> bs!1711969 (= (and (= (_1!36794 lt!2423861) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423938)) (= lambda!372205 lambda!372191))))

(assert (=> bs!1711971 (= (and (= (_1!36794 lt!2423861) s!2326) (= (reg!16841 (regOne!33536 r!7292)) lt!2423835) (= lt!2423835 (regTwo!33536 r!7292))) (= lambda!372205 lambda!372195))))

(assert (=> b!6649595 (= (and (= (_1!36794 lt!2423861) s!2326) (= (reg!16841 (regOne!33536 r!7292)) lt!2423842) (= lt!2423835 (regTwo!33536 r!7292))) (= lambda!372205 lambda!372203))))

(assert (=> bs!1711969 (= (and (= (_1!36794 lt!2423861) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423798)) (= lambda!372205 lambda!372193))))

(assert (=> bs!1711970 (not (= lambda!372205 lambda!372183))))

(assert (=> bs!1711968 (not (= lambda!372205 lambda!372188))))

(assert (=> b!6649595 (not (= lambda!372205 lambda!372204))))

(assert (=> bs!1711967 (= (= (_1!36794 lt!2423861) (_1!36794 lt!2423817)) (= lambda!372205 lambda!372198))))

(assert (=> bs!1711968 (= (and (= (_1!36794 lt!2423861) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423829)) (= lambda!372205 lambda!372189))))

(assert (=> bs!1711971 (not (= lambda!372205 lambda!372194))))

(assert (=> bs!1711969 (not (= lambda!372205 lambda!372190))))

(assert (=> b!6649595 (not (= lambda!372205 lambda!372202))))

(assert (=> bs!1711967 (not (= lambda!372205 lambda!372197))))

(assert (=> bs!1711968 (= (and (= (_1!36794 lt!2423861) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423854)) (= lambda!372205 lambda!372187))))

(assert (=> b!6649595 true))

(assert (=> b!6649595 true))

(assert (=> b!6649595 true))

(declare-fun lambda!372206 () Int)

(assert (=> bs!1711967 (not (= lambda!372206 lambda!372196))))

(assert (=> bs!1711968 (not (= lambda!372206 lambda!372186))))

(assert (=> bs!1711969 (not (= lambda!372206 lambda!372192))))

(assert (=> bs!1711970 (not (= lambda!372206 lambda!372184))))

(assert (=> bs!1711969 (not (= lambda!372206 lambda!372191))))

(assert (=> bs!1711971 (not (= lambda!372206 lambda!372195))))

(assert (=> b!6649595 (not (= lambda!372206 lambda!372203))))

(assert (=> bs!1711969 (not (= lambda!372206 lambda!372193))))

(assert (=> bs!1711970 (not (= lambda!372206 lambda!372183))))

(assert (=> bs!1711968 (not (= lambda!372206 lambda!372188))))

(assert (=> b!6649595 (not (= lambda!372206 lambda!372204))))

(assert (=> bs!1711967 (not (= lambda!372206 lambda!372198))))

(assert (=> bs!1711968 (not (= lambda!372206 lambda!372189))))

(assert (=> bs!1711971 (not (= lambda!372206 lambda!372194))))

(assert (=> bs!1711969 (not (= lambda!372206 lambda!372190))))

(assert (=> b!6649595 (not (= lambda!372206 lambda!372202))))

(assert (=> bs!1711967 (= (= (_1!36794 lt!2423861) (_1!36794 lt!2423817)) (= lambda!372206 lambda!372197))))

(assert (=> bs!1711968 (not (= lambda!372206 lambda!372187))))

(assert (=> b!6649595 (not (= lambda!372206 lambda!372205))))

(assert (=> b!6649595 true))

(assert (=> b!6649595 true))

(assert (=> b!6649595 true))

(declare-fun bs!1711972 () Bool)

(declare-fun b!6649586 () Bool)

(assert (= bs!1711972 (and b!6649586 b!6649550)))

(declare-fun lambda!372207 () Int)

(assert (=> bs!1711972 (= (and (= Nil!65711 s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423854)) (= lambda!372207 lambda!372186))))

(declare-fun bs!1711973 () Bool)

(assert (= bs!1711973 (and b!6649586 b!6649552)))

(assert (=> bs!1711973 (= (and (= Nil!65711 s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423798)) (= lambda!372207 lambda!372192))))

(declare-fun bs!1711974 () Bool)

(assert (= bs!1711974 (and b!6649586 b!6649540)))

(assert (=> bs!1711974 (not (= lambda!372207 lambda!372184))))

(assert (=> bs!1711973 (not (= lambda!372207 lambda!372191))))

(declare-fun bs!1711975 () Bool)

(assert (= bs!1711975 (and b!6649586 b!6649562)))

(assert (=> bs!1711975 (not (= lambda!372207 lambda!372195))))

(declare-fun bs!1711976 () Bool)

(assert (= bs!1711976 (and b!6649586 b!6649595)))

(assert (=> bs!1711976 (not (= lambda!372207 lambda!372203))))

(assert (=> bs!1711973 (not (= lambda!372207 lambda!372193))))

(assert (=> bs!1711976 (not (= lambda!372207 lambda!372206))))

(declare-fun bs!1711977 () Bool)

(assert (= bs!1711977 (and b!6649586 b!6649576)))

(assert (=> bs!1711977 (= (= Nil!65711 (_1!36794 lt!2423817)) (= lambda!372207 lambda!372196))))

(assert (=> bs!1711974 (= (and (= Nil!65711 s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regOne!33536 r!7292)) (= lt!2423835 (regTwo!33536 r!7292))) (= lambda!372207 lambda!372183))))

(assert (=> bs!1711972 (= (and (= Nil!65711 s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423829)) (= lambda!372207 lambda!372188))))

(assert (=> bs!1711976 (= (= Nil!65711 (_1!36794 lt!2423861)) (= lambda!372207 lambda!372204))))

(assert (=> bs!1711977 (not (= lambda!372207 lambda!372198))))

(assert (=> bs!1711972 (not (= lambda!372207 lambda!372189))))

(assert (=> bs!1711975 (= (and (= Nil!65711 s!2326) (= (reg!16841 (regOne!33536 r!7292)) lt!2423835) (= lt!2423835 (regTwo!33536 r!7292))) (= lambda!372207 lambda!372194))))

(assert (=> bs!1711973 (= (and (= Nil!65711 s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423938)) (= lambda!372207 lambda!372190))))

(assert (=> bs!1711976 (= (and (= Nil!65711 s!2326) (= (reg!16841 (regOne!33536 r!7292)) lt!2423842) (= lt!2423835 (regTwo!33536 r!7292))) (= lambda!372207 lambda!372202))))

(assert (=> bs!1711977 (not (= lambda!372207 lambda!372197))))

(assert (=> bs!1711972 (not (= lambda!372207 lambda!372187))))

(assert (=> bs!1711976 (not (= lambda!372207 lambda!372205))))

(assert (=> b!6649586 true))

(assert (=> b!6649586 true))

(declare-fun lambda!372208 () Int)

(assert (=> bs!1711973 (not (= lambda!372208 lambda!372192))))

(assert (=> bs!1711974 (= (and (= Nil!65711 s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regOne!33536 r!7292)) (= lt!2423835 (regTwo!33536 r!7292))) (= lambda!372208 lambda!372184))))

(assert (=> bs!1711973 (= (and (= Nil!65711 s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423938)) (= lambda!372208 lambda!372191))))

(assert (=> bs!1711975 (= (and (= Nil!65711 s!2326) (= (reg!16841 (regOne!33536 r!7292)) lt!2423835) (= lt!2423835 (regTwo!33536 r!7292))) (= lambda!372208 lambda!372195))))

(assert (=> bs!1711976 (= (and (= Nil!65711 s!2326) (= (reg!16841 (regOne!33536 r!7292)) lt!2423842) (= lt!2423835 (regTwo!33536 r!7292))) (= lambda!372208 lambda!372203))))

(assert (=> bs!1711973 (= (and (= Nil!65711 s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423798)) (= lambda!372208 lambda!372193))))

(assert (=> bs!1711976 (not (= lambda!372208 lambda!372206))))

(assert (=> bs!1711977 (not (= lambda!372208 lambda!372196))))

(assert (=> b!6649586 (not (= lambda!372208 lambda!372207))))

(assert (=> bs!1711972 (not (= lambda!372208 lambda!372186))))

(assert (=> bs!1711974 (not (= lambda!372208 lambda!372183))))

(assert (=> bs!1711972 (not (= lambda!372208 lambda!372188))))

(assert (=> bs!1711976 (not (= lambda!372208 lambda!372204))))

(assert (=> bs!1711977 (= (= Nil!65711 (_1!36794 lt!2423817)) (= lambda!372208 lambda!372198))))

(assert (=> bs!1711972 (= (and (= Nil!65711 s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423829)) (= lambda!372208 lambda!372189))))

(assert (=> bs!1711975 (not (= lambda!372208 lambda!372194))))

(assert (=> bs!1711973 (not (= lambda!372208 lambda!372190))))

(assert (=> bs!1711976 (not (= lambda!372208 lambda!372202))))

(assert (=> bs!1711977 (not (= lambda!372208 lambda!372197))))

(assert (=> bs!1711972 (= (and (= Nil!65711 s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (= lt!2423835 lt!2423854)) (= lambda!372208 lambda!372187))))

(assert (=> bs!1711976 (= (= Nil!65711 (_1!36794 lt!2423861)) (= lambda!372208 lambda!372205))))

(assert (=> b!6649586 true))

(assert (=> b!6649586 true))

(declare-fun lambda!372209 () Int)

(assert (=> bs!1711973 (not (= lambda!372209 lambda!372192))))

(assert (=> bs!1711974 (not (= lambda!372209 lambda!372184))))

(assert (=> bs!1711975 (not (= lambda!372209 lambda!372195))))

(assert (=> bs!1711976 (not (= lambda!372209 lambda!372203))))

(assert (=> bs!1711973 (not (= lambda!372209 lambda!372193))))

(assert (=> bs!1711976 (= (= Nil!65711 (_1!36794 lt!2423861)) (= lambda!372209 lambda!372206))))

(assert (=> bs!1711977 (not (= lambda!372209 lambda!372196))))

(assert (=> b!6649586 (not (= lambda!372209 lambda!372207))))

(assert (=> bs!1711972 (not (= lambda!372209 lambda!372186))))

(assert (=> bs!1711974 (not (= lambda!372209 lambda!372183))))

(assert (=> bs!1711972 (not (= lambda!372209 lambda!372188))))

(assert (=> bs!1711976 (not (= lambda!372209 lambda!372204))))

(assert (=> bs!1711977 (not (= lambda!372209 lambda!372198))))

(assert (=> bs!1711972 (not (= lambda!372209 lambda!372189))))

(assert (=> bs!1711975 (not (= lambda!372209 lambda!372194))))

(assert (=> b!6649586 (not (= lambda!372209 lambda!372208))))

(assert (=> bs!1711973 (not (= lambda!372209 lambda!372191))))

(assert (=> bs!1711973 (not (= lambda!372209 lambda!372190))))

(assert (=> bs!1711976 (not (= lambda!372209 lambda!372202))))

(assert (=> bs!1711977 (= (= Nil!65711 (_1!36794 lt!2423817)) (= lambda!372209 lambda!372197))))

(assert (=> bs!1711972 (not (= lambda!372209 lambda!372187))))

(assert (=> bs!1711976 (not (= lambda!372209 lambda!372205))))

(assert (=> b!6649586 true))

(assert (=> b!6649586 true))

(declare-fun bm!587100 () Bool)

(declare-fun call!587287 () Regex!16512)

(declare-fun call!587133 () Regex!16512)

(assert (=> bm!587100 (= call!587287 call!587133)))

(declare-fun lt!2423746 () tuple2!66982)

(declare-fun bm!587101 () Bool)

(declare-datatypes ((Unit!159475 0))(
  ( (Unit!159476) )
))
(declare-fun call!587168 () Unit!159475)

(declare-fun c!1227272 () Bool)

(declare-fun lt!2423906 () List!65835)

(declare-fun lt!2423904 () tuple2!66982)

(declare-fun lt!2423816 () Regex!16512)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!373 (Regex!16512 Regex!16512 List!65835 List!65835) Unit!159475)

(assert (=> bm!587101 (= call!587168 (lemmaTwoRegexMatchThenConcatMatchesConcatString!373 (reg!16841 (regOne!33536 r!7292)) lt!2423816 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423904)) (ite c!1227272 lt!2423906 (_2!36794 lt!2423904))))))

(declare-fun c!1227273 () Bool)

(declare-fun bm!587102 () Bool)

(declare-datatypes ((List!65836 0))(
  ( (Nil!65712) (Cons!65712 (h!72160 Regex!16512) (t!379505 List!65836)) )
))
(declare-datatypes ((Context!11792 0))(
  ( (Context!11793 (exprs!6396 List!65836)) )
))
(declare-fun lt!2423762 () Context!11792)

(declare-fun call!587175 () (Set Context!11792))

(declare-fun lt!2423885 () Context!11792)

(declare-fun lt!2423923 () Context!11792)

(declare-fun c!1227264 () Bool)

(declare-fun derivationStepZipperUp!1686 (Context!11792 C!33294) (Set Context!11792))

(assert (=> bm!587102 (= call!587175 (derivationStepZipperUp!1686 (ite c!1227264 lt!2423762 (ite c!1227273 lt!2423923 lt!2423885)) (h!72159 s!2326)))))

(declare-fun b!6649537 () Bool)

(declare-fun res!2724710 () Bool)

(declare-fun e!4020780 () Bool)

(assert (=> b!6649537 (=> res!2724710 e!4020780)))

(declare-datatypes ((List!65837 0))(
  ( (Nil!65713) (Cons!65713 (h!72161 Context!11792) (t!379506 List!65837)) )
))
(declare-fun zl!343 () List!65837)

(declare-fun isEmpty!38021 (List!65837) Bool)

(assert (=> b!6649537 (= res!2724710 (not (isEmpty!38021 (t!379506 zl!343))))))

(declare-fun bm!587103 () Bool)

(declare-fun call!587186 () (Set Context!11792))

(declare-fun call!587144 () (Set Context!11792))

(assert (=> bm!587103 (= call!587186 call!587144)))

(declare-fun bm!587104 () Bool)

(declare-fun lt!2423791 () Regex!16512)

(declare-fun call!587139 () Bool)

(declare-fun lt!2423769 () Regex!16512)

(declare-fun c!1227266 () Bool)

(declare-fun lt!2423853 () Regex!16512)

(declare-fun c!1227262 () Bool)

(declare-fun lt!2423878 () Regex!16512)

(declare-fun c!1227269 () Bool)

(declare-fun matchRSpec!3613 (Regex!16512 List!65835) Bool)

(assert (=> bm!587104 (= call!587139 (matchRSpec!3613 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292)))))) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326))))))

(declare-fun bm!587105 () Bool)

(declare-fun call!587311 () (Set Context!11792))

(declare-fun call!587224 () (Set Context!11792))

(assert (=> bm!587105 (= call!587311 call!587224)))

(declare-fun bm!587106 () Bool)

(declare-fun c!1227268 () Bool)

(declare-fun lt!2423916 () (Set Context!11792))

(declare-fun lt!2423844 () (Set Context!11792))

(declare-fun lt!2423870 () (Set Context!11792))

(declare-fun z!1189 () (Set Context!11792))

(declare-fun call!587273 () Bool)

(declare-fun lt!2423893 () (Set Context!11792))

(declare-fun matchZipper!2524 ((Set Context!11792) List!65835) Bool)

(assert (=> bm!587106 (= call!587273 (matchZipper!2524 (ite c!1227268 lt!2423916 (ite c!1227264 lt!2423844 (ite c!1227273 lt!2423870 (ite c!1227266 z!1189 lt!2423893)))) (ite (or c!1227268 c!1227264 c!1227273) (t!379504 s!2326) (ite c!1227266 s!2326 (t!379504 s!2326)))))))

(declare-fun b!6649538 () Bool)

(assert (=> b!6649538 (= c!1227266 (is-Star!16512 (regOne!33536 r!7292)))))

(declare-fun e!4020784 () Unit!159475)

(declare-fun e!4020783 () Unit!159475)

(assert (=> b!6649538 (= e!4020784 e!4020783)))

(declare-fun call!587117 () Bool)

(declare-fun bm!587107 () Bool)

(declare-fun Exists!3582 (Int) Bool)

(assert (=> bm!587107 (= call!587117 (Exists!3582 (ite c!1227273 lambda!372186 (ite c!1227262 lambda!372190 (ite c!1227272 lambda!372195 lambda!372204)))))))

(declare-fun b!6649539 () Bool)

(declare-fun res!2724707 () Bool)

(assert (=> b!6649539 (=> res!2724707 e!4020780)))

(assert (=> b!6649539 (= res!2724707 (or (is-EmptyExpr!16512 r!7292) (is-EmptyLang!16512 r!7292) (is-ElementMatch!16512 r!7292) (is-Union!16512 r!7292) (not (is-Concat!25357 r!7292))))))

(declare-fun bm!587108 () Bool)

(declare-fun call!587284 () Unit!159475)

(declare-fun call!587127 () Unit!159475)

(assert (=> bm!587108 (= call!587284 call!587127)))

(declare-fun c!1227261 () Bool)

(declare-fun bm!587109 () Bool)

(declare-datatypes ((Option!16403 0))(
  ( (None!16402) (Some!16402 (v!52597 tuple2!66982)) )
))
(declare-fun call!587304 () Option!16403)

(declare-fun findConcatSeparation!2817 (Regex!16512 Regex!16512 List!65835 List!65835 List!65835) Option!16403)

(assert (=> bm!587109 (= call!587304 (findConcatSeparation!2817 (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) Nil!65711 (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)))))

(declare-fun e!4020806 () Bool)

(assert (=> b!6649540 (= e!4020780 e!4020806)))

(declare-fun res!2724733 () Bool)

(assert (=> b!6649540 (=> res!2724733 e!4020806)))

(declare-fun lt!2423833 () Bool)

(declare-fun lt!2423915 () Bool)

(assert (=> b!6649540 (= res!2724733 (or (not (= lt!2423915 lt!2423833)) (is-Nil!65711 s!2326)))))

(assert (=> b!6649540 (= (Exists!3582 lambda!372183) (Exists!3582 lambda!372184))))

(declare-fun lt!2423869 () Unit!159475)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2119 (Regex!16512 Regex!16512 List!65835) Unit!159475)

(assert (=> b!6649540 (= lt!2423869 (lemmaExistCutMatchRandMatchRSpecEquivalent!2119 (regOne!33536 r!7292) (regTwo!33536 r!7292) s!2326))))

(assert (=> b!6649540 (= lt!2423833 (Exists!3582 lambda!372183))))

(declare-fun isDefined!13106 (Option!16403) Bool)

(assert (=> b!6649540 (= lt!2423833 (isDefined!13106 (findConcatSeparation!2817 (regOne!33536 r!7292) (regTwo!33536 r!7292) Nil!65711 s!2326 s!2326)))))

(declare-fun lt!2423860 () Unit!159475)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2581 (Regex!16512 Regex!16512 List!65835) Unit!159475)

(assert (=> b!6649540 (= lt!2423860 (lemmaFindConcatSeparationEquivalentToExists!2581 (regOne!33536 r!7292) (regTwo!33536 r!7292) s!2326))))

(declare-fun bm!587110 () Bool)

(declare-fun call!587297 () Bool)

(declare-fun call!587232 () Bool)

(assert (=> bm!587110 (= call!587297 call!587232)))

(declare-fun lt!2423743 () tuple2!66982)

(declare-fun bm!587111 () Bool)

(declare-fun call!587286 () Unit!159475)

(declare-fun lemmaConcatAssociativity!2955 (List!65835 List!65835 List!65835) Unit!159475)

(assert (=> bm!587111 (= call!587286 (lemmaConcatAssociativity!2955 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423743)) (ite c!1227272 (_2!36794 lt!2423746) (_2!36794 lt!2423743)) (ite c!1227272 (_2!36794 lt!2423817) (_2!36794 lt!2423861))))))

(declare-fun b!6649541 () Bool)

(declare-fun res!2724711 () Bool)

(assert (=> b!6649541 (=> res!2724711 e!4020780)))

(declare-fun generalisedConcat!2109 (List!65836) Regex!16512)

(assert (=> b!6649541 (= res!2724711 (not (= r!7292 (generalisedConcat!2109 (exprs!6396 (h!72161 zl!343))))))))

(declare-fun bm!587112 () Bool)

(declare-fun call!587171 () Unit!159475)

(declare-fun call!587266 () Unit!159475)

(assert (=> bm!587112 (= call!587171 call!587266)))

(declare-fun bm!587113 () Bool)

(declare-fun call!587223 () Bool)

(declare-fun call!587307 () Bool)

(assert (=> bm!587113 (= call!587223 call!587307)))

(declare-fun bm!587114 () Bool)

(declare-fun call!587210 () Bool)

(declare-fun call!587197 () Bool)

(assert (=> bm!587114 (= call!587210 call!587197)))

(declare-fun call!587272 () Bool)

(declare-fun lt!2423804 () (Set Context!11792))

(declare-fun lt!2423846 () (Set Context!11792))

(declare-fun bm!587115 () Bool)

(declare-fun lt!2423900 () (Set Context!11792))

(assert (=> bm!587115 (= call!587272 (matchZipper!2524 (ite c!1227264 (set.union lt!2423844 lt!2423900) (set.union lt!2423846 lt!2423804)) (t!379504 s!2326)))))

(declare-fun bm!587116 () Bool)

(declare-fun lt!2423799 () List!65835)

(declare-fun call!587179 () List!65835)

(declare-fun ++!14666 (List!65835 List!65835) List!65835)

(assert (=> bm!587116 (= call!587179 (++!14666 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423743)) (ite c!1227272 lt!2423906 lt!2423799)))))

(declare-fun bm!587117 () Bool)

(declare-fun call!587203 () Unit!159475)

(declare-fun call!587163 () Unit!159475)

(assert (=> bm!587117 (= call!587203 call!587163)))

(declare-fun bm!587118 () Bool)

(declare-fun call!587281 () Bool)

(declare-fun call!587271 () Bool)

(assert (=> bm!587118 (= call!587281 call!587271)))

(declare-fun bm!587119 () Bool)

(declare-fun call!587136 () Bool)

(assert (=> bm!587119 (= call!587136 call!587273)))

(declare-fun bm!587120 () Bool)

(declare-fun call!587289 () Bool)

(declare-fun call!587161 () Bool)

(assert (=> bm!587120 (= call!587289 call!587161)))

(declare-fun b!6649542 () Bool)

(declare-fun res!2724725 () Bool)

(declare-fun e!4020777 () Bool)

(assert (=> b!6649542 (=> (not res!2724725) (not e!4020777))))

(declare-fun toList!10296 ((Set Context!11792)) List!65837)

(assert (=> b!6649542 (= res!2724725 (= (toList!10296 z!1189) zl!343))))

(declare-fun bm!587121 () Bool)

(declare-fun call!587155 () Bool)

(declare-fun call!587143 () Bool)

(assert (=> bm!587121 (= call!587155 call!587143)))

(declare-fun bm!587122 () Bool)

(declare-fun call!587218 () Unit!159475)

(declare-fun call!587177 () Unit!159475)

(assert (=> bm!587122 (= call!587218 call!587177)))

(declare-fun bm!587123 () Bool)

(declare-fun lt!2423897 () List!65836)

(declare-fun call!587151 () Regex!16512)

(declare-fun lt!2423848 () List!65836)

(assert (=> bm!587123 (= call!587151 (generalisedConcat!2109 (ite c!1227273 lt!2423848 (ite c!1227262 lt!2423897 (t!379505 (exprs!6396 (h!72161 zl!343)))))))))

(declare-fun bm!587124 () Bool)

(declare-fun call!587217 () Bool)

(declare-fun call!587183 () Bool)

(assert (=> bm!587124 (= call!587217 call!587183)))

(declare-fun bm!587125 () Bool)

(declare-fun call!587135 () Unit!159475)

(declare-fun call!587236 () Unit!159475)

(assert (=> bm!587125 (= call!587135 call!587236)))

(declare-fun b!6649543 () Bool)

(declare-fun e!4020803 () Unit!159475)

(declare-fun Unit!159477 () Unit!159475)

(assert (=> b!6649543 (= e!4020803 Unit!159477)))

(declare-fun lt!2423748 () Unit!159475)

(declare-fun call!587204 () Unit!159475)

(assert (=> b!6649543 (= lt!2423748 call!587204)))

(declare-fun res!2724712 () Bool)

(declare-fun call!587108 () Bool)

(assert (=> b!6649543 (= res!2724712 call!587108)))

(declare-fun e!4020795 () Bool)

(assert (=> b!6649543 (=> res!2724712 e!4020795)))

(declare-fun call!587182 () Bool)

(assert (=> b!6649543 (= call!587182 e!4020795)))

(declare-fun b!6649544 () Bool)

(declare-fun e!4020771 () Bool)

(declare-fun call!587207 () Bool)

(assert (=> b!6649544 (= e!4020771 (= lt!2423915 call!587207))))

(declare-fun bm!587126 () Bool)

(declare-fun call!587227 () Bool)

(declare-fun call!587162 () Bool)

(assert (=> bm!587126 (= call!587227 call!587162)))

(declare-fun bm!587127 () Bool)

(declare-fun call!587295 () (Set Context!11792))

(assert (=> bm!587127 (= call!587295 call!587175)))

(declare-fun bm!587128 () Bool)

(declare-fun call!587296 () Bool)

(declare-fun call!587160 () Bool)

(assert (=> bm!587128 (= call!587296 call!587160)))

(declare-fun b!6649545 () Bool)

(declare-fun e!4020792 () Unit!159475)

(declare-fun Unit!159478 () Unit!159475)

(assert (=> b!6649545 (= e!4020792 Unit!159478)))

(declare-fun b!6649546 () Bool)

(declare-fun e!4020799 () Bool)

(declare-fun tp!1830714 () Bool)

(assert (=> b!6649546 (= e!4020799 tp!1830714)))

(declare-fun bm!587129 () Bool)

(declare-fun call!587121 () Bool)

(declare-fun call!587301 () Bool)

(assert (=> bm!587129 (= call!587121 call!587301)))

(declare-fun b!6649547 () Bool)

(declare-fun lt!2423865 () Bool)

(assert (=> b!6649547 (not lt!2423865)))

(declare-fun lt!2423890 () Unit!159475)

(declare-fun e!4020787 () Unit!159475)

(assert (=> b!6649547 (= lt!2423890 e!4020787)))

(declare-fun c!1227271 () Bool)

(assert (=> b!6649547 (= c!1227271 lt!2423865)))

(declare-fun call!587306 () Bool)

(assert (=> b!6649547 (= lt!2423865 call!587306)))

(declare-fun e!4020801 () Unit!159475)

(declare-fun Unit!159479 () Unit!159475)

(assert (=> b!6649547 (= e!4020801 Unit!159479)))

(declare-fun bm!587130 () Bool)

(declare-fun call!587240 () Unit!159475)

(declare-fun call!587265 () Unit!159475)

(assert (=> bm!587130 (= call!587240 call!587265)))

(declare-fun b!6649548 () Bool)

(declare-fun e!4020779 () Unit!159475)

(assert (=> b!6649548 (= e!4020779 e!4020784)))

(assert (=> b!6649548 (= c!1227262 (is-Concat!25357 (regOne!33536 r!7292)))))

(declare-fun bm!587131 () Bool)

(declare-fun call!587209 () Bool)

(assert (=> bm!587131 (= call!587209 call!587297)))

(declare-fun call!587105 () Unit!159475)

(declare-fun bm!587132 () Bool)

(declare-fun lemmaStarApp!159 (Regex!16512 List!65835 List!65835) Unit!159475)

(assert (=> bm!587132 (= call!587105 (lemmaStarApp!159 (reg!16841 (regOne!33536 r!7292)) (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423743)) (ite c!1227272 (_2!36794 lt!2423746) (_2!36794 lt!2423743))))))

(declare-fun b!6649549 () Bool)

(declare-fun e!4020800 () Bool)

(declare-fun tp!1830716 () Bool)

(declare-fun e!4020772 () Bool)

(declare-fun inv!84528 (Context!11792) Bool)

(assert (=> b!6649549 (= e!4020800 (and (inv!84528 (h!72161 zl!343)) e!4020772 tp!1830716))))

(declare-fun bm!587133 () Bool)

(declare-fun call!587141 () Unit!159475)

(declare-fun call!587219 () Unit!159475)

(assert (=> bm!587133 (= call!587141 call!587219)))

(declare-fun bm!587134 () Bool)

(declare-fun call!587225 () Bool)

(assert (=> bm!587134 (= call!587225 call!587210)))

(declare-fun bm!587135 () Bool)

(declare-fun call!587302 () Unit!159475)

(declare-fun call!587250 () Unit!159475)

(assert (=> bm!587135 (= call!587302 call!587250)))

(declare-fun bm!587136 () Bool)

(declare-fun call!587249 () Unit!159475)

(assert (=> bm!587136 (= call!587249 call!587284)))

(declare-fun bm!587137 () Bool)

(declare-fun call!587150 () Unit!159475)

(assert (=> bm!587137 (= call!587150 (lemmaFindConcatSeparationEquivalentToExists!2581 (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (reg!16841 (regOne!33536 r!7292)))) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (ite c!1227272 (regTwo!33536 r!7292) lt!2423835))) (ite (or c!1227273 c!1227262 c!1227272) s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))))))

(declare-fun Unit!159480 () Unit!159475)

(assert (=> b!6649550 (= e!4020779 Unit!159480)))

(assert (=> b!6649550 (= lt!2423848 (Cons!65712 (regTwo!33536 (regOne!33536 r!7292)) (t!379505 (exprs!6396 (h!72161 zl!343)))))))

(assert (=> b!6649550 (= lt!2423923 (Context!11793 lt!2423848))))

(declare-fun call!587305 () (Set Context!11792))

(assert (=> b!6649550 (= lt!2423846 call!587305)))

(declare-fun call!587131 () (Set Context!11792))

(assert (=> b!6649550 (= lt!2423870 call!587131)))

(declare-fun lt!2423901 () Unit!159475)

(declare-fun call!587283 () Unit!159475)

(assert (=> b!6649550 (= lt!2423901 call!587283)))

(declare-fun lt!2423744 () Bool)

(declare-fun call!587119 () Bool)

(assert (=> b!6649550 (= lt!2423744 call!587119)))

(declare-fun res!2724731 () Bool)

(assert (=> b!6649550 (= res!2724731 lt!2423744)))

(declare-fun e!4020782 () Bool)

(assert (=> b!6649550 (=> res!2724731 e!4020782)))

(declare-fun call!587130 () Bool)

(assert (=> b!6649550 (= call!587130 e!4020782)))

(declare-fun lt!2423855 () List!65836)

(assert (=> b!6649550 (= lt!2423855 (Cons!65712 (regOne!33536 (regOne!33536 r!7292)) lt!2423848))))

(declare-fun lt!2423852 () Context!11792)

(assert (=> b!6649550 (= lt!2423852 (Context!11793 lt!2423855))))

(declare-fun lt!2423802 () (Set Context!11792))

(assert (=> b!6649550 (= lt!2423802 (set.insert lt!2423852 (as set.empty (Set Context!11792))))))

(declare-fun lt!2423939 () (Set Context!11792))

(assert (=> b!6649550 (= lt!2423939 (set.insert lt!2423923 (as set.empty (Set Context!11792))))))

(declare-fun lt!2423774 () (Set Context!11792))

(assert (=> b!6649550 (= lt!2423774 call!587186)))

(declare-fun lt!2423936 () Unit!159475)

(declare-fun call!587191 () Unit!159475)

(assert (=> b!6649550 (= lt!2423936 call!587191)))

(declare-fun call!587213 () (Set Context!11792))

(assert (=> b!6649550 (= call!587213 call!587186)))

(assert (=> b!6649550 (= lt!2423804 call!587295)))

(declare-fun lt!2423840 () Unit!159475)

(declare-fun call!587288 () Unit!159475)

(assert (=> b!6649550 (= lt!2423840 call!587288)))

(declare-fun call!587147 () (Set Context!11792))

(assert (=> b!6649550 (= call!587147 call!587295)))

(declare-fun lt!2423921 () Unit!159475)

(declare-fun call!587124 () Unit!159475)

(assert (=> b!6649550 (= lt!2423921 call!587124)))

(declare-fun res!2724708 () Bool)

(assert (=> b!6649550 (= res!2724708 lt!2423744)))

(declare-fun e!4020768 () Bool)

(assert (=> b!6649550 (=> res!2724708 e!4020768)))

(assert (=> b!6649550 (= call!587272 e!4020768)))

(assert (=> b!6649550 (= lt!2423791 call!587287)))

(declare-fun lt!2423763 () Unit!159475)

(assert (=> b!6649550 (= lt!2423763 call!587218)))

(declare-fun lt!2423794 () Bool)

(declare-fun call!587174 () Bool)

(assert (=> b!6649550 (= lt!2423794 call!587174)))

(assert (=> b!6649550 (= lt!2423794 call!587281)))

(assert (=> b!6649550 (= lt!2423854 call!587151)))

(declare-fun lt!2423851 () Unit!159475)

(declare-fun call!587194 () Unit!159475)

(assert (=> b!6649550 (= lt!2423851 call!587194)))

(declare-fun lt!2423891 () Bool)

(declare-fun call!587189 () Bool)

(assert (=> b!6649550 (= lt!2423891 call!587189)))

(assert (=> b!6649550 (= lt!2423891 call!587297)))

(declare-fun lt!2423819 () Unit!159475)

(assert (=> b!6649550 (= lt!2423819 call!587219)))

(declare-fun call!587181 () Bool)

(assert (=> b!6649550 (= lt!2423794 call!587181)))

(declare-fun lt!2423803 () Unit!159475)

(declare-fun call!587156 () Unit!159475)

(assert (=> b!6649550 (= lt!2423803 call!587156)))

(declare-fun call!587274 () Bool)

(declare-fun call!587128 () Bool)

(assert (=> b!6649550 (= call!587274 call!587128)))

(declare-fun lt!2423742 () Unit!159475)

(declare-fun call!587300 () Unit!159475)

(assert (=> b!6649550 (= lt!2423742 call!587300)))

(declare-fun call!587200 () Bool)

(assert (=> b!6649550 (= call!587117 call!587200)))

(declare-fun lt!2423786 () Unit!159475)

(assert (=> b!6649550 (= lt!2423786 call!587265)))

(declare-fun call!587229 () Bool)

(assert (=> b!6649550 (= lt!2423891 call!587229)))

(declare-fun call!587199 () Regex!16512)

(assert (=> b!6649550 (= lt!2423829 call!587199)))

(declare-fun lt!2423767 () Unit!159475)

(assert (=> b!6649550 (= lt!2423767 call!587150)))

(assert (=> b!6649550 (= call!587161 call!587162)))

(declare-fun lt!2423780 () Unit!159475)

(declare-fun call!587310 () Unit!159475)

(assert (=> b!6649550 (= lt!2423780 call!587310)))

(declare-fun call!587157 () Bool)

(assert (=> b!6649550 (= call!587197 call!587157)))

(declare-fun lt!2423820 () Unit!159475)

(declare-fun call!587129 () Unit!159475)

(assert (=> b!6649550 (= lt!2423820 call!587129)))

(declare-fun res!2724706 () Bool)

(declare-fun call!587233 () Bool)

(declare-fun call!587293 () Bool)

(assert (=> b!6649550 (= res!2724706 (= call!587233 call!587293))))

(assert (=> b!6649550 (=> (not res!2724706) (not e!4020771))))

(assert (=> b!6649550 e!4020771))

(declare-fun b!6649551 () Bool)

(declare-fun call!587237 () Bool)

(assert (=> b!6649551 (= e!4020782 call!587237)))

(declare-fun bm!587138 () Bool)

(declare-fun call!587154 () Bool)

(assert (=> bm!587138 (= call!587154 call!587128)))

(declare-fun e!4020767 () Bool)

(assert (=> b!6649552 e!4020767))

(declare-fun res!2724732 () Bool)

(assert (=> b!6649552 (=> (not res!2724732) (not e!4020767))))

(declare-fun call!587235 () Bool)

(declare-fun call!587188 () Bool)

(assert (=> b!6649552 (= res!2724732 (= call!587235 call!587188))))

(declare-fun lt!2423881 () Unit!159475)

(declare-fun call!587308 () Unit!159475)

(assert (=> b!6649552 (= lt!2423881 call!587308)))

(declare-fun call!587202 () Bool)

(assert (=> b!6649552 (= call!587154 call!587202)))

(declare-fun lt!2423864 () Unit!159475)

(declare-fun call!587145 () Unit!159475)

(assert (=> b!6649552 (= lt!2423864 call!587145)))

(declare-fun call!587222 () Bool)

(assert (=> b!6649552 (= call!587222 call!587183)))

(declare-fun lt!2423818 () Unit!159475)

(assert (=> b!6649552 (= lt!2423818 call!587127)))

(assert (=> b!6649552 (= lt!2423798 call!587199)))

(declare-fun call!587116 () Bool)

(declare-fun call!587208 () Bool)

(assert (=> b!6649552 (= call!587116 call!587208)))

(declare-fun lt!2423801 () Unit!159475)

(assert (=> b!6649552 (= lt!2423801 call!587240)))

(declare-fun call!587245 () Bool)

(assert (=> b!6649552 (= call!587245 call!587210)))

(declare-fun lt!2423894 () Unit!159475)

(declare-fun call!587248 () Unit!159475)

(assert (=> b!6649552 (= lt!2423894 call!587248)))

(declare-fun call!587278 () Bool)

(assert (=> b!6649552 (= call!587143 call!587278)))

(declare-fun lt!2423787 () Unit!159475)

(assert (=> b!6649552 (= lt!2423787 call!587250)))

(declare-fun call!587118 () Regex!16512)

(assert (=> b!6649552 (= lt!2423938 call!587118)))

(declare-fun lt!2423796 () Bool)

(declare-fun call!587290 () Bool)

(assert (=> b!6649552 (= lt!2423796 call!587290)))

(declare-fun lt!2423778 () Unit!159475)

(assert (=> b!6649552 (= lt!2423778 call!587141)))

(assert (=> b!6649552 (= lt!2423796 call!587209)))

(declare-fun call!587270 () Bool)

(assert (=> b!6649552 (= lt!2423796 call!587270)))

(declare-fun lt!2423779 () Unit!159475)

(declare-fun call!587256 () Unit!159475)

(assert (=> b!6649552 (= lt!2423779 call!587256)))

(assert (=> b!6649552 (= lt!2423769 call!587287)))

(declare-fun call!587106 () (Set Context!11792))

(assert (=> b!6649552 (= call!587311 call!587106)))

(declare-fun lt!2423754 () Unit!159475)

(declare-fun call!587257 () Unit!159475)

(assert (=> b!6649552 (= lt!2423754 call!587257)))

(declare-fun lt!2423924 () (Set Context!11792))

(assert (=> b!6649552 (= lt!2423924 call!587106)))

(declare-fun lt!2423765 () (Set Context!11792))

(declare-fun lt!2423914 () Context!11792)

(assert (=> b!6649552 (= lt!2423765 (set.insert lt!2423914 (as set.empty (Set Context!11792))))))

(declare-fun lt!2423768 () List!65836)

(assert (=> b!6649552 (= lt!2423914 (Context!11793 lt!2423768))))

(assert (=> b!6649552 (= lt!2423768 (Cons!65712 (regOne!33536 (regOne!33536 r!7292)) lt!2423897))))

(declare-fun lt!2423925 () (Set Context!11792))

(declare-fun call!587241 () (Set Context!11792))

(assert (=> b!6649552 (= lt!2423925 call!587241)))

(assert (=> b!6649552 (= lt!2423897 (Cons!65712 (regTwo!33536 (regOne!33536 r!7292)) (t!379505 (exprs!6396 (h!72161 zl!343)))))))

(declare-fun Unit!159481 () Unit!159475)

(assert (=> b!6649552 (= e!4020784 Unit!159481)))

(declare-fun bm!587139 () Bool)

(assert (=> bm!587139 (= call!587124 call!587204)))

(declare-fun call!587269 () Unit!159475)

(declare-fun bm!587140 () Bool)

(declare-fun mainMatchTheorem!3613 (Regex!16512 List!65835) Unit!159475)

(assert (=> bm!587140 (= call!587269 (mainMatchTheorem!3613 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 lt!2423842 (regOne!33536 r!7292))))) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite c!1227266 (_1!36794 lt!2423861) s!2326))))))

(declare-fun bm!587141 () Bool)

(declare-fun call!587267 () List!65835)

(declare-fun call!587120 () List!65835)

(assert (=> bm!587141 (= call!587267 call!587120)))

(declare-fun bm!587142 () Bool)

(declare-fun call!587170 () Bool)

(assert (=> bm!587142 (= call!587233 call!587170)))

(declare-fun bm!587143 () Bool)

(assert (=> bm!587143 (= call!587307 (Exists!3582 (ite c!1227272 lambda!372194 (ite c!1227261 lambda!372205 lambda!372207))))))

(declare-fun bm!587144 () Bool)

(declare-fun call!587275 () Bool)

(declare-fun call!587205 () Bool)

(assert (=> bm!587144 (= call!587275 call!587205)))

(declare-fun b!6649553 () Bool)

(declare-fun e!4020793 () Bool)

(declare-fun tp_is_empty!42277 () Bool)

(declare-fun tp!1830718 () Bool)

(assert (=> b!6649553 (= e!4020793 (and tp_is_empty!42277 tp!1830718))))

(declare-fun bm!587145 () Bool)

(assert (=> bm!587145 (= call!587128 (Exists!3582 (ite c!1227273 lambda!372186 (ite c!1227262 lambda!372192 (ite c!1227272 lambda!372196 lambda!372202)))))))

(declare-fun e!4020769 () Bool)

(assert (=> b!6649554 (= e!4020806 e!4020769)))

(declare-fun res!2724723 () Bool)

(assert (=> b!6649554 (=> res!2724723 e!4020769)))

(declare-fun lt!2423871 () (Set Context!11792))

(declare-fun derivationStepZipper!2478 ((Set Context!11792) C!33294) (Set Context!11792))

(assert (=> b!6649554 (= res!2724723 (not (= lt!2423893 (derivationStepZipper!2478 lt!2423871 (h!72159 s!2326)))))))

(declare-fun lambda!372185 () Int)

(declare-fun lt!2423839 () Context!11792)

(declare-fun flatMap!2017 ((Set Context!11792) Int) (Set Context!11792))

(assert (=> b!6649554 (= (flatMap!2017 lt!2423871 lambda!372185) (derivationStepZipperUp!1686 lt!2423839 (h!72159 s!2326)))))

(declare-fun lt!2423770 () Unit!159475)

(declare-fun lemmaFlatMapOnSingletonSet!1543 ((Set Context!11792) Context!11792 Int) Unit!159475)

(assert (=> b!6649554 (= lt!2423770 (lemmaFlatMapOnSingletonSet!1543 lt!2423871 lt!2423839 lambda!372185))))

(assert (=> b!6649554 (= lt!2423871 (set.insert lt!2423839 (as set.empty (Set Context!11792))))))

(declare-fun lt!2423784 () Unit!159475)

(declare-fun e!4020781 () Unit!159475)

(assert (=> b!6649554 (= lt!2423784 e!4020781)))

(assert (=> b!6649554 (= c!1227268 (and (is-ElementMatch!16512 (regOne!33536 r!7292)) (= (c!1227274 (regOne!33536 r!7292)) (h!72159 s!2326))))))

(declare-fun lt!2423903 () Unit!159475)

(assert (=> b!6649554 (= lt!2423903 e!4020792)))

(declare-fun c!1227270 () Bool)

(declare-fun nullable!6505 (Regex!16512) Bool)

(assert (=> b!6649554 (= c!1227270 (nullable!6505 (h!72160 (exprs!6396 (h!72161 zl!343)))))))

(assert (=> b!6649554 (= (flatMap!2017 z!1189 lambda!372185) (derivationStepZipperUp!1686 (h!72161 zl!343) (h!72159 s!2326)))))

(declare-fun lt!2423807 () Unit!159475)

(assert (=> b!6649554 (= lt!2423807 (lemmaFlatMapOnSingletonSet!1543 z!1189 (h!72161 zl!343) lambda!372185))))

(assert (=> b!6649554 (= lt!2423893 (derivationStepZipperUp!1686 lt!2423839 (h!72159 s!2326)))))

(declare-fun lt!2423772 () (Set Context!11792))

(declare-fun derivationStepZipperDown!1760 (Regex!16512 Context!11792 C!33294) (Set Context!11792))

(assert (=> b!6649554 (= lt!2423772 (derivationStepZipperDown!1760 (h!72160 (exprs!6396 (h!72161 zl!343))) lt!2423839 (h!72159 s!2326)))))

(assert (=> b!6649554 (= lt!2423839 (Context!11793 (t!379505 (exprs!6396 (h!72161 zl!343)))))))

(declare-fun lt!2423874 () (Set Context!11792))

(assert (=> b!6649554 (= lt!2423874 (derivationStepZipperUp!1686 (Context!11793 (Cons!65712 (h!72160 (exprs!6396 (h!72161 zl!343))) (t!379505 (exprs!6396 (h!72161 zl!343))))) (h!72159 s!2326)))))

(declare-fun call!587125 () Option!16403)

(declare-fun lt!2423753 () Option!16403)

(declare-fun bm!587146 () Bool)

(declare-fun lt!2423740 () Option!16403)

(declare-fun call!587187 () Option!16403)

(assert (=> bm!587146 (= call!587143 (isDefined!13106 (ite c!1227262 call!587187 (ite c!1227272 lt!2423740 (ite c!1227261 lt!2423753 call!587125)))))))

(declare-fun bm!587147 () Bool)

(declare-fun call!587231 () Bool)

(declare-fun call!587259 () Bool)

(assert (=> bm!587147 (= call!587231 call!587259)))

(declare-fun bm!587148 () Bool)

(declare-fun call!587214 () Regex!16512)

(declare-fun call!587309 () Regex!16512)

(assert (=> bm!587148 (= call!587214 call!587309)))

(declare-fun bm!587149 () Bool)

(declare-fun call!587115 () Bool)

(assert (=> bm!587149 (= call!587189 call!587115)))

(declare-fun bm!587150 () Bool)

(assert (=> bm!587150 (= call!587181 call!587139)))

(declare-fun bm!587151 () Bool)

(declare-fun call!587246 () Bool)

(declare-fun call!587132 () Bool)

(assert (=> bm!587151 (= call!587246 call!587132)))

(declare-fun bm!587152 () Bool)

(declare-fun call!587216 () Bool)

(declare-fun call!587201 () Bool)

(assert (=> bm!587152 (= call!587216 call!587201)))

(declare-fun b!6649555 () Bool)

(declare-fun e!4020790 () Bool)

(assert (=> b!6649555 (= e!4020790 false)))

(declare-fun bm!587153 () Bool)

(assert (=> bm!587153 (= call!587270 call!587233)))

(declare-fun bm!587154 () Bool)

(declare-fun lt!2423909 () List!65836)

(declare-fun lt!2423826 () List!65836)

(declare-fun call!587206 () Unit!159475)

(declare-fun lemmaConcatPreservesForall!425 (List!65836 List!65836 Int) Unit!159475)

(assert (=> bm!587154 (= call!587206 (lemmaConcatPreservesForall!425 lt!2423826 lt!2423909 (ite c!1227272 lambda!372199 lambda!372201)))))

(declare-fun setIsEmpty!45450 () Bool)

(declare-fun setRes!45450 () Bool)

(assert (=> setIsEmpty!45450 setRes!45450))

(declare-fun bm!587155 () Bool)

(declare-fun call!587238 () List!65835)

(assert (=> bm!587155 (= call!587238 (++!14666 (ite c!1227272 (_2!36794 lt!2423746) (_2!36794 lt!2423743)) (ite c!1227272 (_2!36794 lt!2423817) (_2!36794 lt!2423861))))))

(declare-fun b!6649556 () Bool)

(declare-fun Unit!159482 () Unit!159475)

(assert (=> b!6649556 (= e!4020787 Unit!159482)))

(declare-fun b!6649557 () Bool)

(declare-fun e!4020785 () Bool)

(assert (=> b!6649557 (= e!4020785 call!587232)))

(declare-fun bm!587156 () Bool)

(assert (=> bm!587156 (= call!587245 call!587200)))

(declare-fun b!6649558 () Bool)

(declare-fun e!4020794 () Bool)

(assert (=> b!6649558 (= e!4020794 false)))

(declare-fun bm!587157 () Bool)

(declare-fun call!587172 () Unit!159475)

(assert (=> bm!587157 (= call!587172 call!587288)))

(declare-fun bm!587158 () Bool)

(declare-fun lt!2423749 () (Set Context!11792))

(declare-fun lt!2423867 () (Set Context!11792))

(declare-fun lt!2423750 () Context!11792)

(assert (=> bm!587158 (= call!587288 (lemmaFlatMapOnSingletonSet!1543 (ite c!1227273 lt!2423939 (ite c!1227266 lt!2423749 lt!2423867)) (ite c!1227273 lt!2423923 (ite c!1227266 lt!2423750 lt!2423839)) (ite c!1227273 lambda!372185 (ite c!1227266 lambda!372185 lambda!372185))))))

(declare-fun bm!587159 () Bool)

(declare-fun call!587176 () Unit!159475)

(declare-fun call!587180 () Unit!159475)

(assert (=> bm!587159 (= call!587176 call!587180)))

(declare-fun bm!587160 () Bool)

(declare-fun call!587184 () Option!16403)

(assert (=> bm!587160 (= call!587184 (findConcatSeparation!2817 (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 lt!2423835)) Nil!65711 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861)))))))

(declare-fun bm!587161 () Bool)

(declare-fun call!587165 () Option!16403)

(assert (=> bm!587161 (= call!587165 call!587304)))

(declare-fun b!6649559 () Bool)

(declare-fun e!4020776 () Unit!159475)

(assert (=> b!6649559 (= e!4020783 e!4020776)))

(assert (=> b!6649559 (= c!1227269 (is-EmptyExpr!16512 (regOne!33536 r!7292)))))

(declare-fun bm!587162 () Bool)

(declare-fun call!587110 () Bool)

(assert (=> bm!587162 (= call!587110 call!587227)))

(declare-fun b!6649560 () Bool)

(declare-fun e!4020773 () Bool)

(assert (=> b!6649560 (= e!4020773 (matchZipper!2524 lt!2423893 (t!379504 s!2326)))))

(declare-fun b!6649561 () Bool)

(declare-fun e!4020775 () Bool)

(assert (=> b!6649561 (= e!4020775 tp_is_empty!42277)))

(declare-fun bm!587163 () Bool)

(declare-fun call!587221 () Unit!159475)

(declare-fun call!587261 () Unit!159475)

(assert (=> bm!587163 (= call!587221 call!587261)))

(declare-fun bm!587164 () Bool)

(declare-fun lemmaConcatAssociative!149 (Regex!16512 Regex!16512 Regex!16512 List!65835) Unit!159475)

(assert (=> bm!587164 (= call!587129 (lemmaConcatAssociative!149 (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292))) (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) lt!2423835) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (regTwo!33536 r!7292))) s!2326))))

(declare-fun call!587262 () (Set Context!11792))

(declare-fun bm!587165 () Bool)

(assert (=> bm!587165 (= call!587262 (derivationStepZipperDown!1760 (ite c!1227264 (regTwo!33537 (regOne!33536 r!7292)) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292))))) (ite (or c!1227264 c!1227273) lt!2423839 (ite c!1227262 (Context!11793 lt!2423897) lt!2423885)) (h!72159 s!2326)))))

(declare-fun lt!2423824 () (Set Context!11792))

(declare-fun lt!2423830 () (Set Context!11792))

(declare-fun c!1227263 () Bool)

(declare-fun bm!587166 () Bool)

(assert (=> bm!587166 (= call!587108 (matchZipper!2524 (ite c!1227264 lt!2423900 (ite c!1227273 z!1189 (ite c!1227266 (ite c!1227272 (ite c!1227263 lt!2423830 lt!2423749) lt!2423824) z!1189))) (ite c!1227264 (t!379504 s!2326) (ite c!1227273 s!2326 (ite c!1227266 (ite c!1227272 (ite c!1227263 s!2326 (_1!36794 lt!2423746)) (_2!36794 lt!2423904)) s!2326)))))))

(declare-fun bm!587167 () Bool)

(assert (=> bm!587167 (= call!587116 call!587174)))

(declare-fun call!587193 () Bool)

(declare-fun lt!2423883 () (Set Context!11792))

(declare-fun bm!587168 () Bool)

(assert (=> bm!587168 (= call!587193 (matchZipper!2524 (ite c!1227264 lt!2423883 (ite c!1227273 lt!2423846 (ite c!1227272 z!1189 lt!2423749))) (ite c!1227264 s!2326 (ite c!1227273 (t!379504 s!2326) (ite c!1227272 s!2326 (_1!36794 lt!2423904))))))))

(declare-fun bm!587169 () Bool)

(assert (=> bm!587169 (= call!587308 call!587129)))

(declare-fun bm!587170 () Bool)

(declare-fun lt!2423850 () List!65835)

(declare-fun matchR!8695 (Regex!16512 List!65835) Bool)

(assert (=> bm!587170 (= call!587188 (matchR!8695 (ite c!1227262 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (Concat!25357 (regTwo!33536 (regOne!33536 r!7292)) lt!2423798)) (ite c!1227272 lt!2423816 (ite c!1227261 lt!2423835 lt!2423816))) (ite c!1227262 s!2326 (ite c!1227272 lt!2423906 (ite c!1227261 lt!2423850 call!587267)))))))

(declare-fun bm!587171 () Bool)

(declare-fun call!587109 () Bool)

(declare-fun call!587195 () Bool)

(assert (=> bm!587171 (= call!587109 call!587195)))

(declare-fun bm!587172 () Bool)

(declare-fun call!587243 () Unit!159475)

(assert (=> bm!587172 (= call!587243 (lemmaConcatPreservesForall!425 lt!2423826 lt!2423909 (ite c!1227272 lambda!372199 lambda!372201)))))

(assert (=> b!6649562 call!587205))

(declare-fun lt!2423792 () Unit!159475)

(declare-fun e!4020798 () Unit!159475)

(assert (=> b!6649562 (= lt!2423792 e!4020798)))

(declare-fun isEmpty!38022 (List!65835) Bool)

(assert (=> b!6649562 (= c!1227263 (isEmpty!38022 (_1!36794 lt!2423817)))))

(declare-fun call!587291 () tuple2!66982)

(assert (=> b!6649562 (= lt!2423817 call!587291)))

(declare-fun call!587258 () Bool)

(assert (=> b!6649562 (= call!587307 call!587258)))

(declare-fun lt!2423841 () Unit!159475)

(declare-fun call!587292 () Unit!159475)

(assert (=> b!6649562 (= lt!2423841 call!587292)))

(assert (=> b!6649562 (= call!587155 call!587225)))

(declare-fun call!587178 () Option!16403)

(assert (=> b!6649562 (= lt!2423740 call!587178)))

(declare-fun lt!2423838 () Unit!159475)

(assert (=> b!6649562 (= lt!2423838 call!587284)))

(declare-fun Unit!159483 () Unit!159475)

(assert (=> b!6649562 (= e!4020801 Unit!159483)))

(declare-fun bm!587173 () Bool)

(assert (=> bm!587173 (= call!587156 (lemmaFindConcatSeparationEquivalentToExists!2581 (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) lt!2423842)) (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (regTwo!33536 r!7292)))) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) s!2326))))))

(declare-fun bm!587174 () Bool)

(assert (=> bm!587174 (= call!587201 call!587132)))

(declare-fun bm!587175 () Bool)

(declare-fun call!587247 () Bool)

(declare-fun call!587159 () Bool)

(assert (=> bm!587175 (= call!587247 call!587159)))

(declare-fun call!587251 () Bool)

(declare-fun lt!2423810 () Regex!16512)

(declare-fun lt!2423825 () Regex!16512)

(declare-fun bm!587176 () Bool)

(assert (=> bm!587176 (= call!587251 (matchRSpec!3613 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292)))))) s!2326))))

(declare-fun bm!587177 () Bool)

(declare-fun call!587230 () Bool)

(declare-fun call!587252 () Bool)

(assert (=> bm!587177 (= call!587230 call!587252)))

(declare-fun bm!587178 () Bool)

(declare-fun call!587122 () Unit!159475)

(assert (=> bm!587178 (= call!587236 call!587122)))

(declare-fun b!6649563 () Bool)

(declare-fun e!4020797 () Unit!159475)

(assert (=> b!6649563 (= e!4020787 e!4020797)))

(assert (=> b!6649563 (= c!1227261 call!587247)))

(declare-fun call!587234 () Bool)

(declare-fun bm!587179 () Bool)

(declare-fun lt!2423888 () Regex!16512)

(assert (=> bm!587179 (= call!587234 (matchR!8695 (ite c!1227268 lt!2423888 (ite c!1227264 lt!2423853 (ite c!1227273 (Concat!25357 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) lt!2423829) (ite c!1227262 lt!2423769 lt!2423842)))) (ite c!1227268 (t!379504 s!2326) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (_1!36794 lt!2423861)))))))

(declare-fun lt!2423795 () Option!16403)

(declare-fun bm!587180 () Bool)

(declare-fun call!587253 () tuple2!66982)

(declare-fun lt!2423761 () Option!16403)

(declare-fun get!22850 (Option!16403) tuple2!66982)

(assert (=> bm!587180 (= call!587253 (get!22850 (ite c!1227272 lt!2423761 lt!2423795)))))

(declare-fun bm!587181 () Bool)

(declare-fun call!587242 () Regex!16512)

(declare-fun lt!2423886 () List!65836)

(assert (=> bm!587181 (= call!587242 (generalisedConcat!2109 (ite c!1227268 (t!379505 (exprs!6396 (h!72161 zl!343))) (ite c!1227264 lt!2423886 (t!379505 (exprs!6396 (h!72161 zl!343)))))))))

(declare-fun b!6649564 () Bool)

(declare-fun e!4020778 () Bool)

(declare-fun call!587190 () Bool)

(assert (=> b!6649564 (= e!4020778 (= lt!2423915 call!587190))))

(declare-fun b!6649565 () Bool)

(declare-fun e!4020788 () Bool)

(declare-fun lt!2423806 () Bool)

(assert (=> b!6649565 (= e!4020788 lt!2423806)))

(declare-fun bm!587182 () Bool)

(assert (=> bm!587182 (= call!587241 call!587131)))

(declare-fun bm!587183 () Bool)

(assert (=> bm!587183 (= call!587310 (lemmaExistCutMatchRandMatchRSpecEquivalent!2119 (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)))))

(declare-fun bm!587184 () Bool)

(assert (=> bm!587184 (= call!587163 call!587240)))

(declare-fun bm!587185 () Bool)

(assert (=> bm!587185 (= call!587125 call!587178)))

(declare-fun bm!587186 () Bool)

(assert (=> bm!587186 (= call!587274 (isDefined!13106 (ite c!1227273 call!587304 (ite c!1227262 call!587165 lt!2423795))))))

(declare-fun bm!587187 () Bool)

(declare-fun call!587152 () Bool)

(assert (=> bm!587187 (= call!587152 call!587209)))

(declare-fun bm!587188 () Bool)

(declare-fun call!587142 () (Set Context!11792))

(assert (=> bm!587188 (= call!587142 call!587311)))

(declare-fun bm!587189 () Bool)

(assert (=> bm!587189 (= call!587131 call!587262)))

(declare-fun bm!587190 () Bool)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1343 ((Set Context!11792) (Set Context!11792) List!65835) Unit!159475)

(assert (=> bm!587190 (= call!587204 (lemmaZipperConcatMatchesSameAsBothZippers!1343 (ite c!1227264 lt!2423900 (ite c!1227273 lt!2423846 lt!2423772)) (ite c!1227264 lt!2423893 (ite c!1227273 lt!2423804 lt!2423893)) (t!379504 s!2326)))))

(declare-fun b!6649566 () Bool)

(declare-fun res!2724720 () Bool)

(assert (=> b!6649566 (=> res!2724720 e!4020769)))

(declare-fun zipperDepth!413 (List!65837) Int)

(assert (=> b!6649566 (= res!2724720 (< (zipperDepth!413 zl!343) (zipperDepth!413 (Cons!65713 lt!2423839 Nil!65713))))))

(declare-fun b!6649567 () Bool)

(declare-fun Unit!159484 () Unit!159475)

(assert (=> b!6649567 (= e!4020798 Unit!159484)))

(assert (=> b!6649567 (= lt!2423830 (set.insert lt!2423839 (as set.empty (Set Context!11792))))))

(declare-fun lt!2423814 () Unit!159475)

(assert (=> b!6649567 (= lt!2423814 call!587221)))

(declare-fun call!587280 () (Set Context!11792))

(declare-fun call!587158 () (Set Context!11792))

(assert (=> b!6649567 (= call!587280 call!587158)))

(declare-fun lt!2423777 () Regex!16512)

(assert (=> b!6649567 (= lt!2423777 call!587214)))

(declare-fun lt!2423759 () Unit!159475)

(declare-fun call!587254 () Unit!159475)

(assert (=> b!6649567 (= lt!2423759 call!587254)))

(declare-fun res!2724714 () Bool)

(declare-fun call!587298 () Bool)

(declare-fun call!587255 () Bool)

(assert (=> b!6649567 (= res!2724714 (= call!587298 call!587255))))

(declare-fun e!4020786 () Bool)

(assert (=> b!6649567 (=> (not res!2724714) (not e!4020786))))

(assert (=> b!6649567 e!4020786))

(declare-fun bm!587191 () Bool)

(declare-fun lt!2423868 () (Set Context!11792))

(assert (=> bm!587191 (= call!587280 (flatMap!2017 (ite c!1227272 lt!2423830 lt!2423868) (ite c!1227272 lambda!372185 lambda!372185)))))

(declare-fun bm!587192 () Bool)

(assert (=> bm!587192 (= call!587127 call!587150)))

(declare-fun bm!587193 () Bool)

(assert (=> bm!587193 (= call!587250 call!587156)))

(declare-fun b!6649568 () Bool)

(assert (=> b!6649568 (= e!4020768 call!587159)))

(declare-fun b!6649569 () Bool)

(declare-fun e!4020804 () Unit!159475)

(declare-fun Unit!159485 () Unit!159475)

(assert (=> b!6649569 (= e!4020804 Unit!159485)))

(declare-fun bm!587194 () Bool)

(declare-fun call!587111 () Unit!159475)

(declare-fun call!587196 () Unit!159475)

(assert (=> bm!587194 (= call!587111 call!587196)))

(declare-fun bm!587195 () Bool)

(declare-fun call!587285 () (Set Context!11792))

(assert (=> bm!587195 (= call!587285 call!587186)))

(declare-fun bm!587196 () Bool)

(assert (=> bm!587196 (= call!587292 call!587248)))

(declare-fun b!6649570 () Bool)

(declare-fun e!4020789 () Bool)

(assert (=> b!6649570 e!4020789))

(declare-fun res!2724726 () Bool)

(assert (=> b!6649570 (=> (not res!2724726) (not e!4020789))))

(declare-fun call!587279 () Bool)

(assert (=> b!6649570 (= res!2724726 (= call!587246 call!587279))))

(declare-fun lt!2423920 () Unit!159475)

(assert (=> b!6649570 (= lt!2423920 call!587135)))

(assert (=> b!6649570 (= call!587230 call!587121)))

(declare-fun lt!2423895 () Unit!159475)

(assert (=> b!6649570 (= lt!2423895 call!587171)))

(declare-fun call!587198 () Bool)

(assert (=> b!6649570 (not call!587198)))

(declare-fun lt!2423797 () Unit!159475)

(declare-fun call!587299 () Unit!159475)

(assert (=> b!6649570 (= lt!2423797 call!587299)))

(declare-fun Unit!159486 () Unit!159475)

(assert (=> b!6649570 (= e!4020776 Unit!159486)))

(declare-fun call!587294 () Bool)

(declare-fun bm!587197 () Bool)

(declare-fun lt!2423788 () Regex!16512)

(assert (=> bm!587197 (= call!587294 (matchRSpec!3613 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)) (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))))))

(declare-fun b!6649571 () Bool)

(declare-fun e!4020802 () Bool)

(assert (=> b!6649571 (= e!4020802 lt!2423806)))

(declare-fun bm!587198 () Bool)

(assert (=> bm!587198 (= call!587118 call!587151)))

(declare-fun bm!587199 () Bool)

(assert (=> bm!587199 (= call!587300 (lemmaExistCutMatchRandMatchRSpecEquivalent!2119 (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861)))))))

(declare-fun bm!587200 () Bool)

(assert (=> bm!587200 (= call!587106 (derivationStepZipperUp!1686 (ite c!1227262 lt!2423914 lt!2423750) (h!72159 s!2326)))))

(declare-fun bm!587201 () Bool)

(assert (=> bm!587201 (= call!587120 (++!14666 (ite c!1227272 (_1!36794 lt!2423746) (ite c!1227261 (_1!36794 lt!2423743) Nil!65711)) (ite c!1227272 (_2!36794 lt!2423746) (ite c!1227261 (_2!36794 lt!2423743) s!2326))))))

(declare-fun bm!587202 () Bool)

(declare-fun call!587126 () Unit!159475)

(declare-fun call!587277 () Unit!159475)

(assert (=> bm!587202 (= call!587126 call!587277)))

(declare-fun b!6649572 () Bool)

(declare-fun res!2724709 () Bool)

(assert (=> b!6649572 (=> res!2724709 e!4020806)))

(declare-fun isEmpty!38023 (List!65836) Bool)

(assert (=> b!6649572 (= res!2724709 (isEmpty!38023 (t!379505 (exprs!6396 (h!72161 zl!343)))))))

(declare-fun bm!587203 () Bool)

(declare-fun call!587228 () Bool)

(assert (=> bm!587203 (= call!587228 call!587217)))

(declare-fun bm!587204 () Bool)

(assert (=> bm!587204 (= call!587229 call!587251)))

(declare-fun res!2724728 () Bool)

(assert (=> start!648968 (=> (not res!2724728) (not e!4020777))))

(declare-fun validRegex!8248 (Regex!16512) Bool)

(assert (=> start!648968 (= res!2724728 (validRegex!8248 r!7292))))

(assert (=> start!648968 e!4020777))

(assert (=> start!648968 e!4020775))

(declare-fun condSetEmpty!45450 () Bool)

(assert (=> start!648968 (= condSetEmpty!45450 (= z!1189 (as set.empty (Set Context!11792))))))

(assert (=> start!648968 setRes!45450))

(assert (=> start!648968 e!4020800))

(assert (=> start!648968 e!4020793))

(declare-fun bm!587205 () Bool)

(assert (=> bm!587205 (= call!587205 call!587119)))

(declare-fun bm!587206 () Bool)

(assert (=> bm!587206 (= call!587306 call!587152)))

(declare-fun b!6649573 () Bool)

(declare-fun Unit!159487 () Unit!159475)

(assert (=> b!6649573 (= e!4020792 Unit!159487)))

(declare-fun lt!2423739 () Unit!159475)

(assert (=> b!6649573 (= lt!2423739 (lemmaZipperConcatMatchesSameAsBothZippers!1343 lt!2423772 lt!2423893 (t!379504 s!2326)))))

(declare-fun res!2724722 () Bool)

(assert (=> b!6649573 (= res!2724722 (matchZipper!2524 lt!2423772 (t!379504 s!2326)))))

(assert (=> b!6649573 (=> res!2724722 e!4020773)))

(assert (=> b!6649573 (= (matchZipper!2524 (set.union lt!2423772 lt!2423893) (t!379504 s!2326)) e!4020773)))

(declare-fun bm!587207 () Bool)

(declare-fun lt!2423879 () (Set Context!11792))

(declare-fun call!587264 () Unit!159475)

(declare-fun lt!2423823 () Context!11792)

(declare-fun lt!2423849 () Regex!16512)

(declare-fun lt!2423935 () Regex!16512)

(declare-fun theoremZipperRegexEquiv!908 ((Set Context!11792) List!65837 Regex!16512 List!65835) Unit!159475)

(assert (=> bm!587207 (= call!587264 (theoremZipperRegexEquiv!908 (ite c!1227264 lt!2423879 (ite c!1227273 lt!2423939 (ite c!1227266 (ite (or c!1227272 c!1227261) lt!2423824 lt!2423868) lt!2423867))) (ite c!1227264 (Cons!65713 lt!2423823 Nil!65713) (ite c!1227273 (Cons!65713 lt!2423923 Nil!65713) (ite (and c!1227266 (or c!1227272 c!1227261)) (Cons!65713 lt!2423885 Nil!65713) (Cons!65713 lt!2423839 Nil!65713)))) (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423854 (ite c!1227266 (ite (or c!1227272 c!1227261) lt!2423816 lt!2423849) lt!2423935))) (ite (or c!1227264 c!1227273) s!2326 (ite c!1227266 (ite c!1227272 lt!2423906 (ite c!1227261 (_2!36794 lt!2423904) s!2326)) s!2326))))))

(declare-fun bm!587208 () Bool)

(assert (=> bm!587208 (= call!587278 call!587117)))

(declare-fun bm!587209 () Bool)

(declare-fun call!587146 () Unit!159475)

(assert (=> bm!587209 (= call!587146 call!587194)))

(declare-fun bm!587210 () Bool)

(declare-fun call!587276 () Bool)

(assert (=> bm!587210 (= call!587276 call!587188)))

(declare-fun b!6649574 () Bool)

(declare-fun call!587239 () Bool)

(assert (=> b!6649574 (= e!4020767 (= lt!2423915 call!587239))))

(declare-fun bm!587211 () Bool)

(assert (=> bm!587211 (= call!587237 call!587136)))

(declare-fun b!6649575 () Bool)

(declare-fun e!4020805 () Unit!159475)

(assert (=> b!6649575 (= e!4020781 e!4020805)))

(assert (=> b!6649575 (= c!1227264 (is-Union!16512 (regOne!33536 r!7292)))))

(declare-fun call!587107 () Bool)

(declare-fun bm!587212 () Bool)

(assert (=> bm!587212 (= call!587107 (matchR!8695 (ite c!1227264 lt!2423825 (ite c!1227262 (Concat!25357 (regOne!33536 r!7292) lt!2423798) (ite c!1227266 lt!2423810 (regOne!33536 r!7292)))) s!2326))))

(declare-fun bm!587213 () Bool)

(assert (=> bm!587213 (= call!587162 (Exists!3582 (ite c!1227273 lambda!372188 (ite c!1227272 lambda!372197 (ite c!1227261 lambda!372204 lambda!372207)))))))

(declare-fun bm!587214 () Bool)

(declare-fun call!587153 () Bool)

(assert (=> bm!587214 (= call!587153 (nullable!6505 (ite c!1227264 (regTwo!33537 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292)))))))

(declare-fun Unit!159488 () Unit!159475)

(assert (=> b!6649576 (= e!4020798 Unit!159488)))

(declare-fun lt!2423751 () Unit!159475)

(assert (=> b!6649576 (= lt!2423751 call!587163)))

(declare-fun call!587303 () Bool)

(assert (=> b!6649576 (= call!587298 call!587303)))

(declare-fun lt!2423882 () Unit!159475)

(assert (=> b!6649576 (= lt!2423882 call!587302)))

(declare-fun call!587268 () Option!16403)

(assert (=> b!6649576 (= lt!2423761 call!587268)))

(declare-fun call!587112 () Bool)

(assert (=> b!6649576 (= call!587289 call!587112)))

(declare-fun lt!2423845 () Unit!159475)

(assert (=> b!6649576 (= lt!2423845 call!587277)))

(declare-fun call!587282 () Bool)

(assert (=> b!6649576 (= call!587282 call!587227)))

(declare-fun lt!2423913 () Unit!159475)

(declare-fun call!587260 () Unit!159475)

(assert (=> b!6649576 (= lt!2423913 call!587260)))

(assert (=> b!6649576 (= call!587217 call!587195)))

(assert (=> b!6649576 (= lt!2423746 call!587253)))

(declare-fun lt!2423822 () Unit!159475)

(assert (=> b!6649576 (= lt!2423822 call!587286)))

(declare-fun lt!2423836 () List!65835)

(assert (=> b!6649576 (= lt!2423836 call!587120)))

(assert (=> b!6649576 (= lt!2423906 call!587238)))

(declare-fun lt!2423857 () List!65835)

(declare-fun call!587113 () List!65835)

(assert (=> b!6649576 (= lt!2423857 call!587113)))

(declare-fun lt!2423866 () List!65835)

(assert (=> b!6649576 (= lt!2423866 call!587179)))

(assert (=> b!6649576 (= lt!2423857 lt!2423866)))

(declare-fun lt!2423738 () Unit!159475)

(assert (=> b!6649576 (= lt!2423738 call!587105)))

(assert (=> b!6649576 call!587201))

(declare-fun lt!2423863 () Unit!159475)

(assert (=> b!6649576 (= lt!2423863 call!587196)))

(assert (=> b!6649576 call!587276))

(declare-fun lt!2423760 () Unit!159475)

(assert (=> b!6649576 (= lt!2423760 call!587254)))

(declare-fun call!587215 () Bool)

(assert (=> b!6649576 (= call!587215 call!587255)))

(declare-fun lt!2423805 () Unit!159475)

(assert (=> b!6649576 (= lt!2423805 call!587180)))

(assert (=> b!6649576 call!587306))

(declare-fun lt!2423758 () Unit!159475)

(declare-fun call!587166 () Unit!159475)

(assert (=> b!6649576 (= lt!2423758 call!587166)))

(declare-fun lt!2423781 () Unit!159475)

(assert (=> b!6649576 (= lt!2423781 call!587206)))

(assert (=> b!6649576 call!587296))

(declare-fun lt!2423775 () Unit!159475)

(assert (=> b!6649576 (= lt!2423775 call!587168)))

(declare-fun res!2724713 () Bool)

(declare-fun call!587185 () Bool)

(assert (=> b!6649576 (= res!2724713 call!587185)))

(assert (=> b!6649576 (=> (not res!2724713) (not e!4020788))))

(assert (=> b!6649576 e!4020788))

(declare-fun lt!2423800 () Unit!159475)

(assert (=> b!6649576 (= lt!2423800 call!587243)))

(assert (=> b!6649576 call!587275))

(declare-fun bm!587215 () Bool)

(declare-fun lemmaEmptyZipperMatchesNothing!105 ((Set Context!11792) List!65835) Unit!159475)

(assert (=> bm!587215 (= call!587299 (lemmaEmptyZipperMatchesNothing!105 lt!2423772 (t!379504 s!2326)))))

(declare-fun bm!587216 () Bool)

(assert (=> bm!587216 (= call!587200 (Exists!3582 (ite c!1227273 lambda!372187 (ite c!1227262 lambda!372190 (ite c!1227272 lambda!372198 (ite c!1227261 lambda!372203 lambda!372207))))))))

(declare-fun lt!2423892 () List!65835)

(declare-fun call!587192 () Bool)

(declare-fun bm!587217 () Bool)

(assert (=> bm!587217 (= call!587192 (matchR!8695 (ite c!1227272 (ite c!1227263 lt!2423777 lt!2423835) lt!2423816) (ite c!1227272 (ite c!1227263 s!2326 (_1!36794 lt!2423817)) lt!2423892)))))

(declare-fun bm!587218 () Bool)

(assert (=> bm!587218 (= call!587261 (lemmaFlatMapOnSingletonSet!1543 (ite c!1227264 lt!2423883 (ite c!1227272 lt!2423830 lt!2423868)) (ite c!1227264 lt!2423762 lt!2423839) (ite c!1227264 lambda!372185 (ite c!1227272 lambda!372185 lambda!372185))))))

(declare-fun b!6649577 () Bool)

(declare-fun res!2724730 () Bool)

(assert (=> b!6649577 (=> res!2724730 e!4020780)))

(assert (=> b!6649577 (= res!2724730 (not (is-Cons!65712 (exprs!6396 (h!72161 zl!343)))))))

(declare-fun b!6649578 () Bool)

(assert (=> b!6649578 e!4020778))

(declare-fun res!2724716 () Bool)

(assert (=> b!6649578 (=> (not res!2724716) (not e!4020778))))

(assert (=> b!6649578 (= res!2724716 (= call!587246 call!587152))))

(declare-fun lt!2423910 () Unit!159475)

(assert (=> b!6649578 (= lt!2423910 call!587146)))

(assert (=> b!6649578 (= lt!2423935 call!587309)))

(declare-fun call!587138 () Bool)

(assert (=> b!6649578 (= call!587198 call!587138)))

(declare-fun lt!2423812 () Unit!159475)

(assert (=> b!6649578 (= lt!2423812 call!587124)))

(assert (=> b!6649578 (= call!587142 call!587285)))

(declare-fun lt!2423832 () Unit!159475)

(assert (=> b!6649578 (= lt!2423832 call!587172)))

(assert (=> b!6649578 (= lt!2423867 (set.insert lt!2423839 (as set.empty (Set Context!11792))))))

(declare-fun call!587134 () Bool)

(assert (=> b!6649578 (= call!587134 call!587121)))

(declare-fun lt!2423911 () Unit!159475)

(assert (=> b!6649578 (= lt!2423911 call!587135)))

(assert (=> b!6649578 (= call!587230 call!587279)))

(declare-fun lt!2423821 () Unit!159475)

(assert (=> b!6649578 (= lt!2423821 call!587171)))

(assert (=> b!6649578 (not call!587247)))

(declare-fun lt!2423896 () Unit!159475)

(assert (=> b!6649578 (= lt!2423896 call!587299)))

(declare-fun Unit!159489 () Unit!159475)

(assert (=> b!6649578 (= e!4020776 Unit!159489)))

(declare-fun bm!587219 () Bool)

(assert (=> bm!587219 (= call!587309 call!587118)))

(declare-fun bm!587220 () Bool)

(assert (=> bm!587220 (= call!587224 (flatMap!2017 (ite c!1227264 lt!2423883 (ite c!1227262 lt!2423765 (ite c!1227266 lt!2423824 lt!2423867))) (ite c!1227264 lambda!372185 (ite c!1227262 lambda!372185 (ite c!1227266 lambda!372185 lambda!372185)))))))

(declare-fun bm!587221 () Bool)

(declare-fun call!587164 () Bool)

(assert (=> bm!587221 (= call!587164 call!587276)))

(declare-fun bm!587222 () Bool)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!233 (Context!11792 Context!11792 List!65835 List!65835) Unit!159475)

(assert (=> bm!587222 (= call!587166 (lemmaConcatenateContextMatchesConcatOfStrings!233 lt!2423750 lt!2423885 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423904)) (ite c!1227272 lt!2423906 (_2!36794 lt!2423904))))))

(declare-fun bm!587223 () Bool)

(assert (=> bm!587223 (= call!587283 (lemmaZipperConcatMatchesSameAsBothZippers!1343 (ite c!1227264 lt!2423844 lt!2423846) (ite c!1227264 lt!2423900 lt!2423870) (t!379504 s!2326)))))

(declare-fun b!6649579 () Bool)

(declare-fun e!4020791 () Bool)

(assert (=> b!6649579 (= e!4020791 call!587153)))

(declare-fun b!6649580 () Bool)

(declare-fun tp!1830719 () Bool)

(assert (=> b!6649580 (= e!4020775 tp!1830719)))

(declare-fun bm!587224 () Bool)

(declare-fun call!587149 () Regex!16512)

(assert (=> bm!587224 (= call!587149 call!587242)))

(declare-fun bm!587225 () Bool)

(assert (=> bm!587225 (= call!587197 (Exists!3582 (ite c!1227273 lambda!372188 (ite c!1227262 lambda!372191 (ite c!1227272 lambda!372194 (ite c!1227261 lambda!372202 lambda!372209))))))))

(declare-fun bm!587226 () Bool)

(assert (=> bm!587226 (= call!587134 call!587293)))

(declare-fun b!6649581 () Bool)

(assert (=> b!6649581 (= e!4020769 (inv!84528 lt!2423839))))

(declare-fun bm!587227 () Bool)

(assert (=> bm!587227 (= call!587259 call!587207)))

(declare-fun bm!587228 () Bool)

(assert (=> bm!587228 (= call!587305 (derivationStepZipperDown!1760 (ite c!1227264 (regOne!33537 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (ite c!1227264 lt!2423839 lt!2423923) (h!72159 s!2326)))))

(declare-fun b!6649582 () Bool)

(declare-fun e!4020770 () Bool)

(assert (=> b!6649582 (= e!4020770 (= lt!2423915 call!587130))))

(declare-fun bm!587229 () Bool)

(assert (=> bm!587229 (= call!587266 call!587141)))

(declare-fun bm!587230 () Bool)

(assert (=> bm!587230 (= call!587268 call!587187)))

(declare-fun b!6649583 () Bool)

(declare-fun e!4020796 () Bool)

(declare-fun lt!2423940 () Bool)

(assert (=> b!6649583 (= e!4020796 (or (not lt!2423915) lt!2423940))))

(declare-fun bm!587231 () Bool)

(assert (=> bm!587231 (= call!587195 call!587245)))

(declare-fun b!6649584 () Bool)

(declare-fun Unit!159490 () Unit!159475)

(assert (=> b!6649584 (= e!4020803 Unit!159490)))

(declare-fun b!6649585 () Bool)

(declare-fun Unit!159491 () Unit!159475)

(assert (=> b!6649585 (= e!4020781 Unit!159491)))

(assert (=> b!6649585 (= lt!2423916 (set.insert lt!2423839 (as set.empty (Set Context!11792))))))

(assert (=> b!6649585 (= lt!2423888 call!587242)))

(declare-fun lt!2423789 () Unit!159475)

(declare-fun call!587244 () Unit!159475)

(assert (=> b!6649585 (= lt!2423789 call!587244)))

(assert (=> b!6649585 (= call!587234 call!587273)))

(declare-fun bm!587232 () Bool)

(assert (=> bm!587232 (= call!587158 (derivationStepZipperUp!1686 lt!2423839 (h!72159 s!2326)))))

(declare-fun bm!587233 () Bool)

(assert (=> bm!587233 (= call!587187 call!587184)))

(declare-fun bm!587234 () Bool)

(assert (=> bm!587234 (= call!587159 call!587182)))

(assert (=> b!6649586 e!4020790))

(declare-fun res!2724729 () Bool)

(assert (=> b!6649586 (=> (not res!2724729) (not e!4020790))))

(assert (=> b!6649586 (= res!2724729 call!587164)))

(declare-fun lt!2423912 () Unit!159475)

(assert (=> b!6649586 (= lt!2423912 call!587111)))

(declare-fun call!587137 () Bool)

(assert (=> b!6649586 (= call!587223 call!587137)))

(declare-fun lt!2423876 () Unit!159475)

(assert (=> b!6649586 (= lt!2423876 call!587126)))

(assert (=> b!6649586 (= call!587109 call!587228)))

(declare-fun lt!2423898 () Unit!159475)

(declare-fun call!587211 () Unit!159475)

(assert (=> b!6649586 (= lt!2423898 call!587211)))

(declare-fun call!587140 () Bool)

(assert (=> b!6649586 (= call!587140 call!587110)))

(declare-fun lt!2423837 () Unit!159475)

(assert (=> b!6649586 (= lt!2423837 call!587249)))

(declare-fun call!587114 () Bool)

(declare-fun call!587173 () Bool)

(assert (=> b!6649586 (= call!587114 call!587173)))

(declare-fun lt!2423856 () Unit!159475)

(assert (=> b!6649586 (= lt!2423856 call!587203)))

(declare-fun call!587167 () Bool)

(assert (=> b!6649586 (= call!587216 call!587167)))

(declare-fun lt!2423747 () Unit!159475)

(assert (=> b!6649586 (= lt!2423747 call!587176)))

(assert (=> b!6649586 (= lt!2423849 call!587214)))

(assert (=> b!6649586 (= call!587280 call!587158)))

(declare-fun lt!2423880 () Unit!159475)

(assert (=> b!6649586 (= lt!2423880 call!587221)))

(assert (=> b!6649586 (= lt!2423868 (set.insert lt!2423839 (as set.empty (Set Context!11792))))))

(declare-fun Unit!159492 () Unit!159475)

(assert (=> b!6649586 (= e!4020797 Unit!159492)))

(declare-fun bm!587235 () Bool)

(declare-fun call!587148 () Unit!159475)

(assert (=> bm!587235 (= call!587191 call!587148)))

(declare-fun bm!587236 () Bool)

(assert (=> bm!587236 (= call!587114 call!587215)))

(declare-fun bm!587237 () Bool)

(assert (=> bm!587237 (= call!587157 (Exists!3582 (ite c!1227273 lambda!372189 (ite c!1227262 lambda!372193 (ite c!1227272 lambda!372196 lambda!372204)))))))

(declare-fun bm!587238 () Bool)

(assert (=> bm!587238 (= call!587194 call!587264)))

(declare-fun b!6649587 () Bool)

(declare-fun res!2724734 () Bool)

(assert (=> b!6649587 (=> res!2724734 e!4020769)))

(declare-fun regexDepth!375 (Regex!16512) Int)

(assert (=> b!6649587 (= res!2724734 (< (regexDepth!375 r!7292) (regexDepth!375 (generalisedConcat!2109 (t!379505 (exprs!6396 (h!72161 zl!343)))))))))

(declare-fun bm!587239 () Bool)

(assert (=> bm!587239 (= call!587132 call!587116)))

(declare-fun bm!587240 () Bool)

(assert (=> bm!587240 (= call!587301 call!587208)))

(declare-fun b!6649588 () Bool)

(assert (=> b!6649588 (= e!4020789 (= lt!2423915 call!587190))))

(declare-fun lt!2423930 () Option!16403)

(declare-fun bm!587241 () Bool)

(assert (=> bm!587241 (= call!587161 (isDefined!13106 (ite c!1227273 call!587184 (ite c!1227272 lt!2423761 lt!2423930))))))

(declare-fun call!587123 () (Set Context!11792))

(declare-fun bm!587242 () Bool)

(assert (=> bm!587242 (= call!587123 (flatMap!2017 (ite c!1227264 lt!2423879 (ite c!1227273 lt!2423939 lt!2423749)) (ite c!1227264 lambda!372185 (ite c!1227273 lambda!372185 lambda!372185))))))

(declare-fun bm!587243 () Bool)

(assert (=> bm!587243 (= call!587180 call!587146)))

(declare-fun bm!587244 () Bool)

(assert (=> bm!587244 (= call!587258 call!587278)))

(declare-fun bm!587245 () Bool)

(assert (=> bm!587245 (= call!587160 call!587239)))

(declare-fun bm!587246 () Bool)

(assert (=> bm!587246 (= call!587147 call!587123)))

(declare-fun bm!587247 () Bool)

(declare-fun call!587226 () List!65836)

(declare-fun ++!14667 (List!65836 List!65836) List!65836)

(assert (=> bm!587247 (= call!587226 (++!14667 lt!2423826 lt!2423909))))

(declare-fun bm!587248 () Bool)

(assert (=> bm!587248 (= call!587211 call!587292)))

(declare-fun bm!587249 () Bool)

(assert (=> bm!587249 (= call!587290 call!587181)))

(declare-fun call!587169 () Unit!159475)

(declare-fun lt!2423847 () Regex!16512)

(declare-fun bm!587250 () Bool)

(assert (=> bm!587250 (= call!587169 (mainMatchTheorem!3613 (ite c!1227264 lt!2423847 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423878 lt!2423835))))) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 s!2326 Nil!65711)))))))

(declare-fun bm!587251 () Bool)

(declare-fun call!587220 () Bool)

(assert (=> bm!587251 (= call!587303 call!587220)))

(declare-fun lt!2423793 () Context!11792)

(declare-fun bm!587252 () Bool)

(assert (=> bm!587252 (= call!587144 (derivationStepZipperUp!1686 (ite c!1227264 lt!2423823 (ite c!1227273 lt!2423852 (ite c!1227266 lt!2423793 lt!2423839))) (h!72159 s!2326)))))

(declare-fun bm!587253 () Bool)

(assert (=> bm!587253 (= call!587130 (matchZipper!2524 (ite c!1227264 z!1189 (set.union lt!2423846 lt!2423870)) (ite c!1227264 s!2326 (t!379504 s!2326))))))

(declare-fun bm!587254 () Bool)

(assert (=> bm!587254 (= call!587167 call!587296)))

(declare-fun bm!587255 () Bool)

(assert (=> bm!587255 (= call!587173 call!587294)))

(declare-fun bm!587256 () Bool)

(assert (=> bm!587256 (= call!587174 (matchR!8695 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423938 (ite c!1227266 (ite c!1227272 lt!2423835 (ite c!1227261 (reg!16841 (regOne!33536 r!7292)) lt!2423849)) (ite c!1227269 lt!2423935 (regTwo!33536 r!7292))))) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227266 (ite c!1227272 lt!2423836 (ite c!1227261 (_1!36794 lt!2423904) s!2326)) s!2326))))))

(declare-fun lt!2423808 () (Set Context!11792))

(declare-fun bm!587257 () Bool)

(assert (=> bm!587257 (= call!587213 (flatMap!2017 (ite c!1227273 lt!2423802 lt!2423808) (ite c!1227273 lambda!372185 lambda!372185)))))

(declare-fun bm!587258 () Bool)

(assert (=> bm!587258 (= call!587178 call!587165)))

(declare-fun bm!587259 () Bool)

(assert (=> bm!587259 (= call!587112 call!587202)))

(declare-fun bm!587260 () Bool)

(assert (=> bm!587260 (= call!587248 call!587310)))

(declare-fun bm!587261 () Bool)

(assert (=> bm!587261 (= call!587198 call!587160)))

(declare-fun b!6649589 () Bool)

(assert (=> b!6649589 (= e!4020786 call!587275)))

(declare-fun bm!587262 () Bool)

(assert (=> bm!587262 (= call!587256 call!587218)))

(declare-fun bm!587263 () Bool)

(assert (=> bm!587263 (= call!587219 call!587269)))

(declare-fun bm!587264 () Bool)

(assert (=> bm!587264 (= call!587148 (lemmaFlatMapOnSingletonSet!1543 (ite c!1227264 lt!2423879 (ite c!1227273 lt!2423802 lt!2423824)) (ite c!1227264 lt!2423823 (ite c!1227273 lt!2423852 lt!2423885)) (ite c!1227264 lambda!372185 (ite c!1227273 lambda!372185 lambda!372185))))))

(declare-fun bm!587265 () Bool)

(assert (=> bm!587265 (= call!587199 call!587149)))

(declare-fun bm!587266 () Bool)

(assert (=> bm!587266 (= call!587202 call!587157)))

(declare-fun bm!587267 () Bool)

(assert (=> bm!587267 (= call!587282 call!587154)))

(declare-fun bm!587268 () Bool)

(assert (=> bm!587268 (= call!587119 call!587193)))

(declare-fun bm!587269 () Bool)

(assert (=> bm!587269 (= call!587115 (matchR!8695 (ite c!1227264 lt!2423847 (ite c!1227273 lt!2423854 (ite c!1227272 lt!2423810 lt!2423816))) (ite (or c!1227264 c!1227273) s!2326 (ite c!1227272 lt!2423866 (_2!36794 lt!2423904)))))))

(declare-fun bm!587270 () Bool)

(assert (=> bm!587270 (= call!587291 (get!22850 (ite c!1227272 lt!2423740 lt!2423930)))))

(declare-fun bm!587271 () Bool)

(assert (=> bm!587271 (= call!587298 call!587192)))

(declare-fun b!6649590 () Bool)

(declare-fun res!2724717 () Bool)

(assert (=> b!6649590 (=> (not res!2724717) (not e!4020777))))

(declare-fun unfocusZipper!2254 (List!65837) Regex!16512)

(assert (=> b!6649590 (= res!2724717 (= r!7292 (unfocusZipper!2254 zl!343)))))

(declare-fun bm!587272 () Bool)

(assert (=> bm!587272 (= call!587220 call!587290)))

(declare-fun bm!587273 () Bool)

(assert (=> bm!587273 (= call!587182 (matchZipper!2524 (ite c!1227264 (set.union lt!2423900 lt!2423893) (ite c!1227273 lt!2423804 lt!2423772)) (t!379504 s!2326)))))

(declare-fun bm!587274 () Bool)

(assert (=> bm!587274 (= call!587145 call!587300)))

(declare-fun b!6649591 () Bool)

(declare-fun res!2724718 () Bool)

(assert (=> b!6649591 (=> res!2724718 e!4020780)))

(declare-fun generalisedUnion!2356 (List!65836) Regex!16512)

(declare-fun unfocusZipperList!1933 (List!65837) List!65836)

(assert (=> b!6649591 (= res!2724718 (not (= r!7292 (generalisedUnion!2356 (unfocusZipperList!1933 zl!343)))))))

(declare-fun b!6649592 () Bool)

(assert (=> b!6649592 (= c!1227273 e!4020791)))

(declare-fun res!2724705 () Bool)

(assert (=> b!6649592 (=> (not res!2724705) (not e!4020791))))

(assert (=> b!6649592 (= res!2724705 (is-Concat!25357 (regOne!33536 r!7292)))))

(assert (=> b!6649592 (= e!4020805 e!4020779)))

(declare-fun bm!587275 () Bool)

(assert (=> bm!587275 (= call!587244 (theoremZipperRegexEquiv!908 (ite c!1227268 lt!2423916 (ite c!1227264 lt!2423883 (ite c!1227273 lt!2423802 (ite c!1227262 lt!2423765 (ite (and c!1227272 c!1227263) lt!2423830 lt!2423749))))) (ite c!1227268 (Cons!65713 lt!2423839 Nil!65713) (ite c!1227264 (Cons!65713 lt!2423762 Nil!65713) (ite c!1227273 (Cons!65713 lt!2423852 Nil!65713) (ite c!1227262 (Cons!65713 lt!2423914 Nil!65713) (ite (and c!1227272 c!1227263) (Cons!65713 lt!2423839 Nil!65713) (Cons!65713 lt!2423750 Nil!65713)))))) (ite c!1227268 lt!2423888 (ite c!1227264 lt!2423847 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite (and c!1227272 c!1227263) lt!2423777 (reg!16841 (regOne!33536 r!7292))))))) (ite c!1227268 (t!379504 s!2326) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite c!1227272 (ite c!1227263 s!2326 (_1!36794 lt!2423746)) (_1!36794 lt!2423904))))))))

(declare-fun bm!587276 () Bool)

(assert (=> bm!587276 (= call!587208 call!587229)))

(declare-fun lt!2423858 () List!65836)

(declare-fun bm!587277 () Bool)

(assert (=> bm!587277 (= call!587133 (generalisedConcat!2109 (ite c!1227264 lt!2423858 (ite c!1227273 lt!2423855 lt!2423768))))))

(declare-fun bm!587278 () Bool)

(assert (=> bm!587278 (= call!587235 call!587107)))

(declare-fun b!6649593 () Bool)

(declare-fun tp!1830711 () Bool)

(declare-fun tp!1830717 () Bool)

(assert (=> b!6649593 (= e!4020775 (and tp!1830711 tp!1830717))))

(declare-fun bm!587279 () Bool)

(declare-fun lt!2423922 () List!65835)

(declare-fun lt!2423887 () List!65836)

(assert (=> bm!587279 (= call!587271 (matchZipper!2524 (ite c!1227264 (set.union lt!2423844 lt!2423893) (ite c!1227273 lt!2423802 (ite c!1227262 z!1189 (ite c!1227266 (ite c!1227272 (set.insert (Context!11793 call!587226) (as set.empty (Set Context!11792))) (ite c!1227261 (set.insert (Context!11793 lt!2423887) (as set.empty (Set Context!11792))) lt!2423868)) (ite c!1227269 (set.union lt!2423772 lt!2423893) lt!2423772))))) (ite c!1227264 (t!379504 s!2326) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227266 (ite c!1227272 lt!2423866 (ite c!1227261 lt!2423922 s!2326)) (t!379504 s!2326))))))))

(declare-fun bm!587280 () Bool)

(assert (=> bm!587280 (= call!587190 call!587259)))

(declare-fun bm!587281 () Bool)

(assert (=> bm!587281 (= call!587140 call!587155)))

(declare-fun bm!587282 () Bool)

(assert (=> bm!587282 (= call!587265 call!587169)))

(declare-fun bm!587283 () Bool)

(assert (=> bm!587283 (= call!587113 (++!14666 (ite c!1227272 lt!2423836 (_1!36794 lt!2423904)) (ite c!1227272 (_2!36794 lt!2423817) (_2!36794 lt!2423904))))))

(declare-fun b!6649594 () Bool)

(declare-fun tp!1830713 () Bool)

(assert (=> b!6649594 (= e!4020772 tp!1830713)))

(declare-fun bm!587284 () Bool)

(assert (=> bm!587284 (= call!587239 call!587281)))

(declare-fun bm!587285 () Bool)

(assert (=> bm!587285 (= call!587138 call!587237)))

(assert (=> b!6649595 e!4020794))

(declare-fun res!2724724 () Bool)

(assert (=> b!6649595 (=> (not res!2724724) (not e!4020794))))

(assert (=> b!6649595 (= res!2724724 call!587192)))

(declare-fun lt!2423917 () Unit!159475)

(assert (=> b!6649595 (= lt!2423917 call!587111)))

(assert (=> b!6649595 call!587164))

(declare-fun lt!2423937 () Unit!159475)

(assert (=> b!6649595 (= lt!2423937 call!587105)))

(assert (=> b!6649595 (= lt!2423892 call!587179)))

(assert (=> b!6649595 (= lt!2423892 (++!14666 lt!2423850 (_2!36794 lt!2423861)))))

(assert (=> b!6649595 (= lt!2423799 call!587238)))

(assert (=> b!6649595 (= lt!2423850 call!587267)))

(declare-fun lt!2423927 () Unit!159475)

(assert (=> b!6649595 (= lt!2423927 call!587286)))

(assert (=> b!6649595 (= lt!2423743 call!587253)))

(assert (=> b!6649595 (= call!587258 call!587228)))

(declare-fun lt!2423862 () Unit!159475)

(assert (=> b!6649595 (= lt!2423862 call!587126)))

(assert (=> b!6649595 (= call!587112 call!587223)))

(declare-fun lt!2423843 () Unit!159475)

(assert (=> b!6649595 (= lt!2423843 call!587260)))

(assert (=> b!6649595 (= call!587222 call!587110)))

(assert (=> b!6649595 (= lt!2423795 call!587268)))

(declare-fun lt!2423926 () Unit!159475)

(assert (=> b!6649595 (= lt!2423926 call!587249)))

(assert (=> b!6649595 (= call!587270 call!587173)))

(declare-fun lt!2423828 () Unit!159475)

(assert (=> b!6649595 (= lt!2423828 call!587266)))

(assert (=> b!6649595 (= lt!2423861 call!587291)))

(assert (=> b!6649595 (= call!587282 call!587109)))

(declare-fun lt!2423815 () Unit!159475)

(assert (=> b!6649595 (= lt!2423815 call!587211)))

(assert (=> b!6649595 (= call!587289 call!587137)))

(assert (=> b!6649595 (= lt!2423930 call!587125)))

(declare-fun lt!2423928 () Unit!159475)

(assert (=> b!6649595 (= lt!2423928 call!587302)))

(assert (=> b!6649595 call!587303))

(declare-fun lt!2423811 () Unit!159475)

(assert (=> b!6649595 (= lt!2423811 call!587203)))

(assert (=> b!6649595 call!587114))

(assert (=> b!6649595 (= lt!2423878 (Concat!25357 lt!2423842 (regTwo!33536 r!7292)))))

(assert (=> b!6649595 (= lt!2423842 (Concat!25357 (reg!16841 (regOne!33536 r!7292)) lt!2423835))))

(declare-fun lt!2423929 () Unit!159475)

(assert (=> b!6649595 (= lt!2423929 call!587308)))

(assert (=> b!6649595 e!4020802))

(declare-fun res!2724704 () Bool)

(assert (=> b!6649595 (=> (not res!2724704) (not e!4020802))))

(assert (=> b!6649595 (= res!2724704 (matchR!8695 lt!2423810 lt!2423922))))

(declare-fun lt!2423782 () Unit!159475)

(assert (=> b!6649595 (= lt!2423782 call!587168)))

(assert (=> b!6649595 (= call!587185 call!587231)))

(declare-fun lt!2423752 () Unit!159475)

(assert (=> b!6649595 (= lt!2423752 call!587176)))

(assert (=> b!6649595 (= call!587216 call!587205)))

(declare-fun lt!2423918 () Unit!159475)

(declare-fun call!587263 () Unit!159475)

(assert (=> b!6649595 (= lt!2423918 call!587263)))

(assert (=> b!6649595 call!587167))

(assert (=> b!6649595 (= lt!2423922 call!587113)))

(assert (=> b!6649595 (= lt!2423887 call!587226)))

(declare-fun lt!2423813 () Unit!159475)

(assert (=> b!6649595 (= lt!2423813 call!587206)))

(declare-fun lt!2423764 () Unit!159475)

(assert (=> b!6649595 (= lt!2423764 call!587166)))

(assert (=> b!6649595 (= lt!2423904 (get!22850 lt!2423753))))

(assert (=> b!6649595 call!587140))

(declare-fun findConcatSeparationZippers!217 ((Set Context!11792) (Set Context!11792) List!65835 List!65835 List!65835) Option!16403)

(assert (=> b!6649595 (= lt!2423753 (findConcatSeparationZippers!217 lt!2423749 lt!2423824 Nil!65711 s!2326 s!2326))))

(declare-fun lt!2423756 () Unit!159475)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!217 ((Set Context!11792) Context!11792 List!65835) Unit!159475)

(assert (=> b!6649595 (= lt!2423756 (lemmaConcatZipperMatchesStringThenFindConcatDefined!217 lt!2423749 lt!2423885 s!2326))))

(declare-fun lambda!372200 () Int)

(declare-fun map!15017 ((Set Context!11792) Int) (Set Context!11792))

(assert (=> b!6649595 (= (map!15017 lt!2423749 lambda!372200) (set.insert (Context!11793 call!587226) (as set.empty (Set Context!11792))))))

(declare-fun lt!2423766 () Unit!159475)

(assert (=> b!6649595 (= lt!2423766 call!587243)))

(declare-fun lt!2423790 () Unit!159475)

(declare-fun lemmaMapOnSingletonSet!235 ((Set Context!11792) Context!11792 Int) Unit!159475)

(assert (=> b!6649595 (= lt!2423790 (lemmaMapOnSingletonSet!235 lt!2423749 lt!2423750 lambda!372200))))

(declare-fun Unit!159493 () Unit!159475)

(assert (=> b!6649595 (= e!4020797 Unit!159493)))

(declare-fun b!6649596 () Bool)

(declare-fun Unit!159494 () Unit!159475)

(assert (=> b!6649596 (= e!4020804 Unit!159494)))

(declare-fun lt!2423741 () Unit!159475)

(assert (=> b!6649596 (= lt!2423741 (lemmaZipperConcatMatchesSameAsBothZippers!1343 lt!2423844 lt!2423893 (t!379504 s!2326)))))

(declare-fun res!2724721 () Bool)

(declare-fun lt!2423755 () Bool)

(assert (=> b!6649596 (= res!2724721 lt!2423755)))

(assert (=> b!6649596 (=> res!2724721 e!4020785)))

(assert (=> b!6649596 (= call!587271 e!4020785)))

(declare-fun b!6649597 () Bool)

(assert (=> b!6649597 (= e!4020795 call!587232)))

(declare-fun b!6649598 () Bool)

(assert (=> b!6649598 e!4020770))

(declare-fun res!2724719 () Bool)

(assert (=> b!6649598 (=> (not res!2724719) (not e!4020770))))

(declare-fun lt!2423908 () Bool)

(assert (=> b!6649598 (= res!2724719 (= lt!2423908 call!587294))))

(declare-fun lt!2423831 () Unit!159475)

(assert (=> b!6649598 (= lt!2423831 call!587122)))

(declare-fun lt!2423931 () Bool)

(assert (=> b!6649598 (= lt!2423931 call!587251)))

(declare-fun lt!2423933 () Unit!159475)

(assert (=> b!6649598 (= lt!2423933 (mainMatchTheorem!3613 lt!2423825 s!2326))))

(assert (=> b!6649598 (= lt!2423908 lt!2423931)))

(assert (=> b!6649598 (= lt!2423931 call!587107)))

(declare-fun call!587212 () Bool)

(assert (=> b!6649598 (= lt!2423908 call!587212)))

(assert (=> b!6649598 (= lt!2423825 (Union!16512 (Concat!25357 (regOne!33537 (regOne!33536 r!7292)) (regTwo!33536 r!7292)) (Concat!25357 (regTwo!33537 (regOne!33536 r!7292)) (regTwo!33536 r!7292))))))

(assert (=> b!6649598 (= lt!2423788 (Concat!25357 (regOne!33536 r!7292) (regTwo!33536 r!7292)))))

(declare-fun lt!2423859 () Unit!159475)

(declare-fun lemmaConcatDistributesInUnion!59 (Regex!16512 Regex!16512 Regex!16512 List!65835) Unit!159475)

(assert (=> b!6649598 (= lt!2423859 (lemmaConcatDistributesInUnion!59 (regOne!33537 (regOne!33536 r!7292)) (regTwo!33537 (regOne!33536 r!7292)) (regTwo!33536 r!7292) s!2326))))

(declare-fun lt!2423745 () Bool)

(assert (=> b!6649598 (= lt!2423745 call!587139)))

(declare-fun lt!2423907 () Unit!159475)

(assert (=> b!6649598 (= lt!2423907 call!587269)))

(declare-fun lt!2423875 () Bool)

(assert (=> b!6649598 (= lt!2423875 (matchRSpec!3613 lt!2423847 s!2326))))

(declare-fun lt!2423773 () Unit!159475)

(assert (=> b!6649598 (= lt!2423773 call!587169)))

(assert (=> b!6649598 (= lt!2423745 (matchZipper!2524 lt!2423879 s!2326))))

(assert (=> b!6649598 (= lt!2423745 call!587170)))

(declare-fun lt!2423827 () Unit!159475)

(assert (=> b!6649598 (= lt!2423827 call!587264)))

(assert (=> b!6649598 (= lt!2423853 call!587133)))

(assert (=> b!6649598 (= lt!2423875 call!587193)))

(assert (=> b!6649598 (= lt!2423875 call!587115)))

(declare-fun lt!2423934 () Unit!159475)

(assert (=> b!6649598 (= lt!2423934 call!587177)))

(assert (=> b!6649598 (= lt!2423847 call!587149)))

(declare-fun lt!2423809 () Unit!159475)

(assert (=> b!6649598 (= lt!2423809 e!4020803)))

(declare-fun c!1227267 () Bool)

(assert (=> b!6649598 (= c!1227267 call!587153)))

(assert (=> b!6649598 (= call!587123 call!587144)))

(declare-fun lt!2423785 () Unit!159475)

(assert (=> b!6649598 (= lt!2423785 call!587148)))

(declare-fun lt!2423899 () (Set Context!11792))

(assert (=> b!6649598 (= lt!2423899 call!587144)))

(declare-fun lt!2423776 () Unit!159475)

(assert (=> b!6649598 (= lt!2423776 e!4020804)))

(declare-fun c!1227265 () Bool)

(assert (=> b!6649598 (= c!1227265 (nullable!6505 (regOne!33537 (regOne!33536 r!7292))))))

(assert (=> b!6649598 (= call!587224 call!587175)))

(declare-fun lt!2423877 () Unit!159475)

(assert (=> b!6649598 (= lt!2423877 call!587261)))

(declare-fun lt!2423757 () (Set Context!11792))

(assert (=> b!6649598 (= lt!2423757 call!587175)))

(assert (=> b!6649598 (= lt!2423879 (set.insert lt!2423823 (as set.empty (Set Context!11792))))))

(assert (=> b!6649598 (= lt!2423823 (Context!11793 lt!2423858))))

(assert (=> b!6649598 (= lt!2423858 (Cons!65712 (regTwo!33537 (regOne!33536 r!7292)) (t!379505 (exprs!6396 (h!72161 zl!343)))))))

(assert (=> b!6649598 (= lt!2423883 (set.insert lt!2423762 (as set.empty (Set Context!11792))))))

(assert (=> b!6649598 (= lt!2423762 (Context!11793 lt!2423886))))

(assert (=> b!6649598 (= lt!2423886 (Cons!65712 (regOne!33537 (regOne!33536 r!7292)) (t!379505 (exprs!6396 (h!72161 zl!343)))))))

(declare-fun e!4020774 () Bool)

(assert (=> b!6649598 (= call!587272 e!4020774)))

(declare-fun res!2724727 () Bool)

(assert (=> b!6649598 (=> res!2724727 e!4020774)))

(assert (=> b!6649598 (= res!2724727 lt!2423755)))

(assert (=> b!6649598 (= lt!2423755 call!587136)))

(declare-fun lt!2423905 () Unit!159475)

(assert (=> b!6649598 (= lt!2423905 call!587283)))

(assert (=> b!6649598 (= lt!2423900 call!587262)))

(assert (=> b!6649598 (= lt!2423844 call!587305)))

(declare-fun Unit!159495 () Unit!159475)

(assert (=> b!6649598 (= e!4020805 Unit!159495)))

(declare-fun b!6649599 () Bool)

(declare-fun tp!1830712 () Bool)

(declare-fun tp!1830715 () Bool)

(assert (=> b!6649599 (= e!4020775 (and tp!1830712 tp!1830715))))

(declare-fun bm!587286 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!679 (Regex!16512 List!65835) Unit!159475)

(assert (=> bm!587286 (= call!587277 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!679 (reg!16841 (regOne!33536 r!7292)) (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))))))

(declare-fun bm!587287 () Bool)

(assert (=> bm!587287 (= call!587255 call!587231)))

(declare-fun bm!587288 () Bool)

(assert (=> bm!587288 (= call!587260 call!587145)))

(declare-fun bm!587289 () Bool)

(assert (=> bm!587289 (= call!587185 call!587189)))

(declare-fun bm!587290 () Bool)

(assert (=> bm!587290 (= call!587170 call!587234)))

(declare-fun bm!587291 () Bool)

(assert (=> bm!587291 (= call!587212 (matchR!8695 (ite c!1227264 lt!2423788 (ite c!1227273 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (Concat!25357 (regTwo!33536 (regOne!33536 r!7292)) lt!2423829)) (ite c!1227266 (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) (ite c!1227261 lt!2423878 lt!2423835)) (regTwo!33536 r!7292)))) (ite (or c!1227264 c!1227273) s!2326 (ite c!1227266 (ite c!1227272 (_1!36794 lt!2423746) (ite c!1227261 s!2326 Nil!65711)) s!2326))))))

(declare-fun b!6649600 () Bool)

(declare-fun Unit!159496 () Unit!159475)

(assert (=> b!6649600 (= e!4020783 Unit!159496)))

(assert (=> b!6649600 (= lt!2423835 (regOne!33536 r!7292))))

(assert (=> b!6649600 (= lt!2423909 (Cons!65712 lt!2423835 (t!379505 (exprs!6396 (h!72161 zl!343)))))))

(assert (=> b!6649600 (= lt!2423793 (Context!11793 (Cons!65712 (reg!16841 (regOne!33536 r!7292)) lt!2423909)))))

(assert (=> b!6649600 (= lt!2423808 (set.insert lt!2423793 (as set.empty (Set Context!11792))))))

(declare-fun lt!2423834 () (Set Context!11792))

(assert (=> b!6649600 (= lt!2423834 call!587285)))

(declare-fun lt!2423902 () Unit!159475)

(assert (=> b!6649600 (= lt!2423902 call!587257)))

(assert (=> b!6649600 (= call!587213 call!587285)))

(assert (=> b!6649600 (= lt!2423885 (Context!11793 lt!2423909))))

(declare-fun lt!2423932 () (Set Context!11792))

(assert (=> b!6649600 (= lt!2423932 call!587241)))

(assert (=> b!6649600 (= lt!2423816 (Concat!25357 lt!2423835 (regTwo!33536 r!7292)))))

(assert (=> b!6649600 (= lt!2423810 (Concat!25357 (reg!16841 (regOne!33536 r!7292)) lt!2423816))))

(assert (=> b!6649600 (= lt!2423826 (Cons!65712 (reg!16841 (regOne!33536 r!7292)) Nil!65712))))

(assert (=> b!6649600 (= lt!2423750 (Context!11793 lt!2423826))))

(assert (=> b!6649600 (= lt!2423749 (set.insert lt!2423750 (as set.empty (Set Context!11792))))))

(assert (=> b!6649600 (= lt!2423824 (set.insert lt!2423885 (as set.empty (Set Context!11792))))))

(declare-fun lt!2423783 () (Set Context!11792))

(assert (=> b!6649600 (= lt!2423783 call!587106)))

(declare-fun lt!2423889 () (Set Context!11792))

(assert (=> b!6649600 (= lt!2423889 call!587295)))

(declare-fun lt!2423873 () Unit!159475)

(assert (=> b!6649600 (= lt!2423873 call!587172)))

(assert (=> b!6649600 (= call!587147 call!587106)))

(declare-fun lt!2423771 () Unit!159475)

(assert (=> b!6649600 (= lt!2423771 call!587191)))

(assert (=> b!6649600 (= call!587142 call!587295)))

(declare-fun lt!2423919 () Unit!159475)

(assert (=> b!6649600 (= lt!2423919 call!587236)))

(assert (=> b!6649600 (= lt!2423806 call!587252)))

(declare-fun res!2724715 () Bool)

(assert (=> b!6649600 (= res!2724715 (= lt!2423806 call!587301))))

(assert (=> b!6649600 (=> (not res!2724715) (not e!4020796))))

(assert (=> b!6649600 e!4020796))

(assert (=> b!6649600 (= c!1227272 lt!2423915)))

(declare-fun lt!2423872 () Unit!159475)

(assert (=> b!6649600 (= lt!2423872 e!4020801)))

(assert (=> b!6649600 (= lt!2423915 call!587138)))

(declare-fun bm!587292 () Bool)

(assert (=> bm!587292 (= call!587293 call!587212)))

(declare-fun b!6649601 () Bool)

(assert (=> b!6649601 (= e!4020774 call!587108)))

(declare-fun bm!587293 () Bool)

(assert (=> bm!587293 (= call!587263 call!587256)))

(declare-fun setElem!45450 () Context!11792)

(declare-fun tp!1830710 () Bool)

(declare-fun setNonEmpty!45450 () Bool)

(assert (=> setNonEmpty!45450 (= setRes!45450 (and tp!1830710 (inv!84528 setElem!45450) e!4020799))))

(declare-fun setRest!45450 () (Set Context!11792))

(assert (=> setNonEmpty!45450 (= z!1189 (set.union (set.insert setElem!45450 (as set.empty (Set Context!11792))) setRest!45450))))

(declare-fun bm!587294 () Bool)

(assert (=> bm!587294 (= call!587196 (lemmaTwoRegexMatchThenConcatMatchesConcatString!373 lt!2423835 (regTwo!33536 r!7292) (ite c!1227272 (_2!36794 lt!2423746) (ite c!1227261 lt!2423850 Nil!65711)) (ite c!1227272 (_2!36794 lt!2423817) (ite c!1227261 (_2!36794 lt!2423861) s!2326))))))

(declare-fun bm!587295 () Bool)

(assert (=> bm!587295 (= call!587257 (lemmaFlatMapOnSingletonSet!1543 (ite c!1227262 lt!2423765 lt!2423808) (ite c!1227262 lt!2423914 lt!2423793) (ite c!1227262 lambda!372185 lambda!372185)))))

(declare-fun b!6649602 () Bool)

(assert (=> b!6649602 (= e!4020777 (not e!4020780))))

(declare-fun res!2724735 () Bool)

(assert (=> b!6649602 (=> res!2724735 e!4020780)))

(assert (=> b!6649602 (= res!2724735 (not (is-Cons!65713 zl!343)))))

(assert (=> b!6649602 (= lt!2423915 lt!2423940)))

(assert (=> b!6649602 (= lt!2423940 (matchRSpec!3613 r!7292 s!2326))))

(assert (=> b!6649602 (= lt!2423915 (matchR!8695 r!7292 s!2326))))

(declare-fun lt!2423884 () Unit!159475)

(assert (=> b!6649602 (= lt!2423884 (mainMatchTheorem!3613 r!7292 s!2326))))

(declare-fun bm!587296 () Bool)

(assert (=> bm!587296 (= call!587232 (matchZipper!2524 (ite c!1227264 lt!2423893 (ite c!1227273 lt!2423939 (ite c!1227262 lt!2423765 (ite c!1227266 (ite c!1227272 lt!2423824 z!1189) lt!2423867)))) (ite c!1227264 (t!379504 s!2326) (ite (or c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) lt!2423906 s!2326)))))))

(declare-fun bm!587297 () Bool)

(assert (=> bm!587297 (= call!587207 call!587108)))

(declare-fun bm!587298 () Bool)

(assert (=> bm!587298 (= call!587183 (Exists!3582 (ite c!1227262 lambda!372192 (ite c!1227272 lambda!372196 (ite c!1227261 lambda!372206 lambda!372208)))))))

(declare-fun bm!587299 () Bool)

(assert (=> bm!587299 (= call!587137 call!587225)))

(declare-fun bm!587300 () Bool)

(assert (=> bm!587300 (= call!587222 call!587274)))

(declare-fun bm!587301 () Bool)

(assert (=> bm!587301 (= call!587254 call!587263)))

(declare-fun bm!587302 () Bool)

(assert (=> bm!587302 (= call!587279 call!587220)))

(declare-fun bm!587303 () Bool)

(assert (=> bm!587303 (= call!587215 call!587134)))

(declare-fun bm!587304 () Bool)

(assert (=> bm!587304 (= call!587252 call!587235)))

(declare-fun bm!587305 () Bool)

(assert (=> bm!587305 (= call!587177 call!587244)))

(declare-fun bm!587306 () Bool)

(assert (=> bm!587306 (= call!587122 (mainMatchTheorem!3613 (ite c!1227264 lt!2423788 (ite c!1227266 lt!2423810 (regTwo!33536 r!7292))) s!2326))))

(assert (= (and start!648968 res!2724728) b!6649542))

(assert (= (and b!6649542 res!2724725) b!6649590))

(assert (= (and b!6649590 res!2724717) b!6649602))

(assert (= (and b!6649602 (not res!2724735)) b!6649537))

(assert (= (and b!6649537 (not res!2724710)) b!6649541))

(assert (= (and b!6649541 (not res!2724711)) b!6649577))

(assert (= (and b!6649577 (not res!2724730)) b!6649591))

(assert (= (and b!6649591 (not res!2724718)) b!6649539))

(assert (= (and b!6649539 (not res!2724707)) b!6649540))

(assert (= (and b!6649540 (not res!2724733)) b!6649572))

(assert (= (and b!6649572 (not res!2724709)) b!6649554))

(assert (= (and b!6649554 c!1227270) b!6649573))

(assert (= (and b!6649554 (not c!1227270)) b!6649545))

(assert (= (and b!6649573 (not res!2724722)) b!6649560))

(assert (= (and b!6649554 c!1227268) b!6649585))

(assert (= (and b!6649554 (not c!1227268)) b!6649575))

(assert (= (and b!6649575 c!1227264) b!6649598))

(assert (= (and b!6649575 (not c!1227264)) b!6649592))

(assert (= (and b!6649598 (not res!2724727)) b!6649601))

(assert (= (and b!6649598 c!1227265) b!6649596))

(assert (= (and b!6649598 (not c!1227265)) b!6649569))

(assert (= (and b!6649596 (not res!2724721)) b!6649557))

(assert (= (and b!6649598 c!1227267) b!6649543))

(assert (= (and b!6649598 (not c!1227267)) b!6649584))

(assert (= (and b!6649543 (not res!2724712)) b!6649597))

(assert (= (and b!6649598 res!2724719) b!6649582))

(assert (= (and b!6649592 res!2724705) b!6649579))

(assert (= (and b!6649592 c!1227273) b!6649550))

(assert (= (and b!6649592 (not c!1227273)) b!6649548))

(assert (= (and b!6649550 (not res!2724731)) b!6649551))

(assert (= (and b!6649550 (not res!2724708)) b!6649568))

(assert (= (and b!6649550 res!2724706) b!6649544))

(assert (= (and b!6649548 c!1227262) b!6649552))

(assert (= (and b!6649548 (not c!1227262)) b!6649538))

(assert (= (and b!6649552 res!2724732) b!6649574))

(assert (= (and b!6649538 c!1227266) b!6649600))

(assert (= (and b!6649538 (not c!1227266)) b!6649559))

(assert (= (and b!6649600 res!2724715) b!6649583))

(assert (= (and b!6649600 c!1227272) b!6649562))

(assert (= (and b!6649600 (not c!1227272)) b!6649547))

(assert (= (and b!6649562 c!1227263) b!6649567))

(assert (= (and b!6649562 (not c!1227263)) b!6649576))

(assert (= (and b!6649567 res!2724714) b!6649589))

(assert (= (and b!6649576 res!2724713) b!6649565))

(assert (= (or b!6649567 b!6649576) bm!587271))

(assert (= (or b!6649567 b!6649576) bm!587301))

(assert (= (or b!6649589 b!6649576) bm!587144))

(assert (= (or b!6649567 b!6649576) bm!587287))

(assert (= (and b!6649547 c!1227271) b!6649563))

(assert (= (and b!6649547 (not c!1227271)) b!6649556))

(assert (= (and b!6649563 c!1227261) b!6649595))

(assert (= (and b!6649563 (not c!1227261)) b!6649586))

(assert (= (and b!6649595 res!2724704) b!6649571))

(assert (= (and b!6649595 res!2724724) b!6649558))

(assert (= (and b!6649586 res!2724729) b!6649555))

(assert (= (or b!6649595 b!6649586) bm!587203))

(assert (= (or b!6649595 b!6649586) bm!587162))

(assert (= (or b!6649595 b!6649586) bm!587248))

(assert (= (or b!6649595 b!6649586) bm!587152))

(assert (= (or b!6649595 b!6649586) bm!587136))

(assert (= (or b!6649595 b!6649586) bm!587141))

(assert (= (or b!6649595 b!6649586) bm!587255))

(assert (= (or b!6649595 b!6649586) bm!587117))

(assert (= (or b!6649595 b!6649586) bm!587185))

(assert (= (or b!6649595 b!6649586) bm!587159))

(assert (= (or b!6649595 b!6649586) bm!587236))

(assert (= (or b!6649595 b!6649586) bm!587171))

(assert (= (or b!6649595 b!6649586) bm!587113))

(assert (= (or b!6649595 b!6649586) bm!587299))

(assert (= (or b!6649595 b!6649586) bm!587202))

(assert (= (or b!6649595 b!6649586) bm!587194))

(assert (= (or b!6649595 b!6649586) bm!587254))

(assert (= (or b!6649595 b!6649586) bm!587221))

(assert (= (or b!6649595 b!6649586) bm!587281))

(assert (= (or b!6649576 bm!587171) bm!587231))

(assert (= (or b!6649567 b!6649586) bm!587148))

(assert (= (or b!6649576 bm!587194) bm!587294))

(assert (= (or b!6649576 b!6649547) bm!587206))

(assert (= (or b!6649576 bm!587141) bm!587201))

(assert (= (or b!6649576 b!6649595) bm!587135))

(assert (= (or b!6649562 bm!587185) bm!587258))

(assert (= (or b!6649576 bm!587202) bm!587286))

(assert (= (or b!6649576 bm!587159) bm!587243))

(assert (= (or b!6649576 b!6649595) bm!587111))

(assert (= (or b!6649576 bm!587162) bm!587126))

(assert (= (or b!6649576 b!6649595) bm!587230))

(assert (= (or b!6649576 b!6649595) bm!587116))

(assert (= (or b!6649562 b!6649595) bm!587244))

(assert (= (or bm!587271 b!6649595) bm!587217))

(assert (= (or b!6649562 b!6649595) bm!587270))

(assert (= (or b!6649576 b!6649595) bm!587101))

(assert (= (or b!6649562 bm!587299) bm!587134))

(assert (= (or b!6649576 b!6649595) bm!587247))

(assert (= (or b!6649576 b!6649595) bm!587120))

(assert (= (or b!6649567 b!6649586) bm!587163))

(assert (= (or b!6649576 b!6649595) bm!587289))

(assert (= (or b!6649576 b!6649595) bm!587155))

(assert (= (or b!6649562 bm!587248) bm!587196))

(assert (= (or b!6649562 bm!587136) bm!587108))

(assert (= (or b!6649567 b!6649586) bm!587191))

(assert (= (or b!6649576 b!6649595) bm!587288))

(assert (= (or b!6649576 bm!587236) bm!587303))

(assert (= (or b!6649576 b!6649595) bm!587259))

(assert (= (or b!6649562 bm!587281) bm!587121))

(assert (= (or b!6649576 bm!587152) bm!587174))

(assert (= (or b!6649576 b!6649595) bm!587132))

(assert (= (or b!6649576 b!6649595) bm!587267))

(assert (= (or b!6649562 bm!587113) bm!587143))

(assert (= (or b!6649576 bm!587203) bm!587124))

(assert (= (or b!6649576 bm!587117) bm!587184))

(assert (= (or b!6649576 b!6649595) bm!587283))

(assert (= (or b!6649576 b!6649595) bm!587154))

(assert (= (or bm!587301 b!6649595) bm!587293))

(assert (= (or bm!587287 b!6649595) bm!587147))

(assert (= (or b!6649576 bm!587221) bm!587210))

(assert (= (or b!6649576 b!6649595) bm!587251))

(assert (= (or bm!587144 b!6649562 b!6649595) bm!587205))

(assert (= (or b!6649567 b!6649586) bm!587232))

(assert (= (or b!6649576 b!6649595) bm!587222))

(assert (= (or b!6649576 b!6649595) bm!587172))

(assert (= (or b!6649576 b!6649595) bm!587180))

(assert (= (or b!6649576 bm!587254) bm!587128))

(assert (= (and b!6649559 c!1227269) b!6649578))

(assert (= (and b!6649559 (not c!1227269)) b!6649570))

(assert (= (and b!6649578 res!2724716) b!6649564))

(assert (= (and b!6649570 res!2724726) b!6649588))

(assert (= (or b!6649578 b!6649570) bm!587261))

(assert (= (or b!6649564 b!6649588) bm!587280))

(assert (= (or b!6649578 b!6649570) bm!587177))

(assert (= (or b!6649578 b!6649570) bm!587302))

(assert (= (or b!6649578 b!6649570) bm!587129))

(assert (= (or b!6649578 b!6649570) bm!587215))

(assert (= (or b!6649578 b!6649570) bm!587125))

(assert (= (or b!6649578 b!6649570) bm!587151))

(assert (= (or b!6649578 b!6649570) bm!587112))

(assert (= (or b!6649600 bm!587125) bm!587178))

(assert (= (or bm!587147 bm!587280) bm!587227))

(assert (= (or b!6649600 bm!587129) bm!587240))

(assert (= (or bm!587303 b!6649578) bm!587226))

(assert (= (or bm!587128 bm!587261) bm!587245))

(assert (= (or b!6649563 b!6649578) bm!587175))

(assert (= (or bm!587148 b!6649578) bm!587219))

(assert (= (or b!6649600 b!6649578) bm!587157))

(assert (= (or b!6649600 bm!587177) bm!587304))

(assert (= (or b!6649600 b!6649578) bm!587188))

(assert (= (or b!6649600 b!6649578) bm!587285))

(assert (= (or bm!587174 bm!587151) bm!587239))

(assert (= (or b!6649600 b!6649578) bm!587195))

(assert (= (or bm!587243 b!6649578) bm!587209))

(assert (= (or b!6649595 bm!587112) bm!587229))

(assert (= (or bm!587206 b!6649578) bm!587187))

(assert (= (or bm!587251 bm!587302) bm!587272))

(assert (= (or b!6649552 bm!587258) bm!587161))

(assert (= (or b!6649552 bm!587293) bm!587262))

(assert (= (or b!6649552 bm!587230) bm!587233))

(assert (= (or b!6649552 b!6649600) bm!587182))

(assert (= (or b!6649552 bm!587135) bm!587193))

(assert (= (or b!6649552 b!6649600) bm!587200))

(assert (= (or b!6649552 bm!587210) bm!587170))

(assert (= (or b!6649552 bm!587239) bm!587167))

(assert (= (or b!6649552 b!6649595) bm!587153))

(assert (= (or b!6649552 b!6649600) bm!587295))

(assert (= (or b!6649574 bm!587245) bm!587284))

(assert (= (or b!6649552 bm!587231) bm!587156))

(assert (= (or b!6649552 bm!587219) bm!587198))

(assert (= (or b!6649552 bm!587244) bm!587208))

(assert (= (or b!6649552 bm!587184) bm!587130))

(assert (= (or b!6649552 bm!587187) bm!587131))

(assert (= (or b!6649552 bm!587267) bm!587138))

(assert (= (or b!6649552 bm!587259) bm!587266))

(assert (= (or b!6649552 bm!587229) bm!587133))

(assert (= (or b!6649552 b!6649595) bm!587169))

(assert (= (or b!6649552 bm!587134) bm!587114))

(assert (= (or b!6649552 bm!587108) bm!587192))

(assert (= (or b!6649552 bm!587304) bm!587278))

(assert (= (or b!6649552 bm!587188) bm!587105))

(assert (= (or b!6649552 bm!587196) bm!587260))

(assert (= (or b!6649552 bm!587288) bm!587274))

(assert (= (or b!6649552 bm!587240) bm!587276))

(assert (= (or b!6649552 bm!587272) bm!587249))

(assert (= (or b!6649552 bm!587124) bm!587298))

(assert (= (or b!6649552 b!6649595) bm!587300))

(assert (= (or b!6649552 bm!587121) bm!587146))

(assert (= (or b!6649550 bm!587182) bm!587189))

(assert (= (or b!6649550 bm!587130) bm!587282))

(assert (= (or b!6649550 b!6649552) bm!587265))

(assert (= (or b!6649550 bm!587205) bm!587268))

(assert (= (or b!6649550 bm!587156) bm!587216))

(assert (= (or b!6649550 bm!587266) bm!587237))

(assert (= (or b!6649550 bm!587289) bm!587149))

(assert (= (or b!6649550 bm!587161) bm!587109))

(assert (= (or b!6649550 bm!587249) bm!587150))

(assert (= (or b!6649550 bm!587208) bm!587107))

(assert (= (or b!6649550 bm!587126) bm!587213))

(assert (= (or b!6649550 bm!587114) bm!587225))

(assert (= (or b!6649550 bm!587226) bm!587292))

(assert (= (or b!6649550 bm!587167) bm!587256))

(assert (= (or b!6649550 bm!587192) bm!587137))

(assert (= (or b!6649550 bm!587198) bm!587123))

(assert (= (or b!6649550 bm!587133) bm!587263))

(assert (= (or b!6649550 bm!587276) bm!587204))

(assert (= (or b!6649550 bm!587260) bm!587183))

(assert (= (or b!6649550 bm!587157) bm!587158))

(assert (= (or b!6649550 bm!587262) bm!587122))

(assert (= (or b!6649550 bm!587209) bm!587238))

(assert (= (or b!6649550 b!6649578) bm!587139))

(assert (= (or b!6649550 b!6649552) bm!587100))

(assert (= (or b!6649544 bm!587227) bm!587297))

(assert (= (or b!6649550 bm!587169) bm!587164))

(assert (= (or b!6649550 bm!587233) bm!587160))

(assert (= (or b!6649550 bm!587274) bm!587199))

(assert (= (or b!6649550 bm!587153) bm!587142))

(assert (= (or b!6649551 bm!587285) bm!587211))

(assert (= (or b!6649550 bm!587138) bm!587145))

(assert (= (or b!6649550 bm!587131) bm!587110))

(assert (= (or b!6649550 b!6649600) bm!587127))

(assert (= (or b!6649568 bm!587175) bm!587234))

(assert (= (or b!6649550 bm!587195) bm!587103))

(assert (= (or b!6649550 b!6649600) bm!587257))

(assert (= (or b!6649550 b!6649600) bm!587246))

(assert (= (or b!6649550 b!6649600) bm!587235))

(assert (= (or b!6649550 bm!587193) bm!587173))

(assert (= (or b!6649550 bm!587284) bm!587118))

(assert (= (or b!6649550 bm!587300) bm!587186))

(assert (= (or b!6649550 bm!587120) bm!587241))

(assert (= (or b!6649598 bm!587127) bm!587102))

(assert (= (or b!6649598 bm!587163) bm!587218))

(assert (= (or b!6649598 bm!587105) bm!587220))

(assert (= (or b!6649598 bm!587235) bm!587264))

(assert (= (or b!6649598 bm!587255) bm!587197))

(assert (= (or b!6649598 bm!587292) bm!587291))

(assert (= (or b!6649598 bm!587189) bm!587165))

(assert (= (or b!6649598 b!6649550) bm!587223))

(assert (= (or b!6649598 bm!587204) bm!587176))

(assert (= (or b!6649598 bm!587246) bm!587242))

(assert (= (or b!6649598 bm!587278) bm!587212))

(assert (= (or b!6649598 bm!587100) bm!587277))

(assert (= (or b!6649598 b!6649579) bm!587214))

(assert (= (or b!6649598 b!6649550) bm!587115))

(assert (= (or b!6649598 bm!587282) bm!587250))

(assert (= (or b!6649598 bm!587178) bm!587306))

(assert (= (or b!6649598 bm!587265) bm!587224))

(assert (= (or b!6649557 b!6649597 bm!587110) bm!587296))

(assert (= (or b!6649582 b!6649550) bm!587253))

(assert (= (or b!6649543 bm!587234) bm!587273))

(assert (= (or b!6649543 b!6649601 bm!587297) bm!587166))

(assert (= (or b!6649596 bm!587118) bm!587279))

(assert (= (or b!6649598 bm!587149) bm!587269))

(assert (= (or b!6649598 bm!587150) bm!587104))

(assert (= (or b!6649598 bm!587263) bm!587140))

(assert (= (or b!6649598 b!6649550) bm!587228))

(assert (= (or b!6649598 bm!587211) bm!587119))

(assert (= (or b!6649598 bm!587103) bm!587252))

(assert (= (or b!6649543 bm!587139) bm!587190))

(assert (= (or b!6649598 bm!587142) bm!587290))

(assert (= (or b!6649598 bm!587122) bm!587305))

(assert (= (or b!6649598 bm!587238) bm!587207))

(assert (= (or b!6649598 bm!587268) bm!587168))

(assert (= (or b!6649585 bm!587290) bm!587179))

(assert (= (or b!6649585 bm!587224) bm!587181))

(assert (= (or b!6649585 bm!587305) bm!587275))

(assert (= (or b!6649585 bm!587119) bm!587106))

(assert (= (and b!6649554 (not res!2724723)) b!6649587))

(assert (= (and b!6649587 (not res!2724734)) b!6649566))

(assert (= (and b!6649566 (not res!2724720)) b!6649581))

(assert (= (and start!648968 (is-ElementMatch!16512 r!7292)) b!6649561))

(assert (= (and start!648968 (is-Concat!25357 r!7292)) b!6649599))

(assert (= (and start!648968 (is-Star!16512 r!7292)) b!6649580))

(assert (= (and start!648968 (is-Union!16512 r!7292)) b!6649593))

(assert (= (and start!648968 condSetEmpty!45450) setIsEmpty!45450))

(assert (= (and start!648968 (not condSetEmpty!45450)) setNonEmpty!45450))

(assert (= setNonEmpty!45450 b!6649546))

(assert (= b!6649549 b!6649594))

(assert (= (and start!648968 (is-Cons!65713 zl!343)) b!6649549))

(assert (= (and start!648968 (is-Cons!65711 s!2326)) b!6649553))

(declare-fun m!7415450 () Bool)

(assert (=> start!648968 m!7415450))

(declare-fun m!7415452 () Bool)

(assert (=> bm!587132 m!7415452))

(declare-fun m!7415454 () Bool)

(assert (=> bm!587216 m!7415454))

(declare-fun m!7415456 () Bool)

(assert (=> b!6649595 m!7415456))

(declare-fun m!7415458 () Bool)

(assert (=> b!6649595 m!7415458))

(declare-fun m!7415460 () Bool)

(assert (=> b!6649595 m!7415460))

(declare-fun m!7415462 () Bool)

(assert (=> b!6649595 m!7415462))

(declare-fun m!7415464 () Bool)

(assert (=> b!6649595 m!7415464))

(declare-fun m!7415466 () Bool)

(assert (=> b!6649595 m!7415466))

(declare-fun m!7415468 () Bool)

(assert (=> b!6649595 m!7415468))

(declare-fun m!7415470 () Bool)

(assert (=> b!6649595 m!7415470))

(declare-fun m!7415472 () Bool)

(assert (=> b!6649586 m!7415472))

(declare-fun m!7415474 () Bool)

(assert (=> bm!587191 m!7415474))

(declare-fun m!7415476 () Bool)

(assert (=> bm!587232 m!7415476))

(declare-fun m!7415478 () Bool)

(assert (=> bm!587294 m!7415478))

(declare-fun m!7415480 () Bool)

(assert (=> b!6649552 m!7415480))

(declare-fun m!7415482 () Bool)

(assert (=> bm!587275 m!7415482))

(declare-fun m!7415484 () Bool)

(assert (=> bm!587181 m!7415484))

(declare-fun m!7415486 () Bool)

(assert (=> b!6649549 m!7415486))

(declare-fun m!7415488 () Bool)

(assert (=> bm!587140 m!7415488))

(declare-fun m!7415490 () Bool)

(assert (=> b!6649590 m!7415490))

(declare-fun m!7415492 () Bool)

(assert (=> bm!587220 m!7415492))

(declare-fun m!7415494 () Bool)

(assert (=> bm!587107 m!7415494))

(declare-fun m!7415496 () Bool)

(assert (=> bm!587264 m!7415496))

(declare-fun m!7415498 () Bool)

(assert (=> bm!587102 m!7415498))

(declare-fun m!7415500 () Bool)

(assert (=> b!6649540 m!7415500))

(declare-fun m!7415502 () Bool)

(assert (=> b!6649540 m!7415502))

(declare-fun m!7415504 () Bool)

(assert (=> b!6649540 m!7415504))

(declare-fun m!7415506 () Bool)

(assert (=> b!6649540 m!7415506))

(assert (=> b!6649540 m!7415506))

(declare-fun m!7415508 () Bool)

(assert (=> b!6649540 m!7415508))

(assert (=> b!6649540 m!7415500))

(declare-fun m!7415510 () Bool)

(assert (=> b!6649540 m!7415510))

(declare-fun m!7415512 () Bool)

(assert (=> bm!587104 m!7415512))

(declare-fun m!7415514 () Bool)

(assert (=> bm!587237 m!7415514))

(declare-fun m!7415516 () Bool)

(assert (=> bm!587277 m!7415516))

(declare-fun m!7415518 () Bool)

(assert (=> bm!587179 m!7415518))

(declare-fun m!7415520 () Bool)

(assert (=> bm!587256 m!7415520))

(declare-fun m!7415522 () Bool)

(assert (=> bm!587180 m!7415522))

(declare-fun m!7415524 () Bool)

(assert (=> bm!587160 m!7415524))

(declare-fun m!7415526 () Bool)

(assert (=> b!6649562 m!7415526))

(declare-fun m!7415528 () Bool)

(assert (=> b!6649541 m!7415528))

(declare-fun m!7415530 () Bool)

(assert (=> bm!587252 m!7415530))

(assert (=> b!6649567 m!7415472))

(declare-fun m!7415532 () Bool)

(assert (=> b!6649587 m!7415532))

(declare-fun m!7415534 () Bool)

(assert (=> b!6649587 m!7415534))

(assert (=> b!6649587 m!7415534))

(declare-fun m!7415536 () Bool)

(assert (=> b!6649587 m!7415536))

(declare-fun m!7415538 () Bool)

(assert (=> bm!587146 m!7415538))

(declare-fun m!7415540 () Bool)

(assert (=> bm!587176 m!7415540))

(declare-fun m!7415542 () Bool)

(assert (=> bm!587247 m!7415542))

(declare-fun m!7415544 () Bool)

(assert (=> bm!587250 m!7415544))

(declare-fun m!7415546 () Bool)

(assert (=> b!6649602 m!7415546))

(declare-fun m!7415548 () Bool)

(assert (=> b!6649602 m!7415548))

(declare-fun m!7415550 () Bool)

(assert (=> b!6649602 m!7415550))

(declare-fun m!7415552 () Bool)

(assert (=> b!6649542 m!7415552))

(declare-fun m!7415554 () Bool)

(assert (=> bm!587306 m!7415554))

(declare-fun m!7415556 () Bool)

(assert (=> bm!587173 m!7415556))

(declare-fun m!7415558 () Bool)

(assert (=> b!6649591 m!7415558))

(assert (=> b!6649591 m!7415558))

(declare-fun m!7415560 () Bool)

(assert (=> b!6649591 m!7415560))

(declare-fun m!7415562 () Bool)

(assert (=> bm!587222 m!7415562))

(declare-fun m!7415564 () Bool)

(assert (=> bm!587200 m!7415564))

(assert (=> bm!587279 m!7415466))

(declare-fun m!7415566 () Bool)

(assert (=> bm!587279 m!7415566))

(declare-fun m!7415568 () Bool)

(assert (=> bm!587279 m!7415568))

(declare-fun m!7415570 () Bool)

(assert (=> bm!587295 m!7415570))

(declare-fun m!7415572 () Bool)

(assert (=> bm!587154 m!7415572))

(assert (=> b!6649578 m!7415472))

(declare-fun m!7415574 () Bool)

(assert (=> bm!587116 m!7415574))

(declare-fun m!7415576 () Bool)

(assert (=> bm!587257 m!7415576))

(declare-fun m!7415578 () Bool)

(assert (=> bm!587283 m!7415578))

(declare-fun m!7415580 () Bool)

(assert (=> bm!587270 m!7415580))

(declare-fun m!7415582 () Bool)

(assert (=> bm!587166 m!7415582))

(declare-fun m!7415584 () Bool)

(assert (=> b!6649598 m!7415584))

(declare-fun m!7415586 () Bool)

(assert (=> b!6649598 m!7415586))

(declare-fun m!7415588 () Bool)

(assert (=> b!6649598 m!7415588))

(declare-fun m!7415590 () Bool)

(assert (=> b!6649598 m!7415590))

(declare-fun m!7415592 () Bool)

(assert (=> b!6649598 m!7415592))

(declare-fun m!7415594 () Bool)

(assert (=> b!6649598 m!7415594))

(declare-fun m!7415596 () Bool)

(assert (=> b!6649598 m!7415596))

(declare-fun m!7415598 () Bool)

(assert (=> bm!587106 m!7415598))

(declare-fun m!7415600 () Bool)

(assert (=> bm!587218 m!7415600))

(declare-fun m!7415602 () Bool)

(assert (=> bm!587269 m!7415602))

(declare-fun m!7415604 () Bool)

(assert (=> bm!587286 m!7415604))

(declare-fun m!7415606 () Bool)

(assert (=> b!6649566 m!7415606))

(declare-fun m!7415608 () Bool)

(assert (=> b!6649566 m!7415608))

(declare-fun m!7415610 () Bool)

(assert (=> bm!587213 m!7415610))

(declare-fun m!7415612 () Bool)

(assert (=> bm!587186 m!7415612))

(declare-fun m!7415614 () Bool)

(assert (=> bm!587201 m!7415614))

(declare-fun m!7415616 () Bool)

(assert (=> bm!587183 m!7415616))

(declare-fun m!7415618 () Bool)

(assert (=> bm!587115 m!7415618))

(declare-fun m!7415620 () Bool)

(assert (=> bm!587145 m!7415620))

(assert (=> bm!587172 m!7415572))

(declare-fun m!7415622 () Bool)

(assert (=> setNonEmpty!45450 m!7415622))

(declare-fun m!7415624 () Bool)

(assert (=> b!6649560 m!7415624))

(declare-fun m!7415626 () Bool)

(assert (=> b!6649537 m!7415626))

(declare-fun m!7415628 () Bool)

(assert (=> bm!587170 m!7415628))

(declare-fun m!7415630 () Bool)

(assert (=> bm!587296 m!7415630))

(declare-fun m!7415632 () Bool)

(assert (=> bm!587101 m!7415632))

(declare-fun m!7415634 () Bool)

(assert (=> bm!587214 m!7415634))

(declare-fun m!7415636 () Bool)

(assert (=> bm!587155 m!7415636))

(assert (=> b!6649585 m!7415472))

(declare-fun m!7415638 () Bool)

(assert (=> bm!587123 m!7415638))

(declare-fun m!7415640 () Bool)

(assert (=> bm!587253 m!7415640))

(declare-fun m!7415642 () Bool)

(assert (=> bm!587197 m!7415642))

(declare-fun m!7415644 () Bool)

(assert (=> b!6649550 m!7415644))

(declare-fun m!7415646 () Bool)

(assert (=> b!6649550 m!7415646))

(declare-fun m!7415648 () Bool)

(assert (=> bm!587199 m!7415648))

(declare-fun m!7415650 () Bool)

(assert (=> bm!587158 m!7415650))

(declare-fun m!7415652 () Bool)

(assert (=> bm!587143 m!7415652))

(declare-fun m!7415654 () Bool)

(assert (=> b!6649573 m!7415654))

(declare-fun m!7415656 () Bool)

(assert (=> b!6649573 m!7415656))

(declare-fun m!7415658 () Bool)

(assert (=> b!6649573 m!7415658))

(declare-fun m!7415660 () Bool)

(assert (=> bm!587111 m!7415660))

(declare-fun m!7415662 () Bool)

(assert (=> bm!587164 m!7415662))

(declare-fun m!7415664 () Bool)

(assert (=> b!6649554 m!7415664))

(assert (=> b!6649554 m!7415476))

(declare-fun m!7415666 () Bool)

(assert (=> b!6649554 m!7415666))

(declare-fun m!7415668 () Bool)

(assert (=> b!6649554 m!7415668))

(assert (=> b!6649554 m!7415472))

(declare-fun m!7415670 () Bool)

(assert (=> b!6649554 m!7415670))

(declare-fun m!7415672 () Bool)

(assert (=> b!6649554 m!7415672))

(declare-fun m!7415674 () Bool)

(assert (=> b!6649554 m!7415674))

(declare-fun m!7415676 () Bool)

(assert (=> b!6649554 m!7415676))

(declare-fun m!7415678 () Bool)

(assert (=> b!6649554 m!7415678))

(declare-fun m!7415680 () Bool)

(assert (=> b!6649554 m!7415680))

(declare-fun m!7415682 () Bool)

(assert (=> bm!587212 m!7415682))

(declare-fun m!7415684 () Bool)

(assert (=> b!6649596 m!7415684))

(declare-fun m!7415686 () Bool)

(assert (=> bm!587298 m!7415686))

(declare-fun m!7415688 () Bool)

(assert (=> bm!587223 m!7415688))

(declare-fun m!7415690 () Bool)

(assert (=> bm!587273 m!7415690))

(declare-fun m!7415692 () Bool)

(assert (=> bm!587165 m!7415692))

(declare-fun m!7415694 () Bool)

(assert (=> bm!587137 m!7415694))

(declare-fun m!7415696 () Bool)

(assert (=> bm!587228 m!7415696))

(declare-fun m!7415698 () Bool)

(assert (=> bm!587168 m!7415698))

(declare-fun m!7415700 () Bool)

(assert (=> b!6649572 m!7415700))

(declare-fun m!7415702 () Bool)

(assert (=> bm!587241 m!7415702))

(declare-fun m!7415704 () Bool)

(assert (=> b!6649581 m!7415704))

(declare-fun m!7415706 () Bool)

(assert (=> bm!587207 m!7415706))

(declare-fun m!7415708 () Bool)

(assert (=> bm!587217 m!7415708))

(declare-fun m!7415710 () Bool)

(assert (=> bm!587225 m!7415710))

(declare-fun m!7415712 () Bool)

(assert (=> bm!587215 m!7415712))

(declare-fun m!7415714 () Bool)

(assert (=> bm!587109 m!7415714))

(declare-fun m!7415716 () Bool)

(assert (=> bm!587291 m!7415716))

(declare-fun m!7415718 () Bool)

(assert (=> b!6649600 m!7415718))

(declare-fun m!7415720 () Bool)

(assert (=> b!6649600 m!7415720))

(declare-fun m!7415722 () Bool)

(assert (=> b!6649600 m!7415722))

(declare-fun m!7415724 () Bool)

(assert (=> bm!587242 m!7415724))

(declare-fun m!7415726 () Bool)

(assert (=> bm!587190 m!7415726))

(push 1)

(assert (not bm!587269))

(assert (not b!6649593))

(assert (not bm!587176))

(assert (not b!6649573))

(assert (not bm!587116))

(assert (not bm!587183))

(assert (not bm!587190))

(assert (not b!6649599))

(assert (not bm!587180))

(assert (not bm!587146))

(assert (not bm!587164))

(assert (not b!6649566))

(assert (not bm!587207))

(assert (not b!6649590))

(assert (not bm!587197))

(assert tp_is_empty!42277)

(assert (not bm!587296))

(assert (not bm!587107))

(assert (not bm!587217))

(assert (not bm!587168))

(assert (not b!6649549))

(assert (not bm!587273))

(assert (not bm!587173))

(assert (not bm!587264))

(assert (not b!6649554))

(assert (not b!6649587))

(assert (not bm!587294))

(assert (not b!6649595))

(assert (not b!6649537))

(assert (not bm!587286))

(assert (not bm!587181))

(assert (not bm!587247))

(assert (not bm!587222))

(assert (not bm!587102))

(assert (not bm!587279))

(assert (not bm!587215))

(assert (not bm!587104))

(assert (not bm!587298))

(assert (not bm!587291))

(assert (not bm!587237))

(assert (not bm!587220))

(assert (not bm!587201))

(assert (not bm!587223))

(assert (not b!6649546))

(assert (not bm!587242))

(assert (not bm!587213))

(assert (not bm!587137))

(assert (not bm!587241))

(assert (not bm!587165))

(assert (not bm!587295))

(assert (not bm!587109))

(assert (not bm!587123))

(assert (not bm!587106))

(assert (not bm!587253))

(assert (not b!6649591))

(assert (not bm!587252))

(assert (not bm!587155))

(assert (not bm!587277))

(assert (not bm!587132))

(assert (not bm!587160))

(assert (not b!6649594))

(assert (not bm!587158))

(assert (not bm!587170))

(assert (not b!6649598))

(assert (not b!6649540))

(assert (not b!6649560))

(assert (not b!6649581))

(assert (not bm!587145))

(assert (not bm!587200))

(assert (not bm!587275))

(assert (not start!648968))

(assert (not bm!587172))

(assert (not bm!587216))

(assert (not bm!587166))

(assert (not bm!587101))

(assert (not bm!587256))

(assert (not b!6649572))

(assert (not b!6649553))

(assert (not bm!587232))

(assert (not bm!587111))

(assert (not bm!587218))

(assert (not bm!587257))

(assert (not bm!587250))

(assert (not bm!587214))

(assert (not bm!587143))

(assert (not bm!587115))

(assert (not bm!587186))

(assert (not bm!587154))

(assert (not b!6649596))

(assert (not bm!587199))

(assert (not bm!587225))

(assert (not b!6649541))

(assert (not b!6649562))

(assert (not bm!587179))

(assert (not bm!587191))

(assert (not bm!587283))

(assert (not bm!587140))

(assert (not bm!587212))

(assert (not bm!587306))

(assert (not bm!587228))

(assert (not b!6649542))

(assert (not b!6649580))

(assert (not b!6649602))

(assert (not bm!587270))

(assert (not setNonEmpty!45450))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2084042 () Bool)

(declare-fun c!1227346 () Bool)

(assert (=> d!2084042 (= c!1227346 (isEmpty!38022 (ite c!1227264 s!2326 (ite c!1227273 (t!379504 s!2326) (ite c!1227272 s!2326 (_1!36794 lt!2423904))))))))

(declare-fun e!4021001 () Bool)

(assert (=> d!2084042 (= (matchZipper!2524 (ite c!1227264 lt!2423883 (ite c!1227273 lt!2423846 (ite c!1227272 z!1189 lt!2423749))) (ite c!1227264 s!2326 (ite c!1227273 (t!379504 s!2326) (ite c!1227272 s!2326 (_1!36794 lt!2423904))))) e!4021001)))

(declare-fun b!6649975 () Bool)

(declare-fun nullableZipper!2253 ((Set Context!11792)) Bool)

(assert (=> b!6649975 (= e!4021001 (nullableZipper!2253 (ite c!1227264 lt!2423883 (ite c!1227273 lt!2423846 (ite c!1227272 z!1189 lt!2423749)))))))

(declare-fun b!6649976 () Bool)

(declare-fun head!13467 (List!65835) C!33294)

(declare-fun tail!12552 (List!65835) List!65835)

(assert (=> b!6649976 (= e!4021001 (matchZipper!2524 (derivationStepZipper!2478 (ite c!1227264 lt!2423883 (ite c!1227273 lt!2423846 (ite c!1227272 z!1189 lt!2423749))) (head!13467 (ite c!1227264 s!2326 (ite c!1227273 (t!379504 s!2326) (ite c!1227272 s!2326 (_1!36794 lt!2423904)))))) (tail!12552 (ite c!1227264 s!2326 (ite c!1227273 (t!379504 s!2326) (ite c!1227272 s!2326 (_1!36794 lt!2423904)))))))))

(assert (= (and d!2084042 c!1227346) b!6649975))

(assert (= (and d!2084042 (not c!1227346)) b!6649976))

(declare-fun m!7416008 () Bool)

(assert (=> d!2084042 m!7416008))

(declare-fun m!7416010 () Bool)

(assert (=> b!6649975 m!7416010))

(declare-fun m!7416012 () Bool)

(assert (=> b!6649976 m!7416012))

(assert (=> b!6649976 m!7416012))

(declare-fun m!7416014 () Bool)

(assert (=> b!6649976 m!7416014))

(declare-fun m!7416016 () Bool)

(assert (=> b!6649976 m!7416016))

(assert (=> b!6649976 m!7416014))

(assert (=> b!6649976 m!7416016))

(declare-fun m!7416018 () Bool)

(assert (=> b!6649976 m!7416018))

(assert (=> bm!587168 d!2084042))

(declare-fun d!2084044 () Bool)

(declare-fun choose!49715 (Int) Bool)

(assert (=> d!2084044 (= (Exists!3582 (ite c!1227273 lambda!372187 (ite c!1227262 lambda!372190 (ite c!1227272 lambda!372198 (ite c!1227261 lambda!372203 lambda!372207))))) (choose!49715 (ite c!1227273 lambda!372187 (ite c!1227262 lambda!372190 (ite c!1227272 lambda!372198 (ite c!1227261 lambda!372203 lambda!372207))))))))

(declare-fun bs!1711999 () Bool)

(assert (= bs!1711999 d!2084044))

(declare-fun m!7416020 () Bool)

(assert (=> bs!1711999 m!7416020))

(assert (=> bm!587216 d!2084044))

(declare-fun b!6649987 () Bool)

(declare-fun e!4021010 () (Set Context!11792))

(declare-fun e!4021008 () (Set Context!11792))

(assert (=> b!6649987 (= e!4021010 e!4021008)))

(declare-fun c!1227352 () Bool)

(assert (=> b!6649987 (= c!1227352 (is-Cons!65712 (exprs!6396 (ite c!1227262 lt!2423914 lt!2423750))))))

(declare-fun bm!587930 () Bool)

(declare-fun call!587935 () (Set Context!11792))

(assert (=> bm!587930 (= call!587935 (derivationStepZipperDown!1760 (h!72160 (exprs!6396 (ite c!1227262 lt!2423914 lt!2423750))) (Context!11793 (t!379505 (exprs!6396 (ite c!1227262 lt!2423914 lt!2423750)))) (h!72159 s!2326)))))

(declare-fun d!2084046 () Bool)

(declare-fun c!1227351 () Bool)

(declare-fun e!4021009 () Bool)

(assert (=> d!2084046 (= c!1227351 e!4021009)))

(declare-fun res!2724986 () Bool)

(assert (=> d!2084046 (=> (not res!2724986) (not e!4021009))))

(assert (=> d!2084046 (= res!2724986 (is-Cons!65712 (exprs!6396 (ite c!1227262 lt!2423914 lt!2423750))))))

(assert (=> d!2084046 (= (derivationStepZipperUp!1686 (ite c!1227262 lt!2423914 lt!2423750) (h!72159 s!2326)) e!4021010)))

(declare-fun b!6649988 () Bool)

(assert (=> b!6649988 (= e!4021008 (as set.empty (Set Context!11792)))))

(declare-fun b!6649989 () Bool)

(assert (=> b!6649989 (= e!4021009 (nullable!6505 (h!72160 (exprs!6396 (ite c!1227262 lt!2423914 lt!2423750)))))))

(declare-fun b!6649990 () Bool)

(assert (=> b!6649990 (= e!4021010 (set.union call!587935 (derivationStepZipperUp!1686 (Context!11793 (t!379505 (exprs!6396 (ite c!1227262 lt!2423914 lt!2423750)))) (h!72159 s!2326))))))

(declare-fun b!6649991 () Bool)

(assert (=> b!6649991 (= e!4021008 call!587935)))

(assert (= (and d!2084046 res!2724986) b!6649989))

(assert (= (and d!2084046 c!1227351) b!6649990))

(assert (= (and d!2084046 (not c!1227351)) b!6649987))

(assert (= (and b!6649987 c!1227352) b!6649991))

(assert (= (and b!6649987 (not c!1227352)) b!6649988))

(assert (= (or b!6649990 b!6649991) bm!587930))

(declare-fun m!7416022 () Bool)

(assert (=> bm!587930 m!7416022))

(declare-fun m!7416024 () Bool)

(assert (=> b!6649989 m!7416024))

(declare-fun m!7416026 () Bool)

(assert (=> b!6649990 m!7416026))

(assert (=> bm!587200 d!2084046))

(declare-fun d!2084048 () Bool)

(assert (=> d!2084048 (= (Exists!3582 (ite c!1227262 lambda!372192 (ite c!1227272 lambda!372196 (ite c!1227261 lambda!372206 lambda!372208)))) (choose!49715 (ite c!1227262 lambda!372192 (ite c!1227272 lambda!372196 (ite c!1227261 lambda!372206 lambda!372208)))))))

(declare-fun bs!1712000 () Bool)

(assert (= bs!1712000 d!2084048))

(declare-fun m!7416028 () Bool)

(assert (=> bs!1712000 m!7416028))

(assert (=> bm!587298 d!2084048))

(declare-fun d!2084050 () Bool)

(declare-fun forall!15708 (List!65836 Int) Bool)

(assert (=> d!2084050 (forall!15708 (++!14667 lt!2423826 lt!2423909) (ite c!1227272 lambda!372199 lambda!372201))))

(declare-fun lt!2424554 () Unit!159475)

(declare-fun choose!49716 (List!65836 List!65836 Int) Unit!159475)

(assert (=> d!2084050 (= lt!2424554 (choose!49716 lt!2423826 lt!2423909 (ite c!1227272 lambda!372199 lambda!372201)))))

(assert (=> d!2084050 (forall!15708 lt!2423826 (ite c!1227272 lambda!372199 lambda!372201))))

(assert (=> d!2084050 (= (lemmaConcatPreservesForall!425 lt!2423826 lt!2423909 (ite c!1227272 lambda!372199 lambda!372201)) lt!2424554)))

(declare-fun bs!1712001 () Bool)

(assert (= bs!1712001 d!2084050))

(assert (=> bs!1712001 m!7415542))

(assert (=> bs!1712001 m!7415542))

(declare-fun m!7416030 () Bool)

(assert (=> bs!1712001 m!7416030))

(declare-fun m!7416032 () Bool)

(assert (=> bs!1712001 m!7416032))

(declare-fun m!7416034 () Bool)

(assert (=> bs!1712001 m!7416034))

(assert (=> bm!587154 d!2084050))

(declare-fun d!2084052 () Bool)

(assert (=> d!2084052 (= (matchR!8695 (ite c!1227264 lt!2423847 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423878 lt!2423835))))) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 s!2326 Nil!65711)))) (matchRSpec!3613 (ite c!1227264 lt!2423847 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423878 lt!2423835))))) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 s!2326 Nil!65711)))))))

(declare-fun lt!2424557 () Unit!159475)

(declare-fun choose!49717 (Regex!16512 List!65835) Unit!159475)

(assert (=> d!2084052 (= lt!2424557 (choose!49717 (ite c!1227264 lt!2423847 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423878 lt!2423835))))) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 s!2326 Nil!65711)))))))

(assert (=> d!2084052 (validRegex!8248 (ite c!1227264 lt!2423847 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423878 lt!2423835))))))))

(assert (=> d!2084052 (= (mainMatchTheorem!3613 (ite c!1227264 lt!2423847 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423878 lt!2423835))))) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 s!2326 Nil!65711)))) lt!2424557)))

(declare-fun bs!1712002 () Bool)

(assert (= bs!1712002 d!2084052))

(declare-fun m!7416036 () Bool)

(assert (=> bs!1712002 m!7416036))

(declare-fun m!7416038 () Bool)

(assert (=> bs!1712002 m!7416038))

(declare-fun m!7416040 () Bool)

(assert (=> bs!1712002 m!7416040))

(declare-fun m!7416042 () Bool)

(assert (=> bs!1712002 m!7416042))

(assert (=> bm!587250 d!2084052))

(declare-fun b!6649992 () Bool)

(declare-fun e!4021013 () (Set Context!11792))

(declare-fun e!4021011 () (Set Context!11792))

(assert (=> b!6649992 (= e!4021013 e!4021011)))

(declare-fun c!1227354 () Bool)

(assert (=> b!6649992 (= c!1227354 (is-Cons!65712 (exprs!6396 lt!2423839)))))

(declare-fun bm!587931 () Bool)

(declare-fun call!587936 () (Set Context!11792))

(assert (=> bm!587931 (= call!587936 (derivationStepZipperDown!1760 (h!72160 (exprs!6396 lt!2423839)) (Context!11793 (t!379505 (exprs!6396 lt!2423839))) (h!72159 s!2326)))))

(declare-fun d!2084054 () Bool)

(declare-fun c!1227353 () Bool)

(declare-fun e!4021012 () Bool)

(assert (=> d!2084054 (= c!1227353 e!4021012)))

(declare-fun res!2724987 () Bool)

(assert (=> d!2084054 (=> (not res!2724987) (not e!4021012))))

(assert (=> d!2084054 (= res!2724987 (is-Cons!65712 (exprs!6396 lt!2423839)))))

(assert (=> d!2084054 (= (derivationStepZipperUp!1686 lt!2423839 (h!72159 s!2326)) e!4021013)))

(declare-fun b!6649993 () Bool)

(assert (=> b!6649993 (= e!4021011 (as set.empty (Set Context!11792)))))

(declare-fun b!6649994 () Bool)

(assert (=> b!6649994 (= e!4021012 (nullable!6505 (h!72160 (exprs!6396 lt!2423839))))))

(declare-fun b!6649995 () Bool)

(assert (=> b!6649995 (= e!4021013 (set.union call!587936 (derivationStepZipperUp!1686 (Context!11793 (t!379505 (exprs!6396 lt!2423839))) (h!72159 s!2326))))))

(declare-fun b!6649996 () Bool)

(assert (=> b!6649996 (= e!4021011 call!587936)))

(assert (= (and d!2084054 res!2724987) b!6649994))

(assert (= (and d!2084054 c!1227353) b!6649995))

(assert (= (and d!2084054 (not c!1227353)) b!6649992))

(assert (= (and b!6649992 c!1227354) b!6649996))

(assert (= (and b!6649992 (not c!1227354)) b!6649993))

(assert (= (or b!6649995 b!6649996) bm!587931))

(declare-fun m!7416044 () Bool)

(assert (=> bm!587931 m!7416044))

(declare-fun m!7416046 () Bool)

(assert (=> b!6649994 m!7416046))

(declare-fun m!7416048 () Bool)

(assert (=> b!6649995 m!7416048))

(assert (=> bm!587232 d!2084054))

(declare-fun b!6650025 () Bool)

(declare-fun e!4021031 () Bool)

(assert (=> b!6650025 (= e!4021031 (= (head!13467 lt!2423922) (c!1227274 lt!2423810)))))

(declare-fun b!6650026 () Bool)

(declare-fun e!4021029 () Bool)

(declare-fun e!4021032 () Bool)

(assert (=> b!6650026 (= e!4021029 e!4021032)))

(declare-fun c!1227361 () Bool)

(assert (=> b!6650026 (= c!1227361 (is-EmptyLang!16512 lt!2423810))))

(declare-fun b!6650027 () Bool)

(declare-fun e!4021030 () Bool)

(assert (=> b!6650027 (= e!4021030 (not (= (head!13467 lt!2423922) (c!1227274 lt!2423810))))))

(declare-fun d!2084056 () Bool)

(assert (=> d!2084056 e!4021029))

(declare-fun c!1227363 () Bool)

(assert (=> d!2084056 (= c!1227363 (is-EmptyExpr!16512 lt!2423810))))

(declare-fun lt!2424560 () Bool)

(declare-fun e!4021028 () Bool)

(assert (=> d!2084056 (= lt!2424560 e!4021028)))

(declare-fun c!1227362 () Bool)

(assert (=> d!2084056 (= c!1227362 (isEmpty!38022 lt!2423922))))

(assert (=> d!2084056 (validRegex!8248 lt!2423810)))

(assert (=> d!2084056 (= (matchR!8695 lt!2423810 lt!2423922) lt!2424560)))

(declare-fun b!6650028 () Bool)

(declare-fun res!2725006 () Bool)

(declare-fun e!4021033 () Bool)

(assert (=> b!6650028 (=> res!2725006 e!4021033)))

(assert (=> b!6650028 (= res!2725006 (not (is-ElementMatch!16512 lt!2423810)))))

(assert (=> b!6650028 (= e!4021032 e!4021033)))

(declare-fun bm!587934 () Bool)

(declare-fun call!587939 () Bool)

(assert (=> bm!587934 (= call!587939 (isEmpty!38022 lt!2423922))))

(declare-fun b!6650029 () Bool)

(declare-fun res!2725004 () Bool)

(assert (=> b!6650029 (=> (not res!2725004) (not e!4021031))))

(assert (=> b!6650029 (= res!2725004 (not call!587939))))

(declare-fun b!6650030 () Bool)

(declare-fun res!2725009 () Bool)

(assert (=> b!6650030 (=> (not res!2725009) (not e!4021031))))

(assert (=> b!6650030 (= res!2725009 (isEmpty!38022 (tail!12552 lt!2423922)))))

(declare-fun b!6650031 () Bool)

(declare-fun e!4021034 () Bool)

(assert (=> b!6650031 (= e!4021033 e!4021034)))

(declare-fun res!2725008 () Bool)

(assert (=> b!6650031 (=> (not res!2725008) (not e!4021034))))

(assert (=> b!6650031 (= res!2725008 (not lt!2424560))))

(declare-fun b!6650032 () Bool)

(assert (=> b!6650032 (= e!4021032 (not lt!2424560))))

(declare-fun b!6650033 () Bool)

(assert (=> b!6650033 (= e!4021034 e!4021030)))

(declare-fun res!2725010 () Bool)

(assert (=> b!6650033 (=> res!2725010 e!4021030)))

(assert (=> b!6650033 (= res!2725010 call!587939)))

(declare-fun b!6650034 () Bool)

(assert (=> b!6650034 (= e!4021028 (nullable!6505 lt!2423810))))

(declare-fun b!6650035 () Bool)

(declare-fun res!2725005 () Bool)

(assert (=> b!6650035 (=> res!2725005 e!4021033)))

(assert (=> b!6650035 (= res!2725005 e!4021031)))

(declare-fun res!2725011 () Bool)

(assert (=> b!6650035 (=> (not res!2725011) (not e!4021031))))

(assert (=> b!6650035 (= res!2725011 lt!2424560)))

(declare-fun b!6650036 () Bool)

(declare-fun derivativeStep!5192 (Regex!16512 C!33294) Regex!16512)

(assert (=> b!6650036 (= e!4021028 (matchR!8695 (derivativeStep!5192 lt!2423810 (head!13467 lt!2423922)) (tail!12552 lt!2423922)))))

(declare-fun b!6650037 () Bool)

(declare-fun res!2725007 () Bool)

(assert (=> b!6650037 (=> res!2725007 e!4021030)))

(assert (=> b!6650037 (= res!2725007 (not (isEmpty!38022 (tail!12552 lt!2423922))))))

(declare-fun b!6650038 () Bool)

(assert (=> b!6650038 (= e!4021029 (= lt!2424560 call!587939))))

(assert (= (and d!2084056 c!1227362) b!6650034))

(assert (= (and d!2084056 (not c!1227362)) b!6650036))

(assert (= (and d!2084056 c!1227363) b!6650038))

(assert (= (and d!2084056 (not c!1227363)) b!6650026))

(assert (= (and b!6650026 c!1227361) b!6650032))

(assert (= (and b!6650026 (not c!1227361)) b!6650028))

(assert (= (and b!6650028 (not res!2725006)) b!6650035))

(assert (= (and b!6650035 res!2725011) b!6650029))

(assert (= (and b!6650029 res!2725004) b!6650030))

(assert (= (and b!6650030 res!2725009) b!6650025))

(assert (= (and b!6650035 (not res!2725005)) b!6650031))

(assert (= (and b!6650031 res!2725008) b!6650033))

(assert (= (and b!6650033 (not res!2725010)) b!6650037))

(assert (= (and b!6650037 (not res!2725007)) b!6650027))

(assert (= (or b!6650038 b!6650029 b!6650033) bm!587934))

(declare-fun m!7416050 () Bool)

(assert (=> b!6650036 m!7416050))

(assert (=> b!6650036 m!7416050))

(declare-fun m!7416052 () Bool)

(assert (=> b!6650036 m!7416052))

(declare-fun m!7416054 () Bool)

(assert (=> b!6650036 m!7416054))

(assert (=> b!6650036 m!7416052))

(assert (=> b!6650036 m!7416054))

(declare-fun m!7416056 () Bool)

(assert (=> b!6650036 m!7416056))

(assert (=> b!6650037 m!7416054))

(assert (=> b!6650037 m!7416054))

(declare-fun m!7416058 () Bool)

(assert (=> b!6650037 m!7416058))

(declare-fun m!7416060 () Bool)

(assert (=> bm!587934 m!7416060))

(declare-fun m!7416062 () Bool)

(assert (=> b!6650034 m!7416062))

(assert (=> b!6650030 m!7416054))

(assert (=> b!6650030 m!7416054))

(assert (=> b!6650030 m!7416058))

(assert (=> b!6650025 m!7416050))

(assert (=> d!2084056 m!7416060))

(declare-fun m!7416064 () Bool)

(assert (=> d!2084056 m!7416064))

(assert (=> b!6650027 m!7416050))

(assert (=> b!6649595 d!2084056))

(declare-fun d!2084058 () Bool)

(declare-fun dynLambda!26182 (Int Context!11792) Context!11792)

(assert (=> d!2084058 (= (map!15017 lt!2423749 lambda!372200) (set.insert (dynLambda!26182 lambda!372200 lt!2423750) (as set.empty (Set Context!11792))))))

(declare-fun lt!2424563 () Unit!159475)

(declare-fun choose!49718 ((Set Context!11792) Context!11792 Int) Unit!159475)

(assert (=> d!2084058 (= lt!2424563 (choose!49718 lt!2423749 lt!2423750 lambda!372200))))

(assert (=> d!2084058 (= lt!2423749 (set.insert lt!2423750 (as set.empty (Set Context!11792))))))

(assert (=> d!2084058 (= (lemmaMapOnSingletonSet!235 lt!2423749 lt!2423750 lambda!372200) lt!2424563)))

(declare-fun b_lambda!251135 () Bool)

(assert (=> (not b_lambda!251135) (not d!2084058)))

(declare-fun bs!1712003 () Bool)

(assert (= bs!1712003 d!2084058))

(declare-fun m!7416066 () Bool)

(assert (=> bs!1712003 m!7416066))

(assert (=> bs!1712003 m!7415720))

(assert (=> bs!1712003 m!7416066))

(declare-fun m!7416068 () Bool)

(assert (=> bs!1712003 m!7416068))

(assert (=> bs!1712003 m!7415470))

(declare-fun m!7416070 () Bool)

(assert (=> bs!1712003 m!7416070))

(assert (=> b!6649595 d!2084058))

(declare-fun d!2084060 () Bool)

(assert (=> d!2084060 (= (get!22850 lt!2423753) (v!52597 lt!2423753))))

(assert (=> b!6649595 d!2084060))

(declare-fun d!2084062 () Bool)

(assert (=> d!2084062 (isDefined!13106 (findConcatSeparationZippers!217 lt!2423749 (set.insert lt!2423885 (as set.empty (Set Context!11792))) Nil!65711 s!2326 s!2326))))

(declare-fun lt!2424566 () Unit!159475)

(declare-fun choose!49719 ((Set Context!11792) Context!11792 List!65835) Unit!159475)

(assert (=> d!2084062 (= lt!2424566 (choose!49719 lt!2423749 lt!2423885 s!2326))))

(declare-fun appendTo!209 ((Set Context!11792) Context!11792) (Set Context!11792))

(assert (=> d!2084062 (matchZipper!2524 (appendTo!209 lt!2423749 lt!2423885) s!2326)))

(assert (=> d!2084062 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!217 lt!2423749 lt!2423885 s!2326) lt!2424566)))

(declare-fun bs!1712004 () Bool)

(assert (= bs!1712004 d!2084062))

(assert (=> bs!1712004 m!7415722))

(declare-fun m!7416072 () Bool)

(assert (=> bs!1712004 m!7416072))

(declare-fun m!7416074 () Bool)

(assert (=> bs!1712004 m!7416074))

(declare-fun m!7416076 () Bool)

(assert (=> bs!1712004 m!7416076))

(declare-fun m!7416078 () Bool)

(assert (=> bs!1712004 m!7416078))

(assert (=> bs!1712004 m!7415722))

(assert (=> bs!1712004 m!7416076))

(declare-fun m!7416080 () Bool)

(assert (=> bs!1712004 m!7416080))

(assert (=> bs!1712004 m!7416072))

(assert (=> b!6649595 d!2084062))

(declare-fun d!2084064 () Bool)

(declare-fun choose!49720 ((Set Context!11792) Int) (Set Context!11792))

(assert (=> d!2084064 (= (map!15017 lt!2423749 lambda!372200) (choose!49720 lt!2423749 lambda!372200))))

(declare-fun bs!1712005 () Bool)

(assert (= bs!1712005 d!2084064))

(declare-fun m!7416082 () Bool)

(assert (=> bs!1712005 m!7416082))

(assert (=> b!6649595 d!2084064))

(declare-fun b!6650049 () Bool)

(declare-fun res!2725017 () Bool)

(declare-fun e!4021040 () Bool)

(assert (=> b!6650049 (=> (not res!2725017) (not e!4021040))))

(declare-fun lt!2424569 () List!65835)

(declare-fun size!40568 (List!65835) Int)

(assert (=> b!6650049 (= res!2725017 (= (size!40568 lt!2424569) (+ (size!40568 lt!2423850) (size!40568 (_2!36794 lt!2423861)))))))

(declare-fun b!6650048 () Bool)

(declare-fun e!4021039 () List!65835)

(assert (=> b!6650048 (= e!4021039 (Cons!65711 (h!72159 lt!2423850) (++!14666 (t!379504 lt!2423850) (_2!36794 lt!2423861))))))

(declare-fun d!2084066 () Bool)

(assert (=> d!2084066 e!4021040))

(declare-fun res!2725016 () Bool)

(assert (=> d!2084066 (=> (not res!2725016) (not e!4021040))))

(declare-fun content!12708 (List!65835) (Set C!33294))

(assert (=> d!2084066 (= res!2725016 (= (content!12708 lt!2424569) (set.union (content!12708 lt!2423850) (content!12708 (_2!36794 lt!2423861)))))))

(assert (=> d!2084066 (= lt!2424569 e!4021039)))

(declare-fun c!1227366 () Bool)

(assert (=> d!2084066 (= c!1227366 (is-Nil!65711 lt!2423850))))

(assert (=> d!2084066 (= (++!14666 lt!2423850 (_2!36794 lt!2423861)) lt!2424569)))

(declare-fun b!6650047 () Bool)

(assert (=> b!6650047 (= e!4021039 (_2!36794 lt!2423861))))

(declare-fun b!6650050 () Bool)

(assert (=> b!6650050 (= e!4021040 (or (not (= (_2!36794 lt!2423861) Nil!65711)) (= lt!2424569 lt!2423850)))))

(assert (= (and d!2084066 c!1227366) b!6650047))

(assert (= (and d!2084066 (not c!1227366)) b!6650048))

(assert (= (and d!2084066 res!2725016) b!6650049))

(assert (= (and b!6650049 res!2725017) b!6650050))

(declare-fun m!7416084 () Bool)

(assert (=> b!6650049 m!7416084))

(declare-fun m!7416086 () Bool)

(assert (=> b!6650049 m!7416086))

(declare-fun m!7416088 () Bool)

(assert (=> b!6650049 m!7416088))

(declare-fun m!7416090 () Bool)

(assert (=> b!6650048 m!7416090))

(declare-fun m!7416092 () Bool)

(assert (=> d!2084066 m!7416092))

(declare-fun m!7416094 () Bool)

(assert (=> d!2084066 m!7416094))

(declare-fun m!7416096 () Bool)

(assert (=> d!2084066 m!7416096))

(assert (=> b!6649595 d!2084066))

(declare-fun b!6650070 () Bool)

(declare-fun e!4021055 () Option!16403)

(declare-fun e!4021053 () Option!16403)

(assert (=> b!6650070 (= e!4021055 e!4021053)))

(declare-fun c!1227372 () Bool)

(assert (=> b!6650070 (= c!1227372 (is-Nil!65711 s!2326))))

(declare-fun b!6650071 () Bool)

(declare-fun res!2725029 () Bool)

(declare-fun e!4021054 () Bool)

(assert (=> b!6650071 (=> (not res!2725029) (not e!4021054))))

(declare-fun lt!2424578 () Option!16403)

(assert (=> b!6650071 (= res!2725029 (matchZipper!2524 lt!2423824 (_2!36794 (get!22850 lt!2424578))))))

(declare-fun b!6650072 () Bool)

(declare-fun e!4021052 () Bool)

(assert (=> b!6650072 (= e!4021052 (not (isDefined!13106 lt!2424578)))))

(declare-fun b!6650073 () Bool)

(assert (=> b!6650073 (= e!4021054 (= (++!14666 (_1!36794 (get!22850 lt!2424578)) (_2!36794 (get!22850 lt!2424578))) s!2326))))

(declare-fun b!6650074 () Bool)

(declare-fun res!2725032 () Bool)

(assert (=> b!6650074 (=> (not res!2725032) (not e!4021054))))

(assert (=> b!6650074 (= res!2725032 (matchZipper!2524 lt!2423749 (_1!36794 (get!22850 lt!2424578))))))

(declare-fun b!6650075 () Bool)

(assert (=> b!6650075 (= e!4021055 (Some!16402 (tuple2!66983 Nil!65711 s!2326)))))

(declare-fun b!6650076 () Bool)

(declare-fun lt!2424577 () Unit!159475)

(declare-fun lt!2424576 () Unit!159475)

(assert (=> b!6650076 (= lt!2424577 lt!2424576)))

(assert (=> b!6650076 (= (++!14666 (++!14666 Nil!65711 (Cons!65711 (h!72159 s!2326) Nil!65711)) (t!379504 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2651 (List!65835 C!33294 List!65835 List!65835) Unit!159475)

(assert (=> b!6650076 (= lt!2424576 (lemmaMoveElementToOtherListKeepsConcatEq!2651 Nil!65711 (h!72159 s!2326) (t!379504 s!2326) s!2326))))

(assert (=> b!6650076 (= e!4021053 (findConcatSeparationZippers!217 lt!2423749 lt!2423824 (++!14666 Nil!65711 (Cons!65711 (h!72159 s!2326) Nil!65711)) (t!379504 s!2326) s!2326))))

(declare-fun b!6650077 () Bool)

(declare-fun e!4021051 () Bool)

(assert (=> b!6650077 (= e!4021051 (matchZipper!2524 lt!2423824 s!2326))))

(declare-fun b!6650069 () Bool)

(assert (=> b!6650069 (= e!4021053 None!16402)))

(declare-fun d!2084068 () Bool)

(assert (=> d!2084068 e!4021052))

(declare-fun res!2725030 () Bool)

(assert (=> d!2084068 (=> res!2725030 e!4021052)))

(assert (=> d!2084068 (= res!2725030 e!4021054)))

(declare-fun res!2725031 () Bool)

(assert (=> d!2084068 (=> (not res!2725031) (not e!4021054))))

(assert (=> d!2084068 (= res!2725031 (isDefined!13106 lt!2424578))))

(assert (=> d!2084068 (= lt!2424578 e!4021055)))

(declare-fun c!1227371 () Bool)

(assert (=> d!2084068 (= c!1227371 e!4021051)))

(declare-fun res!2725028 () Bool)

(assert (=> d!2084068 (=> (not res!2725028) (not e!4021051))))

(assert (=> d!2084068 (= res!2725028 (matchZipper!2524 lt!2423749 Nil!65711))))

(assert (=> d!2084068 (= (++!14666 Nil!65711 s!2326) s!2326)))

(assert (=> d!2084068 (= (findConcatSeparationZippers!217 lt!2423749 lt!2423824 Nil!65711 s!2326 s!2326) lt!2424578)))

(assert (= (and d!2084068 res!2725028) b!6650077))

(assert (= (and d!2084068 c!1227371) b!6650075))

(assert (= (and d!2084068 (not c!1227371)) b!6650070))

(assert (= (and b!6650070 c!1227372) b!6650069))

(assert (= (and b!6650070 (not c!1227372)) b!6650076))

(assert (= (and d!2084068 res!2725031) b!6650074))

(assert (= (and b!6650074 res!2725032) b!6650071))

(assert (= (and b!6650071 res!2725029) b!6650073))

(assert (= (and d!2084068 (not res!2725030)) b!6650072))

(declare-fun m!7416098 () Bool)

(assert (=> b!6650072 m!7416098))

(assert (=> d!2084068 m!7416098))

(declare-fun m!7416100 () Bool)

(assert (=> d!2084068 m!7416100))

(declare-fun m!7416102 () Bool)

(assert (=> d!2084068 m!7416102))

(declare-fun m!7416104 () Bool)

(assert (=> b!6650073 m!7416104))

(declare-fun m!7416106 () Bool)

(assert (=> b!6650073 m!7416106))

(declare-fun m!7416108 () Bool)

(assert (=> b!6650076 m!7416108))

(assert (=> b!6650076 m!7416108))

(declare-fun m!7416110 () Bool)

(assert (=> b!6650076 m!7416110))

(declare-fun m!7416112 () Bool)

(assert (=> b!6650076 m!7416112))

(assert (=> b!6650076 m!7416108))

(declare-fun m!7416114 () Bool)

(assert (=> b!6650076 m!7416114))

(assert (=> b!6650071 m!7416104))

(declare-fun m!7416116 () Bool)

(assert (=> b!6650071 m!7416116))

(declare-fun m!7416118 () Bool)

(assert (=> b!6650077 m!7416118))

(assert (=> b!6650074 m!7416104))

(declare-fun m!7416120 () Bool)

(assert (=> b!6650074 m!7416120))

(assert (=> b!6649595 d!2084068))

(declare-fun d!2084070 () Bool)

(assert (=> d!2084070 (= (get!22850 (ite c!1227272 lt!2423740 lt!2423930)) (v!52597 (ite c!1227272 lt!2423740 lt!2423930)))))

(assert (=> bm!587270 d!2084070))

(assert (=> bm!587172 d!2084050))

(declare-fun d!2084072 () Bool)

(declare-fun choose!49721 ((Set Context!11792) Int) (Set Context!11792))

(assert (=> d!2084072 (= (flatMap!2017 (ite c!1227264 lt!2423879 (ite c!1227273 lt!2423939 lt!2423749)) (ite c!1227264 lambda!372185 (ite c!1227273 lambda!372185 lambda!372185))) (choose!49721 (ite c!1227264 lt!2423879 (ite c!1227273 lt!2423939 lt!2423749)) (ite c!1227264 lambda!372185 (ite c!1227273 lambda!372185 lambda!372185))))))

(declare-fun bs!1712006 () Bool)

(assert (= bs!1712006 d!2084072))

(declare-fun m!7416122 () Bool)

(assert (=> bs!1712006 m!7416122))

(assert (=> bm!587242 d!2084072))

(declare-fun e!4021072 () (Set Context!11792))

(declare-fun b!6650100 () Bool)

(assert (=> b!6650100 (= e!4021072 (set.insert (ite c!1227264 lt!2423839 lt!2423923) (as set.empty (Set Context!11792))))))

(declare-fun b!6650101 () Bool)

(declare-fun e!4021068 () (Set Context!11792))

(declare-fun call!587956 () (Set Context!11792))

(declare-fun call!587955 () (Set Context!11792))

(assert (=> b!6650101 (= e!4021068 (set.union call!587956 call!587955))))

(declare-fun b!6650102 () Bool)

(declare-fun c!1227385 () Bool)

(declare-fun e!4021073 () Bool)

(assert (=> b!6650102 (= c!1227385 e!4021073)))

(declare-fun res!2725035 () Bool)

(assert (=> b!6650102 (=> (not res!2725035) (not e!4021073))))

(assert (=> b!6650102 (= res!2725035 (is-Concat!25357 (ite c!1227264 (regOne!33537 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292)))))))

(declare-fun e!4021071 () (Set Context!11792))

(assert (=> b!6650102 (= e!4021068 e!4021071)))

(declare-fun b!6650103 () Bool)

(assert (=> b!6650103 (= e!4021073 (nullable!6505 (regOne!33536 (ite c!1227264 (regOne!33537 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))))))))

(declare-fun bm!587947 () Bool)

(declare-fun call!587957 () (Set Context!11792))

(assert (=> bm!587947 (= call!587957 call!587955)))

(declare-fun b!6650104 () Bool)

(declare-fun e!4021069 () (Set Context!11792))

(declare-fun call!587954 () (Set Context!11792))

(assert (=> b!6650104 (= e!4021069 call!587954)))

(declare-fun d!2084074 () Bool)

(declare-fun c!1227387 () Bool)

(assert (=> d!2084074 (= c!1227387 (and (is-ElementMatch!16512 (ite c!1227264 (regOne!33537 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292)))) (= (c!1227274 (ite c!1227264 (regOne!33537 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292)))) (h!72159 s!2326))))))

(assert (=> d!2084074 (= (derivationStepZipperDown!1760 (ite c!1227264 (regOne!33537 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (ite c!1227264 lt!2423839 lt!2423923) (h!72159 s!2326)) e!4021072)))

(declare-fun b!6650105 () Bool)

(assert (=> b!6650105 (= e!4021071 e!4021069)))

(declare-fun c!1227383 () Bool)

(assert (=> b!6650105 (= c!1227383 (is-Concat!25357 (ite c!1227264 (regOne!33537 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292)))))))

(declare-fun call!587952 () List!65836)

(declare-fun bm!587948 () Bool)

(declare-fun $colon$colon!2349 (List!65836 Regex!16512) List!65836)

(assert (=> bm!587948 (= call!587952 ($colon$colon!2349 (exprs!6396 (ite c!1227264 lt!2423839 lt!2423923)) (ite (or c!1227385 c!1227383) (regTwo!33536 (ite c!1227264 (regOne!33537 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292)))) (ite c!1227264 (regOne!33537 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))))))))

(declare-fun b!6650106 () Bool)

(assert (=> b!6650106 (= e!4021071 (set.union call!587956 call!587957))))

(declare-fun bm!587949 () Bool)

(declare-fun c!1227386 () Bool)

(assert (=> bm!587949 (= call!587956 (derivationStepZipperDown!1760 (ite c!1227386 (regOne!33537 (ite c!1227264 (regOne!33537 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292)))) (regOne!33536 (ite c!1227264 (regOne!33537 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))))) (ite c!1227386 (ite c!1227264 lt!2423839 lt!2423923) (Context!11793 call!587952)) (h!72159 s!2326)))))

(declare-fun bm!587950 () Bool)

(declare-fun call!587953 () List!65836)

(assert (=> bm!587950 (= call!587955 (derivationStepZipperDown!1760 (ite c!1227386 (regTwo!33537 (ite c!1227264 (regOne!33537 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292)))) (ite c!1227385 (regTwo!33536 (ite c!1227264 (regOne!33537 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292)))) (ite c!1227383 (regOne!33536 (ite c!1227264 (regOne!33537 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292)))) (reg!16841 (ite c!1227264 (regOne!33537 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))))))) (ite (or c!1227386 c!1227385) (ite c!1227264 lt!2423839 lt!2423923) (Context!11793 call!587953)) (h!72159 s!2326)))))

(declare-fun b!6650107 () Bool)

(declare-fun e!4021070 () (Set Context!11792))

(assert (=> b!6650107 (= e!4021070 call!587954)))

(declare-fun b!6650108 () Bool)

(declare-fun c!1227384 () Bool)

(assert (=> b!6650108 (= c!1227384 (is-Star!16512 (ite c!1227264 (regOne!33537 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292)))))))

(assert (=> b!6650108 (= e!4021069 e!4021070)))

(declare-fun b!6650109 () Bool)

(assert (=> b!6650109 (= e!4021070 (as set.empty (Set Context!11792)))))

(declare-fun b!6650110 () Bool)

(assert (=> b!6650110 (= e!4021072 e!4021068)))

(assert (=> b!6650110 (= c!1227386 (is-Union!16512 (ite c!1227264 (regOne!33537 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292)))))))

(declare-fun bm!587951 () Bool)

(assert (=> bm!587951 (= call!587953 call!587952)))

(declare-fun bm!587952 () Bool)

(assert (=> bm!587952 (= call!587954 call!587957)))

(assert (= (and d!2084074 c!1227387) b!6650100))

(assert (= (and d!2084074 (not c!1227387)) b!6650110))

(assert (= (and b!6650110 c!1227386) b!6650101))

(assert (= (and b!6650110 (not c!1227386)) b!6650102))

(assert (= (and b!6650102 res!2725035) b!6650103))

(assert (= (and b!6650102 c!1227385) b!6650106))

(assert (= (and b!6650102 (not c!1227385)) b!6650105))

(assert (= (and b!6650105 c!1227383) b!6650104))

(assert (= (and b!6650105 (not c!1227383)) b!6650108))

(assert (= (and b!6650108 c!1227384) b!6650107))

(assert (= (and b!6650108 (not c!1227384)) b!6650109))

(assert (= (or b!6650104 b!6650107) bm!587951))

(assert (= (or b!6650104 b!6650107) bm!587952))

(assert (= (or b!6650106 bm!587951) bm!587948))

(assert (= (or b!6650106 bm!587952) bm!587947))

(assert (= (or b!6650101 bm!587947) bm!587950))

(assert (= (or b!6650101 b!6650106) bm!587949))

(declare-fun m!7416124 () Bool)

(assert (=> bm!587948 m!7416124))

(declare-fun m!7416126 () Bool)

(assert (=> b!6650100 m!7416126))

(declare-fun m!7416128 () Bool)

(assert (=> bm!587950 m!7416128))

(declare-fun m!7416130 () Bool)

(assert (=> bm!587949 m!7416130))

(declare-fun m!7416132 () Bool)

(assert (=> b!6650103 m!7416132))

(assert (=> bm!587228 d!2084074))

(declare-fun d!2084076 () Bool)

(declare-fun c!1227388 () Bool)

(assert (=> d!2084076 (= c!1227388 (isEmpty!38022 (ite c!1227264 (t!379504 s!2326) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227266 (ite c!1227272 lt!2423866 (ite c!1227261 lt!2423922 s!2326)) (t!379504 s!2326))))))))

(declare-fun e!4021074 () Bool)

(assert (=> d!2084076 (= (matchZipper!2524 (ite c!1227264 (set.union lt!2423844 lt!2423893) (ite c!1227273 lt!2423802 (ite c!1227262 z!1189 (ite c!1227266 (ite c!1227272 (set.insert (Context!11793 call!587226) (as set.empty (Set Context!11792))) (ite c!1227261 (set.insert (Context!11793 lt!2423887) (as set.empty (Set Context!11792))) lt!2423868)) (ite c!1227269 (set.union lt!2423772 lt!2423893) lt!2423772))))) (ite c!1227264 (t!379504 s!2326) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227266 (ite c!1227272 lt!2423866 (ite c!1227261 lt!2423922 s!2326)) (t!379504 s!2326))))) e!4021074)))

(declare-fun b!6650111 () Bool)

(assert (=> b!6650111 (= e!4021074 (nullableZipper!2253 (ite c!1227264 (set.union lt!2423844 lt!2423893) (ite c!1227273 lt!2423802 (ite c!1227262 z!1189 (ite c!1227266 (ite c!1227272 (set.insert (Context!11793 call!587226) (as set.empty (Set Context!11792))) (ite c!1227261 (set.insert (Context!11793 lt!2423887) (as set.empty (Set Context!11792))) lt!2423868)) (ite c!1227269 (set.union lt!2423772 lt!2423893) lt!2423772)))))))))

(declare-fun b!6650112 () Bool)

(assert (=> b!6650112 (= e!4021074 (matchZipper!2524 (derivationStepZipper!2478 (ite c!1227264 (set.union lt!2423844 lt!2423893) (ite c!1227273 lt!2423802 (ite c!1227262 z!1189 (ite c!1227266 (ite c!1227272 (set.insert (Context!11793 call!587226) (as set.empty (Set Context!11792))) (ite c!1227261 (set.insert (Context!11793 lt!2423887) (as set.empty (Set Context!11792))) lt!2423868)) (ite c!1227269 (set.union lt!2423772 lt!2423893) lt!2423772))))) (head!13467 (ite c!1227264 (t!379504 s!2326) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227266 (ite c!1227272 lt!2423866 (ite c!1227261 lt!2423922 s!2326)) (t!379504 s!2326)))))) (tail!12552 (ite c!1227264 (t!379504 s!2326) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227266 (ite c!1227272 lt!2423866 (ite c!1227261 lt!2423922 s!2326)) (t!379504 s!2326)))))))))

(assert (= (and d!2084076 c!1227388) b!6650111))

(assert (= (and d!2084076 (not c!1227388)) b!6650112))

(declare-fun m!7416134 () Bool)

(assert (=> d!2084076 m!7416134))

(declare-fun m!7416136 () Bool)

(assert (=> b!6650111 m!7416136))

(declare-fun m!7416138 () Bool)

(assert (=> b!6650112 m!7416138))

(assert (=> b!6650112 m!7416138))

(declare-fun m!7416140 () Bool)

(assert (=> b!6650112 m!7416140))

(declare-fun m!7416142 () Bool)

(assert (=> b!6650112 m!7416142))

(assert (=> b!6650112 m!7416140))

(assert (=> b!6650112 m!7416142))

(declare-fun m!7416144 () Bool)

(assert (=> b!6650112 m!7416144))

(assert (=> bm!587279 d!2084076))

(declare-fun d!2084078 () Bool)

(assert (=> d!2084078 (= (matchR!8695 (Concat!25357 (Concat!25357 (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292))) (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) lt!2423835)) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (regTwo!33536 r!7292)))) s!2326) (matchR!8695 (Concat!25357 (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292))) (Concat!25357 (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) lt!2423835) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (regTwo!33536 r!7292))))) s!2326))))

(declare-fun lt!2424581 () Unit!159475)

(declare-fun choose!49722 (Regex!16512 Regex!16512 Regex!16512 List!65835) Unit!159475)

(assert (=> d!2084078 (= lt!2424581 (choose!49722 (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292))) (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) lt!2423835) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (regTwo!33536 r!7292))) s!2326))))

(declare-fun e!4021077 () Bool)

(assert (=> d!2084078 e!4021077))

(declare-fun res!2725040 () Bool)

(assert (=> d!2084078 (=> (not res!2725040) (not e!4021077))))

(assert (=> d!2084078 (= res!2725040 (validRegex!8248 (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))))))

(assert (=> d!2084078 (= (lemmaConcatAssociative!149 (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292))) (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) lt!2423835) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (regTwo!33536 r!7292))) s!2326) lt!2424581)))

(declare-fun b!6650117 () Bool)

(declare-fun res!2725041 () Bool)

(assert (=> b!6650117 (=> (not res!2725041) (not e!4021077))))

(assert (=> b!6650117 (= res!2725041 (validRegex!8248 (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) lt!2423835)))))

(declare-fun b!6650118 () Bool)

(assert (=> b!6650118 (= e!4021077 (validRegex!8248 (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (regTwo!33536 r!7292)))))))

(assert (= (and d!2084078 res!2725040) b!6650117))

(assert (= (and b!6650117 res!2725041) b!6650118))

(declare-fun m!7416146 () Bool)

(assert (=> d!2084078 m!7416146))

(declare-fun m!7416148 () Bool)

(assert (=> d!2084078 m!7416148))

(declare-fun m!7416150 () Bool)

(assert (=> d!2084078 m!7416150))

(declare-fun m!7416152 () Bool)

(assert (=> d!2084078 m!7416152))

(declare-fun m!7416154 () Bool)

(assert (=> b!6650117 m!7416154))

(declare-fun m!7416156 () Bool)

(assert (=> b!6650118 m!7416156))

(assert (=> bm!587164 d!2084078))

(declare-fun d!2084080 () Bool)

(assert (=> d!2084080 (= (Exists!3582 (ite c!1227273 lambda!372188 (ite c!1227272 lambda!372197 (ite c!1227261 lambda!372204 lambda!372207)))) (choose!49715 (ite c!1227273 lambda!372188 (ite c!1227272 lambda!372197 (ite c!1227261 lambda!372204 lambda!372207)))))))

(declare-fun bs!1712007 () Bool)

(assert (= bs!1712007 d!2084080))

(declare-fun m!7416158 () Bool)

(assert (=> bs!1712007 m!7416158))

(assert (=> bm!587213 d!2084080))

(declare-fun bs!1712008 () Bool)

(declare-fun b!6650154 () Bool)

(assert (= bs!1712008 (and b!6650154 b!6649552)))

(declare-fun lambda!372351 () Int)

(assert (=> bs!1712008 (not (= lambda!372351 lambda!372192))))

(declare-fun bs!1712009 () Bool)

(assert (= bs!1712009 (and b!6650154 b!6649540)))

(assert (=> bs!1712009 (not (= lambda!372351 lambda!372184))))

(declare-fun bs!1712010 () Bool)

(assert (= bs!1712010 (and b!6650154 b!6649586)))

(assert (=> bs!1712010 (= (and (= (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) Nil!65711) (= (reg!16841 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)) lt!2423835)) (= lambda!372351 lambda!372209))))

(declare-fun bs!1712011 () Bool)

(assert (= bs!1712011 (and b!6650154 b!6649562)))

(assert (=> bs!1712011 (not (= lambda!372351 lambda!372195))))

(declare-fun bs!1712012 () Bool)

(assert (= bs!1712012 (and b!6650154 b!6649595)))

(assert (=> bs!1712012 (not (= lambda!372351 lambda!372203))))

(assert (=> bs!1712008 (not (= lambda!372351 lambda!372193))))

(assert (=> bs!1712012 (= (and (= (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) (_1!36794 lt!2423861)) (= (reg!16841 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)) lt!2423835)) (= lambda!372351 lambda!372206))))

(declare-fun bs!1712013 () Bool)

(assert (= bs!1712013 (and b!6650154 b!6649576)))

(assert (=> bs!1712013 (not (= lambda!372351 lambda!372196))))

(assert (=> bs!1712010 (not (= lambda!372351 lambda!372207))))

(declare-fun bs!1712014 () Bool)

(assert (= bs!1712014 (and b!6650154 b!6649550)))

(assert (=> bs!1712014 (not (= lambda!372351 lambda!372186))))

(assert (=> bs!1712009 (not (= lambda!372351 lambda!372183))))

(assert (=> bs!1712014 (not (= lambda!372351 lambda!372188))))

(assert (=> bs!1712012 (not (= lambda!372351 lambda!372204))))

(assert (=> bs!1712013 (not (= lambda!372351 lambda!372198))))

(assert (=> bs!1712014 (not (= lambda!372351 lambda!372189))))

(assert (=> bs!1712011 (not (= lambda!372351 lambda!372194))))

(assert (=> bs!1712010 (not (= lambda!372351 lambda!372208))))

(assert (=> bs!1712008 (not (= lambda!372351 lambda!372191))))

(assert (=> bs!1712008 (not (= lambda!372351 lambda!372190))))

(assert (=> bs!1712012 (not (= lambda!372351 lambda!372202))))

(assert (=> bs!1712013 (= (and (= (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) (_1!36794 lt!2423817)) (= (reg!16841 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)) lt!2423835)) (= lambda!372351 lambda!372197))))

(assert (=> bs!1712014 (not (= lambda!372351 lambda!372187))))

(assert (=> bs!1712012 (not (= lambda!372351 lambda!372205))))

(assert (=> b!6650154 true))

(assert (=> b!6650154 true))

(declare-fun bs!1712015 () Bool)

(declare-fun b!6650151 () Bool)

(assert (= bs!1712015 (and b!6650151 b!6650154)))

(declare-fun lambda!372352 () Int)

(assert (=> bs!1712015 (not (= lambda!372352 lambda!372351))))

(declare-fun bs!1712016 () Bool)

(assert (= bs!1712016 (and b!6650151 b!6649552)))

(assert (=> bs!1712016 (not (= lambda!372352 lambda!372192))))

(declare-fun bs!1712017 () Bool)

(assert (= bs!1712017 (and b!6650151 b!6649540)))

(assert (=> bs!1712017 (= (and (= (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (regOne!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) (regOne!33536 r!7292)) (= (regTwo!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) (regTwo!33536 r!7292))) (= lambda!372352 lambda!372184))))

(declare-fun bs!1712018 () Bool)

(assert (= bs!1712018 (and b!6650151 b!6649586)))

(assert (=> bs!1712018 (not (= lambda!372352 lambda!372209))))

(declare-fun bs!1712019 () Bool)

(assert (= bs!1712019 (and b!6650151 b!6649562)))

(assert (=> bs!1712019 (= (and (= (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (regOne!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) lt!2423835) (= (regTwo!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) (regTwo!33536 r!7292))) (= lambda!372352 lambda!372195))))

(declare-fun bs!1712020 () Bool)

(assert (= bs!1712020 (and b!6650151 b!6649595)))

(assert (=> bs!1712020 (= (and (= (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (regOne!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) lt!2423842) (= (regTwo!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) (regTwo!33536 r!7292))) (= lambda!372352 lambda!372203))))

(assert (=> bs!1712016 (= (and (= (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (regOne!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) lt!2423798)) (= lambda!372352 lambda!372193))))

(assert (=> bs!1712020 (not (= lambda!372352 lambda!372206))))

(declare-fun bs!1712021 () Bool)

(assert (= bs!1712021 (and b!6650151 b!6649576)))

(assert (=> bs!1712021 (not (= lambda!372352 lambda!372196))))

(assert (=> bs!1712018 (not (= lambda!372352 lambda!372207))))

(declare-fun bs!1712022 () Bool)

(assert (= bs!1712022 (and b!6650151 b!6649550)))

(assert (=> bs!1712022 (not (= lambda!372352 lambda!372186))))

(assert (=> bs!1712017 (not (= lambda!372352 lambda!372183))))

(assert (=> bs!1712022 (not (= lambda!372352 lambda!372188))))

(assert (=> bs!1712020 (not (= lambda!372352 lambda!372204))))

(assert (=> bs!1712021 (= (and (= (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) (_1!36794 lt!2423817)) (= (regOne!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) lt!2423835)) (= lambda!372352 lambda!372198))))

(assert (=> bs!1712022 (= (and (= (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (regOne!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) lt!2423829)) (= lambda!372352 lambda!372189))))

(assert (=> bs!1712019 (not (= lambda!372352 lambda!372194))))

(assert (=> bs!1712018 (= (and (= (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) Nil!65711) (= (regOne!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) lt!2423835)) (= lambda!372352 lambda!372208))))

(assert (=> bs!1712016 (= (and (= (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (regOne!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) lt!2423938)) (= lambda!372352 lambda!372191))))

(assert (=> bs!1712016 (not (= lambda!372352 lambda!372190))))

(assert (=> bs!1712020 (not (= lambda!372352 lambda!372202))))

(assert (=> bs!1712021 (not (= lambda!372352 lambda!372197))))

(assert (=> bs!1712022 (= (and (= (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (regOne!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) lt!2423854)) (= lambda!372352 lambda!372187))))

(assert (=> bs!1712020 (= (and (= (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) (_1!36794 lt!2423861)) (= (regOne!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) lt!2423835)) (= lambda!372352 lambda!372205))))

(assert (=> b!6650151 true))

(assert (=> b!6650151 true))

(declare-fun e!4021098 () Bool)

(declare-fun call!587962 () Bool)

(assert (=> b!6650151 (= e!4021098 call!587962)))

(declare-fun b!6650152 () Bool)

(declare-fun e!4021099 () Bool)

(declare-fun e!4021097 () Bool)

(assert (=> b!6650152 (= e!4021099 e!4021097)))

(declare-fun res!2725060 () Bool)

(assert (=> b!6650152 (= res!2725060 (not (is-EmptyLang!16512 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)))))))

(assert (=> b!6650152 (=> (not res!2725060) (not e!4021097))))

(declare-fun b!6650153 () Bool)

(declare-fun e!4021101 () Bool)

(assert (=> b!6650153 (= e!4021101 (matchRSpec!3613 (regTwo!33537 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))))))

(declare-fun e!4021100 () Bool)

(assert (=> b!6650154 (= e!4021100 call!587962)))

(declare-fun c!1227399 () Bool)

(declare-fun d!2084082 () Bool)

(assert (=> d!2084082 (= c!1227399 (is-EmptyExpr!16512 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))))))

(assert (=> d!2084082 (= (matchRSpec!3613 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)) (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) e!4021099)))

(declare-fun b!6650155 () Bool)

(declare-fun c!1227400 () Bool)

(assert (=> b!6650155 (= c!1227400 (is-ElementMatch!16512 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))))))

(declare-fun e!4021096 () Bool)

(assert (=> b!6650155 (= e!4021097 e!4021096)))

(declare-fun c!1227397 () Bool)

(declare-fun b!6650156 () Bool)

(assert (=> b!6650156 (= c!1227397 (is-Union!16512 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))))))

(declare-fun e!4021102 () Bool)

(assert (=> b!6650156 (= e!4021096 e!4021102)))

(declare-fun b!6650157 () Bool)

(assert (=> b!6650157 (= e!4021096 (= (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) (Cons!65711 (c!1227274 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) Nil!65711)))))

(declare-fun bm!587957 () Bool)

(declare-fun call!587963 () Bool)

(assert (=> bm!587957 (= call!587963 (isEmpty!38022 (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))))))

(declare-fun b!6650158 () Bool)

(assert (=> b!6650158 (= e!4021102 e!4021098)))

(declare-fun c!1227398 () Bool)

(assert (=> b!6650158 (= c!1227398 (is-Star!16512 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))))))

(declare-fun bm!587958 () Bool)

(assert (=> bm!587958 (= call!587962 (Exists!3582 (ite c!1227398 lambda!372351 lambda!372352)))))

(declare-fun b!6650159 () Bool)

(assert (=> b!6650159 (= e!4021102 e!4021101)))

(declare-fun res!2725059 () Bool)

(assert (=> b!6650159 (= res!2725059 (matchRSpec!3613 (regOne!33537 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))) (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))))))

(assert (=> b!6650159 (=> res!2725059 e!4021101)))

(declare-fun b!6650160 () Bool)

(assert (=> b!6650160 (= e!4021099 call!587963)))

(declare-fun b!6650161 () Bool)

(declare-fun res!2725058 () Bool)

(assert (=> b!6650161 (=> res!2725058 e!4021100)))

(assert (=> b!6650161 (= res!2725058 call!587963)))

(assert (=> b!6650161 (= e!4021098 e!4021100)))

(assert (= (and d!2084082 c!1227399) b!6650160))

(assert (= (and d!2084082 (not c!1227399)) b!6650152))

(assert (= (and b!6650152 res!2725060) b!6650155))

(assert (= (and b!6650155 c!1227400) b!6650157))

(assert (= (and b!6650155 (not c!1227400)) b!6650156))

(assert (= (and b!6650156 c!1227397) b!6650159))

(assert (= (and b!6650156 (not c!1227397)) b!6650158))

(assert (= (and b!6650159 (not res!2725059)) b!6650153))

(assert (= (and b!6650158 c!1227398) b!6650161))

(assert (= (and b!6650158 (not c!1227398)) b!6650151))

(assert (= (and b!6650161 (not res!2725058)) b!6650154))

(assert (= (or b!6650154 b!6650151) bm!587958))

(assert (= (or b!6650160 b!6650161) bm!587957))

(declare-fun m!7416160 () Bool)

(assert (=> b!6650153 m!7416160))

(declare-fun m!7416162 () Bool)

(assert (=> bm!587957 m!7416162))

(declare-fun m!7416164 () Bool)

(assert (=> bm!587958 m!7416164))

(declare-fun m!7416166 () Bool)

(assert (=> b!6650159 m!7416166))

(assert (=> bm!587197 d!2084082))

(declare-fun d!2084084 () Bool)

(declare-fun dynLambda!26183 (Int Context!11792) (Set Context!11792))

(assert (=> d!2084084 (= (flatMap!2017 (ite c!1227262 lt!2423765 lt!2423808) (ite c!1227262 lambda!372185 lambda!372185)) (dynLambda!26183 (ite c!1227262 lambda!372185 lambda!372185) (ite c!1227262 lt!2423914 lt!2423793)))))

(declare-fun lt!2424584 () Unit!159475)

(declare-fun choose!49723 ((Set Context!11792) Context!11792 Int) Unit!159475)

(assert (=> d!2084084 (= lt!2424584 (choose!49723 (ite c!1227262 lt!2423765 lt!2423808) (ite c!1227262 lt!2423914 lt!2423793) (ite c!1227262 lambda!372185 lambda!372185)))))

(assert (=> d!2084084 (= (ite c!1227262 lt!2423765 lt!2423808) (set.insert (ite c!1227262 lt!2423914 lt!2423793) (as set.empty (Set Context!11792))))))

(assert (=> d!2084084 (= (lemmaFlatMapOnSingletonSet!1543 (ite c!1227262 lt!2423765 lt!2423808) (ite c!1227262 lt!2423914 lt!2423793) (ite c!1227262 lambda!372185 lambda!372185)) lt!2424584)))

(declare-fun b_lambda!251137 () Bool)

(assert (=> (not b_lambda!251137) (not d!2084084)))

(declare-fun bs!1712023 () Bool)

(assert (= bs!1712023 d!2084084))

(declare-fun m!7416168 () Bool)

(assert (=> bs!1712023 m!7416168))

(declare-fun m!7416170 () Bool)

(assert (=> bs!1712023 m!7416170))

(declare-fun m!7416172 () Bool)

(assert (=> bs!1712023 m!7416172))

(declare-fun m!7416174 () Bool)

(assert (=> bs!1712023 m!7416174))

(assert (=> bm!587295 d!2084084))

(declare-fun b!6650164 () Bool)

(declare-fun res!2725062 () Bool)

(declare-fun e!4021104 () Bool)

(assert (=> b!6650164 (=> (not res!2725062) (not e!4021104))))

(declare-fun lt!2424585 () List!65835)

(assert (=> b!6650164 (= res!2725062 (= (size!40568 lt!2424585) (+ (size!40568 (ite c!1227272 lt!2423836 (_1!36794 lt!2423904))) (size!40568 (ite c!1227272 (_2!36794 lt!2423817) (_2!36794 lt!2423904))))))))

(declare-fun b!6650163 () Bool)

(declare-fun e!4021103 () List!65835)

(assert (=> b!6650163 (= e!4021103 (Cons!65711 (h!72159 (ite c!1227272 lt!2423836 (_1!36794 lt!2423904))) (++!14666 (t!379504 (ite c!1227272 lt!2423836 (_1!36794 lt!2423904))) (ite c!1227272 (_2!36794 lt!2423817) (_2!36794 lt!2423904)))))))

(declare-fun d!2084086 () Bool)

(assert (=> d!2084086 e!4021104))

(declare-fun res!2725061 () Bool)

(assert (=> d!2084086 (=> (not res!2725061) (not e!4021104))))

(assert (=> d!2084086 (= res!2725061 (= (content!12708 lt!2424585) (set.union (content!12708 (ite c!1227272 lt!2423836 (_1!36794 lt!2423904))) (content!12708 (ite c!1227272 (_2!36794 lt!2423817) (_2!36794 lt!2423904))))))))

(assert (=> d!2084086 (= lt!2424585 e!4021103)))

(declare-fun c!1227401 () Bool)

(assert (=> d!2084086 (= c!1227401 (is-Nil!65711 (ite c!1227272 lt!2423836 (_1!36794 lt!2423904))))))

(assert (=> d!2084086 (= (++!14666 (ite c!1227272 lt!2423836 (_1!36794 lt!2423904)) (ite c!1227272 (_2!36794 lt!2423817) (_2!36794 lt!2423904))) lt!2424585)))

(declare-fun b!6650162 () Bool)

(assert (=> b!6650162 (= e!4021103 (ite c!1227272 (_2!36794 lt!2423817) (_2!36794 lt!2423904)))))

(declare-fun b!6650165 () Bool)

(assert (=> b!6650165 (= e!4021104 (or (not (= (ite c!1227272 (_2!36794 lt!2423817) (_2!36794 lt!2423904)) Nil!65711)) (= lt!2424585 (ite c!1227272 lt!2423836 (_1!36794 lt!2423904)))))))

(assert (= (and d!2084086 c!1227401) b!6650162))

(assert (= (and d!2084086 (not c!1227401)) b!6650163))

(assert (= (and d!2084086 res!2725061) b!6650164))

(assert (= (and b!6650164 res!2725062) b!6650165))

(declare-fun m!7416176 () Bool)

(assert (=> b!6650164 m!7416176))

(declare-fun m!7416178 () Bool)

(assert (=> b!6650164 m!7416178))

(declare-fun m!7416180 () Bool)

(assert (=> b!6650164 m!7416180))

(declare-fun m!7416182 () Bool)

(assert (=> b!6650163 m!7416182))

(declare-fun m!7416184 () Bool)

(assert (=> d!2084086 m!7416184))

(declare-fun m!7416186 () Bool)

(assert (=> d!2084086 m!7416186))

(declare-fun m!7416188 () Bool)

(assert (=> d!2084086 m!7416188))

(assert (=> bm!587283 d!2084086))

(declare-fun b!6650200 () Bool)

(declare-fun c!1227421 () Bool)

(assert (=> b!6650200 (= c!1227421 (is-Union!16512 r!7292))))

(declare-fun e!4021127 () Int)

(declare-fun e!4021130 () Int)

(assert (=> b!6650200 (= e!4021127 e!4021130)))

(declare-fun bm!587973 () Bool)

(declare-fun call!587984 () Int)

(declare-fun call!587979 () Int)

(declare-fun call!587978 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!587973 (= call!587978 (maxBigInt!0 (ite c!1227421 call!587979 call!587984) (ite c!1227421 call!587984 call!587979)))))

(declare-fun bm!587974 () Bool)

(declare-fun call!587980 () Int)

(assert (=> bm!587974 (= call!587979 call!587980)))

(declare-fun b!6650201 () Bool)

(declare-fun e!4021129 () Bool)

(declare-fun e!4021125 () Bool)

(assert (=> b!6650201 (= e!4021129 e!4021125)))

(declare-fun c!1227418 () Bool)

(assert (=> b!6650201 (= c!1227418 (is-Concat!25357 r!7292))))

(declare-fun b!6650202 () Bool)

(declare-fun e!4021126 () Int)

(assert (=> b!6650202 (= e!4021126 1)))

(declare-fun b!6650203 () Bool)

(declare-fun e!4021132 () Int)

(assert (=> b!6650203 (= e!4021132 e!4021127)))

(declare-fun c!1227417 () Bool)

(assert (=> b!6650203 (= c!1227417 (is-Star!16512 r!7292))))

(declare-fun b!6650204 () Bool)

(declare-fun e!4021128 () Bool)

(declare-fun lt!2424588 () Int)

(declare-fun call!587981 () Int)

(assert (=> b!6650204 (= e!4021128 (> lt!2424588 call!587981))))

(declare-fun bm!587975 () Bool)

(declare-fun c!1227416 () Bool)

(assert (=> bm!587975 (= call!587981 (regexDepth!375 (ite c!1227416 (regTwo!33537 r!7292) (ite c!1227418 (regOne!33536 r!7292) (reg!16841 r!7292)))))))

(declare-fun bm!587976 () Bool)

(assert (=> bm!587976 (= call!587984 (regexDepth!375 (ite c!1227421 (regTwo!33537 r!7292) (regOne!33536 r!7292))))))

(declare-fun bm!587977 () Bool)

(declare-fun call!587982 () Int)

(assert (=> bm!587977 (= call!587982 (regexDepth!375 (ite c!1227416 (regOne!33537 r!7292) (regTwo!33536 r!7292))))))

(declare-fun b!6650206 () Bool)

(declare-fun e!4021134 () Bool)

(assert (=> b!6650206 (= e!4021134 (> lt!2424588 call!587982))))

(declare-fun b!6650207 () Bool)

(declare-fun e!4021133 () Bool)

(declare-fun call!587983 () Int)

(assert (=> b!6650207 (= e!4021133 (> lt!2424588 call!587983))))

(declare-fun b!6650208 () Bool)

(assert (=> b!6650208 (= e!4021129 e!4021128)))

(declare-fun res!2725070 () Bool)

(assert (=> b!6650208 (= res!2725070 (> lt!2424588 call!587982))))

(assert (=> b!6650208 (=> (not res!2725070) (not e!4021128))))

(declare-fun bm!587978 () Bool)

(assert (=> bm!587978 (= call!587980 (regexDepth!375 (ite c!1227417 (reg!16841 r!7292) (ite c!1227421 (regOne!33537 r!7292) (regTwo!33536 r!7292)))))))

(declare-fun b!6650209 () Bool)

(assert (=> b!6650209 (= e!4021130 e!4021126)))

(declare-fun c!1227420 () Bool)

(assert (=> b!6650209 (= c!1227420 (is-Concat!25357 r!7292))))

(declare-fun b!6650210 () Bool)

(declare-fun res!2725069 () Bool)

(assert (=> b!6650210 (=> (not res!2725069) (not e!4021134))))

(assert (=> b!6650210 (= res!2725069 (> lt!2424588 call!587983))))

(assert (=> b!6650210 (= e!4021125 e!4021134)))

(declare-fun b!6650211 () Bool)

(assert (=> b!6650211 (= e!4021130 (+ 1 call!587978))))

(declare-fun bm!587979 () Bool)

(assert (=> bm!587979 (= call!587983 call!587981)))

(declare-fun b!6650212 () Bool)

(declare-fun c!1227419 () Bool)

(assert (=> b!6650212 (= c!1227419 (is-Star!16512 r!7292))))

(assert (=> b!6650212 (= e!4021125 e!4021133)))

(declare-fun b!6650213 () Bool)

(declare-fun e!4021131 () Bool)

(assert (=> b!6650213 (= e!4021131 e!4021129)))

(assert (=> b!6650213 (= c!1227416 (is-Union!16512 r!7292))))

(declare-fun b!6650214 () Bool)

(assert (=> b!6650214 (= e!4021132 1)))

(declare-fun d!2084088 () Bool)

(assert (=> d!2084088 e!4021131))

(declare-fun res!2725071 () Bool)

(assert (=> d!2084088 (=> (not res!2725071) (not e!4021131))))

(assert (=> d!2084088 (= res!2725071 (> lt!2424588 0))))

(assert (=> d!2084088 (= lt!2424588 e!4021132)))

(declare-fun c!1227422 () Bool)

(assert (=> d!2084088 (= c!1227422 (is-ElementMatch!16512 r!7292))))

(assert (=> d!2084088 (= (regexDepth!375 r!7292) lt!2424588)))

(declare-fun b!6650205 () Bool)

(assert (=> b!6650205 (= e!4021126 (+ 1 call!587978))))

(declare-fun b!6650215 () Bool)

(assert (=> b!6650215 (= e!4021127 (+ 1 call!587980))))

(declare-fun b!6650216 () Bool)

(assert (=> b!6650216 (= e!4021133 (= lt!2424588 1))))

(assert (= (and d!2084088 c!1227422) b!6650214))

(assert (= (and d!2084088 (not c!1227422)) b!6650203))

(assert (= (and b!6650203 c!1227417) b!6650215))

(assert (= (and b!6650203 (not c!1227417)) b!6650200))

(assert (= (and b!6650200 c!1227421) b!6650211))

(assert (= (and b!6650200 (not c!1227421)) b!6650209))

(assert (= (and b!6650209 c!1227420) b!6650205))

(assert (= (and b!6650209 (not c!1227420)) b!6650202))

(assert (= (or b!6650211 b!6650205) bm!587976))

(assert (= (or b!6650211 b!6650205) bm!587974))

(assert (= (or b!6650211 b!6650205) bm!587973))

(assert (= (or b!6650215 bm!587974) bm!587978))

(assert (= (and d!2084088 res!2725071) b!6650213))

(assert (= (and b!6650213 c!1227416) b!6650208))

(assert (= (and b!6650213 (not c!1227416)) b!6650201))

(assert (= (and b!6650208 res!2725070) b!6650204))

(assert (= (and b!6650201 c!1227418) b!6650210))

(assert (= (and b!6650201 (not c!1227418)) b!6650212))

(assert (= (and b!6650210 res!2725069) b!6650206))

(assert (= (and b!6650212 c!1227419) b!6650207))

(assert (= (and b!6650212 (not c!1227419)) b!6650216))

(assert (= (or b!6650210 b!6650207) bm!587979))

(assert (= (or b!6650204 bm!587979) bm!587975))

(assert (= (or b!6650208 b!6650206) bm!587977))

(declare-fun m!7416190 () Bool)

(assert (=> bm!587977 m!7416190))

(declare-fun m!7416192 () Bool)

(assert (=> bm!587976 m!7416192))

(declare-fun m!7416194 () Bool)

(assert (=> bm!587975 m!7416194))

(declare-fun m!7416196 () Bool)

(assert (=> bm!587973 m!7416196))

(declare-fun m!7416198 () Bool)

(assert (=> bm!587978 m!7416198))

(assert (=> b!6649587 d!2084088))

(declare-fun b!6650217 () Bool)

(declare-fun c!1227428 () Bool)

(assert (=> b!6650217 (= c!1227428 (is-Union!16512 (generalisedConcat!2109 (t!379505 (exprs!6396 (h!72161 zl!343))))))))

(declare-fun e!4021137 () Int)

(declare-fun e!4021140 () Int)

(assert (=> b!6650217 (= e!4021137 e!4021140)))

(declare-fun bm!587980 () Bool)

(declare-fun call!587985 () Int)

(declare-fun call!587991 () Int)

(declare-fun call!587986 () Int)

(assert (=> bm!587980 (= call!587985 (maxBigInt!0 (ite c!1227428 call!587986 call!587991) (ite c!1227428 call!587991 call!587986)))))

(declare-fun bm!587981 () Bool)

(declare-fun call!587987 () Int)

(assert (=> bm!587981 (= call!587986 call!587987)))

(declare-fun b!6650218 () Bool)

(declare-fun e!4021139 () Bool)

(declare-fun e!4021135 () Bool)

(assert (=> b!6650218 (= e!4021139 e!4021135)))

(declare-fun c!1227425 () Bool)

(assert (=> b!6650218 (= c!1227425 (is-Concat!25357 (generalisedConcat!2109 (t!379505 (exprs!6396 (h!72161 zl!343))))))))

(declare-fun b!6650219 () Bool)

(declare-fun e!4021136 () Int)

(assert (=> b!6650219 (= e!4021136 1)))

(declare-fun b!6650220 () Bool)

(declare-fun e!4021142 () Int)

(assert (=> b!6650220 (= e!4021142 e!4021137)))

(declare-fun c!1227424 () Bool)

(assert (=> b!6650220 (= c!1227424 (is-Star!16512 (generalisedConcat!2109 (t!379505 (exprs!6396 (h!72161 zl!343))))))))

(declare-fun b!6650221 () Bool)

(declare-fun e!4021138 () Bool)

(declare-fun lt!2424589 () Int)

(declare-fun call!587988 () Int)

(assert (=> b!6650221 (= e!4021138 (> lt!2424589 call!587988))))

(declare-fun bm!587982 () Bool)

(declare-fun c!1227423 () Bool)

(assert (=> bm!587982 (= call!587988 (regexDepth!375 (ite c!1227423 (regTwo!33537 (generalisedConcat!2109 (t!379505 (exprs!6396 (h!72161 zl!343))))) (ite c!1227425 (regOne!33536 (generalisedConcat!2109 (t!379505 (exprs!6396 (h!72161 zl!343))))) (reg!16841 (generalisedConcat!2109 (t!379505 (exprs!6396 (h!72161 zl!343)))))))))))

(declare-fun bm!587983 () Bool)

(assert (=> bm!587983 (= call!587991 (regexDepth!375 (ite c!1227428 (regTwo!33537 (generalisedConcat!2109 (t!379505 (exprs!6396 (h!72161 zl!343))))) (regOne!33536 (generalisedConcat!2109 (t!379505 (exprs!6396 (h!72161 zl!343))))))))))

(declare-fun bm!587984 () Bool)

(declare-fun call!587989 () Int)

(assert (=> bm!587984 (= call!587989 (regexDepth!375 (ite c!1227423 (regOne!33537 (generalisedConcat!2109 (t!379505 (exprs!6396 (h!72161 zl!343))))) (regTwo!33536 (generalisedConcat!2109 (t!379505 (exprs!6396 (h!72161 zl!343))))))))))

(declare-fun b!6650223 () Bool)

(declare-fun e!4021144 () Bool)

(assert (=> b!6650223 (= e!4021144 (> lt!2424589 call!587989))))

(declare-fun b!6650224 () Bool)

(declare-fun e!4021143 () Bool)

(declare-fun call!587990 () Int)

(assert (=> b!6650224 (= e!4021143 (> lt!2424589 call!587990))))

(declare-fun b!6650225 () Bool)

(assert (=> b!6650225 (= e!4021139 e!4021138)))

(declare-fun res!2725073 () Bool)

(assert (=> b!6650225 (= res!2725073 (> lt!2424589 call!587989))))

(assert (=> b!6650225 (=> (not res!2725073) (not e!4021138))))

(declare-fun bm!587985 () Bool)

(assert (=> bm!587985 (= call!587987 (regexDepth!375 (ite c!1227424 (reg!16841 (generalisedConcat!2109 (t!379505 (exprs!6396 (h!72161 zl!343))))) (ite c!1227428 (regOne!33537 (generalisedConcat!2109 (t!379505 (exprs!6396 (h!72161 zl!343))))) (regTwo!33536 (generalisedConcat!2109 (t!379505 (exprs!6396 (h!72161 zl!343)))))))))))

(declare-fun b!6650226 () Bool)

(assert (=> b!6650226 (= e!4021140 e!4021136)))

(declare-fun c!1227427 () Bool)

(assert (=> b!6650226 (= c!1227427 (is-Concat!25357 (generalisedConcat!2109 (t!379505 (exprs!6396 (h!72161 zl!343))))))))

(declare-fun b!6650227 () Bool)

(declare-fun res!2725072 () Bool)

(assert (=> b!6650227 (=> (not res!2725072) (not e!4021144))))

(assert (=> b!6650227 (= res!2725072 (> lt!2424589 call!587990))))

(assert (=> b!6650227 (= e!4021135 e!4021144)))

(declare-fun b!6650228 () Bool)

(assert (=> b!6650228 (= e!4021140 (+ 1 call!587985))))

(declare-fun bm!587986 () Bool)

(assert (=> bm!587986 (= call!587990 call!587988)))

(declare-fun b!6650229 () Bool)

(declare-fun c!1227426 () Bool)

(assert (=> b!6650229 (= c!1227426 (is-Star!16512 (generalisedConcat!2109 (t!379505 (exprs!6396 (h!72161 zl!343))))))))

(assert (=> b!6650229 (= e!4021135 e!4021143)))

(declare-fun b!6650230 () Bool)

(declare-fun e!4021141 () Bool)

(assert (=> b!6650230 (= e!4021141 e!4021139)))

(assert (=> b!6650230 (= c!1227423 (is-Union!16512 (generalisedConcat!2109 (t!379505 (exprs!6396 (h!72161 zl!343))))))))

(declare-fun b!6650231 () Bool)

(assert (=> b!6650231 (= e!4021142 1)))

(declare-fun d!2084090 () Bool)

(assert (=> d!2084090 e!4021141))

(declare-fun res!2725074 () Bool)

(assert (=> d!2084090 (=> (not res!2725074) (not e!4021141))))

(assert (=> d!2084090 (= res!2725074 (> lt!2424589 0))))

(assert (=> d!2084090 (= lt!2424589 e!4021142)))

(declare-fun c!1227429 () Bool)

(assert (=> d!2084090 (= c!1227429 (is-ElementMatch!16512 (generalisedConcat!2109 (t!379505 (exprs!6396 (h!72161 zl!343))))))))

(assert (=> d!2084090 (= (regexDepth!375 (generalisedConcat!2109 (t!379505 (exprs!6396 (h!72161 zl!343))))) lt!2424589)))

(declare-fun b!6650222 () Bool)

(assert (=> b!6650222 (= e!4021136 (+ 1 call!587985))))

(declare-fun b!6650232 () Bool)

(assert (=> b!6650232 (= e!4021137 (+ 1 call!587987))))

(declare-fun b!6650233 () Bool)

(assert (=> b!6650233 (= e!4021143 (= lt!2424589 1))))

(assert (= (and d!2084090 c!1227429) b!6650231))

(assert (= (and d!2084090 (not c!1227429)) b!6650220))

(assert (= (and b!6650220 c!1227424) b!6650232))

(assert (= (and b!6650220 (not c!1227424)) b!6650217))

(assert (= (and b!6650217 c!1227428) b!6650228))

(assert (= (and b!6650217 (not c!1227428)) b!6650226))

(assert (= (and b!6650226 c!1227427) b!6650222))

(assert (= (and b!6650226 (not c!1227427)) b!6650219))

(assert (= (or b!6650228 b!6650222) bm!587983))

(assert (= (or b!6650228 b!6650222) bm!587981))

(assert (= (or b!6650228 b!6650222) bm!587980))

(assert (= (or b!6650232 bm!587981) bm!587985))

(assert (= (and d!2084090 res!2725074) b!6650230))

(assert (= (and b!6650230 c!1227423) b!6650225))

(assert (= (and b!6650230 (not c!1227423)) b!6650218))

(assert (= (and b!6650225 res!2725073) b!6650221))

(assert (= (and b!6650218 c!1227425) b!6650227))

(assert (= (and b!6650218 (not c!1227425)) b!6650229))

(assert (= (and b!6650227 res!2725072) b!6650223))

(assert (= (and b!6650229 c!1227426) b!6650224))

(assert (= (and b!6650229 (not c!1227426)) b!6650233))

(assert (= (or b!6650227 b!6650224) bm!587986))

(assert (= (or b!6650221 bm!587986) bm!587982))

(assert (= (or b!6650225 b!6650223) bm!587984))

(declare-fun m!7416200 () Bool)

(assert (=> bm!587984 m!7416200))

(declare-fun m!7416202 () Bool)

(assert (=> bm!587983 m!7416202))

(declare-fun m!7416204 () Bool)

(assert (=> bm!587982 m!7416204))

(declare-fun m!7416206 () Bool)

(assert (=> bm!587980 m!7416206))

(declare-fun m!7416208 () Bool)

(assert (=> bm!587985 m!7416208))

(assert (=> b!6649587 d!2084090))

(declare-fun bs!1712024 () Bool)

(declare-fun d!2084092 () Bool)

(assert (= bs!1712024 (and d!2084092 b!6649576)))

(declare-fun lambda!372355 () Int)

(assert (=> bs!1712024 (= lambda!372355 lambda!372199)))

(declare-fun bs!1712025 () Bool)

(assert (= bs!1712025 (and d!2084092 b!6649595)))

(assert (=> bs!1712025 (= lambda!372355 lambda!372201)))

(declare-fun b!6650254 () Bool)

(declare-fun e!4021158 () Regex!16512)

(assert (=> b!6650254 (= e!4021158 (h!72160 (t!379505 (exprs!6396 (h!72161 zl!343)))))))

(declare-fun b!6650255 () Bool)

(declare-fun e!4021159 () Regex!16512)

(assert (=> b!6650255 (= e!4021159 (Concat!25357 (h!72160 (t!379505 (exprs!6396 (h!72161 zl!343)))) (generalisedConcat!2109 (t!379505 (t!379505 (exprs!6396 (h!72161 zl!343)))))))))

(declare-fun b!6650256 () Bool)

(assert (=> b!6650256 (= e!4021158 e!4021159)))

(declare-fun c!1227441 () Bool)

(assert (=> b!6650256 (= c!1227441 (is-Cons!65712 (t!379505 (exprs!6396 (h!72161 zl!343)))))))

(declare-fun b!6650257 () Bool)

(declare-fun e!4021161 () Bool)

(declare-fun e!4021162 () Bool)

(assert (=> b!6650257 (= e!4021161 e!4021162)))

(declare-fun c!1227438 () Bool)

(assert (=> b!6650257 (= c!1227438 (isEmpty!38023 (t!379505 (exprs!6396 (h!72161 zl!343)))))))

(declare-fun b!6650259 () Bool)

(declare-fun e!4021160 () Bool)

(assert (=> b!6650259 (= e!4021160 (isEmpty!38023 (t!379505 (t!379505 (exprs!6396 (h!72161 zl!343))))))))

(assert (=> d!2084092 e!4021161))

(declare-fun res!2725079 () Bool)

(assert (=> d!2084092 (=> (not res!2725079) (not e!4021161))))

(declare-fun lt!2424592 () Regex!16512)

(assert (=> d!2084092 (= res!2725079 (validRegex!8248 lt!2424592))))

(assert (=> d!2084092 (= lt!2424592 e!4021158)))

(declare-fun c!1227440 () Bool)

(assert (=> d!2084092 (= c!1227440 e!4021160)))

(declare-fun res!2725080 () Bool)

(assert (=> d!2084092 (=> (not res!2725080) (not e!4021160))))

(assert (=> d!2084092 (= res!2725080 (is-Cons!65712 (t!379505 (exprs!6396 (h!72161 zl!343)))))))

(assert (=> d!2084092 (forall!15708 (t!379505 (exprs!6396 (h!72161 zl!343))) lambda!372355)))

(assert (=> d!2084092 (= (generalisedConcat!2109 (t!379505 (exprs!6396 (h!72161 zl!343)))) lt!2424592)))

(declare-fun b!6650258 () Bool)

(declare-fun e!4021157 () Bool)

(declare-fun head!13468 (List!65836) Regex!16512)

(assert (=> b!6650258 (= e!4021157 (= lt!2424592 (head!13468 (t!379505 (exprs!6396 (h!72161 zl!343))))))))

(declare-fun b!6650260 () Bool)

(assert (=> b!6650260 (= e!4021159 EmptyExpr!16512)))

(declare-fun b!6650261 () Bool)

(assert (=> b!6650261 (= e!4021162 e!4021157)))

(declare-fun c!1227439 () Bool)

(declare-fun tail!12553 (List!65836) List!65836)

(assert (=> b!6650261 (= c!1227439 (isEmpty!38023 (tail!12553 (t!379505 (exprs!6396 (h!72161 zl!343))))))))

(declare-fun b!6650262 () Bool)

(declare-fun isEmptyExpr!1886 (Regex!16512) Bool)

(assert (=> b!6650262 (= e!4021162 (isEmptyExpr!1886 lt!2424592))))

(declare-fun b!6650263 () Bool)

(declare-fun isConcat!1409 (Regex!16512) Bool)

(assert (=> b!6650263 (= e!4021157 (isConcat!1409 lt!2424592))))

(assert (= (and d!2084092 res!2725080) b!6650259))

(assert (= (and d!2084092 c!1227440) b!6650254))

(assert (= (and d!2084092 (not c!1227440)) b!6650256))

(assert (= (and b!6650256 c!1227441) b!6650255))

(assert (= (and b!6650256 (not c!1227441)) b!6650260))

(assert (= (and d!2084092 res!2725079) b!6650257))

(assert (= (and b!6650257 c!1227438) b!6650262))

(assert (= (and b!6650257 (not c!1227438)) b!6650261))

(assert (= (and b!6650261 c!1227439) b!6650258))

(assert (= (and b!6650261 (not c!1227439)) b!6650263))

(declare-fun m!7416210 () Bool)

(assert (=> b!6650262 m!7416210))

(declare-fun m!7416212 () Bool)

(assert (=> b!6650255 m!7416212))

(assert (=> b!6650257 m!7415700))

(declare-fun m!7416214 () Bool)

(assert (=> b!6650258 m!7416214))

(declare-fun m!7416216 () Bool)

(assert (=> d!2084092 m!7416216))

(declare-fun m!7416218 () Bool)

(assert (=> d!2084092 m!7416218))

(declare-fun m!7416220 () Bool)

(assert (=> b!6650263 m!7416220))

(declare-fun m!7416222 () Bool)

(assert (=> b!6650261 m!7416222))

(assert (=> b!6650261 m!7416222))

(declare-fun m!7416224 () Bool)

(assert (=> b!6650261 m!7416224))

(declare-fun m!7416226 () Bool)

(assert (=> b!6650259 m!7416226))

(assert (=> b!6649587 d!2084092))

(declare-fun d!2084094 () Bool)

(assert (=> d!2084094 (= (matchR!8695 (ite c!1227268 lt!2423888 (ite c!1227264 lt!2423847 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite (and c!1227272 c!1227263) lt!2423777 (reg!16841 (regOne!33536 r!7292))))))) (ite c!1227268 (t!379504 s!2326) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite c!1227272 (ite c!1227263 s!2326 (_1!36794 lt!2423746)) (_1!36794 lt!2423904))))) (matchZipper!2524 (ite c!1227268 lt!2423916 (ite c!1227264 lt!2423883 (ite c!1227273 lt!2423802 (ite c!1227262 lt!2423765 (ite (and c!1227272 c!1227263) lt!2423830 lt!2423749))))) (ite c!1227268 (t!379504 s!2326) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite c!1227272 (ite c!1227263 s!2326 (_1!36794 lt!2423746)) (_1!36794 lt!2423904))))))))

(declare-fun lt!2424595 () Unit!159475)

(declare-fun choose!49724 ((Set Context!11792) List!65837 Regex!16512 List!65835) Unit!159475)

(assert (=> d!2084094 (= lt!2424595 (choose!49724 (ite c!1227268 lt!2423916 (ite c!1227264 lt!2423883 (ite c!1227273 lt!2423802 (ite c!1227262 lt!2423765 (ite (and c!1227272 c!1227263) lt!2423830 lt!2423749))))) (ite c!1227268 (Cons!65713 lt!2423839 Nil!65713) (ite c!1227264 (Cons!65713 lt!2423762 Nil!65713) (ite c!1227273 (Cons!65713 lt!2423852 Nil!65713) (ite c!1227262 (Cons!65713 lt!2423914 Nil!65713) (ite (and c!1227272 c!1227263) (Cons!65713 lt!2423839 Nil!65713) (Cons!65713 lt!2423750 Nil!65713)))))) (ite c!1227268 lt!2423888 (ite c!1227264 lt!2423847 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite (and c!1227272 c!1227263) lt!2423777 (reg!16841 (regOne!33536 r!7292))))))) (ite c!1227268 (t!379504 s!2326) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite c!1227272 (ite c!1227263 s!2326 (_1!36794 lt!2423746)) (_1!36794 lt!2423904))))))))

(assert (=> d!2084094 (validRegex!8248 (ite c!1227268 lt!2423888 (ite c!1227264 lt!2423847 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite (and c!1227272 c!1227263) lt!2423777 (reg!16841 (regOne!33536 r!7292))))))))))

(assert (=> d!2084094 (= (theoremZipperRegexEquiv!908 (ite c!1227268 lt!2423916 (ite c!1227264 lt!2423883 (ite c!1227273 lt!2423802 (ite c!1227262 lt!2423765 (ite (and c!1227272 c!1227263) lt!2423830 lt!2423749))))) (ite c!1227268 (Cons!65713 lt!2423839 Nil!65713) (ite c!1227264 (Cons!65713 lt!2423762 Nil!65713) (ite c!1227273 (Cons!65713 lt!2423852 Nil!65713) (ite c!1227262 (Cons!65713 lt!2423914 Nil!65713) (ite (and c!1227272 c!1227263) (Cons!65713 lt!2423839 Nil!65713) (Cons!65713 lt!2423750 Nil!65713)))))) (ite c!1227268 lt!2423888 (ite c!1227264 lt!2423847 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite (and c!1227272 c!1227263) lt!2423777 (reg!16841 (regOne!33536 r!7292))))))) (ite c!1227268 (t!379504 s!2326) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite c!1227272 (ite c!1227263 s!2326 (_1!36794 lt!2423746)) (_1!36794 lt!2423904))))) lt!2424595)))

(declare-fun bs!1712026 () Bool)

(assert (= bs!1712026 d!2084094))

(declare-fun m!7416228 () Bool)

(assert (=> bs!1712026 m!7416228))

(declare-fun m!7416230 () Bool)

(assert (=> bs!1712026 m!7416230))

(declare-fun m!7416232 () Bool)

(assert (=> bs!1712026 m!7416232))

(declare-fun m!7416234 () Bool)

(assert (=> bs!1712026 m!7416234))

(assert (=> bm!587275 d!2084094))

(declare-fun d!2084096 () Bool)

(declare-fun isEmpty!38027 (Option!16403) Bool)

(assert (=> d!2084096 (= (isDefined!13106 (ite c!1227262 call!587187 (ite c!1227272 lt!2423740 (ite c!1227261 lt!2423753 call!587125)))) (not (isEmpty!38027 (ite c!1227262 call!587187 (ite c!1227272 lt!2423740 (ite c!1227261 lt!2423753 call!587125))))))))

(declare-fun bs!1712027 () Bool)

(assert (= bs!1712027 d!2084096))

(declare-fun m!7416236 () Bool)

(assert (=> bs!1712027 m!7416236))

(assert (=> bm!587146 d!2084096))

(declare-fun d!2084098 () Bool)

(assert (=> d!2084098 (= (isDefined!13106 (ite c!1227273 call!587184 (ite c!1227272 lt!2423761 lt!2423930))) (not (isEmpty!38027 (ite c!1227273 call!587184 (ite c!1227272 lt!2423761 lt!2423930)))))))

(declare-fun bs!1712028 () Bool)

(assert (= bs!1712028 d!2084098))

(declare-fun m!7416238 () Bool)

(assert (=> bs!1712028 m!7416238))

(assert (=> bm!587241 d!2084098))

(declare-fun d!2084100 () Bool)

(assert (=> d!2084100 (matchR!8695 (Concat!25357 (reg!16841 (regOne!33536 r!7292)) lt!2423816) (++!14666 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423904)) (ite c!1227272 lt!2423906 (_2!36794 lt!2423904))))))

(declare-fun lt!2424598 () Unit!159475)

(declare-fun choose!49725 (Regex!16512 Regex!16512 List!65835 List!65835) Unit!159475)

(assert (=> d!2084100 (= lt!2424598 (choose!49725 (reg!16841 (regOne!33536 r!7292)) lt!2423816 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423904)) (ite c!1227272 lt!2423906 (_2!36794 lt!2423904))))))

(declare-fun e!4021165 () Bool)

(assert (=> d!2084100 e!4021165))

(declare-fun res!2725083 () Bool)

(assert (=> d!2084100 (=> (not res!2725083) (not e!4021165))))

(assert (=> d!2084100 (= res!2725083 (validRegex!8248 (reg!16841 (regOne!33536 r!7292))))))

(assert (=> d!2084100 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!373 (reg!16841 (regOne!33536 r!7292)) lt!2423816 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423904)) (ite c!1227272 lt!2423906 (_2!36794 lt!2423904))) lt!2424598)))

(declare-fun b!6650266 () Bool)

(assert (=> b!6650266 (= e!4021165 (validRegex!8248 lt!2423816))))

(assert (= (and d!2084100 res!2725083) b!6650266))

(declare-fun m!7416240 () Bool)

(assert (=> d!2084100 m!7416240))

(assert (=> d!2084100 m!7416240))

(declare-fun m!7416242 () Bool)

(assert (=> d!2084100 m!7416242))

(declare-fun m!7416244 () Bool)

(assert (=> d!2084100 m!7416244))

(declare-fun m!7416246 () Bool)

(assert (=> d!2084100 m!7416246))

(declare-fun m!7416248 () Bool)

(assert (=> b!6650266 m!7416248))

(assert (=> bm!587101 d!2084100))

(declare-fun d!2084102 () Bool)

(assert (=> d!2084102 (= (matchR!8695 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 lt!2423842 (regOne!33536 r!7292))))) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite c!1227266 (_1!36794 lt!2423861) s!2326))) (matchRSpec!3613 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 lt!2423842 (regOne!33536 r!7292))))) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite c!1227266 (_1!36794 lt!2423861) s!2326))))))

(declare-fun lt!2424599 () Unit!159475)

(assert (=> d!2084102 (= lt!2424599 (choose!49717 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 lt!2423842 (regOne!33536 r!7292))))) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite c!1227266 (_1!36794 lt!2423861) s!2326))))))

(assert (=> d!2084102 (validRegex!8248 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 lt!2423842 (regOne!33536 r!7292))))))))

(assert (=> d!2084102 (= (mainMatchTheorem!3613 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 lt!2423842 (regOne!33536 r!7292))))) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite c!1227266 (_1!36794 lt!2423861) s!2326))) lt!2424599)))

(declare-fun bs!1712029 () Bool)

(assert (= bs!1712029 d!2084102))

(declare-fun m!7416250 () Bool)

(assert (=> bs!1712029 m!7416250))

(declare-fun m!7416252 () Bool)

(assert (=> bs!1712029 m!7416252))

(declare-fun m!7416254 () Bool)

(assert (=> bs!1712029 m!7416254))

(declare-fun m!7416256 () Bool)

(assert (=> bs!1712029 m!7416256))

(assert (=> bm!587140 d!2084102))

(declare-fun d!2084104 () Bool)

(declare-fun c!1227442 () Bool)

(assert (=> d!2084104 (= c!1227442 (isEmpty!38022 (t!379504 s!2326)))))

(declare-fun e!4021166 () Bool)

(assert (=> d!2084104 (= (matchZipper!2524 (ite c!1227264 (set.union lt!2423900 lt!2423893) (ite c!1227273 lt!2423804 lt!2423772)) (t!379504 s!2326)) e!4021166)))

(declare-fun b!6650267 () Bool)

(assert (=> b!6650267 (= e!4021166 (nullableZipper!2253 (ite c!1227264 (set.union lt!2423900 lt!2423893) (ite c!1227273 lt!2423804 lt!2423772))))))

(declare-fun b!6650268 () Bool)

(assert (=> b!6650268 (= e!4021166 (matchZipper!2524 (derivationStepZipper!2478 (ite c!1227264 (set.union lt!2423900 lt!2423893) (ite c!1227273 lt!2423804 lt!2423772)) (head!13467 (t!379504 s!2326))) (tail!12552 (t!379504 s!2326))))))

(assert (= (and d!2084104 c!1227442) b!6650267))

(assert (= (and d!2084104 (not c!1227442)) b!6650268))

(declare-fun m!7416258 () Bool)

(assert (=> d!2084104 m!7416258))

(declare-fun m!7416260 () Bool)

(assert (=> b!6650267 m!7416260))

(declare-fun m!7416262 () Bool)

(assert (=> b!6650268 m!7416262))

(assert (=> b!6650268 m!7416262))

(declare-fun m!7416264 () Bool)

(assert (=> b!6650268 m!7416264))

(declare-fun m!7416266 () Bool)

(assert (=> b!6650268 m!7416266))

(assert (=> b!6650268 m!7416264))

(assert (=> b!6650268 m!7416266))

(declare-fun m!7416268 () Bool)

(assert (=> b!6650268 m!7416268))

(assert (=> bm!587273 d!2084104))

(declare-fun d!2084106 () Bool)

(assert (=> d!2084106 (= (flatMap!2017 (ite c!1227272 lt!2423830 lt!2423868) (ite c!1227272 lambda!372185 lambda!372185)) (choose!49721 (ite c!1227272 lt!2423830 lt!2423868) (ite c!1227272 lambda!372185 lambda!372185)))))

(declare-fun bs!1712030 () Bool)

(assert (= bs!1712030 d!2084106))

(declare-fun m!7416270 () Bool)

(assert (=> bs!1712030 m!7416270))

(assert (=> bm!587191 d!2084106))

(declare-fun bs!1712031 () Bool)

(declare-fun d!2084108 () Bool)

(assert (= bs!1712031 (and d!2084108 b!6649576)))

(declare-fun lambda!372358 () Int)

(assert (=> bs!1712031 (= lambda!372358 lambda!372199)))

(declare-fun bs!1712032 () Bool)

(assert (= bs!1712032 (and d!2084108 b!6649595)))

(assert (=> bs!1712032 (= lambda!372358 lambda!372201)))

(declare-fun bs!1712033 () Bool)

(assert (= bs!1712033 (and d!2084108 d!2084092)))

(assert (=> bs!1712033 (= lambda!372358 lambda!372355)))

(assert (=> d!2084108 (matchZipper!2524 (set.insert (Context!11793 (++!14667 (exprs!6396 lt!2423750) (exprs!6396 lt!2423885))) (as set.empty (Set Context!11792))) (++!14666 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423904)) (ite c!1227272 lt!2423906 (_2!36794 lt!2423904))))))

(declare-fun lt!2424605 () Unit!159475)

(assert (=> d!2084108 (= lt!2424605 (lemmaConcatPreservesForall!425 (exprs!6396 lt!2423750) (exprs!6396 lt!2423885) lambda!372358))))

(declare-fun lt!2424604 () Unit!159475)

(declare-fun choose!49726 (Context!11792 Context!11792 List!65835 List!65835) Unit!159475)

(assert (=> d!2084108 (= lt!2424604 (choose!49726 lt!2423750 lt!2423885 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423904)) (ite c!1227272 lt!2423906 (_2!36794 lt!2423904))))))

(assert (=> d!2084108 (matchZipper!2524 (set.insert lt!2423750 (as set.empty (Set Context!11792))) (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423904)))))

(assert (=> d!2084108 (= (lemmaConcatenateContextMatchesConcatOfStrings!233 lt!2423750 lt!2423885 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423904)) (ite c!1227272 lt!2423906 (_2!36794 lt!2423904))) lt!2424604)))

(declare-fun bs!1712034 () Bool)

(assert (= bs!1712034 d!2084108))

(declare-fun m!7416272 () Bool)

(assert (=> bs!1712034 m!7416272))

(declare-fun m!7416274 () Bool)

(assert (=> bs!1712034 m!7416274))

(assert (=> bs!1712034 m!7416240))

(declare-fun m!7416276 () Bool)

(assert (=> bs!1712034 m!7416276))

(declare-fun m!7416278 () Bool)

(assert (=> bs!1712034 m!7416278))

(assert (=> bs!1712034 m!7415720))

(declare-fun m!7416280 () Bool)

(assert (=> bs!1712034 m!7416280))

(assert (=> bs!1712034 m!7416240))

(assert (=> bs!1712034 m!7415720))

(declare-fun m!7416282 () Bool)

(assert (=> bs!1712034 m!7416282))

(assert (=> bs!1712034 m!7416274))

(assert (=> bm!587222 d!2084108))

(declare-fun e!4021169 () Bool)

(declare-fun d!2084110 () Bool)

(assert (=> d!2084110 (= (matchZipper!2524 (set.union lt!2423772 lt!2423893) (t!379504 s!2326)) e!4021169)))

(declare-fun res!2725086 () Bool)

(assert (=> d!2084110 (=> res!2725086 e!4021169)))

(assert (=> d!2084110 (= res!2725086 (matchZipper!2524 lt!2423772 (t!379504 s!2326)))))

(declare-fun lt!2424608 () Unit!159475)

(declare-fun choose!49727 ((Set Context!11792) (Set Context!11792) List!65835) Unit!159475)

(assert (=> d!2084110 (= lt!2424608 (choose!49727 lt!2423772 lt!2423893 (t!379504 s!2326)))))

(assert (=> d!2084110 (= (lemmaZipperConcatMatchesSameAsBothZippers!1343 lt!2423772 lt!2423893 (t!379504 s!2326)) lt!2424608)))

(declare-fun b!6650271 () Bool)

(assert (=> b!6650271 (= e!4021169 (matchZipper!2524 lt!2423893 (t!379504 s!2326)))))

(assert (= (and d!2084110 (not res!2725086)) b!6650271))

(assert (=> d!2084110 m!7415658))

(assert (=> d!2084110 m!7415656))

(declare-fun m!7416284 () Bool)

(assert (=> d!2084110 m!7416284))

(assert (=> b!6650271 m!7415624))

(assert (=> b!6649573 d!2084110))

(declare-fun d!2084112 () Bool)

(declare-fun c!1227443 () Bool)

(assert (=> d!2084112 (= c!1227443 (isEmpty!38022 (t!379504 s!2326)))))

(declare-fun e!4021170 () Bool)

(assert (=> d!2084112 (= (matchZipper!2524 lt!2423772 (t!379504 s!2326)) e!4021170)))

(declare-fun b!6650272 () Bool)

(assert (=> b!6650272 (= e!4021170 (nullableZipper!2253 lt!2423772))))

(declare-fun b!6650273 () Bool)

(assert (=> b!6650273 (= e!4021170 (matchZipper!2524 (derivationStepZipper!2478 lt!2423772 (head!13467 (t!379504 s!2326))) (tail!12552 (t!379504 s!2326))))))

(assert (= (and d!2084112 c!1227443) b!6650272))

(assert (= (and d!2084112 (not c!1227443)) b!6650273))

(assert (=> d!2084112 m!7416258))

(declare-fun m!7416286 () Bool)

(assert (=> b!6650272 m!7416286))

(assert (=> b!6650273 m!7416262))

(assert (=> b!6650273 m!7416262))

(declare-fun m!7416288 () Bool)

(assert (=> b!6650273 m!7416288))

(assert (=> b!6650273 m!7416266))

(assert (=> b!6650273 m!7416288))

(assert (=> b!6650273 m!7416266))

(declare-fun m!7416290 () Bool)

(assert (=> b!6650273 m!7416290))

(assert (=> b!6649573 d!2084112))

(declare-fun d!2084114 () Bool)

(declare-fun c!1227444 () Bool)

(assert (=> d!2084114 (= c!1227444 (isEmpty!38022 (t!379504 s!2326)))))

(declare-fun e!4021171 () Bool)

(assert (=> d!2084114 (= (matchZipper!2524 (set.union lt!2423772 lt!2423893) (t!379504 s!2326)) e!4021171)))

(declare-fun b!6650274 () Bool)

(assert (=> b!6650274 (= e!4021171 (nullableZipper!2253 (set.union lt!2423772 lt!2423893)))))

(declare-fun b!6650275 () Bool)

(assert (=> b!6650275 (= e!4021171 (matchZipper!2524 (derivationStepZipper!2478 (set.union lt!2423772 lt!2423893) (head!13467 (t!379504 s!2326))) (tail!12552 (t!379504 s!2326))))))

(assert (= (and d!2084114 c!1227444) b!6650274))

(assert (= (and d!2084114 (not c!1227444)) b!6650275))

(assert (=> d!2084114 m!7416258))

(declare-fun m!7416292 () Bool)

(assert (=> b!6650274 m!7416292))

(assert (=> b!6650275 m!7416262))

(assert (=> b!6650275 m!7416262))

(declare-fun m!7416294 () Bool)

(assert (=> b!6650275 m!7416294))

(assert (=> b!6650275 m!7416266))

(assert (=> b!6650275 m!7416294))

(assert (=> b!6650275 m!7416266))

(declare-fun m!7416296 () Bool)

(assert (=> b!6650275 m!7416296))

(assert (=> b!6649573 d!2084114))

(declare-fun d!2084116 () Bool)

(assert (=> d!2084116 (= (matchR!8695 (ite c!1227264 lt!2423788 (ite c!1227266 lt!2423810 (regTwo!33536 r!7292))) s!2326) (matchRSpec!3613 (ite c!1227264 lt!2423788 (ite c!1227266 lt!2423810 (regTwo!33536 r!7292))) s!2326))))

(declare-fun lt!2424609 () Unit!159475)

(assert (=> d!2084116 (= lt!2424609 (choose!49717 (ite c!1227264 lt!2423788 (ite c!1227266 lt!2423810 (regTwo!33536 r!7292))) s!2326))))

(assert (=> d!2084116 (validRegex!8248 (ite c!1227264 lt!2423788 (ite c!1227266 lt!2423810 (regTwo!33536 r!7292))))))

(assert (=> d!2084116 (= (mainMatchTheorem!3613 (ite c!1227264 lt!2423788 (ite c!1227266 lt!2423810 (regTwo!33536 r!7292))) s!2326) lt!2424609)))

(declare-fun bs!1712035 () Bool)

(assert (= bs!1712035 d!2084116))

(declare-fun m!7416298 () Bool)

(assert (=> bs!1712035 m!7416298))

(declare-fun m!7416300 () Bool)

(assert (=> bs!1712035 m!7416300))

(declare-fun m!7416302 () Bool)

(assert (=> bs!1712035 m!7416302))

(declare-fun m!7416304 () Bool)

(assert (=> bs!1712035 m!7416304))

(assert (=> bm!587306 d!2084116))

(declare-fun d!2084118 () Bool)

(assert (=> d!2084118 (= (flatMap!2017 (ite c!1227273 lt!2423939 (ite c!1227266 lt!2423749 lt!2423867)) (ite c!1227273 lambda!372185 (ite c!1227266 lambda!372185 lambda!372185))) (dynLambda!26183 (ite c!1227273 lambda!372185 (ite c!1227266 lambda!372185 lambda!372185)) (ite c!1227273 lt!2423923 (ite c!1227266 lt!2423750 lt!2423839))))))

(declare-fun lt!2424610 () Unit!159475)

(assert (=> d!2084118 (= lt!2424610 (choose!49723 (ite c!1227273 lt!2423939 (ite c!1227266 lt!2423749 lt!2423867)) (ite c!1227273 lt!2423923 (ite c!1227266 lt!2423750 lt!2423839)) (ite c!1227273 lambda!372185 (ite c!1227266 lambda!372185 lambda!372185))))))

(assert (=> d!2084118 (= (ite c!1227273 lt!2423939 (ite c!1227266 lt!2423749 lt!2423867)) (set.insert (ite c!1227273 lt!2423923 (ite c!1227266 lt!2423750 lt!2423839)) (as set.empty (Set Context!11792))))))

(assert (=> d!2084118 (= (lemmaFlatMapOnSingletonSet!1543 (ite c!1227273 lt!2423939 (ite c!1227266 lt!2423749 lt!2423867)) (ite c!1227273 lt!2423923 (ite c!1227266 lt!2423750 lt!2423839)) (ite c!1227273 lambda!372185 (ite c!1227266 lambda!372185 lambda!372185))) lt!2424610)))

(declare-fun b_lambda!251139 () Bool)

(assert (=> (not b_lambda!251139) (not d!2084118)))

(declare-fun bs!1712036 () Bool)

(assert (= bs!1712036 d!2084118))

(declare-fun m!7416306 () Bool)

(assert (=> bs!1712036 m!7416306))

(declare-fun m!7416308 () Bool)

(assert (=> bs!1712036 m!7416308))

(declare-fun m!7416310 () Bool)

(assert (=> bs!1712036 m!7416310))

(declare-fun m!7416312 () Bool)

(assert (=> bs!1712036 m!7416312))

(assert (=> bm!587158 d!2084118))

(declare-fun e!4021175 () Bool)

(declare-fun b!6650276 () Bool)

(assert (=> b!6650276 (= e!4021175 (= (head!13467 (ite c!1227272 (ite c!1227263 s!2326 (_1!36794 lt!2423817)) lt!2423892)) (c!1227274 (ite c!1227272 (ite c!1227263 lt!2423777 lt!2423835) lt!2423816))))))

(declare-fun b!6650277 () Bool)

(declare-fun e!4021173 () Bool)

(declare-fun e!4021176 () Bool)

(assert (=> b!6650277 (= e!4021173 e!4021176)))

(declare-fun c!1227445 () Bool)

(assert (=> b!6650277 (= c!1227445 (is-EmptyLang!16512 (ite c!1227272 (ite c!1227263 lt!2423777 lt!2423835) lt!2423816)))))

(declare-fun e!4021174 () Bool)

(declare-fun b!6650278 () Bool)

(assert (=> b!6650278 (= e!4021174 (not (= (head!13467 (ite c!1227272 (ite c!1227263 s!2326 (_1!36794 lt!2423817)) lt!2423892)) (c!1227274 (ite c!1227272 (ite c!1227263 lt!2423777 lt!2423835) lt!2423816)))))))

(declare-fun d!2084120 () Bool)

(assert (=> d!2084120 e!4021173))

(declare-fun c!1227447 () Bool)

(assert (=> d!2084120 (= c!1227447 (is-EmptyExpr!16512 (ite c!1227272 (ite c!1227263 lt!2423777 lt!2423835) lt!2423816)))))

(declare-fun lt!2424611 () Bool)

(declare-fun e!4021172 () Bool)

(assert (=> d!2084120 (= lt!2424611 e!4021172)))

(declare-fun c!1227446 () Bool)

(assert (=> d!2084120 (= c!1227446 (isEmpty!38022 (ite c!1227272 (ite c!1227263 s!2326 (_1!36794 lt!2423817)) lt!2423892)))))

(assert (=> d!2084120 (validRegex!8248 (ite c!1227272 (ite c!1227263 lt!2423777 lt!2423835) lt!2423816))))

(assert (=> d!2084120 (= (matchR!8695 (ite c!1227272 (ite c!1227263 lt!2423777 lt!2423835) lt!2423816) (ite c!1227272 (ite c!1227263 s!2326 (_1!36794 lt!2423817)) lt!2423892)) lt!2424611)))

(declare-fun b!6650279 () Bool)

(declare-fun res!2725089 () Bool)

(declare-fun e!4021177 () Bool)

(assert (=> b!6650279 (=> res!2725089 e!4021177)))

(assert (=> b!6650279 (= res!2725089 (not (is-ElementMatch!16512 (ite c!1227272 (ite c!1227263 lt!2423777 lt!2423835) lt!2423816))))))

(assert (=> b!6650279 (= e!4021176 e!4021177)))

(declare-fun call!587992 () Bool)

(declare-fun bm!587987 () Bool)

(assert (=> bm!587987 (= call!587992 (isEmpty!38022 (ite c!1227272 (ite c!1227263 s!2326 (_1!36794 lt!2423817)) lt!2423892)))))

(declare-fun b!6650280 () Bool)

(declare-fun res!2725087 () Bool)

(assert (=> b!6650280 (=> (not res!2725087) (not e!4021175))))

(assert (=> b!6650280 (= res!2725087 (not call!587992))))

(declare-fun b!6650281 () Bool)

(declare-fun res!2725092 () Bool)

(assert (=> b!6650281 (=> (not res!2725092) (not e!4021175))))

(assert (=> b!6650281 (= res!2725092 (isEmpty!38022 (tail!12552 (ite c!1227272 (ite c!1227263 s!2326 (_1!36794 lt!2423817)) lt!2423892))))))

(declare-fun b!6650282 () Bool)

(declare-fun e!4021178 () Bool)

(assert (=> b!6650282 (= e!4021177 e!4021178)))

(declare-fun res!2725091 () Bool)

(assert (=> b!6650282 (=> (not res!2725091) (not e!4021178))))

(assert (=> b!6650282 (= res!2725091 (not lt!2424611))))

(declare-fun b!6650283 () Bool)

(assert (=> b!6650283 (= e!4021176 (not lt!2424611))))

(declare-fun b!6650284 () Bool)

(assert (=> b!6650284 (= e!4021178 e!4021174)))

(declare-fun res!2725093 () Bool)

(assert (=> b!6650284 (=> res!2725093 e!4021174)))

(assert (=> b!6650284 (= res!2725093 call!587992)))

(declare-fun b!6650285 () Bool)

(assert (=> b!6650285 (= e!4021172 (nullable!6505 (ite c!1227272 (ite c!1227263 lt!2423777 lt!2423835) lt!2423816)))))

(declare-fun b!6650286 () Bool)

(declare-fun res!2725088 () Bool)

(assert (=> b!6650286 (=> res!2725088 e!4021177)))

(assert (=> b!6650286 (= res!2725088 e!4021175)))

(declare-fun res!2725094 () Bool)

(assert (=> b!6650286 (=> (not res!2725094) (not e!4021175))))

(assert (=> b!6650286 (= res!2725094 lt!2424611)))

(declare-fun b!6650287 () Bool)

(assert (=> b!6650287 (= e!4021172 (matchR!8695 (derivativeStep!5192 (ite c!1227272 (ite c!1227263 lt!2423777 lt!2423835) lt!2423816) (head!13467 (ite c!1227272 (ite c!1227263 s!2326 (_1!36794 lt!2423817)) lt!2423892))) (tail!12552 (ite c!1227272 (ite c!1227263 s!2326 (_1!36794 lt!2423817)) lt!2423892))))))

(declare-fun b!6650288 () Bool)

(declare-fun res!2725090 () Bool)

(assert (=> b!6650288 (=> res!2725090 e!4021174)))

(assert (=> b!6650288 (= res!2725090 (not (isEmpty!38022 (tail!12552 (ite c!1227272 (ite c!1227263 s!2326 (_1!36794 lt!2423817)) lt!2423892)))))))

(declare-fun b!6650289 () Bool)

(assert (=> b!6650289 (= e!4021173 (= lt!2424611 call!587992))))

(assert (= (and d!2084120 c!1227446) b!6650285))

(assert (= (and d!2084120 (not c!1227446)) b!6650287))

(assert (= (and d!2084120 c!1227447) b!6650289))

(assert (= (and d!2084120 (not c!1227447)) b!6650277))

(assert (= (and b!6650277 c!1227445) b!6650283))

(assert (= (and b!6650277 (not c!1227445)) b!6650279))

(assert (= (and b!6650279 (not res!2725089)) b!6650286))

(assert (= (and b!6650286 res!2725094) b!6650280))

(assert (= (and b!6650280 res!2725087) b!6650281))

(assert (= (and b!6650281 res!2725092) b!6650276))

(assert (= (and b!6650286 (not res!2725088)) b!6650282))

(assert (= (and b!6650282 res!2725091) b!6650284))

(assert (= (and b!6650284 (not res!2725093)) b!6650288))

(assert (= (and b!6650288 (not res!2725090)) b!6650278))

(assert (= (or b!6650289 b!6650280 b!6650284) bm!587987))

(declare-fun m!7416314 () Bool)

(assert (=> b!6650287 m!7416314))

(assert (=> b!6650287 m!7416314))

(declare-fun m!7416316 () Bool)

(assert (=> b!6650287 m!7416316))

(declare-fun m!7416318 () Bool)

(assert (=> b!6650287 m!7416318))

(assert (=> b!6650287 m!7416316))

(assert (=> b!6650287 m!7416318))

(declare-fun m!7416320 () Bool)

(assert (=> b!6650287 m!7416320))

(assert (=> b!6650288 m!7416318))

(assert (=> b!6650288 m!7416318))

(declare-fun m!7416322 () Bool)

(assert (=> b!6650288 m!7416322))

(declare-fun m!7416324 () Bool)

(assert (=> bm!587987 m!7416324))

(declare-fun m!7416326 () Bool)

(assert (=> b!6650285 m!7416326))

(assert (=> b!6650281 m!7416318))

(assert (=> b!6650281 m!7416318))

(assert (=> b!6650281 m!7416322))

(assert (=> b!6650276 m!7416314))

(assert (=> d!2084120 m!7416324))

(declare-fun m!7416328 () Bool)

(assert (=> d!2084120 m!7416328))

(assert (=> b!6650278 m!7416314))

(assert (=> bm!587217 d!2084120))

(declare-fun b!6650300 () Bool)

(declare-fun res!2725100 () Bool)

(declare-fun e!4021184 () Bool)

(assert (=> b!6650300 (=> (not res!2725100) (not e!4021184))))

(declare-fun lt!2424614 () List!65836)

(declare-fun size!40569 (List!65836) Int)

(assert (=> b!6650300 (= res!2725100 (= (size!40569 lt!2424614) (+ (size!40569 lt!2423826) (size!40569 lt!2423909))))))

(declare-fun b!6650299 () Bool)

(declare-fun e!4021183 () List!65836)

(assert (=> b!6650299 (= e!4021183 (Cons!65712 (h!72160 lt!2423826) (++!14667 (t!379505 lt!2423826) lt!2423909)))))

(declare-fun b!6650298 () Bool)

(assert (=> b!6650298 (= e!4021183 lt!2423909)))

(declare-fun d!2084122 () Bool)

(assert (=> d!2084122 e!4021184))

(declare-fun res!2725099 () Bool)

(assert (=> d!2084122 (=> (not res!2725099) (not e!4021184))))

(declare-fun content!12709 (List!65836) (Set Regex!16512))

(assert (=> d!2084122 (= res!2725099 (= (content!12709 lt!2424614) (set.union (content!12709 lt!2423826) (content!12709 lt!2423909))))))

(assert (=> d!2084122 (= lt!2424614 e!4021183)))

(declare-fun c!1227450 () Bool)

(assert (=> d!2084122 (= c!1227450 (is-Nil!65712 lt!2423826))))

(assert (=> d!2084122 (= (++!14667 lt!2423826 lt!2423909) lt!2424614)))

(declare-fun b!6650301 () Bool)

(assert (=> b!6650301 (= e!4021184 (or (not (= lt!2423909 Nil!65712)) (= lt!2424614 lt!2423826)))))

(assert (= (and d!2084122 c!1227450) b!6650298))

(assert (= (and d!2084122 (not c!1227450)) b!6650299))

(assert (= (and d!2084122 res!2725099) b!6650300))

(assert (= (and b!6650300 res!2725100) b!6650301))

(declare-fun m!7416330 () Bool)

(assert (=> b!6650300 m!7416330))

(declare-fun m!7416332 () Bool)

(assert (=> b!6650300 m!7416332))

(declare-fun m!7416334 () Bool)

(assert (=> b!6650300 m!7416334))

(declare-fun m!7416336 () Bool)

(assert (=> b!6650299 m!7416336))

(declare-fun m!7416338 () Bool)

(assert (=> d!2084122 m!7416338))

(declare-fun m!7416340 () Bool)

(assert (=> d!2084122 m!7416340))

(declare-fun m!7416342 () Bool)

(assert (=> d!2084122 m!7416342))

(assert (=> bm!587247 d!2084122))

(declare-fun b!6650304 () Bool)

(declare-fun res!2725102 () Bool)

(declare-fun e!4021186 () Bool)

(assert (=> b!6650304 (=> (not res!2725102) (not e!4021186))))

(declare-fun lt!2424615 () List!65835)

(assert (=> b!6650304 (= res!2725102 (= (size!40568 lt!2424615) (+ (size!40568 (ite c!1227272 (_1!36794 lt!2423746) (ite c!1227261 (_1!36794 lt!2423743) Nil!65711))) (size!40568 (ite c!1227272 (_2!36794 lt!2423746) (ite c!1227261 (_2!36794 lt!2423743) s!2326))))))))

(declare-fun e!4021185 () List!65835)

(declare-fun b!6650303 () Bool)

(assert (=> b!6650303 (= e!4021185 (Cons!65711 (h!72159 (ite c!1227272 (_1!36794 lt!2423746) (ite c!1227261 (_1!36794 lt!2423743) Nil!65711))) (++!14666 (t!379504 (ite c!1227272 (_1!36794 lt!2423746) (ite c!1227261 (_1!36794 lt!2423743) Nil!65711))) (ite c!1227272 (_2!36794 lt!2423746) (ite c!1227261 (_2!36794 lt!2423743) s!2326)))))))

(declare-fun d!2084124 () Bool)

(assert (=> d!2084124 e!4021186))

(declare-fun res!2725101 () Bool)

(assert (=> d!2084124 (=> (not res!2725101) (not e!4021186))))

(assert (=> d!2084124 (= res!2725101 (= (content!12708 lt!2424615) (set.union (content!12708 (ite c!1227272 (_1!36794 lt!2423746) (ite c!1227261 (_1!36794 lt!2423743) Nil!65711))) (content!12708 (ite c!1227272 (_2!36794 lt!2423746) (ite c!1227261 (_2!36794 lt!2423743) s!2326))))))))

(assert (=> d!2084124 (= lt!2424615 e!4021185)))

(declare-fun c!1227451 () Bool)

(assert (=> d!2084124 (= c!1227451 (is-Nil!65711 (ite c!1227272 (_1!36794 lt!2423746) (ite c!1227261 (_1!36794 lt!2423743) Nil!65711))))))

(assert (=> d!2084124 (= (++!14666 (ite c!1227272 (_1!36794 lt!2423746) (ite c!1227261 (_1!36794 lt!2423743) Nil!65711)) (ite c!1227272 (_2!36794 lt!2423746) (ite c!1227261 (_2!36794 lt!2423743) s!2326))) lt!2424615)))

(declare-fun b!6650302 () Bool)

(assert (=> b!6650302 (= e!4021185 (ite c!1227272 (_2!36794 lt!2423746) (ite c!1227261 (_2!36794 lt!2423743) s!2326)))))

(declare-fun b!6650305 () Bool)

(assert (=> b!6650305 (= e!4021186 (or (not (= (ite c!1227272 (_2!36794 lt!2423746) (ite c!1227261 (_2!36794 lt!2423743) s!2326)) Nil!65711)) (= lt!2424615 (ite c!1227272 (_1!36794 lt!2423746) (ite c!1227261 (_1!36794 lt!2423743) Nil!65711)))))))

(assert (= (and d!2084124 c!1227451) b!6650302))

(assert (= (and d!2084124 (not c!1227451)) b!6650303))

(assert (= (and d!2084124 res!2725101) b!6650304))

(assert (= (and b!6650304 res!2725102) b!6650305))

(declare-fun m!7416344 () Bool)

(assert (=> b!6650304 m!7416344))

(declare-fun m!7416346 () Bool)

(assert (=> b!6650304 m!7416346))

(declare-fun m!7416348 () Bool)

(assert (=> b!6650304 m!7416348))

(declare-fun m!7416350 () Bool)

(assert (=> b!6650303 m!7416350))

(declare-fun m!7416352 () Bool)

(assert (=> d!2084124 m!7416352))

(declare-fun m!7416354 () Bool)

(assert (=> d!2084124 m!7416354))

(declare-fun m!7416356 () Bool)

(assert (=> d!2084124 m!7416356))

(assert (=> bm!587201 d!2084124))

(declare-fun d!2084126 () Bool)

(assert (=> d!2084126 (= (isDefined!13106 (ite c!1227273 call!587304 (ite c!1227262 call!587165 lt!2423795))) (not (isEmpty!38027 (ite c!1227273 call!587304 (ite c!1227262 call!587165 lt!2423795)))))))

(declare-fun bs!1712037 () Bool)

(assert (= bs!1712037 d!2084126))

(declare-fun m!7416358 () Bool)

(assert (=> bs!1712037 m!7416358))

(assert (=> bm!587186 d!2084126))

(declare-fun d!2084128 () Bool)

(declare-fun e!4021187 () Bool)

(assert (=> d!2084128 (= (matchZipper!2524 (set.union lt!2423844 lt!2423893) (t!379504 s!2326)) e!4021187)))

(declare-fun res!2725103 () Bool)

(assert (=> d!2084128 (=> res!2725103 e!4021187)))

(assert (=> d!2084128 (= res!2725103 (matchZipper!2524 lt!2423844 (t!379504 s!2326)))))

(declare-fun lt!2424616 () Unit!159475)

(assert (=> d!2084128 (= lt!2424616 (choose!49727 lt!2423844 lt!2423893 (t!379504 s!2326)))))

(assert (=> d!2084128 (= (lemmaZipperConcatMatchesSameAsBothZippers!1343 lt!2423844 lt!2423893 (t!379504 s!2326)) lt!2424616)))

(declare-fun b!6650306 () Bool)

(assert (=> b!6650306 (= e!4021187 (matchZipper!2524 lt!2423893 (t!379504 s!2326)))))

(assert (= (and d!2084128 (not res!2725103)) b!6650306))

(declare-fun m!7416360 () Bool)

(assert (=> d!2084128 m!7416360))

(declare-fun m!7416362 () Bool)

(assert (=> d!2084128 m!7416362))

(declare-fun m!7416364 () Bool)

(assert (=> d!2084128 m!7416364))

(assert (=> b!6650306 m!7415624))

(assert (=> b!6649596 d!2084128))

(declare-fun d!2084130 () Bool)

(assert (=> d!2084130 (= (isEmpty!38021 (t!379506 zl!343)) (is-Nil!65713 (t!379506 zl!343)))))

(assert (=> b!6649537 d!2084130))

(declare-fun bs!1712038 () Bool)

(declare-fun d!2084132 () Bool)

(assert (= bs!1712038 (and d!2084132 b!6649576)))

(declare-fun lambda!372361 () Int)

(assert (=> bs!1712038 (= lambda!372361 lambda!372199)))

(declare-fun bs!1712039 () Bool)

(assert (= bs!1712039 (and d!2084132 b!6649595)))

(assert (=> bs!1712039 (= lambda!372361 lambda!372201)))

(declare-fun bs!1712040 () Bool)

(assert (= bs!1712040 (and d!2084132 d!2084092)))

(assert (=> bs!1712040 (= lambda!372361 lambda!372355)))

(declare-fun bs!1712041 () Bool)

(assert (= bs!1712041 (and d!2084132 d!2084108)))

(assert (=> bs!1712041 (= lambda!372361 lambda!372358)))

(assert (=> d!2084132 (= (inv!84528 (h!72161 zl!343)) (forall!15708 (exprs!6396 (h!72161 zl!343)) lambda!372361))))

(declare-fun bs!1712042 () Bool)

(assert (= bs!1712042 d!2084132))

(declare-fun m!7416366 () Bool)

(assert (=> bs!1712042 m!7416366))

(assert (=> b!6649549 d!2084132))

(declare-fun d!2084134 () Bool)

(declare-fun nullableFct!2427 (Regex!16512) Bool)

(assert (=> d!2084134 (= (nullable!6505 (ite c!1227264 (regTwo!33537 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292)))) (nullableFct!2427 (ite c!1227264 (regTwo!33537 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292)))))))

(declare-fun bs!1712043 () Bool)

(assert (= bs!1712043 d!2084134))

(declare-fun m!7416368 () Bool)

(assert (=> bs!1712043 m!7416368))

(assert (=> bm!587214 d!2084134))

(declare-fun b!6650307 () Bool)

(declare-fun e!4021192 () (Set Context!11792))

(assert (=> b!6650307 (= e!4021192 (set.insert (ite (or c!1227264 c!1227273) lt!2423839 (ite c!1227262 (Context!11793 lt!2423897) lt!2423885)) (as set.empty (Set Context!11792))))))

(declare-fun b!6650308 () Bool)

(declare-fun e!4021188 () (Set Context!11792))

(declare-fun call!587997 () (Set Context!11792))

(declare-fun call!587996 () (Set Context!11792))

(assert (=> b!6650308 (= e!4021188 (set.union call!587997 call!587996))))

(declare-fun b!6650309 () Bool)

(declare-fun c!1227454 () Bool)

(declare-fun e!4021193 () Bool)

(assert (=> b!6650309 (= c!1227454 e!4021193)))

(declare-fun res!2725104 () Bool)

(assert (=> b!6650309 (=> (not res!2725104) (not e!4021193))))

(assert (=> b!6650309 (= res!2725104 (is-Concat!25357 (ite c!1227264 (regTwo!33537 (regOne!33536 r!7292)) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))))))))

(declare-fun e!4021191 () (Set Context!11792))

(assert (=> b!6650309 (= e!4021188 e!4021191)))

(declare-fun b!6650310 () Bool)

(assert (=> b!6650310 (= e!4021193 (nullable!6505 (regOne!33536 (ite c!1227264 (regTwo!33537 (regOne!33536 r!7292)) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292))))))))))

(declare-fun bm!587988 () Bool)

(declare-fun call!587998 () (Set Context!11792))

(assert (=> bm!587988 (= call!587998 call!587996)))

(declare-fun b!6650311 () Bool)

(declare-fun e!4021189 () (Set Context!11792))

(declare-fun call!587995 () (Set Context!11792))

(assert (=> b!6650311 (= e!4021189 call!587995)))

(declare-fun d!2084136 () Bool)

(declare-fun c!1227456 () Bool)

(assert (=> d!2084136 (= c!1227456 (and (is-ElementMatch!16512 (ite c!1227264 (regTwo!33537 (regOne!33536 r!7292)) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))))) (= (c!1227274 (ite c!1227264 (regTwo!33537 (regOne!33536 r!7292)) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))))) (h!72159 s!2326))))))

(assert (=> d!2084136 (= (derivationStepZipperDown!1760 (ite c!1227264 (regTwo!33537 (regOne!33536 r!7292)) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292))))) (ite (or c!1227264 c!1227273) lt!2423839 (ite c!1227262 (Context!11793 lt!2423897) lt!2423885)) (h!72159 s!2326)) e!4021192)))

(declare-fun b!6650312 () Bool)

(assert (=> b!6650312 (= e!4021191 e!4021189)))

(declare-fun c!1227452 () Bool)

(assert (=> b!6650312 (= c!1227452 (is-Concat!25357 (ite c!1227264 (regTwo!33537 (regOne!33536 r!7292)) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))))))))

(declare-fun call!587993 () List!65836)

(declare-fun bm!587989 () Bool)

(assert (=> bm!587989 (= call!587993 ($colon$colon!2349 (exprs!6396 (ite (or c!1227264 c!1227273) lt!2423839 (ite c!1227262 (Context!11793 lt!2423897) lt!2423885))) (ite (or c!1227454 c!1227452) (regTwo!33536 (ite c!1227264 (regTwo!33537 (regOne!33536 r!7292)) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))))) (ite c!1227264 (regTwo!33537 (regOne!33536 r!7292)) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292))))))))))

(declare-fun b!6650313 () Bool)

(assert (=> b!6650313 (= e!4021191 (set.union call!587997 call!587998))))

(declare-fun bm!587990 () Bool)

(declare-fun c!1227455 () Bool)

(assert (=> bm!587990 (= call!587997 (derivationStepZipperDown!1760 (ite c!1227455 (regOne!33537 (ite c!1227264 (regTwo!33537 (regOne!33536 r!7292)) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))))) (regOne!33536 (ite c!1227264 (regTwo!33537 (regOne!33536 r!7292)) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292))))))) (ite c!1227455 (ite (or c!1227264 c!1227273) lt!2423839 (ite c!1227262 (Context!11793 lt!2423897) lt!2423885)) (Context!11793 call!587993)) (h!72159 s!2326)))))

(declare-fun bm!587991 () Bool)

(declare-fun call!587994 () List!65836)

(assert (=> bm!587991 (= call!587996 (derivationStepZipperDown!1760 (ite c!1227455 (regTwo!33537 (ite c!1227264 (regTwo!33537 (regOne!33536 r!7292)) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))))) (ite c!1227454 (regTwo!33536 (ite c!1227264 (regTwo!33537 (regOne!33536 r!7292)) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))))) (ite c!1227452 (regOne!33536 (ite c!1227264 (regTwo!33537 (regOne!33536 r!7292)) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))))) (reg!16841 (ite c!1227264 (regTwo!33537 (regOne!33536 r!7292)) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292))))))))) (ite (or c!1227455 c!1227454) (ite (or c!1227264 c!1227273) lt!2423839 (ite c!1227262 (Context!11793 lt!2423897) lt!2423885)) (Context!11793 call!587994)) (h!72159 s!2326)))))

(declare-fun b!6650314 () Bool)

(declare-fun e!4021190 () (Set Context!11792))

(assert (=> b!6650314 (= e!4021190 call!587995)))

(declare-fun b!6650315 () Bool)

(declare-fun c!1227453 () Bool)

(assert (=> b!6650315 (= c!1227453 (is-Star!16512 (ite c!1227264 (regTwo!33537 (regOne!33536 r!7292)) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))))))))

(assert (=> b!6650315 (= e!4021189 e!4021190)))

(declare-fun b!6650316 () Bool)

(assert (=> b!6650316 (= e!4021190 (as set.empty (Set Context!11792)))))

(declare-fun b!6650317 () Bool)

(assert (=> b!6650317 (= e!4021192 e!4021188)))

(assert (=> b!6650317 (= c!1227455 (is-Union!16512 (ite c!1227264 (regTwo!33537 (regOne!33536 r!7292)) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))))))))

(declare-fun bm!587992 () Bool)

(assert (=> bm!587992 (= call!587994 call!587993)))

(declare-fun bm!587993 () Bool)

(assert (=> bm!587993 (= call!587995 call!587998)))

(assert (= (and d!2084136 c!1227456) b!6650307))

(assert (= (and d!2084136 (not c!1227456)) b!6650317))

(assert (= (and b!6650317 c!1227455) b!6650308))

(assert (= (and b!6650317 (not c!1227455)) b!6650309))

(assert (= (and b!6650309 res!2725104) b!6650310))

(assert (= (and b!6650309 c!1227454) b!6650313))

(assert (= (and b!6650309 (not c!1227454)) b!6650312))

(assert (= (and b!6650312 c!1227452) b!6650311))

(assert (= (and b!6650312 (not c!1227452)) b!6650315))

(assert (= (and b!6650315 c!1227453) b!6650314))

(assert (= (and b!6650315 (not c!1227453)) b!6650316))

(assert (= (or b!6650311 b!6650314) bm!587992))

(assert (= (or b!6650311 b!6650314) bm!587993))

(assert (= (or b!6650313 bm!587992) bm!587989))

(assert (= (or b!6650313 bm!587993) bm!587988))

(assert (= (or b!6650308 bm!587988) bm!587991))

(assert (= (or b!6650308 b!6650313) bm!587990))

(declare-fun m!7416370 () Bool)

(assert (=> bm!587989 m!7416370))

(declare-fun m!7416372 () Bool)

(assert (=> b!6650307 m!7416372))

(declare-fun m!7416374 () Bool)

(assert (=> bm!587991 m!7416374))

(declare-fun m!7416376 () Bool)

(assert (=> bm!587990 m!7416376))

(declare-fun m!7416378 () Bool)

(assert (=> b!6650310 m!7416378))

(assert (=> bm!587165 d!2084136))

(declare-fun bs!1712044 () Bool)

(declare-fun b!6650321 () Bool)

(assert (= bs!1712044 (and b!6650321 b!6650154)))

(declare-fun lambda!372362 () Int)

(assert (=> bs!1712044 (= (and (= s!2326 (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (reg!16841 r!7292) (reg!16841 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)))) (= r!7292 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)))) (= lambda!372362 lambda!372351))))

(declare-fun bs!1712045 () Bool)

(assert (= bs!1712045 (and b!6650321 b!6649552)))

(assert (=> bs!1712045 (not (= lambda!372362 lambda!372192))))

(declare-fun bs!1712046 () Bool)

(assert (= bs!1712046 (and b!6650321 b!6649540)))

(assert (=> bs!1712046 (not (= lambda!372362 lambda!372184))))

(declare-fun bs!1712047 () Bool)

(assert (= bs!1712047 (and b!6650321 b!6649586)))

(assert (=> bs!1712047 (= (and (= s!2326 Nil!65711) (= (reg!16841 r!7292) (reg!16841 (regOne!33536 r!7292))) (= r!7292 lt!2423835)) (= lambda!372362 lambda!372209))))

(declare-fun bs!1712048 () Bool)

(assert (= bs!1712048 (and b!6650321 b!6649562)))

(assert (=> bs!1712048 (not (= lambda!372362 lambda!372195))))

(declare-fun bs!1712049 () Bool)

(assert (= bs!1712049 (and b!6650321 b!6649595)))

(assert (=> bs!1712049 (not (= lambda!372362 lambda!372203))))

(declare-fun bs!1712050 () Bool)

(assert (= bs!1712050 (and b!6650321 b!6650151)))

(assert (=> bs!1712050 (not (= lambda!372362 lambda!372352))))

(assert (=> bs!1712045 (not (= lambda!372362 lambda!372193))))

(assert (=> bs!1712049 (= (and (= s!2326 (_1!36794 lt!2423861)) (= (reg!16841 r!7292) (reg!16841 (regOne!33536 r!7292))) (= r!7292 lt!2423835)) (= lambda!372362 lambda!372206))))

(declare-fun bs!1712051 () Bool)

(assert (= bs!1712051 (and b!6650321 b!6649576)))

(assert (=> bs!1712051 (not (= lambda!372362 lambda!372196))))

(assert (=> bs!1712047 (not (= lambda!372362 lambda!372207))))

(declare-fun bs!1712052 () Bool)

(assert (= bs!1712052 (and b!6650321 b!6649550)))

(assert (=> bs!1712052 (not (= lambda!372362 lambda!372186))))

(assert (=> bs!1712046 (not (= lambda!372362 lambda!372183))))

(assert (=> bs!1712052 (not (= lambda!372362 lambda!372188))))

(assert (=> bs!1712049 (not (= lambda!372362 lambda!372204))))

(assert (=> bs!1712051 (not (= lambda!372362 lambda!372198))))

(assert (=> bs!1712052 (not (= lambda!372362 lambda!372189))))

(assert (=> bs!1712048 (not (= lambda!372362 lambda!372194))))

(assert (=> bs!1712047 (not (= lambda!372362 lambda!372208))))

(assert (=> bs!1712045 (not (= lambda!372362 lambda!372191))))

(assert (=> bs!1712045 (not (= lambda!372362 lambda!372190))))

(assert (=> bs!1712049 (not (= lambda!372362 lambda!372202))))

(assert (=> bs!1712051 (= (and (= s!2326 (_1!36794 lt!2423817)) (= (reg!16841 r!7292) (reg!16841 (regOne!33536 r!7292))) (= r!7292 lt!2423835)) (= lambda!372362 lambda!372197))))

(assert (=> bs!1712052 (not (= lambda!372362 lambda!372187))))

(assert (=> bs!1712049 (not (= lambda!372362 lambda!372205))))

(assert (=> b!6650321 true))

(assert (=> b!6650321 true))

(declare-fun bs!1712053 () Bool)

(declare-fun b!6650318 () Bool)

(assert (= bs!1712053 (and b!6650318 b!6650154)))

(declare-fun lambda!372363 () Int)

(assert (=> bs!1712053 (not (= lambda!372363 lambda!372351))))

(declare-fun bs!1712054 () Bool)

(assert (= bs!1712054 (and b!6650318 b!6649552)))

(assert (=> bs!1712054 (not (= lambda!372363 lambda!372192))))

(declare-fun bs!1712055 () Bool)

(assert (= bs!1712055 (and b!6650318 b!6649540)))

(assert (=> bs!1712055 (= lambda!372363 lambda!372184)))

(declare-fun bs!1712056 () Bool)

(assert (= bs!1712056 (and b!6650318 b!6649586)))

(assert (=> bs!1712056 (not (= lambda!372363 lambda!372209))))

(declare-fun bs!1712057 () Bool)

(assert (= bs!1712057 (and b!6650318 b!6649562)))

(assert (=> bs!1712057 (= (= (regOne!33536 r!7292) lt!2423835) (= lambda!372363 lambda!372195))))

(declare-fun bs!1712058 () Bool)

(assert (= bs!1712058 (and b!6650318 b!6649595)))

(assert (=> bs!1712058 (= (= (regOne!33536 r!7292) lt!2423842) (= lambda!372363 lambda!372203))))

(declare-fun bs!1712059 () Bool)

(assert (= bs!1712059 (and b!6650318 b!6650151)))

(assert (=> bs!1712059 (= (and (= s!2326 (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (regOne!33536 r!7292) (regOne!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)))) (= (regTwo!33536 r!7292) (regTwo!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))))) (= lambda!372363 lambda!372352))))

(assert (=> bs!1712054 (= (and (= (regOne!33536 r!7292) (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423798)) (= lambda!372363 lambda!372193))))

(assert (=> bs!1712058 (not (= lambda!372363 lambda!372206))))

(declare-fun bs!1712060 () Bool)

(assert (= bs!1712060 (and b!6650318 b!6649576)))

(assert (=> bs!1712060 (not (= lambda!372363 lambda!372196))))

(declare-fun bs!1712061 () Bool)

(assert (= bs!1712061 (and b!6650318 b!6650321)))

(assert (=> bs!1712061 (not (= lambda!372363 lambda!372362))))

(assert (=> bs!1712056 (not (= lambda!372363 lambda!372207))))

(declare-fun bs!1712062 () Bool)

(assert (= bs!1712062 (and b!6650318 b!6649550)))

(assert (=> bs!1712062 (not (= lambda!372363 lambda!372186))))

(assert (=> bs!1712055 (not (= lambda!372363 lambda!372183))))

(assert (=> bs!1712062 (not (= lambda!372363 lambda!372188))))

(assert (=> bs!1712058 (not (= lambda!372363 lambda!372204))))

(assert (=> bs!1712060 (= (and (= s!2326 (_1!36794 lt!2423817)) (= (regOne!33536 r!7292) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423835)) (= lambda!372363 lambda!372198))))

(assert (=> bs!1712062 (= (and (= (regOne!33536 r!7292) (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423829)) (= lambda!372363 lambda!372189))))

(assert (=> bs!1712057 (not (= lambda!372363 lambda!372194))))

(assert (=> bs!1712056 (= (and (= s!2326 Nil!65711) (= (regOne!33536 r!7292) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423835)) (= lambda!372363 lambda!372208))))

(assert (=> bs!1712054 (= (and (= (regOne!33536 r!7292) (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423938)) (= lambda!372363 lambda!372191))))

(assert (=> bs!1712054 (not (= lambda!372363 lambda!372190))))

(assert (=> bs!1712058 (not (= lambda!372363 lambda!372202))))

(assert (=> bs!1712060 (not (= lambda!372363 lambda!372197))))

(assert (=> bs!1712062 (= (and (= (regOne!33536 r!7292) (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423854)) (= lambda!372363 lambda!372187))))

(assert (=> bs!1712058 (= (and (= s!2326 (_1!36794 lt!2423861)) (= (regOne!33536 r!7292) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423835)) (= lambda!372363 lambda!372205))))

(assert (=> b!6650318 true))

(assert (=> b!6650318 true))

(declare-fun e!4021196 () Bool)

(declare-fun call!587999 () Bool)

(assert (=> b!6650318 (= e!4021196 call!587999)))

(declare-fun b!6650319 () Bool)

(declare-fun e!4021197 () Bool)

(declare-fun e!4021195 () Bool)

(assert (=> b!6650319 (= e!4021197 e!4021195)))

(declare-fun res!2725107 () Bool)

(assert (=> b!6650319 (= res!2725107 (not (is-EmptyLang!16512 r!7292)))))

(assert (=> b!6650319 (=> (not res!2725107) (not e!4021195))))

(declare-fun b!6650320 () Bool)

(declare-fun e!4021199 () Bool)

(assert (=> b!6650320 (= e!4021199 (matchRSpec!3613 (regTwo!33537 r!7292) s!2326))))

(declare-fun e!4021198 () Bool)

(assert (=> b!6650321 (= e!4021198 call!587999)))

(declare-fun d!2084138 () Bool)

(declare-fun c!1227459 () Bool)

(assert (=> d!2084138 (= c!1227459 (is-EmptyExpr!16512 r!7292))))

(assert (=> d!2084138 (= (matchRSpec!3613 r!7292 s!2326) e!4021197)))

(declare-fun b!6650322 () Bool)

(declare-fun c!1227460 () Bool)

(assert (=> b!6650322 (= c!1227460 (is-ElementMatch!16512 r!7292))))

(declare-fun e!4021194 () Bool)

(assert (=> b!6650322 (= e!4021195 e!4021194)))

(declare-fun b!6650323 () Bool)

(declare-fun c!1227457 () Bool)

(assert (=> b!6650323 (= c!1227457 (is-Union!16512 r!7292))))

(declare-fun e!4021200 () Bool)

(assert (=> b!6650323 (= e!4021194 e!4021200)))

(declare-fun b!6650324 () Bool)

(assert (=> b!6650324 (= e!4021194 (= s!2326 (Cons!65711 (c!1227274 r!7292) Nil!65711)))))

(declare-fun bm!587994 () Bool)

(declare-fun call!588000 () Bool)

(assert (=> bm!587994 (= call!588000 (isEmpty!38022 s!2326))))

(declare-fun b!6650325 () Bool)

(assert (=> b!6650325 (= e!4021200 e!4021196)))

(declare-fun c!1227458 () Bool)

(assert (=> b!6650325 (= c!1227458 (is-Star!16512 r!7292))))

(declare-fun bm!587995 () Bool)

(assert (=> bm!587995 (= call!587999 (Exists!3582 (ite c!1227458 lambda!372362 lambda!372363)))))

(declare-fun b!6650326 () Bool)

(assert (=> b!6650326 (= e!4021200 e!4021199)))

(declare-fun res!2725106 () Bool)

(assert (=> b!6650326 (= res!2725106 (matchRSpec!3613 (regOne!33537 r!7292) s!2326))))

(assert (=> b!6650326 (=> res!2725106 e!4021199)))

(declare-fun b!6650327 () Bool)

(assert (=> b!6650327 (= e!4021197 call!588000)))

(declare-fun b!6650328 () Bool)

(declare-fun res!2725105 () Bool)

(assert (=> b!6650328 (=> res!2725105 e!4021198)))

(assert (=> b!6650328 (= res!2725105 call!588000)))

(assert (=> b!6650328 (= e!4021196 e!4021198)))

(assert (= (and d!2084138 c!1227459) b!6650327))

(assert (= (and d!2084138 (not c!1227459)) b!6650319))

(assert (= (and b!6650319 res!2725107) b!6650322))

(assert (= (and b!6650322 c!1227460) b!6650324))

(assert (= (and b!6650322 (not c!1227460)) b!6650323))

(assert (= (and b!6650323 c!1227457) b!6650326))

(assert (= (and b!6650323 (not c!1227457)) b!6650325))

(assert (= (and b!6650326 (not res!2725106)) b!6650320))

(assert (= (and b!6650325 c!1227458) b!6650328))

(assert (= (and b!6650325 (not c!1227458)) b!6650318))

(assert (= (and b!6650328 (not res!2725105)) b!6650321))

(assert (= (or b!6650321 b!6650318) bm!587995))

(assert (= (or b!6650327 b!6650328) bm!587994))

(declare-fun m!7416380 () Bool)

(assert (=> b!6650320 m!7416380))

(declare-fun m!7416382 () Bool)

(assert (=> bm!587994 m!7416382))

(declare-fun m!7416384 () Bool)

(assert (=> bm!587995 m!7416384))

(declare-fun m!7416386 () Bool)

(assert (=> b!6650326 m!7416386))

(assert (=> b!6649602 d!2084138))

(declare-fun b!6650329 () Bool)

(declare-fun e!4021204 () Bool)

(assert (=> b!6650329 (= e!4021204 (= (head!13467 s!2326) (c!1227274 r!7292)))))

(declare-fun b!6650330 () Bool)

(declare-fun e!4021202 () Bool)

(declare-fun e!4021205 () Bool)

(assert (=> b!6650330 (= e!4021202 e!4021205)))

(declare-fun c!1227461 () Bool)

(assert (=> b!6650330 (= c!1227461 (is-EmptyLang!16512 r!7292))))

(declare-fun b!6650331 () Bool)

(declare-fun e!4021203 () Bool)

(assert (=> b!6650331 (= e!4021203 (not (= (head!13467 s!2326) (c!1227274 r!7292))))))

(declare-fun d!2084140 () Bool)

(assert (=> d!2084140 e!4021202))

(declare-fun c!1227463 () Bool)

(assert (=> d!2084140 (= c!1227463 (is-EmptyExpr!16512 r!7292))))

(declare-fun lt!2424617 () Bool)

(declare-fun e!4021201 () Bool)

(assert (=> d!2084140 (= lt!2424617 e!4021201)))

(declare-fun c!1227462 () Bool)

(assert (=> d!2084140 (= c!1227462 (isEmpty!38022 s!2326))))

(assert (=> d!2084140 (validRegex!8248 r!7292)))

(assert (=> d!2084140 (= (matchR!8695 r!7292 s!2326) lt!2424617)))

(declare-fun b!6650332 () Bool)

(declare-fun res!2725110 () Bool)

(declare-fun e!4021206 () Bool)

(assert (=> b!6650332 (=> res!2725110 e!4021206)))

(assert (=> b!6650332 (= res!2725110 (not (is-ElementMatch!16512 r!7292)))))

(assert (=> b!6650332 (= e!4021205 e!4021206)))

(declare-fun bm!587996 () Bool)

(declare-fun call!588001 () Bool)

(assert (=> bm!587996 (= call!588001 (isEmpty!38022 s!2326))))

(declare-fun b!6650333 () Bool)

(declare-fun res!2725108 () Bool)

(assert (=> b!6650333 (=> (not res!2725108) (not e!4021204))))

(assert (=> b!6650333 (= res!2725108 (not call!588001))))

(declare-fun b!6650334 () Bool)

(declare-fun res!2725113 () Bool)

(assert (=> b!6650334 (=> (not res!2725113) (not e!4021204))))

(assert (=> b!6650334 (= res!2725113 (isEmpty!38022 (tail!12552 s!2326)))))

(declare-fun b!6650335 () Bool)

(declare-fun e!4021207 () Bool)

(assert (=> b!6650335 (= e!4021206 e!4021207)))

(declare-fun res!2725112 () Bool)

(assert (=> b!6650335 (=> (not res!2725112) (not e!4021207))))

(assert (=> b!6650335 (= res!2725112 (not lt!2424617))))

(declare-fun b!6650336 () Bool)

(assert (=> b!6650336 (= e!4021205 (not lt!2424617))))

(declare-fun b!6650337 () Bool)

(assert (=> b!6650337 (= e!4021207 e!4021203)))

(declare-fun res!2725114 () Bool)

(assert (=> b!6650337 (=> res!2725114 e!4021203)))

(assert (=> b!6650337 (= res!2725114 call!588001)))

(declare-fun b!6650338 () Bool)

(assert (=> b!6650338 (= e!4021201 (nullable!6505 r!7292))))

(declare-fun b!6650339 () Bool)

(declare-fun res!2725109 () Bool)

(assert (=> b!6650339 (=> res!2725109 e!4021206)))

(assert (=> b!6650339 (= res!2725109 e!4021204)))

(declare-fun res!2725115 () Bool)

(assert (=> b!6650339 (=> (not res!2725115) (not e!4021204))))

(assert (=> b!6650339 (= res!2725115 lt!2424617)))

(declare-fun b!6650340 () Bool)

(assert (=> b!6650340 (= e!4021201 (matchR!8695 (derivativeStep!5192 r!7292 (head!13467 s!2326)) (tail!12552 s!2326)))))

(declare-fun b!6650341 () Bool)

(declare-fun res!2725111 () Bool)

(assert (=> b!6650341 (=> res!2725111 e!4021203)))

(assert (=> b!6650341 (= res!2725111 (not (isEmpty!38022 (tail!12552 s!2326))))))

(declare-fun b!6650342 () Bool)

(assert (=> b!6650342 (= e!4021202 (= lt!2424617 call!588001))))

(assert (= (and d!2084140 c!1227462) b!6650338))

(assert (= (and d!2084140 (not c!1227462)) b!6650340))

(assert (= (and d!2084140 c!1227463) b!6650342))

(assert (= (and d!2084140 (not c!1227463)) b!6650330))

(assert (= (and b!6650330 c!1227461) b!6650336))

(assert (= (and b!6650330 (not c!1227461)) b!6650332))

(assert (= (and b!6650332 (not res!2725110)) b!6650339))

(assert (= (and b!6650339 res!2725115) b!6650333))

(assert (= (and b!6650333 res!2725108) b!6650334))

(assert (= (and b!6650334 res!2725113) b!6650329))

(assert (= (and b!6650339 (not res!2725109)) b!6650335))

(assert (= (and b!6650335 res!2725112) b!6650337))

(assert (= (and b!6650337 (not res!2725114)) b!6650341))

(assert (= (and b!6650341 (not res!2725111)) b!6650331))

(assert (= (or b!6650342 b!6650333 b!6650337) bm!587996))

(declare-fun m!7416388 () Bool)

(assert (=> b!6650340 m!7416388))

(assert (=> b!6650340 m!7416388))

(declare-fun m!7416390 () Bool)

(assert (=> b!6650340 m!7416390))

(declare-fun m!7416392 () Bool)

(assert (=> b!6650340 m!7416392))

(assert (=> b!6650340 m!7416390))

(assert (=> b!6650340 m!7416392))

(declare-fun m!7416394 () Bool)

(assert (=> b!6650340 m!7416394))

(assert (=> b!6650341 m!7416392))

(assert (=> b!6650341 m!7416392))

(declare-fun m!7416396 () Bool)

(assert (=> b!6650341 m!7416396))

(assert (=> bm!587996 m!7416382))

(declare-fun m!7416398 () Bool)

(assert (=> b!6650338 m!7416398))

(assert (=> b!6650334 m!7416392))

(assert (=> b!6650334 m!7416392))

(assert (=> b!6650334 m!7416396))

(assert (=> b!6650329 m!7416388))

(assert (=> d!2084140 m!7416382))

(assert (=> d!2084140 m!7415450))

(assert (=> b!6650331 m!7416388))

(assert (=> b!6649602 d!2084140))

(declare-fun d!2084142 () Bool)

(assert (=> d!2084142 (= (matchR!8695 r!7292 s!2326) (matchRSpec!3613 r!7292 s!2326))))

(declare-fun lt!2424618 () Unit!159475)

(assert (=> d!2084142 (= lt!2424618 (choose!49717 r!7292 s!2326))))

(assert (=> d!2084142 (validRegex!8248 r!7292)))

(assert (=> d!2084142 (= (mainMatchTheorem!3613 r!7292 s!2326) lt!2424618)))

(declare-fun bs!1712063 () Bool)

(assert (= bs!1712063 d!2084142))

(assert (=> bs!1712063 m!7415548))

(assert (=> bs!1712063 m!7415546))

(declare-fun m!7416400 () Bool)

(assert (=> bs!1712063 m!7416400))

(assert (=> bs!1712063 m!7415450))

(assert (=> b!6649602 d!2084142))

(declare-fun c!1227464 () Bool)

(declare-fun d!2084144 () Bool)

(assert (=> d!2084144 (= c!1227464 (isEmpty!38022 (ite (or c!1227268 c!1227264 c!1227273) (t!379504 s!2326) (ite c!1227266 s!2326 (t!379504 s!2326)))))))

(declare-fun e!4021208 () Bool)

(assert (=> d!2084144 (= (matchZipper!2524 (ite c!1227268 lt!2423916 (ite c!1227264 lt!2423844 (ite c!1227273 lt!2423870 (ite c!1227266 z!1189 lt!2423893)))) (ite (or c!1227268 c!1227264 c!1227273) (t!379504 s!2326) (ite c!1227266 s!2326 (t!379504 s!2326)))) e!4021208)))

(declare-fun b!6650343 () Bool)

(assert (=> b!6650343 (= e!4021208 (nullableZipper!2253 (ite c!1227268 lt!2423916 (ite c!1227264 lt!2423844 (ite c!1227273 lt!2423870 (ite c!1227266 z!1189 lt!2423893))))))))

(declare-fun b!6650344 () Bool)

(assert (=> b!6650344 (= e!4021208 (matchZipper!2524 (derivationStepZipper!2478 (ite c!1227268 lt!2423916 (ite c!1227264 lt!2423844 (ite c!1227273 lt!2423870 (ite c!1227266 z!1189 lt!2423893)))) (head!13467 (ite (or c!1227268 c!1227264 c!1227273) (t!379504 s!2326) (ite c!1227266 s!2326 (t!379504 s!2326))))) (tail!12552 (ite (or c!1227268 c!1227264 c!1227273) (t!379504 s!2326) (ite c!1227266 s!2326 (t!379504 s!2326))))))))

(assert (= (and d!2084144 c!1227464) b!6650343))

(assert (= (and d!2084144 (not c!1227464)) b!6650344))

(declare-fun m!7416402 () Bool)

(assert (=> d!2084144 m!7416402))

(declare-fun m!7416404 () Bool)

(assert (=> b!6650343 m!7416404))

(declare-fun m!7416406 () Bool)

(assert (=> b!6650344 m!7416406))

(assert (=> b!6650344 m!7416406))

(declare-fun m!7416408 () Bool)

(assert (=> b!6650344 m!7416408))

(declare-fun m!7416410 () Bool)

(assert (=> b!6650344 m!7416410))

(assert (=> b!6650344 m!7416408))

(assert (=> b!6650344 m!7416410))

(declare-fun m!7416412 () Bool)

(assert (=> b!6650344 m!7416412))

(assert (=> bm!587106 d!2084144))

(declare-fun d!2084146 () Bool)

(assert (=> d!2084146 (= (Exists!3582 (ite c!1227273 lambda!372188 (ite c!1227262 lambda!372191 (ite c!1227272 lambda!372194 (ite c!1227261 lambda!372202 lambda!372209))))) (choose!49715 (ite c!1227273 lambda!372188 (ite c!1227262 lambda!372191 (ite c!1227272 lambda!372194 (ite c!1227261 lambda!372202 lambda!372209))))))))

(declare-fun bs!1712064 () Bool)

(assert (= bs!1712064 d!2084146))

(declare-fun m!7416414 () Bool)

(assert (=> bs!1712064 m!7416414))

(assert (=> bm!587225 d!2084146))

(declare-fun b!6650345 () Bool)

(declare-fun e!4021212 () Bool)

(assert (=> b!6650345 (= e!4021212 (= (head!13467 (ite c!1227268 (t!379504 s!2326) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (_1!36794 lt!2423861)))) (c!1227274 (ite c!1227268 lt!2423888 (ite c!1227264 lt!2423853 (ite c!1227273 (Concat!25357 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) lt!2423829) (ite c!1227262 lt!2423769 lt!2423842)))))))))

(declare-fun b!6650346 () Bool)

(declare-fun e!4021210 () Bool)

(declare-fun e!4021213 () Bool)

(assert (=> b!6650346 (= e!4021210 e!4021213)))

(declare-fun c!1227465 () Bool)

(assert (=> b!6650346 (= c!1227465 (is-EmptyLang!16512 (ite c!1227268 lt!2423888 (ite c!1227264 lt!2423853 (ite c!1227273 (Concat!25357 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) lt!2423829) (ite c!1227262 lt!2423769 lt!2423842))))))))

(declare-fun e!4021211 () Bool)

(declare-fun b!6650347 () Bool)

(assert (=> b!6650347 (= e!4021211 (not (= (head!13467 (ite c!1227268 (t!379504 s!2326) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (_1!36794 lt!2423861)))) (c!1227274 (ite c!1227268 lt!2423888 (ite c!1227264 lt!2423853 (ite c!1227273 (Concat!25357 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) lt!2423829) (ite c!1227262 lt!2423769 lt!2423842))))))))))

(declare-fun d!2084148 () Bool)

(assert (=> d!2084148 e!4021210))

(declare-fun c!1227467 () Bool)

(assert (=> d!2084148 (= c!1227467 (is-EmptyExpr!16512 (ite c!1227268 lt!2423888 (ite c!1227264 lt!2423853 (ite c!1227273 (Concat!25357 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) lt!2423829) (ite c!1227262 lt!2423769 lt!2423842))))))))

(declare-fun lt!2424619 () Bool)

(declare-fun e!4021209 () Bool)

(assert (=> d!2084148 (= lt!2424619 e!4021209)))

(declare-fun c!1227466 () Bool)

(assert (=> d!2084148 (= c!1227466 (isEmpty!38022 (ite c!1227268 (t!379504 s!2326) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (_1!36794 lt!2423861)))))))

(assert (=> d!2084148 (validRegex!8248 (ite c!1227268 lt!2423888 (ite c!1227264 lt!2423853 (ite c!1227273 (Concat!25357 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) lt!2423829) (ite c!1227262 lt!2423769 lt!2423842)))))))

(assert (=> d!2084148 (= (matchR!8695 (ite c!1227268 lt!2423888 (ite c!1227264 lt!2423853 (ite c!1227273 (Concat!25357 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) lt!2423829) (ite c!1227262 lt!2423769 lt!2423842)))) (ite c!1227268 (t!379504 s!2326) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (_1!36794 lt!2423861)))) lt!2424619)))

(declare-fun b!6650348 () Bool)

(declare-fun res!2725118 () Bool)

(declare-fun e!4021214 () Bool)

(assert (=> b!6650348 (=> res!2725118 e!4021214)))

(assert (=> b!6650348 (= res!2725118 (not (is-ElementMatch!16512 (ite c!1227268 lt!2423888 (ite c!1227264 lt!2423853 (ite c!1227273 (Concat!25357 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) lt!2423829) (ite c!1227262 lt!2423769 lt!2423842)))))))))

(assert (=> b!6650348 (= e!4021213 e!4021214)))

(declare-fun call!588002 () Bool)

(declare-fun bm!587997 () Bool)

(assert (=> bm!587997 (= call!588002 (isEmpty!38022 (ite c!1227268 (t!379504 s!2326) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (_1!36794 lt!2423861)))))))

(declare-fun b!6650349 () Bool)

(declare-fun res!2725116 () Bool)

(assert (=> b!6650349 (=> (not res!2725116) (not e!4021212))))

(assert (=> b!6650349 (= res!2725116 (not call!588002))))

(declare-fun b!6650350 () Bool)

(declare-fun res!2725121 () Bool)

(assert (=> b!6650350 (=> (not res!2725121) (not e!4021212))))

(assert (=> b!6650350 (= res!2725121 (isEmpty!38022 (tail!12552 (ite c!1227268 (t!379504 s!2326) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (_1!36794 lt!2423861))))))))

(declare-fun b!6650351 () Bool)

(declare-fun e!4021215 () Bool)

(assert (=> b!6650351 (= e!4021214 e!4021215)))

(declare-fun res!2725120 () Bool)

(assert (=> b!6650351 (=> (not res!2725120) (not e!4021215))))

(assert (=> b!6650351 (= res!2725120 (not lt!2424619))))

(declare-fun b!6650352 () Bool)

(assert (=> b!6650352 (= e!4021213 (not lt!2424619))))

(declare-fun b!6650353 () Bool)

(assert (=> b!6650353 (= e!4021215 e!4021211)))

(declare-fun res!2725122 () Bool)

(assert (=> b!6650353 (=> res!2725122 e!4021211)))

(assert (=> b!6650353 (= res!2725122 call!588002)))

(declare-fun b!6650354 () Bool)

(assert (=> b!6650354 (= e!4021209 (nullable!6505 (ite c!1227268 lt!2423888 (ite c!1227264 lt!2423853 (ite c!1227273 (Concat!25357 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) lt!2423829) (ite c!1227262 lt!2423769 lt!2423842))))))))

(declare-fun b!6650355 () Bool)

(declare-fun res!2725117 () Bool)

(assert (=> b!6650355 (=> res!2725117 e!4021214)))

(assert (=> b!6650355 (= res!2725117 e!4021212)))

(declare-fun res!2725123 () Bool)

(assert (=> b!6650355 (=> (not res!2725123) (not e!4021212))))

(assert (=> b!6650355 (= res!2725123 lt!2424619)))

(declare-fun b!6650356 () Bool)

(assert (=> b!6650356 (= e!4021209 (matchR!8695 (derivativeStep!5192 (ite c!1227268 lt!2423888 (ite c!1227264 lt!2423853 (ite c!1227273 (Concat!25357 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) lt!2423829) (ite c!1227262 lt!2423769 lt!2423842)))) (head!13467 (ite c!1227268 (t!379504 s!2326) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (_1!36794 lt!2423861))))) (tail!12552 (ite c!1227268 (t!379504 s!2326) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (_1!36794 lt!2423861))))))))

(declare-fun b!6650357 () Bool)

(declare-fun res!2725119 () Bool)

(assert (=> b!6650357 (=> res!2725119 e!4021211)))

(assert (=> b!6650357 (= res!2725119 (not (isEmpty!38022 (tail!12552 (ite c!1227268 (t!379504 s!2326) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (_1!36794 lt!2423861)))))))))

(declare-fun b!6650358 () Bool)

(assert (=> b!6650358 (= e!4021210 (= lt!2424619 call!588002))))

(assert (= (and d!2084148 c!1227466) b!6650354))

(assert (= (and d!2084148 (not c!1227466)) b!6650356))

(assert (= (and d!2084148 c!1227467) b!6650358))

(assert (= (and d!2084148 (not c!1227467)) b!6650346))

(assert (= (and b!6650346 c!1227465) b!6650352))

(assert (= (and b!6650346 (not c!1227465)) b!6650348))

(assert (= (and b!6650348 (not res!2725118)) b!6650355))

(assert (= (and b!6650355 res!2725123) b!6650349))

(assert (= (and b!6650349 res!2725116) b!6650350))

(assert (= (and b!6650350 res!2725121) b!6650345))

(assert (= (and b!6650355 (not res!2725117)) b!6650351))

(assert (= (and b!6650351 res!2725120) b!6650353))

(assert (= (and b!6650353 (not res!2725122)) b!6650357))

(assert (= (and b!6650357 (not res!2725119)) b!6650347))

(assert (= (or b!6650358 b!6650349 b!6650353) bm!587997))

(declare-fun m!7416416 () Bool)

(assert (=> b!6650356 m!7416416))

(assert (=> b!6650356 m!7416416))

(declare-fun m!7416418 () Bool)

(assert (=> b!6650356 m!7416418))

(declare-fun m!7416420 () Bool)

(assert (=> b!6650356 m!7416420))

(assert (=> b!6650356 m!7416418))

(assert (=> b!6650356 m!7416420))

(declare-fun m!7416422 () Bool)

(assert (=> b!6650356 m!7416422))

(assert (=> b!6650357 m!7416420))

(assert (=> b!6650357 m!7416420))

(declare-fun m!7416424 () Bool)

(assert (=> b!6650357 m!7416424))

(declare-fun m!7416426 () Bool)

(assert (=> bm!587997 m!7416426))

(declare-fun m!7416428 () Bool)

(assert (=> b!6650354 m!7416428))

(assert (=> b!6650350 m!7416420))

(assert (=> b!6650350 m!7416420))

(assert (=> b!6650350 m!7416424))

(assert (=> b!6650345 m!7416416))

(assert (=> d!2084148 m!7416426))

(declare-fun m!7416430 () Bool)

(assert (=> d!2084148 m!7416430))

(assert (=> b!6650347 m!7416416))

(assert (=> bm!587179 d!2084148))

(declare-fun b!6650359 () Bool)

(declare-fun e!4021218 () (Set Context!11792))

(declare-fun e!4021216 () (Set Context!11792))

(assert (=> b!6650359 (= e!4021218 e!4021216)))

(declare-fun c!1227469 () Bool)

(assert (=> b!6650359 (= c!1227469 (is-Cons!65712 (exprs!6396 (ite c!1227264 lt!2423762 (ite c!1227273 lt!2423923 lt!2423885)))))))

(declare-fun bm!587998 () Bool)

(declare-fun call!588003 () (Set Context!11792))

(assert (=> bm!587998 (= call!588003 (derivationStepZipperDown!1760 (h!72160 (exprs!6396 (ite c!1227264 lt!2423762 (ite c!1227273 lt!2423923 lt!2423885)))) (Context!11793 (t!379505 (exprs!6396 (ite c!1227264 lt!2423762 (ite c!1227273 lt!2423923 lt!2423885))))) (h!72159 s!2326)))))

(declare-fun d!2084150 () Bool)

(declare-fun c!1227468 () Bool)

(declare-fun e!4021217 () Bool)

(assert (=> d!2084150 (= c!1227468 e!4021217)))

(declare-fun res!2725124 () Bool)

(assert (=> d!2084150 (=> (not res!2725124) (not e!4021217))))

(assert (=> d!2084150 (= res!2725124 (is-Cons!65712 (exprs!6396 (ite c!1227264 lt!2423762 (ite c!1227273 lt!2423923 lt!2423885)))))))

(assert (=> d!2084150 (= (derivationStepZipperUp!1686 (ite c!1227264 lt!2423762 (ite c!1227273 lt!2423923 lt!2423885)) (h!72159 s!2326)) e!4021218)))

(declare-fun b!6650360 () Bool)

(assert (=> b!6650360 (= e!4021216 (as set.empty (Set Context!11792)))))

(declare-fun b!6650361 () Bool)

(assert (=> b!6650361 (= e!4021217 (nullable!6505 (h!72160 (exprs!6396 (ite c!1227264 lt!2423762 (ite c!1227273 lt!2423923 lt!2423885))))))))

(declare-fun b!6650362 () Bool)

(assert (=> b!6650362 (= e!4021218 (set.union call!588003 (derivationStepZipperUp!1686 (Context!11793 (t!379505 (exprs!6396 (ite c!1227264 lt!2423762 (ite c!1227273 lt!2423923 lt!2423885))))) (h!72159 s!2326))))))

(declare-fun b!6650363 () Bool)

(assert (=> b!6650363 (= e!4021216 call!588003)))

(assert (= (and d!2084150 res!2725124) b!6650361))

(assert (= (and d!2084150 c!1227468) b!6650362))

(assert (= (and d!2084150 (not c!1227468)) b!6650359))

(assert (= (and b!6650359 c!1227469) b!6650363))

(assert (= (and b!6650359 (not c!1227469)) b!6650360))

(assert (= (or b!6650362 b!6650363) bm!587998))

(declare-fun m!7416432 () Bool)

(assert (=> bm!587998 m!7416432))

(declare-fun m!7416434 () Bool)

(assert (=> b!6650361 m!7416434))

(declare-fun m!7416436 () Bool)

(assert (=> b!6650362 m!7416436))

(assert (=> bm!587102 d!2084150))

(declare-fun d!2084152 () Bool)

(assert (=> d!2084152 (matchR!8695 (Star!16512 (reg!16841 (regOne!33536 r!7292))) (++!14666 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423743)) (ite c!1227272 (_2!36794 lt!2423746) (_2!36794 lt!2423743))))))

(declare-fun lt!2424622 () Unit!159475)

(declare-fun choose!49728 (Regex!16512 List!65835 List!65835) Unit!159475)

(assert (=> d!2084152 (= lt!2424622 (choose!49728 (reg!16841 (regOne!33536 r!7292)) (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423743)) (ite c!1227272 (_2!36794 lt!2423746) (_2!36794 lt!2423743))))))

(assert (=> d!2084152 (validRegex!8248 (Star!16512 (reg!16841 (regOne!33536 r!7292))))))

(assert (=> d!2084152 (= (lemmaStarApp!159 (reg!16841 (regOne!33536 r!7292)) (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423743)) (ite c!1227272 (_2!36794 lt!2423746) (_2!36794 lt!2423743))) lt!2424622)))

(declare-fun bs!1712065 () Bool)

(assert (= bs!1712065 d!2084152))

(declare-fun m!7416438 () Bool)

(assert (=> bs!1712065 m!7416438))

(assert (=> bs!1712065 m!7416438))

(declare-fun m!7416440 () Bool)

(assert (=> bs!1712065 m!7416440))

(declare-fun m!7416442 () Bool)

(assert (=> bs!1712065 m!7416442))

(declare-fun m!7416444 () Bool)

(assert (=> bs!1712065 m!7416444))

(assert (=> bm!587132 d!2084152))

(declare-fun d!2084154 () Bool)

(assert (=> d!2084154 (= (isEmpty!38022 (_1!36794 lt!2423817)) (is-Nil!65711 (_1!36794 lt!2423817)))))

(assert (=> b!6649562 d!2084154))

(declare-fun e!4021219 () Bool)

(declare-fun d!2084156 () Bool)

(assert (=> d!2084156 (= (matchZipper!2524 (set.union (ite c!1227264 lt!2423900 (ite c!1227273 lt!2423846 lt!2423772)) (ite c!1227264 lt!2423893 (ite c!1227273 lt!2423804 lt!2423893))) (t!379504 s!2326)) e!4021219)))

(declare-fun res!2725125 () Bool)

(assert (=> d!2084156 (=> res!2725125 e!4021219)))

(assert (=> d!2084156 (= res!2725125 (matchZipper!2524 (ite c!1227264 lt!2423900 (ite c!1227273 lt!2423846 lt!2423772)) (t!379504 s!2326)))))

(declare-fun lt!2424623 () Unit!159475)

(assert (=> d!2084156 (= lt!2424623 (choose!49727 (ite c!1227264 lt!2423900 (ite c!1227273 lt!2423846 lt!2423772)) (ite c!1227264 lt!2423893 (ite c!1227273 lt!2423804 lt!2423893)) (t!379504 s!2326)))))

(assert (=> d!2084156 (= (lemmaZipperConcatMatchesSameAsBothZippers!1343 (ite c!1227264 lt!2423900 (ite c!1227273 lt!2423846 lt!2423772)) (ite c!1227264 lt!2423893 (ite c!1227273 lt!2423804 lt!2423893)) (t!379504 s!2326)) lt!2424623)))

(declare-fun b!6650364 () Bool)

(assert (=> b!6650364 (= e!4021219 (matchZipper!2524 (ite c!1227264 lt!2423893 (ite c!1227273 lt!2423804 lt!2423893)) (t!379504 s!2326)))))

(assert (= (and d!2084156 (not res!2725125)) b!6650364))

(declare-fun m!7416446 () Bool)

(assert (=> d!2084156 m!7416446))

(declare-fun m!7416448 () Bool)

(assert (=> d!2084156 m!7416448))

(declare-fun m!7416450 () Bool)

(assert (=> d!2084156 m!7416450))

(declare-fun m!7416452 () Bool)

(assert (=> b!6650364 m!7416452))

(assert (=> bm!587190 d!2084156))

(declare-fun d!2084158 () Bool)

(assert (=> d!2084158 (= (++!14666 (++!14666 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423743)) (ite c!1227272 (_2!36794 lt!2423746) (_2!36794 lt!2423743))) (ite c!1227272 (_2!36794 lt!2423817) (_2!36794 lt!2423861))) (++!14666 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423743)) (++!14666 (ite c!1227272 (_2!36794 lt!2423746) (_2!36794 lt!2423743)) (ite c!1227272 (_2!36794 lt!2423817) (_2!36794 lt!2423861)))))))

(declare-fun lt!2424626 () Unit!159475)

(declare-fun choose!49729 (List!65835 List!65835 List!65835) Unit!159475)

(assert (=> d!2084158 (= lt!2424626 (choose!49729 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423743)) (ite c!1227272 (_2!36794 lt!2423746) (_2!36794 lt!2423743)) (ite c!1227272 (_2!36794 lt!2423817) (_2!36794 lt!2423861))))))

(assert (=> d!2084158 (= (lemmaConcatAssociativity!2955 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423743)) (ite c!1227272 (_2!36794 lt!2423746) (_2!36794 lt!2423743)) (ite c!1227272 (_2!36794 lt!2423817) (_2!36794 lt!2423861))) lt!2424626)))

(declare-fun bs!1712066 () Bool)

(assert (= bs!1712066 d!2084158))

(assert (=> bs!1712066 m!7416438))

(declare-fun m!7416454 () Bool)

(assert (=> bs!1712066 m!7416454))

(declare-fun m!7416456 () Bool)

(assert (=> bs!1712066 m!7416456))

(assert (=> bs!1712066 m!7415636))

(assert (=> bs!1712066 m!7415636))

(declare-fun m!7416458 () Bool)

(assert (=> bs!1712066 m!7416458))

(assert (=> bs!1712066 m!7416438))

(assert (=> bm!587111 d!2084158))

(declare-fun bs!1712067 () Bool)

(declare-fun d!2084160 () Bool)

(assert (= bs!1712067 (and d!2084160 b!6650154)))

(declare-fun lambda!372368 () Int)

(assert (=> bs!1712067 (not (= lambda!372368 lambda!372351))))

(declare-fun bs!1712068 () Bool)

(assert (= bs!1712068 (and d!2084160 b!6649552)))

(assert (=> bs!1712068 (= (and (= (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) (= (Star!16512 (reg!16841 (regOne!33536 r!7292))) lt!2423798)) (= lambda!372368 lambda!372192))))

(declare-fun bs!1712069 () Bool)

(assert (= bs!1712069 (and d!2084160 b!6649540)))

(assert (=> bs!1712069 (not (= lambda!372368 lambda!372184))))

(declare-fun bs!1712070 () Bool)

(assert (= bs!1712070 (and d!2084160 b!6649586)))

(assert (=> bs!1712070 (not (= lambda!372368 lambda!372209))))

(declare-fun bs!1712071 () Bool)

(assert (= bs!1712071 (and d!2084160 b!6649562)))

(assert (=> bs!1712071 (not (= lambda!372368 lambda!372195))))

(declare-fun bs!1712072 () Bool)

(assert (= bs!1712072 (and d!2084160 b!6649595)))

(assert (=> bs!1712072 (not (= lambda!372368 lambda!372203))))

(declare-fun bs!1712073 () Bool)

(assert (= bs!1712073 (and d!2084160 b!6650151)))

(assert (=> bs!1712073 (not (= lambda!372368 lambda!372352))))

(assert (=> bs!1712068 (not (= lambda!372368 lambda!372193))))

(assert (=> bs!1712072 (not (= lambda!372368 lambda!372206))))

(declare-fun bs!1712074 () Bool)

(assert (= bs!1712074 (and d!2084160 b!6649576)))

(assert (=> bs!1712074 (= (and (= (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) (_1!36794 lt!2423817)) (= (Star!16512 (reg!16841 (regOne!33536 r!7292))) lt!2423835)) (= lambda!372368 lambda!372196))))

(declare-fun bs!1712075 () Bool)

(assert (= bs!1712075 (and d!2084160 b!6650321)))

(assert (=> bs!1712075 (not (= lambda!372368 lambda!372362))))

(assert (=> bs!1712070 (= (and (= (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) Nil!65711) (= (Star!16512 (reg!16841 (regOne!33536 r!7292))) lt!2423835)) (= lambda!372368 lambda!372207))))

(declare-fun bs!1712076 () Bool)

(assert (= bs!1712076 (and d!2084160 b!6650318)))

(assert (=> bs!1712076 (not (= lambda!372368 lambda!372363))))

(declare-fun bs!1712077 () Bool)

(assert (= bs!1712077 (and d!2084160 b!6649550)))

(assert (=> bs!1712077 (= (and (= (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (= (Star!16512 (reg!16841 (regOne!33536 r!7292))) lt!2423854)) (= lambda!372368 lambda!372186))))

(assert (=> bs!1712069 (= (and (= (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regOne!33536 r!7292)) (= (Star!16512 (reg!16841 (regOne!33536 r!7292))) (regTwo!33536 r!7292))) (= lambda!372368 lambda!372183))))

(assert (=> bs!1712077 (= (and (= (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regTwo!33536 (regOne!33536 r!7292))) (= (Star!16512 (reg!16841 (regOne!33536 r!7292))) lt!2423829)) (= lambda!372368 lambda!372188))))

(assert (=> bs!1712072 (= (and (= (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) (_1!36794 lt!2423861)) (= (Star!16512 (reg!16841 (regOne!33536 r!7292))) lt!2423835)) (= lambda!372368 lambda!372204))))

(assert (=> bs!1712074 (not (= lambda!372368 lambda!372198))))

(assert (=> bs!1712077 (not (= lambda!372368 lambda!372189))))

(assert (=> bs!1712071 (= (and (= (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (reg!16841 (regOne!33536 r!7292)) lt!2423835) (= (Star!16512 (reg!16841 (regOne!33536 r!7292))) (regTwo!33536 r!7292))) (= lambda!372368 lambda!372194))))

(assert (=> bs!1712070 (not (= lambda!372368 lambda!372208))))

(assert (=> bs!1712068 (not (= lambda!372368 lambda!372191))))

(assert (=> bs!1712068 (= (and (= (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (regOne!33536 (regOne!33536 r!7292))) (= (Star!16512 (reg!16841 (regOne!33536 r!7292))) lt!2423938)) (= lambda!372368 lambda!372190))))

(assert (=> bs!1712072 (= (and (= (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (reg!16841 (regOne!33536 r!7292)) lt!2423842) (= (Star!16512 (reg!16841 (regOne!33536 r!7292))) (regTwo!33536 r!7292))) (= lambda!372368 lambda!372202))))

(assert (=> bs!1712074 (not (= lambda!372368 lambda!372197))))

(assert (=> bs!1712077 (not (= lambda!372368 lambda!372187))))

(assert (=> bs!1712072 (not (= lambda!372368 lambda!372205))))

(assert (=> d!2084160 true))

(assert (=> d!2084160 true))

(declare-fun lambda!372369 () Int)

(assert (=> bs!1712067 (= (and (= (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (reg!16841 (regOne!33536 r!7292)) (reg!16841 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)))) (= (Star!16512 (reg!16841 (regOne!33536 r!7292))) (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)))) (= lambda!372369 lambda!372351))))

(assert (=> bs!1712068 (not (= lambda!372369 lambda!372192))))

(assert (=> bs!1712069 (not (= lambda!372369 lambda!372184))))

(assert (=> bs!1712070 (= (and (= (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) Nil!65711) (= (Star!16512 (reg!16841 (regOne!33536 r!7292))) lt!2423835)) (= lambda!372369 lambda!372209))))

(assert (=> bs!1712071 (not (= lambda!372369 lambda!372195))))

(assert (=> bs!1712072 (not (= lambda!372369 lambda!372203))))

(assert (=> bs!1712073 (not (= lambda!372369 lambda!372352))))

(assert (=> bs!1712068 (not (= lambda!372369 lambda!372193))))

(declare-fun bs!1712078 () Bool)

(assert (= bs!1712078 d!2084160))

(assert (=> bs!1712078 (not (= lambda!372369 lambda!372368))))

(assert (=> bs!1712072 (= (and (= (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) (_1!36794 lt!2423861)) (= (Star!16512 (reg!16841 (regOne!33536 r!7292))) lt!2423835)) (= lambda!372369 lambda!372206))))

(assert (=> bs!1712074 (not (= lambda!372369 lambda!372196))))

(assert (=> bs!1712075 (= (and (= (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (reg!16841 (regOne!33536 r!7292)) (reg!16841 r!7292)) (= (Star!16512 (reg!16841 (regOne!33536 r!7292))) r!7292)) (= lambda!372369 lambda!372362))))

(assert (=> bs!1712070 (not (= lambda!372369 lambda!372207))))

(assert (=> bs!1712076 (not (= lambda!372369 lambda!372363))))

(assert (=> bs!1712077 (not (= lambda!372369 lambda!372186))))

(assert (=> bs!1712069 (not (= lambda!372369 lambda!372183))))

(assert (=> bs!1712077 (not (= lambda!372369 lambda!372188))))

(assert (=> bs!1712072 (not (= lambda!372369 lambda!372204))))

(assert (=> bs!1712074 (not (= lambda!372369 lambda!372198))))

(assert (=> bs!1712077 (not (= lambda!372369 lambda!372189))))

(assert (=> bs!1712071 (not (= lambda!372369 lambda!372194))))

(assert (=> bs!1712070 (not (= lambda!372369 lambda!372208))))

(assert (=> bs!1712068 (not (= lambda!372369 lambda!372191))))

(assert (=> bs!1712068 (not (= lambda!372369 lambda!372190))))

(assert (=> bs!1712072 (not (= lambda!372369 lambda!372202))))

(assert (=> bs!1712074 (= (and (= (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) (_1!36794 lt!2423817)) (= (Star!16512 (reg!16841 (regOne!33536 r!7292))) lt!2423835)) (= lambda!372369 lambda!372197))))

(assert (=> bs!1712077 (not (= lambda!372369 lambda!372187))))

(assert (=> bs!1712072 (not (= lambda!372369 lambda!372205))))

(assert (=> d!2084160 true))

(assert (=> d!2084160 true))

(assert (=> d!2084160 (= (Exists!3582 lambda!372368) (Exists!3582 lambda!372369))))

(declare-fun lt!2424629 () Unit!159475)

(declare-fun choose!49730 (Regex!16512 List!65835) Unit!159475)

(assert (=> d!2084160 (= lt!2424629 (choose!49730 (reg!16841 (regOne!33536 r!7292)) (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))))))

(assert (=> d!2084160 (validRegex!8248 (reg!16841 (regOne!33536 r!7292)))))

(assert (=> d!2084160 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!679 (reg!16841 (regOne!33536 r!7292)) (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) lt!2424629)))

(declare-fun m!7416460 () Bool)

(assert (=> bs!1712078 m!7416460))

(declare-fun m!7416462 () Bool)

(assert (=> bs!1712078 m!7416462))

(declare-fun m!7416464 () Bool)

(assert (=> bs!1712078 m!7416464))

(assert (=> bs!1712078 m!7416246))

(assert (=> bm!587286 d!2084160))

(declare-fun e!4021224 () Bool)

(declare-fun d!2084162 () Bool)

(assert (=> d!2084162 (= (matchZipper!2524 (set.union (ite c!1227264 lt!2423844 lt!2423846) (ite c!1227264 lt!2423900 lt!2423870)) (t!379504 s!2326)) e!4021224)))

(declare-fun res!2725136 () Bool)

(assert (=> d!2084162 (=> res!2725136 e!4021224)))

(assert (=> d!2084162 (= res!2725136 (matchZipper!2524 (ite c!1227264 lt!2423844 lt!2423846) (t!379504 s!2326)))))

(declare-fun lt!2424630 () Unit!159475)

(assert (=> d!2084162 (= lt!2424630 (choose!49727 (ite c!1227264 lt!2423844 lt!2423846) (ite c!1227264 lt!2423900 lt!2423870) (t!379504 s!2326)))))

(assert (=> d!2084162 (= (lemmaZipperConcatMatchesSameAsBothZippers!1343 (ite c!1227264 lt!2423844 lt!2423846) (ite c!1227264 lt!2423900 lt!2423870) (t!379504 s!2326)) lt!2424630)))

(declare-fun b!6650375 () Bool)

(assert (=> b!6650375 (= e!4021224 (matchZipper!2524 (ite c!1227264 lt!2423900 lt!2423870) (t!379504 s!2326)))))

(assert (= (and d!2084162 (not res!2725136)) b!6650375))

(declare-fun m!7416466 () Bool)

(assert (=> d!2084162 m!7416466))

(declare-fun m!7416468 () Bool)

(assert (=> d!2084162 m!7416468))

(declare-fun m!7416470 () Bool)

(assert (=> d!2084162 m!7416470))

(declare-fun m!7416472 () Bool)

(assert (=> b!6650375 m!7416472))

(assert (=> bm!587223 d!2084162))

(declare-fun bs!1712079 () Bool)

(declare-fun b!6650379 () Bool)

(assert (= bs!1712079 (and b!6650379 d!2084160)))

(declare-fun lambda!372370 () Int)

(assert (=> bs!1712079 (= (and (= s!2326 (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (reg!16841 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292)))))) (Star!16512 (reg!16841 (regOne!33536 r!7292))))) (= lambda!372370 lambda!372369))))

(declare-fun bs!1712080 () Bool)

(assert (= bs!1712080 (and b!6650379 b!6650154)))

(assert (=> bs!1712080 (= (and (= s!2326 (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (reg!16841 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) (reg!16841 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)))) (= (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292)))))) (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)))) (= lambda!372370 lambda!372351))))

(declare-fun bs!1712081 () Bool)

(assert (= bs!1712081 (and b!6650379 b!6649552)))

(assert (=> bs!1712081 (not (= lambda!372370 lambda!372192))))

(declare-fun bs!1712082 () Bool)

(assert (= bs!1712082 (and b!6650379 b!6649540)))

(assert (=> bs!1712082 (not (= lambda!372370 lambda!372184))))

(declare-fun bs!1712083 () Bool)

(assert (= bs!1712083 (and b!6650379 b!6649586)))

(assert (=> bs!1712083 (= (and (= s!2326 Nil!65711) (= (reg!16841 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292)))))) lt!2423835)) (= lambda!372370 lambda!372209))))

(declare-fun bs!1712084 () Bool)

(assert (= bs!1712084 (and b!6650379 b!6649562)))

(assert (=> bs!1712084 (not (= lambda!372370 lambda!372195))))

(declare-fun bs!1712085 () Bool)

(assert (= bs!1712085 (and b!6650379 b!6649595)))

(assert (=> bs!1712085 (not (= lambda!372370 lambda!372203))))

(declare-fun bs!1712086 () Bool)

(assert (= bs!1712086 (and b!6650379 b!6650151)))

(assert (=> bs!1712086 (not (= lambda!372370 lambda!372352))))

(assert (=> bs!1712081 (not (= lambda!372370 lambda!372193))))

(assert (=> bs!1712079 (not (= lambda!372370 lambda!372368))))

(assert (=> bs!1712085 (= (and (= s!2326 (_1!36794 lt!2423861)) (= (reg!16841 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292)))))) lt!2423835)) (= lambda!372370 lambda!372206))))

(declare-fun bs!1712087 () Bool)

(assert (= bs!1712087 (and b!6650379 b!6649576)))

(assert (=> bs!1712087 (not (= lambda!372370 lambda!372196))))

(declare-fun bs!1712088 () Bool)

(assert (= bs!1712088 (and b!6650379 b!6650321)))

(assert (=> bs!1712088 (= (and (= (reg!16841 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) (reg!16841 r!7292)) (= (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292)))))) r!7292)) (= lambda!372370 lambda!372362))))

(assert (=> bs!1712083 (not (= lambda!372370 lambda!372207))))

(declare-fun bs!1712089 () Bool)

(assert (= bs!1712089 (and b!6650379 b!6650318)))

(assert (=> bs!1712089 (not (= lambda!372370 lambda!372363))))

(declare-fun bs!1712090 () Bool)

(assert (= bs!1712090 (and b!6650379 b!6649550)))

(assert (=> bs!1712090 (not (= lambda!372370 lambda!372186))))

(assert (=> bs!1712082 (not (= lambda!372370 lambda!372183))))

(assert (=> bs!1712090 (not (= lambda!372370 lambda!372188))))

(assert (=> bs!1712085 (not (= lambda!372370 lambda!372204))))

(assert (=> bs!1712087 (not (= lambda!372370 lambda!372198))))

(assert (=> bs!1712090 (not (= lambda!372370 lambda!372189))))

(assert (=> bs!1712084 (not (= lambda!372370 lambda!372194))))

(assert (=> bs!1712083 (not (= lambda!372370 lambda!372208))))

(assert (=> bs!1712081 (not (= lambda!372370 lambda!372191))))

(assert (=> bs!1712081 (not (= lambda!372370 lambda!372190))))

(assert (=> bs!1712085 (not (= lambda!372370 lambda!372202))))

(assert (=> bs!1712087 (= (and (= s!2326 (_1!36794 lt!2423817)) (= (reg!16841 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292)))))) lt!2423835)) (= lambda!372370 lambda!372197))))

(assert (=> bs!1712090 (not (= lambda!372370 lambda!372187))))

(assert (=> bs!1712085 (not (= lambda!372370 lambda!372205))))

(assert (=> b!6650379 true))

(assert (=> b!6650379 true))

(declare-fun bs!1712091 () Bool)

(declare-fun b!6650376 () Bool)

(assert (= bs!1712091 (and b!6650376 d!2084160)))

(declare-fun lambda!372371 () Int)

(assert (=> bs!1712091 (not (= lambda!372371 lambda!372369))))

(declare-fun bs!1712092 () Bool)

(assert (= bs!1712092 (and b!6650376 b!6650154)))

(assert (=> bs!1712092 (not (= lambda!372371 lambda!372351))))

(declare-fun bs!1712093 () Bool)

(assert (= bs!1712093 (and b!6650376 b!6649552)))

(assert (=> bs!1712093 (not (= lambda!372371 lambda!372192))))

(declare-fun bs!1712094 () Bool)

(assert (= bs!1712094 (and b!6650376 b!6649540)))

(assert (=> bs!1712094 (= (and (= (regOne!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) (regOne!33536 r!7292)) (= (regTwo!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) (regTwo!33536 r!7292))) (= lambda!372371 lambda!372184))))

(declare-fun bs!1712095 () Bool)

(assert (= bs!1712095 (and b!6650376 b!6649586)))

(assert (=> bs!1712095 (not (= lambda!372371 lambda!372209))))

(declare-fun bs!1712096 () Bool)

(assert (= bs!1712096 (and b!6650376 b!6649562)))

(assert (=> bs!1712096 (= (and (= (regOne!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) lt!2423835) (= (regTwo!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) (regTwo!33536 r!7292))) (= lambda!372371 lambda!372195))))

(declare-fun bs!1712097 () Bool)

(assert (= bs!1712097 (and b!6650376 b!6649595)))

(assert (=> bs!1712097 (= (and (= (regOne!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) lt!2423842) (= (regTwo!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) (regTwo!33536 r!7292))) (= lambda!372371 lambda!372203))))

(assert (=> bs!1712093 (= (and (= (regOne!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) lt!2423798)) (= lambda!372371 lambda!372193))))

(assert (=> bs!1712091 (not (= lambda!372371 lambda!372368))))

(assert (=> bs!1712097 (not (= lambda!372371 lambda!372206))))

(declare-fun bs!1712098 () Bool)

(assert (= bs!1712098 (and b!6650376 b!6649576)))

(assert (=> bs!1712098 (not (= lambda!372371 lambda!372196))))

(declare-fun bs!1712099 () Bool)

(assert (= bs!1712099 (and b!6650376 b!6650321)))

(assert (=> bs!1712099 (not (= lambda!372371 lambda!372362))))

(assert (=> bs!1712095 (not (= lambda!372371 lambda!372207))))

(declare-fun bs!1712100 () Bool)

(assert (= bs!1712100 (and b!6650376 b!6650318)))

(assert (=> bs!1712100 (= (and (= (regOne!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) (regOne!33536 r!7292)) (= (regTwo!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) (regTwo!33536 r!7292))) (= lambda!372371 lambda!372363))))

(declare-fun bs!1712101 () Bool)

(assert (= bs!1712101 (and b!6650376 b!6649550)))

(assert (=> bs!1712101 (not (= lambda!372371 lambda!372186))))

(assert (=> bs!1712094 (not (= lambda!372371 lambda!372183))))

(assert (=> bs!1712101 (not (= lambda!372371 lambda!372188))))

(assert (=> bs!1712097 (not (= lambda!372371 lambda!372204))))

(assert (=> bs!1712098 (= (and (= s!2326 (_1!36794 lt!2423817)) (= (regOne!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) lt!2423835)) (= lambda!372371 lambda!372198))))

(assert (=> bs!1712101 (= (and (= (regOne!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) lt!2423829)) (= lambda!372371 lambda!372189))))

(assert (=> bs!1712096 (not (= lambda!372371 lambda!372194))))

(assert (=> bs!1712095 (= (and (= s!2326 Nil!65711) (= (regOne!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) lt!2423835)) (= lambda!372371 lambda!372208))))

(assert (=> bs!1712093 (= (and (= (regOne!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) lt!2423938)) (= lambda!372371 lambda!372191))))

(assert (=> bs!1712093 (not (= lambda!372371 lambda!372190))))

(assert (=> bs!1712097 (not (= lambda!372371 lambda!372202))))

(declare-fun bs!1712102 () Bool)

(assert (= bs!1712102 (and b!6650376 b!6650151)))

(assert (=> bs!1712102 (= (and (= s!2326 (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (regOne!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) (regOne!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)))) (= (regTwo!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) (regTwo!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))))) (= lambda!372371 lambda!372352))))

(declare-fun bs!1712103 () Bool)

(assert (= bs!1712103 (and b!6650376 b!6650379)))

(assert (=> bs!1712103 (not (= lambda!372371 lambda!372370))))

(assert (=> bs!1712098 (not (= lambda!372371 lambda!372197))))

(assert (=> bs!1712101 (= (and (= (regOne!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) lt!2423854)) (= lambda!372371 lambda!372187))))

(assert (=> bs!1712097 (= (and (= s!2326 (_1!36794 lt!2423861)) (= (regOne!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) lt!2423835)) (= lambda!372371 lambda!372205))))

(assert (=> b!6650376 true))

(assert (=> b!6650376 true))

(declare-fun e!4021227 () Bool)

(declare-fun call!588004 () Bool)

(assert (=> b!6650376 (= e!4021227 call!588004)))

(declare-fun b!6650377 () Bool)

(declare-fun e!4021228 () Bool)

(declare-fun e!4021226 () Bool)

(assert (=> b!6650377 (= e!4021228 e!4021226)))

(declare-fun res!2725139 () Bool)

(assert (=> b!6650377 (= res!2725139 (not (is-EmptyLang!16512 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292)))))))))))

(assert (=> b!6650377 (=> (not res!2725139) (not e!4021226))))

(declare-fun b!6650378 () Bool)

(declare-fun e!4021230 () Bool)

(assert (=> b!6650378 (= e!4021230 (matchRSpec!3613 (regTwo!33537 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) s!2326))))

(declare-fun e!4021229 () Bool)

(assert (=> b!6650379 (= e!4021229 call!588004)))

(declare-fun c!1227472 () Bool)

(declare-fun d!2084164 () Bool)

(assert (=> d!2084164 (= c!1227472 (is-EmptyExpr!16512 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))))))

(assert (=> d!2084164 (= (matchRSpec!3613 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292)))))) s!2326) e!4021228)))

(declare-fun b!6650380 () Bool)

(declare-fun c!1227473 () Bool)

(assert (=> b!6650380 (= c!1227473 (is-ElementMatch!16512 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))))))

(declare-fun e!4021225 () Bool)

(assert (=> b!6650380 (= e!4021226 e!4021225)))

(declare-fun c!1227470 () Bool)

(declare-fun b!6650381 () Bool)

(assert (=> b!6650381 (= c!1227470 (is-Union!16512 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))))))

(declare-fun e!4021231 () Bool)

(assert (=> b!6650381 (= e!4021225 e!4021231)))

(declare-fun b!6650382 () Bool)

(assert (=> b!6650382 (= e!4021225 (= s!2326 (Cons!65711 (c!1227274 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) Nil!65711)))))

(declare-fun bm!587999 () Bool)

(declare-fun call!588005 () Bool)

(assert (=> bm!587999 (= call!588005 (isEmpty!38022 s!2326))))

(declare-fun b!6650383 () Bool)

(assert (=> b!6650383 (= e!4021231 e!4021227)))

(declare-fun c!1227471 () Bool)

(assert (=> b!6650383 (= c!1227471 (is-Star!16512 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))))))

(declare-fun bm!588000 () Bool)

(assert (=> bm!588000 (= call!588004 (Exists!3582 (ite c!1227471 lambda!372370 lambda!372371)))))

(declare-fun b!6650384 () Bool)

(assert (=> b!6650384 (= e!4021231 e!4021230)))

(declare-fun res!2725138 () Bool)

(assert (=> b!6650384 (= res!2725138 (matchRSpec!3613 (regOne!33537 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))) s!2326))))

(assert (=> b!6650384 (=> res!2725138 e!4021230)))

(declare-fun b!6650385 () Bool)

(assert (=> b!6650385 (= e!4021228 call!588005)))

(declare-fun b!6650386 () Bool)

(declare-fun res!2725137 () Bool)

(assert (=> b!6650386 (=> res!2725137 e!4021229)))

(assert (=> b!6650386 (= res!2725137 call!588005)))

(assert (=> b!6650386 (= e!4021227 e!4021229)))

(assert (= (and d!2084164 c!1227472) b!6650385))

(assert (= (and d!2084164 (not c!1227472)) b!6650377))

(assert (= (and b!6650377 res!2725139) b!6650380))

(assert (= (and b!6650380 c!1227473) b!6650382))

(assert (= (and b!6650380 (not c!1227473)) b!6650381))

(assert (= (and b!6650381 c!1227470) b!6650384))

(assert (= (and b!6650381 (not c!1227470)) b!6650383))

(assert (= (and b!6650384 (not res!2725138)) b!6650378))

(assert (= (and b!6650383 c!1227471) b!6650386))

(assert (= (and b!6650383 (not c!1227471)) b!6650376))

(assert (= (and b!6650386 (not res!2725137)) b!6650379))

(assert (= (or b!6650379 b!6650376) bm!588000))

(assert (= (or b!6650385 b!6650386) bm!587999))

(declare-fun m!7416474 () Bool)

(assert (=> b!6650378 m!7416474))

(assert (=> bm!587999 m!7416382))

(declare-fun m!7416476 () Bool)

(assert (=> bm!588000 m!7416476))

(declare-fun m!7416478 () Bool)

(assert (=> b!6650384 m!7416478))

(assert (=> bm!587176 d!2084164))

(declare-fun d!2084166 () Bool)

(assert (=> d!2084166 (= (matchR!8695 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423854 (ite c!1227266 (ite (or c!1227272 c!1227261) lt!2423816 lt!2423849) lt!2423935))) (ite (or c!1227264 c!1227273) s!2326 (ite c!1227266 (ite c!1227272 lt!2423906 (ite c!1227261 (_2!36794 lt!2423904) s!2326)) s!2326))) (matchZipper!2524 (ite c!1227264 lt!2423879 (ite c!1227273 lt!2423939 (ite c!1227266 (ite (or c!1227272 c!1227261) lt!2423824 lt!2423868) lt!2423867))) (ite (or c!1227264 c!1227273) s!2326 (ite c!1227266 (ite c!1227272 lt!2423906 (ite c!1227261 (_2!36794 lt!2423904) s!2326)) s!2326))))))

(declare-fun lt!2424631 () Unit!159475)

(assert (=> d!2084166 (= lt!2424631 (choose!49724 (ite c!1227264 lt!2423879 (ite c!1227273 lt!2423939 (ite c!1227266 (ite (or c!1227272 c!1227261) lt!2423824 lt!2423868) lt!2423867))) (ite c!1227264 (Cons!65713 lt!2423823 Nil!65713) (ite c!1227273 (Cons!65713 lt!2423923 Nil!65713) (ite (and c!1227266 (or c!1227272 c!1227261)) (Cons!65713 lt!2423885 Nil!65713) (Cons!65713 lt!2423839 Nil!65713)))) (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423854 (ite c!1227266 (ite (or c!1227272 c!1227261) lt!2423816 lt!2423849) lt!2423935))) (ite (or c!1227264 c!1227273) s!2326 (ite c!1227266 (ite c!1227272 lt!2423906 (ite c!1227261 (_2!36794 lt!2423904) s!2326)) s!2326))))))

(assert (=> d!2084166 (validRegex!8248 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423854 (ite c!1227266 (ite (or c!1227272 c!1227261) lt!2423816 lt!2423849) lt!2423935))))))

(assert (=> d!2084166 (= (theoremZipperRegexEquiv!908 (ite c!1227264 lt!2423879 (ite c!1227273 lt!2423939 (ite c!1227266 (ite (or c!1227272 c!1227261) lt!2423824 lt!2423868) lt!2423867))) (ite c!1227264 (Cons!65713 lt!2423823 Nil!65713) (ite c!1227273 (Cons!65713 lt!2423923 Nil!65713) (ite (and c!1227266 (or c!1227272 c!1227261)) (Cons!65713 lt!2423885 Nil!65713) (Cons!65713 lt!2423839 Nil!65713)))) (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423854 (ite c!1227266 (ite (or c!1227272 c!1227261) lt!2423816 lt!2423849) lt!2423935))) (ite (or c!1227264 c!1227273) s!2326 (ite c!1227266 (ite c!1227272 lt!2423906 (ite c!1227261 (_2!36794 lt!2423904) s!2326)) s!2326))) lt!2424631)))

(declare-fun bs!1712104 () Bool)

(assert (= bs!1712104 d!2084166))

(declare-fun m!7416480 () Bool)

(assert (=> bs!1712104 m!7416480))

(declare-fun m!7416482 () Bool)

(assert (=> bs!1712104 m!7416482))

(declare-fun m!7416484 () Bool)

(assert (=> bs!1712104 m!7416484))

(declare-fun m!7416486 () Bool)

(assert (=> bs!1712104 m!7416486))

(assert (=> bm!587207 d!2084166))

(declare-fun bs!1712105 () Bool)

(declare-fun d!2084168 () Bool)

(assert (= bs!1712105 (and d!2084168 d!2084108)))

(declare-fun lambda!372372 () Int)

(assert (=> bs!1712105 (= lambda!372372 lambda!372358)))

(declare-fun bs!1712106 () Bool)

(assert (= bs!1712106 (and d!2084168 b!6649576)))

(assert (=> bs!1712106 (= lambda!372372 lambda!372199)))

(declare-fun bs!1712107 () Bool)

(assert (= bs!1712107 (and d!2084168 d!2084092)))

(assert (=> bs!1712107 (= lambda!372372 lambda!372355)))

(declare-fun bs!1712108 () Bool)

(assert (= bs!1712108 (and d!2084168 b!6649595)))

(assert (=> bs!1712108 (= lambda!372372 lambda!372201)))

(declare-fun bs!1712109 () Bool)

(assert (= bs!1712109 (and d!2084168 d!2084132)))

(assert (=> bs!1712109 (= lambda!372372 lambda!372361)))

(declare-fun e!4021233 () Regex!16512)

(declare-fun b!6650387 () Bool)

(assert (=> b!6650387 (= e!4021233 (h!72160 (ite c!1227273 lt!2423848 (ite c!1227262 lt!2423897 (t!379505 (exprs!6396 (h!72161 zl!343)))))))))

(declare-fun b!6650388 () Bool)

(declare-fun e!4021234 () Regex!16512)

(assert (=> b!6650388 (= e!4021234 (Concat!25357 (h!72160 (ite c!1227273 lt!2423848 (ite c!1227262 lt!2423897 (t!379505 (exprs!6396 (h!72161 zl!343)))))) (generalisedConcat!2109 (t!379505 (ite c!1227273 lt!2423848 (ite c!1227262 lt!2423897 (t!379505 (exprs!6396 (h!72161 zl!343)))))))))))

(declare-fun b!6650389 () Bool)

(assert (=> b!6650389 (= e!4021233 e!4021234)))

(declare-fun c!1227477 () Bool)

(assert (=> b!6650389 (= c!1227477 (is-Cons!65712 (ite c!1227273 lt!2423848 (ite c!1227262 lt!2423897 (t!379505 (exprs!6396 (h!72161 zl!343)))))))))

(declare-fun b!6650390 () Bool)

(declare-fun e!4021236 () Bool)

(declare-fun e!4021237 () Bool)

(assert (=> b!6650390 (= e!4021236 e!4021237)))

(declare-fun c!1227474 () Bool)

(assert (=> b!6650390 (= c!1227474 (isEmpty!38023 (ite c!1227273 lt!2423848 (ite c!1227262 lt!2423897 (t!379505 (exprs!6396 (h!72161 zl!343)))))))))

(declare-fun b!6650392 () Bool)

(declare-fun e!4021235 () Bool)

(assert (=> b!6650392 (= e!4021235 (isEmpty!38023 (t!379505 (ite c!1227273 lt!2423848 (ite c!1227262 lt!2423897 (t!379505 (exprs!6396 (h!72161 zl!343))))))))))

(assert (=> d!2084168 e!4021236))

(declare-fun res!2725140 () Bool)

(assert (=> d!2084168 (=> (not res!2725140) (not e!4021236))))

(declare-fun lt!2424632 () Regex!16512)

(assert (=> d!2084168 (= res!2725140 (validRegex!8248 lt!2424632))))

(assert (=> d!2084168 (= lt!2424632 e!4021233)))

(declare-fun c!1227476 () Bool)

(assert (=> d!2084168 (= c!1227476 e!4021235)))

(declare-fun res!2725141 () Bool)

(assert (=> d!2084168 (=> (not res!2725141) (not e!4021235))))

(assert (=> d!2084168 (= res!2725141 (is-Cons!65712 (ite c!1227273 lt!2423848 (ite c!1227262 lt!2423897 (t!379505 (exprs!6396 (h!72161 zl!343)))))))))

(assert (=> d!2084168 (forall!15708 (ite c!1227273 lt!2423848 (ite c!1227262 lt!2423897 (t!379505 (exprs!6396 (h!72161 zl!343))))) lambda!372372)))

(assert (=> d!2084168 (= (generalisedConcat!2109 (ite c!1227273 lt!2423848 (ite c!1227262 lt!2423897 (t!379505 (exprs!6396 (h!72161 zl!343)))))) lt!2424632)))

(declare-fun e!4021232 () Bool)

(declare-fun b!6650391 () Bool)

(assert (=> b!6650391 (= e!4021232 (= lt!2424632 (head!13468 (ite c!1227273 lt!2423848 (ite c!1227262 lt!2423897 (t!379505 (exprs!6396 (h!72161 zl!343))))))))))

(declare-fun b!6650393 () Bool)

(assert (=> b!6650393 (= e!4021234 EmptyExpr!16512)))

(declare-fun b!6650394 () Bool)

(assert (=> b!6650394 (= e!4021237 e!4021232)))

(declare-fun c!1227475 () Bool)

(assert (=> b!6650394 (= c!1227475 (isEmpty!38023 (tail!12553 (ite c!1227273 lt!2423848 (ite c!1227262 lt!2423897 (t!379505 (exprs!6396 (h!72161 zl!343))))))))))

(declare-fun b!6650395 () Bool)

(assert (=> b!6650395 (= e!4021237 (isEmptyExpr!1886 lt!2424632))))

(declare-fun b!6650396 () Bool)

(assert (=> b!6650396 (= e!4021232 (isConcat!1409 lt!2424632))))

(assert (= (and d!2084168 res!2725141) b!6650392))

(assert (= (and d!2084168 c!1227476) b!6650387))

(assert (= (and d!2084168 (not c!1227476)) b!6650389))

(assert (= (and b!6650389 c!1227477) b!6650388))

(assert (= (and b!6650389 (not c!1227477)) b!6650393))

(assert (= (and d!2084168 res!2725140) b!6650390))

(assert (= (and b!6650390 c!1227474) b!6650395))

(assert (= (and b!6650390 (not c!1227474)) b!6650394))

(assert (= (and b!6650394 c!1227475) b!6650391))

(assert (= (and b!6650394 (not c!1227475)) b!6650396))

(declare-fun m!7416488 () Bool)

(assert (=> b!6650395 m!7416488))

(declare-fun m!7416490 () Bool)

(assert (=> b!6650388 m!7416490))

(declare-fun m!7416492 () Bool)

(assert (=> b!6650390 m!7416492))

(declare-fun m!7416494 () Bool)

(assert (=> b!6650391 m!7416494))

(declare-fun m!7416496 () Bool)

(assert (=> d!2084168 m!7416496))

(declare-fun m!7416498 () Bool)

(assert (=> d!2084168 m!7416498))

(declare-fun m!7416500 () Bool)

(assert (=> b!6650396 m!7416500))

(declare-fun m!7416502 () Bool)

(assert (=> b!6650394 m!7416502))

(assert (=> b!6650394 m!7416502))

(declare-fun m!7416504 () Bool)

(assert (=> b!6650394 m!7416504))

(declare-fun m!7416506 () Bool)

(assert (=> b!6650392 m!7416506))

(assert (=> bm!587123 d!2084168))

(declare-fun d!2084170 () Bool)

(declare-fun c!1227478 () Bool)

(assert (=> d!2084170 (= c!1227478 (isEmpty!38022 (ite c!1227264 (t!379504 s!2326) (ite (or c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) lt!2423906 s!2326)))))))

(declare-fun e!4021238 () Bool)

(assert (=> d!2084170 (= (matchZipper!2524 (ite c!1227264 lt!2423893 (ite c!1227273 lt!2423939 (ite c!1227262 lt!2423765 (ite c!1227266 (ite c!1227272 lt!2423824 z!1189) lt!2423867)))) (ite c!1227264 (t!379504 s!2326) (ite (or c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) lt!2423906 s!2326)))) e!4021238)))

(declare-fun b!6650397 () Bool)

(assert (=> b!6650397 (= e!4021238 (nullableZipper!2253 (ite c!1227264 lt!2423893 (ite c!1227273 lt!2423939 (ite c!1227262 lt!2423765 (ite c!1227266 (ite c!1227272 lt!2423824 z!1189) lt!2423867))))))))

(declare-fun b!6650398 () Bool)

(assert (=> b!6650398 (= e!4021238 (matchZipper!2524 (derivationStepZipper!2478 (ite c!1227264 lt!2423893 (ite c!1227273 lt!2423939 (ite c!1227262 lt!2423765 (ite c!1227266 (ite c!1227272 lt!2423824 z!1189) lt!2423867)))) (head!13467 (ite c!1227264 (t!379504 s!2326) (ite (or c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) lt!2423906 s!2326))))) (tail!12552 (ite c!1227264 (t!379504 s!2326) (ite (or c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) lt!2423906 s!2326))))))))

(assert (= (and d!2084170 c!1227478) b!6650397))

(assert (= (and d!2084170 (not c!1227478)) b!6650398))

(declare-fun m!7416508 () Bool)

(assert (=> d!2084170 m!7416508))

(declare-fun m!7416510 () Bool)

(assert (=> b!6650397 m!7416510))

(declare-fun m!7416512 () Bool)

(assert (=> b!6650398 m!7416512))

(assert (=> b!6650398 m!7416512))

(declare-fun m!7416514 () Bool)

(assert (=> b!6650398 m!7416514))

(declare-fun m!7416516 () Bool)

(assert (=> b!6650398 m!7416516))

(assert (=> b!6650398 m!7416514))

(assert (=> b!6650398 m!7416516))

(declare-fun m!7416518 () Bool)

(assert (=> b!6650398 m!7416518))

(assert (=> bm!587296 d!2084170))

(declare-fun d!2084172 () Bool)

(assert (=> d!2084172 (= (flatMap!2017 (ite c!1227264 lt!2423883 (ite c!1227272 lt!2423830 lt!2423868)) (ite c!1227264 lambda!372185 (ite c!1227272 lambda!372185 lambda!372185))) (dynLambda!26183 (ite c!1227264 lambda!372185 (ite c!1227272 lambda!372185 lambda!372185)) (ite c!1227264 lt!2423762 lt!2423839)))))

(declare-fun lt!2424633 () Unit!159475)

(assert (=> d!2084172 (= lt!2424633 (choose!49723 (ite c!1227264 lt!2423883 (ite c!1227272 lt!2423830 lt!2423868)) (ite c!1227264 lt!2423762 lt!2423839) (ite c!1227264 lambda!372185 (ite c!1227272 lambda!372185 lambda!372185))))))

(assert (=> d!2084172 (= (ite c!1227264 lt!2423883 (ite c!1227272 lt!2423830 lt!2423868)) (set.insert (ite c!1227264 lt!2423762 lt!2423839) (as set.empty (Set Context!11792))))))

(assert (=> d!2084172 (= (lemmaFlatMapOnSingletonSet!1543 (ite c!1227264 lt!2423883 (ite c!1227272 lt!2423830 lt!2423868)) (ite c!1227264 lt!2423762 lt!2423839) (ite c!1227264 lambda!372185 (ite c!1227272 lambda!372185 lambda!372185))) lt!2424633)))

(declare-fun b_lambda!251141 () Bool)

(assert (=> (not b_lambda!251141) (not d!2084172)))

(declare-fun bs!1712110 () Bool)

(assert (= bs!1712110 d!2084172))

(declare-fun m!7416520 () Bool)

(assert (=> bs!1712110 m!7416520))

(declare-fun m!7416522 () Bool)

(assert (=> bs!1712110 m!7416522))

(declare-fun m!7416524 () Bool)

(assert (=> bs!1712110 m!7416524))

(declare-fun m!7416526 () Bool)

(assert (=> bs!1712110 m!7416526))

(assert (=> bm!587218 d!2084172))

(declare-fun b!6650401 () Bool)

(declare-fun res!2725143 () Bool)

(declare-fun e!4021240 () Bool)

(assert (=> b!6650401 (=> (not res!2725143) (not e!4021240))))

(declare-fun lt!2424634 () List!65835)

(assert (=> b!6650401 (= res!2725143 (= (size!40568 lt!2424634) (+ (size!40568 (ite c!1227272 (_2!36794 lt!2423746) (_2!36794 lt!2423743))) (size!40568 (ite c!1227272 (_2!36794 lt!2423817) (_2!36794 lt!2423861))))))))

(declare-fun e!4021239 () List!65835)

(declare-fun b!6650400 () Bool)

(assert (=> b!6650400 (= e!4021239 (Cons!65711 (h!72159 (ite c!1227272 (_2!36794 lt!2423746) (_2!36794 lt!2423743))) (++!14666 (t!379504 (ite c!1227272 (_2!36794 lt!2423746) (_2!36794 lt!2423743))) (ite c!1227272 (_2!36794 lt!2423817) (_2!36794 lt!2423861)))))))

(declare-fun d!2084174 () Bool)

(assert (=> d!2084174 e!4021240))

(declare-fun res!2725142 () Bool)

(assert (=> d!2084174 (=> (not res!2725142) (not e!4021240))))

(assert (=> d!2084174 (= res!2725142 (= (content!12708 lt!2424634) (set.union (content!12708 (ite c!1227272 (_2!36794 lt!2423746) (_2!36794 lt!2423743))) (content!12708 (ite c!1227272 (_2!36794 lt!2423817) (_2!36794 lt!2423861))))))))

(assert (=> d!2084174 (= lt!2424634 e!4021239)))

(declare-fun c!1227479 () Bool)

(assert (=> d!2084174 (= c!1227479 (is-Nil!65711 (ite c!1227272 (_2!36794 lt!2423746) (_2!36794 lt!2423743))))))

(assert (=> d!2084174 (= (++!14666 (ite c!1227272 (_2!36794 lt!2423746) (_2!36794 lt!2423743)) (ite c!1227272 (_2!36794 lt!2423817) (_2!36794 lt!2423861))) lt!2424634)))

(declare-fun b!6650399 () Bool)

(assert (=> b!6650399 (= e!4021239 (ite c!1227272 (_2!36794 lt!2423817) (_2!36794 lt!2423861)))))

(declare-fun b!6650402 () Bool)

(assert (=> b!6650402 (= e!4021240 (or (not (= (ite c!1227272 (_2!36794 lt!2423817) (_2!36794 lt!2423861)) Nil!65711)) (= lt!2424634 (ite c!1227272 (_2!36794 lt!2423746) (_2!36794 lt!2423743)))))))

(assert (= (and d!2084174 c!1227479) b!6650399))

(assert (= (and d!2084174 (not c!1227479)) b!6650400))

(assert (= (and d!2084174 res!2725142) b!6650401))

(assert (= (and b!6650401 res!2725143) b!6650402))

(declare-fun m!7416528 () Bool)

(assert (=> b!6650401 m!7416528))

(declare-fun m!7416530 () Bool)

(assert (=> b!6650401 m!7416530))

(declare-fun m!7416532 () Bool)

(assert (=> b!6650401 m!7416532))

(declare-fun m!7416534 () Bool)

(assert (=> b!6650400 m!7416534))

(declare-fun m!7416536 () Bool)

(assert (=> d!2084174 m!7416536))

(declare-fun m!7416538 () Bool)

(assert (=> d!2084174 m!7416538))

(declare-fun m!7416540 () Bool)

(assert (=> d!2084174 m!7416540))

(assert (=> bm!587155 d!2084174))

(declare-fun e!4021244 () Bool)

(declare-fun b!6650403 () Bool)

(assert (=> b!6650403 (= e!4021244 (= (head!13467 (ite c!1227262 s!2326 (ite c!1227272 lt!2423906 (ite c!1227261 lt!2423850 call!587267)))) (c!1227274 (ite c!1227262 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (Concat!25357 (regTwo!33536 (regOne!33536 r!7292)) lt!2423798)) (ite c!1227272 lt!2423816 (ite c!1227261 lt!2423835 lt!2423816))))))))

(declare-fun b!6650404 () Bool)

(declare-fun e!4021242 () Bool)

(declare-fun e!4021245 () Bool)

(assert (=> b!6650404 (= e!4021242 e!4021245)))

(declare-fun c!1227480 () Bool)

(assert (=> b!6650404 (= c!1227480 (is-EmptyLang!16512 (ite c!1227262 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (Concat!25357 (regTwo!33536 (regOne!33536 r!7292)) lt!2423798)) (ite c!1227272 lt!2423816 (ite c!1227261 lt!2423835 lt!2423816)))))))

(declare-fun e!4021243 () Bool)

(declare-fun b!6650405 () Bool)

(assert (=> b!6650405 (= e!4021243 (not (= (head!13467 (ite c!1227262 s!2326 (ite c!1227272 lt!2423906 (ite c!1227261 lt!2423850 call!587267)))) (c!1227274 (ite c!1227262 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (Concat!25357 (regTwo!33536 (regOne!33536 r!7292)) lt!2423798)) (ite c!1227272 lt!2423816 (ite c!1227261 lt!2423835 lt!2423816)))))))))

(declare-fun d!2084176 () Bool)

(assert (=> d!2084176 e!4021242))

(declare-fun c!1227482 () Bool)

(assert (=> d!2084176 (= c!1227482 (is-EmptyExpr!16512 (ite c!1227262 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (Concat!25357 (regTwo!33536 (regOne!33536 r!7292)) lt!2423798)) (ite c!1227272 lt!2423816 (ite c!1227261 lt!2423835 lt!2423816)))))))

(declare-fun lt!2424635 () Bool)

(declare-fun e!4021241 () Bool)

(assert (=> d!2084176 (= lt!2424635 e!4021241)))

(declare-fun c!1227481 () Bool)

(assert (=> d!2084176 (= c!1227481 (isEmpty!38022 (ite c!1227262 s!2326 (ite c!1227272 lt!2423906 (ite c!1227261 lt!2423850 call!587267)))))))

(assert (=> d!2084176 (validRegex!8248 (ite c!1227262 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (Concat!25357 (regTwo!33536 (regOne!33536 r!7292)) lt!2423798)) (ite c!1227272 lt!2423816 (ite c!1227261 lt!2423835 lt!2423816))))))

(assert (=> d!2084176 (= (matchR!8695 (ite c!1227262 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (Concat!25357 (regTwo!33536 (regOne!33536 r!7292)) lt!2423798)) (ite c!1227272 lt!2423816 (ite c!1227261 lt!2423835 lt!2423816))) (ite c!1227262 s!2326 (ite c!1227272 lt!2423906 (ite c!1227261 lt!2423850 call!587267)))) lt!2424635)))

(declare-fun b!6650406 () Bool)

(declare-fun res!2725146 () Bool)

(declare-fun e!4021246 () Bool)

(assert (=> b!6650406 (=> res!2725146 e!4021246)))

(assert (=> b!6650406 (= res!2725146 (not (is-ElementMatch!16512 (ite c!1227262 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (Concat!25357 (regTwo!33536 (regOne!33536 r!7292)) lt!2423798)) (ite c!1227272 lt!2423816 (ite c!1227261 lt!2423835 lt!2423816))))))))

(assert (=> b!6650406 (= e!4021245 e!4021246)))

(declare-fun bm!588001 () Bool)

(declare-fun call!588006 () Bool)

(assert (=> bm!588001 (= call!588006 (isEmpty!38022 (ite c!1227262 s!2326 (ite c!1227272 lt!2423906 (ite c!1227261 lt!2423850 call!587267)))))))

(declare-fun b!6650407 () Bool)

(declare-fun res!2725144 () Bool)

(assert (=> b!6650407 (=> (not res!2725144) (not e!4021244))))

(assert (=> b!6650407 (= res!2725144 (not call!588006))))

(declare-fun b!6650408 () Bool)

(declare-fun res!2725149 () Bool)

(assert (=> b!6650408 (=> (not res!2725149) (not e!4021244))))

(assert (=> b!6650408 (= res!2725149 (isEmpty!38022 (tail!12552 (ite c!1227262 s!2326 (ite c!1227272 lt!2423906 (ite c!1227261 lt!2423850 call!587267))))))))

(declare-fun b!6650409 () Bool)

(declare-fun e!4021247 () Bool)

(assert (=> b!6650409 (= e!4021246 e!4021247)))

(declare-fun res!2725148 () Bool)

(assert (=> b!6650409 (=> (not res!2725148) (not e!4021247))))

(assert (=> b!6650409 (= res!2725148 (not lt!2424635))))

(declare-fun b!6650410 () Bool)

(assert (=> b!6650410 (= e!4021245 (not lt!2424635))))

(declare-fun b!6650411 () Bool)

(assert (=> b!6650411 (= e!4021247 e!4021243)))

(declare-fun res!2725150 () Bool)

(assert (=> b!6650411 (=> res!2725150 e!4021243)))

(assert (=> b!6650411 (= res!2725150 call!588006)))

(declare-fun b!6650412 () Bool)

(assert (=> b!6650412 (= e!4021241 (nullable!6505 (ite c!1227262 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (Concat!25357 (regTwo!33536 (regOne!33536 r!7292)) lt!2423798)) (ite c!1227272 lt!2423816 (ite c!1227261 lt!2423835 lt!2423816)))))))

(declare-fun b!6650413 () Bool)

(declare-fun res!2725145 () Bool)

(assert (=> b!6650413 (=> res!2725145 e!4021246)))

(assert (=> b!6650413 (= res!2725145 e!4021244)))

(declare-fun res!2725151 () Bool)

(assert (=> b!6650413 (=> (not res!2725151) (not e!4021244))))

(assert (=> b!6650413 (= res!2725151 lt!2424635)))

(declare-fun b!6650414 () Bool)

(assert (=> b!6650414 (= e!4021241 (matchR!8695 (derivativeStep!5192 (ite c!1227262 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (Concat!25357 (regTwo!33536 (regOne!33536 r!7292)) lt!2423798)) (ite c!1227272 lt!2423816 (ite c!1227261 lt!2423835 lt!2423816))) (head!13467 (ite c!1227262 s!2326 (ite c!1227272 lt!2423906 (ite c!1227261 lt!2423850 call!587267))))) (tail!12552 (ite c!1227262 s!2326 (ite c!1227272 lt!2423906 (ite c!1227261 lt!2423850 call!587267))))))))

(declare-fun b!6650415 () Bool)

(declare-fun res!2725147 () Bool)

(assert (=> b!6650415 (=> res!2725147 e!4021243)))

(assert (=> b!6650415 (= res!2725147 (not (isEmpty!38022 (tail!12552 (ite c!1227262 s!2326 (ite c!1227272 lt!2423906 (ite c!1227261 lt!2423850 call!587267)))))))))

(declare-fun b!6650416 () Bool)

(assert (=> b!6650416 (= e!4021242 (= lt!2424635 call!588006))))

(assert (= (and d!2084176 c!1227481) b!6650412))

(assert (= (and d!2084176 (not c!1227481)) b!6650414))

(assert (= (and d!2084176 c!1227482) b!6650416))

(assert (= (and d!2084176 (not c!1227482)) b!6650404))

(assert (= (and b!6650404 c!1227480) b!6650410))

(assert (= (and b!6650404 (not c!1227480)) b!6650406))

(assert (= (and b!6650406 (not res!2725146)) b!6650413))

(assert (= (and b!6650413 res!2725151) b!6650407))

(assert (= (and b!6650407 res!2725144) b!6650408))

(assert (= (and b!6650408 res!2725149) b!6650403))

(assert (= (and b!6650413 (not res!2725145)) b!6650409))

(assert (= (and b!6650409 res!2725148) b!6650411))

(assert (= (and b!6650411 (not res!2725150)) b!6650415))

(assert (= (and b!6650415 (not res!2725147)) b!6650405))

(assert (= (or b!6650416 b!6650407 b!6650411) bm!588001))

(declare-fun m!7416542 () Bool)

(assert (=> b!6650414 m!7416542))

(assert (=> b!6650414 m!7416542))

(declare-fun m!7416544 () Bool)

(assert (=> b!6650414 m!7416544))

(declare-fun m!7416546 () Bool)

(assert (=> b!6650414 m!7416546))

(assert (=> b!6650414 m!7416544))

(assert (=> b!6650414 m!7416546))

(declare-fun m!7416548 () Bool)

(assert (=> b!6650414 m!7416548))

(assert (=> b!6650415 m!7416546))

(assert (=> b!6650415 m!7416546))

(declare-fun m!7416550 () Bool)

(assert (=> b!6650415 m!7416550))

(declare-fun m!7416552 () Bool)

(assert (=> bm!588001 m!7416552))

(declare-fun m!7416554 () Bool)

(assert (=> b!6650412 m!7416554))

(assert (=> b!6650408 m!7416546))

(assert (=> b!6650408 m!7416546))

(assert (=> b!6650408 m!7416550))

(assert (=> b!6650403 m!7416542))

(assert (=> d!2084176 m!7416552))

(declare-fun m!7416556 () Bool)

(assert (=> d!2084176 m!7416556))

(assert (=> b!6650405 m!7416542))

(assert (=> bm!587170 d!2084176))

(declare-fun d!2084178 () Bool)

(declare-fun lt!2424638 () Regex!16512)

(assert (=> d!2084178 (validRegex!8248 lt!2424638)))

(assert (=> d!2084178 (= lt!2424638 (generalisedUnion!2356 (unfocusZipperList!1933 zl!343)))))

(assert (=> d!2084178 (= (unfocusZipper!2254 zl!343) lt!2424638)))

(declare-fun bs!1712111 () Bool)

(assert (= bs!1712111 d!2084178))

(declare-fun m!7416558 () Bool)

(assert (=> bs!1712111 m!7416558))

(assert (=> bs!1712111 m!7415558))

(assert (=> bs!1712111 m!7415558))

(assert (=> bs!1712111 m!7415560))

(assert (=> b!6649590 d!2084178))

(declare-fun b!6650435 () Bool)

(declare-fun e!4021262 () Bool)

(declare-fun lt!2424645 () Option!16403)

(assert (=> b!6650435 (= e!4021262 (not (isDefined!13106 lt!2424645)))))

(declare-fun b!6650436 () Bool)

(declare-fun lt!2424646 () Unit!159475)

(declare-fun lt!2424647 () Unit!159475)

(assert (=> b!6650436 (= lt!2424646 lt!2424647)))

(assert (=> b!6650436 (= (++!14666 (++!14666 Nil!65711 (Cons!65711 (h!72159 (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)) Nil!65711)) (t!379504 (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711))) (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711))))

(assert (=> b!6650436 (= lt!2424647 (lemmaMoveElementToOtherListKeepsConcatEq!2651 Nil!65711 (h!72159 (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)) (t!379504 (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)) (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)))))

(declare-fun e!4021260 () Option!16403)

(assert (=> b!6650436 (= e!4021260 (findConcatSeparation!2817 (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) (++!14666 Nil!65711 (Cons!65711 (h!72159 (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)) Nil!65711)) (t!379504 (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)) (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)))))

(declare-fun b!6650437 () Bool)

(declare-fun res!2725162 () Bool)

(declare-fun e!4021258 () Bool)

(assert (=> b!6650437 (=> (not res!2725162) (not e!4021258))))

(assert (=> b!6650437 (= res!2725162 (matchR!8695 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) (_2!36794 (get!22850 lt!2424645))))))

(declare-fun d!2084180 () Bool)

(assert (=> d!2084180 e!4021262))

(declare-fun res!2725164 () Bool)

(assert (=> d!2084180 (=> res!2725164 e!4021262)))

(assert (=> d!2084180 (= res!2725164 e!4021258)))

(declare-fun res!2725163 () Bool)

(assert (=> d!2084180 (=> (not res!2725163) (not e!4021258))))

(assert (=> d!2084180 (= res!2725163 (isDefined!13106 lt!2424645))))

(declare-fun e!4021259 () Option!16403)

(assert (=> d!2084180 (= lt!2424645 e!4021259)))

(declare-fun c!1227488 () Bool)

(declare-fun e!4021261 () Bool)

(assert (=> d!2084180 (= c!1227488 e!4021261)))

(declare-fun res!2725165 () Bool)

(assert (=> d!2084180 (=> (not res!2725165) (not e!4021261))))

(assert (=> d!2084180 (= res!2725165 (matchR!8695 (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) Nil!65711))))

(assert (=> d!2084180 (validRegex!8248 (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))))))

(assert (=> d!2084180 (= (findConcatSeparation!2817 (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) Nil!65711 (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)) lt!2424645)))

(declare-fun b!6650438 () Bool)

(assert (=> b!6650438 (= e!4021259 (Some!16402 (tuple2!66983 Nil!65711 (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711))))))

(declare-fun b!6650439 () Bool)

(declare-fun res!2725166 () Bool)

(assert (=> b!6650439 (=> (not res!2725166) (not e!4021258))))

(assert (=> b!6650439 (= res!2725166 (matchR!8695 (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (_1!36794 (get!22850 lt!2424645))))))

(declare-fun b!6650440 () Bool)

(assert (=> b!6650440 (= e!4021258 (= (++!14666 (_1!36794 (get!22850 lt!2424645)) (_2!36794 (get!22850 lt!2424645))) (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)))))

(declare-fun b!6650441 () Bool)

(assert (=> b!6650441 (= e!4021259 e!4021260)))

(declare-fun c!1227487 () Bool)

(assert (=> b!6650441 (= c!1227487 (is-Nil!65711 (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)))))

(declare-fun b!6650442 () Bool)

(assert (=> b!6650442 (= e!4021260 None!16402)))

(declare-fun b!6650443 () Bool)

(assert (=> b!6650443 (= e!4021261 (matchR!8695 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)))))

(assert (= (and d!2084180 res!2725165) b!6650443))

(assert (= (and d!2084180 c!1227488) b!6650438))

(assert (= (and d!2084180 (not c!1227488)) b!6650441))

(assert (= (and b!6650441 c!1227487) b!6650442))

(assert (= (and b!6650441 (not c!1227487)) b!6650436))

(assert (= (and d!2084180 res!2725163) b!6650439))

(assert (= (and b!6650439 res!2725166) b!6650437))

(assert (= (and b!6650437 res!2725162) b!6650440))

(assert (= (and d!2084180 (not res!2725164)) b!6650435))

(declare-fun m!7416560 () Bool)

(assert (=> b!6650435 m!7416560))

(declare-fun m!7416562 () Bool)

(assert (=> b!6650440 m!7416562))

(declare-fun m!7416564 () Bool)

(assert (=> b!6650440 m!7416564))

(declare-fun m!7416566 () Bool)

(assert (=> b!6650436 m!7416566))

(assert (=> b!6650436 m!7416566))

(declare-fun m!7416568 () Bool)

(assert (=> b!6650436 m!7416568))

(declare-fun m!7416570 () Bool)

(assert (=> b!6650436 m!7416570))

(assert (=> b!6650436 m!7416566))

(declare-fun m!7416572 () Bool)

(assert (=> b!6650436 m!7416572))

(declare-fun m!7416574 () Bool)

(assert (=> b!6650443 m!7416574))

(assert (=> b!6650437 m!7416562))

(declare-fun m!7416576 () Bool)

(assert (=> b!6650437 m!7416576))

(assert (=> d!2084180 m!7416560))

(declare-fun m!7416578 () Bool)

(assert (=> d!2084180 m!7416578))

(declare-fun m!7416580 () Bool)

(assert (=> d!2084180 m!7416580))

(assert (=> b!6650439 m!7416562))

(declare-fun m!7416582 () Bool)

(assert (=> b!6650439 m!7416582))

(assert (=> bm!587109 d!2084180))

(declare-fun bs!1712112 () Bool)

(declare-fun d!2084182 () Bool)

(assert (= bs!1712112 (and d!2084182 d!2084108)))

(declare-fun lambda!372373 () Int)

(assert (=> bs!1712112 (= lambda!372373 lambda!372358)))

(declare-fun bs!1712113 () Bool)

(assert (= bs!1712113 (and d!2084182 b!6649576)))

(assert (=> bs!1712113 (= lambda!372373 lambda!372199)))

(declare-fun bs!1712114 () Bool)

(assert (= bs!1712114 (and d!2084182 b!6649595)))

(assert (=> bs!1712114 (= lambda!372373 lambda!372201)))

(declare-fun bs!1712115 () Bool)

(assert (= bs!1712115 (and d!2084182 d!2084132)))

(assert (=> bs!1712115 (= lambda!372373 lambda!372361)))

(declare-fun bs!1712116 () Bool)

(assert (= bs!1712116 (and d!2084182 d!2084092)))

(assert (=> bs!1712116 (= lambda!372373 lambda!372355)))

(declare-fun bs!1712117 () Bool)

(assert (= bs!1712117 (and d!2084182 d!2084168)))

(assert (=> bs!1712117 (= lambda!372373 lambda!372372)))

(declare-fun b!6650444 () Bool)

(declare-fun e!4021264 () Regex!16512)

(assert (=> b!6650444 (= e!4021264 (h!72160 (ite c!1227268 (t!379505 (exprs!6396 (h!72161 zl!343))) (ite c!1227264 lt!2423886 (t!379505 (exprs!6396 (h!72161 zl!343)))))))))

(declare-fun b!6650445 () Bool)

(declare-fun e!4021265 () Regex!16512)

(assert (=> b!6650445 (= e!4021265 (Concat!25357 (h!72160 (ite c!1227268 (t!379505 (exprs!6396 (h!72161 zl!343))) (ite c!1227264 lt!2423886 (t!379505 (exprs!6396 (h!72161 zl!343)))))) (generalisedConcat!2109 (t!379505 (ite c!1227268 (t!379505 (exprs!6396 (h!72161 zl!343))) (ite c!1227264 lt!2423886 (t!379505 (exprs!6396 (h!72161 zl!343)))))))))))

(declare-fun b!6650446 () Bool)

(assert (=> b!6650446 (= e!4021264 e!4021265)))

(declare-fun c!1227492 () Bool)

(assert (=> b!6650446 (= c!1227492 (is-Cons!65712 (ite c!1227268 (t!379505 (exprs!6396 (h!72161 zl!343))) (ite c!1227264 lt!2423886 (t!379505 (exprs!6396 (h!72161 zl!343)))))))))

(declare-fun b!6650447 () Bool)

(declare-fun e!4021267 () Bool)

(declare-fun e!4021268 () Bool)

(assert (=> b!6650447 (= e!4021267 e!4021268)))

(declare-fun c!1227489 () Bool)

(assert (=> b!6650447 (= c!1227489 (isEmpty!38023 (ite c!1227268 (t!379505 (exprs!6396 (h!72161 zl!343))) (ite c!1227264 lt!2423886 (t!379505 (exprs!6396 (h!72161 zl!343)))))))))

(declare-fun b!6650449 () Bool)

(declare-fun e!4021266 () Bool)

(assert (=> b!6650449 (= e!4021266 (isEmpty!38023 (t!379505 (ite c!1227268 (t!379505 (exprs!6396 (h!72161 zl!343))) (ite c!1227264 lt!2423886 (t!379505 (exprs!6396 (h!72161 zl!343))))))))))

(assert (=> d!2084182 e!4021267))

(declare-fun res!2725167 () Bool)

(assert (=> d!2084182 (=> (not res!2725167) (not e!4021267))))

(declare-fun lt!2424648 () Regex!16512)

(assert (=> d!2084182 (= res!2725167 (validRegex!8248 lt!2424648))))

(assert (=> d!2084182 (= lt!2424648 e!4021264)))

(declare-fun c!1227491 () Bool)

(assert (=> d!2084182 (= c!1227491 e!4021266)))

(declare-fun res!2725168 () Bool)

(assert (=> d!2084182 (=> (not res!2725168) (not e!4021266))))

(assert (=> d!2084182 (= res!2725168 (is-Cons!65712 (ite c!1227268 (t!379505 (exprs!6396 (h!72161 zl!343))) (ite c!1227264 lt!2423886 (t!379505 (exprs!6396 (h!72161 zl!343)))))))))

(assert (=> d!2084182 (forall!15708 (ite c!1227268 (t!379505 (exprs!6396 (h!72161 zl!343))) (ite c!1227264 lt!2423886 (t!379505 (exprs!6396 (h!72161 zl!343))))) lambda!372373)))

(assert (=> d!2084182 (= (generalisedConcat!2109 (ite c!1227268 (t!379505 (exprs!6396 (h!72161 zl!343))) (ite c!1227264 lt!2423886 (t!379505 (exprs!6396 (h!72161 zl!343)))))) lt!2424648)))

(declare-fun e!4021263 () Bool)

(declare-fun b!6650448 () Bool)

(assert (=> b!6650448 (= e!4021263 (= lt!2424648 (head!13468 (ite c!1227268 (t!379505 (exprs!6396 (h!72161 zl!343))) (ite c!1227264 lt!2423886 (t!379505 (exprs!6396 (h!72161 zl!343))))))))))

(declare-fun b!6650450 () Bool)

(assert (=> b!6650450 (= e!4021265 EmptyExpr!16512)))

(declare-fun b!6650451 () Bool)

(assert (=> b!6650451 (= e!4021268 e!4021263)))

(declare-fun c!1227490 () Bool)

(assert (=> b!6650451 (= c!1227490 (isEmpty!38023 (tail!12553 (ite c!1227268 (t!379505 (exprs!6396 (h!72161 zl!343))) (ite c!1227264 lt!2423886 (t!379505 (exprs!6396 (h!72161 zl!343))))))))))

(declare-fun b!6650452 () Bool)

(assert (=> b!6650452 (= e!4021268 (isEmptyExpr!1886 lt!2424648))))

(declare-fun b!6650453 () Bool)

(assert (=> b!6650453 (= e!4021263 (isConcat!1409 lt!2424648))))

(assert (= (and d!2084182 res!2725168) b!6650449))

(assert (= (and d!2084182 c!1227491) b!6650444))

(assert (= (and d!2084182 (not c!1227491)) b!6650446))

(assert (= (and b!6650446 c!1227492) b!6650445))

(assert (= (and b!6650446 (not c!1227492)) b!6650450))

(assert (= (and d!2084182 res!2725167) b!6650447))

(assert (= (and b!6650447 c!1227489) b!6650452))

(assert (= (and b!6650447 (not c!1227489)) b!6650451))

(assert (= (and b!6650451 c!1227490) b!6650448))

(assert (= (and b!6650451 (not c!1227490)) b!6650453))

(declare-fun m!7416584 () Bool)

(assert (=> b!6650452 m!7416584))

(declare-fun m!7416586 () Bool)

(assert (=> b!6650445 m!7416586))

(declare-fun m!7416588 () Bool)

(assert (=> b!6650447 m!7416588))

(declare-fun m!7416590 () Bool)

(assert (=> b!6650448 m!7416590))

(declare-fun m!7416592 () Bool)

(assert (=> d!2084182 m!7416592))

(declare-fun m!7416594 () Bool)

(assert (=> d!2084182 m!7416594))

(declare-fun m!7416596 () Bool)

(assert (=> b!6650453 m!7416596))

(declare-fun m!7416598 () Bool)

(assert (=> b!6650451 m!7416598))

(assert (=> b!6650451 m!7416598))

(declare-fun m!7416600 () Bool)

(assert (=> b!6650451 m!7416600))

(declare-fun m!7416602 () Bool)

(assert (=> b!6650449 m!7416602))

(assert (=> bm!587181 d!2084182))

(declare-fun d!2084184 () Bool)

(assert (=> d!2084184 (= (flatMap!2017 (ite c!1227264 lt!2423879 (ite c!1227273 lt!2423802 lt!2423824)) (ite c!1227264 lambda!372185 (ite c!1227273 lambda!372185 lambda!372185))) (dynLambda!26183 (ite c!1227264 lambda!372185 (ite c!1227273 lambda!372185 lambda!372185)) (ite c!1227264 lt!2423823 (ite c!1227273 lt!2423852 lt!2423885))))))

(declare-fun lt!2424649 () Unit!159475)

(assert (=> d!2084184 (= lt!2424649 (choose!49723 (ite c!1227264 lt!2423879 (ite c!1227273 lt!2423802 lt!2423824)) (ite c!1227264 lt!2423823 (ite c!1227273 lt!2423852 lt!2423885)) (ite c!1227264 lambda!372185 (ite c!1227273 lambda!372185 lambda!372185))))))

(assert (=> d!2084184 (= (ite c!1227264 lt!2423879 (ite c!1227273 lt!2423802 lt!2423824)) (set.insert (ite c!1227264 lt!2423823 (ite c!1227273 lt!2423852 lt!2423885)) (as set.empty (Set Context!11792))))))

(assert (=> d!2084184 (= (lemmaFlatMapOnSingletonSet!1543 (ite c!1227264 lt!2423879 (ite c!1227273 lt!2423802 lt!2423824)) (ite c!1227264 lt!2423823 (ite c!1227273 lt!2423852 lt!2423885)) (ite c!1227264 lambda!372185 (ite c!1227273 lambda!372185 lambda!372185))) lt!2424649)))

(declare-fun b_lambda!251143 () Bool)

(assert (=> (not b_lambda!251143) (not d!2084184)))

(declare-fun bs!1712118 () Bool)

(assert (= bs!1712118 d!2084184))

(declare-fun m!7416604 () Bool)

(assert (=> bs!1712118 m!7416604))

(declare-fun m!7416606 () Bool)

(assert (=> bs!1712118 m!7416606))

(declare-fun m!7416608 () Bool)

(assert (=> bs!1712118 m!7416608))

(declare-fun m!7416610 () Bool)

(assert (=> bs!1712118 m!7416610))

(assert (=> bm!587264 d!2084184))

(declare-fun bs!1712119 () Bool)

(declare-fun d!2084186 () Bool)

(assert (= bs!1712119 (and d!2084186 d!2084108)))

(declare-fun lambda!372374 () Int)

(assert (=> bs!1712119 (= lambda!372374 lambda!372358)))

(declare-fun bs!1712120 () Bool)

(assert (= bs!1712120 (and d!2084186 d!2084182)))

(assert (=> bs!1712120 (= lambda!372374 lambda!372373)))

(declare-fun bs!1712121 () Bool)

(assert (= bs!1712121 (and d!2084186 b!6649576)))

(assert (=> bs!1712121 (= lambda!372374 lambda!372199)))

(declare-fun bs!1712122 () Bool)

(assert (= bs!1712122 (and d!2084186 b!6649595)))

(assert (=> bs!1712122 (= lambda!372374 lambda!372201)))

(declare-fun bs!1712123 () Bool)

(assert (= bs!1712123 (and d!2084186 d!2084132)))

(assert (=> bs!1712123 (= lambda!372374 lambda!372361)))

(declare-fun bs!1712124 () Bool)

(assert (= bs!1712124 (and d!2084186 d!2084092)))

(assert (=> bs!1712124 (= lambda!372374 lambda!372355)))

(declare-fun bs!1712125 () Bool)

(assert (= bs!1712125 (and d!2084186 d!2084168)))

(assert (=> bs!1712125 (= lambda!372374 lambda!372372)))

(assert (=> d!2084186 (= (inv!84528 setElem!45450) (forall!15708 (exprs!6396 setElem!45450) lambda!372374))))

(declare-fun bs!1712126 () Bool)

(assert (= bs!1712126 d!2084186))

(declare-fun m!7416612 () Bool)

(assert (=> bs!1712126 m!7416612))

(assert (=> setNonEmpty!45450 d!2084186))

(declare-fun bs!1712127 () Bool)

(declare-fun d!2084188 () Bool)

(assert (= bs!1712127 (and d!2084188 d!2084160)))

(declare-fun lambda!372377 () Int)

(assert (=> bs!1712127 (not (= lambda!372377 lambda!372369))))

(declare-fun bs!1712128 () Bool)

(assert (= bs!1712128 (and d!2084188 b!6650154)))

(assert (=> bs!1712128 (not (= lambda!372377 lambda!372351))))

(declare-fun bs!1712129 () Bool)

(assert (= bs!1712129 (and d!2084188 b!6649552)))

(assert (=> bs!1712129 (= (and (= (ite (or c!1227273 c!1227262 c!1227272) s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (reg!16841 (regOne!33536 r!7292)))) (regTwo!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (ite c!1227272 (regTwo!33536 r!7292) lt!2423835))) lt!2423798)) (= lambda!372377 lambda!372192))))

(declare-fun bs!1712130 () Bool)

(assert (= bs!1712130 (and d!2084188 b!6650376)))

(assert (=> bs!1712130 (not (= lambda!372377 lambda!372371))))

(declare-fun bs!1712131 () Bool)

(assert (= bs!1712131 (and d!2084188 b!6649540)))

(assert (=> bs!1712131 (not (= lambda!372377 lambda!372184))))

(declare-fun bs!1712132 () Bool)

(assert (= bs!1712132 (and d!2084188 b!6649586)))

(assert (=> bs!1712132 (not (= lambda!372377 lambda!372209))))

(declare-fun bs!1712133 () Bool)

(assert (= bs!1712133 (and d!2084188 b!6649562)))

(assert (=> bs!1712133 (not (= lambda!372377 lambda!372195))))

(declare-fun bs!1712134 () Bool)

(assert (= bs!1712134 (and d!2084188 b!6649595)))

(assert (=> bs!1712134 (not (= lambda!372377 lambda!372203))))

(assert (=> bs!1712129 (not (= lambda!372377 lambda!372193))))

(assert (=> bs!1712127 (= (and (= (ite (or c!1227273 c!1227262 c!1227272) s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (reg!16841 (regOne!33536 r!7292)))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (ite c!1227272 (regTwo!33536 r!7292) lt!2423835))) (Star!16512 (reg!16841 (regOne!33536 r!7292))))) (= lambda!372377 lambda!372368))))

(assert (=> bs!1712134 (not (= lambda!372377 lambda!372206))))

(declare-fun bs!1712135 () Bool)

(assert (= bs!1712135 (and d!2084188 b!6649576)))

(assert (=> bs!1712135 (= (and (= (ite (or c!1227273 c!1227262 c!1227272) s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) (_1!36794 lt!2423817)) (= (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (reg!16841 (regOne!33536 r!7292)))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (ite c!1227272 (regTwo!33536 r!7292) lt!2423835))) lt!2423835)) (= lambda!372377 lambda!372196))))

(declare-fun bs!1712136 () Bool)

(assert (= bs!1712136 (and d!2084188 b!6650321)))

(assert (=> bs!1712136 (not (= lambda!372377 lambda!372362))))

(assert (=> bs!1712132 (= (and (= (ite (or c!1227273 c!1227262 c!1227272) s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) Nil!65711) (= (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (reg!16841 (regOne!33536 r!7292)))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (ite c!1227272 (regTwo!33536 r!7292) lt!2423835))) lt!2423835)) (= lambda!372377 lambda!372207))))

(declare-fun bs!1712137 () Bool)

(assert (= bs!1712137 (and d!2084188 b!6650318)))

(assert (=> bs!1712137 (not (= lambda!372377 lambda!372363))))

(declare-fun bs!1712138 () Bool)

(assert (= bs!1712138 (and d!2084188 b!6649550)))

(assert (=> bs!1712138 (= (and (= (ite (or c!1227273 c!1227262 c!1227272) s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (reg!16841 (regOne!33536 r!7292)))) (regOne!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (ite c!1227272 (regTwo!33536 r!7292) lt!2423835))) lt!2423854)) (= lambda!372377 lambda!372186))))

(assert (=> bs!1712131 (= (and (= (ite (or c!1227273 c!1227262 c!1227272) s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (reg!16841 (regOne!33536 r!7292)))) (regOne!33536 r!7292)) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (ite c!1227272 (regTwo!33536 r!7292) lt!2423835))) (regTwo!33536 r!7292))) (= lambda!372377 lambda!372183))))

(assert (=> bs!1712138 (= (and (= (ite (or c!1227273 c!1227262 c!1227272) s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (reg!16841 (regOne!33536 r!7292)))) (regTwo!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (ite c!1227272 (regTwo!33536 r!7292) lt!2423835))) lt!2423829)) (= lambda!372377 lambda!372188))))

(assert (=> bs!1712134 (= (and (= (ite (or c!1227273 c!1227262 c!1227272) s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) (_1!36794 lt!2423861)) (= (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (reg!16841 (regOne!33536 r!7292)))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (ite c!1227272 (regTwo!33536 r!7292) lt!2423835))) lt!2423835)) (= lambda!372377 lambda!372204))))

(assert (=> bs!1712135 (not (= lambda!372377 lambda!372198))))

(assert (=> bs!1712138 (not (= lambda!372377 lambda!372189))))

(assert (=> bs!1712133 (= (and (= (ite (or c!1227273 c!1227262 c!1227272) s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (reg!16841 (regOne!33536 r!7292)))) lt!2423835) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (ite c!1227272 (regTwo!33536 r!7292) lt!2423835))) (regTwo!33536 r!7292))) (= lambda!372377 lambda!372194))))

(assert (=> bs!1712132 (not (= lambda!372377 lambda!372208))))

(assert (=> bs!1712129 (not (= lambda!372377 lambda!372191))))

(assert (=> bs!1712129 (= (and (= (ite (or c!1227273 c!1227262 c!1227272) s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (reg!16841 (regOne!33536 r!7292)))) (regOne!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (ite c!1227272 (regTwo!33536 r!7292) lt!2423835))) lt!2423938)) (= lambda!372377 lambda!372190))))

(assert (=> bs!1712134 (= (and (= (ite (or c!1227273 c!1227262 c!1227272) s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) s!2326) (= (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (reg!16841 (regOne!33536 r!7292)))) lt!2423842) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (ite c!1227272 (regTwo!33536 r!7292) lt!2423835))) (regTwo!33536 r!7292))) (= lambda!372377 lambda!372202))))

(declare-fun bs!1712139 () Bool)

(assert (= bs!1712139 (and d!2084188 b!6650151)))

(assert (=> bs!1712139 (not (= lambda!372377 lambda!372352))))

(declare-fun bs!1712140 () Bool)

(assert (= bs!1712140 (and d!2084188 b!6650379)))

(assert (=> bs!1712140 (not (= lambda!372377 lambda!372370))))

(assert (=> bs!1712135 (not (= lambda!372377 lambda!372197))))

(assert (=> bs!1712138 (not (= lambda!372377 lambda!372187))))

(assert (=> bs!1712134 (not (= lambda!372377 lambda!372205))))

(assert (=> d!2084188 true))

(assert (=> d!2084188 true))

(assert (=> d!2084188 true))

(assert (=> d!2084188 (= (isDefined!13106 (findConcatSeparation!2817 (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (reg!16841 (regOne!33536 r!7292)))) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (ite c!1227272 (regTwo!33536 r!7292) lt!2423835))) Nil!65711 (ite (or c!1227273 c!1227262 c!1227272) s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)) (ite (or c!1227273 c!1227262 c!1227272) s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711)))) (Exists!3582 lambda!372377))))

(declare-fun lt!2424652 () Unit!159475)

(declare-fun choose!49731 (Regex!16512 Regex!16512 List!65835) Unit!159475)

(assert (=> d!2084188 (= lt!2424652 (choose!49731 (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (reg!16841 (regOne!33536 r!7292)))) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (ite c!1227272 (regTwo!33536 r!7292) lt!2423835))) (ite (or c!1227273 c!1227262 c!1227272) s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))))))

(assert (=> d!2084188 (validRegex!8248 (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (reg!16841 (regOne!33536 r!7292)))))))

(assert (=> d!2084188 (= (lemmaFindConcatSeparationEquivalentToExists!2581 (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (reg!16841 (regOne!33536 r!7292)))) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (ite c!1227272 (regTwo!33536 r!7292) lt!2423835))) (ite (or c!1227273 c!1227262 c!1227272) s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) lt!2424652)))

(declare-fun bs!1712141 () Bool)

(assert (= bs!1712141 d!2084188))

(declare-fun m!7416614 () Bool)

(assert (=> bs!1712141 m!7416614))

(declare-fun m!7416616 () Bool)

(assert (=> bs!1712141 m!7416616))

(declare-fun m!7416618 () Bool)

(assert (=> bs!1712141 m!7416618))

(declare-fun m!7416620 () Bool)

(assert (=> bs!1712141 m!7416620))

(declare-fun m!7416622 () Bool)

(assert (=> bs!1712141 m!7416622))

(assert (=> bs!1712141 m!7416618))

(assert (=> bm!587137 d!2084188))

(declare-fun bs!1712142 () Bool)

(declare-fun d!2084192 () Bool)

(assert (= bs!1712142 (and d!2084192 d!2084160)))

(declare-fun lambda!372382 () Int)

(assert (=> bs!1712142 (not (= lambda!372382 lambda!372369))))

(declare-fun bs!1712143 () Bool)

(assert (= bs!1712143 (and d!2084192 b!6650154)))

(assert (=> bs!1712143 (not (= lambda!372382 lambda!372351))))

(declare-fun bs!1712144 () Bool)

(assert (= bs!1712144 (and d!2084192 b!6649552)))

(assert (=> bs!1712144 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) s!2326) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (regTwo!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) lt!2423798)) (= lambda!372382 lambda!372192))))

(declare-fun bs!1712145 () Bool)

(assert (= bs!1712145 (and d!2084192 b!6649540)))

(assert (=> bs!1712145 (not (= lambda!372382 lambda!372184))))

(declare-fun bs!1712146 () Bool)

(assert (= bs!1712146 (and d!2084192 b!6649586)))

(assert (=> bs!1712146 (not (= lambda!372382 lambda!372209))))

(declare-fun bs!1712147 () Bool)

(assert (= bs!1712147 (and d!2084192 b!6649562)))

(assert (=> bs!1712147 (not (= lambda!372382 lambda!372195))))

(declare-fun bs!1712148 () Bool)

(assert (= bs!1712148 (and d!2084192 b!6649595)))

(assert (=> bs!1712148 (not (= lambda!372382 lambda!372203))))

(assert (=> bs!1712144 (not (= lambda!372382 lambda!372193))))

(assert (=> bs!1712142 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) (Star!16512 (reg!16841 (regOne!33536 r!7292))))) (= lambda!372382 lambda!372368))))

(assert (=> bs!1712148 (not (= lambda!372382 lambda!372206))))

(declare-fun bs!1712149 () Bool)

(assert (= bs!1712149 (and d!2084192 b!6649576)))

(assert (=> bs!1712149 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) (_1!36794 lt!2423817)) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) lt!2423835)) (= lambda!372382 lambda!372196))))

(declare-fun bs!1712150 () Bool)

(assert (= bs!1712150 (and d!2084192 b!6650321)))

(assert (=> bs!1712150 (not (= lambda!372382 lambda!372362))))

(assert (=> bs!1712146 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) Nil!65711) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) lt!2423835)) (= lambda!372382 lambda!372207))))

(declare-fun bs!1712151 () Bool)

(assert (= bs!1712151 (and d!2084192 b!6650318)))

(assert (=> bs!1712151 (not (= lambda!372382 lambda!372363))))

(declare-fun bs!1712152 () Bool)

(assert (= bs!1712152 (and d!2084192 b!6649550)))

(assert (=> bs!1712152 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) s!2326) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (regOne!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) lt!2423854)) (= lambda!372382 lambda!372186))))

(assert (=> bs!1712145 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) s!2326) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (regOne!33536 r!7292)) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) (regTwo!33536 r!7292))) (= lambda!372382 lambda!372183))))

(assert (=> bs!1712152 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) s!2326) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (regTwo!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) lt!2423829)) (= lambda!372382 lambda!372188))))

(assert (=> bs!1712148 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) (_1!36794 lt!2423861)) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) lt!2423835)) (= lambda!372382 lambda!372204))))

(assert (=> bs!1712149 (not (= lambda!372382 lambda!372198))))

(assert (=> bs!1712152 (not (= lambda!372382 lambda!372189))))

(assert (=> bs!1712147 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) s!2326) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) lt!2423835) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) (regTwo!33536 r!7292))) (= lambda!372382 lambda!372194))))

(declare-fun bs!1712153 () Bool)

(assert (= bs!1712153 (and d!2084192 b!6650376)))

(assert (=> bs!1712153 (not (= lambda!372382 lambda!372371))))

(declare-fun bs!1712154 () Bool)

(assert (= bs!1712154 (and d!2084192 d!2084188)))

(assert (=> bs!1712154 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) (ite (or c!1227273 c!1227262 c!1227272) s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (reg!16841 (regOne!33536 r!7292))))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (ite c!1227272 (regTwo!33536 r!7292) lt!2423835))))) (= lambda!372382 lambda!372377))))

(assert (=> bs!1712146 (not (= lambda!372382 lambda!372208))))

(assert (=> bs!1712144 (not (= lambda!372382 lambda!372191))))

(assert (=> bs!1712144 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) s!2326) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (regOne!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) lt!2423938)) (= lambda!372382 lambda!372190))))

(assert (=> bs!1712148 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) s!2326) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) lt!2423842) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) (regTwo!33536 r!7292))) (= lambda!372382 lambda!372202))))

(declare-fun bs!1712155 () Bool)

(assert (= bs!1712155 (and d!2084192 b!6650151)))

(assert (=> bs!1712155 (not (= lambda!372382 lambda!372352))))

(declare-fun bs!1712156 () Bool)

(assert (= bs!1712156 (and d!2084192 b!6650379)))

(assert (=> bs!1712156 (not (= lambda!372382 lambda!372370))))

(assert (=> bs!1712149 (not (= lambda!372382 lambda!372197))))

(assert (=> bs!1712152 (not (= lambda!372382 lambda!372187))))

(assert (=> bs!1712148 (not (= lambda!372382 lambda!372205))))

(assert (=> d!2084192 true))

(assert (=> d!2084192 true))

(assert (=> d!2084192 true))

(declare-fun lambda!372383 () Int)

(assert (=> bs!1712142 (not (= lambda!372383 lambda!372369))))

(assert (=> bs!1712143 (not (= lambda!372383 lambda!372351))))

(declare-fun bs!1712157 () Bool)

(assert (= bs!1712157 d!2084192))

(assert (=> bs!1712157 (not (= lambda!372383 lambda!372382))))

(assert (=> bs!1712144 (not (= lambda!372383 lambda!372192))))

(assert (=> bs!1712145 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) s!2326) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (regOne!33536 r!7292)) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) (regTwo!33536 r!7292))) (= lambda!372383 lambda!372184))))

(assert (=> bs!1712146 (not (= lambda!372383 lambda!372209))))

(assert (=> bs!1712147 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) s!2326) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) lt!2423835) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) (regTwo!33536 r!7292))) (= lambda!372383 lambda!372195))))

(assert (=> bs!1712148 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) s!2326) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) lt!2423842) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) (regTwo!33536 r!7292))) (= lambda!372383 lambda!372203))))

(assert (=> bs!1712144 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) s!2326) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (regTwo!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) lt!2423798)) (= lambda!372383 lambda!372193))))

(assert (=> bs!1712142 (not (= lambda!372383 lambda!372368))))

(assert (=> bs!1712148 (not (= lambda!372383 lambda!372206))))

(assert (=> bs!1712149 (not (= lambda!372383 lambda!372196))))

(assert (=> bs!1712150 (not (= lambda!372383 lambda!372362))))

(assert (=> bs!1712146 (not (= lambda!372383 lambda!372207))))

(assert (=> bs!1712151 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) s!2326) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (regOne!33536 r!7292)) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) (regTwo!33536 r!7292))) (= lambda!372383 lambda!372363))))

(assert (=> bs!1712152 (not (= lambda!372383 lambda!372186))))

(assert (=> bs!1712145 (not (= lambda!372383 lambda!372183))))

(assert (=> bs!1712152 (not (= lambda!372383 lambda!372188))))

(assert (=> bs!1712148 (not (= lambda!372383 lambda!372204))))

(assert (=> bs!1712149 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) (_1!36794 lt!2423817)) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) lt!2423835)) (= lambda!372383 lambda!372198))))

(assert (=> bs!1712152 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) s!2326) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (regTwo!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) lt!2423829)) (= lambda!372383 lambda!372189))))

(assert (=> bs!1712147 (not (= lambda!372383 lambda!372194))))

(assert (=> bs!1712153 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) s!2326) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (regOne!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292)))))))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) (regTwo!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))))) (= lambda!372383 lambda!372371))))

(assert (=> bs!1712154 (not (= lambda!372383 lambda!372377))))

(assert (=> bs!1712146 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) Nil!65711) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) lt!2423835)) (= lambda!372383 lambda!372208))))

(assert (=> bs!1712144 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) s!2326) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (regOne!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) lt!2423938)) (= lambda!372383 lambda!372191))))

(assert (=> bs!1712144 (not (= lambda!372383 lambda!372190))))

(assert (=> bs!1712148 (not (= lambda!372383 lambda!372202))))

(assert (=> bs!1712155 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (regOne!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) (regTwo!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))))) (= lambda!372383 lambda!372352))))

(assert (=> bs!1712156 (not (= lambda!372383 lambda!372370))))

(assert (=> bs!1712149 (not (= lambda!372383 lambda!372197))))

(assert (=> bs!1712152 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) s!2326) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (regOne!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) lt!2423854)) (= lambda!372383 lambda!372187))))

(assert (=> bs!1712148 (= (and (= (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711) (_1!36794 lt!2423861)) (= (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) lt!2423835)) (= lambda!372383 lambda!372205))))

(assert (=> d!2084192 true))

(assert (=> d!2084192 true))

(assert (=> d!2084192 true))

(assert (=> d!2084192 (= (Exists!3582 lambda!372382) (Exists!3582 lambda!372383))))

(declare-fun lt!2424655 () Unit!159475)

(declare-fun choose!49732 (Regex!16512 Regex!16512 List!65835) Unit!159475)

(assert (=> d!2084192 (= lt!2424655 (choose!49732 (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)))))

(assert (=> d!2084192 (validRegex!8248 (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))))))

(assert (=> d!2084192 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2119 (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292)))))) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))) (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)) lt!2424655)))

(declare-fun m!7416646 () Bool)

(assert (=> bs!1712157 m!7416646))

(declare-fun m!7416648 () Bool)

(assert (=> bs!1712157 m!7416648))

(declare-fun m!7416650 () Bool)

(assert (=> bs!1712157 m!7416650))

(declare-fun m!7416652 () Bool)

(assert (=> bs!1712157 m!7416652))

(assert (=> bm!587183 d!2084192))

(declare-fun c!1227511 () Bool)

(declare-fun d!2084198 () Bool)

(assert (=> d!2084198 (= c!1227511 (isEmpty!38022 (ite c!1227264 (t!379504 s!2326) (ite c!1227273 s!2326 (ite c!1227266 (ite c!1227272 (ite c!1227263 s!2326 (_1!36794 lt!2423746)) (_2!36794 lt!2423904)) s!2326)))))))

(declare-fun e!4021296 () Bool)

(assert (=> d!2084198 (= (matchZipper!2524 (ite c!1227264 lt!2423900 (ite c!1227273 z!1189 (ite c!1227266 (ite c!1227272 (ite c!1227263 lt!2423830 lt!2423749) lt!2423824) z!1189))) (ite c!1227264 (t!379504 s!2326) (ite c!1227273 s!2326 (ite c!1227266 (ite c!1227272 (ite c!1227263 s!2326 (_1!36794 lt!2423746)) (_2!36794 lt!2423904)) s!2326)))) e!4021296)))

(declare-fun b!6650505 () Bool)

(assert (=> b!6650505 (= e!4021296 (nullableZipper!2253 (ite c!1227264 lt!2423900 (ite c!1227273 z!1189 (ite c!1227266 (ite c!1227272 (ite c!1227263 lt!2423830 lt!2423749) lt!2423824) z!1189)))))))

(declare-fun b!6650506 () Bool)

(assert (=> b!6650506 (= e!4021296 (matchZipper!2524 (derivationStepZipper!2478 (ite c!1227264 lt!2423900 (ite c!1227273 z!1189 (ite c!1227266 (ite c!1227272 (ite c!1227263 lt!2423830 lt!2423749) lt!2423824) z!1189))) (head!13467 (ite c!1227264 (t!379504 s!2326) (ite c!1227273 s!2326 (ite c!1227266 (ite c!1227272 (ite c!1227263 s!2326 (_1!36794 lt!2423746)) (_2!36794 lt!2423904)) s!2326))))) (tail!12552 (ite c!1227264 (t!379504 s!2326) (ite c!1227273 s!2326 (ite c!1227266 (ite c!1227272 (ite c!1227263 s!2326 (_1!36794 lt!2423746)) (_2!36794 lt!2423904)) s!2326))))))))

(assert (= (and d!2084198 c!1227511) b!6650505))

(assert (= (and d!2084198 (not c!1227511)) b!6650506))

(declare-fun m!7416654 () Bool)

(assert (=> d!2084198 m!7416654))

(declare-fun m!7416656 () Bool)

(assert (=> b!6650505 m!7416656))

(declare-fun m!7416658 () Bool)

(assert (=> b!6650506 m!7416658))

(assert (=> b!6650506 m!7416658))

(declare-fun m!7416660 () Bool)

(assert (=> b!6650506 m!7416660))

(declare-fun m!7416662 () Bool)

(assert (=> b!6650506 m!7416662))

(assert (=> b!6650506 m!7416660))

(assert (=> b!6650506 m!7416662))

(declare-fun m!7416664 () Bool)

(assert (=> b!6650506 m!7416664))

(assert (=> bm!587166 d!2084198))

(declare-fun b!6650507 () Bool)

(declare-fun e!4021301 () Bool)

(declare-fun lt!2424656 () Option!16403)

(assert (=> b!6650507 (= e!4021301 (not (isDefined!13106 lt!2424656)))))

(declare-fun b!6650508 () Bool)

(declare-fun lt!2424657 () Unit!159475)

(declare-fun lt!2424658 () Unit!159475)

(assert (=> b!6650508 (= lt!2424657 lt!2424658)))

(assert (=> b!6650508 (= (++!14666 (++!14666 Nil!65711 (Cons!65711 (h!72159 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861)))) Nil!65711)) (t!379504 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))))) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))))))

(assert (=> b!6650508 (= lt!2424658 (lemmaMoveElementToOtherListKeepsConcatEq!2651 Nil!65711 (h!72159 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861)))) (t!379504 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861)))) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861)))))))

(declare-fun e!4021299 () Option!16403)

(assert (=> b!6650508 (= e!4021299 (findConcatSeparation!2817 (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 lt!2423835)) (++!14666 Nil!65711 (Cons!65711 (h!72159 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861)))) Nil!65711)) (t!379504 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861)))) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861)))))))

(declare-fun b!6650509 () Bool)

(declare-fun res!2725184 () Bool)

(declare-fun e!4021297 () Bool)

(assert (=> b!6650509 (=> (not res!2725184) (not e!4021297))))

(assert (=> b!6650509 (= res!2725184 (matchR!8695 (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 lt!2423835)) (_2!36794 (get!22850 lt!2424656))))))

(declare-fun d!2084200 () Bool)

(assert (=> d!2084200 e!4021301))

(declare-fun res!2725186 () Bool)

(assert (=> d!2084200 (=> res!2725186 e!4021301)))

(assert (=> d!2084200 (= res!2725186 e!4021297)))

(declare-fun res!2725185 () Bool)

(assert (=> d!2084200 (=> (not res!2725185) (not e!4021297))))

(assert (=> d!2084200 (= res!2725185 (isDefined!13106 lt!2424656))))

(declare-fun e!4021298 () Option!16403)

(assert (=> d!2084200 (= lt!2424656 e!4021298)))

(declare-fun c!1227513 () Bool)

(declare-fun e!4021300 () Bool)

(assert (=> d!2084200 (= c!1227513 e!4021300)))

(declare-fun res!2725187 () Bool)

(assert (=> d!2084200 (=> (not res!2725187) (not e!4021300))))

(assert (=> d!2084200 (= res!2725187 (matchR!8695 (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) Nil!65711))))

(assert (=> d!2084200 (validRegex!8248 (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))))))

(assert (=> d!2084200 (= (findConcatSeparation!2817 (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 lt!2423835)) Nil!65711 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861)))) lt!2424656)))

(declare-fun b!6650510 () Bool)

(assert (=> b!6650510 (= e!4021298 (Some!16402 (tuple2!66983 Nil!65711 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))))))))

(declare-fun b!6650511 () Bool)

(declare-fun res!2725188 () Bool)

(assert (=> b!6650511 (=> (not res!2725188) (not e!4021297))))

(assert (=> b!6650511 (= res!2725188 (matchR!8695 (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (_1!36794 (get!22850 lt!2424656))))))

(declare-fun b!6650512 () Bool)

(assert (=> b!6650512 (= e!4021297 (= (++!14666 (_1!36794 (get!22850 lt!2424656)) (_2!36794 (get!22850 lt!2424656))) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861)))))))

(declare-fun b!6650513 () Bool)

(assert (=> b!6650513 (= e!4021298 e!4021299)))

(declare-fun c!1227512 () Bool)

(assert (=> b!6650513 (= c!1227512 (is-Nil!65711 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861)))))))

(declare-fun b!6650514 () Bool)

(assert (=> b!6650514 (= e!4021299 None!16402)))

(declare-fun b!6650515 () Bool)

(assert (=> b!6650515 (= e!4021300 (matchR!8695 (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 lt!2423835)) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861)))))))

(assert (= (and d!2084200 res!2725187) b!6650515))

(assert (= (and d!2084200 c!1227513) b!6650510))

(assert (= (and d!2084200 (not c!1227513)) b!6650513))

(assert (= (and b!6650513 c!1227512) b!6650514))

(assert (= (and b!6650513 (not c!1227512)) b!6650508))

(assert (= (and d!2084200 res!2725185) b!6650511))

(assert (= (and b!6650511 res!2725188) b!6650509))

(assert (= (and b!6650509 res!2725184) b!6650512))

(assert (= (and d!2084200 (not res!2725186)) b!6650507))

(declare-fun m!7416668 () Bool)

(assert (=> b!6650507 m!7416668))

(declare-fun m!7416670 () Bool)

(assert (=> b!6650512 m!7416670))

(declare-fun m!7416672 () Bool)

(assert (=> b!6650512 m!7416672))

(declare-fun m!7416674 () Bool)

(assert (=> b!6650508 m!7416674))

(assert (=> b!6650508 m!7416674))

(declare-fun m!7416676 () Bool)

(assert (=> b!6650508 m!7416676))

(declare-fun m!7416678 () Bool)

(assert (=> b!6650508 m!7416678))

(assert (=> b!6650508 m!7416674))

(declare-fun m!7416680 () Bool)

(assert (=> b!6650508 m!7416680))

(declare-fun m!7416682 () Bool)

(assert (=> b!6650515 m!7416682))

(assert (=> b!6650509 m!7416670))

(declare-fun m!7416684 () Bool)

(assert (=> b!6650509 m!7416684))

(assert (=> d!2084200 m!7416668))

(declare-fun m!7416686 () Bool)

(assert (=> d!2084200 m!7416686))

(declare-fun m!7416688 () Bool)

(assert (=> d!2084200 m!7416688))

(assert (=> b!6650511 m!7416670))

(declare-fun m!7416690 () Bool)

(assert (=> b!6650511 m!7416690))

(assert (=> bm!587160 d!2084200))

(declare-fun d!2084204 () Bool)

(assert (=> d!2084204 (= (Exists!3582 (ite c!1227273 lambda!372186 (ite c!1227262 lambda!372192 (ite c!1227272 lambda!372196 lambda!372202)))) (choose!49715 (ite c!1227273 lambda!372186 (ite c!1227262 lambda!372192 (ite c!1227272 lambda!372196 lambda!372202)))))))

(declare-fun bs!1712159 () Bool)

(assert (= bs!1712159 d!2084204))

(declare-fun m!7416692 () Bool)

(assert (=> bs!1712159 m!7416692))

(assert (=> bm!587145 d!2084204))

(declare-fun e!4021305 () Bool)

(declare-fun b!6650516 () Bool)

(assert (=> b!6650516 (= e!4021305 (= (head!13467 (ite (or c!1227264 c!1227273) s!2326 (ite c!1227266 (ite c!1227272 (_1!36794 lt!2423746) (ite c!1227261 s!2326 Nil!65711)) s!2326))) (c!1227274 (ite c!1227264 lt!2423788 (ite c!1227273 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (Concat!25357 (regTwo!33536 (regOne!33536 r!7292)) lt!2423829)) (ite c!1227266 (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) (ite c!1227261 lt!2423878 lt!2423835)) (regTwo!33536 r!7292)))))))))

(declare-fun b!6650517 () Bool)

(declare-fun e!4021303 () Bool)

(declare-fun e!4021306 () Bool)

(assert (=> b!6650517 (= e!4021303 e!4021306)))

(declare-fun c!1227514 () Bool)

(assert (=> b!6650517 (= c!1227514 (is-EmptyLang!16512 (ite c!1227264 lt!2423788 (ite c!1227273 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (Concat!25357 (regTwo!33536 (regOne!33536 r!7292)) lt!2423829)) (ite c!1227266 (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) (ite c!1227261 lt!2423878 lt!2423835)) (regTwo!33536 r!7292))))))))

(declare-fun b!6650518 () Bool)

(declare-fun e!4021304 () Bool)

(assert (=> b!6650518 (= e!4021304 (not (= (head!13467 (ite (or c!1227264 c!1227273) s!2326 (ite c!1227266 (ite c!1227272 (_1!36794 lt!2423746) (ite c!1227261 s!2326 Nil!65711)) s!2326))) (c!1227274 (ite c!1227264 lt!2423788 (ite c!1227273 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (Concat!25357 (regTwo!33536 (regOne!33536 r!7292)) lt!2423829)) (ite c!1227266 (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) (ite c!1227261 lt!2423878 lt!2423835)) (regTwo!33536 r!7292))))))))))

(declare-fun d!2084206 () Bool)

(assert (=> d!2084206 e!4021303))

(declare-fun c!1227516 () Bool)

(assert (=> d!2084206 (= c!1227516 (is-EmptyExpr!16512 (ite c!1227264 lt!2423788 (ite c!1227273 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (Concat!25357 (regTwo!33536 (regOne!33536 r!7292)) lt!2423829)) (ite c!1227266 (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) (ite c!1227261 lt!2423878 lt!2423835)) (regTwo!33536 r!7292))))))))

(declare-fun lt!2424659 () Bool)

(declare-fun e!4021302 () Bool)

(assert (=> d!2084206 (= lt!2424659 e!4021302)))

(declare-fun c!1227515 () Bool)

(assert (=> d!2084206 (= c!1227515 (isEmpty!38022 (ite (or c!1227264 c!1227273) s!2326 (ite c!1227266 (ite c!1227272 (_1!36794 lt!2423746) (ite c!1227261 s!2326 Nil!65711)) s!2326))))))

(assert (=> d!2084206 (validRegex!8248 (ite c!1227264 lt!2423788 (ite c!1227273 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (Concat!25357 (regTwo!33536 (regOne!33536 r!7292)) lt!2423829)) (ite c!1227266 (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) (ite c!1227261 lt!2423878 lt!2423835)) (regTwo!33536 r!7292)))))))

(assert (=> d!2084206 (= (matchR!8695 (ite c!1227264 lt!2423788 (ite c!1227273 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (Concat!25357 (regTwo!33536 (regOne!33536 r!7292)) lt!2423829)) (ite c!1227266 (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) (ite c!1227261 lt!2423878 lt!2423835)) (regTwo!33536 r!7292)))) (ite (or c!1227264 c!1227273) s!2326 (ite c!1227266 (ite c!1227272 (_1!36794 lt!2423746) (ite c!1227261 s!2326 Nil!65711)) s!2326))) lt!2424659)))

(declare-fun b!6650519 () Bool)

(declare-fun res!2725191 () Bool)

(declare-fun e!4021307 () Bool)

(assert (=> b!6650519 (=> res!2725191 e!4021307)))

(assert (=> b!6650519 (= res!2725191 (not (is-ElementMatch!16512 (ite c!1227264 lt!2423788 (ite c!1227273 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (Concat!25357 (regTwo!33536 (regOne!33536 r!7292)) lt!2423829)) (ite c!1227266 (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) (ite c!1227261 lt!2423878 lt!2423835)) (regTwo!33536 r!7292)))))))))

(assert (=> b!6650519 (= e!4021306 e!4021307)))

(declare-fun call!588025 () Bool)

(declare-fun bm!588020 () Bool)

(assert (=> bm!588020 (= call!588025 (isEmpty!38022 (ite (or c!1227264 c!1227273) s!2326 (ite c!1227266 (ite c!1227272 (_1!36794 lt!2423746) (ite c!1227261 s!2326 Nil!65711)) s!2326))))))

(declare-fun b!6650520 () Bool)

(declare-fun res!2725189 () Bool)

(assert (=> b!6650520 (=> (not res!2725189) (not e!4021305))))

(assert (=> b!6650520 (= res!2725189 (not call!588025))))

(declare-fun b!6650521 () Bool)

(declare-fun res!2725194 () Bool)

(assert (=> b!6650521 (=> (not res!2725194) (not e!4021305))))

(assert (=> b!6650521 (= res!2725194 (isEmpty!38022 (tail!12552 (ite (or c!1227264 c!1227273) s!2326 (ite c!1227266 (ite c!1227272 (_1!36794 lt!2423746) (ite c!1227261 s!2326 Nil!65711)) s!2326)))))))

(declare-fun b!6650522 () Bool)

(declare-fun e!4021308 () Bool)

(assert (=> b!6650522 (= e!4021307 e!4021308)))

(declare-fun res!2725193 () Bool)

(assert (=> b!6650522 (=> (not res!2725193) (not e!4021308))))

(assert (=> b!6650522 (= res!2725193 (not lt!2424659))))

(declare-fun b!6650523 () Bool)

(assert (=> b!6650523 (= e!4021306 (not lt!2424659))))

(declare-fun b!6650524 () Bool)

(assert (=> b!6650524 (= e!4021308 e!4021304)))

(declare-fun res!2725195 () Bool)

(assert (=> b!6650524 (=> res!2725195 e!4021304)))

(assert (=> b!6650524 (= res!2725195 call!588025)))

(declare-fun b!6650525 () Bool)

(assert (=> b!6650525 (= e!4021302 (nullable!6505 (ite c!1227264 lt!2423788 (ite c!1227273 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (Concat!25357 (regTwo!33536 (regOne!33536 r!7292)) lt!2423829)) (ite c!1227266 (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) (ite c!1227261 lt!2423878 lt!2423835)) (regTwo!33536 r!7292))))))))

(declare-fun b!6650526 () Bool)

(declare-fun res!2725190 () Bool)

(assert (=> b!6650526 (=> res!2725190 e!4021307)))

(assert (=> b!6650526 (= res!2725190 e!4021305)))

(declare-fun res!2725196 () Bool)

(assert (=> b!6650526 (=> (not res!2725196) (not e!4021305))))

(assert (=> b!6650526 (= res!2725196 lt!2424659)))

(declare-fun b!6650527 () Bool)

(assert (=> b!6650527 (= e!4021302 (matchR!8695 (derivativeStep!5192 (ite c!1227264 lt!2423788 (ite c!1227273 (Concat!25357 (regOne!33536 (regOne!33536 r!7292)) (Concat!25357 (regTwo!33536 (regOne!33536 r!7292)) lt!2423829)) (ite c!1227266 (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) (ite c!1227261 lt!2423878 lt!2423835)) (regTwo!33536 r!7292)))) (head!13467 (ite (or c!1227264 c!1227273) s!2326 (ite c!1227266 (ite c!1227272 (_1!36794 lt!2423746) (ite c!1227261 s!2326 Nil!65711)) s!2326)))) (tail!12552 (ite (or c!1227264 c!1227273) s!2326 (ite c!1227266 (ite c!1227272 (_1!36794 lt!2423746) (ite c!1227261 s!2326 Nil!65711)) s!2326)))))))

(declare-fun b!6650528 () Bool)

(declare-fun res!2725192 () Bool)

(assert (=> b!6650528 (=> res!2725192 e!4021304)))

(assert (=> b!6650528 (= res!2725192 (not (isEmpty!38022 (tail!12552 (ite (or c!1227264 c!1227273) s!2326 (ite c!1227266 (ite c!1227272 (_1!36794 lt!2423746) (ite c!1227261 s!2326 Nil!65711)) s!2326))))))))

(declare-fun b!6650529 () Bool)

(assert (=> b!6650529 (= e!4021303 (= lt!2424659 call!588025))))

(assert (= (and d!2084206 c!1227515) b!6650525))

(assert (= (and d!2084206 (not c!1227515)) b!6650527))

(assert (= (and d!2084206 c!1227516) b!6650529))

(assert (= (and d!2084206 (not c!1227516)) b!6650517))

(assert (= (and b!6650517 c!1227514) b!6650523))

(assert (= (and b!6650517 (not c!1227514)) b!6650519))

(assert (= (and b!6650519 (not res!2725191)) b!6650526))

(assert (= (and b!6650526 res!2725196) b!6650520))

(assert (= (and b!6650520 res!2725189) b!6650521))

(assert (= (and b!6650521 res!2725194) b!6650516))

(assert (= (and b!6650526 (not res!2725190)) b!6650522))

(assert (= (and b!6650522 res!2725193) b!6650524))

(assert (= (and b!6650524 (not res!2725195)) b!6650528))

(assert (= (and b!6650528 (not res!2725192)) b!6650518))

(assert (= (or b!6650529 b!6650520 b!6650524) bm!588020))

(declare-fun m!7416694 () Bool)

(assert (=> b!6650527 m!7416694))

(assert (=> b!6650527 m!7416694))

(declare-fun m!7416696 () Bool)

(assert (=> b!6650527 m!7416696))

(declare-fun m!7416698 () Bool)

(assert (=> b!6650527 m!7416698))

(assert (=> b!6650527 m!7416696))

(assert (=> b!6650527 m!7416698))

(declare-fun m!7416700 () Bool)

(assert (=> b!6650527 m!7416700))

(assert (=> b!6650528 m!7416698))

(assert (=> b!6650528 m!7416698))

(declare-fun m!7416702 () Bool)

(assert (=> b!6650528 m!7416702))

(declare-fun m!7416704 () Bool)

(assert (=> bm!588020 m!7416704))

(declare-fun m!7416706 () Bool)

(assert (=> b!6650525 m!7416706))

(assert (=> b!6650521 m!7416698))

(assert (=> b!6650521 m!7416698))

(assert (=> b!6650521 m!7416702))

(assert (=> b!6650516 m!7416694))

(assert (=> d!2084206 m!7416704))

(declare-fun m!7416708 () Bool)

(assert (=> d!2084206 m!7416708))

(assert (=> b!6650518 m!7416694))

(assert (=> bm!587291 d!2084206))

(declare-fun bs!1712160 () Bool)

(declare-fun d!2084208 () Bool)

(assert (= bs!1712160 (and d!2084208 d!2084186)))

(declare-fun lambda!372384 () Int)

(assert (=> bs!1712160 (= lambda!372384 lambda!372374)))

(declare-fun bs!1712161 () Bool)

(assert (= bs!1712161 (and d!2084208 d!2084108)))

(assert (=> bs!1712161 (= lambda!372384 lambda!372358)))

(declare-fun bs!1712162 () Bool)

(assert (= bs!1712162 (and d!2084208 d!2084182)))

(assert (=> bs!1712162 (= lambda!372384 lambda!372373)))

(declare-fun bs!1712163 () Bool)

(assert (= bs!1712163 (and d!2084208 b!6649576)))

(assert (=> bs!1712163 (= lambda!372384 lambda!372199)))

(declare-fun bs!1712164 () Bool)

(assert (= bs!1712164 (and d!2084208 b!6649595)))

(assert (=> bs!1712164 (= lambda!372384 lambda!372201)))

(declare-fun bs!1712165 () Bool)

(assert (= bs!1712165 (and d!2084208 d!2084132)))

(assert (=> bs!1712165 (= lambda!372384 lambda!372361)))

(declare-fun bs!1712166 () Bool)

(assert (= bs!1712166 (and d!2084208 d!2084092)))

(assert (=> bs!1712166 (= lambda!372384 lambda!372355)))

(declare-fun bs!1712167 () Bool)

(assert (= bs!1712167 (and d!2084208 d!2084168)))

(assert (=> bs!1712167 (= lambda!372384 lambda!372372)))

(declare-fun b!6650530 () Bool)

(declare-fun e!4021310 () Regex!16512)

(assert (=> b!6650530 (= e!4021310 (h!72160 (ite c!1227264 lt!2423858 (ite c!1227273 lt!2423855 lt!2423768))))))

(declare-fun e!4021311 () Regex!16512)

(declare-fun b!6650531 () Bool)

(assert (=> b!6650531 (= e!4021311 (Concat!25357 (h!72160 (ite c!1227264 lt!2423858 (ite c!1227273 lt!2423855 lt!2423768))) (generalisedConcat!2109 (t!379505 (ite c!1227264 lt!2423858 (ite c!1227273 lt!2423855 lt!2423768))))))))

(declare-fun b!6650532 () Bool)

(assert (=> b!6650532 (= e!4021310 e!4021311)))

(declare-fun c!1227520 () Bool)

(assert (=> b!6650532 (= c!1227520 (is-Cons!65712 (ite c!1227264 lt!2423858 (ite c!1227273 lt!2423855 lt!2423768))))))

(declare-fun b!6650533 () Bool)

(declare-fun e!4021313 () Bool)

(declare-fun e!4021314 () Bool)

(assert (=> b!6650533 (= e!4021313 e!4021314)))

(declare-fun c!1227517 () Bool)

(assert (=> b!6650533 (= c!1227517 (isEmpty!38023 (ite c!1227264 lt!2423858 (ite c!1227273 lt!2423855 lt!2423768))))))

(declare-fun e!4021312 () Bool)

(declare-fun b!6650535 () Bool)

(assert (=> b!6650535 (= e!4021312 (isEmpty!38023 (t!379505 (ite c!1227264 lt!2423858 (ite c!1227273 lt!2423855 lt!2423768)))))))

(assert (=> d!2084208 e!4021313))

(declare-fun res!2725197 () Bool)

(assert (=> d!2084208 (=> (not res!2725197) (not e!4021313))))

(declare-fun lt!2424660 () Regex!16512)

(assert (=> d!2084208 (= res!2725197 (validRegex!8248 lt!2424660))))

(assert (=> d!2084208 (= lt!2424660 e!4021310)))

(declare-fun c!1227519 () Bool)

(assert (=> d!2084208 (= c!1227519 e!4021312)))

(declare-fun res!2725198 () Bool)

(assert (=> d!2084208 (=> (not res!2725198) (not e!4021312))))

(assert (=> d!2084208 (= res!2725198 (is-Cons!65712 (ite c!1227264 lt!2423858 (ite c!1227273 lt!2423855 lt!2423768))))))

(assert (=> d!2084208 (forall!15708 (ite c!1227264 lt!2423858 (ite c!1227273 lt!2423855 lt!2423768)) lambda!372384)))

(assert (=> d!2084208 (= (generalisedConcat!2109 (ite c!1227264 lt!2423858 (ite c!1227273 lt!2423855 lt!2423768))) lt!2424660)))

(declare-fun e!4021309 () Bool)

(declare-fun b!6650534 () Bool)

(assert (=> b!6650534 (= e!4021309 (= lt!2424660 (head!13468 (ite c!1227264 lt!2423858 (ite c!1227273 lt!2423855 lt!2423768)))))))

(declare-fun b!6650536 () Bool)

(assert (=> b!6650536 (= e!4021311 EmptyExpr!16512)))

(declare-fun b!6650537 () Bool)

(assert (=> b!6650537 (= e!4021314 e!4021309)))

(declare-fun c!1227518 () Bool)

(assert (=> b!6650537 (= c!1227518 (isEmpty!38023 (tail!12553 (ite c!1227264 lt!2423858 (ite c!1227273 lt!2423855 lt!2423768)))))))

(declare-fun b!6650538 () Bool)

(assert (=> b!6650538 (= e!4021314 (isEmptyExpr!1886 lt!2424660))))

(declare-fun b!6650539 () Bool)

(assert (=> b!6650539 (= e!4021309 (isConcat!1409 lt!2424660))))

(assert (= (and d!2084208 res!2725198) b!6650535))

(assert (= (and d!2084208 c!1227519) b!6650530))

(assert (= (and d!2084208 (not c!1227519)) b!6650532))

(assert (= (and b!6650532 c!1227520) b!6650531))

(assert (= (and b!6650532 (not c!1227520)) b!6650536))

(assert (= (and d!2084208 res!2725197) b!6650533))

(assert (= (and b!6650533 c!1227517) b!6650538))

(assert (= (and b!6650533 (not c!1227517)) b!6650537))

(assert (= (and b!6650537 c!1227518) b!6650534))

(assert (= (and b!6650537 (not c!1227518)) b!6650539))

(declare-fun m!7416710 () Bool)

(assert (=> b!6650538 m!7416710))

(declare-fun m!7416712 () Bool)

(assert (=> b!6650531 m!7416712))

(declare-fun m!7416714 () Bool)

(assert (=> b!6650533 m!7416714))

(declare-fun m!7416716 () Bool)

(assert (=> b!6650534 m!7416716))

(declare-fun m!7416718 () Bool)

(assert (=> d!2084208 m!7416718))

(declare-fun m!7416720 () Bool)

(assert (=> d!2084208 m!7416720))

(declare-fun m!7416722 () Bool)

(assert (=> b!6650539 m!7416722))

(declare-fun m!7416724 () Bool)

(assert (=> b!6650537 m!7416724))

(assert (=> b!6650537 m!7416724))

(declare-fun m!7416726 () Bool)

(assert (=> b!6650537 m!7416726))

(declare-fun m!7416728 () Bool)

(assert (=> b!6650535 m!7416728))

(assert (=> bm!587277 d!2084208))

(declare-fun d!2084210 () Bool)

(declare-fun c!1227521 () Bool)

(assert (=> d!2084210 (= c!1227521 (isEmpty!38022 (t!379504 s!2326)))))

(declare-fun e!4021315 () Bool)

(assert (=> d!2084210 (= (matchZipper!2524 (ite c!1227264 (set.union lt!2423844 lt!2423900) (set.union lt!2423846 lt!2423804)) (t!379504 s!2326)) e!4021315)))

(declare-fun b!6650540 () Bool)

(assert (=> b!6650540 (= e!4021315 (nullableZipper!2253 (ite c!1227264 (set.union lt!2423844 lt!2423900) (set.union lt!2423846 lt!2423804))))))

(declare-fun b!6650541 () Bool)

(assert (=> b!6650541 (= e!4021315 (matchZipper!2524 (derivationStepZipper!2478 (ite c!1227264 (set.union lt!2423844 lt!2423900) (set.union lt!2423846 lt!2423804)) (head!13467 (t!379504 s!2326))) (tail!12552 (t!379504 s!2326))))))

(assert (= (and d!2084210 c!1227521) b!6650540))

(assert (= (and d!2084210 (not c!1227521)) b!6650541))

(assert (=> d!2084210 m!7416258))

(declare-fun m!7416730 () Bool)

(assert (=> b!6650540 m!7416730))

(assert (=> b!6650541 m!7416262))

(assert (=> b!6650541 m!7416262))

(declare-fun m!7416732 () Bool)

(assert (=> b!6650541 m!7416732))

(assert (=> b!6650541 m!7416266))

(assert (=> b!6650541 m!7416732))

(assert (=> b!6650541 m!7416266))

(declare-fun m!7416734 () Bool)

(assert (=> b!6650541 m!7416734))

(assert (=> bm!587115 d!2084210))

(declare-fun d!2084212 () Bool)

(declare-fun c!1227522 () Bool)

(assert (=> d!2084212 (= c!1227522 (isEmpty!38022 (t!379504 s!2326)))))

(declare-fun e!4021316 () Bool)

(assert (=> d!2084212 (= (matchZipper!2524 lt!2423893 (t!379504 s!2326)) e!4021316)))

(declare-fun b!6650542 () Bool)

(assert (=> b!6650542 (= e!4021316 (nullableZipper!2253 lt!2423893))))

(declare-fun b!6650543 () Bool)

(assert (=> b!6650543 (= e!4021316 (matchZipper!2524 (derivationStepZipper!2478 lt!2423893 (head!13467 (t!379504 s!2326))) (tail!12552 (t!379504 s!2326))))))

(assert (= (and d!2084212 c!1227522) b!6650542))

(assert (= (and d!2084212 (not c!1227522)) b!6650543))

(assert (=> d!2084212 m!7416258))

(declare-fun m!7416736 () Bool)

(assert (=> b!6650542 m!7416736))

(assert (=> b!6650543 m!7416262))

(assert (=> b!6650543 m!7416262))

(declare-fun m!7416738 () Bool)

(assert (=> b!6650543 m!7416738))

(assert (=> b!6650543 m!7416266))

(assert (=> b!6650543 m!7416738))

(assert (=> b!6650543 m!7416266))

(declare-fun m!7416740 () Bool)

(assert (=> b!6650543 m!7416740))

(assert (=> b!6649560 d!2084212))

(declare-fun d!2084214 () Bool)

(assert (=> d!2084214 (= (get!22850 (ite c!1227272 lt!2423761 lt!2423795)) (v!52597 (ite c!1227272 lt!2423761 lt!2423795)))))

(assert (=> bm!587180 d!2084214))

(declare-fun d!2084216 () Bool)

(assert (=> d!2084216 (= (flatMap!2017 (ite c!1227264 lt!2423883 (ite c!1227262 lt!2423765 (ite c!1227266 lt!2423824 lt!2423867))) (ite c!1227264 lambda!372185 (ite c!1227262 lambda!372185 (ite c!1227266 lambda!372185 lambda!372185)))) (choose!49721 (ite c!1227264 lt!2423883 (ite c!1227262 lt!2423765 (ite c!1227266 lt!2423824 lt!2423867))) (ite c!1227264 lambda!372185 (ite c!1227262 lambda!372185 (ite c!1227266 lambda!372185 lambda!372185)))))))

(declare-fun bs!1712168 () Bool)

(assert (= bs!1712168 d!2084216))

(declare-fun m!7416742 () Bool)

(assert (=> bs!1712168 m!7416742))

(assert (=> bm!587220 d!2084216))

(declare-fun b!6650544 () Bool)

(declare-fun e!4021319 () (Set Context!11792))

(declare-fun e!4021317 () (Set Context!11792))

(assert (=> b!6650544 (= e!4021319 e!4021317)))

(declare-fun c!1227524 () Bool)

(assert (=> b!6650544 (= c!1227524 (is-Cons!65712 (exprs!6396 (ite c!1227264 lt!2423823 (ite c!1227273 lt!2423852 (ite c!1227266 lt!2423793 lt!2423839))))))))

(declare-fun bm!588021 () Bool)

(declare-fun call!588026 () (Set Context!11792))

(assert (=> bm!588021 (= call!588026 (derivationStepZipperDown!1760 (h!72160 (exprs!6396 (ite c!1227264 lt!2423823 (ite c!1227273 lt!2423852 (ite c!1227266 lt!2423793 lt!2423839))))) (Context!11793 (t!379505 (exprs!6396 (ite c!1227264 lt!2423823 (ite c!1227273 lt!2423852 (ite c!1227266 lt!2423793 lt!2423839)))))) (h!72159 s!2326)))))

(declare-fun d!2084218 () Bool)

(declare-fun c!1227523 () Bool)

(declare-fun e!4021318 () Bool)

(assert (=> d!2084218 (= c!1227523 e!4021318)))

(declare-fun res!2725199 () Bool)

(assert (=> d!2084218 (=> (not res!2725199) (not e!4021318))))

(assert (=> d!2084218 (= res!2725199 (is-Cons!65712 (exprs!6396 (ite c!1227264 lt!2423823 (ite c!1227273 lt!2423852 (ite c!1227266 lt!2423793 lt!2423839))))))))

(assert (=> d!2084218 (= (derivationStepZipperUp!1686 (ite c!1227264 lt!2423823 (ite c!1227273 lt!2423852 (ite c!1227266 lt!2423793 lt!2423839))) (h!72159 s!2326)) e!4021319)))

(declare-fun b!6650545 () Bool)

(assert (=> b!6650545 (= e!4021317 (as set.empty (Set Context!11792)))))

(declare-fun b!6650546 () Bool)

(assert (=> b!6650546 (= e!4021318 (nullable!6505 (h!72160 (exprs!6396 (ite c!1227264 lt!2423823 (ite c!1227273 lt!2423852 (ite c!1227266 lt!2423793 lt!2423839)))))))))

(declare-fun b!6650547 () Bool)

(assert (=> b!6650547 (= e!4021319 (set.union call!588026 (derivationStepZipperUp!1686 (Context!11793 (t!379505 (exprs!6396 (ite c!1227264 lt!2423823 (ite c!1227273 lt!2423852 (ite c!1227266 lt!2423793 lt!2423839)))))) (h!72159 s!2326))))))

(declare-fun b!6650548 () Bool)

(assert (=> b!6650548 (= e!4021317 call!588026)))

(assert (= (and d!2084218 res!2725199) b!6650546))

(assert (= (and d!2084218 c!1227523) b!6650547))

(assert (= (and d!2084218 (not c!1227523)) b!6650544))

(assert (= (and b!6650544 c!1227524) b!6650548))

(assert (= (and b!6650544 (not c!1227524)) b!6650545))

(assert (= (or b!6650547 b!6650548) bm!588021))

(declare-fun m!7416744 () Bool)

(assert (=> bm!588021 m!7416744))

(declare-fun m!7416746 () Bool)

(assert (=> b!6650546 m!7416746))

(declare-fun m!7416748 () Bool)

(assert (=> b!6650547 m!7416748))

(assert (=> bm!587252 d!2084218))

(declare-fun b!6650583 () Bool)

(assert (=> b!6650583 true))

(declare-fun bs!1712169 () Bool)

(declare-fun b!6650585 () Bool)

(assert (= bs!1712169 (and b!6650585 b!6650583)))

(declare-fun lambda!372392 () Int)

(declare-fun lt!2424673 () Int)

(declare-fun lambda!372393 () Int)

(declare-fun lt!2424674 () Int)

(assert (=> bs!1712169 (= (= lt!2424674 lt!2424673) (= lambda!372393 lambda!372392))))

(assert (=> b!6650585 true))

(declare-fun d!2084220 () Bool)

(declare-fun e!4021339 () Bool)

(assert (=> d!2084220 e!4021339))

(declare-fun res!2725218 () Bool)

(assert (=> d!2084220 (=> (not res!2725218) (not e!4021339))))

(assert (=> d!2084220 (= res!2725218 (>= lt!2424674 0))))

(declare-fun e!4021338 () Int)

(assert (=> d!2084220 (= lt!2424674 e!4021338)))

(declare-fun c!1227539 () Bool)

(assert (=> d!2084220 (= c!1227539 (is-Cons!65713 zl!343))))

(assert (=> d!2084220 (= (zipperDepth!413 zl!343) lt!2424674)))

(assert (=> b!6650583 (= e!4021338 lt!2424673)))

(declare-fun contextDepth!302 (Context!11792) Int)

(assert (=> b!6650583 (= lt!2424673 (maxBigInt!0 (contextDepth!302 (h!72161 zl!343)) (zipperDepth!413 (t!379506 zl!343))))))

(declare-fun lambda!372391 () Int)

(declare-fun lt!2424672 () Unit!159475)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!286 (List!65837 Int Int Int) Unit!159475)

(assert (=> b!6650583 (= lt!2424672 (lemmaForallContextDepthBiggerThanTransitive!286 (t!379506 zl!343) lt!2424673 (zipperDepth!413 (t!379506 zl!343)) lambda!372391))))

(declare-fun forall!15709 (List!65837 Int) Bool)

(assert (=> b!6650583 (forall!15709 (t!379506 zl!343) lambda!372392)))

(declare-fun lt!2424671 () Unit!159475)

(assert (=> b!6650583 (= lt!2424671 lt!2424672)))

(declare-fun b!6650584 () Bool)

(assert (=> b!6650584 (= e!4021338 0)))

(assert (=> b!6650585 (= e!4021339 (forall!15709 zl!343 lambda!372393))))

(assert (= (and d!2084220 c!1227539) b!6650583))

(assert (= (and d!2084220 (not c!1227539)) b!6650584))

(assert (= (and d!2084220 res!2725218) b!6650585))

(declare-fun m!7416750 () Bool)

(assert (=> b!6650583 m!7416750))

(declare-fun m!7416752 () Bool)

(assert (=> b!6650583 m!7416752))

(declare-fun m!7416754 () Bool)

(assert (=> b!6650583 m!7416754))

(assert (=> b!6650583 m!7416750))

(declare-fun m!7416756 () Bool)

(assert (=> b!6650583 m!7416756))

(assert (=> b!6650583 m!7416752))

(assert (=> b!6650583 m!7416750))

(declare-fun m!7416758 () Bool)

(assert (=> b!6650583 m!7416758))

(declare-fun m!7416760 () Bool)

(assert (=> b!6650585 m!7416760))

(assert (=> b!6649566 d!2084220))

(declare-fun bs!1712170 () Bool)

(declare-fun b!6650588 () Bool)

(assert (= bs!1712170 (and b!6650588 b!6650583)))

(declare-fun lambda!372394 () Int)

(assert (=> bs!1712170 (= lambda!372394 lambda!372391)))

(declare-fun lt!2424677 () Int)

(declare-fun lambda!372395 () Int)

(assert (=> bs!1712170 (= (= lt!2424677 lt!2424673) (= lambda!372395 lambda!372392))))

(declare-fun bs!1712171 () Bool)

(assert (= bs!1712171 (and b!6650588 b!6650585)))

(assert (=> bs!1712171 (= (= lt!2424677 lt!2424674) (= lambda!372395 lambda!372393))))

(assert (=> b!6650588 true))

(declare-fun bs!1712172 () Bool)

(declare-fun b!6650590 () Bool)

(assert (= bs!1712172 (and b!6650590 b!6650583)))

(declare-fun lambda!372396 () Int)

(declare-fun lt!2424678 () Int)

(assert (=> bs!1712172 (= (= lt!2424678 lt!2424673) (= lambda!372396 lambda!372392))))

(declare-fun bs!1712173 () Bool)

(assert (= bs!1712173 (and b!6650590 b!6650585)))

(assert (=> bs!1712173 (= (= lt!2424678 lt!2424674) (= lambda!372396 lambda!372393))))

(declare-fun bs!1712174 () Bool)

(assert (= bs!1712174 (and b!6650590 b!6650588)))

(assert (=> bs!1712174 (= (= lt!2424678 lt!2424677) (= lambda!372396 lambda!372395))))

(assert (=> b!6650590 true))

(declare-fun d!2084222 () Bool)

(declare-fun e!4021341 () Bool)

(assert (=> d!2084222 e!4021341))

(declare-fun res!2725219 () Bool)

(assert (=> d!2084222 (=> (not res!2725219) (not e!4021341))))

(assert (=> d!2084222 (= res!2725219 (>= lt!2424678 0))))

(declare-fun e!4021340 () Int)

(assert (=> d!2084222 (= lt!2424678 e!4021340)))

(declare-fun c!1227540 () Bool)

(assert (=> d!2084222 (= c!1227540 (is-Cons!65713 (Cons!65713 lt!2423839 Nil!65713)))))

(assert (=> d!2084222 (= (zipperDepth!413 (Cons!65713 lt!2423839 Nil!65713)) lt!2424678)))

(assert (=> b!6650588 (= e!4021340 lt!2424677)))

(assert (=> b!6650588 (= lt!2424677 (maxBigInt!0 (contextDepth!302 (h!72161 (Cons!65713 lt!2423839 Nil!65713))) (zipperDepth!413 (t!379506 (Cons!65713 lt!2423839 Nil!65713)))))))

(declare-fun lt!2424676 () Unit!159475)

(assert (=> b!6650588 (= lt!2424676 (lemmaForallContextDepthBiggerThanTransitive!286 (t!379506 (Cons!65713 lt!2423839 Nil!65713)) lt!2424677 (zipperDepth!413 (t!379506 (Cons!65713 lt!2423839 Nil!65713))) lambda!372394))))

(assert (=> b!6650588 (forall!15709 (t!379506 (Cons!65713 lt!2423839 Nil!65713)) lambda!372395)))

(declare-fun lt!2424675 () Unit!159475)

(assert (=> b!6650588 (= lt!2424675 lt!2424676)))

(declare-fun b!6650589 () Bool)

(assert (=> b!6650589 (= e!4021340 0)))

(assert (=> b!6650590 (= e!4021341 (forall!15709 (Cons!65713 lt!2423839 Nil!65713) lambda!372396))))

(assert (= (and d!2084222 c!1227540) b!6650588))

(assert (= (and d!2084222 (not c!1227540)) b!6650589))

(assert (= (and d!2084222 res!2725219) b!6650590))

(declare-fun m!7416762 () Bool)

(assert (=> b!6650588 m!7416762))

(declare-fun m!7416764 () Bool)

(assert (=> b!6650588 m!7416764))

(declare-fun m!7416766 () Bool)

(assert (=> b!6650588 m!7416766))

(assert (=> b!6650588 m!7416762))

(declare-fun m!7416768 () Bool)

(assert (=> b!6650588 m!7416768))

(assert (=> b!6650588 m!7416764))

(assert (=> b!6650588 m!7416762))

(declare-fun m!7416770 () Bool)

(assert (=> b!6650588 m!7416770))

(declare-fun m!7416772 () Bool)

(assert (=> b!6650590 m!7416772))

(assert (=> b!6649566 d!2084222))

(declare-fun bs!1712175 () Bool)

(declare-fun d!2084224 () Bool)

(assert (= bs!1712175 (and d!2084224 d!2084160)))

(declare-fun lambda!372397 () Int)

(assert (=> bs!1712175 (not (= lambda!372397 lambda!372369))))

(declare-fun bs!1712176 () Bool)

(assert (= bs!1712176 (and d!2084224 b!6650154)))

(assert (=> bs!1712176 (not (= lambda!372397 lambda!372351))))

(declare-fun bs!1712177 () Bool)

(assert (= bs!1712177 (and d!2084224 b!6649552)))

(assert (=> bs!1712177 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) s!2326)) s!2326) (= (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) lt!2423842)) (regTwo!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (regTwo!33536 r!7292)))) lt!2423798)) (= lambda!372397 lambda!372192))))

(declare-fun bs!1712178 () Bool)

(assert (= bs!1712178 (and d!2084224 b!6649540)))

(assert (=> bs!1712178 (not (= lambda!372397 lambda!372184))))

(declare-fun bs!1712179 () Bool)

(assert (= bs!1712179 (and d!2084224 b!6649586)))

(assert (=> bs!1712179 (not (= lambda!372397 lambda!372209))))

(declare-fun bs!1712180 () Bool)

(assert (= bs!1712180 (and d!2084224 b!6649562)))

(assert (=> bs!1712180 (not (= lambda!372397 lambda!372195))))

(declare-fun bs!1712181 () Bool)

(assert (= bs!1712181 (and d!2084224 b!6649595)))

(assert (=> bs!1712181 (not (= lambda!372397 lambda!372203))))

(assert (=> bs!1712177 (not (= lambda!372397 lambda!372193))))

(assert (=> bs!1712175 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) s!2326)) (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) lt!2423842)) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (regTwo!33536 r!7292)))) (Star!16512 (reg!16841 (regOne!33536 r!7292))))) (= lambda!372397 lambda!372368))))

(assert (=> bs!1712181 (not (= lambda!372397 lambda!372206))))

(declare-fun bs!1712182 () Bool)

(assert (= bs!1712182 (and d!2084224 b!6649576)))

(assert (=> bs!1712182 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) s!2326)) (_1!36794 lt!2423817)) (= (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) lt!2423842)) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (regTwo!33536 r!7292)))) lt!2423835)) (= lambda!372397 lambda!372196))))

(declare-fun bs!1712183 () Bool)

(assert (= bs!1712183 (and d!2084224 b!6650321)))

(assert (=> bs!1712183 (not (= lambda!372397 lambda!372362))))

(assert (=> bs!1712179 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) s!2326)) Nil!65711) (= (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) lt!2423842)) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (regTwo!33536 r!7292)))) lt!2423835)) (= lambda!372397 lambda!372207))))

(declare-fun bs!1712184 () Bool)

(assert (= bs!1712184 (and d!2084224 b!6650318)))

(assert (=> bs!1712184 (not (= lambda!372397 lambda!372363))))

(declare-fun bs!1712185 () Bool)

(assert (= bs!1712185 (and d!2084224 b!6649550)))

(assert (=> bs!1712185 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) s!2326)) s!2326) (= (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) lt!2423842)) (regOne!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (regTwo!33536 r!7292)))) lt!2423854)) (= lambda!372397 lambda!372186))))

(assert (=> bs!1712178 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) s!2326)) s!2326) (= (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) lt!2423842)) (regOne!33536 r!7292)) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (regTwo!33536 r!7292)))) (regTwo!33536 r!7292))) (= lambda!372397 lambda!372183))))

(assert (=> bs!1712185 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) s!2326)) s!2326) (= (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) lt!2423842)) (regTwo!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (regTwo!33536 r!7292)))) lt!2423829)) (= lambda!372397 lambda!372188))))

(assert (=> bs!1712181 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) s!2326)) (_1!36794 lt!2423861)) (= (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) lt!2423842)) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (regTwo!33536 r!7292)))) lt!2423835)) (= lambda!372397 lambda!372204))))

(declare-fun bs!1712186 () Bool)

(assert (= bs!1712186 (and d!2084224 d!2084192)))

(assert (=> bs!1712186 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) s!2326)) (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)) (= (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) lt!2423842)) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292))))))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (regTwo!33536 r!7292)))) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))))) (= lambda!372397 lambda!372382))))

(assert (=> bs!1712186 (not (= lambda!372397 lambda!372383))))

(assert (=> bs!1712182 (not (= lambda!372397 lambda!372198))))

(assert (=> bs!1712185 (not (= lambda!372397 lambda!372189))))

(assert (=> bs!1712180 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) s!2326)) s!2326) (= (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) lt!2423842)) lt!2423835) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (regTwo!33536 r!7292)))) (regTwo!33536 r!7292))) (= lambda!372397 lambda!372194))))

(declare-fun bs!1712187 () Bool)

(assert (= bs!1712187 (and d!2084224 b!6650376)))

(assert (=> bs!1712187 (not (= lambda!372397 lambda!372371))))

(declare-fun bs!1712188 () Bool)

(assert (= bs!1712188 (and d!2084224 d!2084188)))

(assert (=> bs!1712188 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) s!2326)) (ite (or c!1227273 c!1227262 c!1227272) s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) lt!2423842)) (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (reg!16841 (regOne!33536 r!7292))))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (regTwo!33536 r!7292)))) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (ite c!1227272 (regTwo!33536 r!7292) lt!2423835))))) (= lambda!372397 lambda!372377))))

(assert (=> bs!1712179 (not (= lambda!372397 lambda!372208))))

(assert (=> bs!1712177 (not (= lambda!372397 lambda!372191))))

(assert (=> bs!1712177 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) s!2326)) s!2326) (= (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) lt!2423842)) (regOne!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (regTwo!33536 r!7292)))) lt!2423938)) (= lambda!372397 lambda!372190))))

(assert (=> bs!1712181 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) s!2326)) s!2326) (= (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) lt!2423842)) lt!2423842) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (regTwo!33536 r!7292)))) (regTwo!33536 r!7292))) (= lambda!372397 lambda!372202))))

(declare-fun bs!1712189 () Bool)

(assert (= bs!1712189 (and d!2084224 b!6650151)))

(assert (=> bs!1712189 (not (= lambda!372397 lambda!372352))))

(declare-fun bs!1712190 () Bool)

(assert (= bs!1712190 (and d!2084224 b!6650379)))

(assert (=> bs!1712190 (not (= lambda!372397 lambda!372370))))

(assert (=> bs!1712182 (not (= lambda!372397 lambda!372197))))

(assert (=> bs!1712185 (not (= lambda!372397 lambda!372187))))

(assert (=> bs!1712181 (not (= lambda!372397 lambda!372205))))

(assert (=> d!2084224 true))

(assert (=> d!2084224 true))

(assert (=> d!2084224 true))

(assert (=> d!2084224 (= (isDefined!13106 (findConcatSeparation!2817 (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) lt!2423842)) (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (regTwo!33536 r!7292)))) Nil!65711 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) s!2326)) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) s!2326)))) (Exists!3582 lambda!372397))))

(declare-fun lt!2424679 () Unit!159475)

(assert (=> d!2084224 (= lt!2424679 (choose!49731 (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) lt!2423842)) (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (regTwo!33536 r!7292)))) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) s!2326))))))

(assert (=> d!2084224 (validRegex!8248 (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) lt!2423842)))))

(assert (=> d!2084224 (= (lemmaFindConcatSeparationEquivalentToExists!2581 (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) lt!2423842)) (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (regTwo!33536 r!7292)))) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) s!2326))) lt!2424679)))

(declare-fun bs!1712191 () Bool)

(assert (= bs!1712191 d!2084224))

(declare-fun m!7416790 () Bool)

(assert (=> bs!1712191 m!7416790))

(declare-fun m!7416792 () Bool)

(assert (=> bs!1712191 m!7416792))

(declare-fun m!7416794 () Bool)

(assert (=> bs!1712191 m!7416794))

(declare-fun m!7416796 () Bool)

(assert (=> bs!1712191 m!7416796))

(declare-fun m!7416798 () Bool)

(assert (=> bs!1712191 m!7416798))

(assert (=> bs!1712191 m!7416794))

(assert (=> bm!587173 d!2084224))

(declare-fun bs!1712194 () Bool)

(declare-fun d!2084228 () Bool)

(assert (= bs!1712194 (and d!2084228 d!2084186)))

(declare-fun lambda!372400 () Int)

(assert (=> bs!1712194 (= lambda!372400 lambda!372374)))

(declare-fun bs!1712195 () Bool)

(assert (= bs!1712195 (and d!2084228 d!2084108)))

(assert (=> bs!1712195 (= lambda!372400 lambda!372358)))

(declare-fun bs!1712196 () Bool)

(assert (= bs!1712196 (and d!2084228 d!2084208)))

(assert (=> bs!1712196 (= lambda!372400 lambda!372384)))

(declare-fun bs!1712197 () Bool)

(assert (= bs!1712197 (and d!2084228 d!2084182)))

(assert (=> bs!1712197 (= lambda!372400 lambda!372373)))

(declare-fun bs!1712198 () Bool)

(assert (= bs!1712198 (and d!2084228 b!6649576)))

(assert (=> bs!1712198 (= lambda!372400 lambda!372199)))

(declare-fun bs!1712199 () Bool)

(assert (= bs!1712199 (and d!2084228 b!6649595)))

(assert (=> bs!1712199 (= lambda!372400 lambda!372201)))

(declare-fun bs!1712200 () Bool)

(assert (= bs!1712200 (and d!2084228 d!2084132)))

(assert (=> bs!1712200 (= lambda!372400 lambda!372361)))

(declare-fun bs!1712201 () Bool)

(assert (= bs!1712201 (and d!2084228 d!2084092)))

(assert (=> bs!1712201 (= lambda!372400 lambda!372355)))

(declare-fun bs!1712202 () Bool)

(assert (= bs!1712202 (and d!2084228 d!2084168)))

(assert (=> bs!1712202 (= lambda!372400 lambda!372372)))

(declare-fun b!6650626 () Bool)

(declare-fun e!4021366 () Regex!16512)

(assert (=> b!6650626 (= e!4021366 (h!72160 (unfocusZipperList!1933 zl!343)))))

(declare-fun b!6650627 () Bool)

(declare-fun e!4021363 () Bool)

(assert (=> b!6650627 (= e!4021363 (isEmpty!38023 (t!379505 (unfocusZipperList!1933 zl!343))))))

(declare-fun b!6650628 () Bool)

(declare-fun e!4021361 () Regex!16512)

(assert (=> b!6650628 (= e!4021361 EmptyLang!16512)))

(declare-fun b!6650629 () Bool)

(declare-fun e!4021362 () Bool)

(declare-fun lt!2424689 () Regex!16512)

(declare-fun isUnion!1324 (Regex!16512) Bool)

(assert (=> b!6650629 (= e!4021362 (isUnion!1324 lt!2424689))))

(declare-fun b!6650630 () Bool)

(declare-fun e!4021365 () Bool)

(declare-fun isEmptyLang!1894 (Regex!16512) Bool)

(assert (=> b!6650630 (= e!4021365 (isEmptyLang!1894 lt!2424689))))

(declare-fun b!6650631 () Bool)

(assert (=> b!6650631 (= e!4021366 e!4021361)))

(declare-fun c!1227555 () Bool)

(assert (=> b!6650631 (= c!1227555 (is-Cons!65712 (unfocusZipperList!1933 zl!343)))))

(declare-fun b!6650632 () Bool)

(assert (=> b!6650632 (= e!4021365 e!4021362)))

(declare-fun c!1227553 () Bool)

(assert (=> b!6650632 (= c!1227553 (isEmpty!38023 (tail!12553 (unfocusZipperList!1933 zl!343))))))

(declare-fun b!6650625 () Bool)

(assert (=> b!6650625 (= e!4021362 (= lt!2424689 (head!13468 (unfocusZipperList!1933 zl!343))))))

(declare-fun e!4021364 () Bool)

(assert (=> d!2084228 e!4021364))

(declare-fun res!2725233 () Bool)

(assert (=> d!2084228 (=> (not res!2725233) (not e!4021364))))

(assert (=> d!2084228 (= res!2725233 (validRegex!8248 lt!2424689))))

(assert (=> d!2084228 (= lt!2424689 e!4021366)))

(declare-fun c!1227554 () Bool)

(assert (=> d!2084228 (= c!1227554 e!4021363)))

(declare-fun res!2725232 () Bool)

(assert (=> d!2084228 (=> (not res!2725232) (not e!4021363))))

(assert (=> d!2084228 (= res!2725232 (is-Cons!65712 (unfocusZipperList!1933 zl!343)))))

(assert (=> d!2084228 (forall!15708 (unfocusZipperList!1933 zl!343) lambda!372400)))

(assert (=> d!2084228 (= (generalisedUnion!2356 (unfocusZipperList!1933 zl!343)) lt!2424689)))

(declare-fun b!6650633 () Bool)

(assert (=> b!6650633 (= e!4021364 e!4021365)))

(declare-fun c!1227552 () Bool)

(assert (=> b!6650633 (= c!1227552 (isEmpty!38023 (unfocusZipperList!1933 zl!343)))))

(declare-fun b!6650634 () Bool)

(assert (=> b!6650634 (= e!4021361 (Union!16512 (h!72160 (unfocusZipperList!1933 zl!343)) (generalisedUnion!2356 (t!379505 (unfocusZipperList!1933 zl!343)))))))

(assert (= (and d!2084228 res!2725232) b!6650627))

(assert (= (and d!2084228 c!1227554) b!6650626))

(assert (= (and d!2084228 (not c!1227554)) b!6650631))

(assert (= (and b!6650631 c!1227555) b!6650634))

(assert (= (and b!6650631 (not c!1227555)) b!6650628))

(assert (= (and d!2084228 res!2725233) b!6650633))

(assert (= (and b!6650633 c!1227552) b!6650630))

(assert (= (and b!6650633 (not c!1227552)) b!6650632))

(assert (= (and b!6650632 c!1227553) b!6650625))

(assert (= (and b!6650632 (not c!1227553)) b!6650629))

(declare-fun m!7416812 () Bool)

(assert (=> b!6650627 m!7416812))

(declare-fun m!7416814 () Bool)

(assert (=> b!6650634 m!7416814))

(assert (=> b!6650625 m!7415558))

(declare-fun m!7416816 () Bool)

(assert (=> b!6650625 m!7416816))

(declare-fun m!7416818 () Bool)

(assert (=> b!6650629 m!7416818))

(assert (=> b!6650633 m!7415558))

(declare-fun m!7416820 () Bool)

(assert (=> b!6650633 m!7416820))

(assert (=> b!6650632 m!7415558))

(declare-fun m!7416822 () Bool)

(assert (=> b!6650632 m!7416822))

(assert (=> b!6650632 m!7416822))

(declare-fun m!7416824 () Bool)

(assert (=> b!6650632 m!7416824))

(declare-fun m!7416826 () Bool)

(assert (=> d!2084228 m!7416826))

(assert (=> d!2084228 m!7415558))

(declare-fun m!7416828 () Bool)

(assert (=> d!2084228 m!7416828))

(declare-fun m!7416830 () Bool)

(assert (=> b!6650630 m!7416830))

(assert (=> b!6649591 d!2084228))

(declare-fun bs!1712203 () Bool)

(declare-fun d!2084234 () Bool)

(assert (= bs!1712203 (and d!2084234 d!2084186)))

(declare-fun lambda!372403 () Int)

(assert (=> bs!1712203 (= lambda!372403 lambda!372374)))

(declare-fun bs!1712204 () Bool)

(assert (= bs!1712204 (and d!2084234 d!2084108)))

(assert (=> bs!1712204 (= lambda!372403 lambda!372358)))

(declare-fun bs!1712205 () Bool)

(assert (= bs!1712205 (and d!2084234 d!2084208)))

(assert (=> bs!1712205 (= lambda!372403 lambda!372384)))

(declare-fun bs!1712206 () Bool)

(assert (= bs!1712206 (and d!2084234 d!2084182)))

(assert (=> bs!1712206 (= lambda!372403 lambda!372373)))

(declare-fun bs!1712207 () Bool)

(assert (= bs!1712207 (and d!2084234 d!2084228)))

(assert (=> bs!1712207 (= lambda!372403 lambda!372400)))

(declare-fun bs!1712208 () Bool)

(assert (= bs!1712208 (and d!2084234 b!6649576)))

(assert (=> bs!1712208 (= lambda!372403 lambda!372199)))

(declare-fun bs!1712209 () Bool)

(assert (= bs!1712209 (and d!2084234 b!6649595)))

(assert (=> bs!1712209 (= lambda!372403 lambda!372201)))

(declare-fun bs!1712210 () Bool)

(assert (= bs!1712210 (and d!2084234 d!2084132)))

(assert (=> bs!1712210 (= lambda!372403 lambda!372361)))

(declare-fun bs!1712211 () Bool)

(assert (= bs!1712211 (and d!2084234 d!2084092)))

(assert (=> bs!1712211 (= lambda!372403 lambda!372355)))

(declare-fun bs!1712212 () Bool)

(assert (= bs!1712212 (and d!2084234 d!2084168)))

(assert (=> bs!1712212 (= lambda!372403 lambda!372372)))

(declare-fun lt!2424692 () List!65836)

(assert (=> d!2084234 (forall!15708 lt!2424692 lambda!372403)))

(declare-fun e!4021375 () List!65836)

(assert (=> d!2084234 (= lt!2424692 e!4021375)))

(declare-fun c!1227562 () Bool)

(assert (=> d!2084234 (= c!1227562 (is-Cons!65713 zl!343))))

(assert (=> d!2084234 (= (unfocusZipperList!1933 zl!343) lt!2424692)))

(declare-fun b!6650649 () Bool)

(assert (=> b!6650649 (= e!4021375 (Cons!65712 (generalisedConcat!2109 (exprs!6396 (h!72161 zl!343))) (unfocusZipperList!1933 (t!379506 zl!343))))))

(declare-fun b!6650650 () Bool)

(assert (=> b!6650650 (= e!4021375 Nil!65712)))

(assert (= (and d!2084234 c!1227562) b!6650649))

(assert (= (and d!2084234 (not c!1227562)) b!6650650))

(declare-fun m!7416838 () Bool)

(assert (=> d!2084234 m!7416838))

(assert (=> b!6650649 m!7415528))

(declare-fun m!7416840 () Bool)

(assert (=> b!6650649 m!7416840))

(assert (=> b!6649591 d!2084234))

(declare-fun bs!1712213 () Bool)

(declare-fun d!2084238 () Bool)

(assert (= bs!1712213 (and d!2084238 d!2084186)))

(declare-fun lambda!372404 () Int)

(assert (=> bs!1712213 (= lambda!372404 lambda!372374)))

(declare-fun bs!1712214 () Bool)

(assert (= bs!1712214 (and d!2084238 d!2084108)))

(assert (=> bs!1712214 (= lambda!372404 lambda!372358)))

(declare-fun bs!1712215 () Bool)

(assert (= bs!1712215 (and d!2084238 d!2084208)))

(assert (=> bs!1712215 (= lambda!372404 lambda!372384)))

(declare-fun bs!1712216 () Bool)

(assert (= bs!1712216 (and d!2084238 d!2084182)))

(assert (=> bs!1712216 (= lambda!372404 lambda!372373)))

(declare-fun bs!1712217 () Bool)

(assert (= bs!1712217 (and d!2084238 d!2084228)))

(assert (=> bs!1712217 (= lambda!372404 lambda!372400)))

(declare-fun bs!1712218 () Bool)

(assert (= bs!1712218 (and d!2084238 b!6649576)))

(assert (=> bs!1712218 (= lambda!372404 lambda!372199)))

(declare-fun bs!1712219 () Bool)

(assert (= bs!1712219 (and d!2084238 b!6649595)))

(assert (=> bs!1712219 (= lambda!372404 lambda!372201)))

(declare-fun bs!1712220 () Bool)

(assert (= bs!1712220 (and d!2084238 d!2084234)))

(assert (=> bs!1712220 (= lambda!372404 lambda!372403)))

(declare-fun bs!1712221 () Bool)

(assert (= bs!1712221 (and d!2084238 d!2084132)))

(assert (=> bs!1712221 (= lambda!372404 lambda!372361)))

(declare-fun bs!1712222 () Bool)

(assert (= bs!1712222 (and d!2084238 d!2084092)))

(assert (=> bs!1712222 (= lambda!372404 lambda!372355)))

(declare-fun bs!1712223 () Bool)

(assert (= bs!1712223 (and d!2084238 d!2084168)))

(assert (=> bs!1712223 (= lambda!372404 lambda!372372)))

(declare-fun b!6650656 () Bool)

(declare-fun e!4021380 () Regex!16512)

(assert (=> b!6650656 (= e!4021380 (h!72160 (exprs!6396 (h!72161 zl!343))))))

(declare-fun b!6650657 () Bool)

(declare-fun e!4021381 () Regex!16512)

(assert (=> b!6650657 (= e!4021381 (Concat!25357 (h!72160 (exprs!6396 (h!72161 zl!343))) (generalisedConcat!2109 (t!379505 (exprs!6396 (h!72161 zl!343))))))))

(declare-fun b!6650658 () Bool)

(assert (=> b!6650658 (= e!4021380 e!4021381)))

(declare-fun c!1227568 () Bool)

(assert (=> b!6650658 (= c!1227568 (is-Cons!65712 (exprs!6396 (h!72161 zl!343))))))

(declare-fun b!6650659 () Bool)

(declare-fun e!4021383 () Bool)

(declare-fun e!4021384 () Bool)

(assert (=> b!6650659 (= e!4021383 e!4021384)))

(declare-fun c!1227565 () Bool)

(assert (=> b!6650659 (= c!1227565 (isEmpty!38023 (exprs!6396 (h!72161 zl!343))))))

(declare-fun b!6650661 () Bool)

(declare-fun e!4021382 () Bool)

(assert (=> b!6650661 (= e!4021382 (isEmpty!38023 (t!379505 (exprs!6396 (h!72161 zl!343)))))))

(assert (=> d!2084238 e!4021383))

(declare-fun res!2725237 () Bool)

(assert (=> d!2084238 (=> (not res!2725237) (not e!4021383))))

(declare-fun lt!2424693 () Regex!16512)

(assert (=> d!2084238 (= res!2725237 (validRegex!8248 lt!2424693))))

(assert (=> d!2084238 (= lt!2424693 e!4021380)))

(declare-fun c!1227567 () Bool)

(assert (=> d!2084238 (= c!1227567 e!4021382)))

(declare-fun res!2725238 () Bool)

(assert (=> d!2084238 (=> (not res!2725238) (not e!4021382))))

(assert (=> d!2084238 (= res!2725238 (is-Cons!65712 (exprs!6396 (h!72161 zl!343))))))

(assert (=> d!2084238 (forall!15708 (exprs!6396 (h!72161 zl!343)) lambda!372404)))

(assert (=> d!2084238 (= (generalisedConcat!2109 (exprs!6396 (h!72161 zl!343))) lt!2424693)))

(declare-fun b!6650660 () Bool)

(declare-fun e!4021379 () Bool)

(assert (=> b!6650660 (= e!4021379 (= lt!2424693 (head!13468 (exprs!6396 (h!72161 zl!343)))))))

(declare-fun b!6650662 () Bool)

(assert (=> b!6650662 (= e!4021381 EmptyExpr!16512)))

(declare-fun b!6650663 () Bool)

(assert (=> b!6650663 (= e!4021384 e!4021379)))

(declare-fun c!1227566 () Bool)

(assert (=> b!6650663 (= c!1227566 (isEmpty!38023 (tail!12553 (exprs!6396 (h!72161 zl!343)))))))

(declare-fun b!6650664 () Bool)

(assert (=> b!6650664 (= e!4021384 (isEmptyExpr!1886 lt!2424693))))

(declare-fun b!6650665 () Bool)

(assert (=> b!6650665 (= e!4021379 (isConcat!1409 lt!2424693))))

(assert (= (and d!2084238 res!2725238) b!6650661))

(assert (= (and d!2084238 c!1227567) b!6650656))

(assert (= (and d!2084238 (not c!1227567)) b!6650658))

(assert (= (and b!6650658 c!1227568) b!6650657))

(assert (= (and b!6650658 (not c!1227568)) b!6650662))

(assert (= (and d!2084238 res!2725237) b!6650659))

(assert (= (and b!6650659 c!1227565) b!6650664))

(assert (= (and b!6650659 (not c!1227565)) b!6650663))

(assert (= (and b!6650663 c!1227566) b!6650660))

(assert (= (and b!6650663 (not c!1227566)) b!6650665))

(declare-fun m!7416842 () Bool)

(assert (=> b!6650664 m!7416842))

(assert (=> b!6650657 m!7415534))

(declare-fun m!7416844 () Bool)

(assert (=> b!6650659 m!7416844))

(declare-fun m!7416846 () Bool)

(assert (=> b!6650660 m!7416846))

(declare-fun m!7416848 () Bool)

(assert (=> d!2084238 m!7416848))

(declare-fun m!7416850 () Bool)

(assert (=> d!2084238 m!7416850))

(declare-fun m!7416852 () Bool)

(assert (=> b!6650665 m!7416852))

(declare-fun m!7416854 () Bool)

(assert (=> b!6650663 m!7416854))

(assert (=> b!6650663 m!7416854))

(declare-fun m!7416856 () Bool)

(assert (=> b!6650663 m!7416856))

(assert (=> b!6650661 m!7415700))

(assert (=> b!6649541 d!2084238))

(declare-fun b!6650666 () Bool)

(declare-fun e!4021388 () Bool)

(assert (=> b!6650666 (= e!4021388 (= (head!13467 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227266 (ite c!1227272 lt!2423836 (ite c!1227261 (_1!36794 lt!2423904) s!2326)) s!2326))) (c!1227274 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423938 (ite c!1227266 (ite c!1227272 lt!2423835 (ite c!1227261 (reg!16841 (regOne!33536 r!7292)) lt!2423849)) (ite c!1227269 lt!2423935 (regTwo!33536 r!7292))))))))))

(declare-fun b!6650667 () Bool)

(declare-fun e!4021386 () Bool)

(declare-fun e!4021389 () Bool)

(assert (=> b!6650667 (= e!4021386 e!4021389)))

(declare-fun c!1227569 () Bool)

(assert (=> b!6650667 (= c!1227569 (is-EmptyLang!16512 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423938 (ite c!1227266 (ite c!1227272 lt!2423835 (ite c!1227261 (reg!16841 (regOne!33536 r!7292)) lt!2423849)) (ite c!1227269 lt!2423935 (regTwo!33536 r!7292)))))))))

(declare-fun e!4021387 () Bool)

(declare-fun b!6650668 () Bool)

(assert (=> b!6650668 (= e!4021387 (not (= (head!13467 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227266 (ite c!1227272 lt!2423836 (ite c!1227261 (_1!36794 lt!2423904) s!2326)) s!2326))) (c!1227274 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423938 (ite c!1227266 (ite c!1227272 lt!2423835 (ite c!1227261 (reg!16841 (regOne!33536 r!7292)) lt!2423849)) (ite c!1227269 lt!2423935 (regTwo!33536 r!7292)))))))))))

(declare-fun d!2084240 () Bool)

(assert (=> d!2084240 e!4021386))

(declare-fun c!1227571 () Bool)

(assert (=> d!2084240 (= c!1227571 (is-EmptyExpr!16512 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423938 (ite c!1227266 (ite c!1227272 lt!2423835 (ite c!1227261 (reg!16841 (regOne!33536 r!7292)) lt!2423849)) (ite c!1227269 lt!2423935 (regTwo!33536 r!7292)))))))))

(declare-fun lt!2424694 () Bool)

(declare-fun e!4021385 () Bool)

(assert (=> d!2084240 (= lt!2424694 e!4021385)))

(declare-fun c!1227570 () Bool)

(assert (=> d!2084240 (= c!1227570 (isEmpty!38022 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227266 (ite c!1227272 lt!2423836 (ite c!1227261 (_1!36794 lt!2423904) s!2326)) s!2326))))))

(assert (=> d!2084240 (validRegex!8248 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423938 (ite c!1227266 (ite c!1227272 lt!2423835 (ite c!1227261 (reg!16841 (regOne!33536 r!7292)) lt!2423849)) (ite c!1227269 lt!2423935 (regTwo!33536 r!7292))))))))

(assert (=> d!2084240 (= (matchR!8695 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423938 (ite c!1227266 (ite c!1227272 lt!2423835 (ite c!1227261 (reg!16841 (regOne!33536 r!7292)) lt!2423849)) (ite c!1227269 lt!2423935 (regTwo!33536 r!7292))))) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227266 (ite c!1227272 lt!2423836 (ite c!1227261 (_1!36794 lt!2423904) s!2326)) s!2326))) lt!2424694)))

(declare-fun b!6650669 () Bool)

(declare-fun res!2725241 () Bool)

(declare-fun e!4021390 () Bool)

(assert (=> b!6650669 (=> res!2725241 e!4021390)))

(assert (=> b!6650669 (= res!2725241 (not (is-ElementMatch!16512 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423938 (ite c!1227266 (ite c!1227272 lt!2423835 (ite c!1227261 (reg!16841 (regOne!33536 r!7292)) lt!2423849)) (ite c!1227269 lt!2423935 (regTwo!33536 r!7292))))))))))

(assert (=> b!6650669 (= e!4021389 e!4021390)))

(declare-fun call!588033 () Bool)

(declare-fun bm!588028 () Bool)

(assert (=> bm!588028 (= call!588033 (isEmpty!38022 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227266 (ite c!1227272 lt!2423836 (ite c!1227261 (_1!36794 lt!2423904) s!2326)) s!2326))))))

(declare-fun b!6650670 () Bool)

(declare-fun res!2725239 () Bool)

(assert (=> b!6650670 (=> (not res!2725239) (not e!4021388))))

(assert (=> b!6650670 (= res!2725239 (not call!588033))))

(declare-fun b!6650671 () Bool)

(declare-fun res!2725244 () Bool)

(assert (=> b!6650671 (=> (not res!2725244) (not e!4021388))))

(assert (=> b!6650671 (= res!2725244 (isEmpty!38022 (tail!12552 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227266 (ite c!1227272 lt!2423836 (ite c!1227261 (_1!36794 lt!2423904) s!2326)) s!2326)))))))

(declare-fun b!6650672 () Bool)

(declare-fun e!4021391 () Bool)

(assert (=> b!6650672 (= e!4021390 e!4021391)))

(declare-fun res!2725243 () Bool)

(assert (=> b!6650672 (=> (not res!2725243) (not e!4021391))))

(assert (=> b!6650672 (= res!2725243 (not lt!2424694))))

(declare-fun b!6650673 () Bool)

(assert (=> b!6650673 (= e!4021389 (not lt!2424694))))

(declare-fun b!6650674 () Bool)

(assert (=> b!6650674 (= e!4021391 e!4021387)))

(declare-fun res!2725245 () Bool)

(assert (=> b!6650674 (=> res!2725245 e!4021387)))

(assert (=> b!6650674 (= res!2725245 call!588033)))

(declare-fun b!6650675 () Bool)

(assert (=> b!6650675 (= e!4021385 (nullable!6505 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423938 (ite c!1227266 (ite c!1227272 lt!2423835 (ite c!1227261 (reg!16841 (regOne!33536 r!7292)) lt!2423849)) (ite c!1227269 lt!2423935 (regTwo!33536 r!7292)))))))))

(declare-fun b!6650676 () Bool)

(declare-fun res!2725240 () Bool)

(assert (=> b!6650676 (=> res!2725240 e!4021390)))

(assert (=> b!6650676 (= res!2725240 e!4021388)))

(declare-fun res!2725246 () Bool)

(assert (=> b!6650676 (=> (not res!2725246) (not e!4021388))))

(assert (=> b!6650676 (= res!2725246 lt!2424694)))

(declare-fun b!6650677 () Bool)

(assert (=> b!6650677 (= e!4021385 (matchR!8695 (derivativeStep!5192 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423938 (ite c!1227266 (ite c!1227272 lt!2423835 (ite c!1227261 (reg!16841 (regOne!33536 r!7292)) lt!2423849)) (ite c!1227269 lt!2423935 (regTwo!33536 r!7292))))) (head!13467 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227266 (ite c!1227272 lt!2423836 (ite c!1227261 (_1!36794 lt!2423904) s!2326)) s!2326)))) (tail!12552 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227266 (ite c!1227272 lt!2423836 (ite c!1227261 (_1!36794 lt!2423904) s!2326)) s!2326)))))))

(declare-fun b!6650678 () Bool)

(declare-fun res!2725242 () Bool)

(assert (=> b!6650678 (=> res!2725242 e!4021387)))

(assert (=> b!6650678 (= res!2725242 (not (isEmpty!38022 (tail!12552 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227266 (ite c!1227272 lt!2423836 (ite c!1227261 (_1!36794 lt!2423904) s!2326)) s!2326))))))))

(declare-fun b!6650679 () Bool)

(assert (=> b!6650679 (= e!4021386 (= lt!2424694 call!588033))))

(assert (= (and d!2084240 c!1227570) b!6650675))

(assert (= (and d!2084240 (not c!1227570)) b!6650677))

(assert (= (and d!2084240 c!1227571) b!6650679))

(assert (= (and d!2084240 (not c!1227571)) b!6650667))

(assert (= (and b!6650667 c!1227569) b!6650673))

(assert (= (and b!6650667 (not c!1227569)) b!6650669))

(assert (= (and b!6650669 (not res!2725241)) b!6650676))

(assert (= (and b!6650676 res!2725246) b!6650670))

(assert (= (and b!6650670 res!2725239) b!6650671))

(assert (= (and b!6650671 res!2725244) b!6650666))

(assert (= (and b!6650676 (not res!2725240)) b!6650672))

(assert (= (and b!6650672 res!2725243) b!6650674))

(assert (= (and b!6650674 (not res!2725245)) b!6650678))

(assert (= (and b!6650678 (not res!2725242)) b!6650668))

(assert (= (or b!6650679 b!6650670 b!6650674) bm!588028))

(declare-fun m!7416858 () Bool)

(assert (=> b!6650677 m!7416858))

(assert (=> b!6650677 m!7416858))

(declare-fun m!7416860 () Bool)

(assert (=> b!6650677 m!7416860))

(declare-fun m!7416862 () Bool)

(assert (=> b!6650677 m!7416862))

(assert (=> b!6650677 m!7416860))

(assert (=> b!6650677 m!7416862))

(declare-fun m!7416864 () Bool)

(assert (=> b!6650677 m!7416864))

(assert (=> b!6650678 m!7416862))

(assert (=> b!6650678 m!7416862))

(declare-fun m!7416866 () Bool)

(assert (=> b!6650678 m!7416866))

(declare-fun m!7416868 () Bool)

(assert (=> bm!588028 m!7416868))

(declare-fun m!7416870 () Bool)

(assert (=> b!6650675 m!7416870))

(assert (=> b!6650671 m!7416862))

(assert (=> b!6650671 m!7416862))

(assert (=> b!6650671 m!7416866))

(assert (=> b!6650666 m!7416858))

(assert (=> d!2084240 m!7416868))

(declare-fun m!7416872 () Bool)

(assert (=> d!2084240 m!7416872))

(assert (=> b!6650668 m!7416858))

(assert (=> bm!587256 d!2084240))

(declare-fun d!2084242 () Bool)

(assert (=> d!2084242 (= (Exists!3582 (ite c!1227273 lambda!372189 (ite c!1227262 lambda!372193 (ite c!1227272 lambda!372196 lambda!372204)))) (choose!49715 (ite c!1227273 lambda!372189 (ite c!1227262 lambda!372193 (ite c!1227272 lambda!372196 lambda!372204)))))))

(declare-fun bs!1712224 () Bool)

(assert (= bs!1712224 d!2084242))

(declare-fun m!7416874 () Bool)

(assert (=> bs!1712224 m!7416874))

(assert (=> bm!587237 d!2084242))

(declare-fun e!4021395 () Bool)

(declare-fun b!6650680 () Bool)

(assert (=> b!6650680 (= e!4021395 (= (head!13467 (ite (or c!1227264 c!1227273) s!2326 (ite c!1227272 lt!2423866 (_2!36794 lt!2423904)))) (c!1227274 (ite c!1227264 lt!2423847 (ite c!1227273 lt!2423854 (ite c!1227272 lt!2423810 lt!2423816))))))))

(declare-fun b!6650681 () Bool)

(declare-fun e!4021393 () Bool)

(declare-fun e!4021396 () Bool)

(assert (=> b!6650681 (= e!4021393 e!4021396)))

(declare-fun c!1227572 () Bool)

(assert (=> b!6650681 (= c!1227572 (is-EmptyLang!16512 (ite c!1227264 lt!2423847 (ite c!1227273 lt!2423854 (ite c!1227272 lt!2423810 lt!2423816)))))))

(declare-fun b!6650682 () Bool)

(declare-fun e!4021394 () Bool)

(assert (=> b!6650682 (= e!4021394 (not (= (head!13467 (ite (or c!1227264 c!1227273) s!2326 (ite c!1227272 lt!2423866 (_2!36794 lt!2423904)))) (c!1227274 (ite c!1227264 lt!2423847 (ite c!1227273 lt!2423854 (ite c!1227272 lt!2423810 lt!2423816)))))))))

(declare-fun d!2084244 () Bool)

(assert (=> d!2084244 e!4021393))

(declare-fun c!1227574 () Bool)

(assert (=> d!2084244 (= c!1227574 (is-EmptyExpr!16512 (ite c!1227264 lt!2423847 (ite c!1227273 lt!2423854 (ite c!1227272 lt!2423810 lt!2423816)))))))

(declare-fun lt!2424695 () Bool)

(declare-fun e!4021392 () Bool)

(assert (=> d!2084244 (= lt!2424695 e!4021392)))

(declare-fun c!1227573 () Bool)

(assert (=> d!2084244 (= c!1227573 (isEmpty!38022 (ite (or c!1227264 c!1227273) s!2326 (ite c!1227272 lt!2423866 (_2!36794 lt!2423904)))))))

(assert (=> d!2084244 (validRegex!8248 (ite c!1227264 lt!2423847 (ite c!1227273 lt!2423854 (ite c!1227272 lt!2423810 lt!2423816))))))

(assert (=> d!2084244 (= (matchR!8695 (ite c!1227264 lt!2423847 (ite c!1227273 lt!2423854 (ite c!1227272 lt!2423810 lt!2423816))) (ite (or c!1227264 c!1227273) s!2326 (ite c!1227272 lt!2423866 (_2!36794 lt!2423904)))) lt!2424695)))

(declare-fun b!6650683 () Bool)

(declare-fun res!2725249 () Bool)

(declare-fun e!4021397 () Bool)

(assert (=> b!6650683 (=> res!2725249 e!4021397)))

(assert (=> b!6650683 (= res!2725249 (not (is-ElementMatch!16512 (ite c!1227264 lt!2423847 (ite c!1227273 lt!2423854 (ite c!1227272 lt!2423810 lt!2423816))))))))

(assert (=> b!6650683 (= e!4021396 e!4021397)))

(declare-fun call!588034 () Bool)

(declare-fun bm!588029 () Bool)

(assert (=> bm!588029 (= call!588034 (isEmpty!38022 (ite (or c!1227264 c!1227273) s!2326 (ite c!1227272 lt!2423866 (_2!36794 lt!2423904)))))))

(declare-fun b!6650684 () Bool)

(declare-fun res!2725247 () Bool)

(assert (=> b!6650684 (=> (not res!2725247) (not e!4021395))))

(assert (=> b!6650684 (= res!2725247 (not call!588034))))

(declare-fun b!6650685 () Bool)

(declare-fun res!2725252 () Bool)

(assert (=> b!6650685 (=> (not res!2725252) (not e!4021395))))

(assert (=> b!6650685 (= res!2725252 (isEmpty!38022 (tail!12552 (ite (or c!1227264 c!1227273) s!2326 (ite c!1227272 lt!2423866 (_2!36794 lt!2423904))))))))

(declare-fun b!6650686 () Bool)

(declare-fun e!4021398 () Bool)

(assert (=> b!6650686 (= e!4021397 e!4021398)))

(declare-fun res!2725251 () Bool)

(assert (=> b!6650686 (=> (not res!2725251) (not e!4021398))))

(assert (=> b!6650686 (= res!2725251 (not lt!2424695))))

(declare-fun b!6650687 () Bool)

(assert (=> b!6650687 (= e!4021396 (not lt!2424695))))

(declare-fun b!6650688 () Bool)

(assert (=> b!6650688 (= e!4021398 e!4021394)))

(declare-fun res!2725253 () Bool)

(assert (=> b!6650688 (=> res!2725253 e!4021394)))

(assert (=> b!6650688 (= res!2725253 call!588034)))

(declare-fun b!6650689 () Bool)

(assert (=> b!6650689 (= e!4021392 (nullable!6505 (ite c!1227264 lt!2423847 (ite c!1227273 lt!2423854 (ite c!1227272 lt!2423810 lt!2423816)))))))

(declare-fun b!6650690 () Bool)

(declare-fun res!2725248 () Bool)

(assert (=> b!6650690 (=> res!2725248 e!4021397)))

(assert (=> b!6650690 (= res!2725248 e!4021395)))

(declare-fun res!2725254 () Bool)

(assert (=> b!6650690 (=> (not res!2725254) (not e!4021395))))

(assert (=> b!6650690 (= res!2725254 lt!2424695)))

(declare-fun b!6650691 () Bool)

(assert (=> b!6650691 (= e!4021392 (matchR!8695 (derivativeStep!5192 (ite c!1227264 lt!2423847 (ite c!1227273 lt!2423854 (ite c!1227272 lt!2423810 lt!2423816))) (head!13467 (ite (or c!1227264 c!1227273) s!2326 (ite c!1227272 lt!2423866 (_2!36794 lt!2423904))))) (tail!12552 (ite (or c!1227264 c!1227273) s!2326 (ite c!1227272 lt!2423866 (_2!36794 lt!2423904))))))))

(declare-fun b!6650692 () Bool)

(declare-fun res!2725250 () Bool)

(assert (=> b!6650692 (=> res!2725250 e!4021394)))

(assert (=> b!6650692 (= res!2725250 (not (isEmpty!38022 (tail!12552 (ite (or c!1227264 c!1227273) s!2326 (ite c!1227272 lt!2423866 (_2!36794 lt!2423904)))))))))

(declare-fun b!6650693 () Bool)

(assert (=> b!6650693 (= e!4021393 (= lt!2424695 call!588034))))

(assert (= (and d!2084244 c!1227573) b!6650689))

(assert (= (and d!2084244 (not c!1227573)) b!6650691))

(assert (= (and d!2084244 c!1227574) b!6650693))

(assert (= (and d!2084244 (not c!1227574)) b!6650681))

(assert (= (and b!6650681 c!1227572) b!6650687))

(assert (= (and b!6650681 (not c!1227572)) b!6650683))

(assert (= (and b!6650683 (not res!2725249)) b!6650690))

(assert (= (and b!6650690 res!2725254) b!6650684))

(assert (= (and b!6650684 res!2725247) b!6650685))

(assert (= (and b!6650685 res!2725252) b!6650680))

(assert (= (and b!6650690 (not res!2725248)) b!6650686))

(assert (= (and b!6650686 res!2725251) b!6650688))

(assert (= (and b!6650688 (not res!2725253)) b!6650692))

(assert (= (and b!6650692 (not res!2725250)) b!6650682))

(assert (= (or b!6650693 b!6650684 b!6650688) bm!588029))

(declare-fun m!7416876 () Bool)

(assert (=> b!6650691 m!7416876))

(assert (=> b!6650691 m!7416876))

(declare-fun m!7416878 () Bool)

(assert (=> b!6650691 m!7416878))

(declare-fun m!7416880 () Bool)

(assert (=> b!6650691 m!7416880))

(assert (=> b!6650691 m!7416878))

(assert (=> b!6650691 m!7416880))

(declare-fun m!7416882 () Bool)

(assert (=> b!6650691 m!7416882))

(assert (=> b!6650692 m!7416880))

(assert (=> b!6650692 m!7416880))

(declare-fun m!7416884 () Bool)

(assert (=> b!6650692 m!7416884))

(declare-fun m!7416886 () Bool)

(assert (=> bm!588029 m!7416886))

(declare-fun m!7416888 () Bool)

(assert (=> b!6650689 m!7416888))

(assert (=> b!6650685 m!7416880))

(assert (=> b!6650685 m!7416880))

(assert (=> b!6650685 m!7416884))

(assert (=> b!6650680 m!7416876))

(assert (=> d!2084244 m!7416886))

(declare-fun m!7416890 () Bool)

(assert (=> d!2084244 m!7416890))

(assert (=> b!6650682 m!7416876))

(assert (=> bm!587269 d!2084244))

(declare-fun d!2084246 () Bool)

(assert (=> d!2084246 (= (Exists!3582 (ite c!1227273 lambda!372186 (ite c!1227262 lambda!372190 (ite c!1227272 lambda!372195 lambda!372204)))) (choose!49715 (ite c!1227273 lambda!372186 (ite c!1227262 lambda!372190 (ite c!1227272 lambda!372195 lambda!372204)))))))

(declare-fun bs!1712225 () Bool)

(assert (= bs!1712225 d!2084246))

(declare-fun m!7416892 () Bool)

(assert (=> bs!1712225 m!7416892))

(assert (=> bm!587107 d!2084246))

(declare-fun d!2084248 () Bool)

(assert (=> d!2084248 (= (isEmpty!38023 (t!379505 (exprs!6396 (h!72161 zl!343)))) (is-Nil!65712 (t!379505 (exprs!6396 (h!72161 zl!343)))))))

(assert (=> b!6649572 d!2084248))

(declare-fun b!6650696 () Bool)

(declare-fun e!4021404 () Bool)

(assert (=> b!6650696 (= e!4021404 (= (head!13467 s!2326) (c!1227274 (ite c!1227264 lt!2423825 (ite c!1227262 (Concat!25357 (regOne!33536 r!7292) lt!2423798) (ite c!1227266 lt!2423810 (regOne!33536 r!7292)))))))))

(declare-fun b!6650697 () Bool)

(declare-fun e!4021402 () Bool)

(declare-fun e!4021405 () Bool)

(assert (=> b!6650697 (= e!4021402 e!4021405)))

(declare-fun c!1227575 () Bool)

(assert (=> b!6650697 (= c!1227575 (is-EmptyLang!16512 (ite c!1227264 lt!2423825 (ite c!1227262 (Concat!25357 (regOne!33536 r!7292) lt!2423798) (ite c!1227266 lt!2423810 (regOne!33536 r!7292))))))))

(declare-fun e!4021403 () Bool)

(declare-fun b!6650698 () Bool)

(assert (=> b!6650698 (= e!4021403 (not (= (head!13467 s!2326) (c!1227274 (ite c!1227264 lt!2423825 (ite c!1227262 (Concat!25357 (regOne!33536 r!7292) lt!2423798) (ite c!1227266 lt!2423810 (regOne!33536 r!7292))))))))))

(declare-fun d!2084250 () Bool)

(assert (=> d!2084250 e!4021402))

(declare-fun c!1227577 () Bool)

(assert (=> d!2084250 (= c!1227577 (is-EmptyExpr!16512 (ite c!1227264 lt!2423825 (ite c!1227262 (Concat!25357 (regOne!33536 r!7292) lt!2423798) (ite c!1227266 lt!2423810 (regOne!33536 r!7292))))))))

(declare-fun lt!2424698 () Bool)

(declare-fun e!4021401 () Bool)

(assert (=> d!2084250 (= lt!2424698 e!4021401)))

(declare-fun c!1227576 () Bool)

(assert (=> d!2084250 (= c!1227576 (isEmpty!38022 s!2326))))

(assert (=> d!2084250 (validRegex!8248 (ite c!1227264 lt!2423825 (ite c!1227262 (Concat!25357 (regOne!33536 r!7292) lt!2423798) (ite c!1227266 lt!2423810 (regOne!33536 r!7292)))))))

(assert (=> d!2084250 (= (matchR!8695 (ite c!1227264 lt!2423825 (ite c!1227262 (Concat!25357 (regOne!33536 r!7292) lt!2423798) (ite c!1227266 lt!2423810 (regOne!33536 r!7292)))) s!2326) lt!2424698)))

(declare-fun b!6650699 () Bool)

(declare-fun res!2725259 () Bool)

(declare-fun e!4021406 () Bool)

(assert (=> b!6650699 (=> res!2725259 e!4021406)))

(assert (=> b!6650699 (= res!2725259 (not (is-ElementMatch!16512 (ite c!1227264 lt!2423825 (ite c!1227262 (Concat!25357 (regOne!33536 r!7292) lt!2423798) (ite c!1227266 lt!2423810 (regOne!33536 r!7292)))))))))

(assert (=> b!6650699 (= e!4021405 e!4021406)))

(declare-fun bm!588030 () Bool)

(declare-fun call!588035 () Bool)

(assert (=> bm!588030 (= call!588035 (isEmpty!38022 s!2326))))

(declare-fun b!6650700 () Bool)

(declare-fun res!2725257 () Bool)

(assert (=> b!6650700 (=> (not res!2725257) (not e!4021404))))

(assert (=> b!6650700 (= res!2725257 (not call!588035))))

(declare-fun b!6650701 () Bool)

(declare-fun res!2725262 () Bool)

(assert (=> b!6650701 (=> (not res!2725262) (not e!4021404))))

(assert (=> b!6650701 (= res!2725262 (isEmpty!38022 (tail!12552 s!2326)))))

(declare-fun b!6650702 () Bool)

(declare-fun e!4021407 () Bool)

(assert (=> b!6650702 (= e!4021406 e!4021407)))

(declare-fun res!2725261 () Bool)

(assert (=> b!6650702 (=> (not res!2725261) (not e!4021407))))

(assert (=> b!6650702 (= res!2725261 (not lt!2424698))))

(declare-fun b!6650703 () Bool)

(assert (=> b!6650703 (= e!4021405 (not lt!2424698))))

(declare-fun b!6650704 () Bool)

(assert (=> b!6650704 (= e!4021407 e!4021403)))

(declare-fun res!2725263 () Bool)

(assert (=> b!6650704 (=> res!2725263 e!4021403)))

(assert (=> b!6650704 (= res!2725263 call!588035)))

(declare-fun b!6650705 () Bool)

(assert (=> b!6650705 (= e!4021401 (nullable!6505 (ite c!1227264 lt!2423825 (ite c!1227262 (Concat!25357 (regOne!33536 r!7292) lt!2423798) (ite c!1227266 lt!2423810 (regOne!33536 r!7292))))))))

(declare-fun b!6650706 () Bool)

(declare-fun res!2725258 () Bool)

(assert (=> b!6650706 (=> res!2725258 e!4021406)))

(assert (=> b!6650706 (= res!2725258 e!4021404)))

(declare-fun res!2725264 () Bool)

(assert (=> b!6650706 (=> (not res!2725264) (not e!4021404))))

(assert (=> b!6650706 (= res!2725264 lt!2424698)))

(declare-fun b!6650707 () Bool)

(assert (=> b!6650707 (= e!4021401 (matchR!8695 (derivativeStep!5192 (ite c!1227264 lt!2423825 (ite c!1227262 (Concat!25357 (regOne!33536 r!7292) lt!2423798) (ite c!1227266 lt!2423810 (regOne!33536 r!7292)))) (head!13467 s!2326)) (tail!12552 s!2326)))))

(declare-fun b!6650708 () Bool)

(declare-fun res!2725260 () Bool)

(assert (=> b!6650708 (=> res!2725260 e!4021403)))

(assert (=> b!6650708 (= res!2725260 (not (isEmpty!38022 (tail!12552 s!2326))))))

(declare-fun b!6650709 () Bool)

(assert (=> b!6650709 (= e!4021402 (= lt!2424698 call!588035))))

(assert (= (and d!2084250 c!1227576) b!6650705))

(assert (= (and d!2084250 (not c!1227576)) b!6650707))

(assert (= (and d!2084250 c!1227577) b!6650709))

(assert (= (and d!2084250 (not c!1227577)) b!6650697))

(assert (= (and b!6650697 c!1227575) b!6650703))

(assert (= (and b!6650697 (not c!1227575)) b!6650699))

(assert (= (and b!6650699 (not res!2725259)) b!6650706))

(assert (= (and b!6650706 res!2725264) b!6650700))

(assert (= (and b!6650700 res!2725257) b!6650701))

(assert (= (and b!6650701 res!2725262) b!6650696))

(assert (= (and b!6650706 (not res!2725258)) b!6650702))

(assert (= (and b!6650702 res!2725261) b!6650704))

(assert (= (and b!6650704 (not res!2725263)) b!6650708))

(assert (= (and b!6650708 (not res!2725260)) b!6650698))

(assert (= (or b!6650709 b!6650700 b!6650704) bm!588030))

(assert (=> b!6650707 m!7416388))

(assert (=> b!6650707 m!7416388))

(declare-fun m!7416894 () Bool)

(assert (=> b!6650707 m!7416894))

(assert (=> b!6650707 m!7416392))

(assert (=> b!6650707 m!7416894))

(assert (=> b!6650707 m!7416392))

(declare-fun m!7416896 () Bool)

(assert (=> b!6650707 m!7416896))

(assert (=> b!6650708 m!7416392))

(assert (=> b!6650708 m!7416392))

(assert (=> b!6650708 m!7416396))

(assert (=> bm!588030 m!7416382))

(declare-fun m!7416898 () Bool)

(assert (=> b!6650705 m!7416898))

(assert (=> b!6650701 m!7416392))

(assert (=> b!6650701 m!7416392))

(assert (=> b!6650701 m!7416396))

(assert (=> b!6650696 m!7416388))

(assert (=> d!2084250 m!7416382))

(declare-fun m!7416900 () Bool)

(assert (=> d!2084250 m!7416900))

(assert (=> b!6650698 m!7416388))

(assert (=> bm!587212 d!2084250))

(declare-fun d!2084252 () Bool)

(declare-fun e!4021411 () Bool)

(assert (=> d!2084252 e!4021411))

(declare-fun res!2725268 () Bool)

(assert (=> d!2084252 (=> (not res!2725268) (not e!4021411))))

(declare-fun lt!2424702 () List!65837)

(declare-fun noDuplicate!2313 (List!65837) Bool)

(assert (=> d!2084252 (= res!2725268 (noDuplicate!2313 lt!2424702))))

(declare-fun choose!49733 ((Set Context!11792)) List!65837)

(assert (=> d!2084252 (= lt!2424702 (choose!49733 z!1189))))

(assert (=> d!2084252 (= (toList!10296 z!1189) lt!2424702)))

(declare-fun b!6650713 () Bool)

(declare-fun content!12710 (List!65837) (Set Context!11792))

(assert (=> b!6650713 (= e!4021411 (= (content!12710 lt!2424702) z!1189))))

(assert (= (and d!2084252 res!2725268) b!6650713))

(declare-fun m!7416914 () Bool)

(assert (=> d!2084252 m!7416914))

(declare-fun m!7416916 () Bool)

(assert (=> d!2084252 m!7416916))

(declare-fun m!7416918 () Bool)

(assert (=> b!6650713 m!7416918))

(assert (=> b!6649542 d!2084252))

(declare-fun d!2084260 () Bool)

(assert (=> d!2084260 (matchR!8695 (Concat!25357 lt!2423835 (regTwo!33536 r!7292)) (++!14666 (ite c!1227272 (_2!36794 lt!2423746) (ite c!1227261 lt!2423850 Nil!65711)) (ite c!1227272 (_2!36794 lt!2423817) (ite c!1227261 (_2!36794 lt!2423861) s!2326))))))

(declare-fun lt!2424703 () Unit!159475)

(assert (=> d!2084260 (= lt!2424703 (choose!49725 lt!2423835 (regTwo!33536 r!7292) (ite c!1227272 (_2!36794 lt!2423746) (ite c!1227261 lt!2423850 Nil!65711)) (ite c!1227272 (_2!36794 lt!2423817) (ite c!1227261 (_2!36794 lt!2423861) s!2326))))))

(declare-fun e!4021415 () Bool)

(assert (=> d!2084260 e!4021415))

(declare-fun res!2725270 () Bool)

(assert (=> d!2084260 (=> (not res!2725270) (not e!4021415))))

(assert (=> d!2084260 (= res!2725270 (validRegex!8248 lt!2423835))))

(assert (=> d!2084260 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!373 lt!2423835 (regTwo!33536 r!7292) (ite c!1227272 (_2!36794 lt!2423746) (ite c!1227261 lt!2423850 Nil!65711)) (ite c!1227272 (_2!36794 lt!2423817) (ite c!1227261 (_2!36794 lt!2423861) s!2326))) lt!2424703)))

(declare-fun b!6650719 () Bool)

(assert (=> b!6650719 (= e!4021415 (validRegex!8248 (regTwo!33536 r!7292)))))

(assert (= (and d!2084260 res!2725270) b!6650719))

(declare-fun m!7416922 () Bool)

(assert (=> d!2084260 m!7416922))

(assert (=> d!2084260 m!7416922))

(declare-fun m!7416926 () Bool)

(assert (=> d!2084260 m!7416926))

(declare-fun m!7416928 () Bool)

(assert (=> d!2084260 m!7416928))

(declare-fun m!7416932 () Bool)

(assert (=> d!2084260 m!7416932))

(declare-fun m!7416934 () Bool)

(assert (=> b!6650719 m!7416934))

(assert (=> bm!587294 d!2084260))

(declare-fun bs!1712228 () Bool)

(declare-fun b!6650723 () Bool)

(assert (= bs!1712228 (and b!6650723 d!2084160)))

(declare-fun lambda!372405 () Int)

(assert (=> bs!1712228 (= (and (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (reg!16841 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292)))))) (Star!16512 (reg!16841 (regOne!33536 r!7292))))) (= lambda!372405 lambda!372369))))

(declare-fun bs!1712229 () Bool)

(assert (= bs!1712229 (and b!6650723 b!6650154)))

(assert (=> bs!1712229 (= (and (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (reg!16841 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (reg!16841 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)))) (= (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292)))))) (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)))) (= lambda!372405 lambda!372351))))

(declare-fun bs!1712230 () Bool)

(assert (= bs!1712230 (and b!6650723 b!6649552)))

(assert (=> bs!1712230 (not (= lambda!372405 lambda!372192))))

(declare-fun bs!1712231 () Bool)

(assert (= bs!1712231 (and b!6650723 b!6649540)))

(assert (=> bs!1712231 (not (= lambda!372405 lambda!372184))))

(declare-fun bs!1712232 () Bool)

(assert (= bs!1712232 (and b!6650723 b!6649586)))

(assert (=> bs!1712232 (= (and (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) Nil!65711) (= (reg!16841 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292)))))) lt!2423835)) (= lambda!372405 lambda!372209))))

(declare-fun bs!1712233 () Bool)

(assert (= bs!1712233 (and b!6650723 b!6649562)))

(assert (=> bs!1712233 (not (= lambda!372405 lambda!372195))))

(declare-fun bs!1712234 () Bool)

(assert (= bs!1712234 (and b!6650723 b!6649595)))

(assert (=> bs!1712234 (not (= lambda!372405 lambda!372203))))

(assert (=> bs!1712230 (not (= lambda!372405 lambda!372193))))

(assert (=> bs!1712228 (not (= lambda!372405 lambda!372368))))

(assert (=> bs!1712234 (= (and (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) (_1!36794 lt!2423861)) (= (reg!16841 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292)))))) lt!2423835)) (= lambda!372405 lambda!372206))))

(declare-fun bs!1712235 () Bool)

(assert (= bs!1712235 (and b!6650723 b!6649576)))

(assert (=> bs!1712235 (not (= lambda!372405 lambda!372196))))

(declare-fun bs!1712236 () Bool)

(assert (= bs!1712236 (and b!6650723 b!6650321)))

(assert (=> bs!1712236 (= (and (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) s!2326) (= (reg!16841 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (reg!16841 r!7292)) (= (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292)))))) r!7292)) (= lambda!372405 lambda!372362))))

(assert (=> bs!1712232 (not (= lambda!372405 lambda!372207))))

(declare-fun bs!1712237 () Bool)

(assert (= bs!1712237 (and b!6650723 b!6650318)))

(assert (=> bs!1712237 (not (= lambda!372405 lambda!372363))))

(declare-fun bs!1712238 () Bool)

(assert (= bs!1712238 (and b!6650723 b!6649550)))

(assert (=> bs!1712238 (not (= lambda!372405 lambda!372186))))

(assert (=> bs!1712231 (not (= lambda!372405 lambda!372183))))

(assert (=> bs!1712238 (not (= lambda!372405 lambda!372188))))

(assert (=> bs!1712234 (not (= lambda!372405 lambda!372204))))

(declare-fun bs!1712239 () Bool)

(assert (= bs!1712239 (and b!6650723 d!2084192)))

(assert (=> bs!1712239 (not (= lambda!372405 lambda!372382))))

(declare-fun bs!1712240 () Bool)

(assert (= bs!1712240 (and b!6650723 d!2084224)))

(assert (=> bs!1712240 (not (= lambda!372405 lambda!372397))))

(assert (=> bs!1712239 (not (= lambda!372405 lambda!372383))))

(assert (=> bs!1712235 (not (= lambda!372405 lambda!372198))))

(assert (=> bs!1712238 (not (= lambda!372405 lambda!372189))))

(assert (=> bs!1712233 (not (= lambda!372405 lambda!372194))))

(declare-fun bs!1712241 () Bool)

(assert (= bs!1712241 (and b!6650723 b!6650376)))

(assert (=> bs!1712241 (not (= lambda!372405 lambda!372371))))

(declare-fun bs!1712242 () Bool)

(assert (= bs!1712242 (and b!6650723 d!2084188)))

(assert (=> bs!1712242 (not (= lambda!372405 lambda!372377))))

(assert (=> bs!1712232 (not (= lambda!372405 lambda!372208))))

(assert (=> bs!1712230 (not (= lambda!372405 lambda!372191))))

(assert (=> bs!1712230 (not (= lambda!372405 lambda!372190))))

(assert (=> bs!1712234 (not (= lambda!372405 lambda!372202))))

(declare-fun bs!1712243 () Bool)

(assert (= bs!1712243 (and b!6650723 b!6650151)))

(assert (=> bs!1712243 (not (= lambda!372405 lambda!372352))))

(declare-fun bs!1712244 () Bool)

(assert (= bs!1712244 (and b!6650723 b!6650379)))

(assert (=> bs!1712244 (= (and (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) s!2326) (= (reg!16841 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (reg!16841 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292)))))))) (= (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292)))))) (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292)))))))) (= lambda!372405 lambda!372370))))

(assert (=> bs!1712235 (= (and (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) (_1!36794 lt!2423817)) (= (reg!16841 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292)))))) lt!2423835)) (= lambda!372405 lambda!372197))))

(assert (=> bs!1712238 (not (= lambda!372405 lambda!372187))))

(assert (=> bs!1712234 (not (= lambda!372405 lambda!372205))))

(assert (=> b!6650723 true))

(assert (=> b!6650723 true))

(declare-fun bs!1712245 () Bool)

(declare-fun b!6650720 () Bool)

(assert (= bs!1712245 (and b!6650720 d!2084160)))

(declare-fun lambda!372406 () Int)

(assert (=> bs!1712245 (not (= lambda!372406 lambda!372369))))

(declare-fun bs!1712246 () Bool)

(assert (= bs!1712246 (and b!6650720 b!6650154)))

(assert (=> bs!1712246 (not (= lambda!372406 lambda!372351))))

(declare-fun bs!1712247 () Bool)

(assert (= bs!1712247 (and b!6650720 b!6649552)))

(assert (=> bs!1712247 (not (= lambda!372406 lambda!372192))))

(declare-fun bs!1712248 () Bool)

(assert (= bs!1712248 (and b!6650720 b!6649540)))

(assert (=> bs!1712248 (= (and (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) s!2326) (= (regOne!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (regOne!33536 r!7292)) (= (regTwo!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (regTwo!33536 r!7292))) (= lambda!372406 lambda!372184))))

(declare-fun bs!1712249 () Bool)

(assert (= bs!1712249 (and b!6650720 b!6649586)))

(assert (=> bs!1712249 (not (= lambda!372406 lambda!372209))))

(declare-fun bs!1712250 () Bool)

(assert (= bs!1712250 (and b!6650720 b!6649562)))

(assert (=> bs!1712250 (= (and (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) s!2326) (= (regOne!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) lt!2423835) (= (regTwo!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (regTwo!33536 r!7292))) (= lambda!372406 lambda!372195))))

(declare-fun bs!1712251 () Bool)

(assert (= bs!1712251 (and b!6650720 b!6649595)))

(assert (=> bs!1712251 (= (and (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) s!2326) (= (regOne!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) lt!2423842) (= (regTwo!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (regTwo!33536 r!7292))) (= lambda!372406 lambda!372203))))

(assert (=> bs!1712247 (= (and (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) s!2326) (= (regOne!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) lt!2423798)) (= lambda!372406 lambda!372193))))

(assert (=> bs!1712251 (not (= lambda!372406 lambda!372206))))

(declare-fun bs!1712252 () Bool)

(assert (= bs!1712252 (and b!6650720 b!6649576)))

(assert (=> bs!1712252 (not (= lambda!372406 lambda!372196))))

(declare-fun bs!1712253 () Bool)

(assert (= bs!1712253 (and b!6650720 b!6650321)))

(assert (=> bs!1712253 (not (= lambda!372406 lambda!372362))))

(assert (=> bs!1712249 (not (= lambda!372406 lambda!372207))))

(declare-fun bs!1712254 () Bool)

(assert (= bs!1712254 (and b!6650720 b!6650318)))

(assert (=> bs!1712254 (= (and (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) s!2326) (= (regOne!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (regOne!33536 r!7292)) (= (regTwo!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (regTwo!33536 r!7292))) (= lambda!372406 lambda!372363))))

(declare-fun bs!1712255 () Bool)

(assert (= bs!1712255 (and b!6650720 b!6649550)))

(assert (=> bs!1712255 (not (= lambda!372406 lambda!372186))))

(assert (=> bs!1712248 (not (= lambda!372406 lambda!372183))))

(assert (=> bs!1712255 (not (= lambda!372406 lambda!372188))))

(assert (=> bs!1712251 (not (= lambda!372406 lambda!372204))))

(declare-fun bs!1712256 () Bool)

(assert (= bs!1712256 (and b!6650720 d!2084192)))

(assert (=> bs!1712256 (not (= lambda!372406 lambda!372382))))

(declare-fun bs!1712257 () Bool)

(assert (= bs!1712257 (and b!6650720 d!2084224)))

(assert (=> bs!1712257 (not (= lambda!372406 lambda!372397))))

(assert (=> bs!1712256 (= (and (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)) (= (regOne!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292))))))) (= (regTwo!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))))) (= lambda!372406 lambda!372383))))

(assert (=> bs!1712252 (= (and (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) (_1!36794 lt!2423817)) (= (regOne!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) lt!2423835)) (= lambda!372406 lambda!372198))))

(assert (=> bs!1712255 (= (and (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) s!2326) (= (regOne!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) lt!2423829)) (= lambda!372406 lambda!372189))))

(assert (=> bs!1712250 (not (= lambda!372406 lambda!372194))))

(declare-fun bs!1712258 () Bool)

(assert (= bs!1712258 (and b!6650720 b!6650376)))

(assert (=> bs!1712258 (= (and (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) s!2326) (= (regOne!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (regOne!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292)))))))) (= (regTwo!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (regTwo!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))))) (= lambda!372406 lambda!372371))))

(declare-fun bs!1712259 () Bool)

(assert (= bs!1712259 (and b!6650720 d!2084188)))

(assert (=> bs!1712259 (not (= lambda!372406 lambda!372377))))

(assert (=> bs!1712249 (= (and (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) Nil!65711) (= (regOne!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) lt!2423835)) (= lambda!372406 lambda!372208))))

(assert (=> bs!1712247 (= (and (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) s!2326) (= (regOne!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) lt!2423938)) (= lambda!372406 lambda!372191))))

(assert (=> bs!1712247 (not (= lambda!372406 lambda!372190))))

(assert (=> bs!1712251 (not (= lambda!372406 lambda!372202))))

(declare-fun bs!1712260 () Bool)

(assert (= bs!1712260 (and b!6650720 b!6650151)))

(assert (=> bs!1712260 (= (and (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (regOne!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (regOne!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)))) (= (regTwo!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (regTwo!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))))) (= lambda!372406 lambda!372352))))

(declare-fun bs!1712261 () Bool)

(assert (= bs!1712261 (and b!6650720 b!6650379)))

(assert (=> bs!1712261 (not (= lambda!372406 lambda!372370))))

(assert (=> bs!1712245 (not (= lambda!372406 lambda!372368))))

(declare-fun bs!1712262 () Bool)

(assert (= bs!1712262 (and b!6650720 b!6650723)))

(assert (=> bs!1712262 (not (= lambda!372406 lambda!372405))))

(assert (=> bs!1712252 (not (= lambda!372406 lambda!372197))))

(assert (=> bs!1712255 (= (and (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) s!2326) (= (regOne!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) lt!2423854)) (= lambda!372406 lambda!372187))))

(assert (=> bs!1712251 (= (and (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) (_1!36794 lt!2423861)) (= (regOne!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) lt!2423835)) (= lambda!372406 lambda!372205))))

(assert (=> b!6650720 true))

(assert (=> b!6650720 true))

(declare-fun e!4021418 () Bool)

(declare-fun call!588037 () Bool)

(assert (=> b!6650720 (= e!4021418 call!588037)))

(declare-fun b!6650721 () Bool)

(declare-fun e!4021419 () Bool)

(declare-fun e!4021417 () Bool)

(assert (=> b!6650721 (= e!4021419 e!4021417)))

(declare-fun res!2725273 () Bool)

(assert (=> b!6650721 (= res!2725273 (not (is-EmptyLang!16512 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292)))))))))))

(assert (=> b!6650721 (=> (not res!2725273) (not e!4021417))))

(declare-fun b!6650722 () Bool)

(declare-fun e!4021421 () Bool)

(assert (=> b!6650722 (= e!4021421 (matchRSpec!3613 (regTwo!33537 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326))))))

(declare-fun e!4021420 () Bool)

(assert (=> b!6650723 (= e!4021420 call!588037)))

(declare-fun c!1227582 () Bool)

(declare-fun d!2084264 () Bool)

(assert (=> d!2084264 (= c!1227582 (is-EmptyExpr!16512 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))))))

(assert (=> d!2084264 (= (matchRSpec!3613 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292)))))) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326))) e!4021419)))

(declare-fun b!6650724 () Bool)

(declare-fun c!1227583 () Bool)

(assert (=> b!6650724 (= c!1227583 (is-ElementMatch!16512 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))))))

(declare-fun e!4021416 () Bool)

(assert (=> b!6650724 (= e!4021417 e!4021416)))

(declare-fun b!6650725 () Bool)

(declare-fun c!1227580 () Bool)

(assert (=> b!6650725 (= c!1227580 (is-Union!16512 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))))))

(declare-fun e!4021422 () Bool)

(assert (=> b!6650725 (= e!4021416 e!4021422)))

(declare-fun b!6650726 () Bool)

(assert (=> b!6650726 (= e!4021416 (= (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326)) (Cons!65711 (c!1227274 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) Nil!65711)))))

(declare-fun bm!588032 () Bool)

(declare-fun call!588038 () Bool)

(assert (=> bm!588032 (= call!588038 (isEmpty!38022 (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326))))))

(declare-fun b!6650727 () Bool)

(assert (=> b!6650727 (= e!4021422 e!4021418)))

(declare-fun c!1227581 () Bool)

(assert (=> b!6650727 (= c!1227581 (is-Star!16512 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))))))

(declare-fun bm!588033 () Bool)

(assert (=> bm!588033 (= call!588037 (Exists!3582 (ite c!1227581 lambda!372405 lambda!372406)))))

(declare-fun b!6650728 () Bool)

(assert (=> b!6650728 (= e!4021422 e!4021421)))

(declare-fun res!2725272 () Bool)

(assert (=> b!6650728 (= res!2725272 (matchRSpec!3613 (regOne!33537 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326))))))

(assert (=> b!6650728 (=> res!2725272 e!4021421)))

(declare-fun b!6650729 () Bool)

(assert (=> b!6650729 (= e!4021419 call!588038)))

(declare-fun b!6650730 () Bool)

(declare-fun res!2725271 () Bool)

(assert (=> b!6650730 (=> res!2725271 e!4021420)))

(assert (=> b!6650730 (= res!2725271 call!588038)))

(assert (=> b!6650730 (= e!4021418 e!4021420)))

(assert (= (and d!2084264 c!1227582) b!6650729))

(assert (= (and d!2084264 (not c!1227582)) b!6650721))

(assert (= (and b!6650721 res!2725273) b!6650724))

(assert (= (and b!6650724 c!1227583) b!6650726))

(assert (= (and b!6650724 (not c!1227583)) b!6650725))

(assert (= (and b!6650725 c!1227580) b!6650728))

(assert (= (and b!6650725 (not c!1227580)) b!6650727))

(assert (= (and b!6650728 (not res!2725272)) b!6650722))

(assert (= (and b!6650727 c!1227581) b!6650730))

(assert (= (and b!6650727 (not c!1227581)) b!6650720))

(assert (= (and b!6650730 (not res!2725271)) b!6650723))

(assert (= (or b!6650723 b!6650720) bm!588033))

(assert (= (or b!6650729 b!6650730) bm!588032))

(declare-fun m!7416956 () Bool)

(assert (=> b!6650722 m!7416956))

(declare-fun m!7416958 () Bool)

(assert (=> bm!588032 m!7416958))

(declare-fun m!7416960 () Bool)

(assert (=> bm!588033 m!7416960))

(declare-fun m!7416962 () Bool)

(assert (=> b!6650728 m!7416962))

(assert (=> bm!587104 d!2084264))

(declare-fun bs!1712264 () Bool)

(declare-fun d!2084270 () Bool)

(assert (= bs!1712264 (and d!2084270 d!2084160)))

(declare-fun lambda!372407 () Int)

(assert (=> bs!1712264 (not (= lambda!372407 lambda!372369))))

(declare-fun bs!1712265 () Bool)

(assert (= bs!1712265 (and d!2084270 b!6650154)))

(assert (=> bs!1712265 (not (= lambda!372407 lambda!372351))))

(declare-fun bs!1712266 () Bool)

(assert (= bs!1712266 (and d!2084270 b!6649552)))

(assert (=> bs!1712266 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) s!2326) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (regTwo!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) lt!2423798)) (= lambda!372407 lambda!372192))))

(declare-fun bs!1712267 () Bool)

(assert (= bs!1712267 (and d!2084270 b!6649540)))

(assert (=> bs!1712267 (not (= lambda!372407 lambda!372184))))

(declare-fun bs!1712268 () Bool)

(assert (= bs!1712268 (and d!2084270 b!6650720)))

(assert (=> bs!1712268 (not (= lambda!372407 lambda!372406))))

(declare-fun bs!1712269 () Bool)

(assert (= bs!1712269 (and d!2084270 b!6649586)))

(assert (=> bs!1712269 (not (= lambda!372407 lambda!372209))))

(declare-fun bs!1712270 () Bool)

(assert (= bs!1712270 (and d!2084270 b!6649562)))

(assert (=> bs!1712270 (not (= lambda!372407 lambda!372195))))

(declare-fun bs!1712271 () Bool)

(assert (= bs!1712271 (and d!2084270 b!6649595)))

(assert (=> bs!1712271 (not (= lambda!372407 lambda!372203))))

(assert (=> bs!1712266 (not (= lambda!372407 lambda!372193))))

(assert (=> bs!1712271 (not (= lambda!372407 lambda!372206))))

(declare-fun bs!1712272 () Bool)

(assert (= bs!1712272 (and d!2084270 b!6649576)))

(assert (=> bs!1712272 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) (_1!36794 lt!2423817)) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) lt!2423835)) (= lambda!372407 lambda!372196))))

(declare-fun bs!1712273 () Bool)

(assert (= bs!1712273 (and d!2084270 b!6650321)))

(assert (=> bs!1712273 (not (= lambda!372407 lambda!372362))))

(assert (=> bs!1712269 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) Nil!65711) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) lt!2423835)) (= lambda!372407 lambda!372207))))

(declare-fun bs!1712274 () Bool)

(assert (= bs!1712274 (and d!2084270 b!6650318)))

(assert (=> bs!1712274 (not (= lambda!372407 lambda!372363))))

(declare-fun bs!1712275 () Bool)

(assert (= bs!1712275 (and d!2084270 b!6649550)))

(assert (=> bs!1712275 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) s!2326) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (regOne!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) lt!2423854)) (= lambda!372407 lambda!372186))))

(assert (=> bs!1712267 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) s!2326) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (regOne!33536 r!7292)) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) (regTwo!33536 r!7292))) (= lambda!372407 lambda!372183))))

(assert (=> bs!1712275 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) s!2326) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (regTwo!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) lt!2423829)) (= lambda!372407 lambda!372188))))

(assert (=> bs!1712271 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) (_1!36794 lt!2423861)) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) lt!2423835)) (= lambda!372407 lambda!372204))))

(declare-fun bs!1712276 () Bool)

(assert (= bs!1712276 (and d!2084270 d!2084192)))

(assert (=> bs!1712276 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292))))))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))))) (= lambda!372407 lambda!372382))))

(declare-fun bs!1712277 () Bool)

(assert (= bs!1712277 (and d!2084270 d!2084224)))

(assert (=> bs!1712277 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) s!2326))) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) lt!2423842))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (regTwo!33536 r!7292)))))) (= lambda!372407 lambda!372397))))

(assert (=> bs!1712276 (not (= lambda!372407 lambda!372383))))

(assert (=> bs!1712272 (not (= lambda!372407 lambda!372198))))

(assert (=> bs!1712275 (not (= lambda!372407 lambda!372189))))

(assert (=> bs!1712270 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) s!2326) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) lt!2423835) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) (regTwo!33536 r!7292))) (= lambda!372407 lambda!372194))))

(declare-fun bs!1712278 () Bool)

(assert (= bs!1712278 (and d!2084270 b!6650376)))

(assert (=> bs!1712278 (not (= lambda!372407 lambda!372371))))

(declare-fun bs!1712279 () Bool)

(assert (= bs!1712279 (and d!2084270 d!2084188)))

(assert (=> bs!1712279 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) (ite (or c!1227273 c!1227262 c!1227272) s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (reg!16841 (regOne!33536 r!7292))))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (ite c!1227272 (regTwo!33536 r!7292) lt!2423835))))) (= lambda!372407 lambda!372377))))

(assert (=> bs!1712269 (not (= lambda!372407 lambda!372208))))

(assert (=> bs!1712266 (not (= lambda!372407 lambda!372191))))

(assert (=> bs!1712266 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) s!2326) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (regOne!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) lt!2423938)) (= lambda!372407 lambda!372190))))

(assert (=> bs!1712271 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) s!2326) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) lt!2423842) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) (regTwo!33536 r!7292))) (= lambda!372407 lambda!372202))))

(declare-fun bs!1712280 () Bool)

(assert (= bs!1712280 (and d!2084270 b!6650151)))

(assert (=> bs!1712280 (not (= lambda!372407 lambda!372352))))

(declare-fun bs!1712281 () Bool)

(assert (= bs!1712281 (and d!2084270 b!6650379)))

(assert (=> bs!1712281 (not (= lambda!372407 lambda!372370))))

(assert (=> bs!1712264 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) (Star!16512 (reg!16841 (regOne!33536 r!7292))))) (= lambda!372407 lambda!372368))))

(declare-fun bs!1712282 () Bool)

(assert (= bs!1712282 (and d!2084270 b!6650723)))

(assert (=> bs!1712282 (not (= lambda!372407 lambda!372405))))

(assert (=> bs!1712272 (not (= lambda!372407 lambda!372197))))

(assert (=> bs!1712275 (not (= lambda!372407 lambda!372187))))

(assert (=> bs!1712271 (not (= lambda!372407 lambda!372205))))

(assert (=> d!2084270 true))

(assert (=> d!2084270 true))

(assert (=> d!2084270 true))

(declare-fun lambda!372408 () Int)

(assert (=> bs!1712264 (not (= lambda!372408 lambda!372369))))

(assert (=> bs!1712265 (not (= lambda!372408 lambda!372351))))

(assert (=> bs!1712266 (not (= lambda!372408 lambda!372192))))

(assert (=> bs!1712267 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) s!2326) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (regOne!33536 r!7292)) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) (regTwo!33536 r!7292))) (= lambda!372408 lambda!372184))))

(assert (=> bs!1712268 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326))) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (regOne!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292)))))))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) (regTwo!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))))) (= lambda!372408 lambda!372406))))

(assert (=> bs!1712269 (not (= lambda!372408 lambda!372209))))

(assert (=> bs!1712270 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) s!2326) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) lt!2423835) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) (regTwo!33536 r!7292))) (= lambda!372408 lambda!372195))))

(assert (=> bs!1712271 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) s!2326) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) lt!2423842) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) (regTwo!33536 r!7292))) (= lambda!372408 lambda!372203))))

(assert (=> bs!1712266 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) s!2326) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (regTwo!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) lt!2423798)) (= lambda!372408 lambda!372193))))

(assert (=> bs!1712271 (not (= lambda!372408 lambda!372206))))

(assert (=> bs!1712272 (not (= lambda!372408 lambda!372196))))

(assert (=> bs!1712273 (not (= lambda!372408 lambda!372362))))

(assert (=> bs!1712269 (not (= lambda!372408 lambda!372207))))

(assert (=> bs!1712274 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) s!2326) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (regOne!33536 r!7292)) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) (regTwo!33536 r!7292))) (= lambda!372408 lambda!372363))))

(assert (=> bs!1712275 (not (= lambda!372408 lambda!372186))))

(assert (=> bs!1712267 (not (= lambda!372408 lambda!372183))))

(assert (=> bs!1712275 (not (= lambda!372408 lambda!372188))))

(assert (=> bs!1712271 (not (= lambda!372408 lambda!372204))))

(assert (=> bs!1712276 (not (= lambda!372408 lambda!372382))))

(assert (=> bs!1712277 (not (= lambda!372408 lambda!372397))))

(assert (=> bs!1712276 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292))))))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))))) (= lambda!372408 lambda!372383))))

(declare-fun bs!1712283 () Bool)

(assert (= bs!1712283 d!2084270))

(assert (=> bs!1712283 (not (= lambda!372408 lambda!372407))))

(assert (=> bs!1712272 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) (_1!36794 lt!2423817)) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) lt!2423835)) (= lambda!372408 lambda!372198))))

(assert (=> bs!1712275 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) s!2326) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (regTwo!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) lt!2423829)) (= lambda!372408 lambda!372189))))

(assert (=> bs!1712270 (not (= lambda!372408 lambda!372194))))

(assert (=> bs!1712278 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) s!2326) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (regOne!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292)))))))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) (regTwo!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))))) (= lambda!372408 lambda!372371))))

(assert (=> bs!1712279 (not (= lambda!372408 lambda!372377))))

(assert (=> bs!1712269 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) Nil!65711) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) lt!2423835)) (= lambda!372408 lambda!372208))))

(assert (=> bs!1712266 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) s!2326) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (regOne!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) lt!2423938)) (= lambda!372408 lambda!372191))))

(assert (=> bs!1712266 (not (= lambda!372408 lambda!372190))))

(assert (=> bs!1712271 (not (= lambda!372408 lambda!372202))))

(assert (=> bs!1712280 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (regOne!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) (regTwo!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))))) (= lambda!372408 lambda!372352))))

(assert (=> bs!1712281 (not (= lambda!372408 lambda!372370))))

(assert (=> bs!1712264 (not (= lambda!372408 lambda!372368))))

(assert (=> bs!1712282 (not (= lambda!372408 lambda!372405))))

(assert (=> bs!1712272 (not (= lambda!372408 lambda!372197))))

(assert (=> bs!1712275 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) s!2326) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (regOne!33536 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) lt!2423854)) (= lambda!372408 lambda!372187))))

(assert (=> bs!1712271 (= (and (= (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861))) (_1!36794 lt!2423861)) (= (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (reg!16841 (regOne!33536 r!7292))) (= (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) lt!2423835)) (= lambda!372408 lambda!372205))))

(assert (=> d!2084270 true))

(assert (=> d!2084270 true))

(assert (=> d!2084270 true))

(assert (=> d!2084270 (= (Exists!3582 lambda!372407) (Exists!3582 lambda!372408))))

(declare-fun lt!2424710 () Unit!159475)

(assert (=> d!2084270 (= lt!2424710 (choose!49732 (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861)))))))

(assert (=> d!2084270 (validRegex!8248 (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))))))

(assert (=> d!2084270 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2119 (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292)))) (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)) (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861)))) lt!2424710)))

(declare-fun m!7416966 () Bool)

(assert (=> bs!1712283 m!7416966))

(declare-fun m!7416968 () Bool)

(assert (=> bs!1712283 m!7416968))

(declare-fun m!7416970 () Bool)

(assert (=> bs!1712283 m!7416970))

(declare-fun m!7416972 () Bool)

(assert (=> bs!1712283 m!7416972))

(assert (=> bm!587199 d!2084270))

(declare-fun d!2084276 () Bool)

(assert (=> d!2084276 (not (matchZipper!2524 lt!2423772 (t!379504 s!2326)))))

(declare-fun lt!2424713 () Unit!159475)

(declare-fun choose!49739 ((Set Context!11792) List!65835) Unit!159475)

(assert (=> d!2084276 (= lt!2424713 (choose!49739 lt!2423772 (t!379504 s!2326)))))

(assert (=> d!2084276 (= lt!2423772 (as set.empty (Set Context!11792)))))

(assert (=> d!2084276 (= (lemmaEmptyZipperMatchesNothing!105 lt!2423772 (t!379504 s!2326)) lt!2424713)))

(declare-fun bs!1712284 () Bool)

(assert (= bs!1712284 d!2084276))

(assert (=> bs!1712284 m!7415656))

(declare-fun m!7416974 () Bool)

(assert (=> bs!1712284 m!7416974))

(assert (=> bm!587215 d!2084276))

(assert (=> b!6649554 d!2084054))

(declare-fun d!2084278 () Bool)

(assert (=> d!2084278 (= (flatMap!2017 z!1189 lambda!372185) (choose!49721 z!1189 lambda!372185))))

(declare-fun bs!1712285 () Bool)

(assert (= bs!1712285 d!2084278))

(declare-fun m!7416976 () Bool)

(assert (=> bs!1712285 m!7416976))

(assert (=> b!6649554 d!2084278))

(declare-fun b!6650774 () Bool)

(declare-fun e!4021452 () (Set Context!11792))

(assert (=> b!6650774 (= e!4021452 (set.insert lt!2423839 (as set.empty (Set Context!11792))))))

(declare-fun b!6650777 () Bool)

(declare-fun e!4021448 () (Set Context!11792))

(declare-fun call!588043 () (Set Context!11792))

(declare-fun call!588042 () (Set Context!11792))

(assert (=> b!6650777 (= e!4021448 (set.union call!588043 call!588042))))

(declare-fun b!6650778 () Bool)

(declare-fun c!1227597 () Bool)

(declare-fun e!4021455 () Bool)

(assert (=> b!6650778 (= c!1227597 e!4021455)))

(declare-fun res!2725297 () Bool)

(assert (=> b!6650778 (=> (not res!2725297) (not e!4021455))))

(assert (=> b!6650778 (= res!2725297 (is-Concat!25357 (h!72160 (exprs!6396 (h!72161 zl!343)))))))

(declare-fun e!4021451 () (Set Context!11792))

(assert (=> b!6650778 (= e!4021448 e!4021451)))

(declare-fun b!6650779 () Bool)

(assert (=> b!6650779 (= e!4021455 (nullable!6505 (regOne!33536 (h!72160 (exprs!6396 (h!72161 zl!343))))))))

(declare-fun bm!588034 () Bool)

(declare-fun call!588044 () (Set Context!11792))

(assert (=> bm!588034 (= call!588044 call!588042)))

(declare-fun b!6650780 () Bool)

(declare-fun e!4021449 () (Set Context!11792))

(declare-fun call!588041 () (Set Context!11792))

(assert (=> b!6650780 (= e!4021449 call!588041)))

(declare-fun d!2084280 () Bool)

(declare-fun c!1227599 () Bool)

(assert (=> d!2084280 (= c!1227599 (and (is-ElementMatch!16512 (h!72160 (exprs!6396 (h!72161 zl!343)))) (= (c!1227274 (h!72160 (exprs!6396 (h!72161 zl!343)))) (h!72159 s!2326))))))

(assert (=> d!2084280 (= (derivationStepZipperDown!1760 (h!72160 (exprs!6396 (h!72161 zl!343))) lt!2423839 (h!72159 s!2326)) e!4021452)))

(declare-fun b!6650781 () Bool)

(assert (=> b!6650781 (= e!4021451 e!4021449)))

(declare-fun c!1227595 () Bool)

(assert (=> b!6650781 (= c!1227595 (is-Concat!25357 (h!72160 (exprs!6396 (h!72161 zl!343)))))))

(declare-fun call!588039 () List!65836)

(declare-fun bm!588035 () Bool)

(assert (=> bm!588035 (= call!588039 ($colon$colon!2349 (exprs!6396 lt!2423839) (ite (or c!1227597 c!1227595) (regTwo!33536 (h!72160 (exprs!6396 (h!72161 zl!343)))) (h!72160 (exprs!6396 (h!72161 zl!343))))))))

(declare-fun b!6650782 () Bool)

(assert (=> b!6650782 (= e!4021451 (set.union call!588043 call!588044))))

(declare-fun bm!588036 () Bool)

(declare-fun c!1227598 () Bool)

(assert (=> bm!588036 (= call!588043 (derivationStepZipperDown!1760 (ite c!1227598 (regOne!33537 (h!72160 (exprs!6396 (h!72161 zl!343)))) (regOne!33536 (h!72160 (exprs!6396 (h!72161 zl!343))))) (ite c!1227598 lt!2423839 (Context!11793 call!588039)) (h!72159 s!2326)))))

(declare-fun bm!588037 () Bool)

(declare-fun call!588040 () List!65836)

(assert (=> bm!588037 (= call!588042 (derivationStepZipperDown!1760 (ite c!1227598 (regTwo!33537 (h!72160 (exprs!6396 (h!72161 zl!343)))) (ite c!1227597 (regTwo!33536 (h!72160 (exprs!6396 (h!72161 zl!343)))) (ite c!1227595 (regOne!33536 (h!72160 (exprs!6396 (h!72161 zl!343)))) (reg!16841 (h!72160 (exprs!6396 (h!72161 zl!343))))))) (ite (or c!1227598 c!1227597) lt!2423839 (Context!11793 call!588040)) (h!72159 s!2326)))))

(declare-fun b!6650783 () Bool)

(declare-fun e!4021450 () (Set Context!11792))

(assert (=> b!6650783 (= e!4021450 call!588041)))

(declare-fun b!6650784 () Bool)

(declare-fun c!1227596 () Bool)

(assert (=> b!6650784 (= c!1227596 (is-Star!16512 (h!72160 (exprs!6396 (h!72161 zl!343)))))))

(assert (=> b!6650784 (= e!4021449 e!4021450)))

(declare-fun b!6650785 () Bool)

(assert (=> b!6650785 (= e!4021450 (as set.empty (Set Context!11792)))))

(declare-fun b!6650786 () Bool)

(assert (=> b!6650786 (= e!4021452 e!4021448)))

(assert (=> b!6650786 (= c!1227598 (is-Union!16512 (h!72160 (exprs!6396 (h!72161 zl!343)))))))

(declare-fun bm!588038 () Bool)

(assert (=> bm!588038 (= call!588040 call!588039)))

(declare-fun bm!588039 () Bool)

(assert (=> bm!588039 (= call!588041 call!588044)))

(assert (= (and d!2084280 c!1227599) b!6650774))

(assert (= (and d!2084280 (not c!1227599)) b!6650786))

(assert (= (and b!6650786 c!1227598) b!6650777))

(assert (= (and b!6650786 (not c!1227598)) b!6650778))

(assert (= (and b!6650778 res!2725297) b!6650779))

(assert (= (and b!6650778 c!1227597) b!6650782))

(assert (= (and b!6650778 (not c!1227597)) b!6650781))

(assert (= (and b!6650781 c!1227595) b!6650780))

(assert (= (and b!6650781 (not c!1227595)) b!6650784))

(assert (= (and b!6650784 c!1227596) b!6650783))

(assert (= (and b!6650784 (not c!1227596)) b!6650785))

(assert (= (or b!6650780 b!6650783) bm!588038))

(assert (= (or b!6650780 b!6650783) bm!588039))

(assert (= (or b!6650782 bm!588038) bm!588035))

(assert (= (or b!6650782 bm!588039) bm!588034))

(assert (= (or b!6650777 bm!588034) bm!588037))

(assert (= (or b!6650777 b!6650782) bm!588036))

(declare-fun m!7416978 () Bool)

(assert (=> bm!588035 m!7416978))

(assert (=> b!6650774 m!7415472))

(declare-fun m!7416980 () Bool)

(assert (=> bm!588037 m!7416980))

(declare-fun m!7416982 () Bool)

(assert (=> bm!588036 m!7416982))

(declare-fun m!7416984 () Bool)

(assert (=> b!6650779 m!7416984))

(assert (=> b!6649554 d!2084280))

(declare-fun d!2084282 () Bool)

(assert (=> d!2084282 (= (nullable!6505 (h!72160 (exprs!6396 (h!72161 zl!343)))) (nullableFct!2427 (h!72160 (exprs!6396 (h!72161 zl!343)))))))

(declare-fun bs!1712286 () Bool)

(assert (= bs!1712286 d!2084282))

(declare-fun m!7416986 () Bool)

(assert (=> bs!1712286 m!7416986))

(assert (=> b!6649554 d!2084282))

(declare-fun b!6650789 () Bool)

(declare-fun e!4021458 () (Set Context!11792))

(declare-fun e!4021456 () (Set Context!11792))

(assert (=> b!6650789 (= e!4021458 e!4021456)))

(declare-fun c!1227601 () Bool)

(assert (=> b!6650789 (= c!1227601 (is-Cons!65712 (exprs!6396 (h!72161 zl!343))))))

(declare-fun bm!588040 () Bool)

(declare-fun call!588045 () (Set Context!11792))

(assert (=> bm!588040 (= call!588045 (derivationStepZipperDown!1760 (h!72160 (exprs!6396 (h!72161 zl!343))) (Context!11793 (t!379505 (exprs!6396 (h!72161 zl!343)))) (h!72159 s!2326)))))

(declare-fun d!2084284 () Bool)

(declare-fun c!1227600 () Bool)

(declare-fun e!4021457 () Bool)

(assert (=> d!2084284 (= c!1227600 e!4021457)))

(declare-fun res!2725300 () Bool)

(assert (=> d!2084284 (=> (not res!2725300) (not e!4021457))))

(assert (=> d!2084284 (= res!2725300 (is-Cons!65712 (exprs!6396 (h!72161 zl!343))))))

(assert (=> d!2084284 (= (derivationStepZipperUp!1686 (h!72161 zl!343) (h!72159 s!2326)) e!4021458)))

(declare-fun b!6650790 () Bool)

(assert (=> b!6650790 (= e!4021456 (as set.empty (Set Context!11792)))))

(declare-fun b!6650791 () Bool)

(assert (=> b!6650791 (= e!4021457 (nullable!6505 (h!72160 (exprs!6396 (h!72161 zl!343)))))))

(declare-fun b!6650792 () Bool)

(assert (=> b!6650792 (= e!4021458 (set.union call!588045 (derivationStepZipperUp!1686 (Context!11793 (t!379505 (exprs!6396 (h!72161 zl!343)))) (h!72159 s!2326))))))

(declare-fun b!6650793 () Bool)

(assert (=> b!6650793 (= e!4021456 call!588045)))

(assert (= (and d!2084284 res!2725300) b!6650791))

(assert (= (and d!2084284 c!1227600) b!6650792))

(assert (= (and d!2084284 (not c!1227600)) b!6650789))

(assert (= (and b!6650789 c!1227601) b!6650793))

(assert (= (and b!6650789 (not c!1227601)) b!6650790))

(assert (= (or b!6650792 b!6650793) bm!588040))

(declare-fun m!7416988 () Bool)

(assert (=> bm!588040 m!7416988))

(assert (=> b!6650791 m!7415670))

(declare-fun m!7416990 () Bool)

(assert (=> b!6650792 m!7416990))

(assert (=> b!6649554 d!2084284))

(declare-fun bs!1712287 () Bool)

(declare-fun d!2084286 () Bool)

(assert (= bs!1712287 (and d!2084286 b!6649554)))

(declare-fun lambda!372415 () Int)

(assert (=> bs!1712287 (= lambda!372415 lambda!372185)))

(assert (=> d!2084286 true))

(assert (=> d!2084286 (= (derivationStepZipper!2478 lt!2423871 (h!72159 s!2326)) (flatMap!2017 lt!2423871 lambda!372415))))

(declare-fun bs!1712288 () Bool)

(assert (= bs!1712288 d!2084286))

(declare-fun m!7416992 () Bool)

(assert (=> bs!1712288 m!7416992))

(assert (=> b!6649554 d!2084286))

(declare-fun d!2084288 () Bool)

(assert (=> d!2084288 (= (flatMap!2017 z!1189 lambda!372185) (dynLambda!26183 lambda!372185 (h!72161 zl!343)))))

(declare-fun lt!2424714 () Unit!159475)

(assert (=> d!2084288 (= lt!2424714 (choose!49723 z!1189 (h!72161 zl!343) lambda!372185))))

(assert (=> d!2084288 (= z!1189 (set.insert (h!72161 zl!343) (as set.empty (Set Context!11792))))))

(assert (=> d!2084288 (= (lemmaFlatMapOnSingletonSet!1543 z!1189 (h!72161 zl!343) lambda!372185) lt!2424714)))

(declare-fun b_lambda!251145 () Bool)

(assert (=> (not b_lambda!251145) (not d!2084288)))

(declare-fun bs!1712289 () Bool)

(assert (= bs!1712289 d!2084288))

(assert (=> bs!1712289 m!7415674))

(declare-fun m!7416994 () Bool)

(assert (=> bs!1712289 m!7416994))

(declare-fun m!7416996 () Bool)

(assert (=> bs!1712289 m!7416996))

(declare-fun m!7416998 () Bool)

(assert (=> bs!1712289 m!7416998))

(assert (=> b!6649554 d!2084288))

(declare-fun d!2084290 () Bool)

(assert (=> d!2084290 (= (flatMap!2017 lt!2423871 lambda!372185) (dynLambda!26183 lambda!372185 lt!2423839))))

(declare-fun lt!2424715 () Unit!159475)

(assert (=> d!2084290 (= lt!2424715 (choose!49723 lt!2423871 lt!2423839 lambda!372185))))

(assert (=> d!2084290 (= lt!2423871 (set.insert lt!2423839 (as set.empty (Set Context!11792))))))

(assert (=> d!2084290 (= (lemmaFlatMapOnSingletonSet!1543 lt!2423871 lt!2423839 lambda!372185) lt!2424715)))

(declare-fun b_lambda!251147 () Bool)

(assert (=> (not b_lambda!251147) (not d!2084290)))

(declare-fun bs!1712290 () Bool)

(assert (= bs!1712290 d!2084290))

(assert (=> bs!1712290 m!7415672))

(declare-fun m!7417000 () Bool)

(assert (=> bs!1712290 m!7417000))

(declare-fun m!7417002 () Bool)

(assert (=> bs!1712290 m!7417002))

(assert (=> bs!1712290 m!7415472))

(assert (=> b!6649554 d!2084290))

(declare-fun d!2084292 () Bool)

(assert (=> d!2084292 (= (flatMap!2017 lt!2423871 lambda!372185) (choose!49721 lt!2423871 lambda!372185))))

(declare-fun bs!1712291 () Bool)

(assert (= bs!1712291 d!2084292))

(declare-fun m!7417004 () Bool)

(assert (=> bs!1712291 m!7417004))

(assert (=> b!6649554 d!2084292))

(declare-fun b!6650796 () Bool)

(declare-fun e!4021461 () (Set Context!11792))

(declare-fun e!4021459 () (Set Context!11792))

(assert (=> b!6650796 (= e!4021461 e!4021459)))

(declare-fun c!1227605 () Bool)

(assert (=> b!6650796 (= c!1227605 (is-Cons!65712 (exprs!6396 (Context!11793 (Cons!65712 (h!72160 (exprs!6396 (h!72161 zl!343))) (t!379505 (exprs!6396 (h!72161 zl!343))))))))))

(declare-fun bm!588045 () Bool)

(declare-fun call!588050 () (Set Context!11792))

(assert (=> bm!588045 (= call!588050 (derivationStepZipperDown!1760 (h!72160 (exprs!6396 (Context!11793 (Cons!65712 (h!72160 (exprs!6396 (h!72161 zl!343))) (t!379505 (exprs!6396 (h!72161 zl!343))))))) (Context!11793 (t!379505 (exprs!6396 (Context!11793 (Cons!65712 (h!72160 (exprs!6396 (h!72161 zl!343))) (t!379505 (exprs!6396 (h!72161 zl!343)))))))) (h!72159 s!2326)))))

(declare-fun d!2084294 () Bool)

(declare-fun c!1227604 () Bool)

(declare-fun e!4021460 () Bool)

(assert (=> d!2084294 (= c!1227604 e!4021460)))

(declare-fun res!2725301 () Bool)

(assert (=> d!2084294 (=> (not res!2725301) (not e!4021460))))

(assert (=> d!2084294 (= res!2725301 (is-Cons!65712 (exprs!6396 (Context!11793 (Cons!65712 (h!72160 (exprs!6396 (h!72161 zl!343))) (t!379505 (exprs!6396 (h!72161 zl!343))))))))))

(assert (=> d!2084294 (= (derivationStepZipperUp!1686 (Context!11793 (Cons!65712 (h!72160 (exprs!6396 (h!72161 zl!343))) (t!379505 (exprs!6396 (h!72161 zl!343))))) (h!72159 s!2326)) e!4021461)))

(declare-fun b!6650797 () Bool)

(assert (=> b!6650797 (= e!4021459 (as set.empty (Set Context!11792)))))

(declare-fun b!6650798 () Bool)

(assert (=> b!6650798 (= e!4021460 (nullable!6505 (h!72160 (exprs!6396 (Context!11793 (Cons!65712 (h!72160 (exprs!6396 (h!72161 zl!343))) (t!379505 (exprs!6396 (h!72161 zl!343)))))))))))

(declare-fun b!6650799 () Bool)

(assert (=> b!6650799 (= e!4021461 (set.union call!588050 (derivationStepZipperUp!1686 (Context!11793 (t!379505 (exprs!6396 (Context!11793 (Cons!65712 (h!72160 (exprs!6396 (h!72161 zl!343))) (t!379505 (exprs!6396 (h!72161 zl!343)))))))) (h!72159 s!2326))))))

(declare-fun b!6650800 () Bool)

(assert (=> b!6650800 (= e!4021459 call!588050)))

(assert (= (and d!2084294 res!2725301) b!6650798))

(assert (= (and d!2084294 c!1227604) b!6650799))

(assert (= (and d!2084294 (not c!1227604)) b!6650796))

(assert (= (and b!6650796 c!1227605) b!6650800))

(assert (= (and b!6650796 (not c!1227605)) b!6650797))

(assert (= (or b!6650799 b!6650800) bm!588045))

(declare-fun m!7417006 () Bool)

(assert (=> bm!588045 m!7417006))

(declare-fun m!7417008 () Bool)

(assert (=> b!6650798 m!7417008))

(declare-fun m!7417010 () Bool)

(assert (=> b!6650799 m!7417010))

(assert (=> b!6649554 d!2084294))

(declare-fun b!6650803 () Bool)

(declare-fun res!2725303 () Bool)

(declare-fun e!4021463 () Bool)

(assert (=> b!6650803 (=> (not res!2725303) (not e!4021463))))

(declare-fun lt!2424716 () List!65835)

(assert (=> b!6650803 (= res!2725303 (= (size!40568 lt!2424716) (+ (size!40568 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423743))) (size!40568 (ite c!1227272 lt!2423906 lt!2423799)))))))

(declare-fun e!4021462 () List!65835)

(declare-fun b!6650802 () Bool)

(assert (=> b!6650802 (= e!4021462 (Cons!65711 (h!72159 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423743))) (++!14666 (t!379504 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423743))) (ite c!1227272 lt!2423906 lt!2423799))))))

(declare-fun d!2084296 () Bool)

(assert (=> d!2084296 e!4021463))

(declare-fun res!2725302 () Bool)

(assert (=> d!2084296 (=> (not res!2725302) (not e!4021463))))

(assert (=> d!2084296 (= res!2725302 (= (content!12708 lt!2424716) (set.union (content!12708 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423743))) (content!12708 (ite c!1227272 lt!2423906 lt!2423799)))))))

(assert (=> d!2084296 (= lt!2424716 e!4021462)))

(declare-fun c!1227606 () Bool)

(assert (=> d!2084296 (= c!1227606 (is-Nil!65711 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423743))))))

(assert (=> d!2084296 (= (++!14666 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423743)) (ite c!1227272 lt!2423906 lt!2423799)) lt!2424716)))

(declare-fun b!6650801 () Bool)

(assert (=> b!6650801 (= e!4021462 (ite c!1227272 lt!2423906 lt!2423799))))

(declare-fun b!6650804 () Bool)

(assert (=> b!6650804 (= e!4021463 (or (not (= (ite c!1227272 lt!2423906 lt!2423799) Nil!65711)) (= lt!2424716 (ite c!1227272 (_1!36794 lt!2423746) (_1!36794 lt!2423743)))))))

(assert (= (and d!2084296 c!1227606) b!6650801))

(assert (= (and d!2084296 (not c!1227606)) b!6650802))

(assert (= (and d!2084296 res!2725302) b!6650803))

(assert (= (and b!6650803 res!2725303) b!6650804))

(declare-fun m!7417012 () Bool)

(assert (=> b!6650803 m!7417012))

(declare-fun m!7417014 () Bool)

(assert (=> b!6650803 m!7417014))

(declare-fun m!7417016 () Bool)

(assert (=> b!6650803 m!7417016))

(declare-fun m!7417018 () Bool)

(assert (=> b!6650802 m!7417018))

(declare-fun m!7417020 () Bool)

(assert (=> d!2084296 m!7417020))

(declare-fun m!7417022 () Bool)

(assert (=> d!2084296 m!7417022))

(declare-fun m!7417024 () Bool)

(assert (=> d!2084296 m!7417024))

(assert (=> bm!587116 d!2084296))

(declare-fun c!1227611 () Bool)

(declare-fun call!588058 () Bool)

(declare-fun c!1227612 () Bool)

(declare-fun bm!588052 () Bool)

(assert (=> bm!588052 (= call!588058 (validRegex!8248 (ite c!1227611 (reg!16841 r!7292) (ite c!1227612 (regTwo!33537 r!7292) (regTwo!33536 r!7292)))))))

(declare-fun d!2084298 () Bool)

(declare-fun res!2725314 () Bool)

(declare-fun e!4021478 () Bool)

(assert (=> d!2084298 (=> res!2725314 e!4021478)))

(assert (=> d!2084298 (= res!2725314 (is-ElementMatch!16512 r!7292))))

(assert (=> d!2084298 (= (validRegex!8248 r!7292) e!4021478)))

(declare-fun b!6650823 () Bool)

(declare-fun e!4021479 () Bool)

(declare-fun call!588057 () Bool)

(assert (=> b!6650823 (= e!4021479 call!588057)))

(declare-fun b!6650824 () Bool)

(declare-fun e!4021483 () Bool)

(assert (=> b!6650824 (= e!4021483 call!588057)))

(declare-fun b!6650825 () Bool)

(declare-fun e!4021484 () Bool)

(declare-fun e!4021481 () Bool)

(assert (=> b!6650825 (= e!4021484 e!4021481)))

(assert (=> b!6650825 (= c!1227612 (is-Union!16512 r!7292))))

(declare-fun bm!588053 () Bool)

(declare-fun call!588059 () Bool)

(assert (=> bm!588053 (= call!588059 (validRegex!8248 (ite c!1227612 (regOne!33537 r!7292) (regOne!33536 r!7292))))))

(declare-fun b!6650826 () Bool)

(assert (=> b!6650826 (= e!4021478 e!4021484)))

(assert (=> b!6650826 (= c!1227611 (is-Star!16512 r!7292))))

(declare-fun b!6650827 () Bool)

(declare-fun e!4021480 () Bool)

(assert (=> b!6650827 (= e!4021484 e!4021480)))

(declare-fun res!2725318 () Bool)

(assert (=> b!6650827 (= res!2725318 (not (nullable!6505 (reg!16841 r!7292))))))

(assert (=> b!6650827 (=> (not res!2725318) (not e!4021480))))

(declare-fun bm!588054 () Bool)

(assert (=> bm!588054 (= call!588057 call!588058)))

(declare-fun b!6650828 () Bool)

(declare-fun res!2725315 () Bool)

(declare-fun e!4021482 () Bool)

(assert (=> b!6650828 (=> res!2725315 e!4021482)))

(assert (=> b!6650828 (= res!2725315 (not (is-Concat!25357 r!7292)))))

(assert (=> b!6650828 (= e!4021481 e!4021482)))

(declare-fun b!6650829 () Bool)

(declare-fun res!2725317 () Bool)

(assert (=> b!6650829 (=> (not res!2725317) (not e!4021483))))

(assert (=> b!6650829 (= res!2725317 call!588059)))

(assert (=> b!6650829 (= e!4021481 e!4021483)))

(declare-fun b!6650830 () Bool)

(assert (=> b!6650830 (= e!4021482 e!4021479)))

(declare-fun res!2725316 () Bool)

(assert (=> b!6650830 (=> (not res!2725316) (not e!4021479))))

(assert (=> b!6650830 (= res!2725316 call!588059)))

(declare-fun b!6650831 () Bool)

(assert (=> b!6650831 (= e!4021480 call!588058)))

(assert (= (and d!2084298 (not res!2725314)) b!6650826))

(assert (= (and b!6650826 c!1227611) b!6650827))

(assert (= (and b!6650826 (not c!1227611)) b!6650825))

(assert (= (and b!6650827 res!2725318) b!6650831))

(assert (= (and b!6650825 c!1227612) b!6650829))

(assert (= (and b!6650825 (not c!1227612)) b!6650828))

(assert (= (and b!6650829 res!2725317) b!6650824))

(assert (= (and b!6650828 (not res!2725315)) b!6650830))

(assert (= (and b!6650830 res!2725316) b!6650823))

(assert (= (or b!6650824 b!6650823) bm!588054))

(assert (= (or b!6650829 b!6650830) bm!588053))

(assert (= (or b!6650831 bm!588054) bm!588052))

(declare-fun m!7417026 () Bool)

(assert (=> bm!588052 m!7417026))

(declare-fun m!7417028 () Bool)

(assert (=> bm!588053 m!7417028))

(declare-fun m!7417030 () Bool)

(assert (=> b!6650827 m!7417030))

(assert (=> start!648968 d!2084298))

(declare-fun bs!1712292 () Bool)

(declare-fun d!2084300 () Bool)

(assert (= bs!1712292 (and d!2084300 d!2084186)))

(declare-fun lambda!372416 () Int)

(assert (=> bs!1712292 (= lambda!372416 lambda!372374)))

(declare-fun bs!1712293 () Bool)

(assert (= bs!1712293 (and d!2084300 d!2084108)))

(assert (=> bs!1712293 (= lambda!372416 lambda!372358)))

(declare-fun bs!1712294 () Bool)

(assert (= bs!1712294 (and d!2084300 d!2084208)))

(assert (=> bs!1712294 (= lambda!372416 lambda!372384)))

(declare-fun bs!1712295 () Bool)

(assert (= bs!1712295 (and d!2084300 d!2084182)))

(assert (=> bs!1712295 (= lambda!372416 lambda!372373)))

(declare-fun bs!1712296 () Bool)

(assert (= bs!1712296 (and d!2084300 d!2084228)))

(assert (=> bs!1712296 (= lambda!372416 lambda!372400)))

(declare-fun bs!1712297 () Bool)

(assert (= bs!1712297 (and d!2084300 b!6649576)))

(assert (=> bs!1712297 (= lambda!372416 lambda!372199)))

(declare-fun bs!1712298 () Bool)

(assert (= bs!1712298 (and d!2084300 b!6649595)))

(assert (=> bs!1712298 (= lambda!372416 lambda!372201)))

(declare-fun bs!1712299 () Bool)

(assert (= bs!1712299 (and d!2084300 d!2084234)))

(assert (=> bs!1712299 (= lambda!372416 lambda!372403)))

(declare-fun bs!1712300 () Bool)

(assert (= bs!1712300 (and d!2084300 d!2084132)))

(assert (=> bs!1712300 (= lambda!372416 lambda!372361)))

(declare-fun bs!1712301 () Bool)

(assert (= bs!1712301 (and d!2084300 d!2084238)))

(assert (=> bs!1712301 (= lambda!372416 lambda!372404)))

(declare-fun bs!1712302 () Bool)

(assert (= bs!1712302 (and d!2084300 d!2084092)))

(assert (=> bs!1712302 (= lambda!372416 lambda!372355)))

(declare-fun bs!1712303 () Bool)

(assert (= bs!1712303 (and d!2084300 d!2084168)))

(assert (=> bs!1712303 (= lambda!372416 lambda!372372)))

(assert (=> d!2084300 (= (inv!84528 lt!2423839) (forall!15708 (exprs!6396 lt!2423839) lambda!372416))))

(declare-fun bs!1712305 () Bool)

(assert (= bs!1712305 d!2084300))

(declare-fun m!7417032 () Bool)

(assert (=> bs!1712305 m!7417032))

(assert (=> b!6649581 d!2084300))

(declare-fun d!2084302 () Bool)

(declare-fun c!1227617 () Bool)

(assert (=> d!2084302 (= c!1227617 (isEmpty!38022 (ite c!1227264 s!2326 (t!379504 s!2326))))))

(declare-fun e!4021492 () Bool)

(assert (=> d!2084302 (= (matchZipper!2524 (ite c!1227264 z!1189 (set.union lt!2423846 lt!2423870)) (ite c!1227264 s!2326 (t!379504 s!2326))) e!4021492)))

(declare-fun b!6650843 () Bool)

(assert (=> b!6650843 (= e!4021492 (nullableZipper!2253 (ite c!1227264 z!1189 (set.union lt!2423846 lt!2423870))))))

(declare-fun b!6650844 () Bool)

(assert (=> b!6650844 (= e!4021492 (matchZipper!2524 (derivationStepZipper!2478 (ite c!1227264 z!1189 (set.union lt!2423846 lt!2423870)) (head!13467 (ite c!1227264 s!2326 (t!379504 s!2326)))) (tail!12552 (ite c!1227264 s!2326 (t!379504 s!2326)))))))

(assert (= (and d!2084302 c!1227617) b!6650843))

(assert (= (and d!2084302 (not c!1227617)) b!6650844))

(declare-fun m!7417034 () Bool)

(assert (=> d!2084302 m!7417034))

(declare-fun m!7417036 () Bool)

(assert (=> b!6650843 m!7417036))

(declare-fun m!7417038 () Bool)

(assert (=> b!6650844 m!7417038))

(assert (=> b!6650844 m!7417038))

(declare-fun m!7417040 () Bool)

(assert (=> b!6650844 m!7417040))

(declare-fun m!7417042 () Bool)

(assert (=> b!6650844 m!7417042))

(assert (=> b!6650844 m!7417040))

(assert (=> b!6650844 m!7417042))

(declare-fun m!7417044 () Bool)

(assert (=> b!6650844 m!7417044))

(assert (=> bm!587253 d!2084302))

(declare-fun bs!1712309 () Bool)

(declare-fun d!2084304 () Bool)

(assert (= bs!1712309 (and d!2084304 b!6650154)))

(declare-fun lambda!372418 () Int)

(assert (=> bs!1712309 (not (= lambda!372418 lambda!372351))))

(declare-fun bs!1712310 () Bool)

(assert (= bs!1712310 (and d!2084304 b!6649552)))

(assert (=> bs!1712310 (= (and (= (regOne!33536 r!7292) (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423798)) (= lambda!372418 lambda!372192))))

(declare-fun bs!1712312 () Bool)

(assert (= bs!1712312 (and d!2084304 b!6649540)))

(assert (=> bs!1712312 (not (= lambda!372418 lambda!372184))))

(declare-fun bs!1712313 () Bool)

(assert (= bs!1712313 (and d!2084304 b!6650720)))

(assert (=> bs!1712313 (not (= lambda!372418 lambda!372406))))

(declare-fun bs!1712314 () Bool)

(assert (= bs!1712314 (and d!2084304 b!6649586)))

(assert (=> bs!1712314 (not (= lambda!372418 lambda!372209))))

(declare-fun bs!1712316 () Bool)

(assert (= bs!1712316 (and d!2084304 b!6649562)))

(assert (=> bs!1712316 (not (= lambda!372418 lambda!372195))))

(declare-fun bs!1712317 () Bool)

(assert (= bs!1712317 (and d!2084304 b!6649595)))

(assert (=> bs!1712317 (not (= lambda!372418 lambda!372203))))

(assert (=> bs!1712310 (not (= lambda!372418 lambda!372193))))

(assert (=> bs!1712317 (not (= lambda!372418 lambda!372206))))

(declare-fun bs!1712318 () Bool)

(assert (= bs!1712318 (and d!2084304 b!6649576)))

(assert (=> bs!1712318 (= (and (= s!2326 (_1!36794 lt!2423817)) (= (regOne!33536 r!7292) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423835)) (= lambda!372418 lambda!372196))))

(declare-fun bs!1712319 () Bool)

(assert (= bs!1712319 (and d!2084304 b!6650321)))

(assert (=> bs!1712319 (not (= lambda!372418 lambda!372362))))

(assert (=> bs!1712314 (= (and (= s!2326 Nil!65711) (= (regOne!33536 r!7292) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423835)) (= lambda!372418 lambda!372207))))

(declare-fun bs!1712320 () Bool)

(assert (= bs!1712320 (and d!2084304 b!6650318)))

(assert (=> bs!1712320 (not (= lambda!372418 lambda!372363))))

(declare-fun bs!1712321 () Bool)

(assert (= bs!1712321 (and d!2084304 b!6649550)))

(assert (=> bs!1712321 (= (and (= (regOne!33536 r!7292) (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423854)) (= lambda!372418 lambda!372186))))

(declare-fun bs!1712322 () Bool)

(assert (= bs!1712322 (and d!2084304 d!2084160)))

(assert (=> bs!1712322 (not (= lambda!372418 lambda!372369))))

(declare-fun bs!1712323 () Bool)

(assert (= bs!1712323 (and d!2084304 d!2084270)))

(assert (=> bs!1712323 (not (= lambda!372418 lambda!372408))))

(assert (=> bs!1712312 (= lambda!372418 lambda!372183)))

(assert (=> bs!1712321 (= (and (= (regOne!33536 r!7292) (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423829)) (= lambda!372418 lambda!372188))))

(assert (=> bs!1712317 (= (and (= s!2326 (_1!36794 lt!2423861)) (= (regOne!33536 r!7292) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423835)) (= lambda!372418 lambda!372204))))

(declare-fun bs!1712324 () Bool)

(assert (= bs!1712324 (and d!2084304 d!2084192)))

(assert (=> bs!1712324 (= (and (= s!2326 (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)) (= (regOne!33536 r!7292) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292))))))) (= (regTwo!33536 r!7292) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))))) (= lambda!372418 lambda!372382))))

(declare-fun bs!1712325 () Bool)

(assert (= bs!1712325 (and d!2084304 d!2084224)))

(assert (=> bs!1712325 (= (and (= s!2326 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) s!2326))) (= (regOne!33536 r!7292) (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) lt!2423842))) (= (regTwo!33536 r!7292) (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (regTwo!33536 r!7292)))))) (= lambda!372418 lambda!372397))))

(assert (=> bs!1712324 (not (= lambda!372418 lambda!372383))))

(assert (=> bs!1712323 (= (and (= s!2326 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861)))) (= (regOne!33536 r!7292) (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292))))) (= (regTwo!33536 r!7292) (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)))) (= lambda!372418 lambda!372407))))

(assert (=> bs!1712318 (not (= lambda!372418 lambda!372198))))

(assert (=> bs!1712321 (not (= lambda!372418 lambda!372189))))

(assert (=> bs!1712316 (= (= (regOne!33536 r!7292) lt!2423835) (= lambda!372418 lambda!372194))))

(declare-fun bs!1712326 () Bool)

(assert (= bs!1712326 (and d!2084304 b!6650376)))

(assert (=> bs!1712326 (not (= lambda!372418 lambda!372371))))

(declare-fun bs!1712327 () Bool)

(assert (= bs!1712327 (and d!2084304 d!2084188)))

(assert (=> bs!1712327 (= (and (= s!2326 (ite (or c!1227273 c!1227262 c!1227272) s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (regOne!33536 r!7292) (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (reg!16841 (regOne!33536 r!7292))))) (= (regTwo!33536 r!7292) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (ite c!1227272 (regTwo!33536 r!7292) lt!2423835))))) (= lambda!372418 lambda!372377))))

(assert (=> bs!1712314 (not (= lambda!372418 lambda!372208))))

(assert (=> bs!1712310 (not (= lambda!372418 lambda!372191))))

(assert (=> bs!1712310 (= (and (= (regOne!33536 r!7292) (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423938)) (= lambda!372418 lambda!372190))))

(assert (=> bs!1712317 (= (= (regOne!33536 r!7292) lt!2423842) (= lambda!372418 lambda!372202))))

(declare-fun bs!1712329 () Bool)

(assert (= bs!1712329 (and d!2084304 b!6650151)))

(assert (=> bs!1712329 (not (= lambda!372418 lambda!372352))))

(declare-fun bs!1712330 () Bool)

(assert (= bs!1712330 (and d!2084304 b!6650379)))

(assert (=> bs!1712330 (not (= lambda!372418 lambda!372370))))

(assert (=> bs!1712322 (= (and (= s!2326 (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (regOne!33536 r!7292) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) (Star!16512 (reg!16841 (regOne!33536 r!7292))))) (= lambda!372418 lambda!372368))))

(declare-fun bs!1712331 () Bool)

(assert (= bs!1712331 (and d!2084304 b!6650723)))

(assert (=> bs!1712331 (not (= lambda!372418 lambda!372405))))

(assert (=> bs!1712318 (not (= lambda!372418 lambda!372197))))

(assert (=> bs!1712321 (not (= lambda!372418 lambda!372187))))

(assert (=> bs!1712317 (not (= lambda!372418 lambda!372205))))

(assert (=> d!2084304 true))

(assert (=> d!2084304 true))

(assert (=> d!2084304 true))

(assert (=> d!2084304 (= (isDefined!13106 (findConcatSeparation!2817 (regOne!33536 r!7292) (regTwo!33536 r!7292) Nil!65711 s!2326 s!2326)) (Exists!3582 lambda!372418))))

(declare-fun lt!2424717 () Unit!159475)

(assert (=> d!2084304 (= lt!2424717 (choose!49731 (regOne!33536 r!7292) (regTwo!33536 r!7292) s!2326))))

(assert (=> d!2084304 (validRegex!8248 (regOne!33536 r!7292))))

(assert (=> d!2084304 (= (lemmaFindConcatSeparationEquivalentToExists!2581 (regOne!33536 r!7292) (regTwo!33536 r!7292) s!2326) lt!2424717)))

(declare-fun bs!1712332 () Bool)

(assert (= bs!1712332 d!2084304))

(declare-fun m!7417046 () Bool)

(assert (=> bs!1712332 m!7417046))

(declare-fun m!7417048 () Bool)

(assert (=> bs!1712332 m!7417048))

(assert (=> bs!1712332 m!7415500))

(assert (=> bs!1712332 m!7415502))

(declare-fun m!7417050 () Bool)

(assert (=> bs!1712332 m!7417050))

(assert (=> bs!1712332 m!7415500))

(assert (=> b!6649540 d!2084304))

(declare-fun b!6650845 () Bool)

(declare-fun e!4021497 () Bool)

(declare-fun lt!2424718 () Option!16403)

(assert (=> b!6650845 (= e!4021497 (not (isDefined!13106 lt!2424718)))))

(declare-fun b!6650846 () Bool)

(declare-fun lt!2424719 () Unit!159475)

(declare-fun lt!2424720 () Unit!159475)

(assert (=> b!6650846 (= lt!2424719 lt!2424720)))

(assert (=> b!6650846 (= (++!14666 (++!14666 Nil!65711 (Cons!65711 (h!72159 s!2326) Nil!65711)) (t!379504 s!2326)) s!2326)))

(assert (=> b!6650846 (= lt!2424720 (lemmaMoveElementToOtherListKeepsConcatEq!2651 Nil!65711 (h!72159 s!2326) (t!379504 s!2326) s!2326))))

(declare-fun e!4021495 () Option!16403)

(assert (=> b!6650846 (= e!4021495 (findConcatSeparation!2817 (regOne!33536 r!7292) (regTwo!33536 r!7292) (++!14666 Nil!65711 (Cons!65711 (h!72159 s!2326) Nil!65711)) (t!379504 s!2326) s!2326))))

(declare-fun b!6650847 () Bool)

(declare-fun res!2725322 () Bool)

(declare-fun e!4021493 () Bool)

(assert (=> b!6650847 (=> (not res!2725322) (not e!4021493))))

(assert (=> b!6650847 (= res!2725322 (matchR!8695 (regTwo!33536 r!7292) (_2!36794 (get!22850 lt!2424718))))))

(declare-fun d!2084306 () Bool)

(assert (=> d!2084306 e!4021497))

(declare-fun res!2725324 () Bool)

(assert (=> d!2084306 (=> res!2725324 e!4021497)))

(assert (=> d!2084306 (= res!2725324 e!4021493)))

(declare-fun res!2725323 () Bool)

(assert (=> d!2084306 (=> (not res!2725323) (not e!4021493))))

(assert (=> d!2084306 (= res!2725323 (isDefined!13106 lt!2424718))))

(declare-fun e!4021494 () Option!16403)

(assert (=> d!2084306 (= lt!2424718 e!4021494)))

(declare-fun c!1227619 () Bool)

(declare-fun e!4021496 () Bool)

(assert (=> d!2084306 (= c!1227619 e!4021496)))

(declare-fun res!2725325 () Bool)

(assert (=> d!2084306 (=> (not res!2725325) (not e!4021496))))

(assert (=> d!2084306 (= res!2725325 (matchR!8695 (regOne!33536 r!7292) Nil!65711))))

(assert (=> d!2084306 (validRegex!8248 (regOne!33536 r!7292))))

(assert (=> d!2084306 (= (findConcatSeparation!2817 (regOne!33536 r!7292) (regTwo!33536 r!7292) Nil!65711 s!2326 s!2326) lt!2424718)))

(declare-fun b!6650848 () Bool)

(assert (=> b!6650848 (= e!4021494 (Some!16402 (tuple2!66983 Nil!65711 s!2326)))))

(declare-fun b!6650849 () Bool)

(declare-fun res!2725326 () Bool)

(assert (=> b!6650849 (=> (not res!2725326) (not e!4021493))))

(assert (=> b!6650849 (= res!2725326 (matchR!8695 (regOne!33536 r!7292) (_1!36794 (get!22850 lt!2424718))))))

(declare-fun b!6650850 () Bool)

(assert (=> b!6650850 (= e!4021493 (= (++!14666 (_1!36794 (get!22850 lt!2424718)) (_2!36794 (get!22850 lt!2424718))) s!2326))))

(declare-fun b!6650851 () Bool)

(assert (=> b!6650851 (= e!4021494 e!4021495)))

(declare-fun c!1227618 () Bool)

(assert (=> b!6650851 (= c!1227618 (is-Nil!65711 s!2326))))

(declare-fun b!6650852 () Bool)

(assert (=> b!6650852 (= e!4021495 None!16402)))

(declare-fun b!6650853 () Bool)

(assert (=> b!6650853 (= e!4021496 (matchR!8695 (regTwo!33536 r!7292) s!2326))))

(assert (= (and d!2084306 res!2725325) b!6650853))

(assert (= (and d!2084306 c!1227619) b!6650848))

(assert (= (and d!2084306 (not c!1227619)) b!6650851))

(assert (= (and b!6650851 c!1227618) b!6650852))

(assert (= (and b!6650851 (not c!1227618)) b!6650846))

(assert (= (and d!2084306 res!2725323) b!6650849))

(assert (= (and b!6650849 res!2725326) b!6650847))

(assert (= (and b!6650847 res!2725322) b!6650850))

(assert (= (and d!2084306 (not res!2725324)) b!6650845))

(declare-fun m!7417052 () Bool)

(assert (=> b!6650845 m!7417052))

(declare-fun m!7417054 () Bool)

(assert (=> b!6650850 m!7417054))

(declare-fun m!7417056 () Bool)

(assert (=> b!6650850 m!7417056))

(assert (=> b!6650846 m!7416108))

(assert (=> b!6650846 m!7416108))

(assert (=> b!6650846 m!7416110))

(assert (=> b!6650846 m!7416112))

(assert (=> b!6650846 m!7416108))

(declare-fun m!7417058 () Bool)

(assert (=> b!6650846 m!7417058))

(declare-fun m!7417060 () Bool)

(assert (=> b!6650853 m!7417060))

(assert (=> b!6650847 m!7417054))

(declare-fun m!7417062 () Bool)

(assert (=> b!6650847 m!7417062))

(assert (=> d!2084306 m!7417052))

(declare-fun m!7417064 () Bool)

(assert (=> d!2084306 m!7417064))

(assert (=> d!2084306 m!7417048))

(assert (=> b!6650849 m!7417054))

(declare-fun m!7417066 () Bool)

(assert (=> b!6650849 m!7417066))

(assert (=> b!6649540 d!2084306))

(declare-fun d!2084308 () Bool)

(assert (=> d!2084308 (= (Exists!3582 lambda!372184) (choose!49715 lambda!372184))))

(declare-fun bs!1712333 () Bool)

(assert (= bs!1712333 d!2084308))

(declare-fun m!7417068 () Bool)

(assert (=> bs!1712333 m!7417068))

(assert (=> b!6649540 d!2084308))

(declare-fun bs!1712335 () Bool)

(declare-fun d!2084310 () Bool)

(assert (= bs!1712335 (and d!2084310 b!6650154)))

(declare-fun lambda!372420 () Int)

(assert (=> bs!1712335 (not (= lambda!372420 lambda!372351))))

(declare-fun bs!1712336 () Bool)

(assert (= bs!1712336 (and d!2084310 b!6649552)))

(assert (=> bs!1712336 (= (and (= (regOne!33536 r!7292) (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423798)) (= lambda!372420 lambda!372192))))

(declare-fun bs!1712338 () Bool)

(assert (= bs!1712338 (and d!2084310 b!6649540)))

(assert (=> bs!1712338 (not (= lambda!372420 lambda!372184))))

(declare-fun bs!1712339 () Bool)

(assert (= bs!1712339 (and d!2084310 b!6650720)))

(assert (=> bs!1712339 (not (= lambda!372420 lambda!372406))))

(declare-fun bs!1712341 () Bool)

(assert (= bs!1712341 (and d!2084310 d!2084304)))

(assert (=> bs!1712341 (= lambda!372420 lambda!372418)))

(declare-fun bs!1712342 () Bool)

(assert (= bs!1712342 (and d!2084310 b!6649586)))

(assert (=> bs!1712342 (not (= lambda!372420 lambda!372209))))

(declare-fun bs!1712344 () Bool)

(assert (= bs!1712344 (and d!2084310 b!6649562)))

(assert (=> bs!1712344 (not (= lambda!372420 lambda!372195))))

(declare-fun bs!1712345 () Bool)

(assert (= bs!1712345 (and d!2084310 b!6649595)))

(assert (=> bs!1712345 (not (= lambda!372420 lambda!372203))))

(assert (=> bs!1712336 (not (= lambda!372420 lambda!372193))))

(assert (=> bs!1712345 (not (= lambda!372420 lambda!372206))))

(declare-fun bs!1712347 () Bool)

(assert (= bs!1712347 (and d!2084310 b!6649576)))

(assert (=> bs!1712347 (= (and (= s!2326 (_1!36794 lt!2423817)) (= (regOne!33536 r!7292) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423835)) (= lambda!372420 lambda!372196))))

(declare-fun bs!1712349 () Bool)

(assert (= bs!1712349 (and d!2084310 b!6650321)))

(assert (=> bs!1712349 (not (= lambda!372420 lambda!372362))))

(assert (=> bs!1712342 (= (and (= s!2326 Nil!65711) (= (regOne!33536 r!7292) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423835)) (= lambda!372420 lambda!372207))))

(declare-fun bs!1712351 () Bool)

(assert (= bs!1712351 (and d!2084310 b!6650318)))

(assert (=> bs!1712351 (not (= lambda!372420 lambda!372363))))

(declare-fun bs!1712352 () Bool)

(assert (= bs!1712352 (and d!2084310 b!6649550)))

(assert (=> bs!1712352 (= (and (= (regOne!33536 r!7292) (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423854)) (= lambda!372420 lambda!372186))))

(declare-fun bs!1712353 () Bool)

(assert (= bs!1712353 (and d!2084310 d!2084160)))

(assert (=> bs!1712353 (not (= lambda!372420 lambda!372369))))

(declare-fun bs!1712354 () Bool)

(assert (= bs!1712354 (and d!2084310 d!2084270)))

(assert (=> bs!1712354 (not (= lambda!372420 lambda!372408))))

(assert (=> bs!1712338 (= lambda!372420 lambda!372183)))

(assert (=> bs!1712352 (= (and (= (regOne!33536 r!7292) (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423829)) (= lambda!372420 lambda!372188))))

(assert (=> bs!1712345 (= (and (= s!2326 (_1!36794 lt!2423861)) (= (regOne!33536 r!7292) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423835)) (= lambda!372420 lambda!372204))))

(declare-fun bs!1712355 () Bool)

(assert (= bs!1712355 (and d!2084310 d!2084192)))

(assert (=> bs!1712355 (= (and (= s!2326 (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)) (= (regOne!33536 r!7292) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292))))))) (= (regTwo!33536 r!7292) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))))) (= lambda!372420 lambda!372382))))

(declare-fun bs!1712357 () Bool)

(assert (= bs!1712357 (and d!2084310 d!2084224)))

(assert (=> bs!1712357 (= (and (= s!2326 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) s!2326))) (= (regOne!33536 r!7292) (ite (or c!1227273 c!1227262) (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 (reg!16841 (regOne!33536 r!7292)) lt!2423842))) (= (regTwo!33536 r!7292) (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227272 lt!2423835 (regTwo!33536 r!7292)))))) (= lambda!372420 lambda!372397))))

(assert (=> bs!1712355 (not (= lambda!372420 lambda!372383))))

(assert (=> bs!1712354 (= (and (= s!2326 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861)))) (= (regOne!33536 r!7292) (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292))))) (= (regTwo!33536 r!7292) (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)))) (= lambda!372420 lambda!372407))))

(assert (=> bs!1712347 (not (= lambda!372420 lambda!372198))))

(assert (=> bs!1712352 (not (= lambda!372420 lambda!372189))))

(assert (=> bs!1712344 (= (= (regOne!33536 r!7292) lt!2423835) (= lambda!372420 lambda!372194))))

(declare-fun bs!1712358 () Bool)

(assert (= bs!1712358 (and d!2084310 b!6650376)))

(assert (=> bs!1712358 (not (= lambda!372420 lambda!372371))))

(declare-fun bs!1712359 () Bool)

(assert (= bs!1712359 (and d!2084310 d!2084188)))

(assert (=> bs!1712359 (= (and (= s!2326 (ite (or c!1227273 c!1227262 c!1227272) s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (regOne!33536 r!7292) (ite (or c!1227273 c!1227262) (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (reg!16841 (regOne!33536 r!7292))))) (= (regTwo!33536 r!7292) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423798 (ite c!1227272 (regTwo!33536 r!7292) lt!2423835))))) (= lambda!372420 lambda!372377))))

(assert (=> bs!1712342 (not (= lambda!372420 lambda!372208))))

(assert (=> bs!1712336 (not (= lambda!372420 lambda!372191))))

(assert (=> bs!1712336 (= (and (= (regOne!33536 r!7292) (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423938)) (= lambda!372420 lambda!372190))))

(assert (=> bs!1712345 (= (= (regOne!33536 r!7292) lt!2423842) (= lambda!372420 lambda!372202))))

(declare-fun bs!1712360 () Bool)

(assert (= bs!1712360 (and d!2084310 b!6650151)))

(assert (=> bs!1712360 (not (= lambda!372420 lambda!372352))))

(declare-fun bs!1712361 () Bool)

(assert (= bs!1712361 (and d!2084310 b!6650379)))

(assert (=> bs!1712361 (not (= lambda!372420 lambda!372370))))

(assert (=> bs!1712353 (= (and (= s!2326 (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (regOne!33536 r!7292) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) (Star!16512 (reg!16841 (regOne!33536 r!7292))))) (= lambda!372420 lambda!372368))))

(declare-fun bs!1712362 () Bool)

(assert (= bs!1712362 (and d!2084310 b!6650723)))

(assert (=> bs!1712362 (not (= lambda!372420 lambda!372405))))

(assert (=> bs!1712347 (not (= lambda!372420 lambda!372197))))

(assert (=> bs!1712352 (not (= lambda!372420 lambda!372187))))

(assert (=> bs!1712345 (not (= lambda!372420 lambda!372205))))

(assert (=> d!2084310 true))

(assert (=> d!2084310 true))

(assert (=> d!2084310 true))

(declare-fun lambda!372421 () Int)

(assert (=> bs!1712335 (not (= lambda!372421 lambda!372351))))

(assert (=> bs!1712336 (not (= lambda!372421 lambda!372192))))

(assert (=> bs!1712338 (= lambda!372421 lambda!372184)))

(assert (=> bs!1712339 (= (and (= s!2326 (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326))) (= (regOne!33536 r!7292) (regOne!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292)))))))) (= (regTwo!33536 r!7292) (regTwo!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))))) (= lambda!372421 lambda!372406))))

(assert (=> bs!1712341 (not (= lambda!372421 lambda!372418))))

(assert (=> bs!1712342 (not (= lambda!372421 lambda!372209))))

(assert (=> bs!1712344 (= (= (regOne!33536 r!7292) lt!2423835) (= lambda!372421 lambda!372195))))

(assert (=> bs!1712345 (= (= (regOne!33536 r!7292) lt!2423842) (= lambda!372421 lambda!372203))))

(assert (=> bs!1712336 (= (and (= (regOne!33536 r!7292) (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423798)) (= lambda!372421 lambda!372193))))

(assert (=> bs!1712345 (not (= lambda!372421 lambda!372206))))

(assert (=> bs!1712347 (not (= lambda!372421 lambda!372196))))

(assert (=> bs!1712349 (not (= lambda!372421 lambda!372362))))

(declare-fun bs!1712363 () Bool)

(assert (= bs!1712363 d!2084310))

(assert (=> bs!1712363 (not (= lambda!372421 lambda!372420))))

(assert (=> bs!1712342 (not (= lambda!372421 lambda!372207))))

(assert (=> bs!1712351 (= lambda!372421 lambda!372363)))

(assert (=> bs!1712352 (not (= lambda!372421 lambda!372186))))

(assert (=> bs!1712353 (not (= lambda!372421 lambda!372369))))

(assert (=> bs!1712354 (= (and (= s!2326 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861)))) (= (regOne!33536 r!7292) (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292))))) (= (regTwo!33536 r!7292) (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)))) (= lambda!372421 lambda!372408))))

(assert (=> bs!1712338 (not (= lambda!372421 lambda!372183))))

(assert (=> bs!1712352 (not (= lambda!372421 lambda!372188))))

(assert (=> bs!1712345 (not (= lambda!372421 lambda!372204))))

(assert (=> bs!1712355 (not (= lambda!372421 lambda!372382))))

(assert (=> bs!1712357 (not (= lambda!372421 lambda!372397))))

(assert (=> bs!1712355 (= (and (= s!2326 (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)) (= (regOne!33536 r!7292) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292))))))) (= (regTwo!33536 r!7292) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))))) (= lambda!372421 lambda!372383))))

(assert (=> bs!1712354 (not (= lambda!372421 lambda!372407))))

(assert (=> bs!1712347 (= (and (= s!2326 (_1!36794 lt!2423817)) (= (regOne!33536 r!7292) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423835)) (= lambda!372421 lambda!372198))))

(assert (=> bs!1712352 (= (and (= (regOne!33536 r!7292) (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423829)) (= lambda!372421 lambda!372189))))

(assert (=> bs!1712344 (not (= lambda!372421 lambda!372194))))

(assert (=> bs!1712358 (= (and (= (regOne!33536 r!7292) (regOne!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292)))))))) (= (regTwo!33536 r!7292) (regTwo!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))))) (= lambda!372421 lambda!372371))))

(assert (=> bs!1712359 (not (= lambda!372421 lambda!372377))))

(assert (=> bs!1712342 (= (and (= s!2326 Nil!65711) (= (regOne!33536 r!7292) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423835)) (= lambda!372421 lambda!372208))))

(assert (=> bs!1712336 (= (and (= (regOne!33536 r!7292) (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423938)) (= lambda!372421 lambda!372191))))

(assert (=> bs!1712336 (not (= lambda!372421 lambda!372190))))

(assert (=> bs!1712345 (not (= lambda!372421 lambda!372202))))

(assert (=> bs!1712360 (= (and (= s!2326 (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (regOne!33536 r!7292) (regOne!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)))) (= (regTwo!33536 r!7292) (regTwo!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))))) (= lambda!372421 lambda!372352))))

(assert (=> bs!1712361 (not (= lambda!372421 lambda!372370))))

(assert (=> bs!1712353 (not (= lambda!372421 lambda!372368))))

(assert (=> bs!1712362 (not (= lambda!372421 lambda!372405))))

(assert (=> bs!1712347 (not (= lambda!372421 lambda!372197))))

(assert (=> bs!1712352 (= (and (= (regOne!33536 r!7292) (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423854)) (= lambda!372421 lambda!372187))))

(assert (=> bs!1712345 (= (and (= s!2326 (_1!36794 lt!2423861)) (= (regOne!33536 r!7292) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 r!7292) lt!2423835)) (= lambda!372421 lambda!372205))))

(assert (=> d!2084310 true))

(assert (=> d!2084310 true))

(assert (=> d!2084310 true))

(assert (=> d!2084310 (= (Exists!3582 lambda!372420) (Exists!3582 lambda!372421))))

(declare-fun lt!2424721 () Unit!159475)

(assert (=> d!2084310 (= lt!2424721 (choose!49732 (regOne!33536 r!7292) (regTwo!33536 r!7292) s!2326))))

(assert (=> d!2084310 (validRegex!8248 (regOne!33536 r!7292))))

(assert (=> d!2084310 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2119 (regOne!33536 r!7292) (regTwo!33536 r!7292) s!2326) lt!2424721)))

(declare-fun m!7417094 () Bool)

(assert (=> bs!1712363 m!7417094))

(declare-fun m!7417096 () Bool)

(assert (=> bs!1712363 m!7417096))

(declare-fun m!7417098 () Bool)

(assert (=> bs!1712363 m!7417098))

(assert (=> bs!1712363 m!7417048))

(assert (=> b!6649540 d!2084310))

(declare-fun d!2084322 () Bool)

(assert (=> d!2084322 (= (Exists!3582 lambda!372183) (choose!49715 lambda!372183))))

(declare-fun bs!1712366 () Bool)

(assert (= bs!1712366 d!2084322))

(declare-fun m!7417100 () Bool)

(assert (=> bs!1712366 m!7417100))

(assert (=> b!6649540 d!2084322))

(declare-fun d!2084324 () Bool)

(assert (=> d!2084324 (= (isDefined!13106 (findConcatSeparation!2817 (regOne!33536 r!7292) (regTwo!33536 r!7292) Nil!65711 s!2326 s!2326)) (not (isEmpty!38027 (findConcatSeparation!2817 (regOne!33536 r!7292) (regTwo!33536 r!7292) Nil!65711 s!2326 s!2326))))))

(declare-fun bs!1712367 () Bool)

(assert (= bs!1712367 d!2084324))

(assert (=> bs!1712367 m!7415500))

(declare-fun m!7417102 () Bool)

(assert (=> bs!1712367 m!7417102))

(assert (=> b!6649540 d!2084324))

(declare-fun d!2084326 () Bool)

(assert (=> d!2084326 (= (matchR!8695 (Concat!25357 (Union!16512 (regOne!33537 (regOne!33536 r!7292)) (regTwo!33537 (regOne!33536 r!7292))) (regTwo!33536 r!7292)) s!2326) (matchR!8695 (Union!16512 (Concat!25357 (regOne!33537 (regOne!33536 r!7292)) (regTwo!33536 r!7292)) (Concat!25357 (regTwo!33537 (regOne!33536 r!7292)) (regTwo!33536 r!7292))) s!2326))))

(declare-fun lt!2424732 () Unit!159475)

(declare-fun choose!49744 (Regex!16512 Regex!16512 Regex!16512 List!65835) Unit!159475)

(assert (=> d!2084326 (= lt!2424732 (choose!49744 (regOne!33537 (regOne!33536 r!7292)) (regTwo!33537 (regOne!33536 r!7292)) (regTwo!33536 r!7292) s!2326))))

(assert (=> d!2084326 (validRegex!8248 (regOne!33537 (regOne!33536 r!7292)))))

(assert (=> d!2084326 (= (lemmaConcatDistributesInUnion!59 (regOne!33537 (regOne!33536 r!7292)) (regTwo!33537 (regOne!33536 r!7292)) (regTwo!33536 r!7292) s!2326) lt!2424732)))

(declare-fun bs!1712371 () Bool)

(assert (= bs!1712371 d!2084326))

(declare-fun m!7417122 () Bool)

(assert (=> bs!1712371 m!7417122))

(declare-fun m!7417124 () Bool)

(assert (=> bs!1712371 m!7417124))

(declare-fun m!7417126 () Bool)

(assert (=> bs!1712371 m!7417126))

(declare-fun m!7417128 () Bool)

(assert (=> bs!1712371 m!7417128))

(assert (=> b!6649598 d!2084326))

(declare-fun d!2084336 () Bool)

(assert (=> d!2084336 (= (matchR!8695 lt!2423825 s!2326) (matchRSpec!3613 lt!2423825 s!2326))))

(declare-fun lt!2424733 () Unit!159475)

(assert (=> d!2084336 (= lt!2424733 (choose!49717 lt!2423825 s!2326))))

(assert (=> d!2084336 (validRegex!8248 lt!2423825)))

(assert (=> d!2084336 (= (mainMatchTheorem!3613 lt!2423825 s!2326) lt!2424733)))

(declare-fun bs!1712372 () Bool)

(assert (= bs!1712372 d!2084336))

(declare-fun m!7417130 () Bool)

(assert (=> bs!1712372 m!7417130))

(declare-fun m!7417132 () Bool)

(assert (=> bs!1712372 m!7417132))

(declare-fun m!7417134 () Bool)

(assert (=> bs!1712372 m!7417134))

(declare-fun m!7417136 () Bool)

(assert (=> bs!1712372 m!7417136))

(assert (=> b!6649598 d!2084336))

(declare-fun bs!1712373 () Bool)

(declare-fun b!6650876 () Bool)

(assert (= bs!1712373 (and b!6650876 b!6650154)))

(declare-fun lambda!372422 () Int)

(assert (=> bs!1712373 (= (and (= s!2326 (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (reg!16841 lt!2423847) (reg!16841 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)))) (= lt!2423847 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)))) (= lambda!372422 lambda!372351))))

(declare-fun bs!1712374 () Bool)

(assert (= bs!1712374 (and b!6650876 b!6649552)))

(assert (=> bs!1712374 (not (= lambda!372422 lambda!372192))))

(declare-fun bs!1712375 () Bool)

(assert (= bs!1712375 (and b!6650876 b!6649540)))

(assert (=> bs!1712375 (not (= lambda!372422 lambda!372184))))

(declare-fun bs!1712376 () Bool)

(assert (= bs!1712376 (and b!6650876 d!2084310)))

(assert (=> bs!1712376 (not (= lambda!372422 lambda!372421))))

(declare-fun bs!1712377 () Bool)

(assert (= bs!1712377 (and b!6650876 b!6650720)))

(assert (=> bs!1712377 (not (= lambda!372422 lambda!372406))))

(declare-fun bs!1712378 () Bool)

(assert (= bs!1712378 (and b!6650876 d!2084304)))

(assert (=> bs!1712378 (not (= lambda!372422 lambda!372418))))

(declare-fun bs!1712379 () Bool)

(assert (= bs!1712379 (and b!6650876 b!6649586)))

(assert (=> bs!1712379 (= (and (= s!2326 Nil!65711) (= (reg!16841 lt!2423847) (reg!16841 (regOne!33536 r!7292))) (= lt!2423847 lt!2423835)) (= lambda!372422 lambda!372209))))

(declare-fun bs!1712380 () Bool)

(assert (= bs!1712380 (and b!6650876 b!6649562)))

(assert (=> bs!1712380 (not (= lambda!372422 lambda!372195))))

(declare-fun bs!1712381 () Bool)

(assert (= bs!1712381 (and b!6650876 b!6649595)))

(assert (=> bs!1712381 (not (= lambda!372422 lambda!372203))))

(assert (=> bs!1712374 (not (= lambda!372422 lambda!372193))))

(assert (=> bs!1712381 (= (and (= s!2326 (_1!36794 lt!2423861)) (= (reg!16841 lt!2423847) (reg!16841 (regOne!33536 r!7292))) (= lt!2423847 lt!2423835)) (= lambda!372422 lambda!372206))))

(declare-fun bs!1712382 () Bool)

(assert (= bs!1712382 (and b!6650876 b!6649576)))

(assert (=> bs!1712382 (not (= lambda!372422 lambda!372196))))

(declare-fun bs!1712383 () Bool)

(assert (= bs!1712383 (and b!6650876 b!6650321)))

(assert (=> bs!1712383 (= (and (= (reg!16841 lt!2423847) (reg!16841 r!7292)) (= lt!2423847 r!7292)) (= lambda!372422 lambda!372362))))

(assert (=> bs!1712376 (not (= lambda!372422 lambda!372420))))

(assert (=> bs!1712379 (not (= lambda!372422 lambda!372207))))

(declare-fun bs!1712384 () Bool)

(assert (= bs!1712384 (and b!6650876 b!6650318)))

(assert (=> bs!1712384 (not (= lambda!372422 lambda!372363))))

(declare-fun bs!1712385 () Bool)

(assert (= bs!1712385 (and b!6650876 b!6649550)))

(assert (=> bs!1712385 (not (= lambda!372422 lambda!372186))))

(declare-fun bs!1712386 () Bool)

(assert (= bs!1712386 (and b!6650876 d!2084160)))

(assert (=> bs!1712386 (= (and (= s!2326 (ite c!1227272 (_1!36794 lt!2423817) (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (reg!16841 lt!2423847) (reg!16841 (regOne!33536 r!7292))) (= lt!2423847 (Star!16512 (reg!16841 (regOne!33536 r!7292))))) (= lambda!372422 lambda!372369))))

(declare-fun bs!1712387 () Bool)

(assert (= bs!1712387 (and b!6650876 d!2084270)))

(assert (=> bs!1712387 (not (= lambda!372422 lambda!372408))))

(assert (=> bs!1712375 (not (= lambda!372422 lambda!372183))))

(assert (=> bs!1712385 (not (= lambda!372422 lambda!372188))))

(assert (=> bs!1712381 (not (= lambda!372422 lambda!372204))))

(declare-fun bs!1712388 () Bool)

(assert (= bs!1712388 (and b!6650876 d!2084192)))

(assert (=> bs!1712388 (not (= lambda!372422 lambda!372382))))

(declare-fun bs!1712389 () Bool)

(assert (= bs!1712389 (and b!6650876 d!2084224)))

(assert (=> bs!1712389 (not (= lambda!372422 lambda!372397))))

(assert (=> bs!1712388 (not (= lambda!372422 lambda!372383))))

(assert (=> bs!1712387 (not (= lambda!372422 lambda!372407))))

(assert (=> bs!1712382 (not (= lambda!372422 lambda!372198))))

(assert (=> bs!1712385 (not (= lambda!372422 lambda!372189))))

(assert (=> bs!1712380 (not (= lambda!372422 lambda!372194))))

(declare-fun bs!1712390 () Bool)

(assert (= bs!1712390 (and b!6650876 b!6650376)))

(assert (=> bs!1712390 (not (= lambda!372422 lambda!372371))))

(declare-fun bs!1712391 () Bool)

(assert (= bs!1712391 (and b!6650876 d!2084188)))

(assert (=> bs!1712391 (not (= lambda!372422 lambda!372377))))

(assert (=> bs!1712379 (not (= lambda!372422 lambda!372208))))

(assert (=> bs!1712374 (not (= lambda!372422 lambda!372191))))

(assert (=> bs!1712374 (not (= lambda!372422 lambda!372190))))

(assert (=> bs!1712381 (not (= lambda!372422 lambda!372202))))

(declare-fun bs!1712392 () Bool)

(assert (= bs!1712392 (and b!6650876 b!6650151)))

(assert (=> bs!1712392 (not (= lambda!372422 lambda!372352))))

(declare-fun bs!1712393 () Bool)

(assert (= bs!1712393 (and b!6650876 b!6650379)))

(assert (=> bs!1712393 (= (and (= (reg!16841 lt!2423847) (reg!16841 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292)))))))) (= lt!2423847 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292)))))))) (= lambda!372422 lambda!372370))))

(assert (=> bs!1712386 (not (= lambda!372422 lambda!372368))))

(declare-fun bs!1712394 () Bool)

(assert (= bs!1712394 (and b!6650876 b!6650723)))

(assert (=> bs!1712394 (= (and (= s!2326 (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326))) (= (reg!16841 lt!2423847) (reg!16841 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292)))))))) (= lt!2423847 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292)))))))) (= lambda!372422 lambda!372405))))

(assert (=> bs!1712382 (= (and (= s!2326 (_1!36794 lt!2423817)) (= (reg!16841 lt!2423847) (reg!16841 (regOne!33536 r!7292))) (= lt!2423847 lt!2423835)) (= lambda!372422 lambda!372197))))

(assert (=> bs!1712385 (not (= lambda!372422 lambda!372187))))

(assert (=> bs!1712381 (not (= lambda!372422 lambda!372205))))

(assert (=> b!6650876 true))

(assert (=> b!6650876 true))

(declare-fun bs!1712395 () Bool)

(declare-fun b!6650873 () Bool)

(assert (= bs!1712395 (and b!6650873 b!6650154)))

(declare-fun lambda!372425 () Int)

(assert (=> bs!1712395 (not (= lambda!372425 lambda!372351))))

(declare-fun bs!1712396 () Bool)

(assert (= bs!1712396 (and b!6650873 b!6649552)))

(assert (=> bs!1712396 (not (= lambda!372425 lambda!372192))))

(declare-fun bs!1712397 () Bool)

(assert (= bs!1712397 (and b!6650873 b!6649540)))

(assert (=> bs!1712397 (= (and (= (regOne!33536 lt!2423847) (regOne!33536 r!7292)) (= (regTwo!33536 lt!2423847) (regTwo!33536 r!7292))) (= lambda!372425 lambda!372184))))

(declare-fun bs!1712398 () Bool)

(assert (= bs!1712398 (and b!6650873 b!6650876)))

(assert (=> bs!1712398 (not (= lambda!372425 lambda!372422))))

(declare-fun bs!1712399 () Bool)

(assert (= bs!1712399 (and b!6650873 d!2084310)))

(assert (=> bs!1712399 (= (and (= (regOne!33536 lt!2423847) (regOne!33536 r!7292)) (= (regTwo!33536 lt!2423847) (regTwo!33536 r!7292))) (= lambda!372425 lambda!372421))))

(declare-fun bs!1712400 () Bool)

(assert (= bs!1712400 (and b!6650873 b!6650720)))

(assert (=> bs!1712400 (= (and (= s!2326 (ite (or c!1227264 c!1227273 c!1227262) s!2326 (ite (and c!1227266 c!1227272) (_1!36794 lt!2423817) s!2326))) (= (regOne!33536 lt!2423847) (regOne!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292)))))))) (= (regTwo!33536 lt!2423847) (regTwo!33536 (ite c!1227264 lt!2423853 (ite c!1227273 lt!2423791 (ite c!1227262 lt!2423769 (ite c!1227266 (ite c!1227272 lt!2423835 lt!2423878) (ite c!1227269 (regOne!33536 r!7292) (regTwo!33536 r!7292))))))))) (= lambda!372425 lambda!372406))))

(declare-fun bs!1712401 () Bool)

(assert (= bs!1712401 (and b!6650873 d!2084304)))

(assert (=> bs!1712401 (not (= lambda!372425 lambda!372418))))

(declare-fun bs!1712402 () Bool)

(assert (= bs!1712402 (and b!6650873 b!6649586)))

(assert (=> bs!1712402 (not (= lambda!372425 lambda!372209))))

(declare-fun bs!1712403 () Bool)

(assert (= bs!1712403 (and b!6650873 b!6649562)))

(assert (=> bs!1712403 (= (and (= (regOne!33536 lt!2423847) lt!2423835) (= (regTwo!33536 lt!2423847) (regTwo!33536 r!7292))) (= lambda!372425 lambda!372195))))

(declare-fun bs!1712404 () Bool)

(assert (= bs!1712404 (and b!6650873 b!6649595)))

(assert (=> bs!1712404 (= (and (= (regOne!33536 lt!2423847) lt!2423842) (= (regTwo!33536 lt!2423847) (regTwo!33536 r!7292))) (= lambda!372425 lambda!372203))))

(assert (=> bs!1712396 (= (and (= (regOne!33536 lt!2423847) (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 lt!2423847) lt!2423798)) (= lambda!372425 lambda!372193))))

(assert (=> bs!1712404 (not (= lambda!372425 lambda!372206))))

(declare-fun bs!1712405 () Bool)

(assert (= bs!1712405 (and b!6650873 b!6649576)))

(assert (=> bs!1712405 (not (= lambda!372425 lambda!372196))))

(declare-fun bs!1712406 () Bool)

(assert (= bs!1712406 (and b!6650873 b!6650321)))

(assert (=> bs!1712406 (not (= lambda!372425 lambda!372362))))

(assert (=> bs!1712399 (not (= lambda!372425 lambda!372420))))

(assert (=> bs!1712402 (not (= lambda!372425 lambda!372207))))

(declare-fun bs!1712407 () Bool)

(assert (= bs!1712407 (and b!6650873 b!6650318)))

(assert (=> bs!1712407 (= (and (= (regOne!33536 lt!2423847) (regOne!33536 r!7292)) (= (regTwo!33536 lt!2423847) (regTwo!33536 r!7292))) (= lambda!372425 lambda!372363))))

(declare-fun bs!1712408 () Bool)

(assert (= bs!1712408 (and b!6650873 b!6649550)))

(assert (=> bs!1712408 (not (= lambda!372425 lambda!372186))))

(declare-fun bs!1712409 () Bool)

(assert (= bs!1712409 (and b!6650873 d!2084160)))

(assert (=> bs!1712409 (not (= lambda!372425 lambda!372369))))

(declare-fun bs!1712410 () Bool)

(assert (= bs!1712410 (and b!6650873 d!2084270)))

(assert (=> bs!1712410 (= (and (= s!2326 (ite (or c!1227273 c!1227262) s!2326 (ite c!1227272 (_1!36794 lt!2423817) (_1!36794 lt!2423861)))) (= (regOne!33536 lt!2423847) (ite c!1227273 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227262 (regTwo!33536 (regOne!33536 r!7292)) (reg!16841 (regOne!33536 r!7292))))) (= (regTwo!33536 lt!2423847) (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423798 lt!2423835)))) (= lambda!372425 lambda!372408))))

(assert (=> bs!1712397 (not (= lambda!372425 lambda!372183))))

(assert (=> bs!1712408 (not (= lambda!372425 lambda!372188))))

(assert (=> bs!1712404 (not (= lambda!372425 lambda!372204))))

(declare-fun bs!1712411 () Bool)

(assert (= bs!1712411 (and b!6650873 d!2084192)))

(assert (=> bs!1712411 (not (= lambda!372425 lambda!372382))))

(declare-fun bs!1712412 () Bool)

(assert (= bs!1712412 (and b!6650873 d!2084224)))

(assert (=> bs!1712412 (not (= lambda!372425 lambda!372397))))

(assert (=> bs!1712411 (= (and (= s!2326 (ite (or c!1227273 c!1227262 c!1227272 c!1227261) s!2326 Nil!65711)) (= (regOne!33536 lt!2423847) (ite c!1227273 (regTwo!33536 (regOne!33536 r!7292)) (ite c!1227262 (regOne!33536 (regOne!33536 r!7292)) (ite c!1227272 lt!2423835 (ite c!1227261 lt!2423842 (reg!16841 (regOne!33536 r!7292))))))) (= (regTwo!33536 lt!2423847) (ite c!1227273 lt!2423829 (ite c!1227262 lt!2423938 (ite (or c!1227272 c!1227261) (regTwo!33536 r!7292) lt!2423835))))) (= lambda!372425 lambda!372383))))

(assert (=> bs!1712410 (not (= lambda!372425 lambda!372407))))

(assert (=> bs!1712405 (= (and (= s!2326 (_1!36794 lt!2423817)) (= (regOne!33536 lt!2423847) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 lt!2423847) lt!2423835)) (= lambda!372425 lambda!372198))))

(assert (=> bs!1712408 (= (and (= (regOne!33536 lt!2423847) (regTwo!33536 (regOne!33536 r!7292))) (= (regTwo!33536 lt!2423847) lt!2423829)) (= lambda!372425 lambda!372189))))

(assert (=> bs!1712403 (not (= lambda!372425 lambda!372194))))

(declare-fun bs!1712413 () Bool)

(assert (= bs!1712413 (and b!6650873 b!6650376)))

(assert (=> bs!1712413 (= (and (= (regOne!33536 lt!2423847) (regOne!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292)))))))) (= (regTwo!33536 lt!2423847) (regTwo!33536 (ite c!1227264 lt!2423825 (ite c!1227273 lt!2423854 (ite c!1227262 lt!2423938 (ite c!1227266 lt!2423810 (ite c!1227269 (regTwo!33536 r!7292) (regOne!33536 r!7292))))))))) (= lambda!372425 lambda!372371))))

(declare-fun bs!1712414 () Bool)

(assert (= bs!1712414 (and b!6650873 d!2084188)))

(assert (=> bs!1712414 (not (= lambda!372425 lambda!372377))))

(assert (=> bs!1712402 (= (and (= s!2326 Nil!65711) (= (regOne!33536 lt!2423847) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 lt!2423847) lt!2423835)) (= lambda!372425 lambda!372208))))

(assert (=> bs!1712396 (= (and (= (regOne!33536 lt!2423847) (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 lt!2423847) lt!2423938)) (= lambda!372425 lambda!372191))))

(assert (=> bs!1712396 (not (= lambda!372425 lambda!372190))))

(assert (=> bs!1712404 (not (= lambda!372425 lambda!372202))))

(declare-fun bs!1712415 () Bool)

(assert (= bs!1712415 (and b!6650873 b!6650151)))

(assert (=> bs!1712415 (= (and (= s!2326 (ite c!1227264 s!2326 (ite c!1227261 (_1!36794 lt!2423861) Nil!65711))) (= (regOne!33536 lt!2423847) (regOne!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835)))) (= (regTwo!33536 lt!2423847) (regTwo!33536 (ite c!1227264 lt!2423788 (ite c!1227261 lt!2423842 lt!2423835))))) (= lambda!372425 lambda!372352))))

(declare-fun bs!1712416 () Bool)

(assert (= bs!1712416 (and b!6650873 b!6650379)))

(assert (=> bs!1712416 (not (= lambda!372425 lambda!372370))))

(assert (=> bs!1712409 (not (= lambda!372425 lambda!372368))))

(declare-fun bs!1712417 () Bool)

(assert (= bs!1712417 (and b!6650873 b!6650723)))

(assert (=> bs!1712417 (not (= lambda!372425 lambda!372405))))

(assert (=> bs!1712405 (not (= lambda!372425 lambda!372197))))

(assert (=> bs!1712408 (= (and (= (regOne!33536 lt!2423847) (regOne!33536 (regOne!33536 r!7292))) (= (regTwo!33536 lt!2423847) lt!2423854)) (= lambda!372425 lambda!372187))))

(assert (=> bs!1712404 (= (and (= s!2326 (_1!36794 lt!2423861)) (= (regOne!33536 lt!2423847) (reg!16841 (regOne!33536 r!7292))) (= (regTwo!33536 lt!2423847) lt!2423835)) (= lambda!372425 lambda!372205))))

(assert (=> b!6650873 true))

(assert (=> b!6650873 true))

(declare-fun e!4021510 () Bool)

(declare-fun call!588064 () Bool)

(assert (=> b!6650873 (= e!4021510 call!588064)))

(declare-fun b!6650874 () Bool)

(declare-fun e!4021511 () Bool)

(declare-fun e!4021509 () Bool)

(assert (=> b!6650874 (= e!4021511 e!4021509)))

(declare-fun res!2725338 () Bool)

(assert (=> b!6650874 (= res!2725338 (not (is-EmptyLang!16512 lt!2423847)))))

(assert (=> b!6650874 (=> (not res!2725338) (not e!4021509))))

(declare-fun b!6650875 () Bool)

(declare-fun e!4021513 () Bool)

(assert (=> b!6650875 (= e!4021513 (matchRSpec!3613 (regTwo!33537 lt!2423847) s!2326))))

(declare-fun e!4021512 () Bool)

(assert (=> b!6650876 (= e!4021512 call!588064)))

(declare-fun d!2084338 () Bool)

(declare-fun c!1227627 () Bool)

(assert (=> d!2084338 (= c!1227627 (is-EmptyExpr!16512 lt!2423847))))

(assert (=> d!2084338 (= (matchRSpec!3613 lt!2423847 s!2326) e!4021511)))

(declare-fun b!6650877 () Bool)

(declare-fun c!1227628 () Bool)

(assert (=> b!6650877 (= c!1227628 (is-ElementMatch!16512 lt!2423847))))

(declare-fun e!4021508 () Bool)

(assert (=> b!6650877 (= e!4021509 e!4021508)))

(declare-fun b!6650878 () Bool)

(declare-fun c!1227625 () Bool)

(assert (=> b!6650878 (= c!1227625 (is-Union!16512 lt!2423847))))

(declare-fun e!4021514 () Bool)

(assert (=> b!6650878 (= e!4021508 e!4021514)))

(declare-fun b!6650879 () Bool)

(assert (=> b!6650879 (= e!4021508 (= s!2326 (Cons!65711 (c!1227274 lt!2423847) Nil!65711)))))

(declare-fun bm!588059 () Bool)

(declare-fun call!588065 () Bool)

(assert (=> bm!588059 (= call!588065 (isEmpty!38022 s!2326))))

(declare-fun b!6650880 () Bool)

(assert (=> b!6650880 (= e!4021514 e!4021510)))

(declare-fun c!1227626 () Bool)

(assert (=> b!6650880 (= c!1227626 (is-Star!16512 lt!2423847))))

(declare-fun bm!588060 () Bool)

(assert (=> bm!588060 (= call!588064 (Exists!3582 (ite c!1227626 lambda!372422 lambda!372425)))))

(declare-fun b!6650881 () Bool)

(assert (=> b!6650881 (= e!4021514 e!4021513)))

(declare-fun res!2725337 () Bool)

(assert (=> b!6650881 (= res!2725337 (matchRSpec!3613 (regOne!33537 lt!2423847) s!2326))))

(assert (=> b!6650881 (=> res!2725337 e!4021513)))

(declare-fun b!6650882 () Bool)

(assert (=> b!6650882 (= e!4021511 call!588065)))

(declare-fun b!6650883 () Bool)

(declare-fun res!2725336 () Bool)

(assert (=> b!6650883 (=> res!2725336 e!4021512)))

(assert (=> b!6650883 (= res!2725336 call!588065)))

(assert (=> b!6650883 (= e!4021510 e!4021512)))

(assert (= (and d!2084338 c!1227627) b!6650882))

(assert (= (and d!2084338 (not c!1227627)) b!6650874))

(assert (= (and b!6650874 res!2725338) b!6650877))

(assert (= (and b!6650877 c!1227628) b!6650879))

(assert (= (and b!6650877 (not c!1227628)) b!6650878))

(assert (= (and b!6650878 c!1227625) b!6650881))

(assert (= (and b!6650878 (not c!1227625)) b!6650880))

(assert (= (and b!6650881 (not res!2725337)) b!6650875))

(assert (= (and b!6650880 c!1227626) b!6650883))

(assert (= (and b!6650880 (not c!1227626)) b!6650873))

(assert (= (and b!6650883 (not res!2725336)) b!6650876))

(assert (= (or b!6650876 b!6650873) bm!588060))

(assert (= (or b!6650882 b!6650883) bm!588059))

(declare-fun m!7417138 () Bool)

(assert (=> b!6650875 m!7417138))

(assert (=> bm!588059 m!7416382))

(declare-fun m!7417140 () Bool)

(assert (=> bm!588060 m!7417140))

(declare-fun m!7417142 () Bool)

(assert (=> b!6650881 m!7417142))

(assert (=> b!6649598 d!2084338))

(declare-fun d!2084340 () Bool)

(assert (=> d!2084340 (= (nullable!6505 (regOne!33537 (regOne!33536 r!7292))) (nullableFct!2427 (regOne!33537 (regOne!33536 r!7292))))))

(declare-fun bs!1712418 () Bool)

(assert (= bs!1712418 d!2084340))

(declare-fun m!7417144 () Bool)

(assert (=> bs!1712418 m!7417144))

(assert (=> b!6649598 d!2084340))

(declare-fun d!2084342 () Bool)

(declare-fun c!1227629 () Bool)

(assert (=> d!2084342 (= c!1227629 (isEmpty!38022 s!2326))))

(declare-fun e!4021519 () Bool)

(assert (=> d!2084342 (= (matchZipper!2524 lt!2423879 s!2326) e!4021519)))

(declare-fun b!6650892 () Bool)

(assert (=> b!6650892 (= e!4021519 (nullableZipper!2253 lt!2423879))))

(declare-fun b!6650893 () Bool)

(assert (=> b!6650893 (= e!4021519 (matchZipper!2524 (derivationStepZipper!2478 lt!2423879 (head!13467 s!2326)) (tail!12552 s!2326)))))

(assert (= (and d!2084342 c!1227629) b!6650892))

(assert (= (and d!2084342 (not c!1227629)) b!6650893))

(assert (=> d!2084342 m!7416382))

(declare-fun m!7417146 () Bool)

(assert (=> b!6650892 m!7417146))

(assert (=> b!6650893 m!7416388))

(assert (=> b!6650893 m!7416388))

(declare-fun m!7417148 () Bool)

(assert (=> b!6650893 m!7417148))

(assert (=> b!6650893 m!7416392))

(assert (=> b!6650893 m!7417148))

(assert (=> b!6650893 m!7416392))

(declare-fun m!7417150 () Bool)

(assert (=> b!6650893 m!7417150))

(assert (=> b!6649598 d!2084342))

(declare-fun d!2084344 () Bool)

(assert (=> d!2084344 (= (Exists!3582 (ite c!1227272 lambda!372194 (ite c!1227261 lambda!372205 lambda!372207))) (choose!49715 (ite c!1227272 lambda!372194 (ite c!1227261 lambda!372205 lambda!372207))))))

(declare-fun bs!1712419 () Bool)

(assert (= bs!1712419 d!2084344))

(declare-fun m!7417152 () Bool)

(assert (=> bs!1712419 m!7417152))

(assert (=> bm!587143 d!2084344))

(declare-fun d!2084346 () Bool)

(assert (=> d!2084346 (= (flatMap!2017 (ite c!1227273 lt!2423802 lt!2423808) (ite c!1227273 lambda!372185 lambda!372185)) (choose!49721 (ite c!1227273 lt!2423802 lt!2423808) (ite c!1227273 lambda!372185 lambda!372185)))))

(declare-fun bs!1712420 () Bool)

(assert (= bs!1712420 d!2084346))

(declare-fun m!7417154 () Bool)

(assert (=> bs!1712420 m!7417154))

(assert (=> bm!587257 d!2084346))

(declare-fun b!6650901 () Bool)

(declare-fun e!4021525 () Bool)

(declare-fun tp!1830754 () Bool)

(assert (=> b!6650901 (= e!4021525 tp!1830754)))

(declare-fun e!4021524 () Bool)

(declare-fun tp!1830755 () Bool)

(declare-fun b!6650900 () Bool)

(assert (=> b!6650900 (= e!4021524 (and (inv!84528 (h!72161 (t!379506 zl!343))) e!4021525 tp!1830755))))

(assert (=> b!6649549 (= tp!1830716 e!4021524)))

(assert (= b!6650900 b!6650901))

(assert (= (and b!6649549 (is-Cons!65713 (t!379506 zl!343))) b!6650900))

(declare-fun m!7417156 () Bool)

(assert (=> b!6650900 m!7417156))

(declare-fun b!6650906 () Bool)

(declare-fun e!4021528 () Bool)

(declare-fun tp!1830758 () Bool)

(assert (=> b!6650906 (= e!4021528 (and tp_is_empty!42277 tp!1830758))))

(assert (=> b!6649553 (= tp!1830718 e!4021528)))

(assert (= (and b!6649553 (is-Cons!65711 (t!379504 s!2326))) b!6650906))

(declare-fun e!4021531 () Bool)

(assert (=> b!6649580 (= tp!1830719 e!4021531)))

(declare-fun b!6650917 () Bool)

(assert (=> b!6650917 (= e!4021531 tp_is_empty!42277)))

(declare-fun b!6650919 () Bool)

(declare-fun tp!1830771 () Bool)

(assert (=> b!6650919 (= e!4021531 tp!1830771)))

(declare-fun b!6650920 () Bool)

(declare-fun tp!1830769 () Bool)

(declare-fun tp!1830773 () Bool)

(assert (=> b!6650920 (= e!4021531 (and tp!1830769 tp!1830773))))

(declare-fun b!6650918 () Bool)

(declare-fun tp!1830772 () Bool)

(declare-fun tp!1830770 () Bool)

(assert (=> b!6650918 (= e!4021531 (and tp!1830772 tp!1830770))))

(assert (= (and b!6649580 (is-ElementMatch!16512 (reg!16841 r!7292))) b!6650917))

(assert (= (and b!6649580 (is-Concat!25357 (reg!16841 r!7292))) b!6650918))

(assert (= (and b!6649580 (is-Star!16512 (reg!16841 r!7292))) b!6650919))

(assert (= (and b!6649580 (is-Union!16512 (reg!16841 r!7292))) b!6650920))

(declare-fun e!4021532 () Bool)

(assert (=> b!6649599 (= tp!1830712 e!4021532)))

(declare-fun b!6650921 () Bool)

(assert (=> b!6650921 (= e!4021532 tp_is_empty!42277)))

(declare-fun b!6650923 () Bool)

(declare-fun tp!1830776 () Bool)

(assert (=> b!6650923 (= e!4021532 tp!1830776)))

(declare-fun b!6650924 () Bool)

(declare-fun tp!1830774 () Bool)

(declare-fun tp!1830778 () Bool)

(assert (=> b!6650924 (= e!4021532 (and tp!1830774 tp!1830778))))

(declare-fun b!6650922 () Bool)

(declare-fun tp!1830777 () Bool)

(declare-fun tp!1830775 () Bool)

(assert (=> b!6650922 (= e!4021532 (and tp!1830777 tp!1830775))))

(assert (= (and b!6649599 (is-ElementMatch!16512 (regOne!33536 r!7292))) b!6650921))

(assert (= (and b!6649599 (is-Concat!25357 (regOne!33536 r!7292))) b!6650922))

(assert (= (and b!6649599 (is-Star!16512 (regOne!33536 r!7292))) b!6650923))

(assert (= (and b!6649599 (is-Union!16512 (regOne!33536 r!7292))) b!6650924))

(declare-fun e!4021533 () Bool)

(assert (=> b!6649599 (= tp!1830715 e!4021533)))

(declare-fun b!6650925 () Bool)

(assert (=> b!6650925 (= e!4021533 tp_is_empty!42277)))

(declare-fun b!6650927 () Bool)

(declare-fun tp!1830781 () Bool)

(assert (=> b!6650927 (= e!4021533 tp!1830781)))

(declare-fun b!6650928 () Bool)

(declare-fun tp!1830779 () Bool)

(declare-fun tp!1830783 () Bool)

(assert (=> b!6650928 (= e!4021533 (and tp!1830779 tp!1830783))))

(declare-fun b!6650926 () Bool)

(declare-fun tp!1830782 () Bool)

(declare-fun tp!1830780 () Bool)

(assert (=> b!6650926 (= e!4021533 (and tp!1830782 tp!1830780))))

(assert (= (and b!6649599 (is-ElementMatch!16512 (regTwo!33536 r!7292))) b!6650925))

(assert (= (and b!6649599 (is-Concat!25357 (regTwo!33536 r!7292))) b!6650926))

(assert (= (and b!6649599 (is-Star!16512 (regTwo!33536 r!7292))) b!6650927))

(assert (= (and b!6649599 (is-Union!16512 (regTwo!33536 r!7292))) b!6650928))

(declare-fun condSetEmpty!45456 () Bool)

(assert (=> setNonEmpty!45450 (= condSetEmpty!45456 (= setRest!45450 (as set.empty (Set Context!11792))))))

(declare-fun setRes!45456 () Bool)

(assert (=> setNonEmpty!45450 (= tp!1830710 setRes!45456)))

(declare-fun setIsEmpty!45456 () Bool)

(assert (=> setIsEmpty!45456 setRes!45456))

(declare-fun setElem!45456 () Context!11792)

(declare-fun setNonEmpty!45456 () Bool)

(declare-fun tp!1830788 () Bool)

(declare-fun e!4021536 () Bool)

(assert (=> setNonEmpty!45456 (= setRes!45456 (and tp!1830788 (inv!84528 setElem!45456) e!4021536))))

(declare-fun setRest!45456 () (Set Context!11792))

(assert (=> setNonEmpty!45456 (= setRest!45450 (set.union (set.insert setElem!45456 (as set.empty (Set Context!11792))) setRest!45456))))

(declare-fun b!6650933 () Bool)

(declare-fun tp!1830789 () Bool)

(assert (=> b!6650933 (= e!4021536 tp!1830789)))

(assert (= (and setNonEmpty!45450 condSetEmpty!45456) setIsEmpty!45456))

(assert (= (and setNonEmpty!45450 (not condSetEmpty!45456)) setNonEmpty!45456))

(assert (= setNonEmpty!45456 b!6650933))

(declare-fun m!7417158 () Bool)

(assert (=> setNonEmpty!45456 m!7417158))

(declare-fun b!6650938 () Bool)

(declare-fun e!4021539 () Bool)

(declare-fun tp!1830794 () Bool)

(declare-fun tp!1830795 () Bool)

(assert (=> b!6650938 (= e!4021539 (and tp!1830794 tp!1830795))))

(assert (=> b!6649546 (= tp!1830714 e!4021539)))

(assert (= (and b!6649546 (is-Cons!65712 (exprs!6396 setElem!45450))) b!6650938))

(declare-fun b!6650939 () Bool)

(declare-fun e!4021540 () Bool)

(declare-fun tp!1830796 () Bool)

(declare-fun tp!1830797 () Bool)

(assert (=> b!6650939 (= e!4021540 (and tp!1830796 tp!1830797))))

(assert (=> b!6649594 (= tp!1830713 e!4021540)))

(assert (= (and b!6649594 (is-Cons!65712 (exprs!6396 (h!72161 zl!343)))) b!6650939))

(declare-fun e!4021541 () Bool)

(assert (=> b!6649593 (= tp!1830711 e!4021541)))

(declare-fun b!6650940 () Bool)

(assert (=> b!6650940 (= e!4021541 tp_is_empty!42277)))

(declare-fun b!6650942 () Bool)

(declare-fun tp!1830800 () Bool)

(assert (=> b!6650942 (= e!4021541 tp!1830800)))

(declare-fun b!6650943 () Bool)

(declare-fun tp!1830798 () Bool)

(declare-fun tp!1830802 () Bool)

(assert (=> b!6650943 (= e!4021541 (and tp!1830798 tp!1830802))))

(declare-fun b!6650941 () Bool)

(declare-fun tp!1830801 () Bool)

(declare-fun tp!1830799 () Bool)

(assert (=> b!6650941 (= e!4021541 (and tp!1830801 tp!1830799))))

(assert (= (and b!6649593 (is-ElementMatch!16512 (regOne!33537 r!7292))) b!6650940))

(assert (= (and b!6649593 (is-Concat!25357 (regOne!33537 r!7292))) b!6650941))

(assert (= (and b!6649593 (is-Star!16512 (regOne!33537 r!7292))) b!6650942))

(assert (= (and b!6649593 (is-Union!16512 (regOne!33537 r!7292))) b!6650943))

(declare-fun e!4021542 () Bool)

(assert (=> b!6649593 (= tp!1830717 e!4021542)))

(declare-fun b!6650944 () Bool)

(assert (=> b!6650944 (= e!4021542 tp_is_empty!42277)))

(declare-fun b!6650946 () Bool)

(declare-fun tp!1830805 () Bool)

(assert (=> b!6650946 (= e!4021542 tp!1830805)))

(declare-fun b!6650947 () Bool)

(declare-fun tp!1830803 () Bool)

(declare-fun tp!1830807 () Bool)

(assert (=> b!6650947 (= e!4021542 (and tp!1830803 tp!1830807))))

(declare-fun b!6650945 () Bool)

(declare-fun tp!1830806 () Bool)

(declare-fun tp!1830804 () Bool)

(assert (=> b!6650945 (= e!4021542 (and tp!1830806 tp!1830804))))

(assert (= (and b!6649593 (is-ElementMatch!16512 (regTwo!33537 r!7292))) b!6650944))

(assert (= (and b!6649593 (is-Concat!25357 (regTwo!33537 r!7292))) b!6650945))

(assert (= (and b!6649593 (is-Star!16512 (regTwo!33537 r!7292))) b!6650946))

(assert (= (and b!6649593 (is-Union!16512 (regTwo!33537 r!7292))) b!6650947))

(declare-fun b_lambda!251153 () Bool)

(assert (= b_lambda!251145 (or b!6649554 b_lambda!251153)))

(declare-fun bs!1712429 () Bool)

(declare-fun d!2084348 () Bool)

(assert (= bs!1712429 (and d!2084348 b!6649554)))

(assert (=> bs!1712429 (= (dynLambda!26183 lambda!372185 (h!72161 zl!343)) (derivationStepZipperUp!1686 (h!72161 zl!343) (h!72159 s!2326)))))

(assert (=> bs!1712429 m!7415666))

(assert (=> d!2084288 d!2084348))

(declare-fun b_lambda!251155 () Bool)

(assert (= b_lambda!251147 (or b!6649554 b_lambda!251155)))

(declare-fun bs!1712430 () Bool)

(declare-fun d!2084350 () Bool)

(assert (= bs!1712430 (and d!2084350 b!6649554)))

(assert (=> bs!1712430 (= (dynLambda!26183 lambda!372185 lt!2423839) (derivationStepZipperUp!1686 lt!2423839 (h!72159 s!2326)))))

(assert (=> bs!1712430 m!7415476))

(assert (=> d!2084290 d!2084350))

(declare-fun b_lambda!251157 () Bool)

(assert (= b_lambda!251135 (or b!6649595 b_lambda!251157)))

(declare-fun bs!1712431 () Bool)

(declare-fun d!2084352 () Bool)

(assert (= bs!1712431 (and d!2084352 b!6649595)))

(declare-fun lt!2424737 () Unit!159475)

(assert (=> bs!1712431 (= lt!2424737 (lemmaConcatPreservesForall!425 (exprs!6396 lt!2423750) lt!2423909 lambda!372201))))

(assert (=> bs!1712431 (= (dynLambda!26182 lambda!372200 lt!2423750) (Context!11793 (++!14667 (exprs!6396 lt!2423750) lt!2423909)))))

(declare-fun m!7417160 () Bool)

(assert (=> bs!1712431 m!7417160))

(declare-fun m!7417162 () Bool)

(assert (=> bs!1712431 m!7417162))

(assert (=> d!2084058 d!2084352))

(push 1)

(assert (not b!6650939))

(assert (not d!2084144))

(assert (not b!6650076))

(assert (not bm!587949))

(assert (not b!6650401))

(assert (not d!2084182))

(assert (not d!2084184))

(assert (not b!6650692))

(assert (not d!2084186))

(assert (not b!6650347))

(assert (not b!6650036))

(assert (not d!2084106))

(assert (not b!6650585))

(assert (not b!6650445))

(assert (not d!2084084))

(assert (not b!6649975))

(assert (not b!6650666))

(assert (not d!2084160))

(assert (not d!2084134))

(assert (not d!2084094))

(assert (not d!2084300))

(assert (not d!2084050))

(assert (not d!2084192))

(assert (not b!6650728))

(assert (not b!6650540))

(assert (not b!6650439))

(assert (not b!6650922))

(assert (not b!6650689))

(assert (not bm!588037))

(assert (not b!6650117))

(assert (not b!6650625))

(assert (not b!6650271))

(assert (not b!6650512))

(assert (not b!6650288))

(assert (not b!6650034))

(assert (not b!6650303))

(assert (not bm!587977))

(assert (not d!2084126))

(assert (not b!6650927))

(assert (not b!6650398))

(assert (not d!2084042))

(assert (not b!6650397))

(assert (not d!2084216))

(assert (not d!2084288))

(assert (not bm!588059))

(assert (not b!6650906))

(assert (not b!6650547))

(assert (not b!6650680))

(assert (not b!6650661))

(assert (not d!2084246))

(assert (not bm!588001))

(assert (not b!6650849))

(assert (not b!6650531))

(assert (not b!6650707))

(assert (not b!6650713))

(assert (not bm!587948))

(assert (not d!2084326))

(assert (not b!6650875))

(assert (not b!6650511))

(assert (not b!6650306))

(assert (not b_lambda!251139))

(assert (not b!6650103))

(assert (not d!2084276))

(assert (not b!6650779))

(assert (not d!2084238))

(assert (not d!2084308))

(assert (not d!2084148))

(assert (not b!6650343))

(assert (not b!6650521))

(assert (not b!6650708))

(assert (not b!6650928))

(assert (not b!6650588))

(assert (not b!6650893))

(assert (not b!6650453))

(assert (not b!6650659))

(assert (not d!2084302))

(assert tp_is_empty!42277)

(assert (not b!6650278))

(assert (not b!6650259))

(assert (not d!2084188))

(assert (not b!6650583))

(assert (not b!6650919))

(assert (not b!6650938))

(assert (not b!6650341))

(assert (not bm!587973))

(assert (not d!2084252))

(assert (not b!6650634))

(assert (not b!6650300))

(assert (not b!6650159))

(assert (not b!6650677))

(assert (not d!2084168))

(assert (not b!6650649))

(assert (not b!6650073))

(assert (not b!6650665))

(assert (not b!6650924))

(assert (not d!2084062))

(assert (not b!6649976))

(assert (not b!6650798))

(assert (not b!6650275))

(assert (not d!2084048))

(assert (not b!6650391))

(assert (not b!6650538))

(assert (not b!6650273))

(assert (not bm!587996))

(assert (not b!6650437))

(assert (not bm!588035))

(assert (not b!6650037))

(assert (not d!2084124))

(assert (not b!6650362))

(assert (not b!6650299))

(assert (not b!6650447))

(assert (not b!6650901))

(assert (not d!2084052))

(assert (not b!6650516))

(assert (not b!6650941))

(assert (not b!6650340))

(assert (not bm!588000))

(assert (not bm!587995))

(assert (not bm!587997))

(assert (not b!6650685))

(assert (not d!2084336))

(assert (not b!6650281))

(assert (not b!6650923))

(assert (not b!6650263))

(assert (not d!2084068))

(assert (not bm!587994))

(assert (not b!6650345))

(assert (not b!6650304))

(assert (not b!6650257))

(assert (not b!6650668))

(assert (not d!2084156))

(assert (not bm!587989))

(assert (not d!2084180))

(assert (not d!2084116))

(assert (not b!6650262))

(assert (not b!6650331))

(assert (not b!6650285))

(assert (not b!6650691))

(assert (not d!2084122))

(assert (not bm!588028))

(assert (not b!6650509))

(assert (not bm!587930))

(assert (not bm!588029))

(assert (not d!2084108))

(assert (not d!2084270))

(assert (not d!2084224))

(assert (not b!6650534))

(assert (not d!2084132))

(assert (not bm!588060))

(assert (not bm!587984))

(assert (not d!2084118))

(assert (not b!6650527))

(assert (not bm!587978))

(assert (not b!6650357))

(assert (not b!6650390))

(assert (not b!6650074))

(assert (not b!6650675))

(assert (not bm!587998))

(assert (not d!2084324))

(assert (not b!6650334))

(assert (not b!6649995))

(assert (not b!6650449))

(assert (not b!6650850))

(assert (not d!2084278))

(assert (not b!6650792))

(assert (not b!6650947))

(assert (not b!6650388))

(assert (not b!6650112))

(assert (not b!6650632))

(assert (not b!6650435))

(assert (not bm!588040))

(assert (not b!6650356))

(assert (not d!2084056))

(assert (not d!2084244))

(assert (not bm!588021))

(assert (not bm!587990))

(assert (not d!2084044))

(assert (not b!6650448))

(assert (not b!6650507))

(assert (not b!6650719))

(assert (not b!6650255))

(assert (not d!2084174))

(assert (not b!6650627))

(assert (not b!6650375))

(assert (not b_lambda!251143))

(assert (not d!2084158))

(assert (not b!6650405))

(assert (not b!6650153))

(assert (not b!6650440))

(assert (not d!2084100))

(assert (not b!6649994))

(assert (not b!6650408))

(assert (not d!2084340))

(assert (not b!6650452))

(assert (not b!6650412))

(assert (not b!6650843))

(assert (not b!6650508))

(assert (not b!6650678))

(assert (not bm!588052))

(assert (not d!2084146))

(assert (not b!6650847))

(assert (not b!6650900))

(assert (not d!2084102))

(assert (not b!6650528))

(assert (not b!6650537))

(assert (not b_lambda!251153))

(assert (not d!2084166))

(assert (not d!2084112))

(assert (not b!6650394))

(assert (not d!2084098))

(assert (not d!2084080))

(assert (not b!6650326))

(assert (not b!6650701))

(assert (not bm!587975))

(assert (not b!6650048))

(assert (not d!2084172))

(assert (not d!2084120))

(assert (not bm!588045))

(assert (not bm!587934))

(assert (not d!2084296))

(assert (not bm!588030))

(assert (not b!6650705))

(assert (not b!6650274))

(assert (not b!6650799))

(assert (not b!6650443))

(assert (not b!6650344))

(assert (not d!2084170))

(assert (not b!6650629))

(assert (not b!6650025))

(assert (not d!2084096))

(assert (not b!6650533))

(assert (not d!2084210))

(assert (not b!6650943))

(assert (not b!6650590))

(assert (not b!6650657))

(assert (not d!2084306))

(assert (not b!6650664))

(assert (not d!2084072))

(assert (not b!6650077))

(assert (not b!6650802))

(assert (not bm!588036))

(assert (not b!6650942))

(assert (not b!6650163))

(assert (not b_lambda!251157))

(assert (not d!2084092))

(assert (not b!6650663))

(assert (not b!6650946))

(assert (not b!6650803))

(assert (not b!6650378))

(assert (not d!2084058))

(assert (not d!2084198))

(assert (not b!6649989))

(assert (not setNonEmpty!45456))

(assert (not d!2084304))

(assert (not d!2084206))

(assert (not b!6650415))

(assert (not b!6650267))

(assert (not b!6650338))

(assert (not d!2084290))

(assert (not b!6650392))

(assert (not d!2084104))

(assert (not d!2084344))

(assert (not bm!587982))

(assert (not bm!587991))

(assert (not d!2084234))

(assert (not b!6650525))

(assert (not b!6650926))

(assert (not b!6650118))

(assert (not b!6650853))

(assert (not b!6650364))

(assert (not b!6650361))

(assert (not d!2084212))

(assert (not d!2084240))

(assert (not b!6650258))

(assert (not b!6650827))

(assert (not b!6650722))

(assert (not d!2084292))

(assert (not b!6650414))

(assert (not b!6650543))

(assert (not b!6650261))

(assert (not d!2084286))

(assert (not b!6650266))

(assert (not b!6650071))

(assert (not b!6650505))

(assert (not d!2084178))

(assert (not d!2084078))

(assert (not b!6649990))

(assert (not b!6650630))

(assert (not bm!587950))

(assert (not b!6650633))

(assert (not b!6650845))

(assert (not bs!1712430))

(assert (not bm!587958))

(assert (not d!2084346))

(assert (not bm!587987))

(assert (not b!6650542))

(assert (not bm!587980))

(assert (not b!6650660))

(assert (not b!6650539))

(assert (not b!6650515))

(assert (not b!6650287))

(assert (not d!2084242))

(assert (not d!2084200))

(assert (not b!6650881))

(assert (not bm!588033))

(assert (not b!6650698))

(assert (not b!6650535))

(assert (not b!6650696))

(assert (not b!6650395))

(assert (not b!6650310))

(assert (not d!2084152))

(assert (not b!6650350))

(assert (not b!6650111))

(assert (not b!6650933))

(assert (not d!2084140))

(assert (not b_lambda!251137))

(assert (not bm!587976))

(assert (not b!6650027))

(assert (not b!6650403))

(assert (not b!6650268))

(assert (not b!6650164))

(assert (not d!2084176))

(assert (not bm!588053))

(assert (not b!6650436))

(assert (not b!6650892))

(assert (not d!2084114))

(assert (not d!2084110))

(assert (not b!6650682))

(assert (not b!6650276))

(assert (not b!6650396))

(assert (not d!2084066))

(assert (not d!2084086))

(assert (not b!6650400))

(assert (not bs!1712429))

(assert (not d!2084260))

(assert (not b!6650030))

(assert (not b!6650072))

(assert (not b!6650920))

(assert (not d!2084310))

(assert (not b!6650049))

(assert (not d!2084076))

(assert (not bm!587985))

(assert (not b!6650541))

(assert (not b_lambda!251155))

(assert (not b!6650918))

(assert (not b_lambda!251141))

(assert (not d!2084228))

(assert (not bm!587983))

(assert (not d!2084342))

(assert (not bm!588020))

(assert (not b!6650546))

(assert (not d!2084128))

(assert (not d!2084322))

(assert (not bs!1712431))

(assert (not b!6650844))

(assert (not b!6650320))

(assert (not b!6650791))

(assert (not d!2084282))

(assert (not d!2084208))

(assert (not b!6650451))

(assert (not b!6650384))

(assert (not bm!587931))

(assert (not b!6650945))

(assert (not d!2084204))

(assert (not b!6650354))

(assert (not d!2084250))

(assert (not bm!587999))

(assert (not b!6650272))

(assert (not b!6650506))

(assert (not bm!588032))

(assert (not b!6650846))

(assert (not d!2084142))

(assert (not b!6650518))

(assert (not d!2084162))

(assert (not b!6650329))

(assert (not d!2084064))

(assert (not b!6650671))

(assert (not bm!587957))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

