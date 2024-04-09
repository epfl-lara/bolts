; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71392 () Bool)

(assert start!71392)

(declare-fun b_free!13449 () Bool)

(declare-fun b_next!13449 () Bool)

(assert (=> start!71392 (= b_free!13449 (not b_next!13449))))

(declare-fun tp!47122 () Bool)

(declare-fun b_and!22449 () Bool)

(assert (=> start!71392 (= tp!47122 b_and!22449)))

(declare-fun mapNonEmpty!24379 () Bool)

(declare-fun mapRes!24379 () Bool)

(declare-fun tp!47121 () Bool)

(declare-fun e!461849 () Bool)

(assert (=> mapNonEmpty!24379 (= mapRes!24379 (and tp!47121 e!461849))))

(declare-datatypes ((V!25213 0))(
  ( (V!25214 (val!7627 Int)) )
))
(declare-datatypes ((ValueCell!7164 0))(
  ( (ValueCellFull!7164 (v!10061 V!25213)) (EmptyCell!7164) )
))
(declare-datatypes ((array!46458 0))(
  ( (array!46459 (arr!22265 (Array (_ BitVec 32) ValueCell!7164)) (size!22686 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46458)

(declare-fun mapKey!24379 () (_ BitVec 32))

(declare-fun mapRest!24379 () (Array (_ BitVec 32) ValueCell!7164))

(declare-fun mapValue!24379 () ValueCell!7164)

(assert (=> mapNonEmpty!24379 (= (arr!22265 _values!788) (store mapRest!24379 mapKey!24379 mapValue!24379))))

(declare-fun b!828680 () Bool)

(declare-fun e!461847 () Bool)

(declare-fun e!461851 () Bool)

(assert (=> b!828680 (= e!461847 (not e!461851))))

(declare-fun res!564720 () Bool)

(assert (=> b!828680 (=> res!564720 e!461851)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!828680 (= res!564720 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!10134 0))(
  ( (tuple2!10135 (_1!5077 (_ BitVec 64)) (_2!5077 V!25213)) )
))
(declare-datatypes ((List!15969 0))(
  ( (Nil!15966) (Cons!15965 (h!17094 tuple2!10134) (t!22334 List!15969)) )
))
(declare-datatypes ((ListLongMap!8971 0))(
  ( (ListLongMap!8972 (toList!4501 List!15969)) )
))
(declare-fun lt!375619 () ListLongMap!8971)

(declare-fun lt!375618 () ListLongMap!8971)

(assert (=> b!828680 (= lt!375619 lt!375618)))

(declare-fun zeroValueBefore!34 () V!25213)

(declare-datatypes ((array!46460 0))(
  ( (array!46461 (arr!22266 (Array (_ BitVec 32) (_ BitVec 64))) (size!22687 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46460)

(declare-fun zeroValueAfter!34 () V!25213)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28391 0))(
  ( (Unit!28392) )
))
(declare-fun lt!375620 () Unit!28391)

(declare-fun minValue!754 () V!25213)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!595 (array!46460 array!46458 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25213 V!25213 V!25213 V!25213 (_ BitVec 32) Int) Unit!28391)

(assert (=> b!828680 (= lt!375620 (lemmaNoChangeToArrayThenSameMapNoExtras!595 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2505 (array!46460 array!46458 (_ BitVec 32) (_ BitVec 32) V!25213 V!25213 (_ BitVec 32) Int) ListLongMap!8971)

(assert (=> b!828680 (= lt!375618 (getCurrentListMapNoExtraKeys!2505 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!828680 (= lt!375619 (getCurrentListMapNoExtraKeys!2505 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!564717 () Bool)

(assert (=> start!71392 (=> (not res!564717) (not e!461847))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71392 (= res!564717 (validMask!0 mask!1312))))

(assert (=> start!71392 e!461847))

(declare-fun tp_is_empty!15159 () Bool)

(assert (=> start!71392 tp_is_empty!15159))

(declare-fun array_inv!17719 (array!46460) Bool)

(assert (=> start!71392 (array_inv!17719 _keys!976)))

(assert (=> start!71392 true))

(declare-fun e!461853 () Bool)

(declare-fun array_inv!17720 (array!46458) Bool)

(assert (=> start!71392 (and (array_inv!17720 _values!788) e!461853)))

(assert (=> start!71392 tp!47122))

(declare-fun b!828681 () Bool)

(declare-fun res!564719 () Bool)

(assert (=> b!828681 (=> (not res!564719) (not e!461847))))

(assert (=> b!828681 (= res!564719 (and (= (size!22686 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22687 _keys!976) (size!22686 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!828682 () Bool)

(declare-fun e!461848 () Bool)

(assert (=> b!828682 (= e!461848 tp_is_empty!15159)))

(declare-fun b!828683 () Bool)

(assert (=> b!828683 (= e!461853 (and e!461848 mapRes!24379))))

(declare-fun condMapEmpty!24379 () Bool)

(declare-fun mapDefault!24379 () ValueCell!7164)

(assert (=> b!828683 (= condMapEmpty!24379 (= (arr!22265 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7164)) mapDefault!24379)))))

(declare-fun e!461850 () Bool)

(declare-fun b!828684 () Bool)

(declare-fun lt!375616 () ListLongMap!8971)

(declare-fun +!1934 (ListLongMap!8971 tuple2!10134) ListLongMap!8971)

(assert (=> b!828684 (= e!461850 (= lt!375616 (+!1934 lt!375618 (tuple2!10135 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!828685 () Bool)

(declare-fun res!564718 () Bool)

(assert (=> b!828685 (=> (not res!564718) (not e!461847))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46460 (_ BitVec 32)) Bool)

(assert (=> b!828685 (= res!564718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!828686 () Bool)

(declare-fun res!564721 () Bool)

(assert (=> b!828686 (=> (not res!564721) (not e!461847))))

(declare-datatypes ((List!15970 0))(
  ( (Nil!15967) (Cons!15966 (h!17095 (_ BitVec 64)) (t!22335 List!15970)) )
))
(declare-fun arrayNoDuplicates!0 (array!46460 (_ BitVec 32) List!15970) Bool)

(assert (=> b!828686 (= res!564721 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15967))))

(declare-fun b!828687 () Bool)

(assert (=> b!828687 (= e!461849 tp_is_empty!15159)))

(declare-fun mapIsEmpty!24379 () Bool)

(assert (=> mapIsEmpty!24379 mapRes!24379))

(declare-fun lt!375623 () tuple2!10134)

(declare-fun lt!375624 () tuple2!10134)

(declare-fun b!828688 () Bool)

(assert (=> b!828688 (= e!461851 (= lt!375616 (+!1934 (+!1934 lt!375618 lt!375624) lt!375623)))))

(declare-fun lt!375621 () ListLongMap!8971)

(assert (=> b!828688 (= (+!1934 lt!375619 lt!375623) (+!1934 lt!375621 lt!375623))))

(declare-fun lt!375617 () Unit!28391)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!243 (ListLongMap!8971 (_ BitVec 64) V!25213 V!25213) Unit!28391)

(assert (=> b!828688 (= lt!375617 (addSameAsAddTwiceSameKeyDiffValues!243 lt!375619 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!828688 (= lt!375623 (tuple2!10135 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!828688 e!461850))

(declare-fun res!564716 () Bool)

(assert (=> b!828688 (=> (not res!564716) (not e!461850))))

(declare-fun lt!375622 () ListLongMap!8971)

(assert (=> b!828688 (= res!564716 (= lt!375622 lt!375621))))

(assert (=> b!828688 (= lt!375621 (+!1934 lt!375619 lt!375624))))

(assert (=> b!828688 (= lt!375624 (tuple2!10135 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2576 (array!46460 array!46458 (_ BitVec 32) (_ BitVec 32) V!25213 V!25213 (_ BitVec 32) Int) ListLongMap!8971)

(assert (=> b!828688 (= lt!375616 (getCurrentListMap!2576 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!828688 (= lt!375622 (getCurrentListMap!2576 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!71392 res!564717) b!828681))

(assert (= (and b!828681 res!564719) b!828685))

(assert (= (and b!828685 res!564718) b!828686))

(assert (= (and b!828686 res!564721) b!828680))

(assert (= (and b!828680 (not res!564720)) b!828688))

(assert (= (and b!828688 res!564716) b!828684))

(assert (= (and b!828683 condMapEmpty!24379) mapIsEmpty!24379))

(assert (= (and b!828683 (not condMapEmpty!24379)) mapNonEmpty!24379))

(get-info :version)

(assert (= (and mapNonEmpty!24379 ((_ is ValueCellFull!7164) mapValue!24379)) b!828687))

(assert (= (and b!828683 ((_ is ValueCellFull!7164) mapDefault!24379)) b!828682))

(assert (= start!71392 b!828683))

(declare-fun m!771713 () Bool)

(assert (=> b!828686 m!771713))

(declare-fun m!771715 () Bool)

(assert (=> b!828680 m!771715))

(declare-fun m!771717 () Bool)

(assert (=> b!828680 m!771717))

(declare-fun m!771719 () Bool)

(assert (=> b!828680 m!771719))

(declare-fun m!771721 () Bool)

(assert (=> b!828685 m!771721))

(declare-fun m!771723 () Bool)

(assert (=> mapNonEmpty!24379 m!771723))

(declare-fun m!771725 () Bool)

(assert (=> b!828684 m!771725))

(declare-fun m!771727 () Bool)

(assert (=> start!71392 m!771727))

(declare-fun m!771729 () Bool)

(assert (=> start!71392 m!771729))

(declare-fun m!771731 () Bool)

(assert (=> start!71392 m!771731))

(declare-fun m!771733 () Bool)

(assert (=> b!828688 m!771733))

(declare-fun m!771735 () Bool)

(assert (=> b!828688 m!771735))

(declare-fun m!771737 () Bool)

(assert (=> b!828688 m!771737))

(declare-fun m!771739 () Bool)

(assert (=> b!828688 m!771739))

(declare-fun m!771741 () Bool)

(assert (=> b!828688 m!771741))

(declare-fun m!771743 () Bool)

(assert (=> b!828688 m!771743))

(declare-fun m!771745 () Bool)

(assert (=> b!828688 m!771745))

(assert (=> b!828688 m!771733))

(declare-fun m!771747 () Bool)

(assert (=> b!828688 m!771747))

(check-sat (not b!828684) (not b!828680) (not start!71392) (not b_next!13449) (not b!828685) tp_is_empty!15159 (not b!828686) b_and!22449 (not mapNonEmpty!24379) (not b!828688))
(check-sat b_and!22449 (not b_next!13449))
