; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411986 () Bool)

(assert start!411986)

(declare-fun b!4289942 () Bool)

(declare-fun b_free!127367 () Bool)

(declare-fun b_next!128071 () Bool)

(assert (=> b!4289942 (= b_free!127367 (not b_next!128071))))

(declare-fun tp!1315331 () Bool)

(declare-fun b_and!338583 () Bool)

(assert (=> b!4289942 (= tp!1315331 b_and!338583)))

(declare-fun b!4289934 () Bool)

(declare-fun b_free!127369 () Bool)

(declare-fun b_next!128073 () Bool)

(assert (=> b!4289934 (= b_free!127369 (not b_next!128073))))

(declare-fun tp!1315336 () Bool)

(declare-fun b_and!338585 () Bool)

(assert (=> b!4289934 (= tp!1315336 b_and!338585)))

(declare-fun b!4289933 () Bool)

(declare-fun e!2664756 () Bool)

(declare-datatypes ((C!26096 0))(
  ( (C!26097 (val!15374 Int)) )
))
(declare-datatypes ((Regex!12949 0))(
  ( (ElementMatch!12949 (c!730246 C!26096)) (Concat!21268 (regOne!26410 Regex!12949) (regTwo!26410 Regex!12949)) (EmptyExpr!12949) (Star!12949 (reg!13278 Regex!12949)) (EmptyLang!12949) (Union!12949 (regOne!26411 Regex!12949) (regTwo!26411 Regex!12949)) )
))
(declare-datatypes ((List!47787 0))(
  ( (Nil!47663) (Cons!47663 (h!53083 Regex!12949) (t!354388 List!47787)) )
))
(declare-datatypes ((Context!5678 0))(
  ( (Context!5679 (exprs!3339 List!47787)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45288 0))(
  ( (tuple2!45289 (_1!25855 (InoxSet Context!5678)) (_2!25855 Int)) )
))
(declare-datatypes ((tuple2!45290 0))(
  ( (tuple2!45291 (_1!25856 tuple2!45288) (_2!25856 Int)) )
))
(declare-datatypes ((List!47788 0))(
  ( (Nil!47664) (Cons!47664 (h!53084 tuple2!45290) (t!354389 List!47788)) )
))
(declare-datatypes ((array!15676 0))(
  ( (array!15677 (arr!7002 (Array (_ BitVec 32) List!47788)) (size!34972 (_ BitVec 32))) )
))
(declare-datatypes ((List!47789 0))(
  ( (Nil!47665) (Cons!47665 (h!53085 C!26096) (t!354390 List!47789)) )
))
(declare-datatypes ((IArray!28843 0))(
  ( (IArray!28844 (innerList!14479 List!47789)) )
))
(declare-datatypes ((Conc!14391 0))(
  ( (Node!14391 (left!35398 Conc!14391) (right!35728 Conc!14391) (csize!29012 Int) (cheight!14602 Int)) (Leaf!22267 (xs!17697 IArray!28843) (csize!29013 Int)) (Empty!14391) )
))
(declare-datatypes ((BalanceConc!28272 0))(
  ( (BalanceConc!28273 (c!730247 Conc!14391)) )
))
(declare-datatypes ((array!15678 0))(
  ( (array!15679 (arr!7003 (Array (_ BitVec 32) (_ BitVec 64))) (size!34973 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4302 0))(
  ( (HashableExt!4301 (__x!29183 Int)) )
))
(declare-datatypes ((LongMapFixedSize!8772 0))(
  ( (LongMapFixedSize!8773 (defaultEntry!4771 Int) (mask!12830 (_ BitVec 32)) (extraKeys!4635 (_ BitVec 32)) (zeroValue!4645 List!47788) (minValue!4645 List!47788) (_size!8815 (_ BitVec 32)) (_keys!4686 array!15678) (_values!4667 array!15676) (_vacant!4447 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17353 0))(
  ( (Cell!17354 (v!41582 LongMapFixedSize!8772)) )
))
(declare-datatypes ((MutLongMap!4386 0))(
  ( (LongMap!4386 (underlying!9001 Cell!17353)) (MutLongMapExt!4385 (__x!29184 Int)) )
))
(declare-datatypes ((Cell!17355 0))(
  ( (Cell!17356 (v!41583 MutLongMap!4386)) )
))
(declare-datatypes ((MutableMap!4292 0))(
  ( (MutableMapExt!4291 (__x!29185 Int)) (HashMap!4292 (underlying!9002 Cell!17355) (hashF!6334 Hashable!4302) (_size!8816 (_ BitVec 32)) (defaultValue!4463 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!470 0))(
  ( (CacheFindLongestMatch!471 (cache!4432 MutableMap!4292) (totalInput!4349 BalanceConc!28272)) )
))
(declare-fun cacheFindLongestMatch!171 () CacheFindLongestMatch!470)

(declare-fun tp!1315335 () Bool)

(declare-fun inv!63152 (Conc!14391) Bool)

(assert (=> b!4289933 (= e!2664756 (and (inv!63152 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))) tp!1315335))))

(declare-fun e!2664746 () Bool)

(declare-fun e!2664745 () Bool)

(assert (=> b!4289934 (= e!2664746 (and e!2664745 tp!1315336))))

(declare-fun b!4289935 () Bool)

(declare-fun e!2664753 () Bool)

(declare-fun lt!1516754 () MutLongMap!4386)

(get-info :version)

(assert (=> b!4289935 (= e!2664745 (and e!2664753 ((_ is LongMap!4386) lt!1516754)))))

(assert (=> b!4289935 (= lt!1516754 (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171))))))

(declare-fun b!4289936 () Bool)

(declare-fun e!2664751 () Bool)

(declare-fun tp!1315328 () Bool)

(declare-fun mapRes!19754 () Bool)

(assert (=> b!4289936 (= e!2664751 (and tp!1315328 mapRes!19754))))

(declare-fun condMapEmpty!19754 () Bool)

(declare-fun mapDefault!19754 () List!47788)

(assert (=> b!4289936 (= condMapEmpty!19754 (= (arr!7002 (_values!4667 (v!41582 (underlying!9001 (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171))))))) ((as const (Array (_ BitVec 32) List!47788)) mapDefault!19754)))))

(declare-fun res!1759488 () Bool)

(declare-fun e!2664748 () Bool)

(assert (=> start!411986 (=> (not res!1759488) (not e!2664748))))

(declare-fun input!5500 () BalanceConc!28272)

(declare-fun totalInput!793 () BalanceConc!28272)

(declare-fun isSuffix!1035 (List!47789 List!47789) Bool)

(declare-fun list!17354 (BalanceConc!28272) List!47789)

(assert (=> start!411986 (= res!1759488 (isSuffix!1035 (list!17354 input!5500) (list!17354 totalInput!793)))))

(assert (=> start!411986 e!2664748))

(declare-fun e!2664747 () Bool)

(declare-fun inv!63153 (BalanceConc!28272) Bool)

(assert (=> start!411986 (and (inv!63153 input!5500) e!2664747)))

(declare-fun e!2664754 () Bool)

(assert (=> start!411986 (and (inv!63153 totalInput!793) e!2664754)))

(declare-fun e!2664749 () Bool)

(declare-fun inv!63154 (CacheFindLongestMatch!470) Bool)

(assert (=> start!411986 (and (inv!63154 cacheFindLongestMatch!171) e!2664749)))

(declare-fun b!4289937 () Bool)

(declare-fun tp!1315332 () Bool)

(assert (=> b!4289937 (= e!2664754 (and (inv!63152 (c!730247 totalInput!793)) tp!1315332))))

(declare-fun b!4289938 () Bool)

(assert (=> b!4289938 (= e!2664749 (and e!2664746 (inv!63153 (totalInput!4349 cacheFindLongestMatch!171)) e!2664756))))

(declare-fun mapIsEmpty!19754 () Bool)

(assert (=> mapIsEmpty!19754 mapRes!19754))

(declare-fun b!4289939 () Bool)

(declare-fun tp!1315334 () Bool)

(assert (=> b!4289939 (= e!2664747 (and (inv!63152 (c!730247 input!5500)) tp!1315334))))

(declare-fun b!4289940 () Bool)

(declare-fun e!2664755 () Bool)

(declare-fun e!2664752 () Bool)

(assert (=> b!4289940 (= e!2664755 e!2664752)))

(declare-fun b!4289941 () Bool)

(declare-fun res!1759489 () Bool)

(assert (=> b!4289941 (=> (not res!1759489) (not e!2664748))))

(assert (=> b!4289941 (= res!1759489 (= (totalInput!4349 cacheFindLongestMatch!171) totalInput!793))))

(declare-fun tp!1315329 () Bool)

(declare-fun tp!1315333 () Bool)

(declare-fun array_inv!5023 (array!15678) Bool)

(declare-fun array_inv!5024 (array!15676) Bool)

(assert (=> b!4289942 (= e!2664752 (and tp!1315331 tp!1315329 tp!1315333 (array_inv!5023 (_keys!4686 (v!41582 (underlying!9001 (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171))))))) (array_inv!5024 (_values!4667 (v!41582 (underlying!9001 (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171))))))) e!2664751))))

(declare-fun mapNonEmpty!19754 () Bool)

(declare-fun tp!1315327 () Bool)

(declare-fun tp!1315330 () Bool)

(assert (=> mapNonEmpty!19754 (= mapRes!19754 (and tp!1315327 tp!1315330))))

(declare-fun mapRest!19754 () (Array (_ BitVec 32) List!47788))

(declare-fun mapKey!19754 () (_ BitVec 32))

(declare-fun mapValue!19754 () List!47788)

(assert (=> mapNonEmpty!19754 (= (arr!7002 (_values!4667 (v!41582 (underlying!9001 (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171))))))) (store mapRest!19754 mapKey!19754 mapValue!19754))))

(declare-fun b!4289943 () Bool)

(assert (=> b!4289943 (= e!2664753 e!2664755)))

(declare-fun b!4289944 () Bool)

(declare-fun lt!1516756 () Int)

(declare-fun lt!1516755 () Int)

(assert (=> b!4289944 (= e!2664748 (or (< lt!1516756 0) (> lt!1516756 lt!1516755)))))

(declare-fun size!34974 (BalanceConc!28272) Int)

(assert (=> b!4289944 (= lt!1516756 (- lt!1516755 (size!34974 input!5500)))))

(assert (=> b!4289944 (= lt!1516755 (size!34974 totalInput!793))))

(assert (= (and start!411986 res!1759488) b!4289941))

(assert (= (and b!4289941 res!1759489) b!4289944))

(assert (= start!411986 b!4289939))

(assert (= start!411986 b!4289937))

(assert (= (and b!4289936 condMapEmpty!19754) mapIsEmpty!19754))

(assert (= (and b!4289936 (not condMapEmpty!19754)) mapNonEmpty!19754))

(assert (= b!4289942 b!4289936))

(assert (= b!4289940 b!4289942))

(assert (= b!4289943 b!4289940))

(assert (= (and b!4289935 ((_ is LongMap!4386) (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171))))) b!4289943))

(assert (= b!4289934 b!4289935))

(assert (= (and b!4289938 ((_ is HashMap!4292) (cache!4432 cacheFindLongestMatch!171))) b!4289934))

(assert (= b!4289938 b!4289933))

(assert (= start!411986 b!4289938))

(declare-fun m!4884401 () Bool)

(assert (=> mapNonEmpty!19754 m!4884401))

(declare-fun m!4884403 () Bool)

(assert (=> b!4289939 m!4884403))

(declare-fun m!4884405 () Bool)

(assert (=> b!4289938 m!4884405))

(declare-fun m!4884407 () Bool)

(assert (=> start!411986 m!4884407))

(declare-fun m!4884409 () Bool)

(assert (=> start!411986 m!4884409))

(declare-fun m!4884411 () Bool)

(assert (=> start!411986 m!4884411))

(assert (=> start!411986 m!4884407))

(declare-fun m!4884413 () Bool)

(assert (=> start!411986 m!4884413))

(declare-fun m!4884415 () Bool)

(assert (=> start!411986 m!4884415))

(assert (=> start!411986 m!4884409))

(declare-fun m!4884417 () Bool)

(assert (=> start!411986 m!4884417))

(declare-fun m!4884419 () Bool)

(assert (=> b!4289944 m!4884419))

(declare-fun m!4884421 () Bool)

(assert (=> b!4289944 m!4884421))

(declare-fun m!4884423 () Bool)

(assert (=> b!4289937 m!4884423))

(declare-fun m!4884425 () Bool)

(assert (=> b!4289942 m!4884425))

(declare-fun m!4884427 () Bool)

(assert (=> b!4289942 m!4884427))

(declare-fun m!4884429 () Bool)

(assert (=> b!4289933 m!4884429))

(check-sat (not b!4289936) (not b!4289933) (not b_next!128073) (not mapNonEmpty!19754) (not b!4289939) b_and!338585 (not b!4289937) (not b_next!128071) (not start!411986) (not b!4289942) b_and!338583 (not b!4289938) (not b!4289944))
(check-sat b_and!338585 b_and!338583 (not b_next!128071) (not b_next!128073))
(get-model)

(declare-fun d!1265494 () Bool)

(declare-fun c!730250 () Bool)

(assert (=> d!1265494 (= c!730250 ((_ is Node!14391) (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))))

(declare-fun e!2664761 () Bool)

(assert (=> d!1265494 (= (inv!63152 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))) e!2664761)))

(declare-fun b!4289951 () Bool)

(declare-fun inv!63155 (Conc!14391) Bool)

(assert (=> b!4289951 (= e!2664761 (inv!63155 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))))

(declare-fun b!4289952 () Bool)

(declare-fun e!2664762 () Bool)

(assert (=> b!4289952 (= e!2664761 e!2664762)))

(declare-fun res!1759492 () Bool)

(assert (=> b!4289952 (= res!1759492 (not ((_ is Leaf!22267) (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))))))

(assert (=> b!4289952 (=> res!1759492 e!2664762)))

(declare-fun b!4289953 () Bool)

(declare-fun inv!63156 (Conc!14391) Bool)

(assert (=> b!4289953 (= e!2664762 (inv!63156 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))))

(assert (= (and d!1265494 c!730250) b!4289951))

(assert (= (and d!1265494 (not c!730250)) b!4289952))

(assert (= (and b!4289952 (not res!1759492)) b!4289953))

(declare-fun m!4884431 () Bool)

(assert (=> b!4289951 m!4884431))

(declare-fun m!4884433 () Bool)

(assert (=> b!4289953 m!4884433))

(assert (=> b!4289933 d!1265494))

(declare-fun d!1265496 () Bool)

(declare-fun isBalanced!3882 (Conc!14391) Bool)

(assert (=> d!1265496 (= (inv!63153 (totalInput!4349 cacheFindLongestMatch!171)) (isBalanced!3882 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))))

(declare-fun bs!602911 () Bool)

(assert (= bs!602911 d!1265496))

(declare-fun m!4884435 () Bool)

(assert (=> bs!602911 m!4884435))

(assert (=> b!4289938 d!1265496))

(declare-fun d!1265498 () Bool)

(assert (=> d!1265498 (= (array_inv!5023 (_keys!4686 (v!41582 (underlying!9001 (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171))))))) (bvsge (size!34973 (_keys!4686 (v!41582 (underlying!9001 (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171))))))) #b00000000000000000000000000000000))))

(assert (=> b!4289942 d!1265498))

(declare-fun d!1265500 () Bool)

(assert (=> d!1265500 (= (array_inv!5024 (_values!4667 (v!41582 (underlying!9001 (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171))))))) (bvsge (size!34972 (_values!4667 (v!41582 (underlying!9001 (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171))))))) #b00000000000000000000000000000000))))

(assert (=> b!4289942 d!1265500))

(declare-fun d!1265502 () Bool)

(declare-fun c!730251 () Bool)

(assert (=> d!1265502 (= c!730251 ((_ is Node!14391) (c!730247 input!5500)))))

(declare-fun e!2664763 () Bool)

(assert (=> d!1265502 (= (inv!63152 (c!730247 input!5500)) e!2664763)))

(declare-fun b!4289954 () Bool)

(assert (=> b!4289954 (= e!2664763 (inv!63155 (c!730247 input!5500)))))

(declare-fun b!4289955 () Bool)

(declare-fun e!2664764 () Bool)

(assert (=> b!4289955 (= e!2664763 e!2664764)))

(declare-fun res!1759493 () Bool)

(assert (=> b!4289955 (= res!1759493 (not ((_ is Leaf!22267) (c!730247 input!5500))))))

(assert (=> b!4289955 (=> res!1759493 e!2664764)))

(declare-fun b!4289956 () Bool)

(assert (=> b!4289956 (= e!2664764 (inv!63156 (c!730247 input!5500)))))

(assert (= (and d!1265502 c!730251) b!4289954))

(assert (= (and d!1265502 (not c!730251)) b!4289955))

(assert (= (and b!4289955 (not res!1759493)) b!4289956))

(declare-fun m!4884437 () Bool)

(assert (=> b!4289954 m!4884437))

(declare-fun m!4884439 () Bool)

(assert (=> b!4289956 m!4884439))

(assert (=> b!4289939 d!1265502))

(declare-fun d!1265504 () Bool)

(declare-fun res!1759496 () Bool)

(declare-fun e!2664767 () Bool)

(assert (=> d!1265504 (=> (not res!1759496) (not e!2664767))))

(assert (=> d!1265504 (= res!1759496 ((_ is HashMap!4292) (cache!4432 cacheFindLongestMatch!171)))))

