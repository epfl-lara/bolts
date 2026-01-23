; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!547006 () Bool)

(assert start!547006)

(declare-fun setIsEmpty!31885 () Bool)

(declare-fun setRes!31885 () Bool)

(assert (=> setIsEmpty!31885 setRes!31885))

(declare-fun b!5168932 () Bool)

(declare-fun e!3220720 () Bool)

(declare-fun e!3220718 () Bool)

(assert (=> b!5168932 (= e!3220720 e!3220718)))

(declare-fun res!2197094 () Bool)

(assert (=> b!5168932 (=> res!2197094 e!3220718)))

(declare-datatypes ((C!29478 0))(
  ( (C!29479 (val!24441 Int)) )
))
(declare-datatypes ((Regex!14604 0))(
  ( (ElementMatch!14604 (c!889566 C!29478)) (Concat!23449 (regOne!29720 Regex!14604) (regTwo!29720 Regex!14604)) (EmptyExpr!14604) (Star!14604 (reg!14933 Regex!14604)) (EmptyLang!14604) (Union!14604 (regOne!29721 Regex!14604) (regTwo!29721 Regex!14604)) )
))
(declare-datatypes ((List!60169 0))(
  ( (Nil!60045) (Cons!60045 (h!66493 Regex!14604) (t!373322 List!60169)) )
))
(declare-datatypes ((Context!7976 0))(
  ( (Context!7977 (exprs!4488 List!60169)) )
))
(declare-fun z!4581 () (Set Context!7976))

(declare-fun nullableZipper!1150 ((Set Context!7976)) Bool)

(assert (=> b!5168932 (= res!2197094 (not (nullableZipper!1150 z!4581)))))

(declare-datatypes ((List!60170 0))(
  ( (Nil!60046) (Cons!60046 (h!66494 C!29478) (t!373323 List!60170)) )
))
(declare-fun lt!2126770 () List!60170)

(declare-fun input!5817 () List!60170)

(declare-fun isPrefix!5737 (List!60170 List!60170) Bool)

(assert (=> b!5168932 (isPrefix!5737 lt!2126770 input!5817)))

(declare-datatypes ((Unit!151586 0))(
  ( (Unit!151587) )
))
(declare-fun lt!2126763 () Unit!151586)

(declare-fun testedP!294 () List!60170)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1050 (List!60170 List!60170) Unit!151586)

(assert (=> b!5168932 (= lt!2126763 (lemmaAddHeadSuffixToPrefixStillPrefix!1050 testedP!294 input!5817))))

(declare-fun lt!2126765 () C!29478)

(declare-fun ++!13128 (List!60170 List!60170) List!60170)

(assert (=> b!5168932 (= lt!2126770 (++!13128 testedP!294 (Cons!60046 lt!2126765 Nil!60046)))))

(declare-fun lt!2126767 () List!60170)

(declare-fun head!11028 (List!60170) C!29478)

(assert (=> b!5168932 (= lt!2126765 (head!11028 lt!2126767))))

(declare-fun b!5168933 () Bool)

(declare-fun e!3220716 () Bool)

(assert (=> b!5168933 (= e!3220716 (not e!3220720))))

(declare-fun res!2197095 () Bool)

(assert (=> b!5168933 (=> res!2197095 e!3220720)))

(declare-fun lt!2126769 () Int)

(declare-fun lt!2126764 () Int)

(assert (=> b!5168933 (= res!2197095 (>= lt!2126769 lt!2126764))))

(declare-fun lt!2126766 () Unit!151586)

(declare-fun e!3220719 () Unit!151586)

(assert (=> b!5168933 (= lt!2126766 e!3220719)))

(declare-fun c!889565 () Bool)

(assert (=> b!5168933 (= c!889565 (= lt!2126769 lt!2126764))))

(assert (=> b!5168933 (<= lt!2126769 lt!2126764)))

(declare-fun lt!2126768 () Unit!151586)

(declare-fun lemmaIsPrefixThenSmallerEqSize!900 (List!60170 List!60170) Unit!151586)

(assert (=> b!5168933 (= lt!2126768 (lemmaIsPrefixThenSmallerEqSize!900 testedP!294 input!5817))))

(declare-fun b!5168935 () Bool)

(declare-fun Unit!151588 () Unit!151586)

(assert (=> b!5168935 (= e!3220719 Unit!151588)))

(declare-fun lt!2126761 () Unit!151586)

(declare-fun lemmaIsPrefixRefl!3744 (List!60170 List!60170) Unit!151586)

(assert (=> b!5168935 (= lt!2126761 (lemmaIsPrefixRefl!3744 input!5817 input!5817))))

(assert (=> b!5168935 (isPrefix!5737 input!5817 input!5817)))

(declare-fun lt!2126771 () Unit!151586)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1386 (List!60170 List!60170 List!60170) Unit!151586)

(assert (=> b!5168935 (= lt!2126771 (lemmaIsPrefixSameLengthThenSameList!1386 input!5817 testedP!294 input!5817))))

(assert (=> b!5168935 false))

(declare-fun b!5168936 () Bool)

(declare-fun res!2197091 () Bool)

(assert (=> b!5168936 (=> (not res!2197091) (not e!3220716))))

(assert (=> b!5168936 (= res!2197091 (not (= testedP!294 input!5817)))))

(declare-fun b!5168937 () Bool)

(declare-fun e!3220712 () Bool)

(declare-fun tp_is_empty!38461 () Bool)

(declare-fun tp!1450168 () Bool)

(assert (=> b!5168937 (= e!3220712 (and tp_is_empty!38461 tp!1450168))))

(declare-fun b!5168938 () Bool)

(declare-fun e!3220714 () Bool)

(declare-fun e!3220717 () Bool)

(assert (=> b!5168938 (= e!3220714 e!3220717)))

(declare-fun res!2197092 () Bool)

(assert (=> b!5168938 (=> (not res!2197092) (not e!3220717))))

(declare-fun lt!2126762 () (Set Context!7976))

(assert (=> b!5168938 (= res!2197092 (= lt!2126762 z!4581))))

(declare-fun baseZ!62 () (Set Context!7976))

(declare-fun derivationZipper!227 ((Set Context!7976) List!60170) (Set Context!7976))

(assert (=> b!5168938 (= lt!2126762 (derivationZipper!227 baseZ!62 testedP!294))))

(declare-fun b!5168939 () Bool)

(declare-fun e!3220713 () Bool)

(declare-fun tp!1450165 () Bool)

(assert (=> b!5168939 (= e!3220713 tp!1450165)))

(declare-fun b!5168940 () Bool)

(declare-fun e!3220711 () Bool)

(declare-fun tp!1450167 () Bool)

(assert (=> b!5168940 (= e!3220711 (and tp_is_empty!38461 tp!1450167))))

(declare-fun setElem!31885 () Context!7976)

(declare-fun setRes!31886 () Bool)

(declare-fun tp!1450164 () Bool)

(declare-fun setNonEmpty!31885 () Bool)

(declare-fun inv!79758 (Context!7976) Bool)

(assert (=> setNonEmpty!31885 (= setRes!31886 (and tp!1450164 (inv!79758 setElem!31885) e!3220713))))

(declare-fun setRest!31886 () (Set Context!7976))

(assert (=> setNonEmpty!31885 (= z!4581 (set.union (set.insert setElem!31885 (as set.empty (Set Context!7976))) setRest!31886))))

(declare-fun b!5168941 () Bool)

(declare-fun res!2197090 () Bool)

(assert (=> b!5168941 (=> res!2197090 e!3220718)))

(declare-fun isEmpty!32148 (List!60170) Bool)

(declare-datatypes ((tuple2!63762 0))(
  ( (tuple2!63763 (_1!35184 List!60170) (_2!35184 List!60170)) )
))
(declare-fun findLongestMatchInnerZipper!262 ((Set Context!7976) List!60170 Int List!60170 List!60170 Int) tuple2!63762)

(declare-fun derivationStepZipper!958 ((Set Context!7976) C!29478) (Set Context!7976))

(declare-fun tail!10137 (List!60170) List!60170)

(assert (=> b!5168941 (= res!2197090 (not (isEmpty!32148 (_1!35184 (findLongestMatchInnerZipper!262 (derivationStepZipper!958 z!4581 lt!2126765) lt!2126770 (+ 1 lt!2126769) (tail!10137 lt!2126767) input!5817 lt!2126764)))))))

(declare-fun setIsEmpty!31886 () Bool)

(assert (=> setIsEmpty!31886 setRes!31886))

(declare-fun b!5168934 () Bool)

(declare-fun Unit!151589 () Unit!151586)

(assert (=> b!5168934 (= e!3220719 Unit!151589)))

(declare-fun res!2197093 () Bool)

(assert (=> start!547006 (=> (not res!2197093) (not e!3220714))))

(assert (=> start!547006 (= res!2197093 (isPrefix!5737 testedP!294 input!5817))))

(assert (=> start!547006 e!3220714))

(assert (=> start!547006 e!3220711))

(assert (=> start!547006 e!3220712))

(declare-fun condSetEmpty!31885 () Bool)

(assert (=> start!547006 (= condSetEmpty!31885 (= z!4581 (as set.empty (Set Context!7976))))))

(assert (=> start!547006 setRes!31886))

(declare-fun condSetEmpty!31886 () Bool)

(assert (=> start!547006 (= condSetEmpty!31886 (= baseZ!62 (as set.empty (Set Context!7976))))))

(assert (=> start!547006 setRes!31885))

(declare-fun b!5168942 () Bool)

(declare-fun e!3220715 () Bool)

(declare-fun tp!1450169 () Bool)

(assert (=> b!5168942 (= e!3220715 tp!1450169)))

(declare-fun b!5168943 () Bool)

(assert (=> b!5168943 (= e!3220718 (= (++!13128 testedP!294 lt!2126767) input!5817))))

(declare-fun matchZipper!960 ((Set Context!7976) List!60170) Bool)

(assert (=> b!5168943 (= (matchZipper!960 baseZ!62 testedP!294) (matchZipper!960 lt!2126762 Nil!60046))))

(declare-fun lt!2126772 () Unit!151586)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!41 ((Set Context!7976) List!60170) Unit!151586)

(assert (=> b!5168943 (= lt!2126772 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!41 baseZ!62 testedP!294))))

(declare-fun b!5168944 () Bool)

(assert (=> b!5168944 (= e!3220717 e!3220716)))

(declare-fun res!2197089 () Bool)

(assert (=> b!5168944 (=> (not res!2197089) (not e!3220716))))

