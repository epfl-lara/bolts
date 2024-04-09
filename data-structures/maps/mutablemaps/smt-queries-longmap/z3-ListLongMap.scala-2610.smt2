; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39488 () Bool)

(assert start!39488)

(declare-fun b_free!9747 () Bool)

(declare-fun b_next!9747 () Bool)

(assert (=> start!39488 (= b_free!9747 (not b_next!9747))))

(declare-fun tp!34769 () Bool)

(declare-fun b_and!17387 () Bool)

(assert (=> start!39488 (= tp!34769 b_and!17387)))

(declare-fun b!421129 () Bool)

(declare-fun e!250729 () Bool)

(assert (=> b!421129 (= e!250729 true)))

(declare-datatypes ((V!15637 0))(
  ( (V!15638 (val!5494 Int)) )
))
(declare-fun lt!193365 () V!15637)

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((tuple2!7130 0))(
  ( (tuple2!7131 (_1!3575 (_ BitVec 64)) (_2!3575 V!15637)) )
))
(declare-fun lt!193368 () tuple2!7130)

(declare-datatypes ((List!7173 0))(
  ( (Nil!7170) (Cons!7169 (h!8025 tuple2!7130) (t!12593 List!7173)) )
))
(declare-datatypes ((ListLongMap!6057 0))(
  ( (ListLongMap!6058 (toList!3044 List!7173)) )
))
(declare-fun lt!193362 () ListLongMap!6057)

(declare-fun +!1247 (ListLongMap!6057 tuple2!7130) ListLongMap!6057)

(assert (=> b!421129 (= (+!1247 lt!193362 lt!193368) (+!1247 (+!1247 lt!193362 (tuple2!7131 k0!794 lt!193365)) lt!193368))))

(declare-fun lt!193369 () V!15637)

(assert (=> b!421129 (= lt!193368 (tuple2!7131 k0!794 lt!193369))))

(declare-datatypes ((Unit!12395 0))(
  ( (Unit!12396) )
))
(declare-fun lt!193367 () Unit!12395)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!63 (ListLongMap!6057 (_ BitVec 64) V!15637 V!15637) Unit!12395)