(assert (=> d!1265504 (= (inv!63154 cacheFindLongestMatch!171) e!2664767)))

(declare-fun b!4289959 () Bool)

(declare-fun validCacheMapFindLongestMatch!75 (MutableMap!4292 BalanceConc!28272) Bool)

(assert (=> b!4289959 (= e!2664767 (validCacheMapFindLongestMatch!75 (cache!4432 cacheFindLongestMatch!171) (totalInput!4349 cacheFindLongestMatch!171)))))

(assert (= (and d!1265504 res!1759496) b!4289959))

(declare-fun m!4884441 () Bool)

(assert (=> b!4289959 m!4884441))

(assert (=> start!411986 d!1265504))

(declare-fun d!1265506 () Bool)

(declare-fun list!17355 (Conc!14391) List!47789)

(assert (=> d!1265506 (= (list!17354 input!5500) (list!17355 (c!730247 input!5500)))))

(declare-fun bs!602912 () Bool)

(assert (= bs!602912 d!1265506))

(declare-fun m!4884443 () Bool)

(assert (=> bs!602912 m!4884443))

(assert (=> start!411986 d!1265506))

(declare-fun d!1265508 () Bool)

(assert (=> d!1265508 (= (inv!63153 totalInput!793) (isBalanced!3882 (c!730247 totalInput!793)))))

(declare-fun bs!602913 () Bool)

(assert (= bs!602913 d!1265508))

(declare-fun m!4884445 () Bool)

(assert (=> bs!602913 m!4884445))

(assert (=> start!411986 d!1265508))

(declare-fun d!1265510 () Bool)

(assert (=> d!1265510 (= (list!17354 totalInput!793) (list!17355 (c!730247 totalInput!793)))))

(declare-fun bs!602914 () Bool)

(assert (= bs!602914 d!1265510))

(declare-fun m!4884447 () Bool)

(assert (=> bs!602914 m!4884447))

(assert (=> start!411986 d!1265510))

(declare-fun d!1265512 () Bool)

(declare-fun e!2664770 () Bool)

(assert (=> d!1265512 e!2664770))

(declare-fun res!1759499 () Bool)

(assert (=> d!1265512 (=> res!1759499 e!2664770)))

(declare-fun lt!1516759 () Bool)

(assert (=> d!1265512 (= res!1759499 (not lt!1516759))))

(declare-fun drop!2191 (List!47789 Int) List!47789)

(declare-fun size!34975 (List!47789) Int)

(assert (=> d!1265512 (= lt!1516759 (= (list!17354 input!5500) (drop!2191 (list!17354 totalInput!793) (- (size!34975 (list!17354 totalInput!793)) (size!34975 (list!17354 input!5500))))))))

(assert (=> d!1265512 (= (isSuffix!1035 (list!17354 input!5500) (list!17354 totalInput!793)) lt!1516759)))

(declare-fun b!4289962 () Bool)

(assert (=> b!4289962 (= e!2664770 (>= (size!34975 (list!17354 totalInput!793)) (size!34975 (list!17354 input!5500))))))

(assert (= (and d!1265512 (not res!1759499)) b!4289962))

(assert (=> d!1265512 m!4884409))

(declare-fun m!4884449 () Bool)

(assert (=> d!1265512 m!4884449))

(assert (=> d!1265512 m!4884407))

(declare-fun m!4884451 () Bool)

(assert (=> d!1265512 m!4884451))

(assert (=> d!1265512 m!4884409))

(declare-fun m!4884453 () Bool)

(assert (=> d!1265512 m!4884453))

(assert (=> b!4289962 m!4884409))

(assert (=> b!4289962 m!4884449))

(assert (=> b!4289962 m!4884407))

(assert (=> b!4289962 m!4884451))

(assert (=> start!411986 d!1265512))

(declare-fun d!1265514 () Bool)

(assert (=> d!1265514 (= (inv!63153 input!5500) (isBalanced!3882 (c!730247 input!5500)))))

(declare-fun bs!602915 () Bool)

(assert (= bs!602915 d!1265514))

(declare-fun m!4884455 () Bool)

(assert (=> bs!602915 m!4884455))

(assert (=> start!411986 d!1265514))

(declare-fun d!1265516 () Bool)

(declare-fun lt!1516762 () Int)

(assert (=> d!1265516 (= lt!1516762 (size!34975 (list!17354 input!5500)))))

(declare-fun size!34976 (Conc!14391) Int)

(assert (=> d!1265516 (= lt!1516762 (size!34976 (c!730247 input!5500)))))

(assert (=> d!1265516 (= (size!34974 input!5500) lt!1516762)))

(declare-fun bs!602916 () Bool)

(assert (= bs!602916 d!1265516))

(assert (=> bs!602916 m!4884407))

(assert (=> bs!602916 m!4884407))

(assert (=> bs!602916 m!4884451))

(declare-fun m!4884457 () Bool)

(assert (=> bs!602916 m!4884457))

(assert (=> b!4289944 d!1265516))

(declare-fun d!1265518 () Bool)

(declare-fun lt!1516763 () Int)

(assert (=> d!1265518 (= lt!1516763 (size!34975 (list!17354 totalInput!793)))))

(assert (=> d!1265518 (= lt!1516763 (size!34976 (c!730247 totalInput!793)))))

(assert (=> d!1265518 (= (size!34974 totalInput!793) lt!1516763)))

(declare-fun bs!602917 () Bool)

(assert (= bs!602917 d!1265518))

(assert (=> bs!602917 m!4884409))

(assert (=> bs!602917 m!4884409))

(assert (=> bs!602917 m!4884449))

(declare-fun m!4884459 () Bool)

(assert (=> bs!602917 m!4884459))

(assert (=> b!4289944 d!1265518))

(declare-fun d!1265520 () Bool)

(declare-fun c!730252 () Bool)

(assert (=> d!1265520 (= c!730252 ((_ is Node!14391) (c!730247 totalInput!793)))))

(declare-fun e!2664771 () Bool)

(assert (=> d!1265520 (= (inv!63152 (c!730247 totalInput!793)) e!2664771)))

(declare-fun b!4289963 () Bool)

(assert (=> b!4289963 (= e!2664771 (inv!63155 (c!730247 totalInput!793)))))

(declare-fun b!4289964 () Bool)

(declare-fun e!2664772 () Bool)

(assert (=> b!4289964 (= e!2664771 e!2664772)))

(declare-fun res!1759500 () Bool)

(assert (=> b!4289964 (= res!1759500 (not ((_ is Leaf!22267) (c!730247 totalInput!793))))))

(assert (=> b!4289964 (=> res!1759500 e!2664772)))

(declare-fun b!4289965 () Bool)

(assert (=> b!4289965 (= e!2664772 (inv!63156 (c!730247 totalInput!793)))))

(assert (= (and d!1265520 c!730252) b!4289963))

(assert (= (and d!1265520 (not c!730252)) b!4289964))

(assert (= (and b!4289964 (not res!1759500)) b!4289965))

(declare-fun m!4884461 () Bool)

(assert (=> b!4289963 m!4884461))

(declare-fun m!4884463 () Bool)

(assert (=> b!4289965 m!4884463))

(assert (=> b!4289937 d!1265520))

(declare-fun setIsEmpty!26362 () Bool)

(declare-fun setRes!26363 () Bool)

(assert (=> setIsEmpty!26362 setRes!26363))

(declare-fun b!4289976 () Bool)

(declare-fun e!2664781 () Bool)

(declare-fun tp!1315351 () Bool)

(assert (=> b!4289976 (= e!2664781 (and setRes!26363 tp!1315351))))

(declare-fun condSetEmpty!26363 () Bool)

(declare-fun mapValue!19757 () List!47788)

(assert (=> b!4289976 (= condSetEmpty!26363 (= (_1!25855 (_1!25856 (h!53084 mapValue!19757))) ((as const (Array Context!5678 Bool)) false)))))

(declare-fun setIsEmpty!26363 () Bool)

(declare-fun setRes!26362 () Bool)

(assert (=> setIsEmpty!26363 setRes!26362))

(declare-fun b!4289977 () Bool)

(declare-fun e!2664784 () Bool)

(declare-fun tp!1315357 () Bool)

(assert (=> b!4289977 (= e!2664784 (and setRes!26362 tp!1315357))))

(declare-fun condSetEmpty!26362 () Bool)

(declare-fun mapDefault!19757 () List!47788)

(assert (=> b!4289977 (= condSetEmpty!26362 (= (_1!25855 (_1!25856 (h!53084 mapDefault!19757))) ((as const (Array Context!5678 Bool)) false)))))

(declare-fun b!4289978 () Bool)

(declare-fun e!2664783 () Bool)

(declare-fun tp!1315355 () Bool)

(assert (=> b!4289978 (= e!2664783 tp!1315355)))

(declare-fun mapNonEmpty!19757 () Bool)

(declare-fun mapRes!19757 () Bool)

(declare-fun tp!1315352 () Bool)

(assert (=> mapNonEmpty!19757 (= mapRes!19757 (and tp!1315352 e!2664781))))

(declare-fun mapRest!19757 () (Array (_ BitVec 32) List!47788))

(declare-fun mapKey!19757 () (_ BitVec 32))

(assert (=> mapNonEmpty!19757 (= mapRest!19754 (store mapRest!19757 mapKey!19757 mapValue!19757))))

(declare-fun b!4289979 () Bool)

(declare-fun e!2664782 () Bool)

(declare-fun tp!1315353 () Bool)

(assert (=> b!4289979 (= e!2664782 tp!1315353)))

(declare-fun setElem!26362 () Context!5678)

(declare-fun setNonEmpty!26363 () Bool)

(declare-fun tp!1315354 () Bool)

(declare-fun inv!63157 (Context!5678) Bool)

(assert (=> setNonEmpty!26363 (= setRes!26362 (and tp!1315354 (inv!63157 setElem!26362) e!2664783))))

(declare-fun setRest!26363 () (InoxSet Context!5678))

(assert (=> setNonEmpty!26363 (= (_1!25855 (_1!25856 (h!53084 mapDefault!19757))) ((_ map or) (store ((as const (Array Context!5678 Bool)) false) setElem!26362 true) setRest!26363))))

(declare-fun mapIsEmpty!19757 () Bool)

(assert (=> mapIsEmpty!19757 mapRes!19757))

(declare-fun setElem!26363 () Context!5678)

(declare-fun setNonEmpty!26362 () Bool)

(declare-fun tp!1315356 () Bool)

(assert (=> setNonEmpty!26362 (= setRes!26363 (and tp!1315356 (inv!63157 setElem!26363) e!2664782))))

(declare-fun setRest!26362 () (InoxSet Context!5678))

(assert (=> setNonEmpty!26362 (= (_1!25855 (_1!25856 (h!53084 mapValue!19757))) ((_ map or) (store ((as const (Array Context!5678 Bool)) false) setElem!26363 true) setRest!26362))))

(declare-fun condMapEmpty!19757 () Bool)

(assert (=> mapNonEmpty!19754 (= condMapEmpty!19757 (= mapRest!19754 ((as const (Array (_ BitVec 32) List!47788)) mapDefault!19757)))))

(assert (=> mapNonEmpty!19754 (= tp!1315327 (and e!2664784 mapRes!19757))))

(assert (= (and mapNonEmpty!19754 condMapEmpty!19757) mapIsEmpty!19757))

(assert (= (and mapNonEmpty!19754 (not condMapEmpty!19757)) mapNonEmpty!19757))

(assert (= (and b!4289976 condSetEmpty!26363) setIsEmpty!26362))

(assert (= (and b!4289976 (not condSetEmpty!26363)) setNonEmpty!26362))

(assert (= setNonEmpty!26362 b!4289979))

(assert (= (and mapNonEmpty!19757 ((_ is Cons!47664) mapValue!19757)) b!4289976))

(assert (= (and b!4289977 condSetEmpty!26362) setIsEmpty!26363))

(assert (= (and b!4289977 (not condSetEmpty!26362)) setNonEmpty!26363))

(assert (= setNonEmpty!26363 b!4289978))

(assert (= (and mapNonEmpty!19754 ((_ is Cons!47664) mapDefault!19757)) b!4289977))

(declare-fun m!4884465 () Bool)

(assert (=> mapNonEmpty!19757 m!4884465))

(declare-fun m!4884467 () Bool)

(assert (=> setNonEmpty!26363 m!4884467))

(declare-fun m!4884469 () Bool)

(assert (=> setNonEmpty!26362 m!4884469))

(declare-fun b!4289987 () Bool)

(declare-fun e!2664789 () Bool)

(declare-fun tp!1315366 () Bool)

(assert (=> b!4289987 (= e!2664789 tp!1315366)))

(declare-fun b!4289986 () Bool)

(declare-fun e!2664790 () Bool)

(declare-fun setRes!26366 () Bool)

(declare-fun tp!1315365 () Bool)

(assert (=> b!4289986 (= e!2664790 (and setRes!26366 tp!1315365))))

(declare-fun condSetEmpty!26366 () Bool)

(assert (=> b!4289986 (= condSetEmpty!26366 (= (_1!25855 (_1!25856 (h!53084 mapValue!19754))) ((as const (Array Context!5678 Bool)) false)))))

(declare-fun setIsEmpty!26366 () Bool)

(assert (=> setIsEmpty!26366 setRes!26366))

(assert (=> mapNonEmpty!19754 (= tp!1315330 e!2664790)))

(declare-fun tp!1315364 () Bool)

(declare-fun setNonEmpty!26366 () Bool)

(declare-fun setElem!26366 () Context!5678)

(assert (=> setNonEmpty!26366 (= setRes!26366 (and tp!1315364 (inv!63157 setElem!26366) e!2664789))))

(declare-fun setRest!26366 () (InoxSet Context!5678))

(assert (=> setNonEmpty!26366 (= (_1!25855 (_1!25856 (h!53084 mapValue!19754))) ((_ map or) (store ((as const (Array Context!5678 Bool)) false) setElem!26366 true) setRest!26366))))

(assert (= (and b!4289986 condSetEmpty!26366) setIsEmpty!26366))

(assert (= (and b!4289986 (not condSetEmpty!26366)) setNonEmpty!26366))

(assert (= setNonEmpty!26366 b!4289987))

(assert (= (and mapNonEmpty!19754 ((_ is Cons!47664) mapValue!19754)) b!4289986))

(declare-fun m!4884471 () Bool)

(assert (=> setNonEmpty!26366 m!4884471))

(declare-fun b!4289996 () Bool)

(declare-fun e!2664796 () Bool)

(declare-fun tp!1315374 () Bool)

(declare-fun tp!1315373 () Bool)

(assert (=> b!4289996 (= e!2664796 (and (inv!63152 (left!35398 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))) tp!1315374 (inv!63152 (right!35728 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))) tp!1315373))))

(declare-fun b!4289998 () Bool)

(declare-fun e!2664795 () Bool)

(declare-fun tp!1315375 () Bool)

(assert (=> b!4289998 (= e!2664795 tp!1315375)))

(declare-fun b!4289997 () Bool)

(declare-fun inv!63158 (IArray!28843) Bool)

(assert (=> b!4289997 (= e!2664796 (and (inv!63158 (xs!17697 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))) e!2664795))))

(assert (=> b!4289933 (= tp!1315335 (and (inv!63152 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))) e!2664796))))

(assert (= (and b!4289933 ((_ is Node!14391) (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))) b!4289996))

(assert (= b!4289997 b!4289998))

(assert (= (and b!4289933 ((_ is Leaf!22267) (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))) b!4289997))

(declare-fun m!4884473 () Bool)

(assert (=> b!4289996 m!4884473))

(declare-fun m!4884475 () Bool)

(assert (=> b!4289996 m!4884475))

(declare-fun m!4884477 () Bool)

(assert (=> b!4289997 m!4884477))

(assert (=> b!4289933 m!4884429))

(declare-fun b!4290000 () Bool)

(declare-fun e!2664797 () Bool)

(declare-fun tp!1315378 () Bool)

(assert (=> b!4290000 (= e!2664797 tp!1315378)))

(declare-fun b!4289999 () Bool)

(declare-fun e!2664798 () Bool)

(declare-fun setRes!26367 () Bool)

(declare-fun tp!1315377 () Bool)

(assert (=> b!4289999 (= e!2664798 (and setRes!26367 tp!1315377))))

(declare-fun condSetEmpty!26367 () Bool)

(assert (=> b!4289999 (= condSetEmpty!26367 (= (_1!25855 (_1!25856 (h!53084 (zeroValue!4645 (v!41582 (underlying!9001 (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171))))))))) ((as const (Array Context!5678 Bool)) false)))))

(declare-fun setIsEmpty!26367 () Bool)

(assert (=> setIsEmpty!26367 setRes!26367))

(assert (=> b!4289942 (= tp!1315329 e!2664798)))

(declare-fun setElem!26367 () Context!5678)

(declare-fun setNonEmpty!26367 () Bool)

(declare-fun tp!1315376 () Bool)

(assert (=> setNonEmpty!26367 (= setRes!26367 (and tp!1315376 (inv!63157 setElem!26367) e!2664797))))

(declare-fun setRest!26367 () (InoxSet Context!5678))

(assert (=> setNonEmpty!26367 (= (_1!25855 (_1!25856 (h!53084 (zeroValue!4645 (v!41582 (underlying!9001 (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171))))))))) ((_ map or) (store ((as const (Array Context!5678 Bool)) false) setElem!26367 true) setRest!26367))))

