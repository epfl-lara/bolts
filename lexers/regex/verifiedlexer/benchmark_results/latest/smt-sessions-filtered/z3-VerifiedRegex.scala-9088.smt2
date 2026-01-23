; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486640 () Bool)

(assert start!486640)

(declare-fun b!4758659 () Bool)

(declare-fun b_free!129255 () Bool)

(declare-fun b_next!129959 () Bool)

(assert (=> b!4758659 (= b_free!129255 (not b_next!129959))))

(declare-fun tp!1352260 () Bool)

(declare-fun b_and!340863 () Bool)

(assert (=> b!4758659 (= tp!1352260 b_and!340863)))

(declare-fun b!4758657 () Bool)

(declare-fun b_free!129257 () Bool)

(declare-fun b_next!129961 () Bool)

(assert (=> b!4758657 (= b_free!129257 (not b_next!129961))))

(declare-fun tp!1352257 () Bool)

(declare-fun b_and!340865 () Bool)

(assert (=> b!4758657 (= tp!1352257 b_and!340865)))

(declare-fun b!4758651 () Bool)

(declare-fun e!2969145 () Bool)

(declare-fun e!2969140 () Bool)

(assert (=> b!4758651 (= e!2969145 (not e!2969140))))

(declare-fun res!2018632 () Bool)

(assert (=> b!4758651 (=> res!2018632 e!2969140)))

