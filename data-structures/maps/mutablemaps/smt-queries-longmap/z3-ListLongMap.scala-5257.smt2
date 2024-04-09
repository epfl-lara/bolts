; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70688 () Bool)

(assert start!70688)

(declare-fun b_free!12951 () Bool)

(declare-fun b_next!12951 () Bool)

(assert (=> start!70688 (= b_free!12951 (not b_next!12951))))

(declare-fun tp!45591 () Bool)

(declare-fun b_and!21823 () Bool)

(assert (=> start!70688 (= tp!45591 b_and!21823)))

(declare-fun b!820707 () Bool)

(declare-fun e!456054 () Bool)

(assert (=> b!820707 (= e!456054 (not true))))

(declare-datatypes ((V!24549 0))(
  ( (V!24550 (val!7378 Int)) )
))
(declare-datatypes ((tuple2!9726 0))(
  ( (tuple2!9727 (_1!4873 (_ BitVec 64)) (_2!4873 V!24549)) )
))
(declare-datatypes ((List!15585 0))(
  ( (Nil!15582) (Cons!15581 (h!16710 tuple2!9726) (t!21926 List!15585)) )
))
(declare-datatypes ((ListLongMap!8563 0))(
  ( (ListLongMap!8564 (toList!4297 List!15585)) )
))
(declare-fun lt!368894 () ListLongMap!8563)

(declare-fun lt!368893 () ListLongMap!8563)

(assert (=> b!820707 (= lt!368894 lt!368893)))

(declare-fun zeroValueBefore!34 () V!24549)