(assert (= (and b!4289999 condSetEmpty!26367) setIsEmpty!26367))

(assert (= (and b!4289999 (not condSetEmpty!26367)) setNonEmpty!26367))

(assert (= setNonEmpty!26367 b!4290000))

(assert (= (and b!4289942 ((_ is Cons!47664) (zeroValue!4645 (v!41582 (underlying!9001 (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171)))))))) b!4289999))

(declare-fun m!4884479 () Bool)

(assert (=> setNonEmpty!26367 m!4884479))

(declare-fun b!4290002 () Bool)

(declare-fun e!2664799 () Bool)

(declare-fun tp!1315381 () Bool)

(assert (=> b!4290002 (= e!2664799 tp!1315381)))

(declare-fun b!4290001 () Bool)

(declare-fun e!2664800 () Bool)

(declare-fun setRes!26368 () Bool)

(declare-fun tp!1315380 () Bool)

(assert (=> b!4290001 (= e!2664800 (and setRes!26368 tp!1315380))))

(declare-fun condSetEmpty!26368 () Bool)

(assert (=> b!4290001 (= condSetEmpty!26368 (= (_1!25855 (_1!25856 (h!53084 (minValue!4645 (v!41582 (underlying!9001 (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171))))))))) ((as const (Array Context!5678 Bool)) false)))))

(declare-fun setIsEmpty!26368 () Bool)

(assert (=> setIsEmpty!26368 setRes!26368))

(assert (=> b!4289942 (= tp!1315333 e!2664800)))

(declare-fun setNonEmpty!26368 () Bool)

(declare-fun setElem!26368 () Context!5678)

(declare-fun tp!1315379 () Bool)

(assert (=> setNonEmpty!26368 (= setRes!26368 (and tp!1315379 (inv!63157 setElem!26368) e!2664799))))

(declare-fun setRest!26368 () (InoxSet Context!5678))

(assert (=> setNonEmpty!26368 (= (_1!25855 (_1!25856 (h!53084 (minValue!4645 (v!41582 (underlying!9001 (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171))))))))) ((_ map or) (store ((as const (Array Context!5678 Bool)) false) setElem!26368 true) setRest!26368))))

(assert (= (and b!4290001 condSetEmpty!26368) setIsEmpty!26368))

(assert (= (and b!4290001 (not condSetEmpty!26368)) setNonEmpty!26368))

(assert (= setNonEmpty!26368 b!4290002))

(assert (= (and b!4289942 ((_ is Cons!47664) (minValue!4645 (v!41582 (underlying!9001 (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171)))))))) b!4290001))

(declare-fun m!4884481 () Bool)

(assert (=> setNonEmpty!26368 m!4884481))

(declare-fun e!2664802 () Bool)

(declare-fun tp!1315382 () Bool)

(declare-fun tp!1315383 () Bool)

(declare-fun b!4290003 () Bool)

(assert (=> b!4290003 (= e!2664802 (and (inv!63152 (left!35398 (c!730247 input!5500))) tp!1315383 (inv!63152 (right!35728 (c!730247 input!5500))) tp!1315382))))

(declare-fun b!4290005 () Bool)

(declare-fun e!2664801 () Bool)

(declare-fun tp!1315384 () Bool)

(assert (=> b!4290005 (= e!2664801 tp!1315384)))

(declare-fun b!4290004 () Bool)

(assert (=> b!4290004 (= e!2664802 (and (inv!63158 (xs!17697 (c!730247 input!5500))) e!2664801))))

(assert (=> b!4289939 (= tp!1315334 (and (inv!63152 (c!730247 input!5500)) e!2664802))))

(assert (= (and b!4289939 ((_ is Node!14391) (c!730247 input!5500))) b!4290003))

(assert (= b!4290004 b!4290005))

(assert (= (and b!4289939 ((_ is Leaf!22267) (c!730247 input!5500))) b!4290004))

(declare-fun m!4884483 () Bool)

(assert (=> b!4290003 m!4884483))

(declare-fun m!4884485 () Bool)

(assert (=> b!4290003 m!4884485))

(declare-fun m!4884487 () Bool)

(assert (=> b!4290004 m!4884487))

(assert (=> b!4289939 m!4884403))

(declare-fun b!4290007 () Bool)

(declare-fun e!2664803 () Bool)

(declare-fun tp!1315387 () Bool)

(assert (=> b!4290007 (= e!2664803 tp!1315387)))

(declare-fun b!4290006 () Bool)

(declare-fun e!2664804 () Bool)

(declare-fun setRes!26369 () Bool)

(declare-fun tp!1315386 () Bool)

(assert (=> b!4290006 (= e!2664804 (and setRes!26369 tp!1315386))))

(declare-fun condSetEmpty!26369 () Bool)

(assert (=> b!4290006 (= condSetEmpty!26369 (= (_1!25855 (_1!25856 (h!53084 mapDefault!19754))) ((as const (Array Context!5678 Bool)) false)))))

(declare-fun setIsEmpty!26369 () Bool)

(assert (=> setIsEmpty!26369 setRes!26369))

(assert (=> b!4289936 (= tp!1315328 e!2664804)))

(declare-fun setElem!26369 () Context!5678)

(declare-fun setNonEmpty!26369 () Bool)

(declare-fun tp!1315385 () Bool)

(assert (=> setNonEmpty!26369 (= setRes!26369 (and tp!1315385 (inv!63157 setElem!26369) e!2664803))))

(declare-fun setRest!26369 () (InoxSet Context!5678))

(assert (=> setNonEmpty!26369 (= (_1!25855 (_1!25856 (h!53084 mapDefault!19754))) ((_ map or) (store ((as const (Array Context!5678 Bool)) false) setElem!26369 true) setRest!26369))))

(assert (= (and b!4290006 condSetEmpty!26369) setIsEmpty!26369))

(assert (= (and b!4290006 (not condSetEmpty!26369)) setNonEmpty!26369))

(assert (= setNonEmpty!26369 b!4290007))

(assert (= (and b!4289936 ((_ is Cons!47664) mapDefault!19754)) b!4290006))

(declare-fun m!4884489 () Bool)

(assert (=> setNonEmpty!26369 m!4884489))

(declare-fun e!2664806 () Bool)

(declare-fun tp!1315388 () Bool)

(declare-fun b!4290008 () Bool)

(declare-fun tp!1315389 () Bool)

(assert (=> b!4290008 (= e!2664806 (and (inv!63152 (left!35398 (c!730247 totalInput!793))) tp!1315389 (inv!63152 (right!35728 (c!730247 totalInput!793))) tp!1315388))))

(declare-fun b!4290010 () Bool)

(declare-fun e!2664805 () Bool)

(declare-fun tp!1315390 () Bool)

(assert (=> b!4290010 (= e!2664805 tp!1315390)))

(declare-fun b!4290009 () Bool)

(assert (=> b!4290009 (= e!2664806 (and (inv!63158 (xs!17697 (c!730247 totalInput!793))) e!2664805))))

(assert (=> b!4289937 (= tp!1315332 (and (inv!63152 (c!730247 totalInput!793)) e!2664806))))

(assert (= (and b!4289937 ((_ is Node!14391) (c!730247 totalInput!793))) b!4290008))

(assert (= b!4290009 b!4290010))

(assert (= (and b!4289937 ((_ is Leaf!22267) (c!730247 totalInput!793))) b!4290009))

(declare-fun m!4884491 () Bool)

(assert (=> b!4290008 m!4884491))

(declare-fun m!4884493 () Bool)

(assert (=> b!4290008 m!4884493))

(declare-fun m!4884495 () Bool)

(assert (=> b!4290009 m!4884495))

(assert (=> b!4289937 m!4884423))

(check-sat (not b!4289986) (not b!4289987) (not b!4290008) (not b!4289977) (not b!4290002) (not b!4289956) (not b!4290009) (not b!4290006) (not b!4289937) (not b!4289998) (not b!4290003) (not b!4290001) (not setNonEmpty!26362) (not d!1265514) (not b!4289959) (not d!1265512) (not b!4289996) (not b!4289933) (not b!4290004) (not b!4290000) (not b!4289978) b_and!338583 (not b!4289997) (not setNonEmpty!26367) (not b_next!128073) (not b!4289953) (not b!4289954) (not d!1265508) (not d!1265506) (not setNonEmpty!26368) (not d!1265510) (not b!4289963) (not b!4290010) (not b!4289939) (not setNonEmpty!26369) b_and!338585 (not b!4289965) (not setNonEmpty!26363) (not b!4290005) (not mapNonEmpty!19757) (not b!4289962) (not d!1265496) (not d!1265516) (not d!1265518) (not b!4290007) (not b!4289951) (not b_next!128071) (not b!4289999) (not b!4289976) (not setNonEmpty!26366) (not b!4289979))
(check-sat b_and!338585 b_and!338583 (not b_next!128071) (not b_next!128073))
(get-model)

(declare-fun b!4290020 () Bool)

(declare-fun e!2664811 () List!47789)

(declare-fun e!2664812 () List!47789)

(assert (=> b!4290020 (= e!2664811 e!2664812)))

(declare-fun c!730258 () Bool)

(assert (=> b!4290020 (= c!730258 ((_ is Leaf!22267) (c!730247 input!5500)))))

(declare-fun b!4290019 () Bool)

(assert (=> b!4290019 (= e!2664811 Nil!47665)))

(declare-fun b!4290021 () Bool)

(declare-fun list!17356 (IArray!28843) List!47789)

(assert (=> b!4290021 (= e!2664812 (list!17356 (xs!17697 (c!730247 input!5500))))))

(declare-fun d!1265522 () Bool)

(declare-fun c!730257 () Bool)

(assert (=> d!1265522 (= c!730257 ((_ is Empty!14391) (c!730247 input!5500)))))

(assert (=> d!1265522 (= (list!17355 (c!730247 input!5500)) e!2664811)))

(declare-fun b!4290022 () Bool)

(declare-fun ++!12108 (List!47789 List!47789) List!47789)

(assert (=> b!4290022 (= e!2664812 (++!12108 (list!17355 (left!35398 (c!730247 input!5500))) (list!17355 (right!35728 (c!730247 input!5500)))))))

(assert (= (and d!1265522 c!730257) b!4290019))

(assert (= (and d!1265522 (not c!730257)) b!4290020))

(assert (= (and b!4290020 c!730258) b!4290021))

(assert (= (and b!4290020 (not c!730258)) b!4290022))

(declare-fun m!4884497 () Bool)

(assert (=> b!4290021 m!4884497))

(declare-fun m!4884499 () Bool)

(assert (=> b!4290022 m!4884499))

(declare-fun m!4884501 () Bool)

(assert (=> b!4290022 m!4884501))

(assert (=> b!4290022 m!4884499))

(assert (=> b!4290022 m!4884501))

(declare-fun m!4884503 () Bool)

(assert (=> b!4290022 m!4884503))

(assert (=> d!1265506 d!1265522))

(declare-fun d!1265524 () Bool)

(assert (=> d!1265524 (= (inv!63158 (xs!17697 (c!730247 totalInput!793))) (<= (size!34975 (innerList!14479 (xs!17697 (c!730247 totalInput!793)))) 2147483647))))

(declare-fun bs!602918 () Bool)

(assert (= bs!602918 d!1265524))

(declare-fun m!4884505 () Bool)

(assert (=> bs!602918 m!4884505))

(assert (=> b!4290009 d!1265524))

(declare-fun d!1265526 () Bool)

(declare-fun lambda!131494 () Int)

(declare-fun forall!8549 (List!47787 Int) Bool)

(assert (=> d!1265526 (= (inv!63157 setElem!26366) (forall!8549 (exprs!3339 setElem!26366) lambda!131494))))

(declare-fun bs!602919 () Bool)

(assert (= bs!602919 d!1265526))

(declare-fun m!4884507 () Bool)

(assert (=> bs!602919 m!4884507))

(assert (=> setNonEmpty!26366 d!1265526))

(declare-fun bs!602920 () Bool)

(declare-fun d!1265528 () Bool)

(assert (= bs!602920 (and d!1265528 d!1265526)))

(declare-fun lambda!131495 () Int)

(assert (=> bs!602920 (= lambda!131495 lambda!131494)))

(assert (=> d!1265528 (= (inv!63157 setElem!26368) (forall!8549 (exprs!3339 setElem!26368) lambda!131495))))

(declare-fun bs!602921 () Bool)

(assert (= bs!602921 d!1265528))

(declare-fun m!4884509 () Bool)

(assert (=> bs!602921 m!4884509))

(assert (=> setNonEmpty!26368 d!1265528))

(declare-fun d!1265530 () Bool)

(declare-fun lt!1516766 () Int)

(assert (=> d!1265530 (>= lt!1516766 0)))

(declare-fun e!2664815 () Int)

(assert (=> d!1265530 (= lt!1516766 e!2664815)))

(declare-fun c!730261 () Bool)

(assert (=> d!1265530 (= c!730261 ((_ is Nil!47665) (list!17354 input!5500)))))

(assert (=> d!1265530 (= (size!34975 (list!17354 input!5500)) lt!1516766)))

(declare-fun b!4290027 () Bool)

(assert (=> b!4290027 (= e!2664815 0)))

(declare-fun b!4290028 () Bool)

(assert (=> b!4290028 (= e!2664815 (+ 1 (size!34975 (t!354390 (list!17354 input!5500)))))))

(assert (= (and d!1265530 c!730261) b!4290027))

(assert (= (and d!1265530 (not c!730261)) b!4290028))

(declare-fun m!4884511 () Bool)

(assert (=> b!4290028 m!4884511))

(assert (=> d!1265516 d!1265530))

(assert (=> d!1265516 d!1265506))

(declare-fun d!1265532 () Bool)

(declare-fun lt!1516769 () Int)

(assert (=> d!1265532 (= lt!1516769 (size!34975 (list!17355 (c!730247 input!5500))))))

(assert (=> d!1265532 (= lt!1516769 (ite ((_ is Empty!14391) (c!730247 input!5500)) 0 (ite ((_ is Leaf!22267) (c!730247 input!5500)) (csize!29013 (c!730247 input!5500)) (csize!29012 (c!730247 input!5500)))))))

(assert (=> d!1265532 (= (size!34976 (c!730247 input!5500)) lt!1516769)))

(declare-fun bs!602922 () Bool)

(assert (= bs!602922 d!1265532))

(assert (=> bs!602922 m!4884443))

(assert (=> bs!602922 m!4884443))

(declare-fun m!4884513 () Bool)

(assert (=> bs!602922 m!4884513))

(assert (=> d!1265516 d!1265532))

(declare-fun d!1265534 () Bool)

(declare-fun res!1759507 () Bool)

(declare-fun e!2664818 () Bool)

(assert (=> d!1265534 (=> (not res!1759507) (not e!2664818))))

(assert (=> d!1265534 (= res!1759507 (= (csize!29012 (c!730247 totalInput!793)) (+ (size!34976 (left!35398 (c!730247 totalInput!793))) (size!34976 (right!35728 (c!730247 totalInput!793))))))))

(assert (=> d!1265534 (= (inv!63155 (c!730247 totalInput!793)) e!2664818)))

(declare-fun b!4290035 () Bool)

(declare-fun res!1759508 () Bool)

(assert (=> b!4290035 (=> (not res!1759508) (not e!2664818))))

(assert (=> b!4290035 (= res!1759508 (and (not (= (left!35398 (c!730247 totalInput!793)) Empty!14391)) (not (= (right!35728 (c!730247 totalInput!793)) Empty!14391))))))

(declare-fun b!4290036 () Bool)

(declare-fun res!1759509 () Bool)

