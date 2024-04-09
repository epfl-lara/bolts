; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70682 () Bool)

(assert start!70682)

(declare-fun b_free!12945 () Bool)

(declare-fun b_next!12945 () Bool)

(assert (=> start!70682 (= b_free!12945 (not b_next!12945))))

(declare-fun tp!45573 () Bool)

(declare-fun b_and!21817 () Bool)

(assert (=> start!70682 (= tp!45573 b_and!21817)))

(declare-fun b!820644 () Bool)

(declare-fun e!456007 () Bool)

(declare-fun e!456008 () Bool)

(declare-fun mapRes!23587 () Bool)

(assert (=> b!820644 (= e!456007 (and e!456008 mapRes!23587))))

(declare-fun condMapEmpty!23587 () Bool)

(declare-datatypes ((V!24541 0))(
  ( (V!24542 (val!7375 Int)) )
))
(declare-datatypes ((ValueCell!6912 0))(
  ( (ValueCellFull!6912 (v!9802 V!24541)) (EmptyCell!6912) )
))
(declare-datatypes ((array!45472 0))(
  ( (array!45473 (arr!21784 (Array (_ BitVec 32) ValueCell!6912)) (size!22205 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45472)

(declare-fun mapDefault!23587 () ValueCell!6912)

(assert (=> b!820644 (= condMapEmpty!23587 (= (arr!21784 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6912)) mapDefault!23587)))))

(declare-fun res!560004 () Bool)

(declare-fun e!456009 () Bool)

(assert (=> start!70682 (=> (not res!560004) (not e!456009))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70682 (= res!560004 (validMask!0 mask!1312))))

(assert (=> start!70682 e!456009))

(declare-fun tp_is_empty!14655 () Bool)

(assert (=> start!70682 tp_is_empty!14655))

(declare-datatypes ((array!45474 0))(
  ( (array!45475 (arr!21785 (Array (_ BitVec 32) (_ BitVec 64))) (size!22206 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45474)

(declare-fun array_inv!17379 (array!45474) Bool)

(assert (=> start!70682 (array_inv!17379 _keys!976)))

(assert (=> start!70682 true))

(declare-fun array_inv!17380 (array!45472) Bool)

(assert (=> start!70682 (and (array_inv!17380 _values!788) e!456007)))

(assert (=> start!70682 tp!45573))

(declare-fun b!820645 () Bool)

(assert (=> b!820645 (= e!456009 (not true))))

(declare-datatypes ((tuple2!9724 0))(
  ( (tuple2!9725 (_1!4872 (_ BitVec 64)) (_2!4872 V!24541)) )
))
(declare-datatypes ((List!15583 0))(
  ( (Nil!15580) (Cons!15579 (h!16708 tuple2!9724) (t!21924 List!15583)) )
))
(declare-datatypes ((ListLongMap!8561 0))(
  ( (ListLongMap!8562 (toList!4296 List!15583)) )
))
(declare-fun lt!368868 () ListLongMap!8561)

(declare-fun lt!368866 () ListLongMap!8561)

(assert (=> b!820645 (= lt!368868 lt!368866)))

(declare-fun zeroValueBefore!34 () V!24541)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24541)

(declare-fun minValue!754 () V!24541)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28045 0))(
  ( (Unit!28046) )
))
(declare-fun lt!368867 () Unit!28045)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!446 (array!45474 array!45472 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24541 V!24541 V!24541 V!24541 (_ BitVec 32) Int) Unit!28045)

(assert (=> b!820645 (= lt!368867 (lemmaNoChangeToArrayThenSameMapNoExtras!446 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2330 (array!45474 array!45472 (_ BitVec 32) (_ BitVec 32) V!24541 V!24541 (_ BitVec 32) Int) ListLongMap!8561)

(assert (=> b!820645 (= lt!368866 (getCurrentListMapNoExtraKeys!2330 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!820645 (= lt!368868 (getCurrentListMapNoExtraKeys!2330 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!820646 () Bool)

(declare-fun res!560007 () Bool)

(assert (=> b!820646 (=> (not res!560007) (not e!456009))))

(assert (=> b!820646 (= res!560007 (and (= (size!22205 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22206 _keys!976) (size!22205 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!820647 () Bool)

(declare-fun res!560006 () Bool)

(assert (=> b!820647 (=> (not res!560006) (not e!456009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45474 (_ BitVec 32)) Bool)

(assert (=> b!820647 (= res!560006 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!820648 () Bool)

(assert (=> b!820648 (= e!456008 tp_is_empty!14655)))

(declare-fun b!820649 () Bool)

(declare-fun e!456006 () Bool)

(assert (=> b!820649 (= e!456006 tp_is_empty!14655)))

(declare-fun mapNonEmpty!23587 () Bool)

(declare-fun tp!45574 () Bool)

(assert (=> mapNonEmpty!23587 (= mapRes!23587 (and tp!45574 e!456006))))

(declare-fun mapRest!23587 () (Array (_ BitVec 32) ValueCell!6912))

(declare-fun mapValue!23587 () ValueCell!6912)

(declare-fun mapKey!23587 () (_ BitVec 32))

(assert (=> mapNonEmpty!23587 (= (arr!21784 _values!788) (store mapRest!23587 mapKey!23587 mapValue!23587))))

(declare-fun mapIsEmpty!23587 () Bool)

(assert (=> mapIsEmpty!23587 mapRes!23587))

(declare-fun b!820650 () Bool)

(declare-fun res!560005 () Bool)

(assert (=> b!820650 (=> (not res!560005) (not e!456009))))

(declare-datatypes ((List!15584 0))(
  ( (Nil!15581) (Cons!15580 (h!16709 (_ BitVec 64)) (t!21925 List!15584)) )
))
(declare-fun arrayNoDuplicates!0 (array!45474 (_ BitVec 32) List!15584) Bool)

(assert (=> b!820650 (= res!560005 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15581))))

(assert (= (and start!70682 res!560004) b!820646))

(assert (= (and b!820646 res!560007) b!820647))

(assert (= (and b!820647 res!560006) b!820650))

(assert (= (and b!820650 res!560005) b!820645))

(assert (= (and b!820644 condMapEmpty!23587) mapIsEmpty!23587))

(assert (= (and b!820644 (not condMapEmpty!23587)) mapNonEmpty!23587))

(get-info :version)

(assert (= (and mapNonEmpty!23587 ((_ is ValueCellFull!6912) mapValue!23587)) b!820649))

(assert (= (and b!820644 ((_ is ValueCellFull!6912) mapDefault!23587)) b!820648))

(assert (= start!70682 b!820644))

(declare-fun m!762639 () Bool)

(assert (=> b!820647 m!762639))

(declare-fun m!762641 () Bool)

(assert (=> b!820650 m!762641))

(declare-fun m!762643 () Bool)

(assert (=> mapNonEmpty!23587 m!762643))

(declare-fun m!762645 () Bool)

(assert (=> start!70682 m!762645))

(declare-fun m!762647 () Bool)

(assert (=> start!70682 m!762647))

(declare-fun m!762649 () Bool)

(assert (=> start!70682 m!762649))

(declare-fun m!762651 () Bool)

(assert (=> b!820645 m!762651))

(declare-fun m!762653 () Bool)

(assert (=> b!820645 m!762653))

(declare-fun m!762655 () Bool)

(assert (=> b!820645 m!762655))

(check-sat (not b!820647) (not start!70682) (not b!820645) b_and!21817 (not mapNonEmpty!23587) (not b!820650) tp_is_empty!14655 (not b_next!12945))
(check-sat b_and!21817 (not b_next!12945))
