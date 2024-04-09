; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37080 () Bool)

(assert start!37080)

(declare-fun b_free!8199 () Bool)

(declare-fun b_next!8199 () Bool)

(assert (=> start!37080 (= b_free!8199 (not b_next!8199))))

(declare-fun tp!29312 () Bool)

(declare-fun b_and!15459 () Bool)

(assert (=> start!37080 (= tp!29312 b_and!15459)))

(declare-fun b!372725 () Bool)

(declare-fun res!209885 () Bool)

(declare-fun e!227296 () Bool)

(assert (=> b!372725 (=> (not res!209885) (not e!227296))))

(declare-datatypes ((array!21601 0))(
  ( (array!21602 (arr!10266 (Array (_ BitVec 32) (_ BitVec 64))) (size!10618 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21601)

(declare-datatypes ((List!5779 0))(
  ( (Nil!5776) (Cons!5775 (h!6631 (_ BitVec 64)) (t!10937 List!5779)) )
))
(declare-fun arrayNoDuplicates!0 (array!21601 (_ BitVec 32) List!5779) Bool)

(assert (=> b!372725 (= res!209885 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5776))))

(declare-fun b!372726 () Bool)

(declare-fun e!227295 () Bool)

(assert (=> b!372726 (= e!227296 e!227295)))

(declare-fun res!209891 () Bool)

(assert (=> b!372726 (=> (not res!209891) (not e!227295))))

(declare-fun lt!170971 () array!21601)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21601 (_ BitVec 32)) Bool)

(assert (=> b!372726 (= res!209891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170971 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!372726 (= lt!170971 (array!21602 (store (arr!10266 _keys!658) i!548 k0!778) (size!10618 _keys!658)))))

(declare-fun b!372727 () Bool)

(assert (=> b!372727 (= e!227295 (not (bvsle #b00000000000000000000000000000000 (size!10618 _keys!658))))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((V!12901 0))(
  ( (V!12902 (val!4468 Int)) )
))
(declare-datatypes ((tuple2!5904 0))(
  ( (tuple2!5905 (_1!2962 (_ BitVec 64)) (_2!2962 V!12901)) )
))
(declare-datatypes ((List!5780 0))(
  ( (Nil!5777) (Cons!5776 (h!6632 tuple2!5904) (t!10938 List!5780)) )
))
(declare-datatypes ((ListLongMap!4831 0))(
  ( (ListLongMap!4832 (toList!2431 List!5780)) )
))
(declare-fun lt!170973 () ListLongMap!4831)

(declare-fun zeroValue!472 () V!12901)

(declare-datatypes ((ValueCell!4080 0))(
  ( (ValueCellFull!4080 (v!6661 V!12901)) (EmptyCell!4080) )
))
(declare-datatypes ((array!21603 0))(
  ( (array!21604 (arr!10267 (Array (_ BitVec 32) ValueCell!4080)) (size!10619 (_ BitVec 32))) )
))
(declare-fun lt!170975 () array!21603)

(declare-fun minValue!472 () V!12901)

(declare-fun getCurrentListMap!1881 (array!21601 array!21603 (_ BitVec 32) (_ BitVec 32) V!12901 V!12901 (_ BitVec 32) Int) ListLongMap!4831)

(assert (=> b!372727 (= lt!170973 (getCurrentListMap!1881 lt!170971 lt!170975 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170972 () ListLongMap!4831)

(declare-fun lt!170977 () ListLongMap!4831)

(assert (=> b!372727 (and (= lt!170972 lt!170977) (= lt!170977 lt!170972))))

(declare-fun v!373 () V!12901)

(declare-fun lt!170976 () ListLongMap!4831)

(declare-fun +!772 (ListLongMap!4831 tuple2!5904) ListLongMap!4831)

(assert (=> b!372727 (= lt!170977 (+!772 lt!170976 (tuple2!5905 k0!778 v!373)))))

(declare-datatypes ((Unit!11449 0))(
  ( (Unit!11450) )
))
(declare-fun lt!170974 () Unit!11449)

(declare-fun _values!506 () array!21603)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!32 (array!21601 array!21603 (_ BitVec 32) (_ BitVec 32) V!12901 V!12901 (_ BitVec 32) (_ BitVec 64) V!12901 (_ BitVec 32) Int) Unit!11449)

(assert (=> b!372727 (= lt!170974 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!32 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!699 (array!21601 array!21603 (_ BitVec 32) (_ BitVec 32) V!12901 V!12901 (_ BitVec 32) Int) ListLongMap!4831)

(assert (=> b!372727 (= lt!170972 (getCurrentListMapNoExtraKeys!699 lt!170971 lt!170975 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!372727 (= lt!170975 (array!21604 (store (arr!10267 _values!506) i!548 (ValueCellFull!4080 v!373)) (size!10619 _values!506)))))

(assert (=> b!372727 (= lt!170976 (getCurrentListMapNoExtraKeys!699 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!372728 () Bool)

(declare-fun res!209892 () Bool)

(assert (=> b!372728 (=> (not res!209892) (not e!227296))))

(assert (=> b!372728 (= res!209892 (and (= (size!10619 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10618 _keys!658) (size!10619 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!372729 () Bool)

(declare-fun res!209890 () Bool)

(assert (=> b!372729 (=> (not res!209890) (not e!227296))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!372729 (= res!209890 (validKeyInArray!0 k0!778))))

(declare-fun b!372730 () Bool)

(declare-fun e!227293 () Bool)

(declare-fun tp_is_empty!8847 () Bool)

(assert (=> b!372730 (= e!227293 tp_is_empty!8847)))

(declare-fun res!209889 () Bool)

(assert (=> start!37080 (=> (not res!209889) (not e!227296))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37080 (= res!209889 (validMask!0 mask!970))))

(assert (=> start!37080 e!227296))

(declare-fun e!227298 () Bool)

(declare-fun array_inv!7584 (array!21603) Bool)

(assert (=> start!37080 (and (array_inv!7584 _values!506) e!227298)))

(assert (=> start!37080 tp!29312))

(assert (=> start!37080 true))

(assert (=> start!37080 tp_is_empty!8847))

(declare-fun array_inv!7585 (array!21601) Bool)

(assert (=> start!37080 (array_inv!7585 _keys!658)))

(declare-fun b!372731 () Bool)

(declare-fun e!227294 () Bool)

(declare-fun mapRes!14835 () Bool)

(assert (=> b!372731 (= e!227298 (and e!227294 mapRes!14835))))

(declare-fun condMapEmpty!14835 () Bool)

(declare-fun mapDefault!14835 () ValueCell!4080)

(assert (=> b!372731 (= condMapEmpty!14835 (= (arr!10267 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4080)) mapDefault!14835)))))

(declare-fun b!372732 () Bool)

(declare-fun res!209887 () Bool)

(assert (=> b!372732 (=> (not res!209887) (not e!227296))))

(assert (=> b!372732 (= res!209887 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10618 _keys!658))))))

(declare-fun b!372733 () Bool)

(declare-fun res!209893 () Bool)

(assert (=> b!372733 (=> (not res!209893) (not e!227296))))

(assert (=> b!372733 (= res!209893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!372734 () Bool)

(declare-fun res!209888 () Bool)

(assert (=> b!372734 (=> (not res!209888) (not e!227296))))

(declare-fun arrayContainsKey!0 (array!21601 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!372734 (= res!209888 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14835 () Bool)

(assert (=> mapIsEmpty!14835 mapRes!14835))

(declare-fun b!372735 () Bool)

(declare-fun res!209894 () Bool)

(assert (=> b!372735 (=> (not res!209894) (not e!227295))))

(assert (=> b!372735 (= res!209894 (arrayNoDuplicates!0 lt!170971 #b00000000000000000000000000000000 Nil!5776))))

(declare-fun b!372736 () Bool)

(assert (=> b!372736 (= e!227294 tp_is_empty!8847)))

(declare-fun b!372737 () Bool)

(declare-fun res!209886 () Bool)

(assert (=> b!372737 (=> (not res!209886) (not e!227296))))

(assert (=> b!372737 (= res!209886 (or (= (select (arr!10266 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10266 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14835 () Bool)

(declare-fun tp!29313 () Bool)

(assert (=> mapNonEmpty!14835 (= mapRes!14835 (and tp!29313 e!227293))))

(declare-fun mapKey!14835 () (_ BitVec 32))

(declare-fun mapRest!14835 () (Array (_ BitVec 32) ValueCell!4080))

(declare-fun mapValue!14835 () ValueCell!4080)

(assert (=> mapNonEmpty!14835 (= (arr!10267 _values!506) (store mapRest!14835 mapKey!14835 mapValue!14835))))

(assert (= (and start!37080 res!209889) b!372728))

(assert (= (and b!372728 res!209892) b!372733))

(assert (= (and b!372733 res!209893) b!372725))

(assert (= (and b!372725 res!209885) b!372732))

(assert (= (and b!372732 res!209887) b!372729))

(assert (= (and b!372729 res!209890) b!372737))

(assert (= (and b!372737 res!209886) b!372734))

(assert (= (and b!372734 res!209888) b!372726))

(assert (= (and b!372726 res!209891) b!372735))

(assert (= (and b!372735 res!209894) b!372727))

(assert (= (and b!372731 condMapEmpty!14835) mapIsEmpty!14835))

(assert (= (and b!372731 (not condMapEmpty!14835)) mapNonEmpty!14835))

(get-info :version)

(assert (= (and mapNonEmpty!14835 ((_ is ValueCellFull!4080) mapValue!14835)) b!372730))

(assert (= (and b!372731 ((_ is ValueCellFull!4080) mapDefault!14835)) b!372736))

(assert (= start!37080 b!372731))

(declare-fun m!368597 () Bool)

(assert (=> b!372735 m!368597))

(declare-fun m!368599 () Bool)

(assert (=> b!372734 m!368599))

(declare-fun m!368601 () Bool)

(assert (=> start!37080 m!368601))

(declare-fun m!368603 () Bool)

(assert (=> start!37080 m!368603))

(declare-fun m!368605 () Bool)

(assert (=> start!37080 m!368605))

(declare-fun m!368607 () Bool)

(assert (=> mapNonEmpty!14835 m!368607))

(declare-fun m!368609 () Bool)

(assert (=> b!372729 m!368609))

(declare-fun m!368611 () Bool)

(assert (=> b!372725 m!368611))

(declare-fun m!368613 () Bool)

(assert (=> b!372733 m!368613))

(declare-fun m!368615 () Bool)

(assert (=> b!372727 m!368615))

(declare-fun m!368617 () Bool)

(assert (=> b!372727 m!368617))

(declare-fun m!368619 () Bool)

(assert (=> b!372727 m!368619))

(declare-fun m!368621 () Bool)

(assert (=> b!372727 m!368621))

(declare-fun m!368623 () Bool)

(assert (=> b!372727 m!368623))

(declare-fun m!368625 () Bool)

(assert (=> b!372727 m!368625))

(declare-fun m!368627 () Bool)

(assert (=> b!372726 m!368627))

(declare-fun m!368629 () Bool)

(assert (=> b!372726 m!368629))

(declare-fun m!368631 () Bool)

(assert (=> b!372737 m!368631))

(check-sat (not b!372727) tp_is_empty!8847 (not b!372735) (not b!372734) (not b!372725) (not b!372729) b_and!15459 (not b!372726) (not start!37080) (not b_next!8199) (not b!372733) (not mapNonEmpty!14835))
(check-sat b_and!15459 (not b_next!8199))