(assert (=> b!4290036 (=> (not res!1759509) (not e!2664818))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1892 (Conc!14391) Int)

(assert (=> b!4290036 (= res!1759509 (= (cheight!14602 (c!730247 totalInput!793)) (+ (max!0 (height!1892 (left!35398 (c!730247 totalInput!793))) (height!1892 (right!35728 (c!730247 totalInput!793)))) 1)))))

(declare-fun b!4290037 () Bool)

(assert (=> b!4290037 (= e!2664818 (<= 0 (cheight!14602 (c!730247 totalInput!793))))))

(assert (= (and d!1265534 res!1759507) b!4290035))

(assert (= (and b!4290035 res!1759508) b!4290036))

(assert (= (and b!4290036 res!1759509) b!4290037))

(declare-fun m!4884515 () Bool)

(assert (=> d!1265534 m!4884515))

(declare-fun m!4884517 () Bool)

(assert (=> d!1265534 m!4884517))

(declare-fun m!4884519 () Bool)

(assert (=> b!4290036 m!4884519))

(declare-fun m!4884521 () Bool)

(assert (=> b!4290036 m!4884521))

(assert (=> b!4290036 m!4884519))

(assert (=> b!4290036 m!4884521))

(declare-fun m!4884523 () Bool)

(assert (=> b!4290036 m!4884523))

(assert (=> b!4289963 d!1265534))

(declare-fun d!1265536 () Bool)

(declare-fun res!1759514 () Bool)

(declare-fun e!2664821 () Bool)

(assert (=> d!1265536 (=> (not res!1759514) (not e!2664821))))

(assert (=> d!1265536 (= res!1759514 (<= (size!34975 (list!17356 (xs!17697 (c!730247 totalInput!793)))) 512))))

(assert (=> d!1265536 (= (inv!63156 (c!730247 totalInput!793)) e!2664821)))

(declare-fun b!4290042 () Bool)

(declare-fun res!1759515 () Bool)

(assert (=> b!4290042 (=> (not res!1759515) (not e!2664821))))

(assert (=> b!4290042 (= res!1759515 (= (csize!29013 (c!730247 totalInput!793)) (size!34975 (list!17356 (xs!17697 (c!730247 totalInput!793))))))))

(declare-fun b!4290043 () Bool)

(assert (=> b!4290043 (= e!2664821 (and (> (csize!29013 (c!730247 totalInput!793)) 0) (<= (csize!29013 (c!730247 totalInput!793)) 512)))))

(assert (= (and d!1265536 res!1759514) b!4290042))

(assert (= (and b!4290042 res!1759515) b!4290043))

(declare-fun m!4884525 () Bool)

(assert (=> d!1265536 m!4884525))

(assert (=> d!1265536 m!4884525))

(declare-fun m!4884527 () Bool)

(assert (=> d!1265536 m!4884527))

(assert (=> b!4290042 m!4884525))

(assert (=> b!4290042 m!4884525))

(assert (=> b!4290042 m!4884527))

(assert (=> b!4289965 d!1265536))

(declare-fun b!4290056 () Bool)

(declare-fun res!1759529 () Bool)

(declare-fun e!2664826 () Bool)

(assert (=> b!4290056 (=> (not res!1759529) (not e!2664826))))

(declare-fun isEmpty!28023 (Conc!14391) Bool)

(assert (=> b!4290056 (= res!1759529 (not (isEmpty!28023 (left!35398 (c!730247 totalInput!793)))))))

(declare-fun d!1265538 () Bool)

(declare-fun res!1759533 () Bool)

(declare-fun e!2664827 () Bool)

(assert (=> d!1265538 (=> res!1759533 e!2664827)))

(assert (=> d!1265538 (= res!1759533 (not ((_ is Node!14391) (c!730247 totalInput!793))))))

(assert (=> d!1265538 (= (isBalanced!3882 (c!730247 totalInput!793)) e!2664827)))

(declare-fun b!4290057 () Bool)

(assert (=> b!4290057 (= e!2664827 e!2664826)))

(declare-fun res!1759531 () Bool)

(assert (=> b!4290057 (=> (not res!1759531) (not e!2664826))))

(assert (=> b!4290057 (= res!1759531 (<= (- 1) (- (height!1892 (left!35398 (c!730247 totalInput!793))) (height!1892 (right!35728 (c!730247 totalInput!793))))))))

(declare-fun b!4290058 () Bool)

(assert (=> b!4290058 (= e!2664826 (not (isEmpty!28023 (right!35728 (c!730247 totalInput!793)))))))

(declare-fun b!4290059 () Bool)

(declare-fun res!1759528 () Bool)

(assert (=> b!4290059 (=> (not res!1759528) (not e!2664826))))

(assert (=> b!4290059 (= res!1759528 (isBalanced!3882 (left!35398 (c!730247 totalInput!793))))))

(declare-fun b!4290060 () Bool)

(declare-fun res!1759530 () Bool)

(assert (=> b!4290060 (=> (not res!1759530) (not e!2664826))))

(assert (=> b!4290060 (= res!1759530 (<= (- (height!1892 (left!35398 (c!730247 totalInput!793))) (height!1892 (right!35728 (c!730247 totalInput!793)))) 1))))

(declare-fun b!4290061 () Bool)

(declare-fun res!1759532 () Bool)

(assert (=> b!4290061 (=> (not res!1759532) (not e!2664826))))

(assert (=> b!4290061 (= res!1759532 (isBalanced!3882 (right!35728 (c!730247 totalInput!793))))))

(assert (= (and d!1265538 (not res!1759533)) b!4290057))

(assert (= (and b!4290057 res!1759531) b!4290060))

(assert (= (and b!4290060 res!1759530) b!4290059))

(assert (= (and b!4290059 res!1759528) b!4290061))

(assert (= (and b!4290061 res!1759532) b!4290056))

(assert (= (and b!4290056 res!1759529) b!4290058))

(declare-fun m!4884529 () Bool)

(assert (=> b!4290058 m!4884529))

(declare-fun m!4884531 () Bool)

(assert (=> b!4290056 m!4884531))

(declare-fun m!4884533 () Bool)

(assert (=> b!4290059 m!4884533))

(assert (=> b!4290057 m!4884519))

(assert (=> b!4290057 m!4884521))

(assert (=> b!4290060 m!4884519))

(assert (=> b!4290060 m!4884521))

(declare-fun m!4884535 () Bool)

(assert (=> b!4290061 m!4884535))

(assert (=> d!1265508 d!1265538))

(declare-fun bs!602923 () Bool)

(declare-fun d!1265540 () Bool)

(assert (= bs!602923 (and d!1265540 d!1265526)))

(declare-fun lambda!131496 () Int)

(assert (=> bs!602923 (= lambda!131496 lambda!131494)))

(declare-fun bs!602924 () Bool)

(assert (= bs!602924 (and d!1265540 d!1265528)))

(assert (=> bs!602924 (= lambda!131496 lambda!131495)))

(assert (=> d!1265540 (= (inv!63157 setElem!26367) (forall!8549 (exprs!3339 setElem!26367) lambda!131496))))

(declare-fun bs!602925 () Bool)

(assert (= bs!602925 d!1265540))

(declare-fun m!4884537 () Bool)

(assert (=> bs!602925 m!4884537))

(assert (=> setNonEmpty!26367 d!1265540))

(declare-fun d!1265542 () Bool)

(declare-fun res!1759534 () Bool)

(declare-fun e!2664828 () Bool)

(assert (=> d!1265542 (=> (not res!1759534) (not e!2664828))))

(assert (=> d!1265542 (= res!1759534 (= (csize!29012 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))) (+ (size!34976 (left!35398 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))) (size!34976 (right!35728 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))))))))

(assert (=> d!1265542 (= (inv!63155 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))) e!2664828)))

(declare-fun b!4290062 () Bool)

(declare-fun res!1759535 () Bool)

(assert (=> b!4290062 (=> (not res!1759535) (not e!2664828))))

(assert (=> b!4290062 (= res!1759535 (and (not (= (left!35398 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))) Empty!14391)) (not (= (right!35728 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))) Empty!14391))))))

(declare-fun b!4290063 () Bool)

(declare-fun res!1759536 () Bool)

(assert (=> b!4290063 (=> (not res!1759536) (not e!2664828))))

(assert (=> b!4290063 (= res!1759536 (= (cheight!14602 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))) (+ (max!0 (height!1892 (left!35398 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))) (height!1892 (right!35728 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))) 1)))))

(declare-fun b!4290064 () Bool)

(assert (=> b!4290064 (= e!2664828 (<= 0 (cheight!14602 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))))))

(assert (= (and d!1265542 res!1759534) b!4290062))

(assert (= (and b!4290062 res!1759535) b!4290063))

(assert (= (and b!4290063 res!1759536) b!4290064))

(declare-fun m!4884539 () Bool)

(assert (=> d!1265542 m!4884539))

(declare-fun m!4884541 () Bool)

(assert (=> d!1265542 m!4884541))

(declare-fun m!4884543 () Bool)

(assert (=> b!4290063 m!4884543))

(declare-fun m!4884545 () Bool)

(assert (=> b!4290063 m!4884545))

(assert (=> b!4290063 m!4884543))

(assert (=> b!4290063 m!4884545))

(declare-fun m!4884547 () Bool)

(assert (=> b!4290063 m!4884547))

(assert (=> b!4289951 d!1265542))

(assert (=> b!4289933 d!1265494))

(declare-fun d!1265544 () Bool)

(declare-fun res!1759537 () Bool)

(declare-fun e!2664829 () Bool)

(assert (=> d!1265544 (=> (not res!1759537) (not e!2664829))))

(assert (=> d!1265544 (= res!1759537 (<= (size!34975 (list!17356 (xs!17697 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))) 512))))

(assert (=> d!1265544 (= (inv!63156 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))) e!2664829)))

(declare-fun b!4290065 () Bool)

(declare-fun res!1759538 () Bool)

(assert (=> b!4290065 (=> (not res!1759538) (not e!2664829))))

(assert (=> b!4290065 (= res!1759538 (= (csize!29013 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))) (size!34975 (list!17356 (xs!17697 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))))))))

(declare-fun b!4290066 () Bool)

(assert (=> b!4290066 (= e!2664829 (and (> (csize!29013 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))) 0) (<= (csize!29013 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))) 512)))))

(assert (= (and d!1265544 res!1759537) b!4290065))

(assert (= (and b!4290065 res!1759538) b!4290066))

(declare-fun m!4884549 () Bool)

(assert (=> d!1265544 m!4884549))

(assert (=> d!1265544 m!4884549))

(declare-fun m!4884551 () Bool)

(assert (=> d!1265544 m!4884551))

(assert (=> b!4290065 m!4884549))

(assert (=> b!4290065 m!4884549))

(assert (=> b!4290065 m!4884551))

(assert (=> b!4289953 d!1265544))

(declare-fun d!1265546 () Bool)

(declare-fun c!730262 () Bool)

(assert (=> d!1265546 (= c!730262 ((_ is Node!14391) (left!35398 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))))))

(declare-fun e!2664830 () Bool)

(assert (=> d!1265546 (= (inv!63152 (left!35398 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))) e!2664830)))

(declare-fun b!4290067 () Bool)

(assert (=> b!4290067 (= e!2664830 (inv!63155 (left!35398 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))))))

(declare-fun b!4290068 () Bool)

(declare-fun e!2664831 () Bool)

(assert (=> b!4290068 (= e!2664830 e!2664831)))

(declare-fun res!1759539 () Bool)

(assert (=> b!4290068 (= res!1759539 (not ((_ is Leaf!22267) (left!35398 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))))))

(assert (=> b!4290068 (=> res!1759539 e!2664831)))

(declare-fun b!4290069 () Bool)

(assert (=> b!4290069 (= e!2664831 (inv!63156 (left!35398 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))))))

(assert (= (and d!1265546 c!730262) b!4290067))

(assert (= (and d!1265546 (not c!730262)) b!4290068))

(assert (= (and b!4290068 (not res!1759539)) b!4290069))

(declare-fun m!4884553 () Bool)

(assert (=> b!4290067 m!4884553))

(declare-fun m!4884555 () Bool)

(assert (=> b!4290069 m!4884555))

(assert (=> b!4289996 d!1265546))

(declare-fun d!1265548 () Bool)

(declare-fun c!730263 () Bool)

(assert (=> d!1265548 (= c!730263 ((_ is Node!14391) (right!35728 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))))))

(declare-fun e!2664832 () Bool)

(assert (=> d!1265548 (= (inv!63152 (right!35728 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))) e!2664832)))

(declare-fun b!4290070 () Bool)

(assert (=> b!4290070 (= e!2664832 (inv!63155 (right!35728 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))))))

(declare-fun b!4290071 () Bool)

(declare-fun e!2664833 () Bool)

(assert (=> b!4290071 (= e!2664832 e!2664833)))

(declare-fun res!1759540 () Bool)

(assert (=> b!4290071 (= res!1759540 (not ((_ is Leaf!22267) (right!35728 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))))))

(assert (=> b!4290071 (=> res!1759540 e!2664833)))

(declare-fun b!4290072 () Bool)

(assert (=> b!4290072 (= e!2664833 (inv!63156 (right!35728 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))))))

(assert (= (and d!1265548 c!730263) b!4290070))

(assert (= (and d!1265548 (not c!730263)) b!4290071))

(assert (= (and b!4290071 (not res!1759540)) b!4290072))

(declare-fun m!4884557 () Bool)

(assert (=> b!4290070 m!4884557))

(declare-fun m!4884559 () Bool)

(assert (=> b!4290072 m!4884559))

(assert (=> b!4289996 d!1265548))

(declare-fun bs!602926 () Bool)

(declare-fun d!1265550 () Bool)

(assert (= bs!602926 (and d!1265550 d!1265526)))

(declare-fun lambda!131497 () Int)

(assert (=> bs!602926 (= lambda!131497 lambda!131494)))

(declare-fun bs!602927 () Bool)

(assert (= bs!602927 (and d!1265550 d!1265528)))

(assert (=> bs!602927 (= lambda!131497 lambda!131495)))

(declare-fun bs!602928 () Bool)

(assert (= bs!602928 (and d!1265550 d!1265540)))

(assert (=> bs!602928 (= lambda!131497 lambda!131496)))

(assert (=> d!1265550 (= (inv!63157 setElem!26369) (forall!8549 (exprs!3339 setElem!26369) lambda!131497))))

(declare-fun bs!602929 () Bool)

(assert (= bs!602929 d!1265550))

(declare-fun m!4884561 () Bool)

(assert (=> bs!602929 m!4884561))

(assert (=> setNonEmpty!26369 d!1265550))

(declare-fun bs!602930 () Bool)

(declare-fun d!1265552 () Bool)

(assert (= bs!602930 (and d!1265552 d!1265526)))

(declare-fun lambda!131498 () Int)

(assert (=> bs!602930 (= lambda!131498 lambda!131494)))

(declare-fun bs!602931 () Bool)

(assert (= bs!602931 (and d!1265552 d!1265528)))

(assert (=> bs!602931 (= lambda!131498 lambda!131495)))

(declare-fun bs!602932 () Bool)

(assert (= bs!602932 (and d!1265552 d!1265540)))

(assert (=> bs!602932 (= lambda!131498 lambda!131496)))

(declare-fun bs!602933 () Bool)

(assert (= bs!602933 (and d!1265552 d!1265550)))

(assert (=> bs!602933 (= lambda!131498 lambda!131497)))

(assert (=> d!1265552 (= (inv!63157 setElem!26363) (forall!8549 (exprs!3339 setElem!26363) lambda!131498))))

(declare-fun bs!602934 () Bool)

(assert (= bs!602934 d!1265552))

(declare-fun m!4884563 () Bool)

(assert (=> bs!602934 m!4884563))

(assert (=> setNonEmpty!26362 d!1265552))

(declare-fun d!1265554 () Bool)

(declare-fun lt!1516770 () Int)

(assert (=> d!1265554 (>= lt!1516770 0)))

(declare-fun e!2664834 () Int)

(assert (=> d!1265554 (= lt!1516770 e!2664834)))

(declare-fun c!730264 () Bool)

(assert (=> d!1265554 (= c!730264 ((_ is Nil!47665) (list!17354 totalInput!793)))))

(assert (=> d!1265554 (= (size!34975 (list!17354 totalInput!793)) lt!1516770)))

(declare-fun b!4290073 () Bool)

(assert (=> b!4290073 (= e!2664834 0)))

(declare-fun b!4290074 () Bool)

(assert (=> b!4290074 (= e!2664834 (+ 1 (size!34975 (t!354390 (list!17354 totalInput!793)))))))

(assert (= (and d!1265554 c!730264) b!4290073))

(assert (= (and d!1265554 (not c!730264)) b!4290074))

(declare-fun m!4884565 () Bool)

(assert (=> b!4290074 m!4884565))

(assert (=> b!4289962 d!1265554))

(assert (=> b!4289962 d!1265530))

(declare-fun d!1265556 () Bool)

(declare-fun c!730265 () Bool)

(assert (=> d!1265556 (= c!730265 ((_ is Node!14391) (left!35398 (c!730247 input!5500))))))

(declare-fun e!2664835 () Bool)

(assert (=> d!1265556 (= (inv!63152 (left!35398 (c!730247 input!5500))) e!2664835)))

(declare-fun b!4290075 () Bool)

(assert (=> b!4290075 (= e!2664835 (inv!63155 (left!35398 (c!730247 input!5500))))))

(declare-fun b!4290076 () Bool)

(declare-fun e!2664836 () Bool)

(assert (=> b!4290076 (= e!2664835 e!2664836)))

(declare-fun res!1759541 () Bool)

(assert (=> b!4290076 (= res!1759541 (not ((_ is Leaf!22267) (left!35398 (c!730247 input!5500)))))))

(assert (=> b!4290076 (=> res!1759541 e!2664836)))

(declare-fun b!4290077 () Bool)

(assert (=> b!4290077 (= e!2664836 (inv!63156 (left!35398 (c!730247 input!5500))))))

(assert (= (and d!1265556 c!730265) b!4290075))

(assert (= (and d!1265556 (not c!730265)) b!4290076))

(assert (= (and b!4290076 (not res!1759541)) b!4290077))

(declare-fun m!4884567 () Bool)

(assert (=> b!4290075 m!4884567))

(declare-fun m!4884569 () Bool)

(assert (=> b!4290077 m!4884569))

(assert (=> b!4290003 d!1265556))

(declare-fun d!1265558 () Bool)

(declare-fun c!730266 () Bool)

(assert (=> d!1265558 (= c!730266 ((_ is Node!14391) (right!35728 (c!730247 input!5500))))))

(declare-fun e!2664837 () Bool)

(assert (=> d!1265558 (= (inv!63152 (right!35728 (c!730247 input!5500))) e!2664837)))

(declare-fun b!4290078 () Bool)

(assert (=> b!4290078 (= e!2664837 (inv!63155 (right!35728 (c!730247 input!5500))))))

(declare-fun b!4290079 () Bool)

(declare-fun e!2664838 () Bool)

(assert (=> b!4290079 (= e!2664837 e!2664838)))

(declare-fun res!1759542 () Bool)

(assert (=> b!4290079 (= res!1759542 (not ((_ is Leaf!22267) (right!35728 (c!730247 input!5500)))))))