(declare-datatypes ((C!26264 0))(
  ( (C!26265 (val!20120 Int)) )
))
(declare-datatypes ((Regex!13033 0))(
  ( (ElementMatch!13033 (c!811939 C!26264)) (Concat!21352 (regOne!26578 Regex!13033) (regTwo!26578 Regex!13033)) (EmptyExpr!13033) (Star!13033 (reg!13362 Regex!13033)) (EmptyLang!13033) (Union!13033 (regOne!26579 Regex!13033) (regTwo!26579 Regex!13033)) )
))
(declare-datatypes ((List!53406 0))(
  ( (Nil!53282) (Cons!53282 (h!59693 Regex!13033) (t!360758 List!53406)) )
))
(declare-datatypes ((Context!5846 0))(
  ( (Context!5847 (exprs!3423 List!53406)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55190 0))(
  ( (tuple2!55191 (_1!30889 (InoxSet Context!5846)) (_2!30889 Int)) )
))
(declare-datatypes ((tuple2!55192 0))(
  ( (tuple2!55193 (_1!30890 tuple2!55190) (_2!30890 Int)) )
))
(declare-datatypes ((List!53407 0))(
  ( (Nil!53283) (Cons!53283 (h!59694 tuple2!55192) (t!360759 List!53407)) )
))
(declare-datatypes ((List!53408 0))(
  ( (Nil!53284) (Cons!53284 (h!59695 C!26264) (t!360760 List!53408)) )
))
(declare-datatypes ((IArray!29009 0))(
  ( (IArray!29010 (innerList!14562 List!53408)) )
))
(declare-datatypes ((Conc!14474 0))(
  ( (Node!14474 (left!39070 Conc!14474) (right!39400 Conc!14474) (csize!29178 Int) (cheight!14685 Int)) (Leaf!23563 (xs!17780 IArray!29009) (csize!29179 Int)) (Empty!14474) )
))
(declare-datatypes ((Hashable!6496 0))(
  ( (HashableExt!6495 (__x!32253 Int)) )
))
(declare-datatypes ((array!17606 0))(
  ( (array!17607 (arr!7855 (Array (_ BitVec 32) (_ BitVec 64))) (size!36066 (_ BitVec 32))) )
))
(declare-datatypes ((array!17608 0))(
  ( (array!17609 (arr!7856 (Array (_ BitVec 32) List!53407)) (size!36067 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9670 0))(
  ( (LongMapFixedSize!9671 (defaultEntry!5249 Int) (mask!14538 (_ BitVec 32)) (extraKeys!5105 (_ BitVec 32)) (zeroValue!5118 List!53407) (minValue!5118 List!53407) (_size!9695 (_ BitVec 32)) (_keys!5170 array!17606) (_values!5143 array!17608) (_vacant!4900 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19105 0))(
  ( (Cell!19106 (v!47344 LongMapFixedSize!9670)) )
))
(declare-datatypes ((MutLongMap!4835 0))(
  ( (LongMap!4835 (underlying!9877 Cell!19105)) (MutLongMapExt!4834 (__x!32254 Int)) )
))
(declare-datatypes ((Cell!19107 0))(
  ( (Cell!19108 (v!47345 MutLongMap!4835)) )
))
(declare-datatypes ((MutableMap!4719 0))(
  ( (MutableMapExt!4718 (__x!32255 Int)) (HashMap!4719 (underlying!9878 Cell!19107) (hashF!12306 Hashable!6496) (_size!9696 (_ BitVec 32)) (defaultValue!4890 Int)) )
))
(declare-datatypes ((BalanceConc!28438 0))(
  ( (BalanceConc!28439 (c!811940 Conc!14474)) )
))
(declare-datatypes ((CacheFindLongestMatch!636 0))(
  ( (CacheFindLongestMatch!637 (cache!4561 MutableMap!4719) (totalInput!4473 BalanceConc!28438)) )
))
(declare-fun thiss!28909 () CacheFindLongestMatch!636)

(get-info :version)

(assert (=> b!4758651 (= res!2018632 (not ((_ is HashMap!4719) (cache!4561 thiss!28909))))))

(declare-fun localTotalInput!8 () BalanceConc!28438)

(declare-fun validCacheMapFindLongestMatch!118 (MutableMap!4719 BalanceConc!28438) Bool)

(assert (=> b!4758651 (validCacheMapFindLongestMatch!118 (cache!4561 thiss!28909) localTotalInput!8)))

(declare-fun b!4758652 () Bool)

(declare-fun e!2969138 () Bool)

(declare-fun e!2969146 () Bool)

(declare-fun lt!1923938 () MutLongMap!4835)

(assert (=> b!4758652 (= e!2969138 (and e!2969146 ((_ is LongMap!4835) lt!1923938)))))

(assert (=> b!4758652 (= lt!1923938 (v!47345 (underlying!9878 (cache!4561 thiss!28909))))))

(declare-fun b!4758653 () Bool)

(declare-fun e!2969136 () Bool)

(declare-fun tp!1352259 () Bool)

(declare-fun inv!68752 (Conc!14474) Bool)

(assert (=> b!4758653 (= e!2969136 (and (inv!68752 (c!811940 (totalInput!4473 thiss!28909))) tp!1352259))))

(declare-fun res!2018631 () Bool)

(assert (=> start!486640 (=> (not res!2018631) (not e!2969145))))

(assert (=> start!486640 (= res!2018631 (= localTotalInput!8 (totalInput!4473 thiss!28909)))))

(assert (=> start!486640 e!2969145))

(declare-fun e!2969143 () Bool)

(declare-fun inv!68753 (BalanceConc!28438) Bool)

(assert (=> start!486640 (and (inv!68753 localTotalInput!8) e!2969143)))

(declare-fun e!2969139 () Bool)

(declare-fun inv!68754 (CacheFindLongestMatch!636) Bool)

(assert (=> start!486640 (and (inv!68754 thiss!28909) e!2969139)))

(declare-fun b!4758654 () Bool)

(declare-fun tp!1352263 () Bool)

(assert (=> b!4758654 (= e!2969143 (and (inv!68752 (c!811940 localTotalInput!8)) tp!1352263))))

(declare-fun b!4758655 () Bool)

(declare-fun e!2969135 () Bool)

(declare-fun tp!1352264 () Bool)

(declare-fun mapRes!21506 () Bool)

(assert (=> b!4758655 (= e!2969135 (and tp!1352264 mapRes!21506))))

(declare-fun condMapEmpty!21506 () Bool)

(declare-fun mapDefault!21506 () List!53407)

(assert (=> b!4758655 (= condMapEmpty!21506 (= (arr!7856 (_values!5143 (v!47344 (underlying!9877 (v!47345 (underlying!9878 (cache!4561 thiss!28909))))))) ((as const (Array (_ BitVec 32) List!53407)) mapDefault!21506)))))

(declare-fun b!4758656 () Bool)

(declare-fun res!2018633 () Bool)

(assert (=> b!4758656 (=> (not res!2018633) (not e!2969145))))

(assert (=> b!4758656 (= res!2018633 (validCacheMapFindLongestMatch!118 (cache!4561 thiss!28909) (totalInput!4473 thiss!28909)))))

(declare-fun e!2969142 () Bool)

(declare-fun tp!1352262 () Bool)

(declare-fun tp!1352261 () Bool)

(declare-fun array_inv!5653 (array!17606) Bool)

(declare-fun array_inv!5654 (array!17608) Bool)

(assert (=> b!4758657 (= e!2969142 (and tp!1352257 tp!1352262 tp!1352261 (array_inv!5653 (_keys!5170 (v!47344 (underlying!9877 (v!47345 (underlying!9878 (cache!4561 thiss!28909))))))) (array_inv!5654 (_values!5143 (v!47344 (underlying!9877 (v!47345 (underlying!9878 (cache!4561 thiss!28909))))))) e!2969135))))

(declare-fun mapIsEmpty!21506 () Bool)

(assert (=> mapIsEmpty!21506 mapRes!21506))

(declare-fun b!4758658 () Bool)

(declare-fun e!2969144 () Bool)

(assert (=> b!4758658 (= e!2969139 (and e!2969144 (inv!68753 (totalInput!4473 thiss!28909)) e!2969136))))

(assert (=> b!4758659 (= e!2969144 (and e!2969138 tp!1352260))))

(declare-fun b!4758660 () Bool)

(declare-fun valid!3839 (MutableMap!4719) Bool)

(assert (=> b!4758660 (= e!2969140 (valid!3839 (cache!4561 thiss!28909)))))

(declare-fun b!4758661 () Bool)

(declare-fun e!2969137 () Bool)

(assert (=> b!4758661 (= e!2969146 e!2969137)))

(declare-fun mapNonEmpty!21506 () Bool)

(declare-fun tp!1352256 () Bool)

(declare-fun tp!1352258 () Bool)

(assert (=> mapNonEmpty!21506 (= mapRes!21506 (and tp!1352256 tp!1352258))))

(declare-fun mapValue!21506 () List!53407)

(declare-fun mapRest!21506 () (Array (_ BitVec 32) List!53407))

(declare-fun mapKey!21506 () (_ BitVec 32))

(assert (=> mapNonEmpty!21506 (= (arr!7856 (_values!5143 (v!47344 (underlying!9877 (v!47345 (underlying!9878 (cache!4561 thiss!28909))))))) (store mapRest!21506 mapKey!21506 mapValue!21506))))

(declare-fun b!4758662 () Bool)

(assert (=> b!4758662 (= e!2969137 e!2969142)))

(assert (= (and start!486640 res!2018631) b!4758656))

(assert (= (and b!4758656 res!2018633) b!4758651))

(assert (= (and b!4758651 (not res!2018632)) b!4758660))

(assert (= start!486640 b!4758654))

(assert (= (and b!4758655 condMapEmpty!21506) mapIsEmpty!21506))

(assert (= (and b!4758655 (not condMapEmpty!21506)) mapNonEmpty!21506))

(assert (= b!4758657 b!4758655))

(assert (= b!4758662 b!4758657))

(assert (= b!4758661 b!4758662))

(assert (= (and b!4758652 ((_ is LongMap!4835) (v!47345 (underlying!9878 (cache!4561 thiss!28909))))) b!4758661))

(assert (= b!4758659 b!4758652))

(assert (= (and b!4758658 ((_ is HashMap!4719) (cache!4561 thiss!28909))) b!4758659))

(assert (= b!4758658 b!4758653))

(assert (= start!486640 b!4758658))

(declare-fun m!5728093 () Bool)

(assert (=> mapNonEmpty!21506 m!5728093))

(declare-fun m!5728095 () Bool)

(assert (=> b!4758654 m!5728095))

(declare-fun m!5728097 () Bool)

(assert (=> b!4758658 m!5728097))

(declare-fun m!5728099 () Bool)

(assert (=> b!4758657 m!5728099))

(declare-fun m!5728101 () Bool)

(assert (=> b!4758657 m!5728101))

(declare-fun m!5728103 () Bool)

(assert (=> b!4758653 m!5728103))

(declare-fun m!5728105 () Bool)

(assert (=> start!486640 m!5728105))

(declare-fun m!5728107 () Bool)

(assert (=> start!486640 m!5728107))

(declare-fun m!5728109 () Bool)

(assert (=> b!4758651 m!5728109))

(declare-fun m!5728111 () Bool)

(assert (=> b!4758660 m!5728111))

(declare-fun m!5728113 () Bool)

(assert (=> b!4758656 m!5728113))

(check-sat (not b_next!129959) b_and!340865 (not b!4758651) (not start!486640) (not b!4758655) b_and!340863 (not b!4758657) (not b!4758654) (not mapNonEmpty!21506) (not b!4758653) (not b!4758658) (not b!4758656) (not b_next!129961) (not b!4758660))
(check-sat b_and!340863 b_and!340865 (not b_next!129961) (not b_next!129959))
(get-model)

(declare-fun d!1521147 () Bool)

(declare-fun c!811943 () Bool)

(assert (=> d!1521147 (= c!811943 ((_ is Node!14474) (c!811940 (totalInput!4473 thiss!28909))))))

(declare-fun e!2969151 () Bool)

(assert (=> d!1521147 (= (inv!68752 (c!811940 (totalInput!4473 thiss!28909))) e!2969151)))

(declare-fun b!4758669 () Bool)

(declare-fun inv!68755 (Conc!14474) Bool)

(assert (=> b!4758669 (= e!2969151 (inv!68755 (c!811940 (totalInput!4473 thiss!28909))))))

(declare-fun b!4758670 () Bool)

(declare-fun e!2969152 () Bool)

(assert (=> b!4758670 (= e!2969151 e!2969152)))

(declare-fun res!2018636 () Bool)

(assert (=> b!4758670 (= res!2018636 (not ((_ is Leaf!23563) (c!811940 (totalInput!4473 thiss!28909)))))))

(assert (=> b!4758670 (=> res!2018636 e!2969152)))

(declare-fun b!4758671 () Bool)

(declare-fun inv!68756 (Conc!14474) Bool)

(assert (=> b!4758671 (= e!2969152 (inv!68756 (c!811940 (totalInput!4473 thiss!28909))))))

(assert (= (and d!1521147 c!811943) b!4758669))

(assert (= (and d!1521147 (not c!811943)) b!4758670))

(assert (= (and b!4758670 (not res!2018636)) b!4758671))

(declare-fun m!5728115 () Bool)

(assert (=> b!4758669 m!5728115))

(declare-fun m!5728117 () Bool)

(assert (=> b!4758671 m!5728117))

(assert (=> b!4758653 d!1521147))

(declare-fun d!1521149 () Bool)

(assert (=> d!1521149 (= (array_inv!5653 (_keys!5170 (v!47344 (underlying!9877 (v!47345 (underlying!9878 (cache!4561 thiss!28909))))))) (bvsge (size!36066 (_keys!5170 (v!47344 (underlying!9877 (v!47345 (underlying!9878 (cache!4561 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4758657 d!1521149))

(declare-fun d!1521151 () Bool)

(assert (=> d!1521151 (= (array_inv!5654 (_values!5143 (v!47344 (underlying!9877 (v!47345 (underlying!9878 (cache!4561 thiss!28909))))))) (bvsge (size!36067 (_values!5143 (v!47344 (underlying!9877 (v!47345 (underlying!9878 (cache!4561 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4758657 d!1521151))

(declare-fun d!1521153 () Bool)

(declare-fun isBalanced!3903 (Conc!14474) Bool)

(assert (=> d!1521153 (= (inv!68753 localTotalInput!8) (isBalanced!3903 (c!811940 localTotalInput!8)))))

(declare-fun bs!1147004 () Bool)

(assert (= bs!1147004 d!1521153))

(declare-fun m!5728119 () Bool)

(assert (=> bs!1147004 m!5728119))

(assert (=> start!486640 d!1521153))

(declare-fun d!1521155 () Bool)

(declare-fun res!2018639 () Bool)

(declare-fun e!2969155 () Bool)

(assert (=> d!1521155 (=> (not res!2018639) (not e!2969155))))

(assert (=> d!1521155 (= res!2018639 ((_ is HashMap!4719) (cache!4561 thiss!28909)))))

(assert (=> d!1521155 (= (inv!68754 thiss!28909) e!2969155)))

(declare-fun b!4758674 () Bool)

(assert (=> b!4758674 (= e!2969155 (validCacheMapFindLongestMatch!118 (cache!4561 thiss!28909) (totalInput!4473 thiss!28909)))))

(assert (= (and d!1521155 res!2018639) b!4758674))

(assert (=> b!4758674 m!5728113))

(assert (=> start!486640 d!1521155))

(declare-fun b!4758680 () Bool)

(assert (=> b!4758680 true))

(declare-fun d!1521157 () Bool)

(declare-fun res!2018644 () Bool)

(declare-fun e!2969158 () Bool)

(assert (=> d!1521157 (=> (not res!2018644) (not e!2969158))))

(assert (=> d!1521157 (= res!2018644 (valid!3839 (cache!4561 thiss!28909)))))

(assert (=> d!1521157 (= (validCacheMapFindLongestMatch!118 (cache!4561 thiss!28909) (totalInput!4473 thiss!28909)) e!2969158)))

(declare-fun b!4758679 () Bool)

(declare-fun res!2018645 () Bool)

(assert (=> b!4758679 (=> (not res!2018645) (not e!2969158))))

(declare-fun invariantList!1640 (List!53407) Bool)

(declare-datatypes ((ListMap!5699 0))(
  ( (ListMap!5700 (toList!6199 List!53407)) )
))
(declare-fun map!11846 (MutableMap!4719) ListMap!5699)

(assert (=> b!4758679 (= res!2018645 (invariantList!1640 (toList!6199 (map!11846 (cache!4561 thiss!28909)))))))

(declare-fun lambda!223614 () Int)

(declare-fun forall!11816 (List!53407 Int) Bool)

(assert (=> b!4758680 (= e!2969158 (forall!11816 (toList!6199 (map!11846 (cache!4561 thiss!28909))) lambda!223614))))

(assert (= (and d!1521157 res!2018644) b!4758679))

(assert (= (and b!4758679 res!2018645) b!4758680))

(assert (=> d!1521157 m!5728111))

(declare-fun m!5728122 () Bool)

(assert (=> b!4758679 m!5728122))

(declare-fun m!5728124 () Bool)

(assert (=> b!4758679 m!5728124))

(assert (=> b!4758680 m!5728122))

(declare-fun m!5728126 () Bool)

(assert (=> b!4758680 m!5728126))

(assert (=> b!4758656 d!1521157))

(declare-fun bs!1147005 () Bool)

(declare-fun b!4758684 () Bool)

(assert (= bs!1147005 (and b!4758684 b!4758680)))

(declare-fun lambda!223615 () Int)

(assert (=> bs!1147005 (= (= localTotalInput!8 (totalInput!4473 thiss!28909)) (= lambda!223615 lambda!223614))))

(assert (=> b!4758684 true))

(declare-fun d!1521159 () Bool)

(declare-fun res!2018646 () Bool)

(declare-fun e!2969159 () Bool)

(assert (=> d!1521159 (=> (not res!2018646) (not e!2969159))))

(assert (=> d!1521159 (= res!2018646 (valid!3839 (cache!4561 thiss!28909)))))

(assert (=> d!1521159 (= (validCacheMapFindLongestMatch!118 (cache!4561 thiss!28909) localTotalInput!8) e!2969159)))

(declare-fun b!4758683 () Bool)

(declare-fun res!2018647 () Bool)

(assert (=> b!4758683 (=> (not res!2018647) (not e!2969159))))

(assert (=> b!4758683 (= res!2018647 (invariantList!1640 (toList!6199 (map!11846 (cache!4561 thiss!28909)))))))

(assert (=> b!4758684 (= e!2969159 (forall!11816 (toList!6199 (map!11846 (cache!4561 thiss!28909))) lambda!223615))))

(assert (= (and d!1521159 res!2018646) b!4758683))

(assert (= (and b!4758683 res!2018647) b!4758684))

(assert (=> d!1521159 m!5728111))

(assert (=> b!4758683 m!5728122))

(assert (=> b!4758683 m!5728124))

(assert (=> b!4758684 m!5728122))

(declare-fun m!5728128 () Bool)

(assert (=> b!4758684 m!5728128))

(assert (=> b!4758651 d!1521159))

(declare-fun d!1521161 () Bool)

(declare-fun res!2018652 () Bool)

(declare-fun e!2969162 () Bool)

(assert (=> d!1521161 (=> (not res!2018652) (not e!2969162))))

(declare-fun valid!3840 (MutLongMap!4835) Bool)

(assert (=> d!1521161 (= res!2018652 (valid!3840 (v!47345 (underlying!9878 (cache!4561 thiss!28909)))))))

(assert (=> d!1521161 (= (valid!3839 (cache!4561 thiss!28909)) e!2969162)))

(declare-fun b!4758689 () Bool)

(declare-fun res!2018653 () Bool)

(assert (=> b!4758689 (=> (not res!2018653) (not e!2969162))))

(declare-fun lambda!223618 () Int)

(declare-datatypes ((tuple2!55194 0))(
  ( (tuple2!55195 (_1!30891 (_ BitVec 64)) (_2!30891 List!53407)) )
))
(declare-datatypes ((List!53409 0))(
  ( (Nil!53285) (Cons!53285 (h!59696 tuple2!55194) (t!360761 List!53409)) )
))
(declare-fun forall!11817 (List!53409 Int) Bool)

(declare-datatypes ((ListLongMap!4593 0))(
  ( (ListLongMap!4594 (toList!6200 List!53409)) )
))
(declare-fun map!11847 (MutLongMap!4835) ListLongMap!4593)

(assert (=> b!4758689 (= res!2018653 (forall!11817 (toList!6200 (map!11847 (v!47345 (underlying!9878 (cache!4561 thiss!28909))))) lambda!223618))))

(declare-fun b!4758690 () Bool)

(declare-fun allKeysSameHashInMap!1998 (ListLongMap!4593 Hashable!6496) Bool)

(assert (=> b!4758690 (= e!2969162 (allKeysSameHashInMap!1998 (map!11847 (v!47345 (underlying!9878 (cache!4561 thiss!28909)))) (hashF!12306 (cache!4561 thiss!28909))))))

(assert (= (and d!1521161 res!2018652) b!4758689))

(assert (= (and b!4758689 res!2018653) b!4758690))

(declare-fun m!5728130 () Bool)

(assert (=> d!1521161 m!5728130))

(declare-fun m!5728132 () Bool)

(assert (=> b!4758689 m!5728132))

(declare-fun m!5728134 () Bool)

(assert (=> b!4758689 m!5728134))

(assert (=> b!4758690 m!5728132))

(assert (=> b!4758690 m!5728132))

(declare-fun m!5728136 () Bool)

(assert (=> b!4758690 m!5728136))

(assert (=> b!4758660 d!1521161))

(declare-fun d!1521163 () Bool)

(declare-fun c!811944 () Bool)

(assert (=> d!1521163 (= c!811944 ((_ is Node!14474) (c!811940 localTotalInput!8)))))

(declare-fun e!2969163 () Bool)

(assert (=> d!1521163 (= (inv!68752 (c!811940 localTotalInput!8)) e!2969163)))

(declare-fun b!4758691 () Bool)

(assert (=> b!4758691 (= e!2969163 (inv!68755 (c!811940 localTotalInput!8)))))

(declare-fun b!4758692 () Bool)

(declare-fun e!2969164 () Bool)

(assert (=> b!4758692 (= e!2969163 e!2969164)))

(declare-fun res!2018654 () Bool)

(assert (=> b!4758692 (= res!2018654 (not ((_ is Leaf!23563) (c!811940 localTotalInput!8))))))

(assert (=> b!4758692 (=> res!2018654 e!2969164)))

(declare-fun b!4758693 () Bool)

(assert (=> b!4758693 (= e!2969164 (inv!68756 (c!811940 localTotalInput!8)))))

(assert (= (and d!1521163 c!811944) b!4758691))

(assert (= (and d!1521163 (not c!811944)) b!4758692))

(assert (= (and b!4758692 (not res!2018654)) b!4758693))

(declare-fun m!5728138 () Bool)

(assert (=> b!4758691 m!5728138))

(declare-fun m!5728140 () Bool)

(assert (=> b!4758693 m!5728140))

(assert (=> b!4758654 d!1521163))

(declare-fun d!1521165 () Bool)

(assert (=> d!1521165 (= (inv!68753 (totalInput!4473 thiss!28909)) (isBalanced!3903 (c!811940 (totalInput!4473 thiss!28909))))))

(declare-fun bs!1147006 () Bool)

(assert (= bs!1147006 d!1521165))

(declare-fun m!5728142 () Bool)

(assert (=> bs!1147006 m!5728142))

(assert (=> b!4758658 d!1521165))

(declare-fun tp!1352271 () Bool)

(declare-fun tp!1352272 () Bool)

(declare-fun b!4758702 () Bool)

(declare-fun e!2969170 () Bool)

(assert (=> b!4758702 (= e!2969170 (and (inv!68752 (left!39070 (c!811940 (totalInput!4473 thiss!28909)))) tp!1352272 (inv!68752 (right!39400 (c!811940 (totalInput!4473 thiss!28909)))) tp!1352271))))

(declare-fun b!4758704 () Bool)

(declare-fun e!2969169 () Bool)

(declare-fun tp!1352273 () Bool)

(assert (=> b!4758704 (= e!2969169 tp!1352273)))

(declare-fun b!4758703 () Bool)

(declare-fun inv!68757 (IArray!29009) Bool)

(assert (=> b!4758703 (= e!2969170 (and (inv!68757 (xs!17780 (c!811940 (totalInput!4473 thiss!28909)))) e!2969169))))

(assert (=> b!4758653 (= tp!1352259 (and (inv!68752 (c!811940 (totalInput!4473 thiss!28909))) e!2969170))))

(assert (= (and b!4758653 ((_ is Node!14474) (c!811940 (totalInput!4473 thiss!28909)))) b!4758702))

(assert (= b!4758703 b!4758704))

(assert (= (and b!4758653 ((_ is Leaf!23563) (c!811940 (totalInput!4473 thiss!28909)))) b!4758703))

(declare-fun m!5728144 () Bool)

(assert (=> b!4758702 m!5728144))

(declare-fun m!5728146 () Bool)

(assert (=> b!4758702 m!5728146))

(declare-fun m!5728148 () Bool)

(assert (=> b!4758703 m!5728148))

(assert (=> b!4758653 m!5728103))

(declare-fun tp!1352290 () Bool)

(declare-fun setNonEmpty!27030 () Bool)

(declare-fun setRes!27031 () Bool)

(declare-fun e!2969179 () Bool)

(declare-fun setElem!27031 () Context!5846)

(declare-fun inv!68758 (Context!5846) Bool)

(assert (=> setNonEmpty!27030 (= setRes!27031 (and tp!1352290 (inv!68758 setElem!27031) e!2969179))))

(declare-fun mapDefault!21509 () List!53407)

(declare-fun setRest!27030 () (InoxSet Context!5846))

(assert (=> setNonEmpty!27030 (= (_1!30889 (_1!30890 (h!59694 mapDefault!21509))) ((_ map or) (store ((as const (Array Context!5846 Bool)) false) setElem!27031 true) setRest!27030))))

(declare-fun setNonEmpty!27031 () Bool)

(declare-fun setElem!27030 () Context!5846)

(declare-fun tp!1352294 () Bool)

(declare-fun setRes!27030 () Bool)

(declare-fun e!2969181 () Bool)

(assert (=> setNonEmpty!27031 (= setRes!27030 (and tp!1352294 (inv!68758 setElem!27030) e!2969181))))

(declare-fun mapValue!21509 () List!53407)

(declare-fun setRest!27031 () (InoxSet Context!5846))

(assert (=> setNonEmpty!27031 (= (_1!30889 (_1!30890 (h!59694 mapValue!21509))) ((_ map or) (store ((as const (Array Context!5846 Bool)) false) setElem!27030 true) setRest!27031))))

(declare-fun b!4758715 () Bool)

(declare-fun tp!1352293 () Bool)

(assert (=> b!4758715 (= e!2969181 tp!1352293)))

(declare-fun mapNonEmpty!21509 () Bool)

(declare-fun mapRes!21509 () Bool)

(declare-fun tp!1352292 () Bool)

(declare-fun e!2969182 () Bool)

(assert (=> mapNonEmpty!21509 (= mapRes!21509 (and tp!1352292 e!2969182))))

(declare-fun mapKey!21509 () (_ BitVec 32))

(declare-fun mapRest!21509 () (Array (_ BitVec 32) List!53407))

(assert (=> mapNonEmpty!21509 (= mapRest!21506 (store mapRest!21509 mapKey!21509 mapValue!21509))))

(declare-fun setIsEmpty!27030 () Bool)

(assert (=> setIsEmpty!27030 setRes!27030))

(declare-fun condMapEmpty!21509 () Bool)

(assert (=> mapNonEmpty!21506 (= condMapEmpty!21509 (= mapRest!21506 ((as const (Array (_ BitVec 32) List!53407)) mapDefault!21509)))))

(declare-fun e!2969180 () Bool)

(assert (=> mapNonEmpty!21506 (= tp!1352256 (and e!2969180 mapRes!21509))))

(declare-fun mapIsEmpty!21509 () Bool)

(assert (=> mapIsEmpty!21509 mapRes!21509))

(declare-fun b!4758716 () Bool)

(declare-fun tp!1352291 () Bool)

(assert (=> b!4758716 (= e!2969179 tp!1352291)))

(declare-fun b!4758717 () Bool)

(declare-fun tp!1352288 () Bool)

(assert (=> b!4758717 (= e!2969182 (and setRes!27030 tp!1352288))))

(declare-fun condSetEmpty!27031 () Bool)

(assert (=> b!4758717 (= condSetEmpty!27031 (= (_1!30889 (_1!30890 (h!59694 mapValue!21509))) ((as const (Array Context!5846 Bool)) false)))))

(declare-fun b!4758718 () Bool)

(declare-fun tp!1352289 () Bool)

(assert (=> b!4758718 (= e!2969180 (and setRes!27031 tp!1352289))))

(declare-fun condSetEmpty!27030 () Bool)

(assert (=> b!4758718 (= condSetEmpty!27030 (= (_1!30889 (_1!30890 (h!59694 mapDefault!21509))) ((as const (Array Context!5846 Bool)) false)))))

(declare-fun setIsEmpty!27031 () Bool)

(assert (=> setIsEmpty!27031 setRes!27031))

(assert (= (and mapNonEmpty!21506 condMapEmpty!21509) mapIsEmpty!21509))

(assert (= (and mapNonEmpty!21506 (not condMapEmpty!21509)) mapNonEmpty!21509))

(assert (= (and b!4758717 condSetEmpty!27031) setIsEmpty!27030))

(assert (= (and b!4758717 (not condSetEmpty!27031)) setNonEmpty!27031))

(assert (= setNonEmpty!27031 b!4758715))

(assert (= (and mapNonEmpty!21509 ((_ is Cons!53283) mapValue!21509)) b!4758717))

(assert (= (and b!4758718 condSetEmpty!27030) setIsEmpty!27031))

(assert (= (and b!4758718 (not condSetEmpty!27030)) setNonEmpty!27030))

(assert (= setNonEmpty!27030 b!4758716))

(assert (= (and mapNonEmpty!21506 ((_ is Cons!53283) mapDefault!21509)) b!4758718))

(declare-fun m!5728150 () Bool)

(assert (=> setNonEmpty!27030 m!5728150))

(declare-fun m!5728152 () Bool)

(assert (=> setNonEmpty!27031 m!5728152))

(declare-fun m!5728154 () Bool)

(assert (=> mapNonEmpty!21509 m!5728154))

(declare-fun setNonEmpty!27034 () Bool)

(declare-fun setElem!27034 () Context!5846)

(declare-fun tp!1352302 () Bool)

(declare-fun e!2969187 () Bool)

(declare-fun setRes!27034 () Bool)

(assert (=> setNonEmpty!27034 (= setRes!27034 (and tp!1352302 (inv!68758 setElem!27034) e!2969187))))

(declare-fun setRest!27034 () (InoxSet Context!5846))

(assert (=> setNonEmpty!27034 (= (_1!30889 (_1!30890 (h!59694 mapValue!21506))) ((_ map or) (store ((as const (Array Context!5846 Bool)) false) setElem!27034 true) setRest!27034))))

(declare-fun e!2969188 () Bool)

(assert (=> mapNonEmpty!21506 (= tp!1352258 e!2969188)))

(declare-fun setIsEmpty!27034 () Bool)

(assert (=> setIsEmpty!27034 setRes!27034))

(declare-fun b!4758726 () Bool)

(declare-fun tp!1352303 () Bool)

(assert (=> b!4758726 (= e!2969187 tp!1352303)))

(declare-fun b!4758725 () Bool)

(declare-fun tp!1352301 () Bool)

(assert (=> b!4758725 (= e!2969188 (and setRes!27034 tp!1352301))))

(declare-fun condSetEmpty!27034 () Bool)

(assert (=> b!4758725 (= condSetEmpty!27034 (= (_1!30889 (_1!30890 (h!59694 mapValue!21506))) ((as const (Array Context!5846 Bool)) false)))))

(assert (= (and b!4758725 condSetEmpty!27034) setIsEmpty!27034))

(assert (= (and b!4758725 (not condSetEmpty!27034)) setNonEmpty!27034))

(assert (= setNonEmpty!27034 b!4758726))

(assert (= (and mapNonEmpty!21506 ((_ is Cons!53283) mapValue!21506)) b!4758725))

(declare-fun m!5728156 () Bool)

(assert (=> setNonEmpty!27034 m!5728156))

(declare-fun e!2969189 () Bool)

(declare-fun setRes!27035 () Bool)

(declare-fun setNonEmpty!27035 () Bool)

(declare-fun tp!1352305 () Bool)

(declare-fun setElem!27035 () Context!5846)

(assert (=> setNonEmpty!27035 (= setRes!27035 (and tp!1352305 (inv!68758 setElem!27035) e!2969189))))

(declare-fun setRest!27035 () (InoxSet Context!5846))

(assert (=> setNonEmpty!27035 (= (_1!30889 (_1!30890 (h!59694 (zeroValue!5118 (v!47344 (underlying!9877 (v!47345 (underlying!9878 (cache!4561 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5846 Bool)) false) setElem!27035 true) setRest!27035))))

(declare-fun e!2969190 () Bool)

(assert (=> b!4758657 (= tp!1352262 e!2969190)))

(declare-fun setIsEmpty!27035 () Bool)

(assert (=> setIsEmpty!27035 setRes!27035))

(declare-fun b!4758728 () Bool)

(declare-fun tp!1352306 () Bool)

(assert (=> b!4758728 (= e!2969189 tp!1352306)))

(declare-fun b!4758727 () Bool)

(declare-fun tp!1352304 () Bool)

(assert (=> b!4758727 (= e!2969190 (and setRes!27035 tp!1352304))))

(declare-fun condSetEmpty!27035 () Bool)

(assert (=> b!4758727 (= condSetEmpty!27035 (= (_1!30889 (_1!30890 (h!59694 (zeroValue!5118 (v!47344 (underlying!9877 (v!47345 (underlying!9878 (cache!4561 thiss!28909))))))))) ((as const (Array Context!5846 Bool)) false)))))

(assert (= (and b!4758727 condSetEmpty!27035) setIsEmpty!27035))

(assert (= (and b!4758727 (not condSetEmpty!27035)) setNonEmpty!27035))

(assert (= setNonEmpty!27035 b!4758728))

(assert (= (and b!4758657 ((_ is Cons!53283) (zeroValue!5118 (v!47344 (underlying!9877 (v!47345 (underlying!9878 (cache!4561 thiss!28909)))))))) b!4758727))

(declare-fun m!5728158 () Bool)

(assert (=> setNonEmpty!27035 m!5728158))

(declare-fun setRes!27036 () Bool)

(declare-fun tp!1352308 () Bool)

(declare-fun e!2969191 () Bool)

(declare-fun setElem!27036 () Context!5846)

(declare-fun setNonEmpty!27036 () Bool)

(assert (=> setNonEmpty!27036 (= setRes!27036 (and tp!1352308 (inv!68758 setElem!27036) e!2969191))))

(declare-fun setRest!27036 () (InoxSet Context!5846))

(assert (=> setNonEmpty!27036 (= (_1!30889 (_1!30890 (h!59694 (minValue!5118 (v!47344 (underlying!9877 (v!47345 (underlying!9878 (cache!4561 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5846 Bool)) false) setElem!27036 true) setRest!27036))))

(declare-fun e!2969192 () Bool)

(assert (=> b!4758657 (= tp!1352261 e!2969192)))

(declare-fun setIsEmpty!27036 () Bool)

(assert (=> setIsEmpty!27036 setRes!27036))

(declare-fun b!4758730 () Bool)

(declare-fun tp!1352309 () Bool)

(assert (=> b!4758730 (= e!2969191 tp!1352309)))

(declare-fun b!4758729 () Bool)

(declare-fun tp!1352307 () Bool)

(assert (=> b!4758729 (= e!2969192 (and setRes!27036 tp!1352307))))

(declare-fun condSetEmpty!27036 () Bool)

(assert (=> b!4758729 (= condSetEmpty!27036 (= (_1!30889 (_1!30890 (h!59694 (minValue!5118 (v!47344 (underlying!9877 (v!47345 (underlying!9878 (cache!4561 thiss!28909))))))))) ((as const (Array Context!5846 Bool)) false)))))

(assert (= (and b!4758729 condSetEmpty!27036) setIsEmpty!27036))

(assert (= (and b!4758729 (not condSetEmpty!27036)) setNonEmpty!27036))

(assert (= setNonEmpty!27036 b!4758730))

(assert (= (and b!4758657 ((_ is Cons!53283) (minValue!5118 (v!47344 (underlying!9877 (v!47345 (underlying!9878 (cache!4561 thiss!28909)))))))) b!4758729))

(declare-fun m!5728160 () Bool)

(assert (=> setNonEmpty!27036 m!5728160))

(declare-fun tp!1352311 () Bool)

(declare-fun setNonEmpty!27037 () Bool)

(declare-fun setRes!27037 () Bool)

(declare-fun setElem!27037 () Context!5846)

(declare-fun e!2969193 () Bool)

(assert (=> setNonEmpty!27037 (= setRes!27037 (and tp!1352311 (inv!68758 setElem!27037) e!2969193))))

(declare-fun setRest!27037 () (InoxSet Context!5846))

(assert (=> setNonEmpty!27037 (= (_1!30889 (_1!30890 (h!59694 mapDefault!21506))) ((_ map or) (store ((as const (Array Context!5846 Bool)) false) setElem!27037 true) setRest!27037))))

(declare-fun e!2969194 () Bool)

(assert (=> b!4758655 (= tp!1352264 e!2969194)))

(declare-fun setIsEmpty!27037 () Bool)

(assert (=> setIsEmpty!27037 setRes!27037))

(declare-fun b!4758732 () Bool)

(declare-fun tp!1352312 () Bool)

(assert (=> b!4758732 (= e!2969193 tp!1352312)))

(declare-fun b!4758731 () Bool)

(declare-fun tp!1352310 () Bool)

(assert (=> b!4758731 (= e!2969194 (and setRes!27037 tp!1352310))))

(declare-fun condSetEmpty!27037 () Bool)

(assert (=> b!4758731 (= condSetEmpty!27037 (= (_1!30889 (_1!30890 (h!59694 mapDefault!21506))) ((as const (Array Context!5846 Bool)) false)))))

(assert (= (and b!4758731 condSetEmpty!27037) setIsEmpty!27037))

(assert (= (and b!4758731 (not condSetEmpty!27037)) setNonEmpty!27037))

(assert (= setNonEmpty!27037 b!4758732))

(assert (= (and b!4758655 ((_ is Cons!53283) mapDefault!21506)) b!4758731))

(declare-fun m!5728162 () Bool)

(assert (=> setNonEmpty!27037 m!5728162))

(declare-fun tp!1352314 () Bool)

(declare-fun tp!1352313 () Bool)

(declare-fun e!2969196 () Bool)

(declare-fun b!4758733 () Bool)

(assert (=> b!4758733 (= e!2969196 (and (inv!68752 (left!39070 (c!811940 localTotalInput!8))) tp!1352314 (inv!68752 (right!39400 (c!811940 localTotalInput!8))) tp!1352313))))

(declare-fun b!4758735 () Bool)

(declare-fun e!2969195 () Bool)

(declare-fun tp!1352315 () Bool)

(assert (=> b!4758735 (= e!2969195 tp!1352315)))

(declare-fun b!4758734 () Bool)

(assert (=> b!4758734 (= e!2969196 (and (inv!68757 (xs!17780 (c!811940 localTotalInput!8))) e!2969195))))

(assert (=> b!4758654 (= tp!1352263 (and (inv!68752 (c!811940 localTotalInput!8)) e!2969196))))

(assert (= (and b!4758654 ((_ is Node!14474) (c!811940 localTotalInput!8))) b!4758733))

(assert (= b!4758734 b!4758735))

(assert (= (and b!4758654 ((_ is Leaf!23563) (c!811940 localTotalInput!8))) b!4758734))

(declare-fun m!5728164 () Bool)

(assert (=> b!4758733 m!5728164))

(declare-fun m!5728166 () Bool)

(assert (=> b!4758733 m!5728166))

(declare-fun m!5728168 () Bool)

(assert (=> b!4758734 m!5728168))

(assert (=> b!4758654 m!5728095))

(check-sat (not b_next!129959) (not d!1521157) (not setNonEmpty!27036) (not d!1521165) (not b!4758689) (not d!1521161) (not b!4758671) (not b!4758690) (not b!4758718) (not b!4758693) (not b!4758704) (not b!4758654) (not b!4758674) (not b!4758653) (not setNonEmpty!27035) (not b!4758731) (not b!4758684) (not b!4758725) (not d!1521159) b_and!340865 (not b!4758716) (not setNonEmpty!27037) (not b!4758669) (not b_next!129961) (not b!4758691) (not b!4758703) (not b!4758727) (not b!4758726) (not d!1521153) (not mapNonEmpty!21509) (not b!4758728) (not b!4758733) (not b!4758683) (not b!4758729) (not b!4758679) (not b!4758734) (not setNonEmpty!27030) (not b!4758735) (not b!4758715) (not b!4758732) (not b!4758717) (not setNonEmpty!27031) (not b!4758730) (not setNonEmpty!27034) (not b!4758680) (not b!4758702) b_and!340863)
(check-sat b_and!340863 b_and!340865 (not b_next!129961) (not b_next!129959))