(assert (=> b!5168944 (= res!2197089 (not (isEmpty!32148 (_1!35184 (findLongestMatchInnerZipper!262 z!4581 testedP!294 lt!2126769 lt!2126767 input!5817 lt!2126764)))))))

(declare-fun size!39640 (List!60170) Int)

(assert (=> b!5168944 (= lt!2126764 (size!39640 input!5817))))

(declare-fun getSuffix!3387 (List!60170 List!60170) List!60170)

(assert (=> b!5168944 (= lt!2126767 (getSuffix!3387 input!5817 testedP!294))))

(assert (=> b!5168944 (= lt!2126769 (size!39640 testedP!294))))

(declare-fun setNonEmpty!31886 () Bool)

(declare-fun setElem!31886 () Context!7976)

(declare-fun tp!1450166 () Bool)

(assert (=> setNonEmpty!31886 (= setRes!31885 (and tp!1450166 (inv!79758 setElem!31886) e!3220715))))

(declare-fun setRest!31885 () (Set Context!7976))

(assert (=> setNonEmpty!31886 (= baseZ!62 (set.union (set.insert setElem!31886 (as set.empty (Set Context!7976))) setRest!31885))))

(assert (= (and start!547006 res!2197093) b!5168938))

(assert (= (and b!5168938 res!2197092) b!5168944))

(assert (= (and b!5168944 res!2197089) b!5168936))

(assert (= (and b!5168936 res!2197091) b!5168933))

(assert (= (and b!5168933 c!889565) b!5168935))

(assert (= (and b!5168933 (not c!889565)) b!5168934))

(assert (= (and b!5168933 (not res!2197095)) b!5168932))

(assert (= (and b!5168932 (not res!2197094)) b!5168941))

(assert (= (and b!5168941 (not res!2197090)) b!5168943))

(assert (= (and start!547006 (is-Cons!60046 testedP!294)) b!5168940))

(assert (= (and start!547006 (is-Cons!60046 input!5817)) b!5168937))

(assert (= (and start!547006 condSetEmpty!31885) setIsEmpty!31886))

(assert (= (and start!547006 (not condSetEmpty!31885)) setNonEmpty!31885))

(assert (= setNonEmpty!31885 b!5168939))

(assert (= (and start!547006 condSetEmpty!31886) setIsEmpty!31885))

(assert (= (and start!547006 (not condSetEmpty!31886)) setNonEmpty!31886))

(assert (= setNonEmpty!31886 b!5168942))

(declare-fun m!6220364 () Bool)

(assert (=> b!5168938 m!6220364))

(declare-fun m!6220366 () Bool)

(assert (=> b!5168932 m!6220366))

(declare-fun m!6220368 () Bool)

(assert (=> b!5168932 m!6220368))

(declare-fun m!6220370 () Bool)

(assert (=> b!5168932 m!6220370))

(declare-fun m!6220372 () Bool)

(assert (=> b!5168932 m!6220372))

(declare-fun m!6220374 () Bool)

(assert (=> b!5168932 m!6220374))

(declare-fun m!6220376 () Bool)

(assert (=> b!5168935 m!6220376))

(declare-fun m!6220378 () Bool)

(assert (=> b!5168935 m!6220378))

(declare-fun m!6220380 () Bool)

(assert (=> b!5168935 m!6220380))

(declare-fun m!6220382 () Bool)

(assert (=> b!5168944 m!6220382))

(declare-fun m!6220384 () Bool)

(assert (=> b!5168944 m!6220384))

(declare-fun m!6220386 () Bool)

(assert (=> b!5168944 m!6220386))

(declare-fun m!6220388 () Bool)

(assert (=> b!5168944 m!6220388))

(declare-fun m!6220390 () Bool)

(assert (=> b!5168944 m!6220390))

(declare-fun m!6220392 () Bool)

(assert (=> setNonEmpty!31885 m!6220392))

(declare-fun m!6220394 () Bool)

(assert (=> b!5168941 m!6220394))

(declare-fun m!6220396 () Bool)

(assert (=> b!5168941 m!6220396))

(assert (=> b!5168941 m!6220394))

(assert (=> b!5168941 m!6220396))

(declare-fun m!6220398 () Bool)

(assert (=> b!5168941 m!6220398))

(declare-fun m!6220400 () Bool)

(assert (=> b!5168941 m!6220400))

(declare-fun m!6220402 () Bool)

(assert (=> setNonEmpty!31886 m!6220402))

(declare-fun m!6220404 () Bool)

(assert (=> b!5168943 m!6220404))

(declare-fun m!6220406 () Bool)

(assert (=> b!5168943 m!6220406))

(declare-fun m!6220408 () Bool)

(assert (=> b!5168943 m!6220408))

(declare-fun m!6220410 () Bool)

(assert (=> b!5168943 m!6220410))

(declare-fun m!6220412 () Bool)

(assert (=> b!5168933 m!6220412))

(declare-fun m!6220414 () Bool)

(assert (=> start!547006 m!6220414))

(push 1)

(assert (not b!5168940))

(assert (not b!5168937))

(assert (not b!5168943))

(assert (not setNonEmpty!31886))

(assert (not b!5168933))

(assert (not b!5168935))

(assert (not b!5168942))

(assert (not b!5168941))

(assert (not b!5168938))

(assert (not setNonEmpty!31885))

(assert (not start!547006))

(assert tp_is_empty!38461)

(assert (not b!5168932))

(assert (not b!5168944))

(assert (not b!5168939))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1667934 () Bool)

(assert (=> d!1667934 (<= (size!39640 testedP!294) (size!39640 input!5817))))

(declare-fun lt!2126811 () Unit!151586)

(declare-fun choose!38267 (List!60170 List!60170) Unit!151586)

(assert (=> d!1667934 (= lt!2126811 (choose!38267 testedP!294 input!5817))))

(assert (=> d!1667934 (isPrefix!5737 testedP!294 input!5817)))

(assert (=> d!1667934 (= (lemmaIsPrefixThenSmallerEqSize!900 testedP!294 input!5817) lt!2126811)))

(declare-fun bs!1203264 () Bool)

(assert (= bs!1203264 d!1667934))

(assert (=> bs!1203264 m!6220384))

(assert (=> bs!1203264 m!6220390))

(declare-fun m!6220468 () Bool)

(assert (=> bs!1203264 m!6220468))

(assert (=> bs!1203264 m!6220414))

(assert (=> b!5168933 d!1667934))

(declare-fun b!5168994 () Bool)

(declare-fun e!3220759 () Bool)

(assert (=> b!5168994 (= e!3220759 (isPrefix!5737 (tail!10137 lt!2126770) (tail!10137 input!5817)))))

(declare-fun d!1667936 () Bool)

(declare-fun e!3220757 () Bool)

(assert (=> d!1667936 e!3220757))

(declare-fun res!2197125 () Bool)

(assert (=> d!1667936 (=> res!2197125 e!3220757)))

(declare-fun lt!2126814 () Bool)

(assert (=> d!1667936 (= res!2197125 (not lt!2126814))))

(declare-fun e!3220758 () Bool)

(assert (=> d!1667936 (= lt!2126814 e!3220758)))

(declare-fun res!2197127 () Bool)

(assert (=> d!1667936 (=> res!2197127 e!3220758)))

(assert (=> d!1667936 (= res!2197127 (is-Nil!60046 lt!2126770))))

(assert (=> d!1667936 (= (isPrefix!5737 lt!2126770 input!5817) lt!2126814)))

(declare-fun b!5168995 () Bool)

(assert (=> b!5168995 (= e!3220757 (>= (size!39640 input!5817) (size!39640 lt!2126770)))))

(declare-fun b!5168992 () Bool)

(assert (=> b!5168992 (= e!3220758 e!3220759)))

(declare-fun res!2197128 () Bool)

(assert (=> b!5168992 (=> (not res!2197128) (not e!3220759))))

(assert (=> b!5168992 (= res!2197128 (not (is-Nil!60046 input!5817)))))

(declare-fun b!5168993 () Bool)

(declare-fun res!2197126 () Bool)

(assert (=> b!5168993 (=> (not res!2197126) (not e!3220759))))

(assert (=> b!5168993 (= res!2197126 (= (head!11028 lt!2126770) (head!11028 input!5817)))))

(assert (= (and d!1667936 (not res!2197127)) b!5168992))

(assert (= (and b!5168992 res!2197128) b!5168993))

(assert (= (and b!5168993 res!2197126) b!5168994))

(assert (= (and d!1667936 (not res!2197125)) b!5168995))

(declare-fun m!6220470 () Bool)

(assert (=> b!5168994 m!6220470))

(declare-fun m!6220472 () Bool)

(assert (=> b!5168994 m!6220472))

(assert (=> b!5168994 m!6220470))

(assert (=> b!5168994 m!6220472))

(declare-fun m!6220474 () Bool)

(assert (=> b!5168994 m!6220474))

(assert (=> b!5168995 m!6220390))

(declare-fun m!6220476 () Bool)

(assert (=> b!5168995 m!6220476))

(declare-fun m!6220478 () Bool)

(assert (=> b!5168993 m!6220478))

(declare-fun m!6220480 () Bool)

(assert (=> b!5168993 m!6220480))

(assert (=> b!5168932 d!1667936))

(declare-fun d!1667938 () Bool)

(assert (=> d!1667938 (= (head!11028 lt!2126767) (h!66494 lt!2126767))))

(assert (=> b!5168932 d!1667938))

(declare-fun d!1667940 () Bool)

(assert (=> d!1667940 (isPrefix!5737 (++!13128 testedP!294 (Cons!60046 (head!11028 (getSuffix!3387 input!5817 testedP!294)) Nil!60046)) input!5817)))

(declare-fun lt!2126817 () Unit!151586)

(declare-fun choose!38268 (List!60170 List!60170) Unit!151586)

(assert (=> d!1667940 (= lt!2126817 (choose!38268 testedP!294 input!5817))))

(assert (=> d!1667940 (isPrefix!5737 testedP!294 input!5817)))

(assert (=> d!1667940 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1050 testedP!294 input!5817) lt!2126817)))

(declare-fun bs!1203265 () Bool)

(assert (= bs!1203265 d!1667940))

(assert (=> bs!1203265 m!6220414))

(assert (=> bs!1203265 m!6220386))

(declare-fun m!6220482 () Bool)

(assert (=> bs!1203265 m!6220482))

(declare-fun m!6220484 () Bool)

(assert (=> bs!1203265 m!6220484))

(declare-fun m!6220486 () Bool)