(assert (=> b!4290079 (=> res!1759542 e!2664838)))

(declare-fun b!4290080 () Bool)

(assert (=> b!4290080 (= e!2664838 (inv!63156 (right!35728 (c!730247 input!5500))))))

(assert (= (and d!1265558 c!730266) b!4290078))

(assert (= (and d!1265558 (not c!730266)) b!4290079))

(assert (= (and b!4290079 (not res!1759542)) b!4290080))

(declare-fun m!4884571 () Bool)

(assert (=> b!4290078 m!4884571))

(declare-fun m!4884573 () Bool)

(assert (=> b!4290080 m!4884573))

(assert (=> b!4290003 d!1265558))

(declare-fun d!1265560 () Bool)

(assert (=> d!1265560 (= (inv!63158 (xs!17697 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))) (<= (size!34975 (innerList!14479 (xs!17697 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))) 2147483647))))

(declare-fun bs!602935 () Bool)

(assert (= bs!602935 d!1265560))

(declare-fun m!4884575 () Bool)

(assert (=> bs!602935 m!4884575))

(assert (=> b!4289997 d!1265560))

(declare-fun d!1265562 () Bool)

(assert (=> d!1265562 (= (inv!63158 (xs!17697 (c!730247 input!5500))) (<= (size!34975 (innerList!14479 (xs!17697 (c!730247 input!5500)))) 2147483647))))

(declare-fun bs!602936 () Bool)

(assert (= bs!602936 d!1265562))

(declare-fun m!4884577 () Bool)

(assert (=> bs!602936 m!4884577))

(assert (=> b!4290004 d!1265562))

(declare-fun b!4290082 () Bool)

(declare-fun e!2664839 () List!47789)

(declare-fun e!2664840 () List!47789)

(assert (=> b!4290082 (= e!2664839 e!2664840)))

(declare-fun c!730268 () Bool)

(assert (=> b!4290082 (= c!730268 ((_ is Leaf!22267) (c!730247 totalInput!793)))))

(declare-fun b!4290081 () Bool)

(assert (=> b!4290081 (= e!2664839 Nil!47665)))

(declare-fun b!4290083 () Bool)

(assert (=> b!4290083 (= e!2664840 (list!17356 (xs!17697 (c!730247 totalInput!793))))))

(declare-fun d!1265564 () Bool)

(declare-fun c!730267 () Bool)

(assert (=> d!1265564 (= c!730267 ((_ is Empty!14391) (c!730247 totalInput!793)))))

(assert (=> d!1265564 (= (list!17355 (c!730247 totalInput!793)) e!2664839)))

(declare-fun b!4290084 () Bool)

(assert (=> b!4290084 (= e!2664840 (++!12108 (list!17355 (left!35398 (c!730247 totalInput!793))) (list!17355 (right!35728 (c!730247 totalInput!793)))))))

(assert (= (and d!1265564 c!730267) b!4290081))

(assert (= (and d!1265564 (not c!730267)) b!4290082))

(assert (= (and b!4290082 c!730268) b!4290083))

(assert (= (and b!4290082 (not c!730268)) b!4290084))

(assert (=> b!4290083 m!4884525))

(declare-fun m!4884579 () Bool)

(assert (=> b!4290084 m!4884579))

(declare-fun m!4884581 () Bool)

(assert (=> b!4290084 m!4884581))

(assert (=> b!4290084 m!4884579))

(assert (=> b!4290084 m!4884581))

(declare-fun m!4884583 () Bool)

(assert (=> b!4290084 m!4884583))

(assert (=> d!1265510 d!1265564))

(assert (=> d!1265518 d!1265554))

(assert (=> d!1265518 d!1265510))

(declare-fun d!1265566 () Bool)

(declare-fun lt!1516771 () Int)

(assert (=> d!1265566 (= lt!1516771 (size!34975 (list!17355 (c!730247 totalInput!793))))))

(assert (=> d!1265566 (= lt!1516771 (ite ((_ is Empty!14391) (c!730247 totalInput!793)) 0 (ite ((_ is Leaf!22267) (c!730247 totalInput!793)) (csize!29013 (c!730247 totalInput!793)) (csize!29012 (c!730247 totalInput!793)))))))

(assert (=> d!1265566 (= (size!34976 (c!730247 totalInput!793)) lt!1516771)))

(declare-fun bs!602937 () Bool)

(assert (= bs!602937 d!1265566))

(assert (=> bs!602937 m!4884447))

(assert (=> bs!602937 m!4884447))

(declare-fun m!4884585 () Bool)

(assert (=> bs!602937 m!4884585))

(assert (=> d!1265518 d!1265566))

(assert (=> b!4289937 d!1265520))

(declare-fun bs!602938 () Bool)

(declare-fun d!1265568 () Bool)

(assert (= bs!602938 (and d!1265568 d!1265550)))

(declare-fun lambda!131499 () Int)

(assert (=> bs!602938 (= lambda!131499 lambda!131497)))

(declare-fun bs!602939 () Bool)

(assert (= bs!602939 (and d!1265568 d!1265528)))

(assert (=> bs!602939 (= lambda!131499 lambda!131495)))

(declare-fun bs!602940 () Bool)

(assert (= bs!602940 (and d!1265568 d!1265526)))

(assert (=> bs!602940 (= lambda!131499 lambda!131494)))

(declare-fun bs!602941 () Bool)

(assert (= bs!602941 (and d!1265568 d!1265540)))

(assert (=> bs!602941 (= lambda!131499 lambda!131496)))

(declare-fun bs!602942 () Bool)

(assert (= bs!602942 (and d!1265568 d!1265552)))

(assert (=> bs!602942 (= lambda!131499 lambda!131498)))

(assert (=> d!1265568 (= (inv!63157 setElem!26362) (forall!8549 (exprs!3339 setElem!26362) lambda!131499))))

(declare-fun bs!602943 () Bool)

(assert (= bs!602943 d!1265568))

(declare-fun m!4884587 () Bool)

(assert (=> bs!602943 m!4884587))

(assert (=> setNonEmpty!26363 d!1265568))

(declare-fun b!4290103 () Bool)

(declare-fun e!2664851 () List!47789)

(assert (=> b!4290103 (= e!2664851 Nil!47665)))

(declare-fun b!4290104 () Bool)

(declare-fun e!2664853 () Int)

(declare-fun e!2664852 () Int)

(assert (=> b!4290104 (= e!2664853 e!2664852)))

(declare-fun call!294506 () Int)

(declare-fun c!730278 () Bool)

(assert (=> b!4290104 (= c!730278 (>= (- (size!34975 (list!17354 totalInput!793)) (size!34975 (list!17354 input!5500))) call!294506))))

(declare-fun b!4290105 () Bool)

(declare-fun e!2664855 () List!47789)

(assert (=> b!4290105 (= e!2664851 e!2664855)))

(declare-fun c!730277 () Bool)

(assert (=> b!4290105 (= c!730277 (<= (- (size!34975 (list!17354 totalInput!793)) (size!34975 (list!17354 input!5500))) 0))))

(declare-fun bm!294501 () Bool)

(assert (=> bm!294501 (= call!294506 (size!34975 (list!17354 totalInput!793)))))

(declare-fun b!4290106 () Bool)

(assert (=> b!4290106 (= e!2664852 (- call!294506 (- (size!34975 (list!17354 totalInput!793)) (size!34975 (list!17354 input!5500)))))))

(declare-fun b!4290107 () Bool)

(assert (=> b!4290107 (= e!2664853 call!294506)))

(declare-fun d!1265570 () Bool)

(declare-fun e!2664854 () Bool)

(assert (=> d!1265570 e!2664854))

(declare-fun res!1759545 () Bool)

(assert (=> d!1265570 (=> (not res!1759545) (not e!2664854))))

(declare-fun lt!1516774 () List!47789)

(declare-fun content!7519 (List!47789) (InoxSet C!26096))

(assert (=> d!1265570 (= res!1759545 (= ((_ map implies) (content!7519 lt!1516774) (content!7519 (list!17354 totalInput!793))) ((as const (InoxSet C!26096)) true)))))

(assert (=> d!1265570 (= lt!1516774 e!2664851)))

(declare-fun c!730280 () Bool)

(assert (=> d!1265570 (= c!730280 ((_ is Nil!47665) (list!17354 totalInput!793)))))

(assert (=> d!1265570 (= (drop!2191 (list!17354 totalInput!793) (- (size!34975 (list!17354 totalInput!793)) (size!34975 (list!17354 input!5500)))) lt!1516774)))

(declare-fun b!4290108 () Bool)

(assert (=> b!4290108 (= e!2664854 (= (size!34975 lt!1516774) e!2664853))))

(declare-fun c!730279 () Bool)

(assert (=> b!4290108 (= c!730279 (<= (- (size!34975 (list!17354 totalInput!793)) (size!34975 (list!17354 input!5500))) 0))))

(declare-fun b!4290109 () Bool)

(assert (=> b!4290109 (= e!2664855 (drop!2191 (t!354390 (list!17354 totalInput!793)) (- (- (size!34975 (list!17354 totalInput!793)) (size!34975 (list!17354 input!5500))) 1)))))

(declare-fun b!4290110 () Bool)

(assert (=> b!4290110 (= e!2664852 0)))

(declare-fun b!4290111 () Bool)

(assert (=> b!4290111 (= e!2664855 (list!17354 totalInput!793))))

(assert (= (and d!1265570 c!730280) b!4290103))

(assert (= (and d!1265570 (not c!730280)) b!4290105))

(assert (= (and b!4290105 c!730277) b!4290111))

(assert (= (and b!4290105 (not c!730277)) b!4290109))

(assert (= (and d!1265570 res!1759545) b!4290108))

(assert (= (and b!4290108 c!730279) b!4290107))

(assert (= (and b!4290108 (not c!730279)) b!4290104))

(assert (= (and b!4290104 c!730278) b!4290110))

(assert (= (and b!4290104 (not c!730278)) b!4290106))

(assert (= (or b!4290107 b!4290104 b!4290106) bm!294501))

(assert (=> bm!294501 m!4884409))

(assert (=> bm!294501 m!4884449))

(declare-fun m!4884589 () Bool)

(assert (=> d!1265570 m!4884589))

(assert (=> d!1265570 m!4884409))

(declare-fun m!4884591 () Bool)

(assert (=> d!1265570 m!4884591))

(declare-fun m!4884593 () Bool)

(assert (=> b!4290108 m!4884593))

(declare-fun m!4884595 () Bool)

(assert (=> b!4290109 m!4884595))

(assert (=> d!1265512 d!1265570))

(assert (=> d!1265512 d!1265554))

(assert (=> d!1265512 d!1265530))

(assert (=> b!4289939 d!1265502))

(declare-fun b!4290117 () Bool)

(assert (=> b!4290117 true))

(declare-fun d!1265572 () Bool)

(declare-fun res!1759550 () Bool)

(declare-fun e!2664858 () Bool)

(assert (=> d!1265572 (=> (not res!1759550) (not e!2664858))))

(declare-fun valid!3408 (MutableMap!4292) Bool)

(assert (=> d!1265572 (= res!1759550 (valid!3408 (cache!4432 cacheFindLongestMatch!171)))))

(assert (=> d!1265572 (= (validCacheMapFindLongestMatch!75 (cache!4432 cacheFindLongestMatch!171) (totalInput!4349 cacheFindLongestMatch!171)) e!2664858)))

(declare-fun b!4290116 () Bool)

(declare-fun res!1759551 () Bool)

(assert (=> b!4290116 (=> (not res!1759551) (not e!2664858))))

(declare-fun invariantList!511 (List!47788) Bool)

(declare-datatypes ((ListMap!1381 0))(
  ( (ListMap!1382 (toList!2124 List!47788)) )
))
(declare-fun map!9788 (MutableMap!4292) ListMap!1381)

(assert (=> b!4290116 (= res!1759551 (invariantList!511 (toList!2124 (map!9788 (cache!4432 cacheFindLongestMatch!171)))))))

(declare-fun lambda!131502 () Int)

(declare-fun forall!8550 (List!47788 Int) Bool)

(assert (=> b!4290117 (= e!2664858 (forall!8550 (toList!2124 (map!9788 (cache!4432 cacheFindLongestMatch!171))) lambda!131502))))

(assert (= (and d!1265572 res!1759550) b!4290116))

(assert (= (and b!4290116 res!1759551) b!4290117))

(declare-fun m!4884598 () Bool)

(assert (=> d!1265572 m!4884598))

(declare-fun m!4884600 () Bool)

(assert (=> b!4290116 m!4884600))

(declare-fun m!4884602 () Bool)

(assert (=> b!4290116 m!4884602))

(assert (=> b!4290117 m!4884600))

(declare-fun m!4884604 () Bool)

(assert (=> b!4290117 m!4884604))

(assert (=> b!4289959 d!1265572))

(declare-fun b!4290120 () Bool)

(declare-fun res!1759553 () Bool)

(declare-fun e!2664859 () Bool)

(assert (=> b!4290120 (=> (not res!1759553) (not e!2664859))))

(assert (=> b!4290120 (= res!1759553 (not (isEmpty!28023 (left!35398 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))))))

(declare-fun d!1265574 () Bool)

(declare-fun res!1759557 () Bool)

(declare-fun e!2664860 () Bool)

(assert (=> d!1265574 (=> res!1759557 e!2664860)))

(assert (=> d!1265574 (= res!1759557 (not ((_ is Node!14391) (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))))))

(assert (=> d!1265574 (= (isBalanced!3882 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))) e!2664860)))

(declare-fun b!4290121 () Bool)

(assert (=> b!4290121 (= e!2664860 e!2664859)))

(declare-fun res!1759555 () Bool)

(assert (=> b!4290121 (=> (not res!1759555) (not e!2664859))))

(assert (=> b!4290121 (= res!1759555 (<= (- 1) (- (height!1892 (left!35398 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))) (height!1892 (right!35728 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))))))))

(declare-fun b!4290122 () Bool)

(assert (=> b!4290122 (= e!2664859 (not (isEmpty!28023 (right!35728 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))))))

(declare-fun b!4290123 () Bool)

(declare-fun res!1759552 () Bool)

(assert (=> b!4290123 (=> (not res!1759552) (not e!2664859))))

(assert (=> b!4290123 (= res!1759552 (isBalanced!3882 (left!35398 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))))))

(declare-fun b!4290124 () Bool)

(declare-fun res!1759554 () Bool)

(assert (=> b!4290124 (=> (not res!1759554) (not e!2664859))))

(assert (=> b!4290124 (= res!1759554 (<= (- (height!1892 (left!35398 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))) (height!1892 (right!35728 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))) 1))))

(declare-fun b!4290125 () Bool)

(declare-fun res!1759556 () Bool)

(assert (=> b!4290125 (=> (not res!1759556) (not e!2664859))))

(assert (=> b!4290125 (= res!1759556 (isBalanced!3882 (right!35728 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))))))

(assert (= (and d!1265574 (not res!1759557)) b!4290121))

(assert (= (and b!4290121 res!1759555) b!4290124))

(assert (= (and b!4290124 res!1759554) b!4290123))

(assert (= (and b!4290123 res!1759552) b!4290125))

(assert (= (and b!4290125 res!1759556) b!4290120))

(assert (= (and b!4290120 res!1759553) b!4290122))

(declare-fun m!4884606 () Bool)

(assert (=> b!4290122 m!4884606))

(declare-fun m!4884608 () Bool)

(assert (=> b!4290120 m!4884608))

(declare-fun m!4884610 () Bool)

(assert (=> b!4290123 m!4884610))

(assert (=> b!4290121 m!4884543))

(assert (=> b!4290121 m!4884545))

(assert (=> b!4290124 m!4884543))

(assert (=> b!4290124 m!4884545))

(declare-fun m!4884612 () Bool)

(assert (=> b!4290125 m!4884612))

(assert (=> d!1265496 d!1265574))

(declare-fun d!1265576 () Bool)

(declare-fun res!1759558 () Bool)

(declare-fun e!2664861 () Bool)

(assert (=> d!1265576 (=> (not res!1759558) (not e!2664861))))

(assert (=> d!1265576 (= res!1759558 (= (csize!29012 (c!730247 input!5500)) (+ (size!34976 (left!35398 (c!730247 input!5500))) (size!34976 (right!35728 (c!730247 input!5500))))))))

(assert (=> d!1265576 (= (inv!63155 (c!730247 input!5500)) e!2664861)))

(declare-fun b!4290126 () Bool)

(declare-fun res!1759559 () Bool)

(assert (=> b!4290126 (=> (not res!1759559) (not e!2664861))))

(assert (=> b!4290126 (= res!1759559 (and (not (= (left!35398 (c!730247 input!5500)) Empty!14391)) (not (= (right!35728 (c!730247 input!5500)) Empty!14391))))))

(declare-fun b!4290127 () Bool)

(declare-fun res!1759560 () Bool)

(assert (=> b!4290127 (=> (not res!1759560) (not e!2664861))))

(assert (=> b!4290127 (= res!1759560 (= (cheight!14602 (c!730247 input!5500)) (+ (max!0 (height!1892 (left!35398 (c!730247 input!5500))) (height!1892 (right!35728 (c!730247 input!5500)))) 1)))))

(declare-fun b!4290128 () Bool)

(assert (=> b!4290128 (= e!2664861 (<= 0 (cheight!14602 (c!730247 input!5500))))))

(assert (= (and d!1265576 res!1759558) b!4290126))

