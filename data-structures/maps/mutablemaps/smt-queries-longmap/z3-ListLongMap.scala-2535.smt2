; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39038 () Bool)

(assert start!39038)

(declare-fun b_free!9297 () Bool)

(declare-fun b_next!9297 () Bool)

(assert (=> start!39038 (= b_free!9297 (not b_next!9297))))

(declare-fun tp!33419 () Bool)

(declare-fun b_and!16701 () Bool)

(assert (=> start!39038 (= tp!33419 b_and!16701)))

(declare-fun b!409092 () Bool)

(declare-fun e!245439 () Bool)

(assert (=> b!409092 (= e!245439 false)))

(declare-datatypes ((V!15037 0))(
  ( (V!15038 (val!5269 Int)) )
))
(declare-fun minValue!515 () V!15037)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4881 0))(
  ( (ValueCellFull!4881 (v!7512 V!15037)) (EmptyCell!4881) )
))
(declare-datatypes ((array!24751 0))(
  ( (array!24752 (arr!11822 (Array (_ BitVec 32) ValueCell!4881)) (size!12174 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24751)

(declare-fun zeroValue!515 () V!15037)

(declare-datatypes ((tuple2!6776 0))(
  ( (tuple2!6777 (_1!3398 (_ BitVec 64)) (_2!3398 V!15037)) )
))
(declare-datatypes ((List!6824 0))(
  ( (Nil!6821) (Cons!6820 (h!7676 tuple2!6776) (t!12006 List!6824)) )
))
(declare-datatypes ((ListLongMap!5703 0))(
  ( (ListLongMap!5704 (toList!2867 List!6824)) )
))
(declare-fun lt!188888 () ListLongMap!5703)

(declare-datatypes ((array!24753 0))(
  ( (array!24754 (arr!11823 (Array (_ BitVec 32) (_ BitVec 64))) (size!12175 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24753)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1077 (array!24753 array!24751 (_ BitVec 32) (_ BitVec 32) V!15037 V!15037 (_ BitVec 32) Int) ListLongMap!5703)

(assert (=> b!409092 (= lt!188888 (getCurrentListMapNoExtraKeys!1077 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!409093 () Bool)

(declare-fun res!236926 () Bool)

(declare-fun e!245441 () Bool)

(assert (=> b!409093 (=> (not res!236926) (not e!245441))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24753 (_ BitVec 32)) Bool)

(assert (=> b!409093 (= res!236926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!17295 () Bool)

(declare-fun mapRes!17295 () Bool)

(declare-fun tp!33420 () Bool)

(declare-fun e!245442 () Bool)

(assert (=> mapNonEmpty!17295 (= mapRes!17295 (and tp!33420 e!245442))))

(declare-fun mapKey!17295 () (_ BitVec 32))

(declare-fun mapRest!17295 () (Array (_ BitVec 32) ValueCell!4881))

(declare-fun mapValue!17295 () ValueCell!4881)

(assert (=> mapNonEmpty!17295 (= (arr!11822 _values!549) (store mapRest!17295 mapKey!17295 mapValue!17295))))

(declare-fun b!409094 () Bool)

(declare-fun res!236932 () Bool)

(assert (=> b!409094 (=> (not res!236932) (not e!245441))))

(declare-datatypes ((List!6825 0))(
  ( (Nil!6822) (Cons!6821 (h!7677 (_ BitVec 64)) (t!12007 List!6825)) )
))
(declare-fun arrayNoDuplicates!0 (array!24753 (_ BitVec 32) List!6825) Bool)

(assert (=> b!409094 (= res!236932 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6822))))

(declare-fun b!409095 () Bool)

(declare-fun res!236931 () Bool)

(assert (=> b!409095 (=> (not res!236931) (not e!245441))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!409095 (= res!236931 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12175 _keys!709))))))

(declare-fun b!409096 () Bool)

(declare-fun res!236930 () Bool)

(assert (=> b!409096 (=> (not res!236930) (not e!245439))))

(declare-fun lt!188889 () array!24753)

(assert (=> b!409096 (= res!236930 (arrayNoDuplicates!0 lt!188889 #b00000000000000000000000000000000 Nil!6822))))

(declare-fun b!409097 () Bool)

(declare-fun e!245440 () Bool)

(declare-fun tp_is_empty!10449 () Bool)

(assert (=> b!409097 (= e!245440 tp_is_empty!10449)))

(declare-fun res!236927 () Bool)

(assert (=> start!39038 (=> (not res!236927) (not e!245441))))

(assert (=> start!39038 (= res!236927 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12175 _keys!709))))))

(assert (=> start!39038 e!245441))

(assert (=> start!39038 tp_is_empty!10449))

(assert (=> start!39038 tp!33419))

(assert (=> start!39038 true))

(declare-fun e!245438 () Bool)

(declare-fun array_inv!8634 (array!24751) Bool)

(assert (=> start!39038 (and (array_inv!8634 _values!549) e!245438)))

(declare-fun array_inv!8635 (array!24753) Bool)

(assert (=> start!39038 (array_inv!8635 _keys!709)))

(declare-fun b!409098 () Bool)

(declare-fun res!236924 () Bool)

(assert (=> b!409098 (=> (not res!236924) (not e!245441))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24753 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!409098 (= res!236924 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!409099 () Bool)

(declare-fun res!236934 () Bool)

(assert (=> b!409099 (=> (not res!236934) (not e!245441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!409099 (= res!236934 (validMask!0 mask!1025))))

(declare-fun b!409100 () Bool)

(declare-fun res!236923 () Bool)

(assert (=> b!409100 (=> (not res!236923) (not e!245441))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!409100 (= res!236923 (validKeyInArray!0 k0!794))))

(declare-fun b!409101 () Bool)

(declare-fun res!236929 () Bool)

(assert (=> b!409101 (=> (not res!236929) (not e!245441))))

(assert (=> b!409101 (= res!236929 (and (= (size!12174 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12175 _keys!709) (size!12174 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!409102 () Bool)

(declare-fun res!236928 () Bool)

(assert (=> b!409102 (=> (not res!236928) (not e!245439))))

(assert (=> b!409102 (= res!236928 (bvsle from!863 i!563))))

(declare-fun b!409103 () Bool)

(assert (=> b!409103 (= e!245442 tp_is_empty!10449)))

(declare-fun b!409104 () Bool)

(declare-fun res!236925 () Bool)

(assert (=> b!409104 (=> (not res!236925) (not e!245441))))

(assert (=> b!409104 (= res!236925 (or (= (select (arr!11823 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11823 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!409105 () Bool)

(assert (=> b!409105 (= e!245441 e!245439)))

(declare-fun res!236933 () Bool)

(assert (=> b!409105 (=> (not res!236933) (not e!245439))))

(assert (=> b!409105 (= res!236933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188889 mask!1025))))

(assert (=> b!409105 (= lt!188889 (array!24754 (store (arr!11823 _keys!709) i!563 k0!794) (size!12175 _keys!709)))))

(declare-fun b!409106 () Bool)

(assert (=> b!409106 (= e!245438 (and e!245440 mapRes!17295))))

(declare-fun condMapEmpty!17295 () Bool)

(declare-fun mapDefault!17295 () ValueCell!4881)

(assert (=> b!409106 (= condMapEmpty!17295 (= (arr!11822 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4881)) mapDefault!17295)))))

(declare-fun mapIsEmpty!17295 () Bool)

(assert (=> mapIsEmpty!17295 mapRes!17295))

(assert (= (and start!39038 res!236927) b!409099))

(assert (= (and b!409099 res!236934) b!409101))

(assert (= (and b!409101 res!236929) b!409093))

(assert (= (and b!409093 res!236926) b!409094))

(assert (= (and b!409094 res!236932) b!409095))

(assert (= (and b!409095 res!236931) b!409100))

(assert (= (and b!409100 res!236923) b!409104))

(assert (= (and b!409104 res!236925) b!409098))

(assert (= (and b!409098 res!236924) b!409105))

(assert (= (and b!409105 res!236933) b!409096))

(assert (= (and b!409096 res!236930) b!409102))

(assert (= (and b!409102 res!236928) b!409092))

(assert (= (and b!409106 condMapEmpty!17295) mapIsEmpty!17295))

(assert (= (and b!409106 (not condMapEmpty!17295)) mapNonEmpty!17295))

(get-info :version)

(assert (= (and mapNonEmpty!17295 ((_ is ValueCellFull!4881) mapValue!17295)) b!409103))

(assert (= (and b!409106 ((_ is ValueCellFull!4881) mapDefault!17295)) b!409097))

(assert (= start!39038 b!409106))

(declare-fun m!400103 () Bool)

(assert (=> b!409099 m!400103))

(declare-fun m!400105 () Bool)

(assert (=> start!39038 m!400105))

(declare-fun m!400107 () Bool)

(assert (=> start!39038 m!400107))

(declare-fun m!400109 () Bool)

(assert (=> b!409092 m!400109))

(declare-fun m!400111 () Bool)

(assert (=> mapNonEmpty!17295 m!400111))

(declare-fun m!400113 () Bool)

(assert (=> b!409094 m!400113))

(declare-fun m!400115 () Bool)

(assert (=> b!409093 m!400115))

(declare-fun m!400117 () Bool)

(assert (=> b!409104 m!400117))

(declare-fun m!400119 () Bool)

(assert (=> b!409100 m!400119))

(declare-fun m!400121 () Bool)

(assert (=> b!409098 m!400121))

(declare-fun m!400123 () Bool)

(assert (=> b!409105 m!400123))

(declare-fun m!400125 () Bool)

(assert (=> b!409105 m!400125))

(declare-fun m!400127 () Bool)

(assert (=> b!409096 m!400127))

(check-sat (not b!409105) (not start!39038) (not b!409098) tp_is_empty!10449 (not b!409092) (not b!409099) b_and!16701 (not b!409094) (not b!409096) (not b!409093) (not mapNonEmpty!17295) (not b_next!9297) (not b!409100))
(check-sat b_and!16701 (not b_next!9297))
