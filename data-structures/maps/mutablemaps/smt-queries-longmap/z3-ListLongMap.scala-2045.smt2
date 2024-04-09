; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35448 () Bool)

(assert start!35448)

(declare-fun b_free!7827 () Bool)

(declare-fun b_next!7827 () Bool)

(assert (=> start!35448 (= b_free!7827 (not b_next!7827))))

(declare-fun tp!27267 () Bool)

(declare-fun b_and!15087 () Bool)

(assert (=> start!35448 (= tp!27267 b_and!15087)))

(declare-fun b!354681 () Bool)

(declare-fun res!196724 () Bool)

(declare-fun e!217384 () Bool)

(assert (=> b!354681 (=> (not res!196724) (not e!217384))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19333 0))(
  ( (array!19334 (arr!9157 (Array (_ BitVec 32) (_ BitVec 64))) (size!9509 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19333)

(declare-datatypes ((V!11501 0))(
  ( (V!11502 (val!3991 Int)) )
))
(declare-datatypes ((ValueCell!3603 0))(
  ( (ValueCellFull!3603 (v!6181 V!11501)) (EmptyCell!3603) )
))
(declare-datatypes ((array!19335 0))(
  ( (array!19336 (arr!9158 (Array (_ BitVec 32) ValueCell!3603)) (size!9510 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19335)

(assert (=> b!354681 (= res!196724 (and (= (size!9510 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9509 _keys!1456) (size!9510 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354682 () Bool)

(declare-fun res!196732 () Bool)

(assert (=> b!354682 (=> (not res!196732) (not e!217384))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!19333 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!354682 (= res!196732 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!354683 () Bool)

(declare-fun res!196729 () Bool)

(assert (=> b!354683 (=> (not res!196729) (not e!217384))))

(assert (=> b!354683 (= res!196729 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9509 _keys!1456))))))

(declare-fun b!354684 () Bool)

(declare-fun res!196728 () Bool)

(assert (=> b!354684 (=> (not res!196728) (not e!217384))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!354684 (= res!196728 (validKeyInArray!0 k0!1077))))

(declare-fun b!354685 () Bool)

(declare-fun res!196730 () Bool)

(assert (=> b!354685 (=> (not res!196730) (not e!217384))))

(declare-datatypes ((List!5331 0))(
  ( (Nil!5328) (Cons!5327 (h!6183 (_ BitVec 64)) (t!10489 List!5331)) )
))
(declare-fun arrayNoDuplicates!0 (array!19333 (_ BitVec 32) List!5331) Bool)

(assert (=> b!354685 (= res!196730 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5328))))

(declare-fun b!354686 () Bool)

(declare-fun e!217383 () Bool)

(declare-fun e!217382 () Bool)

(declare-fun mapRes!13347 () Bool)

(assert (=> b!354686 (= e!217383 (and e!217382 mapRes!13347))))

(declare-fun condMapEmpty!13347 () Bool)

(declare-fun mapDefault!13347 () ValueCell!3603)

(assert (=> b!354686 (= condMapEmpty!13347 (= (arr!9158 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3603)) mapDefault!13347)))))

(declare-fun b!354687 () Bool)

(declare-fun tp_is_empty!7893 () Bool)

(assert (=> b!354687 (= e!217382 tp_is_empty!7893)))

(declare-fun b!354688 () Bool)

(declare-fun res!196726 () Bool)

(assert (=> b!354688 (=> (not res!196726) (not e!217384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19333 (_ BitVec 32)) Bool)

(assert (=> b!354688 (= res!196726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354689 () Bool)

(assert (=> b!354689 (= e!217384 (not true))))

(declare-fun minValue!1150 () V!11501)

(declare-fun defaultEntry!1216 () Int)

(declare-fun zeroValue!1150 () V!11501)

(declare-datatypes ((tuple2!5666 0))(
  ( (tuple2!5667 (_1!2843 (_ BitVec 64)) (_2!2843 V!11501)) )
))
(declare-datatypes ((List!5332 0))(
  ( (Nil!5329) (Cons!5328 (h!6184 tuple2!5666) (t!10490 List!5332)) )
))
(declare-datatypes ((ListLongMap!4593 0))(
  ( (ListLongMap!4594 (toList!2312 List!5332)) )
))
(declare-fun contains!2388 (ListLongMap!4593 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1829 (array!19333 array!19335 (_ BitVec 32) (_ BitVec 32) V!11501 V!11501 (_ BitVec 32) Int) ListLongMap!4593)

(assert (=> b!354689 (contains!2388 (getCurrentListMap!1829 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) (select (arr!9157 _keys!1456) from!1805))))

(declare-datatypes ((Unit!10933 0))(
  ( (Unit!10934) )
))
(declare-fun lt!165715 () Unit!10933)

(declare-fun lemmaValidKeyInArrayIsInListMap!179 (array!19333 array!19335 (_ BitVec 32) (_ BitVec 32) V!11501 V!11501 (_ BitVec 32) Int) Unit!10933)

(assert (=> b!354689 (= lt!165715 (lemmaValidKeyInArrayIsInListMap!179 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 from!1805 defaultEntry!1216))))

(declare-fun mapNonEmpty!13347 () Bool)

(declare-fun tp!27266 () Bool)

(declare-fun e!217381 () Bool)

(assert (=> mapNonEmpty!13347 (= mapRes!13347 (and tp!27266 e!217381))))

(declare-fun mapValue!13347 () ValueCell!3603)

(declare-fun mapRest!13347 () (Array (_ BitVec 32) ValueCell!3603))

(declare-fun mapKey!13347 () (_ BitVec 32))

(assert (=> mapNonEmpty!13347 (= (arr!9158 _values!1208) (store mapRest!13347 mapKey!13347 mapValue!13347))))

(declare-fun b!354690 () Bool)

(assert (=> b!354690 (= e!217381 tp_is_empty!7893)))

(declare-fun b!354691 () Bool)

(declare-fun res!196731 () Bool)

(assert (=> b!354691 (=> (not res!196731) (not e!217384))))

(assert (=> b!354691 (= res!196731 (= (select (arr!9157 _keys!1456) from!1805) k0!1077))))

(declare-fun res!196727 () Bool)

(assert (=> start!35448 (=> (not res!196727) (not e!217384))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35448 (= res!196727 (validMask!0 mask!1842))))

(assert (=> start!35448 e!217384))

(assert (=> start!35448 tp_is_empty!7893))

(assert (=> start!35448 true))

(assert (=> start!35448 tp!27267))

(declare-fun array_inv!6740 (array!19333) Bool)

(assert (=> start!35448 (array_inv!6740 _keys!1456)))

(declare-fun array_inv!6741 (array!19335) Bool)

(assert (=> start!35448 (and (array_inv!6741 _values!1208) e!217383)))

(declare-fun b!354692 () Bool)

(declare-fun res!196725 () Bool)

(assert (=> b!354692 (=> (not res!196725) (not e!217384))))

(assert (=> b!354692 (= res!196725 (validKeyInArray!0 (select (arr!9157 _keys!1456) from!1805)))))

(declare-fun mapIsEmpty!13347 () Bool)

(assert (=> mapIsEmpty!13347 mapRes!13347))

(assert (= (and start!35448 res!196727) b!354681))

(assert (= (and b!354681 res!196724) b!354688))

(assert (= (and b!354688 res!196726) b!354685))

(assert (= (and b!354685 res!196730) b!354684))

(assert (= (and b!354684 res!196728) b!354683))

(assert (= (and b!354683 res!196729) b!354682))

(assert (= (and b!354682 res!196732) b!354691))

(assert (= (and b!354691 res!196731) b!354692))

(assert (= (and b!354692 res!196725) b!354689))

(assert (= (and b!354686 condMapEmpty!13347) mapIsEmpty!13347))

(assert (= (and b!354686 (not condMapEmpty!13347)) mapNonEmpty!13347))

(get-info :version)

(assert (= (and mapNonEmpty!13347 ((_ is ValueCellFull!3603) mapValue!13347)) b!354690))

(assert (= (and b!354686 ((_ is ValueCellFull!3603) mapDefault!13347)) b!354687))

(assert (= start!35448 b!354686))

(declare-fun m!353597 () Bool)

(assert (=> mapNonEmpty!13347 m!353597))

(declare-fun m!353599 () Bool)

(assert (=> b!354689 m!353599))

(declare-fun m!353601 () Bool)

(assert (=> b!354689 m!353601))

(assert (=> b!354689 m!353599))

(assert (=> b!354689 m!353601))

(declare-fun m!353603 () Bool)

(assert (=> b!354689 m!353603))

(declare-fun m!353605 () Bool)

(assert (=> b!354689 m!353605))

(declare-fun m!353607 () Bool)

(assert (=> b!354684 m!353607))

(declare-fun m!353609 () Bool)

(assert (=> start!35448 m!353609))

(declare-fun m!353611 () Bool)

(assert (=> start!35448 m!353611))

(declare-fun m!353613 () Bool)

(assert (=> start!35448 m!353613))

(declare-fun m!353615 () Bool)

(assert (=> b!354685 m!353615))

(declare-fun m!353617 () Bool)

(assert (=> b!354682 m!353617))

(assert (=> b!354691 m!353601))

(assert (=> b!354692 m!353601))

(assert (=> b!354692 m!353601))

(declare-fun m!353619 () Bool)

(assert (=> b!354692 m!353619))

(declare-fun m!353621 () Bool)

(assert (=> b!354688 m!353621))

(check-sat b_and!15087 (not b!354685) (not b!354682) (not b_next!7827) (not b!354692) (not start!35448) (not b!354689) (not b!354688) (not b!354684) tp_is_empty!7893 (not mapNonEmpty!13347))
(check-sat b_and!15087 (not b_next!7827))