(assert (= (and b!4290126 res!1759559) b!4290127))

(assert (= (and b!4290127 res!1759560) b!4290128))

(declare-fun m!4884614 () Bool)

(assert (=> d!1265576 m!4884614))

(declare-fun m!4884616 () Bool)

(assert (=> d!1265576 m!4884616))

(declare-fun m!4884618 () Bool)

(assert (=> b!4290127 m!4884618))

(declare-fun m!4884620 () Bool)

(assert (=> b!4290127 m!4884620))

(assert (=> b!4290127 m!4884618))

(assert (=> b!4290127 m!4884620))

(declare-fun m!4884622 () Bool)

(assert (=> b!4290127 m!4884622))

(assert (=> b!4289954 d!1265576))

(declare-fun b!4290129 () Bool)

(declare-fun res!1759562 () Bool)

(declare-fun e!2664862 () Bool)

(assert (=> b!4290129 (=> (not res!1759562) (not e!2664862))))

(assert (=> b!4290129 (= res!1759562 (not (isEmpty!28023 (left!35398 (c!730247 input!5500)))))))

(declare-fun d!1265578 () Bool)

(declare-fun res!1759566 () Bool)

(declare-fun e!2664863 () Bool)

(assert (=> d!1265578 (=> res!1759566 e!2664863)))

(assert (=> d!1265578 (= res!1759566 (not ((_ is Node!14391) (c!730247 input!5500))))))

(assert (=> d!1265578 (= (isBalanced!3882 (c!730247 input!5500)) e!2664863)))

(declare-fun b!4290130 () Bool)

(assert (=> b!4290130 (= e!2664863 e!2664862)))

(declare-fun res!1759564 () Bool)

(assert (=> b!4290130 (=> (not res!1759564) (not e!2664862))))

(assert (=> b!4290130 (= res!1759564 (<= (- 1) (- (height!1892 (left!35398 (c!730247 input!5500))) (height!1892 (right!35728 (c!730247 input!5500))))))))

(declare-fun b!4290131 () Bool)

(assert (=> b!4290131 (= e!2664862 (not (isEmpty!28023 (right!35728 (c!730247 input!5500)))))))

(declare-fun b!4290132 () Bool)

(declare-fun res!1759561 () Bool)

(assert (=> b!4290132 (=> (not res!1759561) (not e!2664862))))

(assert (=> b!4290132 (= res!1759561 (isBalanced!3882 (left!35398 (c!730247 input!5500))))))

(declare-fun b!4290133 () Bool)

(declare-fun res!1759563 () Bool)

(assert (=> b!4290133 (=> (not res!1759563) (not e!2664862))))

(assert (=> b!4290133 (= res!1759563 (<= (- (height!1892 (left!35398 (c!730247 input!5500))) (height!1892 (right!35728 (c!730247 input!5500)))) 1))))

(declare-fun b!4290134 () Bool)

(declare-fun res!1759565 () Bool)

(assert (=> b!4290134 (=> (not res!1759565) (not e!2664862))))

(assert (=> b!4290134 (= res!1759565 (isBalanced!3882 (right!35728 (c!730247 input!5500))))))

(assert (= (and d!1265578 (not res!1759566)) b!4290130))

(assert (= (and b!4290130 res!1759564) b!4290133))

(assert (= (and b!4290133 res!1759563) b!4290132))

(assert (= (and b!4290132 res!1759561) b!4290134))

(assert (= (and b!4290134 res!1759565) b!4290129))

(assert (= (and b!4290129 res!1759562) b!4290131))

(declare-fun m!4884624 () Bool)

(assert (=> b!4290131 m!4884624))

(declare-fun m!4884626 () Bool)

(assert (=> b!4290129 m!4884626))

(declare-fun m!4884628 () Bool)

(assert (=> b!4290132 m!4884628))

(assert (=> b!4290130 m!4884618))

(assert (=> b!4290130 m!4884620))

(assert (=> b!4290133 m!4884618))

(assert (=> b!4290133 m!4884620))

(declare-fun m!4884630 () Bool)

(assert (=> b!4290134 m!4884630))

(assert (=> d!1265514 d!1265578))

(declare-fun d!1265580 () Bool)

(declare-fun res!1759567 () Bool)

(declare-fun e!2664864 () Bool)

(assert (=> d!1265580 (=> (not res!1759567) (not e!2664864))))

(assert (=> d!1265580 (= res!1759567 (<= (size!34975 (list!17356 (xs!17697 (c!730247 input!5500)))) 512))))

(assert (=> d!1265580 (= (inv!63156 (c!730247 input!5500)) e!2664864)))

(declare-fun b!4290135 () Bool)

(declare-fun res!1759568 () Bool)

(assert (=> b!4290135 (=> (not res!1759568) (not e!2664864))))

(assert (=> b!4290135 (= res!1759568 (= (csize!29013 (c!730247 input!5500)) (size!34975 (list!17356 (xs!17697 (c!730247 input!5500))))))))

(declare-fun b!4290136 () Bool)

(assert (=> b!4290136 (= e!2664864 (and (> (csize!29013 (c!730247 input!5500)) 0) (<= (csize!29013 (c!730247 input!5500)) 512)))))

(assert (= (and d!1265580 res!1759567) b!4290135))

(assert (= (and b!4290135 res!1759568) b!4290136))

(assert (=> d!1265580 m!4884497))

(assert (=> d!1265580 m!4884497))

(declare-fun m!4884632 () Bool)

(assert (=> d!1265580 m!4884632))

(assert (=> b!4290135 m!4884497))

(assert (=> b!4290135 m!4884497))

(assert (=> b!4290135 m!4884632))

(assert (=> b!4289956 d!1265580))

(declare-fun d!1265582 () Bool)

(declare-fun c!730281 () Bool)

(assert (=> d!1265582 (= c!730281 ((_ is Node!14391) (left!35398 (c!730247 totalInput!793))))))

(declare-fun e!2664865 () Bool)

(assert (=> d!1265582 (= (inv!63152 (left!35398 (c!730247 totalInput!793))) e!2664865)))

(declare-fun b!4290137 () Bool)

(assert (=> b!4290137 (= e!2664865 (inv!63155 (left!35398 (c!730247 totalInput!793))))))

(declare-fun b!4290138 () Bool)

(declare-fun e!2664866 () Bool)

(assert (=> b!4290138 (= e!2664865 e!2664866)))

(declare-fun res!1759569 () Bool)

(assert (=> b!4290138 (= res!1759569 (not ((_ is Leaf!22267) (left!35398 (c!730247 totalInput!793)))))))

(assert (=> b!4290138 (=> res!1759569 e!2664866)))

(declare-fun b!4290139 () Bool)

(assert (=> b!4290139 (= e!2664866 (inv!63156 (left!35398 (c!730247 totalInput!793))))))

(assert (= (and d!1265582 c!730281) b!4290137))

(assert (= (and d!1265582 (not c!730281)) b!4290138))

(assert (= (and b!4290138 (not res!1759569)) b!4290139))

(declare-fun m!4884634 () Bool)

(assert (=> b!4290137 m!4884634))

(declare-fun m!4884636 () Bool)

(assert (=> b!4290139 m!4884636))

(assert (=> b!4290008 d!1265582))

(declare-fun d!1265584 () Bool)

(declare-fun c!730282 () Bool)

(assert (=> d!1265584 (= c!730282 ((_ is Node!14391) (right!35728 (c!730247 totalInput!793))))))

(declare-fun e!2664867 () Bool)

(assert (=> d!1265584 (= (inv!63152 (right!35728 (c!730247 totalInput!793))) e!2664867)))

(declare-fun b!4290140 () Bool)

(assert (=> b!4290140 (= e!2664867 (inv!63155 (right!35728 (c!730247 totalInput!793))))))

(declare-fun b!4290141 () Bool)

(declare-fun e!2664868 () Bool)

(assert (=> b!4290141 (= e!2664867 e!2664868)))

(declare-fun res!1759570 () Bool)

(assert (=> b!4290141 (= res!1759570 (not ((_ is Leaf!22267) (right!35728 (c!730247 totalInput!793)))))))

(assert (=> b!4290141 (=> res!1759570 e!2664868)))

(declare-fun b!4290142 () Bool)

(assert (=> b!4290142 (= e!2664868 (inv!63156 (right!35728 (c!730247 totalInput!793))))))

(assert (= (and d!1265584 c!730282) b!4290140))

(assert (= (and d!1265584 (not c!730282)) b!4290141))

(assert (= (and b!4290141 (not res!1759570)) b!4290142))

(declare-fun m!4884638 () Bool)

(assert (=> b!4290140 m!4884638))

(declare-fun m!4884640 () Bool)

(assert (=> b!4290142 m!4884640))

(assert (=> b!4290008 d!1265584))

(declare-fun b!4290147 () Bool)

(declare-fun e!2664871 () Bool)

(declare-fun tp_is_empty!23115 () Bool)

(declare-fun tp!1315393 () Bool)

(assert (=> b!4290147 (= e!2664871 (and tp_is_empty!23115 tp!1315393))))

(assert (=> b!4290010 (= tp!1315390 e!2664871)))

(assert (= (and b!4290010 ((_ is Cons!47665) (innerList!14479 (xs!17697 (c!730247 totalInput!793))))) b!4290147))

(declare-fun condSetEmpty!26372 () Bool)

(assert (=> setNonEmpty!26366 (= condSetEmpty!26372 (= setRest!26366 ((as const (Array Context!5678 Bool)) false)))))

(declare-fun setRes!26372 () Bool)

(assert (=> setNonEmpty!26366 (= tp!1315364 setRes!26372)))

(declare-fun setIsEmpty!26372 () Bool)

(assert (=> setIsEmpty!26372 setRes!26372))

(declare-fun e!2664874 () Bool)

(declare-fun setNonEmpty!26372 () Bool)

(declare-fun tp!1315398 () Bool)

(declare-fun setElem!26372 () Context!5678)

(assert (=> setNonEmpty!26372 (= setRes!26372 (and tp!1315398 (inv!63157 setElem!26372) e!2664874))))

(declare-fun setRest!26372 () (InoxSet Context!5678))

(assert (=> setNonEmpty!26372 (= setRest!26366 ((_ map or) (store ((as const (Array Context!5678 Bool)) false) setElem!26372 true) setRest!26372))))

(declare-fun b!4290152 () Bool)

(declare-fun tp!1315399 () Bool)

(assert (=> b!4290152 (= e!2664874 tp!1315399)))

(assert (= (and setNonEmpty!26366 condSetEmpty!26372) setIsEmpty!26372))

(assert (= (and setNonEmpty!26366 (not condSetEmpty!26372)) setNonEmpty!26372))

(assert (= setNonEmpty!26372 b!4290152))

(declare-fun m!4884642 () Bool)

(assert (=> setNonEmpty!26372 m!4884642))

(declare-fun b!4290154 () Bool)

(declare-fun e!2664875 () Bool)

(declare-fun tp!1315402 () Bool)

(assert (=> b!4290154 (= e!2664875 tp!1315402)))

(declare-fun b!4290153 () Bool)

(declare-fun e!2664876 () Bool)

(declare-fun setRes!26373 () Bool)

(declare-fun tp!1315401 () Bool)

(assert (=> b!4290153 (= e!2664876 (and setRes!26373 tp!1315401))))

(declare-fun condSetEmpty!26373 () Bool)

(assert (=> b!4290153 (= condSetEmpty!26373 (= (_1!25855 (_1!25856 (h!53084 (t!354389 (minValue!4645 (v!41582 (underlying!9001 (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171)))))))))) ((as const (Array Context!5678 Bool)) false)))))

(declare-fun setIsEmpty!26373 () Bool)

(assert (=> setIsEmpty!26373 setRes!26373))

(assert (=> b!4290001 (= tp!1315380 e!2664876)))

(declare-fun setNonEmpty!26373 () Bool)

(declare-fun tp!1315400 () Bool)

(declare-fun setElem!26373 () Context!5678)

(assert (=> setNonEmpty!26373 (= setRes!26373 (and tp!1315400 (inv!63157 setElem!26373) e!2664875))))

(declare-fun setRest!26373 () (InoxSet Context!5678))

(assert (=> setNonEmpty!26373 (= (_1!25855 (_1!25856 (h!53084 (t!354389 (minValue!4645 (v!41582 (underlying!9001 (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171)))))))))) ((_ map or) (store ((as const (Array Context!5678 Bool)) false) setElem!26373 true) setRest!26373))))

(assert (= (and b!4290153 condSetEmpty!26373) setIsEmpty!26373))

(assert (= (and b!4290153 (not condSetEmpty!26373)) setNonEmpty!26373))

(assert (= setNonEmpty!26373 b!4290154))

(assert (= (and b!4290001 ((_ is Cons!47664) (t!354389 (minValue!4645 (v!41582 (underlying!9001 (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171))))))))) b!4290153))

(declare-fun m!4884644 () Bool)

(assert (=> setNonEmpty!26373 m!4884644))

(declare-fun condSetEmpty!26374 () Bool)

(assert (=> setNonEmpty!26368 (= condSetEmpty!26374 (= setRest!26368 ((as const (Array Context!5678 Bool)) false)))))

(declare-fun setRes!26374 () Bool)

(assert (=> setNonEmpty!26368 (= tp!1315379 setRes!26374)))

(declare-fun setIsEmpty!26374 () Bool)

(assert (=> setIsEmpty!26374 setRes!26374))

(declare-fun tp!1315403 () Bool)

(declare-fun setNonEmpty!26374 () Bool)

(declare-fun e!2664877 () Bool)

(declare-fun setElem!26374 () Context!5678)

(assert (=> setNonEmpty!26374 (= setRes!26374 (and tp!1315403 (inv!63157 setElem!26374) e!2664877))))

(declare-fun setRest!26374 () (InoxSet Context!5678))

(assert (=> setNonEmpty!26374 (= setRest!26368 ((_ map or) (store ((as const (Array Context!5678 Bool)) false) setElem!26374 true) setRest!26374))))

(declare-fun b!4290155 () Bool)

(declare-fun tp!1315404 () Bool)

(assert (=> b!4290155 (= e!2664877 tp!1315404)))

(assert (= (and setNonEmpty!26368 condSetEmpty!26374) setIsEmpty!26374))

(assert (= (and setNonEmpty!26368 (not condSetEmpty!26374)) setNonEmpty!26374))

(assert (= setNonEmpty!26374 b!4290155))

(declare-fun m!4884646 () Bool)

(assert (=> setNonEmpty!26374 m!4884646))

(declare-fun b!4290160 () Bool)

(declare-fun e!2664880 () Bool)

(declare-fun tp!1315409 () Bool)

(declare-fun tp!1315410 () Bool)

(assert (=> b!4290160 (= e!2664880 (and tp!1315409 tp!1315410))))

(assert (=> b!4289987 (= tp!1315366 e!2664880)))

(assert (= (and b!4289987 ((_ is Cons!47663) (exprs!3339 setElem!26366))) b!4290160))

(declare-fun b!4290161 () Bool)

(declare-fun e!2664881 () Bool)

(declare-fun tp!1315411 () Bool)

(declare-fun tp!1315412 () Bool)

(assert (=> b!4290161 (= e!2664881 (and tp!1315411 tp!1315412))))

(assert (=> b!4290002 (= tp!1315381 e!2664881)))

(assert (= (and b!4290002 ((_ is Cons!47663) (exprs!3339 setElem!26368))) b!4290161))

(declare-fun b!4290163 () Bool)

(declare-fun e!2664882 () Bool)

(declare-fun tp!1315415 () Bool)

(assert (=> b!4290163 (= e!2664882 tp!1315415)))

(declare-fun b!4290162 () Bool)

(declare-fun e!2664883 () Bool)

(declare-fun setRes!26375 () Bool)

(declare-fun tp!1315414 () Bool)

(assert (=> b!4290162 (= e!2664883 (and setRes!26375 tp!1315414))))

(declare-fun condSetEmpty!26375 () Bool)

(assert (=> b!4290162 (= condSetEmpty!26375 (= (_1!25855 (_1!25856 (h!53084 (t!354389 mapValue!19757)))) ((as const (Array Context!5678 Bool)) false)))))

(declare-fun setIsEmpty!26375 () Bool)

(assert (=> setIsEmpty!26375 setRes!26375))

(assert (=> b!4289976 (= tp!1315351 e!2664883)))

(declare-fun setElem!26375 () Context!5678)

(declare-fun setNonEmpty!26375 () Bool)

(declare-fun tp!1315413 () Bool)

(assert (=> setNonEmpty!26375 (= setRes!26375 (and tp!1315413 (inv!63157 setElem!26375) e!2664882))))

(declare-fun setRest!26375 () (InoxSet Context!5678))

(assert (=> setNonEmpty!26375 (= (_1!25855 (_1!25856 (h!53084 (t!354389 mapValue!19757)))) ((_ map or) (store ((as const (Array Context!5678 Bool)) false) setElem!26375 true) setRest!26375))))

(assert (= (and b!4290162 condSetEmpty!26375) setIsEmpty!26375))

(assert (= (and b!4290162 (not condSetEmpty!26375)) setNonEmpty!26375))

(assert (= setNonEmpty!26375 b!4290163))

(assert (= (and b!4289976 ((_ is Cons!47664) (t!354389 mapValue!19757))) b!4290162))

(declare-fun m!4884648 () Bool)

(assert (=> setNonEmpty!26375 m!4884648))

(declare-fun b!4290165 () Bool)

