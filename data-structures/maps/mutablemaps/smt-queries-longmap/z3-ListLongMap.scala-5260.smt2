; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70720 () Bool)

(assert start!70720)

(declare-fun b_free!12969 () Bool)

(declare-fun b_next!12969 () Bool)

(assert (=> start!70720 (= b_free!12969 (not b_next!12969))))

(declare-fun tp!45649 () Bool)

(declare-fun b_and!21849 () Bool)

(assert (=> start!70720 (= tp!45649 b_and!21849)))

(declare-fun mapNonEmpty!23626 () Bool)

(declare-fun mapRes!23626 () Bool)

(declare-fun tp!45648 () Bool)

(declare-fun e!456249 () Bool)

(assert (=> mapNonEmpty!23626 (= mapRes!23626 (and tp!45648 e!456249))))

(declare-datatypes ((V!24573 0))(
  ( (V!24574 (val!7387 Int)) )
))
(declare-datatypes ((ValueCell!6924 0))(
  ( (ValueCellFull!6924 (v!9814 V!24573)) (EmptyCell!6924) )
))
(declare-datatypes ((array!45516 0))(
  ( (array!45517 (arr!21805 (Array (_ BitVec 32) ValueCell!6924)) (size!22226 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45516)

(declare-fun mapRest!23626 () (Array (_ BitVec 32) ValueCell!6924))

(declare-fun mapKey!23626 () (_ BitVec 32))

(declare-fun mapValue!23626 () ValueCell!6924)

(assert (=> mapNonEmpty!23626 (= (arr!21805 _values!788) (store mapRest!23626 mapKey!23626 mapValue!23626))))

(declare-fun b!820986 () Bool)

(declare-fun e!456245 () Bool)

(declare-fun e!456248 () Bool)

(assert (=> b!820986 (= e!456245 (not e!456248))))

(declare-fun res!560185 () Bool)

(assert (=> b!820986 (=> res!560185 e!456248)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!820986 (= res!560185 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9736 0))(
  ( (tuple2!9737 (_1!4878 (_ BitVec 64)) (_2!4878 V!24573)) )
))
(declare-datatypes ((List!15596 0))(
  ( (Nil!15593) (Cons!15592 (h!16721 tuple2!9736) (t!21939 List!15596)) )
))
(declare-datatypes ((ListLongMap!8573 0))(
  ( (ListLongMap!8574 (toList!4302 List!15596)) )
))
(declare-fun lt!369022 () ListLongMap!8573)

(declare-fun lt!369021 () ListLongMap!8573)

(assert (=> b!820986 (= lt!369022 lt!369021)))

(declare-datatypes ((Unit!28057 0))(
  ( (Unit!28058) )
))
(declare-fun lt!369019 () Unit!28057)

(declare-fun zeroValueBefore!34 () V!24573)

(declare-datatypes ((array!45518 0))(
  ( (array!45519 (arr!21806 (Array (_ BitVec 32) (_ BitVec 64))) (size!22227 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45518)

(declare-fun zeroValueAfter!34 () V!24573)

(declare-fun minValue!754 () V!24573)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!452 (array!45518 array!45516 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24573 V!24573 V!24573 V!24573 (_ BitVec 32) Int) Unit!28057)

(assert (=> b!820986 (= lt!369019 (lemmaNoChangeToArrayThenSameMapNoExtras!452 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2336 (array!45518 array!45516 (_ BitVec 32) (_ BitVec 32) V!24573 V!24573 (_ BitVec 32) Int) ListLongMap!8573)

(assert (=> b!820986 (= lt!369021 (getCurrentListMapNoExtraKeys!2336 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!820986 (= lt!369022 (getCurrentListMapNoExtraKeys!2336 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!820987 () Bool)

(declare-fun e!456247 () Bool)

(declare-fun e!456246 () Bool)

(assert (=> b!820987 (= e!456247 (and e!456246 mapRes!23626))))

(declare-fun condMapEmpty!23626 () Bool)

(declare-fun mapDefault!23626 () ValueCell!6924)

(assert (=> b!820987 (= condMapEmpty!23626 (= (arr!21805 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6924)) mapDefault!23626)))))

(declare-fun b!820988 () Bool)

(declare-fun res!560188 () Bool)

(assert (=> b!820988 (=> (not res!560188) (not e!456245))))

(assert (=> b!820988 (= res!560188 (and (= (size!22226 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22227 _keys!976) (size!22226 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!820989 () Bool)

(declare-fun res!560186 () Bool)

(assert (=> b!820989 (=> (not res!560186) (not e!456245))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45518 (_ BitVec 32)) Bool)

(assert (=> b!820989 (= res!560186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!560184 () Bool)

(assert (=> start!70720 (=> (not res!560184) (not e!456245))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70720 (= res!560184 (validMask!0 mask!1312))))

(assert (=> start!70720 e!456245))

(declare-fun tp_is_empty!14679 () Bool)

(assert (=> start!70720 tp_is_empty!14679))

(declare-fun array_inv!17393 (array!45518) Bool)

(assert (=> start!70720 (array_inv!17393 _keys!976)))

(assert (=> start!70720 true))

(declare-fun array_inv!17394 (array!45516) Bool)

(assert (=> start!70720 (and (array_inv!17394 _values!788) e!456247)))

(assert (=> start!70720 tp!45649))

(declare-fun b!820990 () Bool)

(assert (=> b!820990 (= e!456246 tp_is_empty!14679)))

(declare-fun b!820991 () Bool)

(declare-fun res!560187 () Bool)

(assert (=> b!820991 (=> (not res!560187) (not e!456245))))

(declare-datatypes ((List!15597 0))(
  ( (Nil!15594) (Cons!15593 (h!16722 (_ BitVec 64)) (t!21940 List!15597)) )
))
(declare-fun arrayNoDuplicates!0 (array!45518 (_ BitVec 32) List!15597) Bool)

(assert (=> b!820991 (= res!560187 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15594))))

(declare-fun mapIsEmpty!23626 () Bool)

(assert (=> mapIsEmpty!23626 mapRes!23626))

(declare-fun b!820992 () Bool)

(assert (=> b!820992 (= e!456249 tp_is_empty!14679)))

(declare-fun b!820993 () Bool)

(assert (=> b!820993 (= e!456248 true)))

(declare-fun lt!369020 () ListLongMap!8573)

(declare-fun getCurrentListMap!2437 (array!45518 array!45516 (_ BitVec 32) (_ BitVec 32) V!24573 V!24573 (_ BitVec 32) Int) ListLongMap!8573)

(assert (=> b!820993 (= lt!369020 (getCurrentListMap!2437 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!70720 res!560184) b!820988))

(assert (= (and b!820988 res!560188) b!820989))

(assert (= (and b!820989 res!560186) b!820991))

(assert (= (and b!820991 res!560187) b!820986))

(assert (= (and b!820986 (not res!560185)) b!820993))

(assert (= (and b!820987 condMapEmpty!23626) mapIsEmpty!23626))

(assert (= (and b!820987 (not condMapEmpty!23626)) mapNonEmpty!23626))

(get-info :version)

(assert (= (and mapNonEmpty!23626 ((_ is ValueCellFull!6924) mapValue!23626)) b!820992))

(assert (= (and b!820987 ((_ is ValueCellFull!6924) mapDefault!23626)) b!820990))

(assert (= start!70720 b!820987))

(declare-fun m!762923 () Bool)

(assert (=> start!70720 m!762923))

(declare-fun m!762925 () Bool)

(assert (=> start!70720 m!762925))

(declare-fun m!762927 () Bool)

(assert (=> start!70720 m!762927))

(declare-fun m!762929 () Bool)

(assert (=> b!820991 m!762929))

(declare-fun m!762931 () Bool)

(assert (=> b!820986 m!762931))

(declare-fun m!762933 () Bool)

(assert (=> b!820986 m!762933))

(declare-fun m!762935 () Bool)

(assert (=> b!820986 m!762935))

(declare-fun m!762937 () Bool)

(assert (=> mapNonEmpty!23626 m!762937))

(declare-fun m!762939 () Bool)

(assert (=> b!820989 m!762939))

(declare-fun m!762941 () Bool)

(assert (=> b!820993 m!762941))

(check-sat b_and!21849 (not b_next!12969) (not start!70720) (not b!820986) (not b!820989) (not b!820991) (not mapNonEmpty!23626) tp_is_empty!14679 (not b!820993))
(check-sat b_and!21849 (not b_next!12969))
