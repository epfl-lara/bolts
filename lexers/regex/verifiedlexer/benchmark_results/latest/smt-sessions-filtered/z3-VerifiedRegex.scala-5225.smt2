; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268898 () Bool)

(assert start!268898)

(declare-fun b!2782502 () Bool)

(declare-fun b_free!78549 () Bool)

(declare-fun b_next!79253 () Bool)

(assert (=> b!2782502 (= b_free!78549 (not b_next!79253))))

(declare-fun tp!880942 () Bool)

(declare-fun b_and!203287 () Bool)

(assert (=> b!2782502 (= tp!880942 b_and!203287)))

(declare-fun b!2782506 () Bool)

(declare-fun b_free!78551 () Bool)

(declare-fun b_next!79255 () Bool)

(assert (=> b!2782506 (= b_free!78551 (not b_next!79255))))

(declare-fun tp!880945 () Bool)

(declare-fun b_and!203289 () Bool)

(assert (=> b!2782506 (= tp!880945 b_and!203289)))

(declare-fun b!2782498 () Bool)

(declare-fun b_free!78553 () Bool)

(declare-fun b_next!79257 () Bool)

(assert (=> b!2782498 (= b_free!78553 (not b_next!79257))))

(declare-fun tp!880938 () Bool)

(declare-fun b_and!203291 () Bool)

(assert (=> b!2782498 (= tp!880938 b_and!203291)))

(declare-fun b!2782503 () Bool)

(declare-fun b_free!78555 () Bool)

(declare-fun b_next!79259 () Bool)

(assert (=> b!2782503 (= b_free!78555 (not b_next!79259))))

(declare-fun tp!880943 () Bool)

(declare-fun b_and!203293 () Bool)

(assert (=> b!2782503 (= tp!880943 b_and!203293)))

(declare-fun b!2782495 () Bool)

(declare-fun e!1755140 () Bool)

(declare-fun e!1755144 () Bool)

(assert (=> b!2782495 (= e!1755140 (not e!1755144))))

(declare-fun res!1161582 () Bool)

(assert (=> b!2782495 (=> res!1161582 e!1755144)))

(declare-datatypes ((C!16388 0))(
  ( (C!16389 (val!10128 Int)) )
))
(declare-datatypes ((List!32225 0))(
  ( (Nil!32125) (Cons!32125 (h!37545 C!16388) (t!228365 List!32225)) )
))
(declare-fun testedP!183 () List!32225)

(declare-fun lt!993883 () List!32225)

(declare-fun isPrefix!2565 (List!32225 List!32225) Bool)

(assert (=> b!2782495 (= res!1161582 (not (isPrefix!2565 testedP!183 lt!993883)))))

(declare-fun lt!993884 () List!32225)

(assert (=> b!2782495 (isPrefix!2565 testedP!183 lt!993884)))

(declare-datatypes ((Unit!46400 0))(
  ( (Unit!46401) )
))
(declare-fun lt!993885 () Unit!46400)

(declare-fun testedSuffix!143 () List!32225)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1675 (List!32225 List!32225) Unit!46400)

(assert (=> b!2782495 (= lt!993885 (lemmaConcatTwoListThenFirstIsPrefix!1675 testedP!183 testedSuffix!143))))

(declare-fun b!2782496 () Bool)

(declare-fun e!1755138 () Bool)

(declare-fun e!1755139 () Bool)

(assert (=> b!2782496 (= e!1755138 e!1755139)))

(declare-fun b!2782497 () Bool)

(declare-fun e!1755156 () Bool)

(declare-fun tp!880939 () Bool)

(declare-fun mapRes!17519 () Bool)

(assert (=> b!2782497 (= e!1755156 (and tp!880939 mapRes!17519))))

(declare-fun condMapEmpty!17519 () Bool)