(declare-fun e!2664884 () Bool)

(declare-fun tp!1315418 () Bool)

(assert (=> b!4290165 (= e!2664884 tp!1315418)))

(declare-fun b!4290164 () Bool)

(declare-fun e!2664885 () Bool)

(declare-fun setRes!26376 () Bool)

(declare-fun tp!1315417 () Bool)

(assert (=> b!4290164 (= e!2664885 (and setRes!26376 tp!1315417))))

(declare-fun condSetEmpty!26376 () Bool)

(assert (=> b!4290164 (= condSetEmpty!26376 (= (_1!25855 (_1!25856 (h!53084 (t!354389 (zeroValue!4645 (v!41582 (underlying!9001 (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171)))))))))) ((as const (Array Context!5678 Bool)) false)))))

(declare-fun setIsEmpty!26376 () Bool)

(assert (=> setIsEmpty!26376 setRes!26376))

(assert (=> b!4289999 (= tp!1315377 e!2664885)))

(declare-fun setNonEmpty!26376 () Bool)

(declare-fun tp!1315416 () Bool)

(declare-fun setElem!26376 () Context!5678)

(assert (=> setNonEmpty!26376 (= setRes!26376 (and tp!1315416 (inv!63157 setElem!26376) e!2664884))))

(declare-fun setRest!26376 () (InoxSet Context!5678))

(assert (=> setNonEmpty!26376 (= (_1!25855 (_1!25856 (h!53084 (t!354389 (zeroValue!4645 (v!41582 (underlying!9001 (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171)))))))))) ((_ map or) (store ((as const (Array Context!5678 Bool)) false) setElem!26376 true) setRest!26376))))

(assert (= (and b!4290164 condSetEmpty!26376) setIsEmpty!26376))

(assert (= (and b!4290164 (not condSetEmpty!26376)) setNonEmpty!26376))

(assert (= setNonEmpty!26376 b!4290165))

(assert (= (and b!4289999 ((_ is Cons!47664) (t!354389 (zeroValue!4645 (v!41582 (underlying!9001 (v!41583 (underlying!9002 (cache!4432 cacheFindLongestMatch!171))))))))) b!4290164))

(declare-fun m!4884650 () Bool)

(assert (=> setNonEmpty!26376 m!4884650))

(declare-fun condSetEmpty!26377 () Bool)

(assert (=> setNonEmpty!26367 (= condSetEmpty!26377 (= setRest!26367 ((as const (Array Context!5678 Bool)) false)))))

(declare-fun setRes!26377 () Bool)

(assert (=> setNonEmpty!26367 (= tp!1315376 setRes!26377)))

(declare-fun setIsEmpty!26377 () Bool)

(assert (=> setIsEmpty!26377 setRes!26377))

(declare-fun e!2664886 () Bool)

(declare-fun setNonEmpty!26377 () Bool)

(declare-fun tp!1315419 () Bool)

(declare-fun setElem!26377 () Context!5678)

(assert (=> setNonEmpty!26377 (= setRes!26377 (and tp!1315419 (inv!63157 setElem!26377) e!2664886))))

(declare-fun setRest!26377 () (InoxSet Context!5678))

(assert (=> setNonEmpty!26377 (= setRest!26367 ((_ map or) (store ((as const (Array Context!5678 Bool)) false) setElem!26377 true) setRest!26377))))

(declare-fun b!4290166 () Bool)

(declare-fun tp!1315420 () Bool)

(assert (=> b!4290166 (= e!2664886 tp!1315420)))

(assert (= (and setNonEmpty!26367 condSetEmpty!26377) setIsEmpty!26377))

(assert (= (and setNonEmpty!26367 (not condSetEmpty!26377)) setNonEmpty!26377))

(assert (= setNonEmpty!26377 b!4290166))

(declare-fun m!4884652 () Bool)

(assert (=> setNonEmpty!26377 m!4884652))

(declare-fun b!4290168 () Bool)

(declare-fun e!2664887 () Bool)

(declare-fun tp!1315423 () Bool)

(assert (=> b!4290168 (= e!2664887 tp!1315423)))

(declare-fun b!4290167 () Bool)

(declare-fun e!2664888 () Bool)

(declare-fun setRes!26378 () Bool)

(declare-fun tp!1315422 () Bool)

(assert (=> b!4290167 (= e!2664888 (and setRes!26378 tp!1315422))))

(declare-fun condSetEmpty!26378 () Bool)

(assert (=> b!4290167 (= condSetEmpty!26378 (= (_1!25855 (_1!25856 (h!53084 (t!354389 mapDefault!19757)))) ((as const (Array Context!5678 Bool)) false)))))

(declare-fun setIsEmpty!26378 () Bool)

(assert (=> setIsEmpty!26378 setRes!26378))

(assert (=> b!4289977 (= tp!1315357 e!2664888)))

(declare-fun setElem!26378 () Context!5678)

(declare-fun tp!1315421 () Bool)

(declare-fun setNonEmpty!26378 () Bool)

(assert (=> setNonEmpty!26378 (= setRes!26378 (and tp!1315421 (inv!63157 setElem!26378) e!2664887))))

(declare-fun setRest!26378 () (InoxSet Context!5678))

(assert (=> setNonEmpty!26378 (= (_1!25855 (_1!25856 (h!53084 (t!354389 mapDefault!19757)))) ((_ map or) (store ((as const (Array Context!5678 Bool)) false) setElem!26378 true) setRest!26378))))

(assert (= (and b!4290167 condSetEmpty!26378) setIsEmpty!26378))

(assert (= (and b!4290167 (not condSetEmpty!26378)) setNonEmpty!26378))

(assert (= setNonEmpty!26378 b!4290168))

(assert (= (and b!4289977 ((_ is Cons!47664) (t!354389 mapDefault!19757))) b!4290167))

(declare-fun m!4884654 () Bool)

(assert (=> setNonEmpty!26378 m!4884654))

(declare-fun b!4290170 () Bool)

(declare-fun e!2664889 () Bool)

(declare-fun tp!1315426 () Bool)

(assert (=> b!4290170 (= e!2664889 tp!1315426)))

(declare-fun b!4290169 () Bool)

(declare-fun e!2664890 () Bool)

(declare-fun setRes!26379 () Bool)

(declare-fun tp!1315425 () Bool)

(assert (=> b!4290169 (= e!2664890 (and setRes!26379 tp!1315425))))

(declare-fun condSetEmpty!26379 () Bool)

(assert (=> b!4290169 (= condSetEmpty!26379 (= (_1!25855 (_1!25856 (h!53084 (t!354389 mapDefault!19754)))) ((as const (Array Context!5678 Bool)) false)))))

(declare-fun setIsEmpty!26379 () Bool)

(assert (=> setIsEmpty!26379 setRes!26379))

(assert (=> b!4290006 (= tp!1315386 e!2664890)))

(declare-fun setNonEmpty!26379 () Bool)

(declare-fun setElem!26379 () Context!5678)

(declare-fun tp!1315424 () Bool)

(assert (=> setNonEmpty!26379 (= setRes!26379 (and tp!1315424 (inv!63157 setElem!26379) e!2664889))))

(declare-fun setRest!26379 () (InoxSet Context!5678))

(assert (=> setNonEmpty!26379 (= (_1!25855 (_1!25856 (h!53084 (t!354389 mapDefault!19754)))) ((_ map or) (store ((as const (Array Context!5678 Bool)) false) setElem!26379 true) setRest!26379))))

(assert (= (and b!4290169 condSetEmpty!26379) setIsEmpty!26379))

(assert (= (and b!4290169 (not condSetEmpty!26379)) setNonEmpty!26379))

(assert (= setNonEmpty!26379 b!4290170))

(assert (= (and b!4290006 ((_ is Cons!47664) (t!354389 mapDefault!19754))) b!4290169))

(declare-fun m!4884656 () Bool)

(assert (=> setNonEmpty!26379 m!4884656))

(declare-fun b!4290171 () Bool)

(declare-fun e!2664891 () Bool)

(declare-fun tp!1315427 () Bool)

(declare-fun tp!1315428 () Bool)

(assert (=> b!4290171 (= e!2664891 (and tp!1315427 tp!1315428))))

(assert (=> b!4289978 (= tp!1315355 e!2664891)))

(assert (= (and b!4289978 ((_ is Cons!47663) (exprs!3339 setElem!26362))) b!4290171))

(declare-fun tp!1315430 () Bool)

(declare-fun e!2664893 () Bool)

(declare-fun b!4290172 () Bool)

(declare-fun tp!1315429 () Bool)

(assert (=> b!4290172 (= e!2664893 (and (inv!63152 (left!35398 (left!35398 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))) tp!1315430 (inv!63152 (right!35728 (left!35398 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))) tp!1315429))))

(declare-fun b!4290174 () Bool)

(declare-fun e!2664892 () Bool)

(declare-fun tp!1315431 () Bool)

(assert (=> b!4290174 (= e!2664892 tp!1315431)))

(declare-fun b!4290173 () Bool)

(assert (=> b!4290173 (= e!2664893 (and (inv!63158 (xs!17697 (left!35398 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))) e!2664892))))

(assert (=> b!4289996 (= tp!1315374 (and (inv!63152 (left!35398 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))) e!2664893))))

(assert (= (and b!4289996 ((_ is Node!14391) (left!35398 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))) b!4290172))

(assert (= b!4290173 b!4290174))

(assert (= (and b!4289996 ((_ is Leaf!22267) (left!35398 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))) b!4290173))

(declare-fun m!4884658 () Bool)

(assert (=> b!4290172 m!4884658))

(declare-fun m!4884660 () Bool)

(assert (=> b!4290172 m!4884660))

(declare-fun m!4884662 () Bool)

(assert (=> b!4290173 m!4884662))

(assert (=> b!4289996 m!4884473))

(declare-fun e!2664895 () Bool)

(declare-fun tp!1315432 () Bool)

(declare-fun tp!1315433 () Bool)

(declare-fun b!4290175 () Bool)

(assert (=> b!4290175 (= e!2664895 (and (inv!63152 (left!35398 (right!35728 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))) tp!1315433 (inv!63152 (right!35728 (right!35728 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))) tp!1315432))))

(declare-fun b!4290177 () Bool)

(declare-fun e!2664894 () Bool)

(declare-fun tp!1315434 () Bool)

(assert (=> b!4290177 (= e!2664894 tp!1315434)))

(declare-fun b!4290176 () Bool)

(assert (=> b!4290176 (= e!2664895 (and (inv!63158 (xs!17697 (right!35728 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))) e!2664894))))

(assert (=> b!4289996 (= tp!1315373 (and (inv!63152 (right!35728 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))) e!2664895))))

(assert (= (and b!4289996 ((_ is Node!14391) (right!35728 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))) b!4290175))

(assert (= b!4290176 b!4290177))

(assert (= (and b!4289996 ((_ is Leaf!22267) (right!35728 (c!730247 (totalInput!4349 cacheFindLongestMatch!171))))) b!4290176))

(declare-fun m!4884664 () Bool)

(assert (=> b!4290175 m!4884664))

(declare-fun m!4884666 () Bool)

(assert (=> b!4290175 m!4884666))

(declare-fun m!4884668 () Bool)

(assert (=> b!4290176 m!4884668))

(assert (=> b!4289996 m!4884475))

(declare-fun condSetEmpty!26380 () Bool)

(assert (=> setNonEmpty!26369 (= condSetEmpty!26380 (= setRest!26369 ((as const (Array Context!5678 Bool)) false)))))

(declare-fun setRes!26380 () Bool)

(assert (=> setNonEmpty!26369 (= tp!1315385 setRes!26380)))

(declare-fun setIsEmpty!26380 () Bool)

(assert (=> setIsEmpty!26380 setRes!26380))

(declare-fun tp!1315435 () Bool)

(declare-fun e!2664896 () Bool)

(declare-fun setNonEmpty!26380 () Bool)

(declare-fun setElem!26380 () Context!5678)

(assert (=> setNonEmpty!26380 (= setRes!26380 (and tp!1315435 (inv!63157 setElem!26380) e!2664896))))

(declare-fun setRest!26380 () (InoxSet Context!5678))

(assert (=> setNonEmpty!26380 (= setRest!26369 ((_ map or) (store ((as const (Array Context!5678 Bool)) false) setElem!26380 true) setRest!26380))))

(declare-fun b!4290178 () Bool)

(declare-fun tp!1315436 () Bool)

(assert (=> b!4290178 (= e!2664896 tp!1315436)))

(assert (= (and setNonEmpty!26369 condSetEmpty!26380) setIsEmpty!26380))

(assert (= (and setNonEmpty!26369 (not condSetEmpty!26380)) setNonEmpty!26380))

(assert (= setNonEmpty!26380 b!4290178))

(declare-fun m!4884670 () Bool)

(assert (=> setNonEmpty!26380 m!4884670))

(declare-fun b!4290179 () Bool)

(declare-fun e!2664897 () Bool)

(declare-fun tp!1315437 () Bool)

(declare-fun tp!1315438 () Bool)

(assert (=> b!4290179 (= e!2664897 (and tp!1315437 tp!1315438))))

(assert (=> b!4290000 (= tp!1315378 e!2664897)))

(assert (= (and b!4290000 ((_ is Cons!47663) (exprs!3339 setElem!26367))) b!4290179))

(declare-fun condSetEmpty!26381 () Bool)

(assert (=> setNonEmpty!26362 (= condSetEmpty!26381 (= setRest!26362 ((as const (Array Context!5678 Bool)) false)))))

(declare-fun setRes!26381 () Bool)

(assert (=> setNonEmpty!26362 (= tp!1315356 setRes!26381)))

(declare-fun setIsEmpty!26381 () Bool)

(assert (=> setIsEmpty!26381 setRes!26381))

(declare-fun setElem!26381 () Context!5678)

(declare-fun setNonEmpty!26381 () Bool)

(declare-fun tp!1315439 () Bool)

(declare-fun e!2664898 () Bool)

(assert (=> setNonEmpty!26381 (= setRes!26381 (and tp!1315439 (inv!63157 setElem!26381) e!2664898))))

(declare-fun setRest!26381 () (InoxSet Context!5678))

(assert (=> setNonEmpty!26381 (= setRest!26362 ((_ map or) (store ((as const (Array Context!5678 Bool)) false) setElem!26381 true) setRest!26381))))

(declare-fun b!4290180 () Bool)

(declare-fun tp!1315440 () Bool)

(assert (=> b!4290180 (= e!2664898 tp!1315440)))

(assert (= (and setNonEmpty!26362 condSetEmpty!26381) setIsEmpty!26381))

(assert (= (and setNonEmpty!26362 (not condSetEmpty!26381)) setNonEmpty!26381))

(assert (= setNonEmpty!26381 b!4290180))

(declare-fun m!4884672 () Bool)

(assert (=> setNonEmpty!26381 m!4884672))

(declare-fun setIsEmpty!26382 () Bool)

(declare-fun setRes!26383 () Bool)

(assert (=> setIsEmpty!26382 setRes!26383))

(declare-fun b!4290181 () Bool)

(declare-fun e!2664899 () Bool)

(declare-fun tp!1315441 () Bool)

(assert (=> b!4290181 (= e!2664899 (and setRes!26383 tp!1315441))))

(declare-fun condSetEmpty!26383 () Bool)

(declare-fun mapValue!19758 () List!47788)

(assert (=> b!4290181 (= condSetEmpty!26383 (= (_1!25855 (_1!25856 (h!53084 mapValue!19758))) ((as const (Array Context!5678 Bool)) false)))))

(declare-fun setIsEmpty!26383 () Bool)

(declare-fun setRes!26382 () Bool)

(assert (=> setIsEmpty!26383 setRes!26382))

(declare-fun b!4290182 () Bool)

(declare-fun e!2664902 () Bool)

(declare-fun tp!1315447 () Bool)

(assert (=> b!4290182 (= e!2664902 (and setRes!26382 tp!1315447))))

(declare-fun condSetEmpty!26382 () Bool)

(declare-fun mapDefault!19758 () List!47788)

(assert (=> b!4290182 (= condSetEmpty!26382 (= (_1!25855 (_1!25856 (h!53084 mapDefault!19758))) ((as const (Array Context!5678 Bool)) false)))))

(declare-fun b!4290183 () Bool)

(declare-fun e!2664901 () Bool)

(declare-fun tp!1315445 () Bool)

(assert (=> b!4290183 (= e!2664901 tp!1315445)))

(declare-fun mapNonEmpty!19758 () Bool)

(declare-fun mapRes!19758 () Bool)

(declare-fun tp!1315442 () Bool)

(assert (=> mapNonEmpty!19758 (= mapRes!19758 (and tp!1315442 e!2664899))))

(declare-fun mapRest!19758 () (Array (_ BitVec 32) List!47788))

(declare-fun mapKey!19758 () (_ BitVec 32))

(assert (=> mapNonEmpty!19758 (= mapRest!19757 (store mapRest!19758 mapKey!19758 mapValue!19758))))

(declare-fun b!4290184 () Bool)

(declare-fun e!2664900 () Bool)

(declare-fun tp!1315443 () Bool)

(assert (=> b!4290184 (= e!2664900 tp!1315443)))

(declare-fun tp!1315444 () Bool)

(declare-fun setNonEmpty!26383 () Bool)

(declare-fun setElem!26382 () Context!5678)

(assert (=> setNonEmpty!26383 (= setRes!26382 (and tp!1315444 (inv!63157 setElem!26382) e!2664901))))