(assert (=> b!421129 (= lt!193367 (addSameAsAddTwiceSameKeyDiffValues!63 lt!193362 k0!794 lt!193365 lt!193369))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!193364 () V!15637)

(declare-datatypes ((ValueCell!5106 0))(
  ( (ValueCellFull!5106 (v!7737 V!15637)) (EmptyCell!5106) )
))
(declare-datatypes ((array!25625 0))(
  ( (array!25626 (arr!12259 (Array (_ BitVec 32) ValueCell!5106)) (size!12611 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25625)

(declare-fun get!6094 (ValueCell!5106 V!15637) V!15637)

(assert (=> b!421129 (= lt!193365 (get!6094 (select (arr!12259 _values!549) from!863) lt!193364))))

(declare-fun lt!193370 () ListLongMap!6057)

(declare-datatypes ((array!25627 0))(
  ( (array!25628 (arr!12260 (Array (_ BitVec 32) (_ BitVec 64))) (size!12612 (_ BitVec 32))) )
))
(declare-fun lt!193363 () array!25627)

(assert (=> b!421129 (= lt!193370 (+!1247 lt!193362 (tuple2!7131 (select (arr!12260 lt!193363) from!863) lt!193369)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!15637)

(assert (=> b!421129 (= lt!193369 (get!6094 (select (store (arr!12259 _values!549) i!563 (ValueCellFull!5106 v!412)) from!863) lt!193364))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!725 (Int (_ BitVec 64)) V!15637)

(assert (=> b!421129 (= lt!193364 (dynLambda!725 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun minValue!515 () V!15637)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!193371 () array!25625)

(declare-fun zeroValue!515 () V!15637)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1245 (array!25627 array!25625 (_ BitVec 32) (_ BitVec 32) V!15637 V!15637 (_ BitVec 32) Int) ListLongMap!6057)

(assert (=> b!421129 (= lt!193362 (getCurrentListMapNoExtraKeys!1245 lt!193363 lt!193371 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!245837 () Bool)

(declare-fun e!250733 () Bool)

(assert (=> start!39488 (=> (not res!245837) (not e!250733))))

(declare-fun _keys!709 () array!25627)

(assert (=> start!39488 (= res!245837 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12612 _keys!709))))))

(assert (=> start!39488 e!250733))

(declare-fun tp_is_empty!10899 () Bool)

(assert (=> start!39488 tp_is_empty!10899))

(assert (=> start!39488 tp!34769))

(assert (=> start!39488 true))

(declare-fun e!250727 () Bool)

(declare-fun array_inv!8932 (array!25625) Bool)

(assert (=> start!39488 (and (array_inv!8932 _values!549) e!250727)))

(declare-fun array_inv!8933 (array!25627) Bool)

(assert (=> start!39488 (array_inv!8933 _keys!709)))

(declare-fun b!421130 () Bool)

(declare-fun res!245825 () Bool)

(assert (=> b!421130 (=> (not res!245825) (not e!250733))))

(assert (=> b!421130 (= res!245825 (or (= (select (arr!12260 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12260 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!421131 () Bool)

(declare-fun e!250734 () Bool)

(assert (=> b!421131 (= e!250734 tp_is_empty!10899)))

(declare-fun b!421132 () Bool)

(declare-fun res!245833 () Bool)

(declare-fun e!250730 () Bool)

(assert (=> b!421132 (=> (not res!245833) (not e!250730))))

(declare-datatypes ((List!7174 0))(
  ( (Nil!7171) (Cons!7170 (h!8026 (_ BitVec 64)) (t!12594 List!7174)) )
))
(declare-fun arrayNoDuplicates!0 (array!25627 (_ BitVec 32) List!7174) Bool)

(assert (=> b!421132 (= res!245833 (arrayNoDuplicates!0 lt!193363 #b00000000000000000000000000000000 Nil!7171))))

(declare-fun c!55259 () Bool)

(declare-fun call!29416 () ListLongMap!6057)

(declare-fun bm!29413 () Bool)

(assert (=> bm!29413 (= call!29416 (getCurrentListMapNoExtraKeys!1245 (ite c!55259 _keys!709 lt!193363) (ite c!55259 _values!549 lt!193371) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!17970 () Bool)

(declare-fun mapRes!17970 () Bool)

(declare-fun tp!34770 () Bool)

(declare-fun e!250728 () Bool)

(assert (=> mapNonEmpty!17970 (= mapRes!17970 (and tp!34770 e!250728))))

(declare-fun mapValue!17970 () ValueCell!5106)

(declare-fun mapKey!17970 () (_ BitVec 32))

(declare-fun mapRest!17970 () (Array (_ BitVec 32) ValueCell!5106))

(assert (=> mapNonEmpty!17970 (= (arr!12259 _values!549) (store mapRest!17970 mapKey!17970 mapValue!17970))))

(declare-fun b!421133 () Bool)

(declare-fun res!245832 () Bool)

(assert (=> b!421133 (=> (not res!245832) (not e!250733))))

(assert (=> b!421133 (= res!245832 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7171))))

(declare-fun b!421134 () Bool)

(declare-fun res!245830 () Bool)

(assert (=> b!421134 (=> (not res!245830) (not e!250733))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!421134 (= res!245830 (validMask!0 mask!1025))))

(declare-fun b!421135 () Bool)

(declare-fun res!245829 () Bool)

(assert (=> b!421135 (=> (not res!245829) (not e!250733))))

(declare-fun arrayContainsKey!0 (array!25627 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!421135 (= res!245829 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun bm!29414 () Bool)

(declare-fun call!29417 () ListLongMap!6057)

(assert (=> bm!29414 (= call!29417 (getCurrentListMapNoExtraKeys!1245 (ite c!55259 lt!193363 _keys!709) (ite c!55259 lt!193371 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421136 () Bool)

(declare-fun res!245827 () Bool)

(assert (=> b!421136 (=> (not res!245827) (not e!250730))))

(assert (=> b!421136 (= res!245827 (bvsle from!863 i!563))))

(declare-fun b!421137 () Bool)

(declare-fun e!250731 () Bool)

(assert (=> b!421137 (= e!250731 (= call!29417 (+!1247 call!29416 (tuple2!7131 k0!794 v!412))))))

(declare-fun b!421138 () Bool)

(declare-fun res!245835 () Bool)

(assert (=> b!421138 (=> (not res!245835) (not e!250733))))

(assert (=> b!421138 (= res!245835 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12612 _keys!709))))))

(declare-fun b!421139 () Bool)

(assert (=> b!421139 (= e!250727 (and e!250734 mapRes!17970))))

(declare-fun condMapEmpty!17970 () Bool)

(declare-fun mapDefault!17970 () ValueCell!5106)

(assert (=> b!421139 (= condMapEmpty!17970 (= (arr!12259 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5106)) mapDefault!17970)))))

(declare-fun mapIsEmpty!17970 () Bool)

(assert (=> mapIsEmpty!17970 mapRes!17970))

(declare-fun b!421140 () Bool)

(declare-fun res!245834 () Bool)

(assert (=> b!421140 (=> (not res!245834) (not e!250733))))

(assert (=> b!421140 (= res!245834 (and (= (size!12611 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12612 _keys!709) (size!12611 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!421141 () Bool)

(assert (=> b!421141 (= e!250728 tp_is_empty!10899)))

(declare-fun b!421142 () Bool)

(assert (=> b!421142 (= e!250731 (= call!29416 call!29417))))

(declare-fun b!421143 () Bool)

(assert (=> b!421143 (= e!250733 e!250730)))

(declare-fun res!245836 () Bool)

(assert (=> b!421143 (=> (not res!245836) (not e!250730))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25627 (_ BitVec 32)) Bool)

(assert (=> b!421143 (= res!245836 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193363 mask!1025))))

(assert (=> b!421143 (= lt!193363 (array!25628 (store (arr!12260 _keys!709) i!563 k0!794) (size!12612 _keys!709)))))

(declare-fun b!421144 () Bool)

(declare-fun e!250732 () Bool)

(assert (=> b!421144 (= e!250732 (not e!250729))))

(declare-fun res!245828 () Bool)

(assert (=> b!421144 (=> res!245828 e!250729)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!421144 (= res!245828 (validKeyInArray!0 (select (arr!12260 _keys!709) from!863)))))

(assert (=> b!421144 e!250731))

(assert (=> b!421144 (= c!55259 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!193361 () Unit!12395)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!452 (array!25627 array!25625 (_ BitVec 32) (_ BitVec 32) V!15637 V!15637 (_ BitVec 32) (_ BitVec 64) V!15637 (_ BitVec 32) Int) Unit!12395)

(assert (=> b!421144 (= lt!193361 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!452 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421145 () Bool)

(assert (=> b!421145 (= e!250730 e!250732)))

(declare-fun res!245831 () Bool)

(assert (=> b!421145 (=> (not res!245831) (not e!250732))))

(assert (=> b!421145 (= res!245831 (= from!863 i!563))))

(assert (=> b!421145 (= lt!193370 (getCurrentListMapNoExtraKeys!1245 lt!193363 lt!193371 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!421145 (= lt!193371 (array!25626 (store (arr!12259 _values!549) i!563 (ValueCellFull!5106 v!412)) (size!12611 _values!549)))))

(declare-fun lt!193366 () ListLongMap!6057)

(assert (=> b!421145 (= lt!193366 (getCurrentListMapNoExtraKeys!1245 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!421146 () Bool)

(declare-fun res!245826 () Bool)

(assert (=> b!421146 (=> (not res!245826) (not e!250733))))

(assert (=> b!421146 (= res!245826 (validKeyInArray!0 k0!794))))

(declare-fun b!421147 () Bool)

(declare-fun res!245838 () Bool)

(assert (=> b!421147 (=> (not res!245838) (not e!250733))))

(assert (=> b!421147 (= res!245838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!39488 res!245837) b!421134))

(assert (= (and b!421134 res!245830) b!421140))

(assert (= (and b!421140 res!245834) b!421147))

(assert (= (and b!421147 res!245838) b!421133))

(assert (= (and b!421133 res!245832) b!421138))

(assert (= (and b!421138 res!245835) b!421146))

(assert (= (and b!421146 res!245826) b!421130))

(assert (= (and b!421130 res!245825) b!421135))

(assert (= (and b!421135 res!245829) b!421143))

(assert (= (and b!421143 res!245836) b!421132))

(assert (= (and b!421132 res!245833) b!421136))

(assert (= (and b!421136 res!245827) b!421145))

(assert (= (and b!421145 res!245831) b!421144))

(assert (= (and b!421144 c!55259) b!421137))

(assert (= (and b!421144 (not c!55259)) b!421142))

(assert (= (or b!421137 b!421142) bm!29414))

(assert (= (or b!421137 b!421142) bm!29413))

(assert (= (and b!421144 (not res!245828)) b!421129))

(assert (= (and b!421139 condMapEmpty!17970) mapIsEmpty!17970))

(assert (= (and b!421139 (not condMapEmpty!17970)) mapNonEmpty!17970))

(get-info :version)

(assert (= (and mapNonEmpty!17970 ((_ is ValueCellFull!5106) mapValue!17970)) b!421141))

(assert (= (and b!421139 ((_ is ValueCellFull!5106) mapDefault!17970)) b!421131))

(assert (= start!39488 b!421139))

(declare-fun b_lambda!9081 () Bool)

(assert (=> (not b_lambda!9081) (not b!421129)))

(declare-fun t!12592 () Bool)

(declare-fun tb!3377 () Bool)

(assert (=> (and start!39488 (= defaultEntry!557 defaultEntry!557) t!12592) tb!3377))

(declare-fun result!6273 () Bool)

(assert (=> tb!3377 (= result!6273 tp_is_empty!10899)))

(assert (=> b!421129 t!12592))

(declare-fun b_and!17389 () Bool)

(assert (= b_and!17387 (and (=> t!12592 result!6273) b_and!17389)))

(declare-fun m!410895 () Bool)

(assert (=> bm!29413 m!410895))

(declare-fun m!410897 () Bool)

(assert (=> b!421130 m!410897))

(declare-fun m!410899 () Bool)

(assert (=> start!39488 m!410899))

(declare-fun m!410901 () Bool)

(assert (=> start!39488 m!410901))

(declare-fun m!410903 () Bool)

(assert (=> b!421147 m!410903))

(declare-fun m!410905 () Bool)

(assert (=> bm!29414 m!410905))

(declare-fun m!410907 () Bool)

(assert (=> b!421135 m!410907))

(declare-fun m!410909 () Bool)

(assert (=> mapNonEmpty!17970 m!410909))

(declare-fun m!410911 () Bool)

(assert (=> b!421146 m!410911))

(declare-fun m!410913 () Bool)

(assert (=> b!421143 m!410913))

(declare-fun m!410915 () Bool)

(assert (=> b!421143 m!410915))

(declare-fun m!410917 () Bool)

(assert (=> b!421137 m!410917))

(declare-fun m!410919 () Bool)

(assert (=> b!421144 m!410919))

(assert (=> b!421144 m!410919))

(declare-fun m!410921 () Bool)

(assert (=> b!421144 m!410921))

(declare-fun m!410923 () Bool)

(assert (=> b!421144 m!410923))

(declare-fun m!410925 () Bool)

(assert (=> b!421133 m!410925))

(declare-fun m!410927 () Bool)

(assert (=> b!421132 m!410927))

(declare-fun m!410929 () Bool)

(assert (=> b!421145 m!410929))

(declare-fun m!410931 () Bool)

(assert (=> b!421145 m!410931))

(declare-fun m!410933 () Bool)

(assert (=> b!421145 m!410933))

(declare-fun m!410935 () Bool)

(assert (=> b!421134 m!410935))

(declare-fun m!410937 () Bool)

(assert (=> b!421129 m!410937))

(declare-fun m!410939 () Bool)

(assert (=> b!421129 m!410939))

(declare-fun m!410941 () Bool)

(assert (=> b!421129 m!410941))

(declare-fun m!410943 () Bool)

(assert (=> b!421129 m!410943))

(declare-fun m!410945 () Bool)

(assert (=> b!421129 m!410945))

(assert (=> b!421129 m!410941))

(declare-fun m!410947 () Bool)

(assert (=> b!421129 m!410947))

(declare-fun m!410949 () Bool)

(assert (=> b!421129 m!410949))

(declare-fun m!410951 () Bool)

(assert (=> b!421129 m!410951))

(declare-fun m!410953 () Bool)

(assert (=> b!421129 m!410953))

(assert (=> b!421129 m!410949))

(declare-fun m!410955 () Bool)

(assert (=> b!421129 m!410955))

(assert (=> b!421129 m!410931))

(declare-fun m!410957 () Bool)

(assert (=> b!421129 m!410957))

(declare-fun m!410959 () Bool)

(assert (=> b!421129 m!410959))

(assert (=> b!421129 m!410937))

(check-sat (not b!421144) (not bm!29414) (not b!421135) (not b!421137) (not b!421145) (not b!421129) (not b!421133) (not b!421146) (not start!39488) (not b_lambda!9081) (not b!421132) (not b!421134) (not b_next!9747) tp_is_empty!10899 (not b!421143) (not b!421147) (not mapNonEmpty!17970) b_and!17389 (not bm!29413))
(check-sat b_and!17389 (not b_next!9747))
