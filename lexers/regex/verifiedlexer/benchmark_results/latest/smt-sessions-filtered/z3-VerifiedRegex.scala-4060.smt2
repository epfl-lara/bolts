; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218294 () Bool)

(assert start!218294)

(declare-fun b!2240655 () Bool)

(declare-fun b_free!65057 () Bool)

(declare-fun b_next!65761 () Bool)

(assert (=> b!2240655 (= b_free!65057 (not b_next!65761))))

(declare-fun tp!706223 () Bool)

(declare-fun b_and!175069 () Bool)

(assert (=> b!2240655 (= tp!706223 b_and!175069)))

(declare-fun b!2240657 () Bool)

(declare-fun b_free!65059 () Bool)

(declare-fun b_next!65763 () Bool)

(assert (=> b!2240657 (= b_free!65059 (not b_next!65763))))

(declare-fun tp!706217 () Bool)

(declare-fun b_and!175071 () Bool)

(assert (=> b!2240657 (= tp!706217 b_and!175071)))

(declare-fun b!2240651 () Bool)

(declare-fun e!1432623 () Bool)

(declare-datatypes ((C!13168 0))(
  ( (C!13169 (val!7632 Int)) )
))
(declare-datatypes ((Regex!6511 0))(
  ( (ElementMatch!6511 (c!356786 C!13168)) (Concat!10849 (regOne!13534 Regex!6511) (regTwo!13534 Regex!6511)) (EmptyExpr!6511) (Star!6511 (reg!6840 Regex!6511)) (EmptyLang!6511) (Union!6511 (regOne!13535 Regex!6511) (regTwo!13535 Regex!6511)) )
))
(declare-datatypes ((List!26516 0))(
  ( (Nil!26422) (Cons!26422 (h!31823 Regex!6511) (t!199948 List!26516)) )
))
(declare-datatypes ((Context!4118 0))(
  ( (Context!4119 (exprs!2559 List!26516)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Option!5154 0))(
  ( (None!5153) (Some!5153 (v!30049 (InoxSet Context!4118))) )
))
(declare-fun lt!833749 () Option!5154)

(declare-fun isDefined!4162 (Option!5154) Bool)

(assert (=> b!2240651 (= e!1432623 (not (isDefined!4162 lt!833749)))))

(declare-fun mapNonEmpty!14762 () Bool)

(declare-fun mapRes!14762 () Bool)

(declare-fun tp!706220 () Bool)

(declare-fun tp!706219 () Bool)

(assert (=> mapNonEmpty!14762 (= mapRes!14762 (and tp!706220 tp!706219))))

(declare-datatypes ((tuple2!25846 0))(
  ( (tuple2!25847 (_1!15433 Context!4118) (_2!15433 C!13168)) )
))
(declare-datatypes ((tuple2!25848 0))(
  ( (tuple2!25849 (_1!15434 tuple2!25846) (_2!15434 (InoxSet Context!4118))) )
))
(declare-datatypes ((List!26517 0))(
  ( (Nil!26423) (Cons!26423 (h!31824 tuple2!25848) (t!199949 List!26517)) )
))
(declare-fun mapValue!14762 () List!26517)

(declare-datatypes ((array!11006 0))(
  ( (array!11007 (arr!4885 (Array (_ BitVec 32) (_ BitVec 64))) (size!20666 (_ BitVec 32))) )
))
(declare-datatypes ((array!11008 0))(
  ( (array!11009 (arr!4886 (Array (_ BitVec 32) List!26517)) (size!20667 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6298 0))(
  ( (LongMapFixedSize!6299 (defaultEntry!3514 Int) (mask!7758 (_ BitVec 32)) (extraKeys!3397 (_ BitVec 32)) (zeroValue!3407 List!26517) (minValue!3407 List!26517) (_size!6345 (_ BitVec 32)) (_keys!3446 array!11006) (_values!3429 array!11008) (_vacant!3210 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12413 0))(
  ( (Cell!12414 (v!30050 LongMapFixedSize!6298)) )
))
(declare-datatypes ((MutLongMap!3149 0))(
  ( (LongMap!3149 (underlying!6499 Cell!12413)) (MutLongMapExt!3148 (__x!17673 Int)) )
))
(declare-datatypes ((Hashable!3059 0))(
  ( (HashableExt!3058 (__x!17674 Int)) )
))
(declare-datatypes ((Cell!12415 0))(
  ( (Cell!12416 (v!30051 MutLongMap!3149)) )
))
(declare-datatypes ((MutableMap!3059 0))(
  ( (MutableMapExt!3058 (__x!17675 Int)) (HashMap!3059 (underlying!6500 Cell!12415) (hashF!4982 Hashable!3059) (_size!6346 (_ BitVec 32)) (defaultValue!3221 Int)) )
))
(declare-datatypes ((CacheUp!1988 0))(
  ( (CacheUp!1989 (cache!3440 MutableMap!3059)) )
))
(declare-fun thiss!28657 () CacheUp!1988)

(declare-fun mapKey!14762 () (_ BitVec 32))

(declare-fun mapRest!14762 () (Array (_ BitVec 32) List!26517))

(assert (=> mapNonEmpty!14762 (= (arr!4886 (_values!3429 (v!30050 (underlying!6499 (v!30051 (underlying!6500 (cache!3440 thiss!28657))))))) (store mapRest!14762 mapKey!14762 mapValue!14762))))

(declare-fun b!2240652 () Bool)

(declare-fun e!1432616 () Bool)

(declare-fun e!1432619 () Bool)

(assert (=> b!2240652 (= e!1432616 e!1432619)))

(declare-fun mapIsEmpty!14762 () Bool)

(assert (=> mapIsEmpty!14762 mapRes!14762))

(declare-fun b!2240653 () Bool)

(declare-fun e!1432614 () Bool)

(assert (=> b!2240653 (= e!1432619 e!1432614)))

(declare-fun res!957760 () Bool)

(declare-fun e!1432621 () Bool)

(assert (=> start!218294 (=> (not res!957760) (not e!1432621))))

(declare-fun validCacheMapUp!294 (MutableMap!3059) Bool)

(assert (=> start!218294 (= res!957760 (validCacheMapUp!294 (cache!3440 thiss!28657)))))

(assert (=> start!218294 e!1432621))

(declare-fun e!1432612 () Bool)

(declare-fun inv!35884 (CacheUp!1988) Bool)

(assert (=> start!218294 (and (inv!35884 thiss!28657) e!1432612)))

(declare-fun ctx!40 () Context!4118)

(declare-fun e!1432613 () Bool)

(declare-fun inv!35885 (Context!4118) Bool)

(assert (=> start!218294 (and (inv!35885 ctx!40) e!1432613)))

(declare-fun tp_is_empty!10243 () Bool)

(assert (=> start!218294 tp_is_empty!10243))

(declare-fun b!2240654 () Bool)

(declare-fun e!1432615 () Bool)

(assert (=> b!2240654 (= e!1432612 e!1432615)))

(declare-fun e!1432620 () Bool)

(declare-fun tp!706218 () Bool)

(declare-fun tp!706222 () Bool)

(declare-fun array_inv!3505 (array!11006) Bool)

(declare-fun array_inv!3506 (array!11008) Bool)

(assert (=> b!2240655 (= e!1432614 (and tp!706223 tp!706222 tp!706218 (array_inv!3505 (_keys!3446 (v!30050 (underlying!6499 (v!30051 (underlying!6500 (cache!3440 thiss!28657))))))) (array_inv!3506 (_values!3429 (v!30050 (underlying!6499 (v!30051 (underlying!6500 (cache!3440 thiss!28657))))))) e!1432620))))

(declare-fun b!2240656 () Bool)

(declare-fun tp!706224 () Bool)

(assert (=> b!2240656 (= e!1432620 (and tp!706224 mapRes!14762))))

(declare-fun condMapEmpty!14762 () Bool)

(declare-fun mapDefault!14762 () List!26517)

(assert (=> b!2240656 (= condMapEmpty!14762 (= (arr!4886 (_values!3429 (v!30050 (underlying!6499 (v!30051 (underlying!6500 (cache!3440 thiss!28657))))))) ((as const (Array (_ BitVec 32) List!26517)) mapDefault!14762)))))

(declare-fun e!1432617 () Bool)

(assert (=> b!2240657 (= e!1432615 (and e!1432617 tp!706217))))

(declare-fun b!2240658 () Bool)

(declare-fun e!1432622 () Bool)

(assert (=> b!2240658 (= e!1432621 e!1432622)))

(declare-fun res!957759 () Bool)

(assert (=> b!2240658 (=> (not res!957759) (not e!1432622))))

(declare-fun lt!833748 () tuple2!25846)

(declare-fun contains!4478 (MutableMap!3059 tuple2!25846) Bool)

(assert (=> b!2240658 (= res!957759 (contains!4478 (cache!3440 thiss!28657) lt!833748))))

(declare-fun a!949 () C!13168)

(assert (=> b!2240658 (= lt!833748 (tuple2!25847 ctx!40 a!949))))

(declare-fun b!2240659 () Bool)

(declare-fun lt!833751 () MutLongMap!3149)

(get-info :version)

(assert (=> b!2240659 (= e!1432617 (and e!1432616 ((_ is LongMap!3149) lt!833751)))))

(assert (=> b!2240659 (= lt!833751 (v!30051 (underlying!6500 (cache!3440 thiss!28657))))))

(declare-fun b!2240660 () Bool)

(assert (=> b!2240660 (= e!1432622 e!1432623)))

(declare-fun res!957761 () Bool)

(assert (=> b!2240660 (=> (not res!957761) (not e!1432623))))

(declare-fun isEmpty!14910 (Option!5154) Bool)

(assert (=> b!2240660 (= res!957761 (not (isEmpty!14910 lt!833749)))))

(declare-fun apply!6518 (MutableMap!3059 tuple2!25846) (InoxSet Context!4118))

(assert (=> b!2240660 (= lt!833749 (Some!5153 (apply!6518 (cache!3440 thiss!28657) lt!833748)))))

(declare-datatypes ((Unit!39397 0))(
  ( (Unit!39398) )
))
(declare-fun lt!833750 () Unit!39397)

(declare-fun lemmaIfInCacheThenValid!39 (CacheUp!1988 Context!4118 C!13168) Unit!39397)

(assert (=> b!2240660 (= lt!833750 (lemmaIfInCacheThenValid!39 thiss!28657 ctx!40 a!949))))

(declare-fun b!2240661 () Bool)

(declare-fun tp!706221 () Bool)

(assert (=> b!2240661 (= e!1432613 tp!706221)))

(assert (= (and start!218294 res!957760) b!2240658))

(assert (= (and b!2240658 res!957759) b!2240660))

(assert (= (and b!2240660 res!957761) b!2240651))

(assert (= (and b!2240656 condMapEmpty!14762) mapIsEmpty!14762))

(assert (= (and b!2240656 (not condMapEmpty!14762)) mapNonEmpty!14762))

(assert (= b!2240655 b!2240656))

(assert (= b!2240653 b!2240655))

(assert (= b!2240652 b!2240653))

(assert (= (and b!2240659 ((_ is LongMap!3149) (v!30051 (underlying!6500 (cache!3440 thiss!28657))))) b!2240652))

(assert (= b!2240657 b!2240659))

(assert (= (and b!2240654 ((_ is HashMap!3059) (cache!3440 thiss!28657))) b!2240657))

(assert (= start!218294 b!2240654))

(assert (= start!218294 b!2240661))

(declare-fun m!2672970 () Bool)

(assert (=> b!2240660 m!2672970))

(declare-fun m!2672972 () Bool)

(assert (=> b!2240660 m!2672972))

(declare-fun m!2672974 () Bool)

(assert (=> b!2240660 m!2672974))

(declare-fun m!2672976 () Bool)

(assert (=> b!2240655 m!2672976))

(declare-fun m!2672978 () Bool)

(assert (=> b!2240655 m!2672978))

(declare-fun m!2672980 () Bool)

(assert (=> b!2240658 m!2672980))

(declare-fun m!2672982 () Bool)

(assert (=> mapNonEmpty!14762 m!2672982))

(declare-fun m!2672984 () Bool)

(assert (=> start!218294 m!2672984))

(declare-fun m!2672986 () Bool)

(assert (=> start!218294 m!2672986))

(declare-fun m!2672988 () Bool)

(assert (=> start!218294 m!2672988))

(declare-fun m!2672990 () Bool)

(assert (=> b!2240651 m!2672990))

(check-sat (not b!2240656) (not b_next!65761) b_and!175071 (not mapNonEmpty!14762) (not b_next!65763) (not b!2240660) (not b!2240658) b_and!175069 (not b!2240661) (not start!218294) (not b!2240651) tp_is_empty!10243 (not b!2240655))
(check-sat b_and!175069 b_and!175071 (not b_next!65763) (not b_next!65761))
(get-model)

(declare-fun d!665753 () Bool)

(assert (=> d!665753 (= (isEmpty!14910 lt!833749) (not ((_ is Some!5153) lt!833749)))))

(assert (=> b!2240660 d!665753))

(declare-fun b!2240674 () Bool)

(declare-fun e!1432631 () (InoxSet Context!4118))

(declare-fun dynLambda!11541 (Int tuple2!25846) (InoxSet Context!4118))

(assert (=> b!2240674 (= e!1432631 (dynLambda!11541 (defaultValue!3221 (cache!3440 thiss!28657)) lt!833748))))

(declare-fun b!2240675 () Bool)

(declare-fun e!1432632 () Unit!39397)

(declare-fun Unit!39399 () Unit!39397)

(assert (=> b!2240675 (= e!1432632 Unit!39399)))

(declare-fun d!665755 () Bool)

(declare-fun e!1432630 () Bool)

(assert (=> d!665755 e!1432630))

(declare-fun c!356795 () Bool)

(assert (=> d!665755 (= c!356795 (contains!4478 (cache!3440 thiss!28657) lt!833748))))

(declare-fun lt!833838 () (InoxSet Context!4118))

(assert (=> d!665755 (= lt!833838 e!1432631)))

(declare-fun c!356793 () Bool)

(assert (=> d!665755 (= c!356793 (not (contains!4478 (cache!3440 thiss!28657) lt!833748)))))

(declare-fun valid!2370 (MutableMap!3059) Bool)

(assert (=> d!665755 (valid!2370 (cache!3440 thiss!28657))))

(assert (=> d!665755 (= (apply!6518 (cache!3440 thiss!28657) lt!833748) lt!833838)))

(declare-fun b!2240676 () Bool)

(declare-fun get!7992 (Option!5154) (InoxSet Context!4118))

(declare-fun getValueByKey!92 (List!26517 tuple2!25846) Option!5154)

(declare-datatypes ((ListMap!871 0))(
  ( (ListMap!872 (toList!1386 List!26517)) )
))
(declare-fun map!5463 (MutableMap!3059) ListMap!871)

(assert (=> b!2240676 (= e!1432630 (= lt!833838 (get!7992 (getValueByKey!92 (toList!1386 (map!5463 (cache!3440 thiss!28657))) lt!833748))))))

(declare-fun b!2240677 () Bool)

(declare-fun lt!833839 () (_ BitVec 64))

(declare-datatypes ((Option!5155 0))(
  ( (None!5154) (Some!5154 (v!30052 tuple2!25848)) )
))
(declare-fun get!7993 (Option!5155) tuple2!25848)

(declare-fun getPair!42 (List!26517 tuple2!25846) Option!5155)

(declare-fun apply!6519 (MutLongMap!3149 (_ BitVec 64)) List!26517)

(assert (=> b!2240677 (= e!1432631 (_2!15434 (get!7993 (getPair!42 (apply!6519 (v!30051 (underlying!6500 (cache!3440 thiss!28657))) lt!833839) lt!833748))))))

(declare-fun hash!589 (Hashable!3059 tuple2!25846) (_ BitVec 64))

(assert (=> b!2240677 (= lt!833839 (hash!589 (hashF!4982 (cache!3440 thiss!28657)) lt!833748))))

(declare-fun c!356794 () Bool)

(declare-datatypes ((tuple2!25850 0))(
  ( (tuple2!25851 (_1!15435 (_ BitVec 64)) (_2!15435 List!26517)) )
))
(declare-datatypes ((List!26518 0))(
  ( (Nil!26424) (Cons!26424 (h!31825 tuple2!25850) (t!199952 List!26518)) )
))
(declare-fun contains!4479 (List!26518 tuple2!25850) Bool)

(declare-datatypes ((ListLongMap!355 0))(
  ( (ListLongMap!356 (toList!1387 List!26518)) )
))
(declare-fun map!5464 (MutLongMap!3149) ListLongMap!355)

(assert (=> b!2240677 (= c!356794 (not (contains!4479 (toList!1387 (map!5464 (v!30051 (underlying!6500 (cache!3440 thiss!28657))))) (tuple2!25851 lt!833839 (apply!6519 (v!30051 (underlying!6500 (cache!3440 thiss!28657))) lt!833839)))))))

(declare-fun lt!833830 () Unit!39397)

(assert (=> b!2240677 (= lt!833830 e!1432632)))

(declare-fun lambda!84759 () Int)

(declare-fun lt!833835 () Unit!39397)

(declare-fun forallContained!789 (List!26518 Int tuple2!25850) Unit!39397)

(assert (=> b!2240677 (= lt!833835 (forallContained!789 (toList!1387 (map!5464 (v!30051 (underlying!6500 (cache!3440 thiss!28657))))) lambda!84759 (tuple2!25851 lt!833839 (apply!6519 (v!30051 (underlying!6500 (cache!3440 thiss!28657))) lt!833839))))))

(declare-fun lt!833812 () ListLongMap!355)

(assert (=> b!2240677 (= lt!833812 (map!5464 (v!30051 (underlying!6500 (cache!3440 thiss!28657)))))))

(declare-fun lt!833831 () Unit!39397)

(declare-fun lemmaGetPairGetSameValueAsMap!23 (ListLongMap!355 tuple2!25846 (InoxSet Context!4118) Hashable!3059) Unit!39397)

(assert (=> b!2240677 (= lt!833831 (lemmaGetPairGetSameValueAsMap!23 lt!833812 lt!833748 (_2!15434 (get!7993 (getPair!42 (apply!6519 (v!30051 (underlying!6500 (cache!3440 thiss!28657))) lt!833839) lt!833748))) (hashF!4982 (cache!3440 thiss!28657))))))

(declare-fun lt!833819 () Unit!39397)

(declare-fun lemmaInGenMapThenLongMapContainsHash!23 (ListLongMap!355 tuple2!25846 Hashable!3059) Unit!39397)

(assert (=> b!2240677 (= lt!833819 (lemmaInGenMapThenLongMapContainsHash!23 lt!833812 lt!833748 (hashF!4982 (cache!3440 thiss!28657))))))

(declare-fun contains!4480 (ListLongMap!355 (_ BitVec 64)) Bool)

(assert (=> b!2240677 (contains!4480 lt!833812 (hash!589 (hashF!4982 (cache!3440 thiss!28657)) lt!833748))))

(declare-fun lt!833818 () Unit!39397)

(assert (=> b!2240677 (= lt!833818 lt!833819)))

(declare-fun lt!833828 () (_ BitVec 64))

(assert (=> b!2240677 (= lt!833828 (hash!589 (hashF!4982 (cache!3440 thiss!28657)) lt!833748))))

(declare-fun lt!833815 () List!26517)

(declare-fun apply!6520 (ListLongMap!355 (_ BitVec 64)) List!26517)

(assert (=> b!2240677 (= lt!833815 (apply!6520 lt!833812 (hash!589 (hashF!4982 (cache!3440 thiss!28657)) lt!833748)))))

(declare-fun lt!833841 () Unit!39397)

(declare-fun lemmaGetValueImpliesTupleContained!24 (ListLongMap!355 (_ BitVec 64) List!26517) Unit!39397)

(assert (=> b!2240677 (= lt!833841 (lemmaGetValueImpliesTupleContained!24 lt!833812 lt!833828 lt!833815))))

(assert (=> b!2240677 (contains!4479 (toList!1387 lt!833812) (tuple2!25851 lt!833828 lt!833815))))

(declare-fun lt!833820 () Unit!39397)

(assert (=> b!2240677 (= lt!833820 lt!833841)))

(declare-fun lt!833813 () Unit!39397)

(assert (=> b!2240677 (= lt!833813 (forallContained!789 (toList!1387 lt!833812) lambda!84759 (tuple2!25851 (hash!589 (hashF!4982 (cache!3440 thiss!28657)) lt!833748) (apply!6520 lt!833812 (hash!589 (hashF!4982 (cache!3440 thiss!28657)) lt!833748)))))))

(declare-fun lt!833822 () Unit!39397)

(declare-fun lemmaInGenMapThenGetPairDefined!23 (ListLongMap!355 tuple2!25846 Hashable!3059) Unit!39397)

(assert (=> b!2240677 (= lt!833822 (lemmaInGenMapThenGetPairDefined!23 lt!833812 lt!833748 (hashF!4982 (cache!3440 thiss!28657))))))

(declare-fun lt!833827 () Unit!39397)

(assert (=> b!2240677 (= lt!833827 (lemmaInGenMapThenLongMapContainsHash!23 lt!833812 lt!833748 (hashF!4982 (cache!3440 thiss!28657))))))

(declare-fun lt!833817 () Unit!39397)

(assert (=> b!2240677 (= lt!833817 lt!833827)))

(declare-fun lt!833824 () (_ BitVec 64))

(assert (=> b!2240677 (= lt!833824 (hash!589 (hashF!4982 (cache!3440 thiss!28657)) lt!833748))))

(declare-fun lt!833829 () List!26517)

(assert (=> b!2240677 (= lt!833829 (apply!6520 lt!833812 (hash!589 (hashF!4982 (cache!3440 thiss!28657)) lt!833748)))))

(declare-fun lt!833833 () Unit!39397)

(assert (=> b!2240677 (= lt!833833 (lemmaGetValueImpliesTupleContained!24 lt!833812 lt!833824 lt!833829))))

(assert (=> b!2240677 (contains!4479 (toList!1387 lt!833812) (tuple2!25851 lt!833824 lt!833829))))

(declare-fun lt!833825 () Unit!39397)

(assert (=> b!2240677 (= lt!833825 lt!833833)))

(declare-fun lt!833840 () Unit!39397)

(assert (=> b!2240677 (= lt!833840 (forallContained!789 (toList!1387 lt!833812) lambda!84759 (tuple2!25851 (hash!589 (hashF!4982 (cache!3440 thiss!28657)) lt!833748) (apply!6520 lt!833812 (hash!589 (hashF!4982 (cache!3440 thiss!28657)) lt!833748)))))))

(declare-fun isDefined!4163 (Option!5155) Bool)

(assert (=> b!2240677 (isDefined!4163 (getPair!42 (apply!6520 lt!833812 (hash!589 (hashF!4982 (cache!3440 thiss!28657)) lt!833748)) lt!833748))))

(declare-fun lt!833836 () Unit!39397)

(assert (=> b!2240677 (= lt!833836 lt!833822)))

(declare-fun extractMap!122 (List!26518) ListMap!871)

(assert (=> b!2240677 (= (_2!15434 (get!7993 (getPair!42 (apply!6520 lt!833812 (hash!589 (hashF!4982 (cache!3440 thiss!28657)) lt!833748)) lt!833748))) (get!7992 (getValueByKey!92 (toList!1386 (extractMap!122 (toList!1387 lt!833812))) lt!833748)))))

(declare-fun lt!833816 () Unit!39397)

(assert (=> b!2240677 (= lt!833816 lt!833831)))

(declare-fun b!2240678 () Bool)

(assert (=> b!2240678 false))

(declare-fun lt!833821 () Unit!39397)

(declare-fun lt!833834 () Unit!39397)

(assert (=> b!2240678 (= lt!833821 lt!833834)))

(declare-fun lt!833826 () List!26518)

(declare-fun lt!833837 () List!26517)

(assert (=> b!2240678 (contains!4479 lt!833826 (tuple2!25851 lt!833839 lt!833837))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!43 (List!26518 (_ BitVec 64) List!26517) Unit!39397)

(assert (=> b!2240678 (= lt!833834 (lemmaGetValueByKeyImpliesContainsTuple!43 lt!833826 lt!833839 lt!833837))))

(assert (=> b!2240678 (= lt!833837 (apply!6519 (v!30051 (underlying!6500 (cache!3440 thiss!28657))) lt!833839))))

(assert (=> b!2240678 (= lt!833826 (toList!1387 (map!5464 (v!30051 (underlying!6500 (cache!3440 thiss!28657))))))))

(declare-fun lt!833814 () Unit!39397)

(declare-fun lt!833823 () Unit!39397)

(assert (=> b!2240678 (= lt!833814 lt!833823)))

(declare-fun lt!833832 () List!26518)

(declare-datatypes ((Option!5156 0))(
  ( (None!5155) (Some!5155 (v!30053 List!26517)) )
))
(declare-fun isDefined!4164 (Option!5156) Bool)

(declare-fun getValueByKey!93 (List!26518 (_ BitVec 64)) Option!5156)

(assert (=> b!2240678 (isDefined!4164 (getValueByKey!93 lt!833832 lt!833839))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!60 (List!26518 (_ BitVec 64)) Unit!39397)

(assert (=> b!2240678 (= lt!833823 (lemmaContainsKeyImpliesGetValueByKeyDefined!60 lt!833832 lt!833839))))

(assert (=> b!2240678 (= lt!833832 (toList!1387 (map!5464 (v!30051 (underlying!6500 (cache!3440 thiss!28657))))))))

(declare-fun Unit!39400 () Unit!39397)

(assert (=> b!2240678 (= e!1432632 Unit!39400)))

(declare-fun b!2240679 () Bool)

(assert (=> b!2240679 (= e!1432630 (= lt!833838 (dynLambda!11541 (defaultValue!3221 (cache!3440 thiss!28657)) lt!833748)))))

(assert (= (and d!665755 c!356793) b!2240674))

(assert (= (and d!665755 (not c!356793)) b!2240677))

(assert (= (and b!2240677 c!356794) b!2240678))

(assert (= (and b!2240677 (not c!356794)) b!2240675))

(assert (= (and d!665755 c!356795) b!2240676))

(assert (= (and d!665755 (not c!356795)) b!2240679))

(declare-fun b_lambda!71757 () Bool)

(assert (=> (not b_lambda!71757) (not b!2240674)))

(declare-fun t!199951 () Bool)

(declare-fun tb!132863 () Bool)

(assert (=> (and b!2240657 (= (defaultValue!3221 (cache!3440 thiss!28657)) (defaultValue!3221 (cache!3440 thiss!28657))) t!199951) tb!132863))

(assert (=> b!2240674 t!199951))

(declare-fun result!161840 () Bool)

(declare-fun b_and!175073 () Bool)

(assert (= b_and!175071 (and (=> t!199951 result!161840) b_and!175073)))

(declare-fun b_lambda!71759 () Bool)

(assert (=> (not b_lambda!71759) (not b!2240679)))

(assert (=> b!2240679 t!199951))

(declare-fun b_and!175075 () Bool)

(assert (= b_and!175073 (and (=> t!199951 result!161840) b_and!175075)))

(declare-fun m!2672992 () Bool)

(assert (=> b!2240678 m!2672992))

(declare-fun m!2672994 () Bool)

(assert (=> b!2240678 m!2672994))

(declare-fun m!2672996 () Bool)

(assert (=> b!2240678 m!2672996))

(declare-fun m!2672998 () Bool)

(assert (=> b!2240678 m!2672998))

(assert (=> b!2240678 m!2672994))

(declare-fun m!2673000 () Bool)

(assert (=> b!2240678 m!2673000))

(declare-fun m!2673002 () Bool)

(assert (=> b!2240678 m!2673002))

(declare-fun m!2673004 () Bool)

(assert (=> b!2240678 m!2673004))

(declare-fun m!2673006 () Bool)

(assert (=> b!2240677 m!2673006))

(declare-fun m!2673008 () Bool)

(assert (=> b!2240677 m!2673008))

(declare-fun m!2673010 () Bool)

(assert (=> b!2240677 m!2673010))

(declare-fun m!2673012 () Bool)

(assert (=> b!2240677 m!2673012))

(declare-fun m!2673014 () Bool)

(assert (=> b!2240677 m!2673014))

(declare-fun m!2673016 () Bool)

(assert (=> b!2240677 m!2673016))

(declare-fun m!2673018 () Bool)

(assert (=> b!2240677 m!2673018))

(declare-fun m!2673020 () Bool)

(assert (=> b!2240677 m!2673020))

(declare-fun m!2673022 () Bool)

(assert (=> b!2240677 m!2673022))

(declare-fun m!2673024 () Bool)

(assert (=> b!2240677 m!2673024))

(assert (=> b!2240677 m!2673024))

(declare-fun m!2673026 () Bool)

(assert (=> b!2240677 m!2673026))

(declare-fun m!2673028 () Bool)

(assert (=> b!2240677 m!2673028))

(declare-fun m!2673030 () Bool)

(assert (=> b!2240677 m!2673030))

(assert (=> b!2240677 m!2673010))

(declare-fun m!2673032 () Bool)

(assert (=> b!2240677 m!2673032))

(declare-fun m!2673034 () Bool)

(assert (=> b!2240677 m!2673034))

(declare-fun m!2673036 () Bool)

(assert (=> b!2240677 m!2673036))

(declare-fun m!2673038 () Bool)

(assert (=> b!2240677 m!2673038))

(assert (=> b!2240677 m!2673028))

(assert (=> b!2240677 m!2673012))

(declare-fun m!2673040 () Bool)

(assert (=> b!2240677 m!2673040))

(assert (=> b!2240677 m!2673026))

(assert (=> b!2240677 m!2673012))

(declare-fun m!2673042 () Bool)

(assert (=> b!2240677 m!2673042))

(assert (=> b!2240677 m!2673024))

(declare-fun m!2673044 () Bool)

(assert (=> b!2240677 m!2673044))

(declare-fun m!2673046 () Bool)

(assert (=> b!2240677 m!2673046))

(assert (=> b!2240677 m!2673002))

(assert (=> b!2240677 m!2673004))

(assert (=> b!2240677 m!2673004))

(assert (=> b!2240677 m!2673016))

(declare-fun m!2673048 () Bool)

(assert (=> b!2240676 m!2673048))

(declare-fun m!2673050 () Bool)

(assert (=> b!2240676 m!2673050))

(assert (=> b!2240676 m!2673050))

(declare-fun m!2673052 () Bool)

(assert (=> b!2240676 m!2673052))

(assert (=> d!665755 m!2672980))

(declare-fun m!2673054 () Bool)

(assert (=> d!665755 m!2673054))

(declare-fun m!2673056 () Bool)

(assert (=> b!2240674 m!2673056))

(assert (=> b!2240679 m!2673056))

(assert (=> b!2240660 d!665755))

(declare-fun d!665757 () Bool)

(declare-fun e!1432641 () Bool)

(assert (=> d!665757 e!1432641))

(declare-fun res!957764 () Bool)

(assert (=> d!665757 (=> res!957764 e!1432641)))

(assert (=> d!665757 (= res!957764 (not (contains!4478 (cache!3440 thiss!28657) (tuple2!25847 ctx!40 a!949))))))

(declare-fun lt!833856 () Unit!39397)

(declare-fun e!1432640 () Unit!39397)

(assert (=> d!665757 (= lt!833856 e!1432640)))

(declare-fun c!356798 () Bool)

(assert (=> d!665757 (= c!356798 (contains!4478 (cache!3440 thiss!28657) (tuple2!25847 ctx!40 a!949)))))

(assert (=> d!665757 (validCacheMapUp!294 (cache!3440 thiss!28657))))

(assert (=> d!665757 (= (lemmaIfInCacheThenValid!39 thiss!28657 ctx!40 a!949) lt!833856)))

(declare-fun b!2240686 () Bool)

(declare-fun lt!833860 () Unit!39397)

(assert (=> b!2240686 (= e!1432640 lt!833860)))

(declare-fun lt!833857 () tuple2!25846)

(assert (=> b!2240686 (= lt!833857 (tuple2!25847 ctx!40 a!949))))

(declare-fun lambda!84762 () Int)

(declare-fun lemmaForallPairsThenForLookup!35 (MutableMap!3059 tuple2!25846 Int) Unit!39397)

(assert (=> b!2240686 (= lt!833860 (lemmaForallPairsThenForLookup!35 (cache!3440 thiss!28657) lt!833857 lambda!84762))))

(declare-fun lt!833861 () tuple2!25848)

(assert (=> b!2240686 (= lt!833861 (tuple2!25849 lt!833857 (apply!6518 (cache!3440 thiss!28657) lt!833857)))))

(declare-fun lt!833858 () tuple2!25846)

(assert (=> b!2240686 (= lt!833858 lt!833857)))

(declare-fun lt!833862 () (InoxSet Context!4118))

(assert (=> b!2240686 (= lt!833862 (apply!6518 (cache!3440 thiss!28657) lt!833857))))

(declare-fun lt!833859 () (InoxSet Context!4118))

(assert (=> b!2240686 (= lt!833859 (apply!6518 (cache!3440 thiss!28657) lt!833857))))

(declare-fun derivationStepZipperUp!41 (Context!4118 C!13168) (InoxSet Context!4118))

(assert (=> b!2240686 (= (apply!6518 (cache!3440 thiss!28657) lt!833857) (derivationStepZipperUp!41 (_1!15433 lt!833857) (_2!15433 lt!833857)))))

(declare-fun b!2240687 () Bool)

(declare-fun Unit!39401 () Unit!39397)

(assert (=> b!2240687 (= e!1432640 Unit!39401)))

(declare-fun b!2240688 () Bool)

(assert (=> b!2240688 (= e!1432641 (= (derivationStepZipperUp!41 ctx!40 a!949) (apply!6518 (cache!3440 thiss!28657) (tuple2!25847 ctx!40 a!949))))))

(assert (= (and d!665757 c!356798) b!2240686))

(assert (= (and d!665757 (not c!356798)) b!2240687))

(assert (= (and d!665757 (not res!957764)) b!2240688))

(declare-fun m!2673058 () Bool)

(assert (=> d!665757 m!2673058))

(assert (=> d!665757 m!2672984))

(declare-fun m!2673060 () Bool)

(assert (=> b!2240686 m!2673060))

(declare-fun m!2673062 () Bool)

(assert (=> b!2240686 m!2673062))

(declare-fun m!2673064 () Bool)

(assert (=> b!2240686 m!2673064))

(declare-fun m!2673066 () Bool)

(assert (=> b!2240688 m!2673066))

(declare-fun m!2673068 () Bool)

(assert (=> b!2240688 m!2673068))

(assert (=> b!2240660 d!665757))

(declare-fun bs!454308 () Bool)

(declare-fun b!2240694 () Bool)

(assert (= bs!454308 (and b!2240694 b!2240686)))

(declare-fun lambda!84765 () Int)

(assert (=> bs!454308 (= lambda!84765 lambda!84762)))

(declare-fun d!665759 () Bool)

(declare-fun res!957769 () Bool)

(declare-fun e!1432644 () Bool)

(assert (=> d!665759 (=> (not res!957769) (not e!1432644))))

(assert (=> d!665759 (= res!957769 (valid!2370 (cache!3440 thiss!28657)))))

(assert (=> d!665759 (= (validCacheMapUp!294 (cache!3440 thiss!28657)) e!1432644)))

(declare-fun b!2240693 () Bool)

(declare-fun res!957770 () Bool)

(assert (=> b!2240693 (=> (not res!957770) (not e!1432644))))

(declare-fun invariantList!388 (List!26517) Bool)

(assert (=> b!2240693 (= res!957770 (invariantList!388 (toList!1386 (map!5463 (cache!3440 thiss!28657)))))))

(declare-fun forall!5440 (List!26517 Int) Bool)

(assert (=> b!2240694 (= e!1432644 (forall!5440 (toList!1386 (map!5463 (cache!3440 thiss!28657))) lambda!84765))))

(assert (= (and d!665759 res!957769) b!2240693))

(assert (= (and b!2240693 res!957770) b!2240694))

(assert (=> d!665759 m!2673054))

(assert (=> b!2240693 m!2673048))

(declare-fun m!2673071 () Bool)

(assert (=> b!2240693 m!2673071))

(assert (=> b!2240694 m!2673048))

(declare-fun m!2673073 () Bool)

(assert (=> b!2240694 m!2673073))

(assert (=> start!218294 d!665759))

(declare-fun d!665761 () Bool)

(declare-fun res!957773 () Bool)

(declare-fun e!1432647 () Bool)

(assert (=> d!665761 (=> (not res!957773) (not e!1432647))))

(assert (=> d!665761 (= res!957773 ((_ is HashMap!3059) (cache!3440 thiss!28657)))))

(assert (=> d!665761 (= (inv!35884 thiss!28657) e!1432647)))

(declare-fun b!2240697 () Bool)

(assert (=> b!2240697 (= e!1432647 (validCacheMapUp!294 (cache!3440 thiss!28657)))))

(assert (= (and d!665761 res!957773) b!2240697))

(assert (=> b!2240697 m!2672984))

(assert (=> start!218294 d!665761))

(declare-fun d!665763 () Bool)

(declare-fun lambda!84768 () Int)

(declare-fun forall!5441 (List!26516 Int) Bool)

(assert (=> d!665763 (= (inv!35885 ctx!40) (forall!5441 (exprs!2559 ctx!40) lambda!84768))))

(declare-fun bs!454309 () Bool)

(assert (= bs!454309 d!665763))

(declare-fun m!2673075 () Bool)

(assert (=> bs!454309 m!2673075))

(assert (=> start!218294 d!665763))

(declare-fun d!665765 () Bool)

(assert (=> d!665765 (= (isDefined!4162 lt!833749) (not (isEmpty!14910 lt!833749)))))

(declare-fun bs!454310 () Bool)

(assert (= bs!454310 d!665765))

(assert (=> bs!454310 m!2672970))

(assert (=> b!2240651 d!665765))

(declare-fun d!665767 () Bool)

(assert (=> d!665767 (= (array_inv!3505 (_keys!3446 (v!30050 (underlying!6499 (v!30051 (underlying!6500 (cache!3440 thiss!28657))))))) (bvsge (size!20666 (_keys!3446 (v!30050 (underlying!6499 (v!30051 (underlying!6500 (cache!3440 thiss!28657))))))) #b00000000000000000000000000000000))))

(assert (=> b!2240655 d!665767))

(declare-fun d!665769 () Bool)

(assert (=> d!665769 (= (array_inv!3506 (_values!3429 (v!30050 (underlying!6499 (v!30051 (underlying!6500 (cache!3440 thiss!28657))))))) (bvsge (size!20667 (_values!3429 (v!30050 (underlying!6499 (v!30051 (underlying!6500 (cache!3440 thiss!28657))))))) #b00000000000000000000000000000000))))

(assert (=> b!2240655 d!665769))

(declare-fun bs!454311 () Bool)

(declare-fun b!2240728 () Bool)

(assert (= bs!454311 (and b!2240728 b!2240677)))

(declare-fun lambda!84771 () Int)

(assert (=> bs!454311 (= lambda!84771 lambda!84759)))

(declare-fun b!2240720 () Bool)

(declare-fun e!1432666 () Unit!39397)

(declare-fun Unit!39402 () Unit!39397)

(assert (=> b!2240720 (= e!1432666 Unit!39402)))

(declare-fun b!2240721 () Bool)

(declare-fun e!1432662 () Unit!39397)

(assert (=> b!2240721 (= e!1432662 e!1432666)))

(declare-fun res!957780 () Bool)

(declare-fun call!135231 () Bool)

(assert (=> b!2240721 (= res!957780 call!135231)))

(declare-fun e!1432663 () Bool)

(assert (=> b!2240721 (=> (not res!957780) (not e!1432663))))

(declare-fun c!356808 () Bool)

(assert (=> b!2240721 (= c!356808 e!1432663)))

(declare-fun b!2240722 () Bool)

(declare-fun e!1432664 () Unit!39397)

(declare-fun Unit!39403 () Unit!39397)

(assert (=> b!2240722 (= e!1432664 Unit!39403)))

(declare-fun b!2240723 () Bool)

(declare-fun e!1432665 () Bool)

(declare-fun call!135228 () Bool)

(assert (=> b!2240723 (= e!1432665 call!135228)))

(declare-fun bm!135221 () Bool)

(declare-fun call!135229 () Option!5155)

(declare-fun call!135230 () List!26517)

(assert (=> bm!135221 (= call!135229 (getPair!42 call!135230 lt!833748))))

(declare-fun bm!135222 () Bool)

(declare-fun call!135227 () ListLongMap!355)

(declare-fun lt!833922 () ListLongMap!355)

(declare-fun c!356807 () Bool)

(declare-fun call!135226 () (_ BitVec 64))

(assert (=> bm!135222 (= call!135230 (apply!6520 (ite c!356807 lt!833922 call!135227) call!135226))))

(declare-fun b!2240724 () Bool)

(assert (=> b!2240724 false))

(declare-fun lt!833906 () Unit!39397)

(declare-fun lt!833917 () Unit!39397)

(assert (=> b!2240724 (= lt!833906 lt!833917)))

(declare-fun lt!833913 () ListLongMap!355)

(declare-fun contains!4481 (ListMap!871 tuple2!25846) Bool)

(assert (=> b!2240724 (contains!4481 (extractMap!122 (toList!1387 lt!833913)) lt!833748)))

(declare-fun lemmaInLongMapThenInGenericMap!42 (ListLongMap!355 tuple2!25846 Hashable!3059) Unit!39397)

(assert (=> b!2240724 (= lt!833917 (lemmaInLongMapThenInGenericMap!42 lt!833913 lt!833748 (hashF!4982 (cache!3440 thiss!28657))))))

(assert (=> b!2240724 (= lt!833913 call!135227)))

(declare-fun Unit!39404 () Unit!39397)

(assert (=> b!2240724 (= e!1432666 Unit!39404)))

(declare-fun e!1432668 () Bool)

(declare-fun b!2240725 () Bool)

(declare-fun lt!833915 () (_ BitVec 64))

(assert (=> b!2240725 (= e!1432668 (isDefined!4163 (getPair!42 (apply!6519 (v!30051 (underlying!6500 (cache!3440 thiss!28657))) lt!833915) lt!833748)))))

(declare-fun d!665771 () Bool)

(declare-fun lt!833920 () Bool)

(assert (=> d!665771 (= lt!833920 (contains!4481 (map!5463 (cache!3440 thiss!28657)) lt!833748))))

(assert (=> d!665771 (= lt!833920 e!1432668)))

(declare-fun res!957782 () Bool)

(assert (=> d!665771 (=> (not res!957782) (not e!1432668))))

(declare-fun contains!4482 (MutLongMap!3149 (_ BitVec 64)) Bool)

(assert (=> d!665771 (= res!957782 (contains!4482 (v!30051 (underlying!6500 (cache!3440 thiss!28657))) lt!833915))))

(declare-fun lt!833916 () Unit!39397)

(assert (=> d!665771 (= lt!833916 e!1432662)))

(assert (=> d!665771 (= c!356807 (contains!4481 (extractMap!122 (toList!1387 (map!5464 (v!30051 (underlying!6500 (cache!3440 thiss!28657)))))) lt!833748))))

(declare-fun lt!833921 () Unit!39397)

(declare-fun e!1432667 () Unit!39397)

(assert (=> d!665771 (= lt!833921 e!1432667)))

(declare-fun c!356810 () Bool)

(assert (=> d!665771 (= c!356810 (contains!4482 (v!30051 (underlying!6500 (cache!3440 thiss!28657))) lt!833915))))

(assert (=> d!665771 (= lt!833915 (hash!589 (hashF!4982 (cache!3440 thiss!28657)) lt!833748))))

(assert (=> d!665771 (valid!2370 (cache!3440 thiss!28657))))

(assert (=> d!665771 (= (contains!4478 (cache!3440 thiss!28657) lt!833748) lt!833920)))

(declare-fun bm!135223 () Bool)

(assert (=> bm!135223 (= call!135226 (hash!589 (hashF!4982 (cache!3440 thiss!28657)) lt!833748))))

(declare-fun bm!135224 () Bool)

(assert (=> bm!135224 (= call!135228 (isDefined!4163 call!135229))))

(declare-fun bm!135225 () Bool)

(assert (=> bm!135225 (= call!135227 (map!5464 (v!30051 (underlying!6500 (cache!3440 thiss!28657)))))))

(declare-fun b!2240726 () Bool)

(declare-fun lt!833910 () Unit!39397)

(assert (=> b!2240726 (= e!1432662 lt!833910)))

(assert (=> b!2240726 (= lt!833922 call!135227)))

(declare-fun lemmaInGenericMapThenInLongMap!42 (ListLongMap!355 tuple2!25846 Hashable!3059) Unit!39397)

(assert (=> b!2240726 (= lt!833910 (lemmaInGenericMapThenInLongMap!42 lt!833922 lt!833748 (hashF!4982 (cache!3440 thiss!28657))))))

(declare-fun res!957781 () Bool)

(assert (=> b!2240726 (= res!957781 call!135231)))

(assert (=> b!2240726 (=> (not res!957781) (not e!1432665))))

(assert (=> b!2240726 e!1432665))

(declare-fun b!2240727 () Bool)

(assert (=> b!2240727 (= e!1432663 call!135228)))

(declare-fun bm!135226 () Bool)

(assert (=> bm!135226 (= call!135231 (contains!4480 (ite c!356807 lt!833922 call!135227) call!135226))))

(assert (=> b!2240728 (= e!1432667 (forallContained!789 (toList!1387 (map!5464 (v!30051 (underlying!6500 (cache!3440 thiss!28657))))) lambda!84771 (tuple2!25851 lt!833915 (apply!6519 (v!30051 (underlying!6500 (cache!3440 thiss!28657))) lt!833915))))))

(declare-fun c!356809 () Bool)

(assert (=> b!2240728 (= c!356809 (not (contains!4479 (toList!1387 (map!5464 (v!30051 (underlying!6500 (cache!3440 thiss!28657))))) (tuple2!25851 lt!833915 (apply!6519 (v!30051 (underlying!6500 (cache!3440 thiss!28657))) lt!833915)))))))

(declare-fun lt!833919 () Unit!39397)

(assert (=> b!2240728 (= lt!833919 e!1432664)))

(declare-fun b!2240729 () Bool)

(assert (=> b!2240729 false))

(declare-fun lt!833912 () Unit!39397)

(declare-fun lt!833905 () Unit!39397)

(assert (=> b!2240729 (= lt!833912 lt!833905)))

(declare-fun lt!833914 () List!26518)

(declare-fun lt!833907 () List!26517)

(assert (=> b!2240729 (contains!4479 lt!833914 (tuple2!25851 lt!833915 lt!833907))))

(assert (=> b!2240729 (= lt!833905 (lemmaGetValueByKeyImpliesContainsTuple!43 lt!833914 lt!833915 lt!833907))))

(assert (=> b!2240729 (= lt!833907 (apply!6519 (v!30051 (underlying!6500 (cache!3440 thiss!28657))) lt!833915))))

(assert (=> b!2240729 (= lt!833914 (toList!1387 (map!5464 (v!30051 (underlying!6500 (cache!3440 thiss!28657))))))))

(declare-fun lt!833903 () Unit!39397)

(declare-fun lt!833904 () Unit!39397)

(assert (=> b!2240729 (= lt!833903 lt!833904)))

(declare-fun lt!833909 () List!26518)

(assert (=> b!2240729 (isDefined!4164 (getValueByKey!93 lt!833909 lt!833915))))

(assert (=> b!2240729 (= lt!833904 (lemmaContainsKeyImpliesGetValueByKeyDefined!60 lt!833909 lt!833915))))

(assert (=> b!2240729 (= lt!833909 (toList!1387 (map!5464 (v!30051 (underlying!6500 (cache!3440 thiss!28657))))))))

(declare-fun lt!833911 () Unit!39397)

(declare-fun lt!833918 () Unit!39397)

(assert (=> b!2240729 (= lt!833911 lt!833918)))

(declare-fun lt!833908 () List!26518)

(declare-fun containsKey!91 (List!26518 (_ BitVec 64)) Bool)

(assert (=> b!2240729 (containsKey!91 lt!833908 lt!833915)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!43 (List!26518 (_ BitVec 64)) Unit!39397)

(assert (=> b!2240729 (= lt!833918 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!43 lt!833908 lt!833915))))

(assert (=> b!2240729 (= lt!833908 (toList!1387 (map!5464 (v!30051 (underlying!6500 (cache!3440 thiss!28657))))))))

(declare-fun Unit!39405 () Unit!39397)

(assert (=> b!2240729 (= e!1432664 Unit!39405)))

(declare-fun b!2240730 () Bool)

(declare-fun Unit!39406 () Unit!39397)

(assert (=> b!2240730 (= e!1432667 Unit!39406)))

(assert (= (and d!665771 c!356810) b!2240728))

(assert (= (and d!665771 (not c!356810)) b!2240730))

(assert (= (and b!2240728 c!356809) b!2240729))

(assert (= (and b!2240728 (not c!356809)) b!2240722))

(assert (= (and d!665771 c!356807) b!2240726))

(assert (= (and d!665771 (not c!356807)) b!2240721))

(assert (= (and b!2240726 res!957781) b!2240723))

(assert (= (and b!2240721 res!957780) b!2240727))

(assert (= (and b!2240721 c!356808) b!2240724))

(assert (= (and b!2240721 (not c!356808)) b!2240720))

(assert (= (or b!2240726 b!2240723 b!2240721 b!2240727) bm!135223))

(assert (= (or b!2240726 b!2240721 b!2240727 b!2240724) bm!135225))

(assert (= (or b!2240726 b!2240721) bm!135226))

(assert (= (or b!2240723 b!2240727) bm!135222))

(assert (= (or b!2240723 b!2240727) bm!135221))

(assert (= (or b!2240723 b!2240727) bm!135224))

(assert (= (and d!665771 res!957782) b!2240725))

(declare-fun m!2673077 () Bool)

(assert (=> bm!135224 m!2673077))

(assert (=> bm!135225 m!2673002))

(assert (=> d!665771 m!2673002))

(declare-fun m!2673079 () Bool)

(assert (=> d!665771 m!2673079))

(assert (=> d!665771 m!2673024))

(declare-fun m!2673081 () Bool)

(assert (=> d!665771 m!2673081))

(declare-fun m!2673083 () Bool)

(assert (=> d!665771 m!2673083))

(assert (=> d!665771 m!2673048))

(assert (=> d!665771 m!2673081))

(assert (=> d!665771 m!2673048))

(declare-fun m!2673085 () Bool)

(assert (=> d!665771 m!2673085))

(assert (=> d!665771 m!2673054))

(assert (=> bm!135223 m!2673024))

(declare-fun m!2673087 () Bool)

(assert (=> b!2240724 m!2673087))

(assert (=> b!2240724 m!2673087))

(declare-fun m!2673089 () Bool)

(assert (=> b!2240724 m!2673089))

(declare-fun m!2673091 () Bool)

(assert (=> b!2240724 m!2673091))

(declare-fun m!2673093 () Bool)

(assert (=> b!2240725 m!2673093))

(assert (=> b!2240725 m!2673093))

(declare-fun m!2673095 () Bool)

(assert (=> b!2240725 m!2673095))

(assert (=> b!2240725 m!2673095))

(declare-fun m!2673097 () Bool)

(assert (=> b!2240725 m!2673097))

(declare-fun m!2673099 () Bool)

(assert (=> b!2240729 m!2673099))

(declare-fun m!2673101 () Bool)

(assert (=> b!2240729 m!2673101))

(declare-fun m!2673103 () Bool)

(assert (=> b!2240729 m!2673103))

(declare-fun m!2673105 () Bool)

(assert (=> b!2240729 m!2673105))

(declare-fun m!2673107 () Bool)

(assert (=> b!2240729 m!2673107))

(assert (=> b!2240729 m!2673093))

(assert (=> b!2240729 m!2673002))

(declare-fun m!2673109 () Bool)

(assert (=> b!2240729 m!2673109))

(assert (=> b!2240729 m!2673099))

(declare-fun m!2673111 () Bool)

(assert (=> b!2240729 m!2673111))

(declare-fun m!2673113 () Bool)

(assert (=> bm!135221 m!2673113))

(declare-fun m!2673115 () Bool)

(assert (=> bm!135222 m!2673115))

(declare-fun m!2673117 () Bool)

(assert (=> bm!135226 m!2673117))

(assert (=> b!2240728 m!2673002))

(assert (=> b!2240728 m!2673093))

(declare-fun m!2673119 () Bool)

(assert (=> b!2240728 m!2673119))

(declare-fun m!2673121 () Bool)

(assert (=> b!2240728 m!2673121))

(declare-fun m!2673123 () Bool)

(assert (=> b!2240726 m!2673123))

(assert (=> b!2240658 d!665771))

(declare-fun e!1432686 () Bool)

(declare-fun tp!706251 () Bool)

(declare-fun mapDefault!14765 () List!26517)

(declare-fun setRes!20580 () Bool)

(declare-fun e!1432684 () Bool)

(declare-fun b!2240745 () Bool)

(assert (=> b!2240745 (= e!1432686 (and (inv!35885 (_1!15433 (_1!15434 (h!31824 mapDefault!14765)))) e!1432684 tp_is_empty!10243 setRes!20580 tp!706251))))

(declare-fun condSetEmpty!20580 () Bool)

(assert (=> b!2240745 (= condSetEmpty!20580 (= (_2!15434 (h!31824 mapDefault!14765)) ((as const (Array Context!4118 Bool)) false)))))

(declare-fun b!2240746 () Bool)

(declare-fun tp!706249 () Bool)

(assert (=> b!2240746 (= e!1432684 tp!706249)))

(declare-fun mapIsEmpty!14765 () Bool)

(declare-fun mapRes!14765 () Bool)

(assert (=> mapIsEmpty!14765 mapRes!14765))

(declare-fun e!1432683 () Bool)

(declare-fun tp!706248 () Bool)

(declare-fun setRes!20581 () Bool)

(declare-fun setNonEmpty!20580 () Bool)

(declare-fun setElem!20581 () Context!4118)

(assert (=> setNonEmpty!20580 (= setRes!20581 (and tp!706248 (inv!35885 setElem!20581) e!1432683))))

(declare-fun mapValue!14765 () List!26517)

(declare-fun setRest!20580 () (InoxSet Context!4118))

(assert (=> setNonEmpty!20580 (= (_2!15434 (h!31824 mapValue!14765)) ((_ map or) (store ((as const (Array Context!4118 Bool)) false) setElem!20581 true) setRest!20580))))

(declare-fun setElem!20580 () Context!4118)

(declare-fun e!1432685 () Bool)

(declare-fun tp!706243 () Bool)

(declare-fun setNonEmpty!20581 () Bool)

(assert (=> setNonEmpty!20581 (= setRes!20580 (and tp!706243 (inv!35885 setElem!20580) e!1432685))))

(declare-fun setRest!20581 () (InoxSet Context!4118))

(assert (=> setNonEmpty!20581 (= (_2!15434 (h!31824 mapDefault!14765)) ((_ map or) (store ((as const (Array Context!4118 Bool)) false) setElem!20580 true) setRest!20581))))

(declare-fun b!2240747 () Bool)

(declare-fun e!1432682 () Bool)

(declare-fun tp!706247 () Bool)

(assert (=> b!2240747 (= e!1432682 tp!706247)))

(declare-fun b!2240748 () Bool)

(declare-fun tp!706250 () Bool)

(assert (=> b!2240748 (= e!1432685 tp!706250)))

(declare-fun setIsEmpty!20580 () Bool)

(assert (=> setIsEmpty!20580 setRes!20580))

(declare-fun condMapEmpty!14765 () Bool)

(assert (=> mapNonEmpty!14762 (= condMapEmpty!14765 (= mapRest!14762 ((as const (Array (_ BitVec 32) List!26517)) mapDefault!14765)))))

(assert (=> mapNonEmpty!14762 (= tp!706220 (and e!1432686 mapRes!14765))))

(declare-fun mapNonEmpty!14765 () Bool)

(declare-fun tp!706244 () Bool)

(declare-fun e!1432681 () Bool)

(assert (=> mapNonEmpty!14765 (= mapRes!14765 (and tp!706244 e!1432681))))

(declare-fun mapRest!14765 () (Array (_ BitVec 32) List!26517))

(declare-fun mapKey!14765 () (_ BitVec 32))

(assert (=> mapNonEmpty!14765 (= mapRest!14762 (store mapRest!14765 mapKey!14765 mapValue!14765))))

(declare-fun b!2240749 () Bool)

(declare-fun tp!706246 () Bool)

(assert (=> b!2240749 (= e!1432683 tp!706246)))

(declare-fun b!2240750 () Bool)

(declare-fun tp!706245 () Bool)

(assert (=> b!2240750 (= e!1432681 (and (inv!35885 (_1!15433 (_1!15434 (h!31824 mapValue!14765)))) e!1432682 tp_is_empty!10243 setRes!20581 tp!706245))))

(declare-fun condSetEmpty!20581 () Bool)

(assert (=> b!2240750 (= condSetEmpty!20581 (= (_2!15434 (h!31824 mapValue!14765)) ((as const (Array Context!4118 Bool)) false)))))

(declare-fun setIsEmpty!20581 () Bool)

(assert (=> setIsEmpty!20581 setRes!20581))

(assert (= (and mapNonEmpty!14762 condMapEmpty!14765) mapIsEmpty!14765))

(assert (= (and mapNonEmpty!14762 (not condMapEmpty!14765)) mapNonEmpty!14765))

(assert (= b!2240750 b!2240747))

(assert (= (and b!2240750 condSetEmpty!20581) setIsEmpty!20581))

(assert (= (and b!2240750 (not condSetEmpty!20581)) setNonEmpty!20580))

(assert (= setNonEmpty!20580 b!2240749))

(assert (= (and mapNonEmpty!14765 ((_ is Cons!26423) mapValue!14765)) b!2240750))

(assert (= b!2240745 b!2240746))

(assert (= (and b!2240745 condSetEmpty!20580) setIsEmpty!20580))

(assert (= (and b!2240745 (not condSetEmpty!20580)) setNonEmpty!20581))

(assert (= setNonEmpty!20581 b!2240748))

(assert (= (and mapNonEmpty!14762 ((_ is Cons!26423) mapDefault!14765)) b!2240745))

(declare-fun m!2673125 () Bool)

(assert (=> setNonEmpty!20580 m!2673125))

(declare-fun m!2673127 () Bool)

(assert (=> b!2240745 m!2673127))

(declare-fun m!2673129 () Bool)

(assert (=> setNonEmpty!20581 m!2673129))

(declare-fun m!2673131 () Bool)

(assert (=> mapNonEmpty!14765 m!2673131))

(declare-fun m!2673133 () Bool)

(assert (=> b!2240750 m!2673133))

(declare-fun b!2240759 () Bool)

(declare-fun e!1432694 () Bool)

(declare-fun tp!706260 () Bool)

(assert (=> b!2240759 (= e!1432694 tp!706260)))

(declare-fun e!1432695 () Bool)

(assert (=> mapNonEmpty!14762 (= tp!706219 e!1432695)))

(declare-fun setNonEmpty!20584 () Bool)

(declare-fun setElem!20584 () Context!4118)

(declare-fun e!1432693 () Bool)

(declare-fun setRes!20584 () Bool)

(declare-fun tp!706262 () Bool)

(assert (=> setNonEmpty!20584 (= setRes!20584 (and tp!706262 (inv!35885 setElem!20584) e!1432693))))

(declare-fun setRest!20584 () (InoxSet Context!4118))

(assert (=> setNonEmpty!20584 (= (_2!15434 (h!31824 mapValue!14762)) ((_ map or) (store ((as const (Array Context!4118 Bool)) false) setElem!20584 true) setRest!20584))))

(declare-fun b!2240760 () Bool)

(declare-fun tp!706261 () Bool)

(assert (=> b!2240760 (= e!1432693 tp!706261)))

(declare-fun tp!706263 () Bool)

(declare-fun b!2240761 () Bool)

(assert (=> b!2240761 (= e!1432695 (and (inv!35885 (_1!15433 (_1!15434 (h!31824 mapValue!14762)))) e!1432694 tp_is_empty!10243 setRes!20584 tp!706263))))

(declare-fun condSetEmpty!20584 () Bool)

(assert (=> b!2240761 (= condSetEmpty!20584 (= (_2!15434 (h!31824 mapValue!14762)) ((as const (Array Context!4118 Bool)) false)))))

(declare-fun setIsEmpty!20584 () Bool)

(assert (=> setIsEmpty!20584 setRes!20584))

(assert (= b!2240761 b!2240759))

(assert (= (and b!2240761 condSetEmpty!20584) setIsEmpty!20584))

(assert (= (and b!2240761 (not condSetEmpty!20584)) setNonEmpty!20584))

(assert (= setNonEmpty!20584 b!2240760))

(assert (= (and mapNonEmpty!14762 ((_ is Cons!26423) mapValue!14762)) b!2240761))

(declare-fun m!2673135 () Bool)

(assert (=> setNonEmpty!20584 m!2673135))

(declare-fun m!2673137 () Bool)

(assert (=> b!2240761 m!2673137))

(declare-fun b!2240762 () Bool)

(declare-fun e!1432697 () Bool)

(declare-fun tp!706264 () Bool)

(assert (=> b!2240762 (= e!1432697 tp!706264)))

(declare-fun e!1432698 () Bool)

(assert (=> b!2240655 (= tp!706222 e!1432698)))

(declare-fun tp!706266 () Bool)

(declare-fun setElem!20585 () Context!4118)

(declare-fun setNonEmpty!20585 () Bool)

(declare-fun e!1432696 () Bool)

(declare-fun setRes!20585 () Bool)

(assert (=> setNonEmpty!20585 (= setRes!20585 (and tp!706266 (inv!35885 setElem!20585) e!1432696))))

(declare-fun setRest!20585 () (InoxSet Context!4118))

(assert (=> setNonEmpty!20585 (= (_2!15434 (h!31824 (zeroValue!3407 (v!30050 (underlying!6499 (v!30051 (underlying!6500 (cache!3440 thiss!28657)))))))) ((_ map or) (store ((as const (Array Context!4118 Bool)) false) setElem!20585 true) setRest!20585))))

(declare-fun b!2240763 () Bool)

(declare-fun tp!706265 () Bool)

(assert (=> b!2240763 (= e!1432696 tp!706265)))

(declare-fun b!2240764 () Bool)

(declare-fun tp!706267 () Bool)

(assert (=> b!2240764 (= e!1432698 (and (inv!35885 (_1!15433 (_1!15434 (h!31824 (zeroValue!3407 (v!30050 (underlying!6499 (v!30051 (underlying!6500 (cache!3440 thiss!28657)))))))))) e!1432697 tp_is_empty!10243 setRes!20585 tp!706267))))

(declare-fun condSetEmpty!20585 () Bool)

(assert (=> b!2240764 (= condSetEmpty!20585 (= (_2!15434 (h!31824 (zeroValue!3407 (v!30050 (underlying!6499 (v!30051 (underlying!6500 (cache!3440 thiss!28657)))))))) ((as const (Array Context!4118 Bool)) false)))))

(declare-fun setIsEmpty!20585 () Bool)

(assert (=> setIsEmpty!20585 setRes!20585))

(assert (= b!2240764 b!2240762))

(assert (= (and b!2240764 condSetEmpty!20585) setIsEmpty!20585))

(assert (= (and b!2240764 (not condSetEmpty!20585)) setNonEmpty!20585))

(assert (= setNonEmpty!20585 b!2240763))

(assert (= (and b!2240655 ((_ is Cons!26423) (zeroValue!3407 (v!30050 (underlying!6499 (v!30051 (underlying!6500 (cache!3440 thiss!28657)))))))) b!2240764))

(declare-fun m!2673139 () Bool)

(assert (=> setNonEmpty!20585 m!2673139))

(declare-fun m!2673141 () Bool)

(assert (=> b!2240764 m!2673141))

(declare-fun b!2240765 () Bool)

(declare-fun e!1432700 () Bool)

(declare-fun tp!706268 () Bool)

(assert (=> b!2240765 (= e!1432700 tp!706268)))

(declare-fun e!1432701 () Bool)

(assert (=> b!2240655 (= tp!706218 e!1432701)))

(declare-fun setElem!20586 () Context!4118)

(declare-fun tp!706270 () Bool)

(declare-fun e!1432699 () Bool)

(declare-fun setRes!20586 () Bool)

(declare-fun setNonEmpty!20586 () Bool)

(assert (=> setNonEmpty!20586 (= setRes!20586 (and tp!706270 (inv!35885 setElem!20586) e!1432699))))

(declare-fun setRest!20586 () (InoxSet Context!4118))

(assert (=> setNonEmpty!20586 (= (_2!15434 (h!31824 (minValue!3407 (v!30050 (underlying!6499 (v!30051 (underlying!6500 (cache!3440 thiss!28657)))))))) ((_ map or) (store ((as const (Array Context!4118 Bool)) false) setElem!20586 true) setRest!20586))))

(declare-fun b!2240766 () Bool)

(declare-fun tp!706269 () Bool)

(assert (=> b!2240766 (= e!1432699 tp!706269)))

(declare-fun b!2240767 () Bool)

(declare-fun tp!706271 () Bool)

(assert (=> b!2240767 (= e!1432701 (and (inv!35885 (_1!15433 (_1!15434 (h!31824 (minValue!3407 (v!30050 (underlying!6499 (v!30051 (underlying!6500 (cache!3440 thiss!28657)))))))))) e!1432700 tp_is_empty!10243 setRes!20586 tp!706271))))

(declare-fun condSetEmpty!20586 () Bool)

(assert (=> b!2240767 (= condSetEmpty!20586 (= (_2!15434 (h!31824 (minValue!3407 (v!30050 (underlying!6499 (v!30051 (underlying!6500 (cache!3440 thiss!28657)))))))) ((as const (Array Context!4118 Bool)) false)))))

(declare-fun setIsEmpty!20586 () Bool)

(assert (=> setIsEmpty!20586 setRes!20586))

(assert (= b!2240767 b!2240765))

(assert (= (and b!2240767 condSetEmpty!20586) setIsEmpty!20586))

(assert (= (and b!2240767 (not condSetEmpty!20586)) setNonEmpty!20586))

(assert (= setNonEmpty!20586 b!2240766))

(assert (= (and b!2240655 ((_ is Cons!26423) (minValue!3407 (v!30050 (underlying!6499 (v!30051 (underlying!6500 (cache!3440 thiss!28657)))))))) b!2240767))

(declare-fun m!2673143 () Bool)

(assert (=> setNonEmpty!20586 m!2673143))

(declare-fun m!2673145 () Bool)

(assert (=> b!2240767 m!2673145))

(declare-fun b!2240768 () Bool)

(declare-fun e!1432703 () Bool)

(declare-fun tp!706272 () Bool)

(assert (=> b!2240768 (= e!1432703 tp!706272)))

(declare-fun e!1432704 () Bool)

(assert (=> b!2240656 (= tp!706224 e!1432704)))

(declare-fun setNonEmpty!20587 () Bool)

(declare-fun setRes!20587 () Bool)

(declare-fun e!1432702 () Bool)

(declare-fun setElem!20587 () Context!4118)

(declare-fun tp!706274 () Bool)

(assert (=> setNonEmpty!20587 (= setRes!20587 (and tp!706274 (inv!35885 setElem!20587) e!1432702))))

(declare-fun setRest!20587 () (InoxSet Context!4118))

(assert (=> setNonEmpty!20587 (= (_2!15434 (h!31824 mapDefault!14762)) ((_ map or) (store ((as const (Array Context!4118 Bool)) false) setElem!20587 true) setRest!20587))))

(declare-fun b!2240769 () Bool)

(declare-fun tp!706273 () Bool)

(assert (=> b!2240769 (= e!1432702 tp!706273)))

(declare-fun tp!706275 () Bool)

(declare-fun b!2240770 () Bool)

(assert (=> b!2240770 (= e!1432704 (and (inv!35885 (_1!15433 (_1!15434 (h!31824 mapDefault!14762)))) e!1432703 tp_is_empty!10243 setRes!20587 tp!706275))))

(declare-fun condSetEmpty!20587 () Bool)

(assert (=> b!2240770 (= condSetEmpty!20587 (= (_2!15434 (h!31824 mapDefault!14762)) ((as const (Array Context!4118 Bool)) false)))))

(declare-fun setIsEmpty!20587 () Bool)

(assert (=> setIsEmpty!20587 setRes!20587))

(assert (= b!2240770 b!2240768))

(assert (= (and b!2240770 condSetEmpty!20587) setIsEmpty!20587))

(assert (= (and b!2240770 (not condSetEmpty!20587)) setNonEmpty!20587))

(assert (= setNonEmpty!20587 b!2240769))

(assert (= (and b!2240656 ((_ is Cons!26423) mapDefault!14762)) b!2240770))

(declare-fun m!2673147 () Bool)

(assert (=> setNonEmpty!20587 m!2673147))

(declare-fun m!2673149 () Bool)

(assert (=> b!2240770 m!2673149))

(declare-fun b!2240775 () Bool)

(declare-fun e!1432707 () Bool)

(declare-fun tp!706280 () Bool)

(declare-fun tp!706281 () Bool)

(assert (=> b!2240775 (= e!1432707 (and tp!706280 tp!706281))))

(assert (=> b!2240661 (= tp!706221 e!1432707)))

(assert (= (and b!2240661 ((_ is Cons!26422) (exprs!2559 ctx!40))) b!2240775))

(declare-fun b_lambda!71761 () Bool)

(assert (= b_lambda!71757 (or (and b!2240657 b_free!65059) b_lambda!71761)))

(declare-fun b_lambda!71763 () Bool)

(assert (= b_lambda!71759 (or (and b!2240657 b_free!65059) b_lambda!71763)))

(check-sat (not b!2240697) (not d!665771) (not b!2240768) (not tb!132863) (not d!665757) (not b!2240764) (not b!2240686) (not b!2240745) (not b!2240746) (not b!2240750) (not b!2240766) (not setNonEmpty!20581) (not b!2240677) (not b!2240763) (not b!2240775) (not bm!135221) (not setNonEmpty!20587) (not b_next!65761) (not b!2240729) (not b!2240724) (not bm!135222) (not b!2240726) (not b_lambda!71763) (not d!665765) (not b!2240749) tp_is_empty!10243 (not b!2240762) (not setNonEmpty!20580) (not b!2240678) (not b!2240761) (not b!2240693) (not b!2240688) (not b!2240767) (not b_lambda!71761) (not bm!135226) (not b!2240765) (not b!2240770) (not b!2240694) (not bm!135224) (not b!2240725) (not b_next!65763) (not d!665763) (not b!2240760) (not setNonEmpty!20586) (not b!2240759) (not setNonEmpty!20584) (not d!665755) (not b!2240728) (not b!2240747) (not b!2240769) (not mapNonEmpty!14765) b_and!175069 (not setNonEmpty!20585) (not d!665759) (not bm!135225) (not b!2240748) (not b!2240676) b_and!175075 (not bm!135223))
(check-sat b_and!175069 b_and!175075 (not b_next!65763) (not b_next!65761))