(declare-fun setRest!26383 () (InoxSet Context!5678))

(assert (=> setNonEmpty!26383 (= (_1!25855 (_1!25856 (h!53084 mapDefault!19758))) ((_ map or) (store ((as const (Array Context!5678 Bool)) false) setElem!26382 true) setRest!26383))))

(declare-fun mapIsEmpty!19758 () Bool)

(assert (=> mapIsEmpty!19758 mapRes!19758))

(declare-fun setNonEmpty!26382 () Bool)

(declare-fun setElem!26383 () Context!5678)

(declare-fun tp!1315446 () Bool)

(assert (=> setNonEmpty!26382 (= setRes!26383 (and tp!1315446 (inv!63157 setElem!26383) e!2664900))))

(declare-fun setRest!26382 () (InoxSet Context!5678))

(assert (=> setNonEmpty!26382 (= (_1!25855 (_1!25856 (h!53084 mapValue!19758))) ((_ map or) (store ((as const (Array Context!5678 Bool)) false) setElem!26383 true) setRest!26382))))

(declare-fun condMapEmpty!19758 () Bool)

(assert (=> mapNonEmpty!19757 (= condMapEmpty!19758 (= mapRest!19757 ((as const (Array (_ BitVec 32) List!47788)) mapDefault!19758)))))

(assert (=> mapNonEmpty!19757 (= tp!1315352 (and e!2664902 mapRes!19758))))

(assert (= (and mapNonEmpty!19757 condMapEmpty!19758) mapIsEmpty!19758))

(assert (= (and mapNonEmpty!19757 (not condMapEmpty!19758)) mapNonEmpty!19758))

(assert (= (and b!4290181 condSetEmpty!26383) setIsEmpty!26382))

(assert (= (and b!4290181 (not condSetEmpty!26383)) setNonEmpty!26382))

(assert (= setNonEmpty!26382 b!4290184))

(assert (= (and mapNonEmpty!19758 ((_ is Cons!47664) mapValue!19758)) b!4290181))

(assert (= (and b!4290182 condSetEmpty!26382) setIsEmpty!26383))

(assert (= (and b!4290182 (not condSetEmpty!26382)) setNonEmpty!26383))

(assert (= setNonEmpty!26383 b!4290183))

(assert (= (and mapNonEmpty!19757 ((_ is Cons!47664) mapDefault!19758)) b!4290182))

(declare-fun m!4884674 () Bool)

(assert (=> mapNonEmpty!19758 m!4884674))

(declare-fun m!4884676 () Bool)

(assert (=> setNonEmpty!26383 m!4884676))

(declare-fun m!4884678 () Bool)

(assert (=> setNonEmpty!26382 m!4884678))

(declare-fun e!2664904 () Bool)

(declare-fun tp!1315448 () Bool)

(declare-fun b!4290185 () Bool)

(declare-fun tp!1315449 () Bool)

(assert (=> b!4290185 (= e!2664904 (and (inv!63152 (left!35398 (left!35398 (c!730247 input!5500)))) tp!1315449 (inv!63152 (right!35728 (left!35398 (c!730247 input!5500)))) tp!1315448))))

(declare-fun b!4290187 () Bool)

(declare-fun e!2664903 () Bool)

(declare-fun tp!1315450 () Bool)

(assert (=> b!4290187 (= e!2664903 tp!1315450)))

(declare-fun b!4290186 () Bool)

(assert (=> b!4290186 (= e!2664904 (and (inv!63158 (xs!17697 (left!35398 (c!730247 input!5500)))) e!2664903))))

(assert (=> b!4290003 (= tp!1315383 (and (inv!63152 (left!35398 (c!730247 input!5500))) e!2664904))))

(assert (= (and b!4290003 ((_ is Node!14391) (left!35398 (c!730247 input!5500)))) b!4290185))

(assert (= b!4290186 b!4290187))

(assert (= (and b!4290003 ((_ is Leaf!22267) (left!35398 (c!730247 input!5500)))) b!4290186))

(declare-fun m!4884680 () Bool)

(assert (=> b!4290185 m!4884680))

(declare-fun m!4884682 () Bool)

(assert (=> b!4290185 m!4884682))

(declare-fun m!4884684 () Bool)

(assert (=> b!4290186 m!4884684))

(assert (=> b!4290003 m!4884483))

(declare-fun tp!1315451 () Bool)

(declare-fun tp!1315452 () Bool)

(declare-fun b!4290188 () Bool)

(declare-fun e!2664906 () Bool)

(assert (=> b!4290188 (= e!2664906 (and (inv!63152 (left!35398 (right!35728 (c!730247 input!5500)))) tp!1315452 (inv!63152 (right!35728 (right!35728 (c!730247 input!5500)))) tp!1315451))))

(declare-fun b!4290190 () Bool)

(declare-fun e!2664905 () Bool)

(declare-fun tp!1315453 () Bool)

(assert (=> b!4290190 (= e!2664905 tp!1315453)))

(declare-fun b!4290189 () Bool)

(assert (=> b!4290189 (= e!2664906 (and (inv!63158 (xs!17697 (right!35728 (c!730247 input!5500)))) e!2664905))))

(assert (=> b!4290003 (= tp!1315382 (and (inv!63152 (right!35728 (c!730247 input!5500))) e!2664906))))

(assert (= (and b!4290003 ((_ is Node!14391) (right!35728 (c!730247 input!5500)))) b!4290188))

(assert (= b!4290189 b!4290190))

(assert (= (and b!4290003 ((_ is Leaf!22267) (right!35728 (c!730247 input!5500)))) b!4290189))

(declare-fun m!4884686 () Bool)

(assert (=> b!4290188 m!4884686))

(declare-fun m!4884688 () Bool)

(assert (=> b!4290188 m!4884688))

(declare-fun m!4884690 () Bool)

(assert (=> b!4290189 m!4884690))

(assert (=> b!4290003 m!4884485))

(declare-fun b!4290191 () Bool)

(declare-fun e!2664907 () Bool)

(declare-fun tp!1315454 () Bool)

(declare-fun tp!1315455 () Bool)

(assert (=> b!4290191 (= e!2664907 (and tp!1315454 tp!1315455))))

(assert (=> b!4290007 (= tp!1315387 e!2664907)))

(assert (= (and b!4290007 ((_ is Cons!47663) (exprs!3339 setElem!26369))) b!4290191))

(declare-fun b!4290192 () Bool)

(declare-fun e!2664908 () Bool)

(declare-fun tp!1315456 () Bool)

(declare-fun tp!1315457 () Bool)

(assert (=> b!4290192 (= e!2664908 (and tp!1315456 tp!1315457))))

(assert (=> b!4289979 (= tp!1315353 e!2664908)))

(assert (= (and b!4289979 ((_ is Cons!47663) (exprs!3339 setElem!26363))) b!4290192))

(declare-fun b!4290193 () Bool)

(declare-fun e!2664909 () Bool)

(declare-fun tp!1315458 () Bool)

(assert (=> b!4290193 (= e!2664909 (and tp_is_empty!23115 tp!1315458))))

(assert (=> b!4289998 (= tp!1315375 e!2664909)))

(assert (= (and b!4289998 ((_ is Cons!47665) (innerList!14479 (xs!17697 (c!730247 (totalInput!4349 cacheFindLongestMatch!171)))))) b!4290193))

(declare-fun condSetEmpty!26384 () Bool)

(assert (=> setNonEmpty!26363 (= condSetEmpty!26384 (= setRest!26363 ((as const (Array Context!5678 Bool)) false)))))

(declare-fun setRes!26384 () Bool)

(assert (=> setNonEmpty!26363 (= tp!1315354 setRes!26384)))

(declare-fun setIsEmpty!26384 () Bool)

(assert (=> setIsEmpty!26384 setRes!26384))

(declare-fun setNonEmpty!26384 () Bool)

(declare-fun tp!1315459 () Bool)

(declare-fun setElem!26384 () Context!5678)

(declare-fun e!2664910 () Bool)

(assert (=> setNonEmpty!26384 (= setRes!26384 (and tp!1315459 (inv!63157 setElem!26384) e!2664910))))

(declare-fun setRest!26384 () (InoxSet Context!5678))

(assert (=> setNonEmpty!26384 (= setRest!26363 ((_ map or) (store ((as const (Array Context!5678 Bool)) false) setElem!26384 true) setRest!26384))))

(declare-fun b!4290194 () Bool)

(declare-fun tp!1315460 () Bool)

(assert (=> b!4290194 (= e!2664910 tp!1315460)))

(assert (= (and setNonEmpty!26363 condSetEmpty!26384) setIsEmpty!26384))

(assert (= (and setNonEmpty!26363 (not condSetEmpty!26384)) setNonEmpty!26384))

(assert (= setNonEmpty!26384 b!4290194))

(declare-fun m!4884692 () Bool)

(assert (=> setNonEmpty!26384 m!4884692))

(declare-fun b!4290195 () Bool)

(declare-fun e!2664911 () Bool)

(declare-fun tp!1315461 () Bool)

(assert (=> b!4290195 (= e!2664911 (and tp_is_empty!23115 tp!1315461))))

(assert (=> b!4290005 (= tp!1315384 e!2664911)))

(assert (= (and b!4290005 ((_ is Cons!47665) (innerList!14479 (xs!17697 (c!730247 input!5500))))) b!4290195))

(declare-fun b!4290197 () Bool)

(declare-fun e!2664912 () Bool)

(declare-fun tp!1315464 () Bool)

(assert (=> b!4290197 (= e!2664912 tp!1315464)))

(declare-fun b!4290196 () Bool)

(declare-fun e!2664913 () Bool)

(declare-fun setRes!26385 () Bool)

(declare-fun tp!1315463 () Bool)

(assert (=> b!4290196 (= e!2664913 (and setRes!26385 tp!1315463))))

(declare-fun condSetEmpty!26385 () Bool)

(assert (=> b!4290196 (= condSetEmpty!26385 (= (_1!25855 (_1!25856 (h!53084 (t!354389 mapValue!19754)))) ((as const (Array Context!5678 Bool)) false)))))

(declare-fun setIsEmpty!26385 () Bool)

(assert (=> setIsEmpty!26385 setRes!26385))

(assert (=> b!4289986 (= tp!1315365 e!2664913)))

(declare-fun setElem!26385 () Context!5678)

(declare-fun setNonEmpty!26385 () Bool)

(declare-fun tp!1315462 () Bool)

(assert (=> setNonEmpty!26385 (= setRes!26385 (and tp!1315462 (inv!63157 setElem!26385) e!2664912))))

(declare-fun setRest!26385 () (InoxSet Context!5678))

(assert (=> setNonEmpty!26385 (= (_1!25855 (_1!25856 (h!53084 (t!354389 mapValue!19754)))) ((_ map or) (store ((as const (Array Context!5678 Bool)) false) setElem!26385 true) setRest!26385))))

(assert (= (and b!4290196 condSetEmpty!26385) setIsEmpty!26385))

(assert (= (and b!4290196 (not condSetEmpty!26385)) setNonEmpty!26385))

(assert (= setNonEmpty!26385 b!4290197))

(assert (= (and b!4289986 ((_ is Cons!47664) (t!354389 mapValue!19754))) b!4290196))

(declare-fun m!4884694 () Bool)

(assert (=> setNonEmpty!26385 m!4884694))

(declare-fun tp!1315465 () Bool)

(declare-fun e!2664915 () Bool)

(declare-fun b!4290198 () Bool)

(declare-fun tp!1315466 () Bool)

(assert (=> b!4290198 (= e!2664915 (and (inv!63152 (left!35398 (left!35398 (c!730247 totalInput!793)))) tp!1315466 (inv!63152 (right!35728 (left!35398 (c!730247 totalInput!793)))) tp!1315465))))

(declare-fun b!4290200 () Bool)

(declare-fun e!2664914 () Bool)

(declare-fun tp!1315467 () Bool)

(assert (=> b!4290200 (= e!2664914 tp!1315467)))

(declare-fun b!4290199 () Bool)

(assert (=> b!4290199 (= e!2664915 (and (inv!63158 (xs!17697 (left!35398 (c!730247 totalInput!793)))) e!2664914))))

(assert (=> b!4290008 (= tp!1315389 (and (inv!63152 (left!35398 (c!730247 totalInput!793))) e!2664915))))

(assert (= (and b!4290008 ((_ is Node!14391) (left!35398 (c!730247 totalInput!793)))) b!4290198))

(assert (= b!4290199 b!4290200))

(assert (= (and b!4290008 ((_ is Leaf!22267) (left!35398 (c!730247 totalInput!793)))) b!4290199))

(declare-fun m!4884696 () Bool)

(assert (=> b!4290198 m!4884696))

(declare-fun m!4884698 () Bool)

(assert (=> b!4290198 m!4884698))

(declare-fun m!4884700 () Bool)

(assert (=> b!4290199 m!4884700))

(assert (=> b!4290008 m!4884491))

(declare-fun tp!1315469 () Bool)

(declare-fun tp!1315468 () Bool)

(declare-fun b!4290201 () Bool)

(declare-fun e!2664917 () Bool)

(assert (=> b!4290201 (= e!2664917 (and (inv!63152 (left!35398 (right!35728 (c!730247 totalInput!793)))) tp!1315469 (inv!63152 (right!35728 (right!35728 (c!730247 totalInput!793)))) tp!1315468))))

(declare-fun b!4290203 () Bool)

(declare-fun e!2664916 () Bool)

(declare-fun tp!1315470 () Bool)

(assert (=> b!4290203 (= e!2664916 tp!1315470)))

(declare-fun b!4290202 () Bool)

(assert (=> b!4290202 (= e!2664917 (and (inv!63158 (xs!17697 (right!35728 (c!730247 totalInput!793)))) e!2664916))))

(assert (=> b!4290008 (= tp!1315388 (and (inv!63152 (right!35728 (c!730247 totalInput!793))) e!2664917))))

(assert (= (and b!4290008 ((_ is Node!14391) (right!35728 (c!730247 totalInput!793)))) b!4290201))

(assert (= b!4290202 b!4290203))

(assert (= (and b!4290008 ((_ is Leaf!22267) (right!35728 (c!730247 totalInput!793)))) b!4290202))

(declare-fun m!4884702 () Bool)

(assert (=> b!4290201 m!4884702))

(declare-fun m!4884704 () Bool)

(assert (=> b!4290201 m!4884704))

(declare-fun m!4884706 () Bool)

(assert (=> b!4290202 m!4884706))

(assert (=> b!4290008 m!4884493))

(check-sat (not b!4290165) (not b!4290177) (not b!4290185) (not b!4290070) (not b!4290167) (not b!4290078) (not b!4290057) (not b!4290028) (not b!4290199) (not b!4290063) (not setNonEmpty!26375) (not b!4290202) (not b!4290175) (not b!4290074) (not d!1265562) (not b!4290122) (not d!1265528) (not b!4289996) (not b!4290179) (not b!4290180) (not setNonEmpty!26376) (not d!1265570) (not d!1265526) (not b!4290058) (not b!4290176) (not b!4290109) (not b!4290127) (not setNonEmpty!26374) (not b!4290008) (not b!4290132) (not b!4290193) (not d!1265572) (not b!4290021) (not b!4290147) (not b!4290077) (not bm!294501) (not d!1265524) (not mapNonEmpty!19758) (not d!1265568) (not b!4290162) (not setNonEmpty!26381) (not b!4290129) (not d!1265566) (not setNonEmpty!26372) (not setNonEmpty!26380) (not setNonEmpty!26384) (not b!4290133) b_and!338583 (not b!4290131) (not b!4290080) (not setNonEmpty!26373) (not b!4290117) (not b_next!128073) (not b!4290170) (not b!4290187) (not b!4290121) (not d!1265552) (not b!4290134) (not b!4290191) (not setNonEmpty!26377) (not b!4290036) (not b!4290042) (not b!4290075) (not b!4290186) (not b!4290152) (not b!4290166) (not b!4290183) (not b!4290192) (not b!4290181) (not d!1265560) (not d!1265544) (not b!4290072) (not b!4290130) (not d!1265540) (not b!4290188) (not d!1265550) (not b!4290163) (not d!1265536) (not b!4290060) (not b!4290140) (not d!1265532) (not b!4290135) (not b!4290142) b_and!338585 (not b!4290061) (not setNonEmpty!26378) (not b!4290197) (not b!4290124) (not b!4290171) (not d!1265542) (not d!1265576) (not b!4290174) (not b!4290201) (not b!4290190) (not b!4290116) (not b!4290164) (not b!4290189) (not d!1265580) (not b!4290137) (not b!4290173) (not b!4290195) (not b!4290196) (not b!4290108) (not b!4290084) (not setNonEmpty!26385) (not b!4290172) (not setNonEmpty!26382) tp_is_empty!23115 (not b!4290065) (not b!4290069) (not b_next!128071) (not b!4290184) (not b!4290194) (not b!4290155) (not b!4290160) (not b!4290182) (not b!4290169) (not b!4290059) (not b!4290168) (not b!4290067) (not b!4290203) (not b!4290022) (not d!1265534) (not setNonEmpty!26379) (not b!4290200) (not b!4290120) (not b!4290153) (not b!4290178) (not b!4290161) (not b!4290123) (not b!4290154) (not b!4290139) (not b!4290003) (not b!4290083) (not b!4290198) (not b!4290056) (not setNonEmpty!26383) (not b!4290125))
(check-sat b_and!338585 b_and!338583 (not b_next!128071) (not b_next!128073))
