; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70790 () Bool)

(assert start!70790)

(declare-fun b_free!13023 () Bool)

(declare-fun b_next!13023 () Bool)

(assert (=> start!70790 (= b_free!13023 (not b_next!13023))))

(declare-fun tp!45813 () Bool)

(declare-fun b_and!21913 () Bool)

(assert (=> start!70790 (= tp!45813 b_and!21913)))

(declare-fun b!821787 () Bool)

(declare-fun e!456831 () Bool)

(declare-fun e!456833 () Bool)

(declare-fun mapRes!23710 () Bool)

(assert (=> b!821787 (= e!456831 (and e!456833 mapRes!23710))))

(declare-fun condMapEmpty!23710 () Bool)

(declare-datatypes ((V!24645 0))(
  ( (V!24646 (val!7414 Int)) )
))
(declare-datatypes ((ValueCell!6951 0))(
  ( (ValueCellFull!6951 (v!9841 V!24645)) (EmptyCell!6951) )
))
(declare-datatypes ((array!45620 0))(
  ( (array!45621 (arr!21856 (Array (_ BitVec 32) ValueCell!6951)) (size!22277 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45620)

(declare-fun mapDefault!23710 () ValueCell!6951)

(assert (=> b!821787 (= condMapEmpty!23710 (= (arr!21856 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6951)) mapDefault!23710)))))

(declare-fun b!821788 () Bool)

(declare-fun res!560652 () Bool)

(declare-fun e!456830 () Bool)

(assert (=> b!821788 (=> (not res!560652) (not e!456830))))

(declare-datatypes ((array!45622 0))(
  ( (array!45623 (arr!21857 (Array (_ BitVec 32) (_ BitVec 64))) (size!22278 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45622)

(declare-datatypes ((List!15640 0))(
  ( (Nil!15637) (Cons!15636 (h!16765 (_ BitVec 64)) (t!21985 List!15640)) )
))
(declare-fun arrayNoDuplicates!0 (array!45622 (_ BitVec 32) List!15640) Bool)

(assert (=> b!821788 (= res!560652 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15637))))

(declare-fun res!560655 () Bool)

(assert (=> start!70790 (=> (not res!560655) (not e!456830))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70790 (= res!560655 (validMask!0 mask!1312))))

(assert (=> start!70790 e!456830))

(declare-fun tp_is_empty!14733 () Bool)

(assert (=> start!70790 tp_is_empty!14733))

(declare-fun array_inv!17431 (array!45622) Bool)

(assert (=> start!70790 (array_inv!17431 _keys!976)))

(assert (=> start!70790 true))

(declare-fun array_inv!17432 (array!45620) Bool)

(assert (=> start!70790 (and (array_inv!17432 _values!788) e!456831)))

(assert (=> start!70790 tp!45813))

(declare-fun b!821789 () Bool)

(declare-fun e!456834 () Bool)

(assert (=> b!821789 (= e!456834 true)))

(declare-fun e!456836 () Bool)

(assert (=> b!821789 e!456836))

(declare-fun res!560656 () Bool)

(assert (=> b!821789 (=> (not res!560656) (not e!456836))))

(declare-datatypes ((tuple2!9780 0))(
  ( (tuple2!9781 (_1!4900 (_ BitVec 64)) (_2!4900 V!24645)) )
))
(declare-fun lt!369464 () tuple2!9780)

(declare-datatypes ((List!15641 0))(
  ( (Nil!15638) (Cons!15637 (h!16766 tuple2!9780) (t!21986 List!15641)) )
))
(declare-datatypes ((ListLongMap!8617 0))(
  ( (ListLongMap!8618 (toList!4324 List!15641)) )
))
(declare-fun lt!369460 () ListLongMap!8617)

(declare-fun lt!369461 () ListLongMap!8617)

(declare-fun +!1829 (ListLongMap!8617 tuple2!9780) ListLongMap!8617)

(assert (=> b!821789 (= res!560656 (= lt!369460 (+!1829 lt!369461 lt!369464)))))

(declare-fun minValue!754 () V!24645)

(assert (=> b!821789 (= lt!369464 (tuple2!9781 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun zeroValueAfter!34 () V!24645)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun lt!369459 () ListLongMap!8617)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2459 (array!45622 array!45620 (_ BitVec 32) (_ BitVec 32) V!24645 V!24645 (_ BitVec 32) Int) ListLongMap!8617)

(assert (=> b!821789 (= lt!369459 (getCurrentListMap!2459 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24645)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!821789 (= lt!369460 (getCurrentListMap!2459 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821790 () Bool)

(assert (=> b!821790 (= e!456833 tp_is_empty!14733)))

(declare-fun b!821791 () Bool)

(assert (=> b!821791 (= e!456836 (= lt!369459 (+!1829 (+!1829 lt!369461 (tuple2!9781 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!369464)))))

(declare-fun mapIsEmpty!23710 () Bool)

(assert (=> mapIsEmpty!23710 mapRes!23710))

(declare-fun b!821792 () Bool)

(assert (=> b!821792 (= e!456830 (not e!456834))))

(declare-fun res!560654 () Bool)

(assert (=> b!821792 (=> res!560654 e!456834)))

(assert (=> b!821792 (= res!560654 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!369463 () ListLongMap!8617)

(assert (=> b!821792 (= lt!369461 lt!369463)))

(declare-datatypes ((Unit!28092 0))(
  ( (Unit!28093) )
))
(declare-fun lt!369462 () Unit!28092)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!469 (array!45622 array!45620 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24645 V!24645 V!24645 V!24645 (_ BitVec 32) Int) Unit!28092)

(assert (=> b!821792 (= lt!369462 (lemmaNoChangeToArrayThenSameMapNoExtras!469 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2353 (array!45622 array!45620 (_ BitVec 32) (_ BitVec 32) V!24645 V!24645 (_ BitVec 32) Int) ListLongMap!8617)

(assert (=> b!821792 (= lt!369463 (getCurrentListMapNoExtraKeys!2353 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821792 (= lt!369461 (getCurrentListMapNoExtraKeys!2353 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821793 () Bool)

(declare-fun res!560657 () Bool)

(assert (=> b!821793 (=> (not res!560657) (not e!456830))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45622 (_ BitVec 32)) Bool)

(assert (=> b!821793 (= res!560657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!821794 () Bool)

(declare-fun e!456832 () Bool)

(assert (=> b!821794 (= e!456832 tp_is_empty!14733)))

(declare-fun b!821795 () Bool)

(declare-fun res!560653 () Bool)

(assert (=> b!821795 (=> (not res!560653) (not e!456830))))

(assert (=> b!821795 (= res!560653 (and (= (size!22277 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22278 _keys!976) (size!22277 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!23710 () Bool)

(declare-fun tp!45814 () Bool)

(assert (=> mapNonEmpty!23710 (= mapRes!23710 (and tp!45814 e!456832))))

(declare-fun mapKey!23710 () (_ BitVec 32))

(declare-fun mapRest!23710 () (Array (_ BitVec 32) ValueCell!6951))

(declare-fun mapValue!23710 () ValueCell!6951)

(assert (=> mapNonEmpty!23710 (= (arr!21856 _values!788) (store mapRest!23710 mapKey!23710 mapValue!23710))))

(assert (= (and start!70790 res!560655) b!821795))

(assert (= (and b!821795 res!560653) b!821793))

(assert (= (and b!821793 res!560657) b!821788))

(assert (= (and b!821788 res!560652) b!821792))

(assert (= (and b!821792 (not res!560654)) b!821789))

(assert (= (and b!821789 res!560656) b!821791))

(assert (= (and b!821787 condMapEmpty!23710) mapIsEmpty!23710))

(assert (= (and b!821787 (not condMapEmpty!23710)) mapNonEmpty!23710))

(get-info :version)

(assert (= (and mapNonEmpty!23710 ((_ is ValueCellFull!6951) mapValue!23710)) b!821794))

(assert (= (and b!821787 ((_ is ValueCellFull!6951) mapDefault!23710)) b!821790))

(assert (= start!70790 b!821787))

(declare-fun m!763583 () Bool)

(assert (=> b!821791 m!763583))

(assert (=> b!821791 m!763583))

(declare-fun m!763585 () Bool)

(assert (=> b!821791 m!763585))

(declare-fun m!763587 () Bool)

(assert (=> b!821789 m!763587))

(declare-fun m!763589 () Bool)

(assert (=> b!821789 m!763589))

(declare-fun m!763591 () Bool)

(assert (=> b!821789 m!763591))

(declare-fun m!763593 () Bool)

(assert (=> mapNonEmpty!23710 m!763593))

(declare-fun m!763595 () Bool)

(assert (=> b!821793 m!763595))

(declare-fun m!763597 () Bool)

(assert (=> b!821788 m!763597))

(declare-fun m!763599 () Bool)

(assert (=> b!821792 m!763599))

(declare-fun m!763601 () Bool)

(assert (=> b!821792 m!763601))

(declare-fun m!763603 () Bool)

(assert (=> b!821792 m!763603))

(declare-fun m!763605 () Bool)

(assert (=> start!70790 m!763605))

(declare-fun m!763607 () Bool)

(assert (=> start!70790 m!763607))

(declare-fun m!763609 () Bool)

(assert (=> start!70790 m!763609))

(check-sat (not b!821792) (not b!821791) (not start!70790) tp_is_empty!14733 (not b!821793) (not b!821788) (not b!821789) b_and!21913 (not b_next!13023) (not mapNonEmpty!23710))
(check-sat b_and!21913 (not b_next!13023))