(declare-datatypes ((Hashable!3753 0))(
  ( (HashableExt!3752 (__x!21161 Int)) )
))
(declare-datatypes ((Regex!8115 0))(
  ( (ElementMatch!8115 (c!452259 C!16388)) (Concat!13203 (regOne!16742 Regex!8115) (regTwo!16742 Regex!8115)) (EmptyExpr!8115) (Star!8115 (reg!8444 Regex!8115)) (EmptyLang!8115) (Union!8115 (regOne!16743 Regex!8115) (regTwo!16743 Regex!8115)) )
))
(declare-datatypes ((List!32226 0))(
  ( (Nil!32126) (Cons!32126 (h!37546 Regex!8115) (t!228366 List!32226)) )
))
(declare-datatypes ((Context!4666 0))(
  ( (Context!4667 (exprs!2833 List!32226)) )
))
(declare-datatypes ((tuple2!32388 0))(
  ( (tuple2!32389 (_1!19141 Context!4666) (_2!19141 C!16388)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32390 0))(
  ( (tuple2!32391 (_1!19142 tuple2!32388) (_2!19142 (InoxSet Context!4666))) )
))
(declare-datatypes ((List!32227 0))(
  ( (Nil!32127) (Cons!32127 (h!37547 tuple2!32390) (t!228367 List!32227)) )
))
(declare-datatypes ((array!13652 0))(
  ( (array!13653 (arr!6085 (Array (_ BitVec 32) List!32227)) (size!24924 (_ BitVec 32))) )
))
(declare-datatypes ((array!13654 0))(
  ( (array!13655 (arr!6086 (Array (_ BitVec 32) (_ BitVec 64))) (size!24925 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7674 0))(
  ( (LongMapFixedSize!7675 (defaultEntry!4222 Int) (mask!9631 (_ BitVec 32)) (extraKeys!4086 (_ BitVec 32)) (zeroValue!4096 List!32227) (minValue!4096 List!32227) (_size!7717 (_ BitVec 32)) (_keys!4137 array!13654) (_values!4118 array!13652) (_vacant!3898 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15157 0))(
  ( (Cell!15158 (v!33735 LongMapFixedSize!7674)) )
))
(declare-datatypes ((MutLongMap!3837 0))(
  ( (LongMap!3837 (underlying!7877 Cell!15157)) (MutLongMapExt!3836 (__x!21162 Int)) )
))
(declare-datatypes ((Cell!15159 0))(
  ( (Cell!15160 (v!33736 MutLongMap!3837)) )
))
(declare-datatypes ((MutableMap!3743 0))(
  ( (MutableMapExt!3742 (__x!21163 Int)) (HashMap!3743 (underlying!7878 Cell!15159) (hashF!5785 Hashable!3753) (_size!7718 (_ BitVec 32)) (defaultValue!3914 Int)) )
))
(declare-datatypes ((CacheUp!2448 0))(
  ( (CacheUp!2449 (cache!3886 MutableMap!3743)) )
))
(declare-fun cacheUp!890 () CacheUp!2448)

(declare-fun mapDefault!17519 () List!32227)

(assert (=> b!2782497 (= condMapEmpty!17519 (= (arr!6085 (_values!4118 (v!33735 (underlying!7877 (v!33736 (underlying!7878 (cache!3886 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32227)) mapDefault!17519)))))

(declare-fun e!1755153 () Bool)

(declare-fun tp!880944 () Bool)

(declare-fun tp!880933 () Bool)

(declare-fun array_inv!4353 (array!13654) Bool)

(declare-fun array_inv!4354 (array!13652) Bool)

(assert (=> b!2782498 (= e!1755153 (and tp!880938 tp!880933 tp!880944 (array_inv!4353 (_keys!4137 (v!33735 (underlying!7877 (v!33736 (underlying!7878 (cache!3886 cacheUp!890))))))) (array_inv!4354 (_values!4118 (v!33735 (underlying!7877 (v!33736 (underlying!7878 (cache!3886 cacheUp!890))))))) e!1755156))))

(declare-fun b!2782499 () Bool)

(declare-fun e!1755149 () Bool)

(assert (=> b!2782499 (= e!1755139 e!1755149)))

(declare-fun b!2782500 () Bool)

(declare-fun res!1161583 () Bool)

(assert (=> b!2782500 (=> (not res!1161583) (not e!1755140))))

(declare-datatypes ((tuple3!4954 0))(
  ( (tuple3!4955 (_1!19143 Regex!8115) (_2!19143 Context!4666) (_3!2947 C!16388)) )
))
(declare-datatypes ((tuple2!32392 0))(
  ( (tuple2!32393 (_1!19144 tuple3!4954) (_2!19144 (InoxSet Context!4666))) )
))
(declare-datatypes ((List!32228 0))(
  ( (Nil!32128) (Cons!32128 (h!37548 tuple2!32392) (t!228368 List!32228)) )
))
(declare-datatypes ((array!13656 0))(
  ( (array!13657 (arr!6087 (Array (_ BitVec 32) List!32228)) (size!24926 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7676 0))(
  ( (LongMapFixedSize!7677 (defaultEntry!4223 Int) (mask!9632 (_ BitVec 32)) (extraKeys!4087 (_ BitVec 32)) (zeroValue!4097 List!32228) (minValue!4097 List!32228) (_size!7719 (_ BitVec 32)) (_keys!4138 array!13654) (_values!4119 array!13656) (_vacant!3899 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15161 0))(
  ( (Cell!15162 (v!33737 LongMapFixedSize!7676)) )
))
(declare-datatypes ((MutLongMap!3838 0))(
  ( (LongMap!3838 (underlying!7879 Cell!15161)) (MutLongMapExt!3837 (__x!21164 Int)) )
))
(declare-datatypes ((Cell!15163 0))(
  ( (Cell!15164 (v!33738 MutLongMap!3838)) )
))
(declare-datatypes ((Hashable!3754 0))(
  ( (HashableExt!3753 (__x!21165 Int)) )
))
(declare-datatypes ((MutableMap!3744 0))(
  ( (MutableMapExt!3743 (__x!21166 Int)) (HashMap!3744 (underlying!7880 Cell!15163) (hashF!5786 Hashable!3754) (_size!7720 (_ BitVec 32)) (defaultValue!3915 Int)) )
))
(declare-datatypes ((CacheDown!2570 0))(
  ( (CacheDown!2571 (cache!3887 MutableMap!3744)) )
))
(declare-fun cacheDown!1009 () CacheDown!2570)

(declare-fun valid!3002 (CacheDown!2570) Bool)

(assert (=> b!2782500 (= res!1161583 (valid!3002 cacheDown!1009))))

(declare-fun e!1755145 () Bool)

(declare-fun e!1755141 () Bool)

(assert (=> b!2782502 (= e!1755145 (and e!1755141 tp!880942))))

(declare-fun tp!880941 () Bool)

(declare-fun tp!880947 () Bool)

(declare-fun e!1755143 () Bool)

(declare-fun array_inv!4355 (array!13656) Bool)

(assert (=> b!2782503 (= e!1755149 (and tp!880943 tp!880941 tp!880947 (array_inv!4353 (_keys!4138 (v!33737 (underlying!7879 (v!33738 (underlying!7880 (cache!3887 cacheDown!1009))))))) (array_inv!4355 (_values!4119 (v!33737 (underlying!7879 (v!33738 (underlying!7880 (cache!3887 cacheDown!1009))))))) e!1755143))))

(declare-fun b!2782504 () Bool)

(declare-fun e!1755151 () Bool)

(declare-fun tp_is_empty!14043 () Bool)

(declare-fun tp!880940 () Bool)

(assert (=> b!2782504 (= e!1755151 (and tp_is_empty!14043 tp!880940))))

(declare-fun b!2782505 () Bool)

(declare-fun e!1755155 () Bool)

(declare-fun e!1755154 () Bool)

(assert (=> b!2782505 (= e!1755155 e!1755154)))

(declare-fun e!1755147 () Bool)

(assert (=> b!2782506 (= e!1755154 (and e!1755147 tp!880945))))

(declare-fun b!2782507 () Bool)

(declare-fun res!1161584 () Bool)

(assert (=> b!2782507 (=> (not res!1161584) (not e!1755140))))

(declare-fun valid!3003 (CacheUp!2448) Bool)

(assert (=> b!2782507 (= res!1161584 (valid!3003 cacheUp!890))))

(declare-fun b!2782508 () Bool)

(declare-fun e!1755157 () Bool)

(declare-fun lt!993887 () MutLongMap!3837)

(get-info :version)

(assert (=> b!2782508 (= e!1755147 (and e!1755157 ((_ is LongMap!3837) lt!993887)))))

(assert (=> b!2782508 (= lt!993887 (v!33736 (underlying!7878 (cache!3886 cacheUp!890))))))

(declare-fun b!2782509 () Bool)

(declare-fun lt!993881 () MutLongMap!3838)

(assert (=> b!2782509 (= e!1755141 (and e!1755138 ((_ is LongMap!3838) lt!993881)))))

(assert (=> b!2782509 (= lt!993881 (v!33738 (underlying!7880 (cache!3887 cacheDown!1009))))))

(declare-fun b!2782510 () Bool)

(declare-fun e!1755142 () Bool)

(assert (=> b!2782510 (= e!1755157 e!1755142)))

(declare-fun mapIsEmpty!17519 () Bool)

(assert (=> mapIsEmpty!17519 mapRes!17519))

(declare-fun b!2782511 () Bool)

(declare-fun res!1161581 () Bool)

(assert (=> b!2782511 (=> (not res!1161581) (not e!1755140))))

(declare-fun totalInputSize!205 () Int)

(declare-datatypes ((IArray!19989 0))(
  ( (IArray!19990 (innerList!10052 List!32225)) )
))
(declare-datatypes ((Conc!9992 0))(
  ( (Node!9992 (left!24441 Conc!9992) (right!24771 Conc!9992) (csize!20214 Int) (cheight!10203 Int)) (Leaf!15218 (xs!13103 IArray!19989) (csize!20215 Int)) (Empty!9992) )
))
(declare-datatypes ((BalanceConc!19598 0))(
  ( (BalanceConc!19599 (c!452260 Conc!9992)) )
))
(declare-fun totalInput!758 () BalanceConc!19598)

(declare-fun size!24927 (BalanceConc!19598) Int)

(assert (=> b!2782511 (= res!1161581 (= totalInputSize!205 (size!24927 totalInput!758)))))

(declare-fun mapNonEmpty!17519 () Bool)

(declare-fun mapRes!17520 () Bool)

(declare-fun tp!880948 () Bool)

(declare-fun tp!880935 () Bool)

(assert (=> mapNonEmpty!17519 (= mapRes!17520 (and tp!880948 tp!880935))))

(declare-fun mapRest!17520 () (Array (_ BitVec 32) List!32228))

(declare-fun mapValue!17519 () List!32228)

(declare-fun mapKey!17519 () (_ BitVec 32))

(assert (=> mapNonEmpty!17519 (= (arr!6087 (_values!4119 (v!33737 (underlying!7879 (v!33738 (underlying!7880 (cache!3887 cacheDown!1009))))))) (store mapRest!17520 mapKey!17519 mapValue!17519))))

(declare-fun b!2782512 () Bool)

(declare-fun e!1755136 () Bool)

(assert (=> b!2782512 (= e!1755136 e!1755145)))

(declare-fun b!2782513 () Bool)

(declare-fun tp!880932 () Bool)

(assert (=> b!2782513 (= e!1755143 (and tp!880932 mapRes!17520))))

(declare-fun condMapEmpty!17520 () Bool)

(declare-fun mapDefault!17520 () List!32228)

(assert (=> b!2782513 (= condMapEmpty!17520 (= (arr!6087 (_values!4119 (v!33737 (underlying!7879 (v!33738 (underlying!7880 (cache!3887 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32228)) mapDefault!17520)))))

(declare-fun b!2782514 () Bool)

(declare-fun lt!993888 () Int)

(declare-fun size!24928 (List!32225) Int)

(assert (=> b!2782514 (= e!1755144 (>= (size!24928 lt!993883) lt!993888))))

(declare-fun lt!993886 () List!32225)

(assert (=> b!2782514 (= testedSuffix!143 lt!993886)))

(declare-fun lt!993882 () Unit!46400)

(declare-fun lemmaSamePrefixThenSameSuffix!1145 (List!32225 List!32225 List!32225 List!32225 List!32225) Unit!46400)

(assert (=> b!2782514 (= lt!993882 (lemmaSamePrefixThenSameSuffix!1145 testedP!183 testedSuffix!143 testedP!183 lt!993886 lt!993883))))

(declare-fun getSuffix!1244 (List!32225 List!32225) List!32225)

(assert (=> b!2782514 (= lt!993886 (getSuffix!1244 lt!993883 testedP!183))))

(declare-fun res!1161586 () Bool)

(declare-fun e!1755137 () Bool)

(assert (=> start!268898 (=> (not res!1161586) (not e!1755137))))

(assert (=> start!268898 (= res!1161586 (= lt!993884 lt!993883))))

(declare-fun list!12112 (BalanceConc!19598) List!32225)

(assert (=> start!268898 (= lt!993883 (list!12112 totalInput!758))))

(declare-fun ++!7944 (List!32225 List!32225) List!32225)

(assert (=> start!268898 (= lt!993884 (++!7944 testedP!183 testedSuffix!143))))

(assert (=> start!268898 e!1755137))

(declare-fun e!1755150 () Bool)

(declare-fun inv!43635 (BalanceConc!19598) Bool)

(assert (=> start!268898 (and (inv!43635 totalInput!758) e!1755150)))

(assert (=> start!268898 true))

(declare-fun e!1755148 () Bool)

(assert (=> start!268898 e!1755148))

(assert (=> start!268898 e!1755151))

(declare-fun inv!43636 (CacheDown!2570) Bool)

(assert (=> start!268898 (and (inv!43636 cacheDown!1009) e!1755136)))

(declare-fun inv!43637 (CacheUp!2448) Bool)

(assert (=> start!268898 (and (inv!43637 cacheUp!890) e!1755155)))

(declare-fun b!2782501 () Bool)

(assert (=> b!2782501 (= e!1755142 e!1755153)))

(declare-fun mapNonEmpty!17520 () Bool)

(declare-fun tp!880946 () Bool)

(declare-fun tp!880934 () Bool)

(assert (=> mapNonEmpty!17520 (= mapRes!17519 (and tp!880946 tp!880934))))

(declare-fun mapKey!17520 () (_ BitVec 32))

(declare-fun mapValue!17520 () List!32227)

(declare-fun mapRest!17519 () (Array (_ BitVec 32) List!32227))

(assert (=> mapNonEmpty!17520 (= (arr!6085 (_values!4118 (v!33735 (underlying!7877 (v!33736 (underlying!7878 (cache!3886 cacheUp!890))))))) (store mapRest!17519 mapKey!17520 mapValue!17520))))

(declare-fun mapIsEmpty!17520 () Bool)

(assert (=> mapIsEmpty!17520 mapRes!17520))

(declare-fun b!2782515 () Bool)

(declare-fun tp!880936 () Bool)

(declare-fun inv!43638 (Conc!9992) Bool)

(assert (=> b!2782515 (= e!1755150 (and (inv!43638 (c!452260 totalInput!758)) tp!880936))))

(declare-fun b!2782516 () Bool)

(assert (=> b!2782516 (= e!1755137 e!1755140)))

(declare-fun res!1161585 () Bool)

(assert (=> b!2782516 (=> (not res!1161585) (not e!1755140))))

(declare-fun testedPSize!143 () Int)

(assert (=> b!2782516 (= res!1161585 (= testedPSize!143 lt!993888))))

(assert (=> b!2782516 (= lt!993888 (size!24928 testedP!183))))

(declare-fun b!2782517 () Bool)

(declare-fun tp!880937 () Bool)

(assert (=> b!2782517 (= e!1755148 (and tp_is_empty!14043 tp!880937))))

(assert (= (and start!268898 res!1161586) b!2782516))

(assert (= (and b!2782516 res!1161585) b!2782511))

(assert (= (and b!2782511 res!1161581) b!2782507))

(assert (= (and b!2782507 res!1161584) b!2782500))

(assert (= (and b!2782500 res!1161583) b!2782495))

(assert (= (and b!2782495 (not res!1161582)) b!2782514))

(assert (= start!268898 b!2782515))

(assert (= (and start!268898 ((_ is Cons!32125) testedP!183)) b!2782517))

(assert (= (and start!268898 ((_ is Cons!32125) testedSuffix!143)) b!2782504))

(assert (= (and b!2782513 condMapEmpty!17520) mapIsEmpty!17520))

(assert (= (and b!2782513 (not condMapEmpty!17520)) mapNonEmpty!17519))

(assert (= b!2782503 b!2782513))

(assert (= b!2782499 b!2782503))

(assert (= b!2782496 b!2782499))

(assert (= (and b!2782509 ((_ is LongMap!3838) (v!33738 (underlying!7880 (cache!3887 cacheDown!1009))))) b!2782496))

(assert (= b!2782502 b!2782509))

(assert (= (and b!2782512 ((_ is HashMap!3744) (cache!3887 cacheDown!1009))) b!2782502))

(assert (= start!268898 b!2782512))

(assert (= (and b!2782497 condMapEmpty!17519) mapIsEmpty!17519))

(assert (= (and b!2782497 (not condMapEmpty!17519)) mapNonEmpty!17520))

(assert (= b!2782498 b!2782497))

(assert (= b!2782501 b!2782498))

(assert (= b!2782510 b!2782501))

(assert (= (and b!2782508 ((_ is LongMap!3837) (v!33736 (underlying!7878 (cache!3886 cacheUp!890))))) b!2782510))

(assert (= b!2782506 b!2782508))

(assert (= (and b!2782505 ((_ is HashMap!3743) (cache!3886 cacheUp!890))) b!2782506))

(assert (= start!268898 b!2782505))

(declare-fun m!3213673 () Bool)

(assert (=> mapNonEmpty!17520 m!3213673))

(declare-fun m!3213675 () Bool)

(assert (=> b!2782515 m!3213675))

(declare-fun m!3213677 () Bool)

(assert (=> b!2782516 m!3213677))

(declare-fun m!3213679 () Bool)

(assert (=> b!2782507 m!3213679))

(declare-fun m!3213681 () Bool)

(assert (=> b!2782498 m!3213681))

(declare-fun m!3213683 () Bool)

(assert (=> b!2782498 m!3213683))

(declare-fun m!3213685 () Bool)

(assert (=> start!268898 m!3213685))

(declare-fun m!3213687 () Bool)

(assert (=> start!268898 m!3213687))

(declare-fun m!3213689 () Bool)

(assert (=> start!268898 m!3213689))

(declare-fun m!3213691 () Bool)

(assert (=> start!268898 m!3213691))

(declare-fun m!3213693 () Bool)

(assert (=> start!268898 m!3213693))

(declare-fun m!3213695 () Bool)

(assert (=> b!2782495 m!3213695))

(declare-fun m!3213697 () Bool)

(assert (=> b!2782495 m!3213697))

(declare-fun m!3213699 () Bool)

(assert (=> b!2782495 m!3213699))

(declare-fun m!3213701 () Bool)

(assert (=> mapNonEmpty!17519 m!3213701))

(declare-fun m!3213703 () Bool)

(assert (=> b!2782514 m!3213703))

(declare-fun m!3213705 () Bool)

(assert (=> b!2782514 m!3213705))

(declare-fun m!3213707 () Bool)

(assert (=> b!2782514 m!3213707))

(declare-fun m!3213709 () Bool)

(assert (=> b!2782503 m!3213709))

(declare-fun m!3213711 () Bool)

(assert (=> b!2782503 m!3213711))

(declare-fun m!3213713 () Bool)

(assert (=> b!2782500 m!3213713))

(declare-fun m!3213715 () Bool)

(assert (=> b!2782511 m!3213715))

(check-sat (not b!2782507) (not b!2782515) (not mapNonEmpty!17519) (not b!2782497) (not b!2782503) tp_is_empty!14043 b_and!203289 (not b!2782516) (not b!2782500) (not b_next!79253) (not b!2782517) (not b!2782513) (not b!2782504) (not b_next!79259) b_and!203293 (not start!268898) (not b!2782498) (not b_next!79257) (not b!2782514) b_and!203287 b_and!203291 (not mapNonEmpty!17520) (not b!2782511) (not b!2782495) (not b_next!79255))
(check-sat (not b_next!79253) (not b_next!79257) b_and!203289 (not b_next!79255) (not b_next!79259) b_and!203293 b_and!203287 b_and!203291)
(get-model)

(declare-fun d!810272 () Bool)

(declare-fun lt!993891 () Int)

(assert (=> d!810272 (>= lt!993891 0)))

(declare-fun e!1755160 () Int)

(assert (=> d!810272 (= lt!993891 e!1755160)))

(declare-fun c!452263 () Bool)

(assert (=> d!810272 (= c!452263 ((_ is Nil!32125) testedP!183))))

(assert (=> d!810272 (= (size!24928 testedP!183) lt!993891)))

(declare-fun b!2782522 () Bool)

(assert (=> b!2782522 (= e!1755160 0)))

(declare-fun b!2782523 () Bool)

(assert (=> b!2782523 (= e!1755160 (+ 1 (size!24928 (t!228365 testedP!183))))))

(assert (= (and d!810272 c!452263) b!2782522))

(assert (= (and d!810272 (not c!452263)) b!2782523))

(declare-fun m!3213717 () Bool)

(assert (=> b!2782523 m!3213717))

(assert (=> b!2782516 d!810272))

(declare-fun d!810274 () Bool)

(declare-fun res!1161589 () Bool)

(declare-fun e!1755163 () Bool)

(assert (=> d!810274 (=> (not res!1161589) (not e!1755163))))

(assert (=> d!810274 (= res!1161589 ((_ is HashMap!3743) (cache!3886 cacheUp!890)))))

(assert (=> d!810274 (= (inv!43637 cacheUp!890) e!1755163)))

(declare-fun b!2782526 () Bool)

(declare-fun validCacheMapUp!373 (MutableMap!3743) Bool)

(assert (=> b!2782526 (= e!1755163 (validCacheMapUp!373 (cache!3886 cacheUp!890)))))

(assert (= (and d!810274 res!1161589) b!2782526))

(declare-fun m!3213719 () Bool)

(assert (=> b!2782526 m!3213719))

(assert (=> start!268898 d!810274))

(declare-fun d!810276 () Bool)

(declare-fun isBalanced!3048 (Conc!9992) Bool)

(assert (=> d!810276 (= (inv!43635 totalInput!758) (isBalanced!3048 (c!452260 totalInput!758)))))

(declare-fun bs!510809 () Bool)

(assert (= bs!510809 d!810276))

(declare-fun m!3213721 () Bool)

(assert (=> bs!510809 m!3213721))

(assert (=> start!268898 d!810276))

(declare-fun d!810278 () Bool)

(declare-fun res!1161592 () Bool)

(declare-fun e!1755166 () Bool)

(assert (=> d!810278 (=> (not res!1161592) (not e!1755166))))

(assert (=> d!810278 (= res!1161592 ((_ is HashMap!3744) (cache!3887 cacheDown!1009)))))

(assert (=> d!810278 (= (inv!43636 cacheDown!1009) e!1755166)))

(declare-fun b!2782529 () Bool)

(declare-fun validCacheMapDown!404 (MutableMap!3744) Bool)

(assert (=> b!2782529 (= e!1755166 (validCacheMapDown!404 (cache!3887 cacheDown!1009)))))

(assert (= (and d!810278 res!1161592) b!2782529))

(declare-fun m!3213723 () Bool)

(assert (=> b!2782529 m!3213723))

(assert (=> start!268898 d!810278))

(declare-fun d!810280 () Bool)

(declare-fun list!12113 (Conc!9992) List!32225)

(assert (=> d!810280 (= (list!12112 totalInput!758) (list!12113 (c!452260 totalInput!758)))))

(declare-fun bs!510810 () Bool)

(assert (= bs!510810 d!810280))

(declare-fun m!3213725 () Bool)

(assert (=> bs!510810 m!3213725))

(assert (=> start!268898 d!810280))

(declare-fun d!810282 () Bool)

(declare-fun e!1755171 () Bool)

(assert (=> d!810282 e!1755171))

(declare-fun res!1161598 () Bool)

(assert (=> d!810282 (=> (not res!1161598) (not e!1755171))))

(declare-fun lt!993894 () List!32225)

(declare-fun content!4514 (List!32225) (InoxSet C!16388))

(assert (=> d!810282 (= res!1161598 (= (content!4514 lt!993894) ((_ map or) (content!4514 testedP!183) (content!4514 testedSuffix!143))))))

(declare-fun e!1755172 () List!32225)

(assert (=> d!810282 (= lt!993894 e!1755172)))

(declare-fun c!452266 () Bool)

(assert (=> d!810282 (= c!452266 ((_ is Nil!32125) testedP!183))))

(assert (=> d!810282 (= (++!7944 testedP!183 testedSuffix!143) lt!993894)))

(declare-fun b!2782539 () Bool)

(assert (=> b!2782539 (= e!1755172 (Cons!32125 (h!37545 testedP!183) (++!7944 (t!228365 testedP!183) testedSuffix!143)))))

(declare-fun b!2782540 () Bool)

(declare-fun res!1161597 () Bool)

(assert (=> b!2782540 (=> (not res!1161597) (not e!1755171))))

(assert (=> b!2782540 (= res!1161597 (= (size!24928 lt!993894) (+ (size!24928 testedP!183) (size!24928 testedSuffix!143))))))

(declare-fun b!2782538 () Bool)

(assert (=> b!2782538 (= e!1755172 testedSuffix!143)))

(declare-fun b!2782541 () Bool)

(assert (=> b!2782541 (= e!1755171 (or (not (= testedSuffix!143 Nil!32125)) (= lt!993894 testedP!183)))))

(assert (= (and d!810282 c!452266) b!2782538))

(assert (= (and d!810282 (not c!452266)) b!2782539))

(assert (= (and d!810282 res!1161598) b!2782540))

(assert (= (and b!2782540 res!1161597) b!2782541))

(declare-fun m!3213727 () Bool)

(assert (=> d!810282 m!3213727))

(declare-fun m!3213729 () Bool)

(assert (=> d!810282 m!3213729))

(declare-fun m!3213731 () Bool)

(assert (=> d!810282 m!3213731))

(declare-fun m!3213733 () Bool)

(assert (=> b!2782539 m!3213733))

(declare-fun m!3213735 () Bool)

(assert (=> b!2782540 m!3213735))

(assert (=> b!2782540 m!3213677))

(declare-fun m!3213737 () Bool)

(assert (=> b!2782540 m!3213737))

(assert (=> start!268898 d!810282))

(declare-fun d!810284 () Bool)

(declare-fun lt!993895 () Int)

(assert (=> d!810284 (>= lt!993895 0)))

(declare-fun e!1755173 () Int)

(assert (=> d!810284 (= lt!993895 e!1755173)))

(declare-fun c!452267 () Bool)

(assert (=> d!810284 (= c!452267 ((_ is Nil!32125) lt!993883))))

(assert (=> d!810284 (= (size!24928 lt!993883) lt!993895)))

(declare-fun b!2782542 () Bool)

(assert (=> b!2782542 (= e!1755173 0)))

(declare-fun b!2782543 () Bool)

(assert (=> b!2782543 (= e!1755173 (+ 1 (size!24928 (t!228365 lt!993883))))))

(assert (= (and d!810284 c!452267) b!2782542))

(assert (= (and d!810284 (not c!452267)) b!2782543))

(declare-fun m!3213739 () Bool)

(assert (=> b!2782543 m!3213739))

(assert (=> b!2782514 d!810284))

(declare-fun d!810286 () Bool)

(assert (=> d!810286 (= testedSuffix!143 lt!993886)))

(declare-fun lt!993898 () Unit!46400)

(declare-fun choose!16321 (List!32225 List!32225 List!32225 List!32225 List!32225) Unit!46400)

(assert (=> d!810286 (= lt!993898 (choose!16321 testedP!183 testedSuffix!143 testedP!183 lt!993886 lt!993883))))

(assert (=> d!810286 (isPrefix!2565 testedP!183 lt!993883)))

(assert (=> d!810286 (= (lemmaSamePrefixThenSameSuffix!1145 testedP!183 testedSuffix!143 testedP!183 lt!993886 lt!993883) lt!993898)))

(declare-fun bs!510811 () Bool)

(assert (= bs!510811 d!810286))

(declare-fun m!3213741 () Bool)

(assert (=> bs!510811 m!3213741))

(assert (=> bs!510811 m!3213695))

(assert (=> b!2782514 d!810286))

(declare-fun d!810288 () Bool)

(declare-fun lt!993901 () List!32225)

(assert (=> d!810288 (= (++!7944 testedP!183 lt!993901) lt!993883)))

(declare-fun e!1755176 () List!32225)

(assert (=> d!810288 (= lt!993901 e!1755176)))

(declare-fun c!452270 () Bool)

(assert (=> d!810288 (= c!452270 ((_ is Cons!32125) testedP!183))))

(assert (=> d!810288 (>= (size!24928 lt!993883) (size!24928 testedP!183))))

(assert (=> d!810288 (= (getSuffix!1244 lt!993883 testedP!183) lt!993901)))

(declare-fun b!2782548 () Bool)

(declare-fun tail!4395 (List!32225) List!32225)

(assert (=> b!2782548 (= e!1755176 (getSuffix!1244 (tail!4395 lt!993883) (t!228365 testedP!183)))))

(declare-fun b!2782549 () Bool)

(assert (=> b!2782549 (= e!1755176 lt!993883)))

(assert (= (and d!810288 c!452270) b!2782548))

(assert (= (and d!810288 (not c!452270)) b!2782549))

(declare-fun m!3213743 () Bool)

(assert (=> d!810288 m!3213743))

(assert (=> d!810288 m!3213703))

(assert (=> d!810288 m!3213677))

(declare-fun m!3213745 () Bool)

(assert (=> b!2782548 m!3213745))

(assert (=> b!2782548 m!3213745))

(declare-fun m!3213747 () Bool)

(assert (=> b!2782548 m!3213747))

(assert (=> b!2782514 d!810288))

(declare-fun d!810290 () Bool)

(assert (=> d!810290 (= (valid!3002 cacheDown!1009) (validCacheMapDown!404 (cache!3887 cacheDown!1009)))))

(declare-fun bs!510812 () Bool)

(assert (= bs!510812 d!810290))

(assert (=> bs!510812 m!3213723))

(assert (=> b!2782500 d!810290))

(declare-fun b!2782561 () Bool)

(declare-fun e!1755183 () Bool)

(assert (=> b!2782561 (= e!1755183 (>= (size!24928 lt!993883) (size!24928 testedP!183)))))

(declare-fun b!2782560 () Bool)

(declare-fun e!1755184 () Bool)

(assert (=> b!2782560 (= e!1755184 (isPrefix!2565 (tail!4395 testedP!183) (tail!4395 lt!993883)))))

(declare-fun b!2782559 () Bool)

(declare-fun res!1161610 () Bool)

(assert (=> b!2782559 (=> (not res!1161610) (not e!1755184))))

(declare-fun head!6157 (List!32225) C!16388)

(assert (=> b!2782559 (= res!1161610 (= (head!6157 testedP!183) (head!6157 lt!993883)))))

(declare-fun b!2782558 () Bool)

(declare-fun e!1755185 () Bool)

(assert (=> b!2782558 (= e!1755185 e!1755184)))

(declare-fun res!1161609 () Bool)

(assert (=> b!2782558 (=> (not res!1161609) (not e!1755184))))

(assert (=> b!2782558 (= res!1161609 (not ((_ is Nil!32125) lt!993883)))))

(declare-fun d!810292 () Bool)

(assert (=> d!810292 e!1755183))

(declare-fun res!1161608 () Bool)

(assert (=> d!810292 (=> res!1161608 e!1755183)))

(declare-fun lt!993904 () Bool)

(assert (=> d!810292 (= res!1161608 (not lt!993904))))

(assert (=> d!810292 (= lt!993904 e!1755185)))

(declare-fun res!1161607 () Bool)

(assert (=> d!810292 (=> res!1161607 e!1755185)))

(assert (=> d!810292 (= res!1161607 ((_ is Nil!32125) testedP!183))))

(assert (=> d!810292 (= (isPrefix!2565 testedP!183 lt!993883) lt!993904)))

(assert (= (and d!810292 (not res!1161607)) b!2782558))

(assert (= (and b!2782558 res!1161609) b!2782559))

(assert (= (and b!2782559 res!1161610) b!2782560))

(assert (= (and d!810292 (not res!1161608)) b!2782561))

(assert (=> b!2782561 m!3213703))

(assert (=> b!2782561 m!3213677))

(declare-fun m!3213749 () Bool)

(assert (=> b!2782560 m!3213749))

(assert (=> b!2782560 m!3213745))

(assert (=> b!2782560 m!3213749))

(assert (=> b!2782560 m!3213745))

(declare-fun m!3213751 () Bool)

(assert (=> b!2782560 m!3213751))

(declare-fun m!3213753 () Bool)

(assert (=> b!2782559 m!3213753))

(declare-fun m!3213755 () Bool)

(assert (=> b!2782559 m!3213755))

(assert (=> b!2782495 d!810292))

(declare-fun b!2782565 () Bool)

(declare-fun e!1755186 () Bool)

(assert (=> b!2782565 (= e!1755186 (>= (size!24928 lt!993884) (size!24928 testedP!183)))))

(declare-fun b!2782564 () Bool)

(declare-fun e!1755187 () Bool)

(assert (=> b!2782564 (= e!1755187 (isPrefix!2565 (tail!4395 testedP!183) (tail!4395 lt!993884)))))

(declare-fun b!2782563 () Bool)

(declare-fun res!1161614 () Bool)

(assert (=> b!2782563 (=> (not res!1161614) (not e!1755187))))

(assert (=> b!2782563 (= res!1161614 (= (head!6157 testedP!183) (head!6157 lt!993884)))))

(declare-fun b!2782562 () Bool)

(declare-fun e!1755188 () Bool)

(assert (=> b!2782562 (= e!1755188 e!1755187)))

(declare-fun res!1161613 () Bool)

(assert (=> b!2782562 (=> (not res!1161613) (not e!1755187))))

(assert (=> b!2782562 (= res!1161613 (not ((_ is Nil!32125) lt!993884)))))

(declare-fun d!810294 () Bool)

(assert (=> d!810294 e!1755186))

(declare-fun res!1161612 () Bool)

(assert (=> d!810294 (=> res!1161612 e!1755186)))

(declare-fun lt!993905 () Bool)

(assert (=> d!810294 (= res!1161612 (not lt!993905))))

(assert (=> d!810294 (= lt!993905 e!1755188)))

(declare-fun res!1161611 () Bool)

(assert (=> d!810294 (=> res!1161611 e!1755188)))

(assert (=> d!810294 (= res!1161611 ((_ is Nil!32125) testedP!183))))

(assert (=> d!810294 (= (isPrefix!2565 testedP!183 lt!993884) lt!993905)))

(assert (= (and d!810294 (not res!1161611)) b!2782562))

(assert (= (and b!2782562 res!1161613) b!2782563))

(assert (= (and b!2782563 res!1161614) b!2782564))

(assert (= (and d!810294 (not res!1161612)) b!2782565))

(declare-fun m!3213757 () Bool)

(assert (=> b!2782565 m!3213757))

(assert (=> b!2782565 m!3213677))

(assert (=> b!2782564 m!3213749))

(declare-fun m!3213759 () Bool)

(assert (=> b!2782564 m!3213759))

(assert (=> b!2782564 m!3213749))

(assert (=> b!2782564 m!3213759))

(declare-fun m!3213761 () Bool)

(assert (=> b!2782564 m!3213761))

(assert (=> b!2782563 m!3213753))

(declare-fun m!3213763 () Bool)

(assert (=> b!2782563 m!3213763))

(assert (=> b!2782495 d!810294))

(declare-fun d!810296 () Bool)

(assert (=> d!810296 (isPrefix!2565 testedP!183 (++!7944 testedP!183 testedSuffix!143))))

(declare-fun lt!993908 () Unit!46400)

(declare-fun choose!16322 (List!32225 List!32225) Unit!46400)

(assert (=> d!810296 (= lt!993908 (choose!16322 testedP!183 testedSuffix!143))))

(assert (=> d!810296 (= (lemmaConcatTwoListThenFirstIsPrefix!1675 testedP!183 testedSuffix!143) lt!993908)))

(declare-fun bs!510813 () Bool)

(assert (= bs!510813 d!810296))

(assert (=> bs!510813 m!3213693))

(assert (=> bs!510813 m!3213693))

(declare-fun m!3213765 () Bool)

(assert (=> bs!510813 m!3213765))

(declare-fun m!3213767 () Bool)

(assert (=> bs!510813 m!3213767))

(assert (=> b!2782495 d!810296))

(declare-fun d!810298 () Bool)

(declare-fun lt!993911 () Int)

(assert (=> d!810298 (= lt!993911 (size!24928 (list!12112 totalInput!758)))))

(declare-fun size!24929 (Conc!9992) Int)

(assert (=> d!810298 (= lt!993911 (size!24929 (c!452260 totalInput!758)))))

(assert (=> d!810298 (= (size!24927 totalInput!758) lt!993911)))

(declare-fun bs!510814 () Bool)

(assert (= bs!510814 d!810298))

(assert (=> bs!510814 m!3213685))

(assert (=> bs!510814 m!3213685))

(declare-fun m!3213769 () Bool)

(assert (=> bs!510814 m!3213769))

(declare-fun m!3213771 () Bool)

(assert (=> bs!510814 m!3213771))

(assert (=> b!2782511 d!810298))

(declare-fun d!810300 () Bool)

(assert (=> d!810300 (= (valid!3003 cacheUp!890) (validCacheMapUp!373 (cache!3886 cacheUp!890)))))

(declare-fun bs!510815 () Bool)

(assert (= bs!510815 d!810300))

(assert (=> bs!510815 m!3213719))

(assert (=> b!2782507 d!810300))

(declare-fun d!810302 () Bool)

(declare-fun c!452273 () Bool)

(assert (=> d!810302 (= c!452273 ((_ is Node!9992) (c!452260 totalInput!758)))))

(declare-fun e!1755193 () Bool)

(assert (=> d!810302 (= (inv!43638 (c!452260 totalInput!758)) e!1755193)))

(declare-fun b!2782572 () Bool)

(declare-fun inv!43639 (Conc!9992) Bool)

(assert (=> b!2782572 (= e!1755193 (inv!43639 (c!452260 totalInput!758)))))

(declare-fun b!2782573 () Bool)

(declare-fun e!1755194 () Bool)

(assert (=> b!2782573 (= e!1755193 e!1755194)))

(declare-fun res!1161617 () Bool)

(assert (=> b!2782573 (= res!1161617 (not ((_ is Leaf!15218) (c!452260 totalInput!758))))))

(assert (=> b!2782573 (=> res!1161617 e!1755194)))

(declare-fun b!2782574 () Bool)

(declare-fun inv!43640 (Conc!9992) Bool)

(assert (=> b!2782574 (= e!1755194 (inv!43640 (c!452260 totalInput!758)))))

(assert (= (and d!810302 c!452273) b!2782572))

(assert (= (and d!810302 (not c!452273)) b!2782573))

(assert (= (and b!2782573 (not res!1161617)) b!2782574))

(declare-fun m!3213773 () Bool)

(assert (=> b!2782572 m!3213773))

(declare-fun m!3213775 () Bool)

(assert (=> b!2782574 m!3213775))

(assert (=> b!2782515 d!810302))

(declare-fun d!810304 () Bool)

(assert (=> d!810304 (= (array_inv!4353 (_keys!4138 (v!33737 (underlying!7879 (v!33738 (underlying!7880 (cache!3887 cacheDown!1009))))))) (bvsge (size!24925 (_keys!4138 (v!33737 (underlying!7879 (v!33738 (underlying!7880 (cache!3887 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2782503 d!810304))

(declare-fun d!810306 () Bool)

(assert (=> d!810306 (= (array_inv!4355 (_values!4119 (v!33737 (underlying!7879 (v!33738 (underlying!7880 (cache!3887 cacheDown!1009))))))) (bvsge (size!24926 (_values!4119 (v!33737 (underlying!7879 (v!33738 (underlying!7880 (cache!3887 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2782503 d!810306))

(declare-fun d!810308 () Bool)

(assert (=> d!810308 (= (array_inv!4353 (_keys!4137 (v!33735 (underlying!7877 (v!33736 (underlying!7878 (cache!3886 cacheUp!890))))))) (bvsge (size!24925 (_keys!4137 (v!33735 (underlying!7877 (v!33736 (underlying!7878 (cache!3886 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2782498 d!810308))

(declare-fun d!810310 () Bool)

(assert (=> d!810310 (= (array_inv!4354 (_values!4118 (v!33735 (underlying!7877 (v!33736 (underlying!7878 (cache!3886 cacheUp!890))))))) (bvsge (size!24924 (_values!4118 (v!33735 (underlying!7877 (v!33736 (underlying!7878 (cache!3886 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2782498 d!810310))

(declare-fun b!2782579 () Bool)

(declare-fun e!1755197 () Bool)

(declare-fun tp!880951 () Bool)

(assert (=> b!2782579 (= e!1755197 (and tp_is_empty!14043 tp!880951))))

(assert (=> b!2782504 (= tp!880940 e!1755197)))

(assert (= (and b!2782504 ((_ is Cons!32125) (t!228365 testedSuffix!143))) b!2782579))

(declare-fun setIsEmpty!23314 () Bool)

(declare-fun setRes!23314 () Bool)

(assert (=> setIsEmpty!23314 setRes!23314))

(declare-fun setElem!23314 () Context!4666)

(declare-fun tp!880965 () Bool)

(declare-fun setNonEmpty!23314 () Bool)

(declare-fun e!1755205 () Bool)

(declare-fun inv!43641 (Context!4666) Bool)

(assert (=> setNonEmpty!23314 (= setRes!23314 (and tp!880965 (inv!43641 setElem!23314) e!1755205))))

(declare-fun setRest!23314 () (InoxSet Context!4666))

(assert (=> setNonEmpty!23314 (= (_2!19144 (h!37548 mapDefault!17520)) ((_ map or) (store ((as const (Array Context!4666 Bool)) false) setElem!23314 true) setRest!23314))))

(declare-fun tp!880963 () Bool)

(declare-fun tp!880966 () Bool)

(declare-fun b!2782588 () Bool)

(declare-fun e!1755204 () Bool)

(declare-fun e!1755206 () Bool)

(assert (=> b!2782588 (= e!1755204 (and tp!880963 (inv!43641 (_2!19143 (_1!19144 (h!37548 mapDefault!17520)))) e!1755206 tp_is_empty!14043 setRes!23314 tp!880966))))

(declare-fun condSetEmpty!23314 () Bool)

(assert (=> b!2782588 (= condSetEmpty!23314 (= (_2!19144 (h!37548 mapDefault!17520)) ((as const (Array Context!4666 Bool)) false)))))

(declare-fun b!2782590 () Bool)

(declare-fun tp!880962 () Bool)

(assert (=> b!2782590 (= e!1755206 tp!880962)))

(assert (=> b!2782513 (= tp!880932 e!1755204)))

(declare-fun b!2782589 () Bool)

(declare-fun tp!880964 () Bool)

(assert (=> b!2782589 (= e!1755205 tp!880964)))

(assert (= b!2782588 b!2782590))

(assert (= (and b!2782588 condSetEmpty!23314) setIsEmpty!23314))

(assert (= (and b!2782588 (not condSetEmpty!23314)) setNonEmpty!23314))

(assert (= setNonEmpty!23314 b!2782589))

(assert (= (and b!2782513 ((_ is Cons!32128) mapDefault!17520)) b!2782588))

(declare-fun m!3213777 () Bool)

(assert (=> setNonEmpty!23314 m!3213777))

(declare-fun m!3213779 () Bool)

(assert (=> b!2782588 m!3213779))

(declare-fun b!2782591 () Bool)

(declare-fun e!1755207 () Bool)

(declare-fun tp!880967 () Bool)

(assert (=> b!2782591 (= e!1755207 (and tp_is_empty!14043 tp!880967))))

(assert (=> b!2782517 (= tp!880937 e!1755207)))

(assert (= (and b!2782517 ((_ is Cons!32125) (t!228365 testedP!183))) b!2782591))

(declare-fun b!2782606 () Bool)

(declare-fun e!1755220 () Bool)

(declare-fun tp!880994 () Bool)

(assert (=> b!2782606 (= e!1755220 tp!880994)))

(declare-fun mapIsEmpty!17523 () Bool)

(declare-fun mapRes!17523 () Bool)

(assert (=> mapIsEmpty!17523 mapRes!17523))

(declare-fun mapNonEmpty!17523 () Bool)

(declare-fun tp!880992 () Bool)

(declare-fun e!1755224 () Bool)

(assert (=> mapNonEmpty!17523 (= mapRes!17523 (and tp!880992 e!1755224))))

(declare-fun mapKey!17523 () (_ BitVec 32))

(declare-fun mapValue!17523 () List!32227)

(declare-fun mapRest!17523 () (Array (_ BitVec 32) List!32227))

(assert (=> mapNonEmpty!17523 (= mapRest!17519 (store mapRest!17523 mapKey!17523 mapValue!17523))))

(declare-fun b!2782607 () Bool)

(declare-fun e!1755221 () Bool)

(declare-fun tp!880988 () Bool)

(assert (=> b!2782607 (= e!1755221 tp!880988)))

(declare-fun setIsEmpty!23319 () Bool)

(declare-fun setRes!23320 () Bool)

(assert (=> setIsEmpty!23319 setRes!23320))

(declare-fun setRes!23319 () Bool)

(declare-fun b!2782608 () Bool)

(declare-fun tp!880989 () Bool)

(assert (=> b!2782608 (= e!1755224 (and (inv!43641 (_1!19141 (_1!19142 (h!37547 mapValue!17523)))) e!1755220 tp_is_empty!14043 setRes!23319 tp!880989))))

(declare-fun condSetEmpty!23319 () Bool)

(assert (=> b!2782608 (= condSetEmpty!23319 (= (_2!19142 (h!37547 mapValue!17523)) ((as const (Array Context!4666 Bool)) false)))))

(declare-fun b!2782609 () Bool)

(declare-fun e!1755222 () Bool)

(declare-fun tp!880986 () Bool)

(assert (=> b!2782609 (= e!1755222 tp!880986)))

(declare-fun setElem!23320 () Context!4666)

(declare-fun tp!880987 () Bool)

(declare-fun setNonEmpty!23319 () Bool)

(assert (=> setNonEmpty!23319 (= setRes!23319 (and tp!880987 (inv!43641 setElem!23320) e!1755221))))

(declare-fun setRest!23320 () (InoxSet Context!4666))

(assert (=> setNonEmpty!23319 (= (_2!19142 (h!37547 mapValue!17523)) ((_ map or) (store ((as const (Array Context!4666 Bool)) false) setElem!23320 true) setRest!23320))))

(declare-fun setNonEmpty!23320 () Bool)

(declare-fun setElem!23319 () Context!4666)

(declare-fun tp!880991 () Bool)

(assert (=> setNonEmpty!23320 (= setRes!23320 (and tp!880991 (inv!43641 setElem!23319) e!1755222))))

(declare-fun mapDefault!17523 () List!32227)

(declare-fun setRest!23319 () (InoxSet Context!4666))

(assert (=> setNonEmpty!23320 (= (_2!19142 (h!37547 mapDefault!17523)) ((_ map or) (store ((as const (Array Context!4666 Bool)) false) setElem!23319 true) setRest!23319))))

(declare-fun e!1755223 () Bool)

(declare-fun e!1755225 () Bool)

(declare-fun b!2782610 () Bool)

(declare-fun tp!880993 () Bool)

(assert (=> b!2782610 (= e!1755225 (and (inv!43641 (_1!19141 (_1!19142 (h!37547 mapDefault!17523)))) e!1755223 tp_is_empty!14043 setRes!23320 tp!880993))))

(declare-fun condSetEmpty!23320 () Bool)

(assert (=> b!2782610 (= condSetEmpty!23320 (= (_2!19142 (h!37547 mapDefault!17523)) ((as const (Array Context!4666 Bool)) false)))))

(declare-fun b!2782611 () Bool)

(declare-fun tp!880990 () Bool)

(assert (=> b!2782611 (= e!1755223 tp!880990)))

(declare-fun condMapEmpty!17523 () Bool)

(assert (=> mapNonEmpty!17520 (= condMapEmpty!17523 (= mapRest!17519 ((as const (Array (_ BitVec 32) List!32227)) mapDefault!17523)))))

(assert (=> mapNonEmpty!17520 (= tp!880946 (and e!1755225 mapRes!17523))))

(declare-fun setIsEmpty!23320 () Bool)

(assert (=> setIsEmpty!23320 setRes!23319))

(assert (= (and mapNonEmpty!17520 condMapEmpty!17523) mapIsEmpty!17523))

(assert (= (and mapNonEmpty!17520 (not condMapEmpty!17523)) mapNonEmpty!17523))

(assert (= b!2782608 b!2782606))

(assert (= (and b!2782608 condSetEmpty!23319) setIsEmpty!23320))

(assert (= (and b!2782608 (not condSetEmpty!23319)) setNonEmpty!23319))

(assert (= setNonEmpty!23319 b!2782607))

(assert (= (and mapNonEmpty!17523 ((_ is Cons!32127) mapValue!17523)) b!2782608))

(assert (= b!2782610 b!2782611))

(assert (= (and b!2782610 condSetEmpty!23320) setIsEmpty!23319))

(assert (= (and b!2782610 (not condSetEmpty!23320)) setNonEmpty!23320))

(assert (= setNonEmpty!23320 b!2782609))

(assert (= (and mapNonEmpty!17520 ((_ is Cons!32127) mapDefault!17523)) b!2782610))

(declare-fun m!3213781 () Bool)

(assert (=> mapNonEmpty!17523 m!3213781))

(declare-fun m!3213783 () Bool)

(assert (=> setNonEmpty!23320 m!3213783))

(declare-fun m!3213785 () Bool)

(assert (=> b!2782608 m!3213785))

(declare-fun m!3213787 () Bool)

(assert (=> b!2782610 m!3213787))

(declare-fun m!3213789 () Bool)

(assert (=> setNonEmpty!23319 m!3213789))

(declare-fun e!1755234 () Bool)

(assert (=> mapNonEmpty!17520 (= tp!880934 e!1755234)))

(declare-fun setElem!23323 () Context!4666)

(declare-fun tp!881006 () Bool)

(declare-fun setRes!23323 () Bool)

(declare-fun e!1755232 () Bool)

(declare-fun setNonEmpty!23323 () Bool)

(assert (=> setNonEmpty!23323 (= setRes!23323 (and tp!881006 (inv!43641 setElem!23323) e!1755232))))

(declare-fun setRest!23323 () (InoxSet Context!4666))

(assert (=> setNonEmpty!23323 (= (_2!19142 (h!37547 mapValue!17520)) ((_ map or) (store ((as const (Array Context!4666 Bool)) false) setElem!23323 true) setRest!23323))))

(declare-fun b!2782620 () Bool)

(declare-fun e!1755233 () Bool)

(declare-fun tp!881004 () Bool)

(assert (=> b!2782620 (= e!1755234 (and (inv!43641 (_1!19141 (_1!19142 (h!37547 mapValue!17520)))) e!1755233 tp_is_empty!14043 setRes!23323 tp!881004))))

(declare-fun condSetEmpty!23323 () Bool)

(assert (=> b!2782620 (= condSetEmpty!23323 (= (_2!19142 (h!37547 mapValue!17520)) ((as const (Array Context!4666 Bool)) false)))))

(declare-fun b!2782621 () Bool)

(declare-fun tp!881005 () Bool)

(assert (=> b!2782621 (= e!1755233 tp!881005)))

(declare-fun setIsEmpty!23323 () Bool)

(assert (=> setIsEmpty!23323 setRes!23323))

(declare-fun b!2782622 () Bool)

(declare-fun tp!881003 () Bool)

(assert (=> b!2782622 (= e!1755232 tp!881003)))

(assert (= b!2782620 b!2782621))

(assert (= (and b!2782620 condSetEmpty!23323) setIsEmpty!23323))

(assert (= (and b!2782620 (not condSetEmpty!23323)) setNonEmpty!23323))

(assert (= setNonEmpty!23323 b!2782622))

(assert (= (and mapNonEmpty!17520 ((_ is Cons!32127) mapValue!17520)) b!2782620))

(declare-fun m!3213791 () Bool)

(assert (=> setNonEmpty!23323 m!3213791))

(declare-fun m!3213793 () Bool)

(assert (=> b!2782620 m!3213793))

(declare-fun setIsEmpty!23328 () Bool)

(declare-fun setRes!23329 () Bool)

(assert (=> setIsEmpty!23328 setRes!23329))

(declare-fun mapIsEmpty!17526 () Bool)

(declare-fun mapRes!17526 () Bool)

(assert (=> mapIsEmpty!17526 mapRes!17526))

(declare-fun b!2782637 () Bool)

(declare-fun e!1755247 () Bool)

(declare-fun tp!881030 () Bool)

(assert (=> b!2782637 (= e!1755247 tp!881030)))

(declare-fun condMapEmpty!17526 () Bool)

(declare-fun mapDefault!17526 () List!32228)

(assert (=> mapNonEmpty!17519 (= condMapEmpty!17526 (= mapRest!17520 ((as const (Array (_ BitVec 32) List!32228)) mapDefault!17526)))))

(declare-fun e!1755250 () Bool)

(assert (=> mapNonEmpty!17519 (= tp!880948 (and e!1755250 mapRes!17526))))

(declare-fun b!2782638 () Bool)

(declare-fun e!1755248 () Bool)

(declare-fun tp!881029 () Bool)

(assert (=> b!2782638 (= e!1755248 tp!881029)))

(declare-fun b!2782639 () Bool)

(declare-fun e!1755251 () Bool)

(declare-fun tp!881032 () Bool)

(assert (=> b!2782639 (= e!1755251 tp!881032)))

(declare-fun mapNonEmpty!17526 () Bool)

(declare-fun tp!881035 () Bool)

(declare-fun e!1755252 () Bool)

(assert (=> mapNonEmpty!17526 (= mapRes!17526 (and tp!881035 e!1755252))))

(declare-fun mapKey!17526 () (_ BitVec 32))

(declare-fun mapValue!17526 () List!32228)

(declare-fun mapRest!17526 () (Array (_ BitVec 32) List!32228))

(assert (=> mapNonEmpty!17526 (= mapRest!17520 (store mapRest!17526 mapKey!17526 mapValue!17526))))

(declare-fun setIsEmpty!23329 () Bool)

(declare-fun setRes!23328 () Bool)

(assert (=> setIsEmpty!23329 setRes!23328))

(declare-fun setNonEmpty!23328 () Bool)

(declare-fun tp!881031 () Bool)

(declare-fun setElem!23329 () Context!4666)

(declare-fun e!1755249 () Bool)

(assert (=> setNonEmpty!23328 (= setRes!23328 (and tp!881031 (inv!43641 setElem!23329) e!1755249))))

(declare-fun setRest!23329 () (InoxSet Context!4666))

(assert (=> setNonEmpty!23328 (= (_2!19144 (h!37548 mapDefault!17526)) ((_ map or) (store ((as const (Array Context!4666 Bool)) false) setElem!23329 true) setRest!23329))))

(declare-fun b!2782640 () Bool)

(declare-fun tp!881038 () Bool)

(assert (=> b!2782640 (= e!1755249 tp!881038)))

(declare-fun tp!881033 () Bool)

(declare-fun b!2782641 () Bool)

(declare-fun tp!881039 () Bool)

(assert (=> b!2782641 (= e!1755252 (and tp!881039 (inv!43641 (_2!19143 (_1!19144 (h!37548 mapValue!17526)))) e!1755251 tp_is_empty!14043 setRes!23329 tp!881033))))

(declare-fun condSetEmpty!23328 () Bool)

(assert (=> b!2782641 (= condSetEmpty!23328 (= (_2!19144 (h!37548 mapValue!17526)) ((as const (Array Context!4666 Bool)) false)))))

(declare-fun setNonEmpty!23329 () Bool)

(declare-fun setElem!23328 () Context!4666)

(declare-fun tp!881034 () Bool)

(assert (=> setNonEmpty!23329 (= setRes!23329 (and tp!881034 (inv!43641 setElem!23328) e!1755248))))

(declare-fun setRest!23328 () (InoxSet Context!4666))

(assert (=> setNonEmpty!23329 (= (_2!19144 (h!37548 mapValue!17526)) ((_ map or) (store ((as const (Array Context!4666 Bool)) false) setElem!23328 true) setRest!23328))))

(declare-fun tp!881037 () Bool)

(declare-fun b!2782642 () Bool)

(declare-fun tp!881036 () Bool)

(assert (=> b!2782642 (= e!1755250 (and tp!881036 (inv!43641 (_2!19143 (_1!19144 (h!37548 mapDefault!17526)))) e!1755247 tp_is_empty!14043 setRes!23328 tp!881037))))

(declare-fun condSetEmpty!23329 () Bool)

(assert (=> b!2782642 (= condSetEmpty!23329 (= (_2!19144 (h!37548 mapDefault!17526)) ((as const (Array Context!4666 Bool)) false)))))

(assert (= (and mapNonEmpty!17519 condMapEmpty!17526) mapIsEmpty!17526))

(assert (= (and mapNonEmpty!17519 (not condMapEmpty!17526)) mapNonEmpty!17526))

(assert (= b!2782641 b!2782639))

(assert (= (and b!2782641 condSetEmpty!23328) setIsEmpty!23328))

(assert (= (and b!2782641 (not condSetEmpty!23328)) setNonEmpty!23329))

(assert (= setNonEmpty!23329 b!2782638))

(assert (= (and mapNonEmpty!17526 ((_ is Cons!32128) mapValue!17526)) b!2782641))

(assert (= b!2782642 b!2782637))

(assert (= (and b!2782642 condSetEmpty!23329) setIsEmpty!23329))

(assert (= (and b!2782642 (not condSetEmpty!23329)) setNonEmpty!23328))

(assert (= setNonEmpty!23328 b!2782640))

(assert (= (and mapNonEmpty!17519 ((_ is Cons!32128) mapDefault!17526)) b!2782642))

(declare-fun m!3213795 () Bool)

(assert (=> setNonEmpty!23328 m!3213795))

(declare-fun m!3213797 () Bool)

(assert (=> b!2782642 m!3213797))

(declare-fun m!3213799 () Bool)

(assert (=> setNonEmpty!23329 m!3213799))

(declare-fun m!3213801 () Bool)

(assert (=> b!2782641 m!3213801))

(declare-fun m!3213803 () Bool)

(assert (=> mapNonEmpty!17526 m!3213803))

(declare-fun setIsEmpty!23330 () Bool)

(declare-fun setRes!23330 () Bool)

(assert (=> setIsEmpty!23330 setRes!23330))

(declare-fun setNonEmpty!23330 () Bool)

(declare-fun e!1755254 () Bool)

(declare-fun tp!881043 () Bool)

(declare-fun setElem!23330 () Context!4666)

(assert (=> setNonEmpty!23330 (= setRes!23330 (and tp!881043 (inv!43641 setElem!23330) e!1755254))))

(declare-fun setRest!23330 () (InoxSet Context!4666))

(assert (=> setNonEmpty!23330 (= (_2!19144 (h!37548 mapValue!17519)) ((_ map or) (store ((as const (Array Context!4666 Bool)) false) setElem!23330 true) setRest!23330))))

(declare-fun b!2782643 () Bool)

(declare-fun e!1755255 () Bool)

(declare-fun tp!881044 () Bool)

(declare-fun tp!881041 () Bool)

(declare-fun e!1755253 () Bool)

(assert (=> b!2782643 (= e!1755253 (and tp!881041 (inv!43641 (_2!19143 (_1!19144 (h!37548 mapValue!17519)))) e!1755255 tp_is_empty!14043 setRes!23330 tp!881044))))

(declare-fun condSetEmpty!23330 () Bool)

(assert (=> b!2782643 (= condSetEmpty!23330 (= (_2!19144 (h!37548 mapValue!17519)) ((as const (Array Context!4666 Bool)) false)))))

(declare-fun b!2782645 () Bool)

(declare-fun tp!881040 () Bool)

(assert (=> b!2782645 (= e!1755255 tp!881040)))

(assert (=> mapNonEmpty!17519 (= tp!880935 e!1755253)))

(declare-fun b!2782644 () Bool)

(declare-fun tp!881042 () Bool)

(assert (=> b!2782644 (= e!1755254 tp!881042)))

(assert (= b!2782643 b!2782645))

(assert (= (and b!2782643 condSetEmpty!23330) setIsEmpty!23330))

(assert (= (and b!2782643 (not condSetEmpty!23330)) setNonEmpty!23330))

(assert (= setNonEmpty!23330 b!2782644))

(assert (= (and mapNonEmpty!17519 ((_ is Cons!32128) mapValue!17519)) b!2782643))

(declare-fun m!3213805 () Bool)

(assert (=> setNonEmpty!23330 m!3213805))

(declare-fun m!3213807 () Bool)

(assert (=> b!2782643 m!3213807))

(declare-fun e!1755258 () Bool)

(assert (=> b!2782497 (= tp!880939 e!1755258)))

(declare-fun setRes!23331 () Bool)

(declare-fun e!1755256 () Bool)

(declare-fun setElem!23331 () Context!4666)

(declare-fun tp!881048 () Bool)

(declare-fun setNonEmpty!23331 () Bool)

(assert (=> setNonEmpty!23331 (= setRes!23331 (and tp!881048 (inv!43641 setElem!23331) e!1755256))))

(declare-fun setRest!23331 () (InoxSet Context!4666))

(assert (=> setNonEmpty!23331 (= (_2!19142 (h!37547 mapDefault!17519)) ((_ map or) (store ((as const (Array Context!4666 Bool)) false) setElem!23331 true) setRest!23331))))

(declare-fun e!1755257 () Bool)

(declare-fun b!2782646 () Bool)

(declare-fun tp!881046 () Bool)

(assert (=> b!2782646 (= e!1755258 (and (inv!43641 (_1!19141 (_1!19142 (h!37547 mapDefault!17519)))) e!1755257 tp_is_empty!14043 setRes!23331 tp!881046))))

(declare-fun condSetEmpty!23331 () Bool)

(assert (=> b!2782646 (= condSetEmpty!23331 (= (_2!19142 (h!37547 mapDefault!17519)) ((as const (Array Context!4666 Bool)) false)))))

(declare-fun b!2782647 () Bool)

(declare-fun tp!881047 () Bool)

(assert (=> b!2782647 (= e!1755257 tp!881047)))

(declare-fun setIsEmpty!23331 () Bool)

(assert (=> setIsEmpty!23331 setRes!23331))

(declare-fun b!2782648 () Bool)

(declare-fun tp!881045 () Bool)

(assert (=> b!2782648 (= e!1755256 tp!881045)))

(assert (= b!2782646 b!2782647))

(assert (= (and b!2782646 condSetEmpty!23331) setIsEmpty!23331))

(assert (= (and b!2782646 (not condSetEmpty!23331)) setNonEmpty!23331))

(assert (= setNonEmpty!23331 b!2782648))

(assert (= (and b!2782497 ((_ is Cons!32127) mapDefault!17519)) b!2782646))

(declare-fun m!3213809 () Bool)

(assert (=> setNonEmpty!23331 m!3213809))

(declare-fun m!3213811 () Bool)

(assert (=> b!2782646 m!3213811))

(declare-fun b!2782657 () Bool)

(declare-fun e!1755264 () Bool)

(declare-fun tp!881055 () Bool)

(declare-fun tp!881056 () Bool)

(assert (=> b!2782657 (= e!1755264 (and (inv!43638 (left!24441 (c!452260 totalInput!758))) tp!881055 (inv!43638 (right!24771 (c!452260 totalInput!758))) tp!881056))))

(declare-fun b!2782659 () Bool)

(declare-fun e!1755263 () Bool)

(declare-fun tp!881057 () Bool)

(assert (=> b!2782659 (= e!1755263 tp!881057)))

(declare-fun b!2782658 () Bool)

(declare-fun inv!43642 (IArray!19989) Bool)

(assert (=> b!2782658 (= e!1755264 (and (inv!43642 (xs!13103 (c!452260 totalInput!758))) e!1755263))))

(assert (=> b!2782515 (= tp!880936 (and (inv!43638 (c!452260 totalInput!758)) e!1755264))))

(assert (= (and b!2782515 ((_ is Node!9992) (c!452260 totalInput!758))) b!2782657))

(assert (= b!2782658 b!2782659))

(assert (= (and b!2782515 ((_ is Leaf!15218) (c!452260 totalInput!758))) b!2782658))

(declare-fun m!3213813 () Bool)

(assert (=> b!2782657 m!3213813))

(declare-fun m!3213815 () Bool)

(assert (=> b!2782657 m!3213815))

(declare-fun m!3213817 () Bool)

(assert (=> b!2782658 m!3213817))

(assert (=> b!2782515 m!3213675))

(declare-fun setIsEmpty!23332 () Bool)

(declare-fun setRes!23332 () Bool)

(assert (=> setIsEmpty!23332 setRes!23332))

(declare-fun setElem!23332 () Context!4666)

(declare-fun tp!881061 () Bool)

(declare-fun setNonEmpty!23332 () Bool)

(declare-fun e!1755266 () Bool)

(assert (=> setNonEmpty!23332 (= setRes!23332 (and tp!881061 (inv!43641 setElem!23332) e!1755266))))

(declare-fun setRest!23332 () (InoxSet Context!4666))

(assert (=> setNonEmpty!23332 (= (_2!19144 (h!37548 (zeroValue!4097 (v!33737 (underlying!7879 (v!33738 (underlying!7880 (cache!3887 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4666 Bool)) false) setElem!23332 true) setRest!23332))))

(declare-fun tp!881062 () Bool)

(declare-fun tp!881059 () Bool)

(declare-fun e!1755267 () Bool)

(declare-fun e!1755265 () Bool)

(declare-fun b!2782660 () Bool)

(assert (=> b!2782660 (= e!1755265 (and tp!881059 (inv!43641 (_2!19143 (_1!19144 (h!37548 (zeroValue!4097 (v!33737 (underlying!7879 (v!33738 (underlying!7880 (cache!3887 cacheDown!1009)))))))))) e!1755267 tp_is_empty!14043 setRes!23332 tp!881062))))

(declare-fun condSetEmpty!23332 () Bool)

(assert (=> b!2782660 (= condSetEmpty!23332 (= (_2!19144 (h!37548 (zeroValue!4097 (v!33737 (underlying!7879 (v!33738 (underlying!7880 (cache!3887 cacheDown!1009)))))))) ((as const (Array Context!4666 Bool)) false)))))

(declare-fun b!2782662 () Bool)

(declare-fun tp!881058 () Bool)

(assert (=> b!2782662 (= e!1755267 tp!881058)))

(assert (=> b!2782503 (= tp!880941 e!1755265)))

(declare-fun b!2782661 () Bool)

(declare-fun tp!881060 () Bool)

(assert (=> b!2782661 (= e!1755266 tp!881060)))

(assert (= b!2782660 b!2782662))

(assert (= (and b!2782660 condSetEmpty!23332) setIsEmpty!23332))

(assert (= (and b!2782660 (not condSetEmpty!23332)) setNonEmpty!23332))

(assert (= setNonEmpty!23332 b!2782661))

(assert (= (and b!2782503 ((_ is Cons!32128) (zeroValue!4097 (v!33737 (underlying!7879 (v!33738 (underlying!7880 (cache!3887 cacheDown!1009)))))))) b!2782660))

(declare-fun m!3213819 () Bool)

(assert (=> setNonEmpty!23332 m!3213819))

(declare-fun m!3213821 () Bool)

(assert (=> b!2782660 m!3213821))

(declare-fun setIsEmpty!23333 () Bool)

(declare-fun setRes!23333 () Bool)

(assert (=> setIsEmpty!23333 setRes!23333))

(declare-fun e!1755269 () Bool)

(declare-fun tp!881066 () Bool)

(declare-fun setNonEmpty!23333 () Bool)

(declare-fun setElem!23333 () Context!4666)

(assert (=> setNonEmpty!23333 (= setRes!23333 (and tp!881066 (inv!43641 setElem!23333) e!1755269))))

(declare-fun setRest!23333 () (InoxSet Context!4666))

(assert (=> setNonEmpty!23333 (= (_2!19144 (h!37548 (minValue!4097 (v!33737 (underlying!7879 (v!33738 (underlying!7880 (cache!3887 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4666 Bool)) false) setElem!23333 true) setRest!23333))))

(declare-fun e!1755268 () Bool)

(declare-fun e!1755270 () Bool)

(declare-fun b!2782663 () Bool)

(declare-fun tp!881064 () Bool)

(declare-fun tp!881067 () Bool)

(assert (=> b!2782663 (= e!1755268 (and tp!881064 (inv!43641 (_2!19143 (_1!19144 (h!37548 (minValue!4097 (v!33737 (underlying!7879 (v!33738 (underlying!7880 (cache!3887 cacheDown!1009)))))))))) e!1755270 tp_is_empty!14043 setRes!23333 tp!881067))))

(declare-fun condSetEmpty!23333 () Bool)

(assert (=> b!2782663 (= condSetEmpty!23333 (= (_2!19144 (h!37548 (minValue!4097 (v!33737 (underlying!7879 (v!33738 (underlying!7880 (cache!3887 cacheDown!1009)))))))) ((as const (Array Context!4666 Bool)) false)))))

(declare-fun b!2782665 () Bool)

(declare-fun tp!881063 () Bool)

(assert (=> b!2782665 (= e!1755270 tp!881063)))

(assert (=> b!2782503 (= tp!880947 e!1755268)))

(declare-fun b!2782664 () Bool)

(declare-fun tp!881065 () Bool)

(assert (=> b!2782664 (= e!1755269 tp!881065)))

(assert (= b!2782663 b!2782665))

(assert (= (and b!2782663 condSetEmpty!23333) setIsEmpty!23333))

(assert (= (and b!2782663 (not condSetEmpty!23333)) setNonEmpty!23333))

(assert (= setNonEmpty!23333 b!2782664))

(assert (= (and b!2782503 ((_ is Cons!32128) (minValue!4097 (v!33737 (underlying!7879 (v!33738 (underlying!7880 (cache!3887 cacheDown!1009)))))))) b!2782663))

(declare-fun m!3213823 () Bool)

(assert (=> setNonEmpty!23333 m!3213823))

(declare-fun m!3213825 () Bool)

(assert (=> b!2782663 m!3213825))

(declare-fun e!1755273 () Bool)

(assert (=> b!2782498 (= tp!880933 e!1755273)))

(declare-fun e!1755271 () Bool)

(declare-fun setNonEmpty!23334 () Bool)

(declare-fun setElem!23334 () Context!4666)

(declare-fun tp!881071 () Bool)

(declare-fun setRes!23334 () Bool)

(assert (=> setNonEmpty!23334 (= setRes!23334 (and tp!881071 (inv!43641 setElem!23334) e!1755271))))

(declare-fun setRest!23334 () (InoxSet Context!4666))

(assert (=> setNonEmpty!23334 (= (_2!19142 (h!37547 (zeroValue!4096 (v!33735 (underlying!7877 (v!33736 (underlying!7878 (cache!3886 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4666 Bool)) false) setElem!23334 true) setRest!23334))))

(declare-fun e!1755272 () Bool)

(declare-fun b!2782666 () Bool)

(declare-fun tp!881069 () Bool)

(assert (=> b!2782666 (= e!1755273 (and (inv!43641 (_1!19141 (_1!19142 (h!37547 (zeroValue!4096 (v!33735 (underlying!7877 (v!33736 (underlying!7878 (cache!3886 cacheUp!890)))))))))) e!1755272 tp_is_empty!14043 setRes!23334 tp!881069))))

(declare-fun condSetEmpty!23334 () Bool)

(assert (=> b!2782666 (= condSetEmpty!23334 (= (_2!19142 (h!37547 (zeroValue!4096 (v!33735 (underlying!7877 (v!33736 (underlying!7878 (cache!3886 cacheUp!890)))))))) ((as const (Array Context!4666 Bool)) false)))))

(declare-fun b!2782667 () Bool)

(declare-fun tp!881070 () Bool)

(assert (=> b!2782667 (= e!1755272 tp!881070)))

(declare-fun setIsEmpty!23334 () Bool)

(assert (=> setIsEmpty!23334 setRes!23334))

(declare-fun b!2782668 () Bool)

(declare-fun tp!881068 () Bool)

(assert (=> b!2782668 (= e!1755271 tp!881068)))

(assert (= b!2782666 b!2782667))

(assert (= (and b!2782666 condSetEmpty!23334) setIsEmpty!23334))

(assert (= (and b!2782666 (not condSetEmpty!23334)) setNonEmpty!23334))

(assert (= setNonEmpty!23334 b!2782668))

(assert (= (and b!2782498 ((_ is Cons!32127) (zeroValue!4096 (v!33735 (underlying!7877 (v!33736 (underlying!7878 (cache!3886 cacheUp!890)))))))) b!2782666))

(declare-fun m!3213827 () Bool)

(assert (=> setNonEmpty!23334 m!3213827))

(declare-fun m!3213829 () Bool)

(assert (=> b!2782666 m!3213829))

(declare-fun e!1755276 () Bool)

(assert (=> b!2782498 (= tp!880944 e!1755276)))

(declare-fun tp!881075 () Bool)

(declare-fun e!1755274 () Bool)

(declare-fun setRes!23335 () Bool)

(declare-fun setNonEmpty!23335 () Bool)

(declare-fun setElem!23335 () Context!4666)

(assert (=> setNonEmpty!23335 (= setRes!23335 (and tp!881075 (inv!43641 setElem!23335) e!1755274))))

(declare-fun setRest!23335 () (InoxSet Context!4666))

(assert (=> setNonEmpty!23335 (= (_2!19142 (h!37547 (minValue!4096 (v!33735 (underlying!7877 (v!33736 (underlying!7878 (cache!3886 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4666 Bool)) false) setElem!23335 true) setRest!23335))))

(declare-fun tp!881073 () Bool)

(declare-fun b!2782669 () Bool)

(declare-fun e!1755275 () Bool)

(assert (=> b!2782669 (= e!1755276 (and (inv!43641 (_1!19141 (_1!19142 (h!37547 (minValue!4096 (v!33735 (underlying!7877 (v!33736 (underlying!7878 (cache!3886 cacheUp!890)))))))))) e!1755275 tp_is_empty!14043 setRes!23335 tp!881073))))

(declare-fun condSetEmpty!23335 () Bool)

(assert (=> b!2782669 (= condSetEmpty!23335 (= (_2!19142 (h!37547 (minValue!4096 (v!33735 (underlying!7877 (v!33736 (underlying!7878 (cache!3886 cacheUp!890)))))))) ((as const (Array Context!4666 Bool)) false)))))

(declare-fun b!2782670 () Bool)

(declare-fun tp!881074 () Bool)

(assert (=> b!2782670 (= e!1755275 tp!881074)))

(declare-fun setIsEmpty!23335 () Bool)

(assert (=> setIsEmpty!23335 setRes!23335))

(declare-fun b!2782671 () Bool)

(declare-fun tp!881072 () Bool)

(assert (=> b!2782671 (= e!1755274 tp!881072)))

(assert (= b!2782669 b!2782670))

(assert (= (and b!2782669 condSetEmpty!23335) setIsEmpty!23335))

(assert (= (and b!2782669 (not condSetEmpty!23335)) setNonEmpty!23335))

(assert (= setNonEmpty!23335 b!2782671))

(assert (= (and b!2782498 ((_ is Cons!32127) (minValue!4096 (v!33735 (underlying!7877 (v!33736 (underlying!7878 (cache!3886 cacheUp!890)))))))) b!2782669))

(declare-fun m!3213831 () Bool)

(assert (=> setNonEmpty!23335 m!3213831))

(declare-fun m!3213833 () Bool)

(assert (=> b!2782669 m!3213833))

(check-sat (not b!2782523) (not setNonEmpty!23320) (not b!2782526) (not b!2782641) (not b!2782662) (not b!2782622) (not setNonEmpty!23330) (not mapNonEmpty!17526) (not setNonEmpty!23335) (not b!2782590) (not b!2782529) (not b!2782642) (not b!2782539) (not b_next!79253) (not b!2782659) (not b!2782579) (not mapNonEmpty!17523) (not b!2782670) (not b!2782665) (not b!2782660) (not d!810290) (not b!2782620) (not setNonEmpty!23333) (not d!810288) (not setNonEmpty!23334) (not b!2782515) (not b!2782663) (not b!2782609) (not b!2782643) (not b!2782607) (not d!810280) (not setNonEmpty!23331) (not setNonEmpty!23328) (not b!2782608) (not setNonEmpty!23314) (not b!2782669) (not b!2782591) (not b!2782668) (not b!2782658) (not b!2782667) (not b!2782543) (not b!2782666) (not setNonEmpty!23329) (not b_next!79259) b_and!203293 (not b!2782548) (not b!2782589) (not b!2782639) (not b!2782564) (not b!2782657) (not b_next!79257) (not d!810300) (not b!2782560) (not b!2782540) (not b!2782610) (not b!2782637) (not b!2782646) (not b!2782621) (not b!2782664) (not d!810296) b_and!203287 b_and!203291 (not b!2782644) (not b!2782645) (not b!2782661) (not b!2782574) (not b!2782572) (not d!810282) tp_is_empty!14043 (not b!2782606) (not b!2782563) (not b!2782559) (not setNonEmpty!23319) b_and!203289 (not b!2782611) (not b!2782561) (not b_next!79255) (not b!2782588) (not d!810276) (not b!2782671) (not d!810286) (not b!2782648) (not d!810298) (not setNonEmpty!23332) (not setNonEmpty!23323) (not b!2782565) (not b!2782647) (not b!2782640) (not b!2782638))
(check-sat (not b_next!79253) (not b_next!79257) b_and!203289 (not b_next!79255) (not b_next!79259) b_and!203293 b_and!203287 b_and!203291)