(assert (=> bs!1203265 m!6220486))

(assert (=> bs!1203265 m!6220386))

(assert (=> bs!1203265 m!6220486))

(declare-fun m!6220488 () Bool)

(assert (=> bs!1203265 m!6220488))

(assert (=> b!5168932 d!1667940))

(declare-fun d!1667942 () Bool)

(declare-fun lambda!258018 () Int)

(declare-fun exists!1905 ((Set Context!7976) Int) Bool)

(assert (=> d!1667942 (= (nullableZipper!1150 z!4581) (exists!1905 z!4581 lambda!258018))))

(declare-fun bs!1203267 () Bool)

(assert (= bs!1203267 d!1667942))

(declare-fun m!6220536 () Bool)

(assert (=> bs!1203267 m!6220536))

(assert (=> b!5168932 d!1667942))

(declare-fun d!1667956 () Bool)

(declare-fun e!3220784 () Bool)

(assert (=> d!1667956 e!3220784))

(declare-fun res!2197152 () Bool)

(assert (=> d!1667956 (=> (not res!2197152) (not e!3220784))))

(declare-fun lt!2126829 () List!60170)

(declare-fun content!10640 (List!60170) (Set C!29478))

(assert (=> d!1667956 (= res!2197152 (= (content!10640 lt!2126829) (set.union (content!10640 testedP!294) (content!10640 (Cons!60046 lt!2126765 Nil!60046)))))))

(declare-fun e!3220783 () List!60170)

(assert (=> d!1667956 (= lt!2126829 e!3220783)))

(declare-fun c!889582 () Bool)

(assert (=> d!1667956 (= c!889582 (is-Nil!60046 testedP!294))))

(assert (=> d!1667956 (= (++!13128 testedP!294 (Cons!60046 lt!2126765 Nil!60046)) lt!2126829)))

(declare-fun b!5169038 () Bool)

(declare-fun res!2197151 () Bool)

(assert (=> b!5169038 (=> (not res!2197151) (not e!3220784))))

(assert (=> b!5169038 (= res!2197151 (= (size!39640 lt!2126829) (+ (size!39640 testedP!294) (size!39640 (Cons!60046 lt!2126765 Nil!60046)))))))

(declare-fun b!5169036 () Bool)

(assert (=> b!5169036 (= e!3220783 (Cons!60046 lt!2126765 Nil!60046))))

(declare-fun b!5169037 () Bool)

(assert (=> b!5169037 (= e!3220783 (Cons!60046 (h!66494 testedP!294) (++!13128 (t!373323 testedP!294) (Cons!60046 lt!2126765 Nil!60046))))))

(declare-fun b!5169039 () Bool)

(assert (=> b!5169039 (= e!3220784 (or (not (= (Cons!60046 lt!2126765 Nil!60046) Nil!60046)) (= lt!2126829 testedP!294)))))

(assert (= (and d!1667956 c!889582) b!5169036))

(assert (= (and d!1667956 (not c!889582)) b!5169037))

(assert (= (and d!1667956 res!2197152) b!5169038))

(assert (= (and b!5169038 res!2197151) b!5169039))

(declare-fun m!6220538 () Bool)

(assert (=> d!1667956 m!6220538))

(declare-fun m!6220540 () Bool)

(assert (=> d!1667956 m!6220540))

(declare-fun m!6220542 () Bool)

(assert (=> d!1667956 m!6220542))

(declare-fun m!6220544 () Bool)

(assert (=> b!5169038 m!6220544))

(assert (=> b!5169038 m!6220384))

(declare-fun m!6220546 () Bool)

(assert (=> b!5169038 m!6220546))

(declare-fun m!6220548 () Bool)

(assert (=> b!5169037 m!6220548))

(assert (=> b!5168932 d!1667956))

(declare-fun d!1667958 () Bool)

(declare-fun c!889585 () Bool)

(assert (=> d!1667958 (= c!889585 (is-Cons!60046 testedP!294))))

(declare-fun e!3220787 () (Set Context!7976))

(assert (=> d!1667958 (= (derivationZipper!227 baseZ!62 testedP!294) e!3220787)))

(declare-fun b!5169044 () Bool)

(assert (=> b!5169044 (= e!3220787 (derivationZipper!227 (derivationStepZipper!958 baseZ!62 (h!66494 testedP!294)) (t!373323 testedP!294)))))

(declare-fun b!5169045 () Bool)

(assert (=> b!5169045 (= e!3220787 baseZ!62)))

(assert (= (and d!1667958 c!889585) b!5169044))

(assert (= (and d!1667958 (not c!889585)) b!5169045))

(declare-fun m!6220550 () Bool)

(assert (=> b!5169044 m!6220550))

(assert (=> b!5169044 m!6220550))

(declare-fun m!6220552 () Bool)

(assert (=> b!5169044 m!6220552))

(assert (=> b!5168938 d!1667958))

(declare-fun b!5169048 () Bool)

(declare-fun e!3220790 () Bool)

(assert (=> b!5169048 (= e!3220790 (isPrefix!5737 (tail!10137 testedP!294) (tail!10137 input!5817)))))

(declare-fun d!1667960 () Bool)

(declare-fun e!3220788 () Bool)

(assert (=> d!1667960 e!3220788))

(declare-fun res!2197153 () Bool)

(assert (=> d!1667960 (=> res!2197153 e!3220788)))

(declare-fun lt!2126830 () Bool)

(assert (=> d!1667960 (= res!2197153 (not lt!2126830))))

(declare-fun e!3220789 () Bool)

(assert (=> d!1667960 (= lt!2126830 e!3220789)))

(declare-fun res!2197155 () Bool)

(assert (=> d!1667960 (=> res!2197155 e!3220789)))

(assert (=> d!1667960 (= res!2197155 (is-Nil!60046 testedP!294))))

(assert (=> d!1667960 (= (isPrefix!5737 testedP!294 input!5817) lt!2126830)))

(declare-fun b!5169049 () Bool)

(assert (=> b!5169049 (= e!3220788 (>= (size!39640 input!5817) (size!39640 testedP!294)))))

(declare-fun b!5169046 () Bool)

(assert (=> b!5169046 (= e!3220789 e!3220790)))

(declare-fun res!2197156 () Bool)

(assert (=> b!5169046 (=> (not res!2197156) (not e!3220790))))

(assert (=> b!5169046 (= res!2197156 (not (is-Nil!60046 input!5817)))))

(declare-fun b!5169047 () Bool)

(declare-fun res!2197154 () Bool)

(assert (=> b!5169047 (=> (not res!2197154) (not e!3220790))))

(assert (=> b!5169047 (= res!2197154 (= (head!11028 testedP!294) (head!11028 input!5817)))))

(assert (= (and d!1667960 (not res!2197155)) b!5169046))

(assert (= (and b!5169046 res!2197156) b!5169047))

(assert (= (and b!5169047 res!2197154) b!5169048))

(assert (= (and d!1667960 (not res!2197153)) b!5169049))

(declare-fun m!6220554 () Bool)

(assert (=> b!5169048 m!6220554))

(assert (=> b!5169048 m!6220472))

(assert (=> b!5169048 m!6220554))

(assert (=> b!5169048 m!6220472))

(declare-fun m!6220556 () Bool)

(assert (=> b!5169048 m!6220556))

(assert (=> b!5169049 m!6220390))

(assert (=> b!5169049 m!6220384))

(declare-fun m!6220558 () Bool)

(assert (=> b!5169047 m!6220558))

(assert (=> b!5169047 m!6220480))

(assert (=> start!547006 d!1667960))

(declare-fun d!1667962 () Bool)

(declare-fun lambda!258021 () Int)

(declare-fun forall!14122 (List!60169 Int) Bool)

(assert (=> d!1667962 (= (inv!79758 setElem!31885) (forall!14122 (exprs!4488 setElem!31885) lambda!258021))))

(declare-fun bs!1203268 () Bool)

(assert (= bs!1203268 d!1667962))

(declare-fun m!6220560 () Bool)

(assert (=> bs!1203268 m!6220560))

(assert (=> setNonEmpty!31885 d!1667962))

(declare-fun d!1667964 () Bool)

(assert (=> d!1667964 (= (isEmpty!32148 (_1!35184 (findLongestMatchInnerZipper!262 (derivationStepZipper!958 z!4581 lt!2126765) lt!2126770 (+ 1 lt!2126769) (tail!10137 lt!2126767) input!5817 lt!2126764))) (is-Nil!60046 (_1!35184 (findLongestMatchInnerZipper!262 (derivationStepZipper!958 z!4581 lt!2126765) lt!2126770 (+ 1 lt!2126769) (tail!10137 lt!2126767) input!5817 lt!2126764))))))

(assert (=> b!5168941 d!1667964))

(declare-fun d!1667966 () Bool)

(declare-fun e!3220807 () Bool)

(assert (=> d!1667966 e!3220807))

(declare-fun res!2197162 () Bool)

(assert (=> d!1667966 (=> (not res!2197162) (not e!3220807))))

(declare-fun lt!2126891 () tuple2!63762)

(assert (=> d!1667966 (= res!2197162 (= (++!13128 (_1!35184 lt!2126891) (_2!35184 lt!2126891)) input!5817))))

(declare-fun e!3220812 () tuple2!63762)

(assert (=> d!1667966 (= lt!2126891 e!3220812)))

(declare-fun c!889600 () Bool)

(declare-fun lostCauseZipper!1321 ((Set Context!7976)) Bool)

(assert (=> d!1667966 (= c!889600 (lostCauseZipper!1321 (derivationStepZipper!958 z!4581 lt!2126765)))))

(declare-fun lt!2126900 () Unit!151586)

(declare-fun Unit!151594 () Unit!151586)

(assert (=> d!1667966 (= lt!2126900 Unit!151594)))

(assert (=> d!1667966 (= (getSuffix!3387 input!5817 lt!2126770) (tail!10137 lt!2126767))))

(declare-fun lt!2126884 () Unit!151586)

(declare-fun lt!2126894 () Unit!151586)

(assert (=> d!1667966 (= lt!2126884 lt!2126894)))

(declare-fun lt!2126892 () List!60170)

(assert (=> d!1667966 (= (tail!10137 lt!2126767) lt!2126892)))

(declare-fun lemmaSamePrefixThenSameSuffix!2688 (List!60170 List!60170 List!60170 List!60170 List!60170) Unit!151586)

(assert (=> d!1667966 (= lt!2126894 (lemmaSamePrefixThenSameSuffix!2688 lt!2126770 (tail!10137 lt!2126767) lt!2126770 lt!2126892 input!5817))))