(declare-datatypes ((array!45484 0))(
  ( (array!45485 (arr!21790 (Array (_ BitVec 32) (_ BitVec 64))) (size!22211 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45484)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24549)

(declare-fun minValue!754 () V!24549)

(declare-datatypes ((ValueCell!6915 0))(
  ( (ValueCellFull!6915 (v!9805 V!24549)) (EmptyCell!6915) )
))
(declare-datatypes ((array!45486 0))(
  ( (array!45487 (arr!21791 (Array (_ BitVec 32) ValueCell!6915)) (size!22212 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45486)

(declare-datatypes ((Unit!28047 0))(
  ( (Unit!28048) )
))
(declare-fun lt!368895 () Unit!28047)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!447 (array!45484 array!45486 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24549 V!24549 V!24549 V!24549 (_ BitVec 32) Int) Unit!28047)

(assert (=> b!820707 (= lt!368895 (lemmaNoChangeToArrayThenSameMapNoExtras!447 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2331 (array!45484 array!45486 (_ BitVec 32) (_ BitVec 32) V!24549 V!24549 (_ BitVec 32) Int) ListLongMap!8563)

(assert (=> b!820707 (= lt!368893 (getCurrentListMapNoExtraKeys!2331 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!820707 (= lt!368894 (getCurrentListMapNoExtraKeys!2331 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!820708 () Bool)

(declare-fun res!560040 () Bool)

(assert (=> b!820708 (=> (not res!560040) (not e!456054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45484 (_ BitVec 32)) Bool)

(assert (=> b!820708 (= res!560040 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!820709 () Bool)

(declare-fun e!456053 () Bool)

(declare-fun e!456051 () Bool)

(declare-fun mapRes!23596 () Bool)

(assert (=> b!820709 (= e!456053 (and e!456051 mapRes!23596))))

(declare-fun condMapEmpty!23596 () Bool)

(declare-fun mapDefault!23596 () ValueCell!6915)

(assert (=> b!820709 (= condMapEmpty!23596 (= (arr!21791 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6915)) mapDefault!23596)))))

(declare-fun mapIsEmpty!23596 () Bool)

(assert (=> mapIsEmpty!23596 mapRes!23596))

(declare-fun b!820710 () Bool)

(declare-fun tp_is_empty!14661 () Bool)

(assert (=> b!820710 (= e!456051 tp_is_empty!14661)))

(declare-fun b!820711 () Bool)

(declare-fun res!560043 () Bool)

(assert (=> b!820711 (=> (not res!560043) (not e!456054))))

(assert (=> b!820711 (= res!560043 (and (= (size!22212 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22211 _keys!976) (size!22212 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!820712 () Bool)

(declare-fun res!560041 () Bool)

(assert (=> b!820712 (=> (not res!560041) (not e!456054))))

(declare-datatypes ((List!15586 0))(
  ( (Nil!15583) (Cons!15582 (h!16711 (_ BitVec 64)) (t!21927 List!15586)) )
))
(declare-fun arrayNoDuplicates!0 (array!45484 (_ BitVec 32) List!15586) Bool)

(assert (=> b!820712 (= res!560041 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15583))))

(declare-fun b!820713 () Bool)

(declare-fun e!456050 () Bool)

(assert (=> b!820713 (= e!456050 tp_is_empty!14661)))

(declare-fun mapNonEmpty!23596 () Bool)

(declare-fun tp!45592 () Bool)

(assert (=> mapNonEmpty!23596 (= mapRes!23596 (and tp!45592 e!456050))))

(declare-fun mapKey!23596 () (_ BitVec 32))

(declare-fun mapRest!23596 () (Array (_ BitVec 32) ValueCell!6915))

(declare-fun mapValue!23596 () ValueCell!6915)

(assert (=> mapNonEmpty!23596 (= (arr!21791 _values!788) (store mapRest!23596 mapKey!23596 mapValue!23596))))

(declare-fun res!560042 () Bool)

(assert (=> start!70688 (=> (not res!560042) (not e!456054))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70688 (= res!560042 (validMask!0 mask!1312))))

(assert (=> start!70688 e!456054))

(assert (=> start!70688 tp_is_empty!14661))

(declare-fun array_inv!17383 (array!45484) Bool)

(assert (=> start!70688 (array_inv!17383 _keys!976)))

(assert (=> start!70688 true))

(declare-fun array_inv!17384 (array!45486) Bool)

(assert (=> start!70688 (and (array_inv!17384 _values!788) e!456053)))

(assert (=> start!70688 tp!45591))

(assert (= (and start!70688 res!560042) b!820711))

(assert (= (and b!820711 res!560043) b!820708))

(assert (= (and b!820708 res!560040) b!820712))

(assert (= (and b!820712 res!560041) b!820707))

(assert (= (and b!820709 condMapEmpty!23596) mapIsEmpty!23596))

(assert (= (and b!820709 (not condMapEmpty!23596)) mapNonEmpty!23596))

(get-info :version)

(assert (= (and mapNonEmpty!23596 ((_ is ValueCellFull!6915) mapValue!23596)) b!820713))

(assert (= (and b!820709 ((_ is ValueCellFull!6915) mapDefault!23596)) b!820710))

(assert (= start!70688 b!820709))

(declare-fun m!762693 () Bool)

(assert (=> start!70688 m!762693))

(declare-fun m!762695 () Bool)

(assert (=> start!70688 m!762695))

(declare-fun m!762697 () Bool)

(assert (=> start!70688 m!762697))

(declare-fun m!762699 () Bool)

(assert (=> b!820707 m!762699))

(declare-fun m!762701 () Bool)

(assert (=> b!820707 m!762701))

(declare-fun m!762703 () Bool)

(assert (=> b!820707 m!762703))

(declare-fun m!762705 () Bool)

(assert (=> b!820712 m!762705))

(declare-fun m!762707 () Bool)

(assert (=> mapNonEmpty!23596 m!762707))

(declare-fun m!762709 () Bool)

(assert (=> b!820708 m!762709))

(check-sat b_and!21823 (not b_next!12951) (not b!820708) (not b!820707) (not mapNonEmpty!23596) tp_is_empty!14661 (not b!820712) (not start!70688))
(check-sat b_and!21823 (not b_next!12951))