(assert (=> d!1667966 (= lt!2126892 (getSuffix!3387 input!5817 lt!2126770))))

(declare-fun lt!2126899 () Unit!151586)

(declare-fun lt!2126908 () Unit!151586)

(assert (=> d!1667966 (= lt!2126899 lt!2126908)))

(assert (=> d!1667966 (isPrefix!5737 lt!2126770 (++!13128 lt!2126770 (tail!10137 lt!2126767)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3582 (List!60170 List!60170) Unit!151586)

(assert (=> d!1667966 (= lt!2126908 (lemmaConcatTwoListThenFirstIsPrefix!3582 lt!2126770 (tail!10137 lt!2126767)))))

(assert (=> d!1667966 (= (++!13128 lt!2126770 (tail!10137 lt!2126767)) input!5817)))

(assert (=> d!1667966 (= (findLongestMatchInnerZipper!262 (derivationStepZipper!958 z!4581 lt!2126765) lt!2126770 (+ 1 lt!2126769) (tail!10137 lt!2126767) input!5817 lt!2126764) lt!2126891)))

(declare-fun call!362720 () C!29478)

(declare-fun bm!362711 () Bool)

(declare-fun call!362721 () (Set Context!7976))

(assert (=> bm!362711 (= call!362721 (derivationStepZipper!958 (derivationStepZipper!958 z!4581 lt!2126765) call!362720))))

(declare-fun b!5169078 () Bool)

(declare-fun e!3220810 () tuple2!63762)

(assert (=> b!5169078 (= e!3220812 e!3220810)))

(declare-fun c!889599 () Bool)

(assert (=> b!5169078 (= c!889599 (= (+ 1 lt!2126769) lt!2126764))))

(declare-fun b!5169079 () Bool)

(declare-fun e!3220811 () Unit!151586)

(declare-fun Unit!151595 () Unit!151586)

(assert (=> b!5169079 (= e!3220811 Unit!151595)))

(declare-fun bm!362712 () Bool)

(declare-fun call!362723 () Unit!151586)

(assert (=> bm!362712 (= call!362723 (lemmaIsPrefixSameLengthThenSameList!1386 input!5817 lt!2126770 input!5817))))

(declare-fun b!5169080 () Bool)

(declare-fun c!889603 () Bool)

(declare-fun call!362722 () Bool)

(assert (=> b!5169080 (= c!889603 call!362722)))

(declare-fun lt!2126895 () Unit!151586)

(declare-fun lt!2126907 () Unit!151586)

(assert (=> b!5169080 (= lt!2126895 lt!2126907)))

(declare-fun lt!2126887 () C!29478)

(declare-fun lt!2126901 () List!60170)

(assert (=> b!5169080 (= (++!13128 (++!13128 lt!2126770 (Cons!60046 lt!2126887 Nil!60046)) lt!2126901) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1569 (List!60170 C!29478 List!60170 List!60170) Unit!151586)

(assert (=> b!5169080 (= lt!2126907 (lemmaMoveElementToOtherListKeepsConcatEq!1569 lt!2126770 lt!2126887 lt!2126901 input!5817))))

(assert (=> b!5169080 (= lt!2126901 (tail!10137 (tail!10137 lt!2126767)))))

(assert (=> b!5169080 (= lt!2126887 (head!11028 (tail!10137 lt!2126767)))))

(declare-fun lt!2126906 () Unit!151586)

(declare-fun lt!2126896 () Unit!151586)

(assert (=> b!5169080 (= lt!2126906 lt!2126896)))

(assert (=> b!5169080 (isPrefix!5737 (++!13128 lt!2126770 (Cons!60046 (head!11028 (getSuffix!3387 input!5817 lt!2126770)) Nil!60046)) input!5817)))

(assert (=> b!5169080 (= lt!2126896 (lemmaAddHeadSuffixToPrefixStillPrefix!1050 lt!2126770 input!5817))))

(declare-fun lt!2126888 () List!60170)

(assert (=> b!5169080 (= lt!2126888 (++!13128 lt!2126770 (Cons!60046 (head!11028 (tail!10137 lt!2126767)) Nil!60046)))))

(declare-fun lt!2126885 () Unit!151586)

(assert (=> b!5169080 (= lt!2126885 e!3220811)))

(declare-fun c!889598 () Bool)

(assert (=> b!5169080 (= c!889598 (= (size!39640 lt!2126770) (size!39640 input!5817)))))

(declare-fun lt!2126886 () Unit!151586)

(declare-fun lt!2126897 () Unit!151586)

(assert (=> b!5169080 (= lt!2126886 lt!2126897)))

(assert (=> b!5169080 (<= (size!39640 lt!2126770) (size!39640 input!5817))))

(assert (=> b!5169080 (= lt!2126897 (lemmaIsPrefixThenSmallerEqSize!900 lt!2126770 input!5817))))

(declare-fun e!3220813 () tuple2!63762)

(assert (=> b!5169080 (= e!3220810 e!3220813)))

(declare-fun b!5169081 () Bool)

(declare-fun e!3220814 () tuple2!63762)

(assert (=> b!5169081 (= e!3220814 (tuple2!63763 Nil!60046 input!5817))))

(declare-fun bm!362713 () Bool)

(declare-fun call!362716 () List!60170)

(assert (=> bm!362713 (= call!362716 (tail!10137 (tail!10137 lt!2126767)))))

(declare-fun bm!362714 () Bool)

(declare-fun call!362717 () Bool)

(assert (=> bm!362714 (= call!362717 (isPrefix!5737 input!5817 input!5817))))

(declare-fun bm!362715 () Bool)

(assert (=> bm!362715 (= call!362722 (nullableZipper!1150 (derivationStepZipper!958 z!4581 lt!2126765)))))

(declare-fun b!5169082 () Bool)

(declare-fun e!3220808 () Bool)

(assert (=> b!5169082 (= e!3220807 e!3220808)))

(declare-fun res!2197161 () Bool)

(assert (=> b!5169082 (=> res!2197161 e!3220808)))

(assert (=> b!5169082 (= res!2197161 (isEmpty!32148 (_1!35184 lt!2126891)))))

(declare-fun b!5169083 () Bool)

(declare-fun Unit!151596 () Unit!151586)

(assert (=> b!5169083 (= e!3220811 Unit!151596)))

(declare-fun lt!2126902 () Unit!151586)

(declare-fun call!362719 () Unit!151586)

(assert (=> b!5169083 (= lt!2126902 call!362719)))

(assert (=> b!5169083 call!362717))

(declare-fun lt!2126905 () Unit!151586)

(assert (=> b!5169083 (= lt!2126905 lt!2126902)))

(declare-fun lt!2126889 () Unit!151586)

(assert (=> b!5169083 (= lt!2126889 call!362723)))

(assert (=> b!5169083 (= input!5817 lt!2126770)))

(declare-fun lt!2126898 () Unit!151586)

(assert (=> b!5169083 (= lt!2126898 lt!2126889)))

(assert (=> b!5169083 false))

(declare-fun bm!362716 () Bool)

(assert (=> bm!362716 (= call!362720 (head!11028 (tail!10137 lt!2126767)))))

(declare-fun b!5169084 () Bool)

(assert (=> b!5169084 (= e!3220808 (>= (size!39640 (_1!35184 lt!2126891)) (size!39640 lt!2126770)))))

(declare-fun call!362718 () tuple2!63762)

(declare-fun bm!362717 () Bool)

(assert (=> bm!362717 (= call!362718 (findLongestMatchInnerZipper!262 call!362721 lt!2126888 (+ 1 lt!2126769 1) call!362716 input!5817 lt!2126764))))

(declare-fun b!5169085 () Bool)

(assert (=> b!5169085 (= e!3220812 (tuple2!63763 Nil!60046 input!5817))))

(declare-fun b!5169086 () Bool)

(declare-fun e!3220809 () tuple2!63762)

(assert (=> b!5169086 (= e!3220809 (tuple2!63763 lt!2126770 (tail!10137 lt!2126767)))))

(declare-fun b!5169087 () Bool)

(declare-fun lt!2126903 () tuple2!63762)

(assert (=> b!5169087 (= e!3220809 lt!2126903)))

(declare-fun b!5169088 () Bool)

(assert (=> b!5169088 (= e!3220813 call!362718)))

(declare-fun b!5169089 () Bool)

(assert (=> b!5169089 (= e!3220813 e!3220809)))

(assert (=> b!5169089 (= lt!2126903 call!362718)))

(declare-fun c!889601 () Bool)

(assert (=> b!5169089 (= c!889601 (isEmpty!32148 (_1!35184 lt!2126903)))))

(declare-fun b!5169090 () Bool)

(assert (=> b!5169090 (= e!3220814 (tuple2!63763 lt!2126770 Nil!60046))))

(declare-fun b!5169091 () Bool)

(declare-fun c!889602 () Bool)

(assert (=> b!5169091 (= c!889602 call!362722)))

(declare-fun lt!2126890 () Unit!151586)

(declare-fun lt!2126904 () Unit!151586)

(assert (=> b!5169091 (= lt!2126890 lt!2126904)))

(assert (=> b!5169091 (= input!5817 lt!2126770)))

(assert (=> b!5169091 (= lt!2126904 call!362723)))

(declare-fun lt!2126893 () Unit!151586)

(declare-fun lt!2126883 () Unit!151586)

(assert (=> b!5169091 (= lt!2126893 lt!2126883)))

(assert (=> b!5169091 call!362717))

(assert (=> b!5169091 (= lt!2126883 call!362719)))

(assert (=> b!5169091 (= e!3220810 e!3220814)))

(declare-fun bm!362718 () Bool)

(assert (=> bm!362718 (= call!362719 (lemmaIsPrefixRefl!3744 input!5817 input!5817))))

(assert (= (and d!1667966 c!889600) b!5169085))

(assert (= (and d!1667966 (not c!889600)) b!5169078))

(assert (= (and b!5169078 c!889599) b!5169091))

(assert (= (and b!5169078 (not c!889599)) b!5169080))

(assert (= (and b!5169091 c!889602) b!5169090))

(assert (= (and b!5169091 (not c!889602)) b!5169081))

(assert (= (and b!5169080 c!889598) b!5169083))

(assert (= (and b!5169080 (not c!889598)) b!5169079))

(assert (= (and b!5169080 c!889603) b!5169089))

(assert (= (and b!5169080 (not c!889603)) b!5169088))

(assert (= (and b!5169089 c!889601) b!5169086))

(assert (= (and b!5169089 (not c!889601)) b!5169087))

(assert (= (or b!5169089 b!5169088) bm!362713))

(assert (= (or b!5169089 b!5169088) bm!362716))

(assert (= (or b!5169089 b!5169088) bm!362711))

(assert (= (or b!5169089 b!5169088) bm!362717))

(assert (= (or b!5169091 b!5169083) bm!362718))

(assert (= (or b!5169091 b!5169080) bm!362715))

(assert (= (or b!5169091 b!5169083) bm!362714))

(assert (= (or b!5169091 b!5169083) bm!362712))

(assert (= (and d!1667966 res!2197162) b!5169082))

(assert (= (and b!5169082 (not res!2197161)) b!5169084))

(assert (=> bm!362715 m!6220394))

(declare-fun m!6220562 () Bool)

(assert (=> bm!362715 m!6220562))

(assert (=> bm!362713 m!6220396))

(declare-fun m!6220564 () Bool)

(assert (=> bm!362713 m!6220564))

(declare-fun m!6220566 () Bool)

(assert (=> b!5169080 m!6220566))

(declare-fun m!6220568 () Bool)

(assert (=> b!5169080 m!6220568))

(declare-fun m!6220570 () Bool)

(assert (=> b!5169080 m!6220570))

(declare-fun m!6220572 () Bool)

(assert (=> b!5169080 m!6220572))

(declare-fun m!6220574 () Bool)

(assert (=> b!5169080 m!6220574))

(declare-fun m!6220576 () Bool)

(assert (=> b!5169080 m!6220576))

(declare-fun m!6220578 () Bool)

(assert (=> b!5169080 m!6220578))

(assert (=> b!5169080 m!6220576))

(declare-fun m!6220580 () Bool)

(assert (=> b!5169080 m!6220580))

(assert (=> b!5169080 m!6220396))

(declare-fun m!6220582 () Bool)

(assert (=> b!5169080 m!6220582))

(assert (=> b!5169080 m!6220390))

(assert (=> b!5169080 m!6220396))

(assert (=> b!5169080 m!6220564))

(assert (=> b!5169080 m!6220568))

(declare-fun m!6220584 () Bool)

(assert (=> b!5169080 m!6220584))

(declare-fun m!6220586 () Bool)

(assert (=> b!5169080 m!6220586))

(assert (=> b!5169080 m!6220476))

(assert (=> b!5169080 m!6220572))

(declare-fun m!6220588 () Bool)

(assert (=> bm!362712 m!6220588))

(assert (=> bm!362711 m!6220394))

(declare-fun m!6220590 () Bool)

(assert (=> bm!362711 m!6220590))

(assert (=> bm!362718 m!6220376))

(declare-fun m!6220592 () Bool)

(assert (=> b!5169089 m!6220592))

(declare-fun m!6220594 () Bool)

(assert (=> b!5169084 m!6220594))

(assert (=> b!5169084 m!6220476))

(declare-fun m!6220596 () Bool)

(assert (=> bm!362717 m!6220596))

(assert (=> bm!362716 m!6220396))

(assert (=> bm!362716 m!6220582))

(assert (=> bm!362714 m!6220378))

(declare-fun m!6220598 () Bool)

(assert (=> b!5169082 m!6220598))

(assert (=> d!1667966 m!6220396))

(declare-fun m!6220600 () Bool)

(assert (=> d!1667966 m!6220600))

(assert (=> d!1667966 m!6220394))

(declare-fun m!6220602 () Bool)

(assert (=> d!1667966 m!6220602))

(assert (=> d!1667966 m!6220396))

(declare-fun m!6220604 () Bool)

(assert (=> d!1667966 m!6220604))

(assert (=> d!1667966 m!6220396))

(declare-fun m!6220606 () Bool)

(assert (=> d!1667966 m!6220606))

(declare-fun m!6220608 () Bool)

(assert (=> d!1667966 m!6220608))

(assert (=> d!1667966 m!6220606))

(declare-fun m!6220610 () Bool)

(assert (=> d!1667966 m!6220610))

(assert (=> d!1667966 m!6220568))

(assert (=> b!5168941 d!1667966))

(declare-fun d!1667968 () Bool)

(assert (=> d!1667968 true))

(declare-fun lambda!258024 () Int)

(declare-fun flatMap!439 ((Set Context!7976) Int) (Set Context!7976))

(assert (=> d!1667968 (= (derivationStepZipper!958 z!4581 lt!2126765) (flatMap!439 z!4581 lambda!258024))))

(declare-fun bs!1203269 () Bool)

(assert (= bs!1203269 d!1667968))

(declare-fun m!6220612 () Bool)

(assert (=> bs!1203269 m!6220612))

(assert (=> b!5168941 d!1667968))

(declare-fun d!1667970 () Bool)

(assert (=> d!1667970 (= (tail!10137 lt!2126767) (t!373323 lt!2126767))))

(assert (=> b!5168941 d!1667970))

(declare-fun bs!1203270 () Bool)

(declare-fun d!1667972 () Bool)

(assert (= bs!1203270 (and d!1667972 d!1667962)))

(declare-fun lambda!258025 () Int)

(assert (=> bs!1203270 (= lambda!258025 lambda!258021)))

(assert (=> d!1667972 (= (inv!79758 setElem!31886) (forall!14122 (exprs!4488 setElem!31886) lambda!258025))))

(declare-fun bs!1203271 () Bool)

(assert (= bs!1203271 d!1667972))

(declare-fun m!6220614 () Bool)

(assert (=> bs!1203271 m!6220614))

(assert (=> setNonEmpty!31886 d!1667972))

(declare-fun d!1667974 () Bool)

(declare-fun e!3220816 () Bool)

(assert (=> d!1667974 e!3220816))

(declare-fun res!2197164 () Bool)

(assert (=> d!1667974 (=> (not res!2197164) (not e!3220816))))

(declare-fun lt!2126909 () List!60170)

(assert (=> d!1667974 (= res!2197164 (= (content!10640 lt!2126909) (set.union (content!10640 testedP!294) (content!10640 lt!2126767))))))

(declare-fun e!3220815 () List!60170)

(assert (=> d!1667974 (= lt!2126909 e!3220815)))

(declare-fun c!889606 () Bool)

(assert (=> d!1667974 (= c!889606 (is-Nil!60046 testedP!294))))

(assert (=> d!1667974 (= (++!13128 testedP!294 lt!2126767) lt!2126909)))

(declare-fun b!5169096 () Bool)

(declare-fun res!2197163 () Bool)

(assert (=> b!5169096 (=> (not res!2197163) (not e!3220816))))

(assert (=> b!5169096 (= res!2197163 (= (size!39640 lt!2126909) (+ (size!39640 testedP!294) (size!39640 lt!2126767))))))

(declare-fun b!5169094 () Bool)

(assert (=> b!5169094 (= e!3220815 lt!2126767)))

(declare-fun b!5169095 () Bool)

(assert (=> b!5169095 (= e!3220815 (Cons!60046 (h!66494 testedP!294) (++!13128 (t!373323 testedP!294) lt!2126767)))))

(declare-fun b!5169097 () Bool)

(assert (=> b!5169097 (= e!3220816 (or (not (= lt!2126767 Nil!60046)) (= lt!2126909 testedP!294)))))

(assert (= (and d!1667974 c!889606) b!5169094))

(assert (= (and d!1667974 (not c!889606)) b!5169095))

(assert (= (and d!1667974 res!2197164) b!5169096))

(assert (= (and b!5169096 res!2197163) b!5169097))

(declare-fun m!6220616 () Bool)

(assert (=> d!1667974 m!6220616))

(assert (=> d!1667974 m!6220540))

(declare-fun m!6220618 () Bool)

(assert (=> d!1667974 m!6220618))

(declare-fun m!6220620 () Bool)

(assert (=> b!5169096 m!6220620))

(assert (=> b!5169096 m!6220384))

(declare-fun m!6220622 () Bool)

(assert (=> b!5169096 m!6220622))

(declare-fun m!6220624 () Bool)

(assert (=> b!5169095 m!6220624))

(assert (=> b!5168943 d!1667974))

(declare-fun d!1667976 () Bool)

(declare-fun c!889609 () Bool)

(assert (=> d!1667976 (= c!889609 (isEmpty!32148 testedP!294))))

(declare-fun e!3220819 () Bool)

(assert (=> d!1667976 (= (matchZipper!960 baseZ!62 testedP!294) e!3220819)))

(declare-fun b!5169102 () Bool)

(assert (=> b!5169102 (= e!3220819 (nullableZipper!1150 baseZ!62))))

(declare-fun b!5169103 () Bool)

(assert (=> b!5169103 (= e!3220819 (matchZipper!960 (derivationStepZipper!958 baseZ!62 (head!11028 testedP!294)) (tail!10137 testedP!294)))))

(assert (= (and d!1667976 c!889609) b!5169102))

(assert (= (and d!1667976 (not c!889609)) b!5169103))

(declare-fun m!6220626 () Bool)

(assert (=> d!1667976 m!6220626))

(declare-fun m!6220628 () Bool)

(assert (=> b!5169102 m!6220628))

(assert (=> b!5169103 m!6220558))

(assert (=> b!5169103 m!6220558))

(declare-fun m!6220630 () Bool)

(assert (=> b!5169103 m!6220630))

(assert (=> b!5169103 m!6220554))

(assert (=> b!5169103 m!6220630))

(assert (=> b!5169103 m!6220554))

(declare-fun m!6220632 () Bool)

(assert (=> b!5169103 m!6220632))

(assert (=> b!5168943 d!1667976))

(declare-fun d!1667978 () Bool)

(declare-fun c!889610 () Bool)

(assert (=> d!1667978 (= c!889610 (isEmpty!32148 Nil!60046))))

(declare-fun e!3220820 () Bool)

(assert (=> d!1667978 (= (matchZipper!960 lt!2126762 Nil!60046) e!3220820)))

(declare-fun b!5169104 () Bool)

(assert (=> b!5169104 (= e!3220820 (nullableZipper!1150 lt!2126762))))

(declare-fun b!5169105 () Bool)

(assert (=> b!5169105 (= e!3220820 (matchZipper!960 (derivationStepZipper!958 lt!2126762 (head!11028 Nil!60046)) (tail!10137 Nil!60046)))))

(assert (= (and d!1667978 c!889610) b!5169104))

(assert (= (and d!1667978 (not c!889610)) b!5169105))

(declare-fun m!6220634 () Bool)

(assert (=> d!1667978 m!6220634))

(declare-fun m!6220636 () Bool)

(assert (=> b!5169104 m!6220636))

(declare-fun m!6220638 () Bool)

(assert (=> b!5169105 m!6220638))

(assert (=> b!5169105 m!6220638))

(declare-fun m!6220640 () Bool)

(assert (=> b!5169105 m!6220640))

(declare-fun m!6220642 () Bool)

(assert (=> b!5169105 m!6220642))

(assert (=> b!5169105 m!6220640))

(assert (=> b!5169105 m!6220642))

(declare-fun m!6220644 () Bool)

(assert (=> b!5169105 m!6220644))

(assert (=> b!5168943 d!1667978))

(declare-fun d!1667980 () Bool)

(assert (=> d!1667980 (= (matchZipper!960 baseZ!62 testedP!294) (matchZipper!960 (derivationZipper!227 baseZ!62 testedP!294) Nil!60046))))

(declare-fun lt!2126912 () Unit!151586)

(declare-fun choose!38269 ((Set Context!7976) List!60170) Unit!151586)

(assert (=> d!1667980 (= lt!2126912 (choose!38269 baseZ!62 testedP!294))))

(assert (=> d!1667980 (= (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!41 baseZ!62 testedP!294) lt!2126912)))

(declare-fun bs!1203272 () Bool)

(assert (= bs!1203272 d!1667980))

(assert (=> bs!1203272 m!6220406))

(assert (=> bs!1203272 m!6220364))

(assert (=> bs!1203272 m!6220364))

(declare-fun m!6220646 () Bool)

(assert (=> bs!1203272 m!6220646))

(declare-fun m!6220648 () Bool)

(assert (=> bs!1203272 m!6220648))

(assert (=> b!5168943 d!1667980))

(declare-fun d!1667982 () Bool)

(declare-fun lt!2126915 () Int)

(assert (=> d!1667982 (>= lt!2126915 0)))

(declare-fun e!3220823 () Int)

(assert (=> d!1667982 (= lt!2126915 e!3220823)))

(declare-fun c!889613 () Bool)

(assert (=> d!1667982 (= c!889613 (is-Nil!60046 input!5817))))

(assert (=> d!1667982 (= (size!39640 input!5817) lt!2126915)))

(declare-fun b!5169110 () Bool)

(assert (=> b!5169110 (= e!3220823 0)))

(declare-fun b!5169111 () Bool)

(assert (=> b!5169111 (= e!3220823 (+ 1 (size!39640 (t!373323 input!5817))))))

(assert (= (and d!1667982 c!889613) b!5169110))

(assert (= (and d!1667982 (not c!889613)) b!5169111))

(declare-fun m!6220650 () Bool)

(assert (=> b!5169111 m!6220650))

(assert (=> b!5168944 d!1667982))

(declare-fun d!1667984 () Bool)

(assert (=> d!1667984 (= (isEmpty!32148 (_1!35184 (findLongestMatchInnerZipper!262 z!4581 testedP!294 lt!2126769 lt!2126767 input!5817 lt!2126764))) (is-Nil!60046 (_1!35184 (findLongestMatchInnerZipper!262 z!4581 testedP!294 lt!2126769 lt!2126767 input!5817 lt!2126764))))))

(assert (=> b!5168944 d!1667984))

(declare-fun d!1667986 () Bool)

(declare-fun lt!2126918 () List!60170)

(assert (=> d!1667986 (= (++!13128 testedP!294 lt!2126918) input!5817)))

(declare-fun e!3220826 () List!60170)

(assert (=> d!1667986 (= lt!2126918 e!3220826)))

(declare-fun c!889616 () Bool)

(assert (=> d!1667986 (= c!889616 (is-Cons!60046 testedP!294))))

(assert (=> d!1667986 (>= (size!39640 input!5817) (size!39640 testedP!294))))

(assert (=> d!1667986 (= (getSuffix!3387 input!5817 testedP!294) lt!2126918)))

(declare-fun b!5169116 () Bool)

(assert (=> b!5169116 (= e!3220826 (getSuffix!3387 (tail!10137 input!5817) (t!373323 testedP!294)))))

(declare-fun b!5169117 () Bool)

(assert (=> b!5169117 (= e!3220826 input!5817)))

(assert (= (and d!1667986 c!889616) b!5169116))

(assert (= (and d!1667986 (not c!889616)) b!5169117))

(declare-fun m!6220652 () Bool)

(assert (=> d!1667986 m!6220652))

(assert (=> d!1667986 m!6220390))

(assert (=> d!1667986 m!6220384))

(assert (=> b!5169116 m!6220472))

(assert (=> b!5169116 m!6220472))

(declare-fun m!6220654 () Bool)

(assert (=> b!5169116 m!6220654))

(assert (=> b!5168944 d!1667986))

(declare-fun d!1667988 () Bool)

(declare-fun lt!2126919 () Int)

(assert (=> d!1667988 (>= lt!2126919 0)))

(declare-fun e!3220827 () Int)

(assert (=> d!1667988 (= lt!2126919 e!3220827)))

(declare-fun c!889617 () Bool)

(assert (=> d!1667988 (= c!889617 (is-Nil!60046 testedP!294))))

(assert (=> d!1667988 (= (size!39640 testedP!294) lt!2126919)))

(declare-fun b!5169118 () Bool)

(assert (=> b!5169118 (= e!3220827 0)))

(declare-fun b!5169119 () Bool)

(assert (=> b!5169119 (= e!3220827 (+ 1 (size!39640 (t!373323 testedP!294))))))

(assert (= (and d!1667988 c!889617) b!5169118))

(assert (= (and d!1667988 (not c!889617)) b!5169119))

(declare-fun m!6220656 () Bool)

(assert (=> b!5169119 m!6220656))

(assert (=> b!5168944 d!1667988))

(declare-fun d!1667990 () Bool)

(declare-fun e!3220828 () Bool)

(assert (=> d!1667990 e!3220828))

(declare-fun res!2197166 () Bool)

(assert (=> d!1667990 (=> (not res!2197166) (not e!3220828))))

(declare-fun lt!2126928 () tuple2!63762)

(assert (=> d!1667990 (= res!2197166 (= (++!13128 (_1!35184 lt!2126928) (_2!35184 lt!2126928)) input!5817))))

(declare-fun e!3220833 () tuple2!63762)

(assert (=> d!1667990 (= lt!2126928 e!3220833)))

(declare-fun c!889620 () Bool)

(assert (=> d!1667990 (= c!889620 (lostCauseZipper!1321 z!4581))))

(declare-fun lt!2126937 () Unit!151586)

(declare-fun Unit!151597 () Unit!151586)

(assert (=> d!1667990 (= lt!2126937 Unit!151597)))

(assert (=> d!1667990 (= (getSuffix!3387 input!5817 testedP!294) lt!2126767)))

(declare-fun lt!2126921 () Unit!151586)

(declare-fun lt!2126931 () Unit!151586)

(assert (=> d!1667990 (= lt!2126921 lt!2126931)))

(declare-fun lt!2126929 () List!60170)

(assert (=> d!1667990 (= lt!2126767 lt!2126929)))

(assert (=> d!1667990 (= lt!2126931 (lemmaSamePrefixThenSameSuffix!2688 testedP!294 lt!2126767 testedP!294 lt!2126929 input!5817))))

(assert (=> d!1667990 (= lt!2126929 (getSuffix!3387 input!5817 testedP!294))))

(declare-fun lt!2126936 () Unit!151586)

(declare-fun lt!2126945 () Unit!151586)

(assert (=> d!1667990 (= lt!2126936 lt!2126945)))

(assert (=> d!1667990 (isPrefix!5737 testedP!294 (++!13128 testedP!294 lt!2126767))))

(assert (=> d!1667990 (= lt!2126945 (lemmaConcatTwoListThenFirstIsPrefix!3582 testedP!294 lt!2126767))))

(assert (=> d!1667990 (= (++!13128 testedP!294 lt!2126767) input!5817)))

(assert (=> d!1667990 (= (findLongestMatchInnerZipper!262 z!4581 testedP!294 lt!2126769 lt!2126767 input!5817 lt!2126764) lt!2126928)))

(declare-fun bm!362719 () Bool)

(declare-fun call!362729 () (Set Context!7976))

(declare-fun call!362728 () C!29478)

(assert (=> bm!362719 (= call!362729 (derivationStepZipper!958 z!4581 call!362728))))

(declare-fun b!5169120 () Bool)

(declare-fun e!3220831 () tuple2!63762)

(assert (=> b!5169120 (= e!3220833 e!3220831)))

(declare-fun c!889619 () Bool)

(assert (=> b!5169120 (= c!889619 (= lt!2126769 lt!2126764))))

(declare-fun b!5169121 () Bool)

(declare-fun e!3220832 () Unit!151586)

(declare-fun Unit!151598 () Unit!151586)

(assert (=> b!5169121 (= e!3220832 Unit!151598)))

(declare-fun bm!362720 () Bool)

(declare-fun call!362731 () Unit!151586)

(assert (=> bm!362720 (= call!362731 (lemmaIsPrefixSameLengthThenSameList!1386 input!5817 testedP!294 input!5817))))

(declare-fun b!5169122 () Bool)

(declare-fun c!889623 () Bool)

(declare-fun call!362730 () Bool)

(assert (=> b!5169122 (= c!889623 call!362730)))

(declare-fun lt!2126932 () Unit!151586)

(declare-fun lt!2126944 () Unit!151586)

(assert (=> b!5169122 (= lt!2126932 lt!2126944)))

(declare-fun lt!2126938 () List!60170)

(declare-fun lt!2126924 () C!29478)

(assert (=> b!5169122 (= (++!13128 (++!13128 testedP!294 (Cons!60046 lt!2126924 Nil!60046)) lt!2126938) input!5817)))

(assert (=> b!5169122 (= lt!2126944 (lemmaMoveElementToOtherListKeepsConcatEq!1569 testedP!294 lt!2126924 lt!2126938 input!5817))))

(assert (=> b!5169122 (= lt!2126938 (tail!10137 lt!2126767))))

(assert (=> b!5169122 (= lt!2126924 (head!11028 lt!2126767))))

(declare-fun lt!2126943 () Unit!151586)

(declare-fun lt!2126933 () Unit!151586)

(assert (=> b!5169122 (= lt!2126943 lt!2126933)))

(assert (=> b!5169122 (isPrefix!5737 (++!13128 testedP!294 (Cons!60046 (head!11028 (getSuffix!3387 input!5817 testedP!294)) Nil!60046)) input!5817)))

(assert (=> b!5169122 (= lt!2126933 (lemmaAddHeadSuffixToPrefixStillPrefix!1050 testedP!294 input!5817))))

(declare-fun lt!2126925 () List!60170)

(assert (=> b!5169122 (= lt!2126925 (++!13128 testedP!294 (Cons!60046 (head!11028 lt!2126767) Nil!60046)))))

(declare-fun lt!2126922 () Unit!151586)

(assert (=> b!5169122 (= lt!2126922 e!3220832)))

(declare-fun c!889618 () Bool)

(assert (=> b!5169122 (= c!889618 (= (size!39640 testedP!294) (size!39640 input!5817)))))

(declare-fun lt!2126923 () Unit!151586)

(declare-fun lt!2126934 () Unit!151586)

(assert (=> b!5169122 (= lt!2126923 lt!2126934)))

(assert (=> b!5169122 (<= (size!39640 testedP!294) (size!39640 input!5817))))

(assert (=> b!5169122 (= lt!2126934 (lemmaIsPrefixThenSmallerEqSize!900 testedP!294 input!5817))))

(declare-fun e!3220834 () tuple2!63762)

(assert (=> b!5169122 (= e!3220831 e!3220834)))

(declare-fun b!5169123 () Bool)

(declare-fun e!3220835 () tuple2!63762)

(assert (=> b!5169123 (= e!3220835 (tuple2!63763 Nil!60046 input!5817))))

(declare-fun bm!362721 () Bool)

(declare-fun call!362724 () List!60170)

(assert (=> bm!362721 (= call!362724 (tail!10137 lt!2126767))))

(declare-fun bm!362722 () Bool)

(declare-fun call!362725 () Bool)

(assert (=> bm!362722 (= call!362725 (isPrefix!5737 input!5817 input!5817))))

(declare-fun bm!362723 () Bool)

(assert (=> bm!362723 (= call!362730 (nullableZipper!1150 z!4581))))

(declare-fun b!5169124 () Bool)

(declare-fun e!3220829 () Bool)

(assert (=> b!5169124 (= e!3220828 e!3220829)))

(declare-fun res!2197165 () Bool)

(assert (=> b!5169124 (=> res!2197165 e!3220829)))

(assert (=> b!5169124 (= res!2197165 (isEmpty!32148 (_1!35184 lt!2126928)))))

(declare-fun b!5169125 () Bool)

(declare-fun Unit!151599 () Unit!151586)

(assert (=> b!5169125 (= e!3220832 Unit!151599)))

(declare-fun lt!2126939 () Unit!151586)

(declare-fun call!362727 () Unit!151586)

(assert (=> b!5169125 (= lt!2126939 call!362727)))

(assert (=> b!5169125 call!362725))

(declare-fun lt!2126942 () Unit!151586)

(assert (=> b!5169125 (= lt!2126942 lt!2126939)))

(declare-fun lt!2126926 () Unit!151586)

(assert (=> b!5169125 (= lt!2126926 call!362731)))

(assert (=> b!5169125 (= input!5817 testedP!294)))

(declare-fun lt!2126935 () Unit!151586)

(assert (=> b!5169125 (= lt!2126935 lt!2126926)))

(assert (=> b!5169125 false))

(declare-fun bm!362724 () Bool)

(assert (=> bm!362724 (= call!362728 (head!11028 lt!2126767))))

(declare-fun b!5169126 () Bool)

(assert (=> b!5169126 (= e!3220829 (>= (size!39640 (_1!35184 lt!2126928)) (size!39640 testedP!294)))))

(declare-fun bm!362725 () Bool)

(declare-fun call!362726 () tuple2!63762)

(assert (=> bm!362725 (= call!362726 (findLongestMatchInnerZipper!262 call!362729 lt!2126925 (+ lt!2126769 1) call!362724 input!5817 lt!2126764))))

(declare-fun b!5169127 () Bool)

(assert (=> b!5169127 (= e!3220833 (tuple2!63763 Nil!60046 input!5817))))

(declare-fun b!5169128 () Bool)

(declare-fun e!3220830 () tuple2!63762)

(assert (=> b!5169128 (= e!3220830 (tuple2!63763 testedP!294 lt!2126767))))

(declare-fun b!5169129 () Bool)

(declare-fun lt!2126940 () tuple2!63762)

(assert (=> b!5169129 (= e!3220830 lt!2126940)))

(declare-fun b!5169130 () Bool)

(assert (=> b!5169130 (= e!3220834 call!362726)))

(declare-fun b!5169131 () Bool)

(assert (=> b!5169131 (= e!3220834 e!3220830)))

(assert (=> b!5169131 (= lt!2126940 call!362726)))

(declare-fun c!889621 () Bool)

(assert (=> b!5169131 (= c!889621 (isEmpty!32148 (_1!35184 lt!2126940)))))

(declare-fun b!5169132 () Bool)

(assert (=> b!5169132 (= e!3220835 (tuple2!63763 testedP!294 Nil!60046))))

(declare-fun b!5169133 () Bool)

(declare-fun c!889622 () Bool)

(assert (=> b!5169133 (= c!889622 call!362730)))

(declare-fun lt!2126927 () Unit!151586)

(declare-fun lt!2126941 () Unit!151586)

(assert (=> b!5169133 (= lt!2126927 lt!2126941)))

(assert (=> b!5169133 (= input!5817 testedP!294)))

(assert (=> b!5169133 (= lt!2126941 call!362731)))

(declare-fun lt!2126930 () Unit!151586)

(declare-fun lt!2126920 () Unit!151586)

(assert (=> b!5169133 (= lt!2126930 lt!2126920)))

(assert (=> b!5169133 call!362725))

(assert (=> b!5169133 (= lt!2126920 call!362727)))

(assert (=> b!5169133 (= e!3220831 e!3220835)))

(declare-fun bm!362726 () Bool)

(assert (=> bm!362726 (= call!362727 (lemmaIsPrefixRefl!3744 input!5817 input!5817))))

(assert (= (and d!1667990 c!889620) b!5169127))

(assert (= (and d!1667990 (not c!889620)) b!5169120))

(assert (= (and b!5169120 c!889619) b!5169133))

(assert (= (and b!5169120 (not c!889619)) b!5169122))

(assert (= (and b!5169133 c!889622) b!5169132))

(assert (= (and b!5169133 (not c!889622)) b!5169123))

(assert (= (and b!5169122 c!889618) b!5169125))

(assert (= (and b!5169122 (not c!889618)) b!5169121))

(assert (= (and b!5169122 c!889623) b!5169131))

(assert (= (and b!5169122 (not c!889623)) b!5169130))

(assert (= (and b!5169131 c!889621) b!5169128))

(assert (= (and b!5169131 (not c!889621)) b!5169129))

(assert (= (or b!5169131 b!5169130) bm!362721))

(assert (= (or b!5169131 b!5169130) bm!362724))

(assert (= (or b!5169131 b!5169130) bm!362719))

(assert (= (or b!5169131 b!5169130) bm!362725))

(assert (= (or b!5169133 b!5169125) bm!362726))

(assert (= (or b!5169133 b!5169122) bm!362723))

(assert (= (or b!5169133 b!5169125) bm!362722))

(assert (= (or b!5169133 b!5169125) bm!362720))

(assert (= (and d!1667990 res!2197166) b!5169124))

(assert (= (and b!5169124 (not res!2197165)) b!5169126))

(assert (=> bm!362723 m!6220374))

(assert (=> bm!362721 m!6220396))

(declare-fun m!6220658 () Bool)

(assert (=> b!5169122 m!6220658))

(assert (=> b!5169122 m!6220386))

(assert (=> b!5169122 m!6220482))

(declare-fun m!6220660 () Bool)

(assert (=> b!5169122 m!6220660))

(declare-fun m!6220662 () Bool)

(assert (=> b!5169122 m!6220662))

(assert (=> b!5169122 m!6220486))

(assert (=> b!5169122 m!6220366))

(assert (=> b!5169122 m!6220486))

(assert (=> b!5169122 m!6220488))

(assert (=> b!5169122 m!6220372))

(assert (=> b!5169122 m!6220390))

(assert (=> b!5169122 m!6220396))

(assert (=> b!5169122 m!6220386))

(assert (=> b!5169122 m!6220412))

(declare-fun m!6220664 () Bool)

(assert (=> b!5169122 m!6220664))

(assert (=> b!5169122 m!6220384))

(assert (=> b!5169122 m!6220660))

(assert (=> bm!362720 m!6220380))

(declare-fun m!6220666 () Bool)

(assert (=> bm!362719 m!6220666))

(assert (=> bm!362726 m!6220376))

(declare-fun m!6220668 () Bool)

(assert (=> b!5169131 m!6220668))

(declare-fun m!6220670 () Bool)

(assert (=> b!5169126 m!6220670))

(assert (=> b!5169126 m!6220384))

(declare-fun m!6220672 () Bool)

(assert (=> bm!362725 m!6220672))

(assert (=> bm!362724 m!6220372))

(assert (=> bm!362722 m!6220378))

(declare-fun m!6220674 () Bool)

(assert (=> b!5169124 m!6220674))

(declare-fun m!6220676 () Bool)

(assert (=> d!1667990 m!6220676))

(declare-fun m!6220678 () Bool)

(assert (=> d!1667990 m!6220678))

(declare-fun m!6220680 () Bool)

(assert (=> d!1667990 m!6220680))

(assert (=> d!1667990 m!6220404))

(declare-fun m!6220682 () Bool)

(assert (=> d!1667990 m!6220682))

(assert (=> d!1667990 m!6220404))

(declare-fun m!6220684 () Bool)

(assert (=> d!1667990 m!6220684))

(assert (=> d!1667990 m!6220386))

(assert (=> b!5168944 d!1667990))

(declare-fun d!1667992 () Bool)

(assert (=> d!1667992 (isPrefix!5737 input!5817 input!5817)))

(declare-fun lt!2126948 () Unit!151586)

(declare-fun choose!38270 (List!60170 List!60170) Unit!151586)

(assert (=> d!1667992 (= lt!2126948 (choose!38270 input!5817 input!5817))))

(assert (=> d!1667992 (= (lemmaIsPrefixRefl!3744 input!5817 input!5817) lt!2126948)))

(declare-fun bs!1203273 () Bool)

(assert (= bs!1203273 d!1667992))

(assert (=> bs!1203273 m!6220378))

(declare-fun m!6220686 () Bool)

(assert (=> bs!1203273 m!6220686))

(assert (=> b!5168935 d!1667992))

(declare-fun b!5169136 () Bool)

(declare-fun e!3220838 () Bool)

(assert (=> b!5169136 (= e!3220838 (isPrefix!5737 (tail!10137 input!5817) (tail!10137 input!5817)))))

(declare-fun d!1667994 () Bool)

(declare-fun e!3220836 () Bool)

(assert (=> d!1667994 e!3220836))

(declare-fun res!2197167 () Bool)

(assert (=> d!1667994 (=> res!2197167 e!3220836)))

(declare-fun lt!2126949 () Bool)

(assert (=> d!1667994 (= res!2197167 (not lt!2126949))))

(declare-fun e!3220837 () Bool)

(assert (=> d!1667994 (= lt!2126949 e!3220837)))

(declare-fun res!2197169 () Bool)

(assert (=> d!1667994 (=> res!2197169 e!3220837)))

(assert (=> d!1667994 (= res!2197169 (is-Nil!60046 input!5817))))

(assert (=> d!1667994 (= (isPrefix!5737 input!5817 input!5817) lt!2126949)))

(declare-fun b!5169137 () Bool)

(assert (=> b!5169137 (= e!3220836 (>= (size!39640 input!5817) (size!39640 input!5817)))))

(declare-fun b!5169134 () Bool)

(assert (=> b!5169134 (= e!3220837 e!3220838)))

(declare-fun res!2197170 () Bool)

(assert (=> b!5169134 (=> (not res!2197170) (not e!3220838))))

(assert (=> b!5169134 (= res!2197170 (not (is-Nil!60046 input!5817)))))

(declare-fun b!5169135 () Bool)

(declare-fun res!2197168 () Bool)

(assert (=> b!5169135 (=> (not res!2197168) (not e!3220838))))

(assert (=> b!5169135 (= res!2197168 (= (head!11028 input!5817) (head!11028 input!5817)))))

(assert (= (and d!1667994 (not res!2197169)) b!5169134))

(assert (= (and b!5169134 res!2197170) b!5169135))

(assert (= (and b!5169135 res!2197168) b!5169136))

(assert (= (and d!1667994 (not res!2197167)) b!5169137))

(assert (=> b!5169136 m!6220472))

(assert (=> b!5169136 m!6220472))

(assert (=> b!5169136 m!6220472))

(assert (=> b!5169136 m!6220472))

(declare-fun m!6220688 () Bool)

(assert (=> b!5169136 m!6220688))

(assert (=> b!5169137 m!6220390))

(assert (=> b!5169137 m!6220390))

(assert (=> b!5169135 m!6220480))

(assert (=> b!5169135 m!6220480))

(assert (=> b!5168935 d!1667994))

(declare-fun d!1667996 () Bool)

(assert (=> d!1667996 (= input!5817 testedP!294)))

(declare-fun lt!2126952 () Unit!151586)

(declare-fun choose!38271 (List!60170 List!60170 List!60170) Unit!151586)

(assert (=> d!1667996 (= lt!2126952 (choose!38271 input!5817 testedP!294 input!5817))))

(assert (=> d!1667996 (isPrefix!5737 input!5817 input!5817)))

(assert (=> d!1667996 (= (lemmaIsPrefixSameLengthThenSameList!1386 input!5817 testedP!294 input!5817) lt!2126952)))

(declare-fun bs!1203274 () Bool)

(assert (= bs!1203274 d!1667996))

(declare-fun m!6220690 () Bool)

(assert (=> bs!1203274 m!6220690))

(assert (=> bs!1203274 m!6220378))

(assert (=> b!5168935 d!1667996))

(declare-fun b!5169142 () Bool)

(declare-fun e!3220841 () Bool)

(declare-fun tp!1450192 () Bool)

(declare-fun tp!1450193 () Bool)

(assert (=> b!5169142 (= e!3220841 (and tp!1450192 tp!1450193))))

(assert (=> b!5168942 (= tp!1450169 e!3220841)))

(assert (= (and b!5168942 (is-Cons!60045 (exprs!4488 setElem!31886))) b!5169142))

(declare-fun b!5169143 () Bool)

(declare-fun e!3220842 () Bool)

(declare-fun tp!1450194 () Bool)

(declare-fun tp!1450195 () Bool)

(assert (=> b!5169143 (= e!3220842 (and tp!1450194 tp!1450195))))

(assert (=> b!5168939 (= tp!1450165 e!3220842)))

(assert (= (and b!5168939 (is-Cons!60045 (exprs!4488 setElem!31885))) b!5169143))

(declare-fun b!5169148 () Bool)

(declare-fun e!3220845 () Bool)

(declare-fun tp!1450198 () Bool)

(assert (=> b!5169148 (= e!3220845 (and tp_is_empty!38461 tp!1450198))))

(assert (=> b!5168937 (= tp!1450168 e!3220845)))

(assert (= (and b!5168937 (is-Cons!60046 (t!373323 input!5817))) b!5169148))

(declare-fun condSetEmpty!31895 () Bool)

(assert (=> setNonEmpty!31885 (= condSetEmpty!31895 (= setRest!31886 (as set.empty (Set Context!7976))))))

(declare-fun setRes!31895 () Bool)

(assert (=> setNonEmpty!31885 (= tp!1450164 setRes!31895)))

(declare-fun setIsEmpty!31895 () Bool)

(assert (=> setIsEmpty!31895 setRes!31895))

(declare-fun setElem!31895 () Context!7976)

(declare-fun setNonEmpty!31895 () Bool)

(declare-fun e!3220848 () Bool)

(declare-fun tp!1450203 () Bool)

(assert (=> setNonEmpty!31895 (= setRes!31895 (and tp!1450203 (inv!79758 setElem!31895) e!3220848))))

(declare-fun setRest!31895 () (Set Context!7976))

(assert (=> setNonEmpty!31895 (= setRest!31886 (set.union (set.insert setElem!31895 (as set.empty (Set Context!7976))) setRest!31895))))

(declare-fun b!5169153 () Bool)

(declare-fun tp!1450204 () Bool)

(assert (=> b!5169153 (= e!3220848 tp!1450204)))

(assert (= (and setNonEmpty!31885 condSetEmpty!31895) setIsEmpty!31895))

(assert (= (and setNonEmpty!31885 (not condSetEmpty!31895)) setNonEmpty!31895))

(assert (= setNonEmpty!31895 b!5169153))

(declare-fun m!6220692 () Bool)

(assert (=> setNonEmpty!31895 m!6220692))

(declare-fun condSetEmpty!31896 () Bool)

(assert (=> setNonEmpty!31886 (= condSetEmpty!31896 (= setRest!31885 (as set.empty (Set Context!7976))))))

(declare-fun setRes!31896 () Bool)

(assert (=> setNonEmpty!31886 (= tp!1450166 setRes!31896)))

(declare-fun setIsEmpty!31896 () Bool)

(assert (=> setIsEmpty!31896 setRes!31896))

(declare-fun setElem!31896 () Context!7976)

(declare-fun setNonEmpty!31896 () Bool)

(declare-fun tp!1450205 () Bool)

(declare-fun e!3220849 () Bool)

(assert (=> setNonEmpty!31896 (= setRes!31896 (and tp!1450205 (inv!79758 setElem!31896) e!3220849))))

(declare-fun setRest!31896 () (Set Context!7976))

(assert (=> setNonEmpty!31896 (= setRest!31885 (set.union (set.insert setElem!31896 (as set.empty (Set Context!7976))) setRest!31896))))

(declare-fun b!5169154 () Bool)

(declare-fun tp!1450206 () Bool)

(assert (=> b!5169154 (= e!3220849 tp!1450206)))

(assert (= (and setNonEmpty!31886 condSetEmpty!31896) setIsEmpty!31896))

(assert (= (and setNonEmpty!31886 (not condSetEmpty!31896)) setNonEmpty!31896))

(assert (= setNonEmpty!31896 b!5169154))

(declare-fun m!6220694 () Bool)

(assert (=> setNonEmpty!31896 m!6220694))

(declare-fun b!5169155 () Bool)

(declare-fun e!3220850 () Bool)

(declare-fun tp!1450207 () Bool)

(assert (=> b!5169155 (= e!3220850 (and tp_is_empty!38461 tp!1450207))))

(assert (=> b!5168940 (= tp!1450167 e!3220850)))

(assert (= (and b!5168940 (is-Cons!60046 (t!373323 testedP!294))) b!5169155))

(push 1)

(assert (not b!5169143))

(assert (not b!5169044))

(assert (not bm!362719))

(assert (not b!5169084))

(assert (not bm!362718))

(assert (not d!1667974))

(assert (not b!5169089))

(assert (not b!5169038))

(assert (not bm!362724))

(assert (not d!1667990))

(assert (not b!5169048))

(assert (not d!1667978))

(assert (not b!5169135))

(assert (not bm!362720))

(assert (not d!1667980))

(assert (not setNonEmpty!31895))

(assert (not bm!362716))

(assert (not bm!362722))

(assert (not b!5169119))

(assert (not b!5169105))

(assert (not b!5169082))

(assert (not b!5169124))

(assert (not b!5169104))

(assert (not b!5169096))

(assert (not d!1667968))

(assert (not b!5169111))

(assert (not b!5169080))

(assert (not bm!362717))

(assert (not setNonEmpty!31896))

(assert (not b!5168995))

(assert (not d!1667996))

(assert (not b!5169122))

(assert (not bm!362726))

(assert (not d!1667934))

(assert (not bm!362713))

(assert (not bm!362711))

(assert (not b!5169102))

(assert (not b!5169154))

(assert (not b!5169095))

(assert (not b!5168993))

(assert (not b!5169131))

(assert (not b!5168994))

(assert (not d!1667972))

(assert (not b!5169136))

(assert (not bm!362715))

(assert (not bm!362721))

(assert (not bm!362712))

(assert (not b!5169047))

(assert (not d!1667992))

(assert (not d!1667962))

(assert (not b!5169142))

(assert (not b!5169037))

(assert (not d!1667976))

(assert (not d!1667942))

(assert (not b!5169049))

(assert (not b!5169137))

(assert (not b!5169155))

(assert (not bm!362725))

(assert (not d!1667956))

(assert tp_is_empty!38461)

(assert (not bm!362723))

(assert (not d!1667940))

(assert (not b!5169103))

(assert (not b!5169116))

(assert (not bm!362714))

(assert (not d!1667966))

(assert (not b!5169126))

(assert (not b!5169153))

(assert (not d!1667986))

(assert (not b!5169148))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

