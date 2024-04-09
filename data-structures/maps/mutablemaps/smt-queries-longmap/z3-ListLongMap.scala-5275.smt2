; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70826 () Bool)

(assert start!70826)

(declare-fun b_free!13059 () Bool)

(declare-fun b_next!13059 () Bool)

(assert (=> start!70826 (= b_free!13059 (not b_next!13059))))

(declare-fun tp!45921 () Bool)

(declare-fun b_and!21949 () Bool)

(assert (=> start!70826 (= tp!45921 b_and!21949)))

(declare-fun b!822223 () Bool)

(declare-fun e!457162 () Bool)

(assert (=> b!822223 (= e!457162 true)))

(declare-datatypes ((V!24693 0))(
  ( (V!24694 (val!7432 Int)) )
))
(declare-datatypes ((tuple2!9806 0))(
  ( (tuple2!9807 (_1!4913 (_ BitVec 64)) (_2!4913 V!24693)) )
))
(declare-datatypes ((List!15667 0))(
  ( (Nil!15664) (Cons!15663 (h!16792 tuple2!9806) (t!22012 List!15667)) )
))
(declare-datatypes ((ListLongMap!8643 0))(
  ( (ListLongMap!8644 (toList!4337 List!15667)) )
))
(declare-fun lt!369992 () ListLongMap!8643)

(declare-fun lt!369988 () ListLongMap!8643)

(declare-fun lt!369989 () tuple2!9806)

(declare-fun +!1841 (ListLongMap!8643 tuple2!9806) ListLongMap!8643)

(assert (=> b!822223 (= lt!369992 (+!1841 lt!369988 lt!369989))))

(declare-fun lt!369990 () ListLongMap!8643)

(declare-fun zeroValueAfter!34 () V!24693)

(declare-fun minValue!754 () V!24693)

(declare-datatypes ((Unit!28116 0))(
  ( (Unit!28117) )
))
(declare-fun lt!369984 () Unit!28116)

(declare-fun addCommutativeForDiffKeys!436 (ListLongMap!8643 (_ BitVec 64) V!24693 (_ BitVec 64) V!24693) Unit!28116)

(assert (=> b!822223 (= lt!369984 (addCommutativeForDiffKeys!436 lt!369990 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!369987 () ListLongMap!8643)

(assert (=> b!822223 (= lt!369987 lt!369992)))

(declare-fun lt!369991 () tuple2!9806)

(assert (=> b!822223 (= lt!369992 (+!1841 (+!1841 lt!369990 lt!369989) lt!369991))))

(assert (=> b!822223 (= lt!369989 (tuple2!9807 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!369985 () ListLongMap!8643)

(assert (=> b!822223 (= lt!369985 lt!369988)))

(assert (=> b!822223 (= lt!369988 (+!1841 lt!369990 lt!369991))))

(assert (=> b!822223 (= lt!369991 (tuple2!9807 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-datatypes ((array!45690 0))(
  ( (array!45691 (arr!21891 (Array (_ BitVec 32) (_ BitVec 64))) (size!22312 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45690)

(declare-datatypes ((ValueCell!6969 0))(
  ( (ValueCellFull!6969 (v!9859 V!24693)) (EmptyCell!6969) )
))
(declare-datatypes ((array!45692 0))(
  ( (array!45693 (arr!21892 (Array (_ BitVec 32) ValueCell!6969)) (size!22313 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45692)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2471 (array!45690 array!45692 (_ BitVec 32) (_ BitVec 32) V!24693 V!24693 (_ BitVec 32) Int) ListLongMap!8643)

(assert (=> b!822223 (= lt!369987 (getCurrentListMap!2471 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24693)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822223 (= lt!369985 (getCurrentListMap!2471 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!560930 () Bool)

(declare-fun e!457158 () Bool)

(assert (=> start!70826 (=> (not res!560930) (not e!457158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70826 (= res!560930 (validMask!0 mask!1312))))

(assert (=> start!70826 e!457158))

(declare-fun tp_is_empty!14769 () Bool)

(assert (=> start!70826 tp_is_empty!14769))

(declare-fun array_inv!17453 (array!45690) Bool)

(assert (=> start!70826 (array_inv!17453 _keys!976)))

(assert (=> start!70826 true))

(declare-fun e!457161 () Bool)

(declare-fun array_inv!17454 (array!45692) Bool)

(assert (=> start!70826 (and (array_inv!17454 _values!788) e!457161)))

(assert (=> start!70826 tp!45921))

(declare-fun mapNonEmpty!23764 () Bool)

(declare-fun mapRes!23764 () Bool)

(declare-fun tp!45922 () Bool)

(declare-fun e!457163 () Bool)

(assert (=> mapNonEmpty!23764 (= mapRes!23764 (and tp!45922 e!457163))))

(declare-fun mapValue!23764 () ValueCell!6969)

(declare-fun mapKey!23764 () (_ BitVec 32))

(declare-fun mapRest!23764 () (Array (_ BitVec 32) ValueCell!6969))

(assert (=> mapNonEmpty!23764 (= (arr!21892 _values!788) (store mapRest!23764 mapKey!23764 mapValue!23764))))

(declare-fun b!822224 () Bool)

(declare-fun e!457159 () Bool)

(assert (=> b!822224 (= e!457159 tp_is_empty!14769)))

(declare-fun b!822225 () Bool)

(declare-fun res!560928 () Bool)

(assert (=> b!822225 (=> (not res!560928) (not e!457158))))

(assert (=> b!822225 (= res!560928 (and (= (size!22313 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22312 _keys!976) (size!22313 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822226 () Bool)

(declare-fun res!560927 () Bool)

(assert (=> b!822226 (=> (not res!560927) (not e!457158))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45690 (_ BitVec 32)) Bool)

(assert (=> b!822226 (= res!560927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!822227 () Bool)

(assert (=> b!822227 (= e!457161 (and e!457159 mapRes!23764))))

(declare-fun condMapEmpty!23764 () Bool)

(declare-fun mapDefault!23764 () ValueCell!6969)

(assert (=> b!822227 (= condMapEmpty!23764 (= (arr!21892 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6969)) mapDefault!23764)))))

(declare-fun b!822228 () Bool)

(assert (=> b!822228 (= e!457163 tp_is_empty!14769)))

(declare-fun mapIsEmpty!23764 () Bool)

(assert (=> mapIsEmpty!23764 mapRes!23764))

(declare-fun b!822229 () Bool)

(assert (=> b!822229 (= e!457158 (not e!457162))))

(declare-fun res!560929 () Bool)

(assert (=> b!822229 (=> res!560929 e!457162)))

(assert (=> b!822229 (= res!560929 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!369983 () ListLongMap!8643)

(assert (=> b!822229 (= lt!369990 lt!369983)))

(declare-fun lt!369986 () Unit!28116)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!479 (array!45690 array!45692 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24693 V!24693 V!24693 V!24693 (_ BitVec 32) Int) Unit!28116)

(assert (=> b!822229 (= lt!369986 (lemmaNoChangeToArrayThenSameMapNoExtras!479 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2363 (array!45690 array!45692 (_ BitVec 32) (_ BitVec 32) V!24693 V!24693 (_ BitVec 32) Int) ListLongMap!8643)

(assert (=> b!822229 (= lt!369983 (getCurrentListMapNoExtraKeys!2363 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822229 (= lt!369990 (getCurrentListMapNoExtraKeys!2363 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822230 () Bool)

(declare-fun res!560926 () Bool)

(assert (=> b!822230 (=> (not res!560926) (not e!457158))))

(declare-datatypes ((List!15668 0))(
  ( (Nil!15665) (Cons!15664 (h!16793 (_ BitVec 64)) (t!22013 List!15668)) )
))
(declare-fun arrayNoDuplicates!0 (array!45690 (_ BitVec 32) List!15668) Bool)

(assert (=> b!822230 (= res!560926 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15665))))

(assert (= (and start!70826 res!560930) b!822225))

(assert (= (and b!822225 res!560928) b!822226))

(assert (= (and b!822226 res!560927) b!822230))

(assert (= (and b!822230 res!560926) b!822229))

(assert (= (and b!822229 (not res!560929)) b!822223))

(assert (= (and b!822227 condMapEmpty!23764) mapIsEmpty!23764))

(assert (= (and b!822227 (not condMapEmpty!23764)) mapNonEmpty!23764))

(get-info :version)

(assert (= (and mapNonEmpty!23764 ((_ is ValueCellFull!6969) mapValue!23764)) b!822228))

(assert (= (and b!822227 ((_ is ValueCellFull!6969) mapDefault!23764)) b!822224))

(assert (= start!70826 b!822227))

(declare-fun m!764151 () Bool)

(assert (=> b!822226 m!764151))

(declare-fun m!764153 () Bool)

(assert (=> b!822230 m!764153))

(declare-fun m!764155 () Bool)

(assert (=> start!70826 m!764155))

(declare-fun m!764157 () Bool)

(assert (=> start!70826 m!764157))

(declare-fun m!764159 () Bool)

(assert (=> start!70826 m!764159))

(declare-fun m!764161 () Bool)

(assert (=> b!822223 m!764161))

(declare-fun m!764163 () Bool)

(assert (=> b!822223 m!764163))

(declare-fun m!764165 () Bool)

(assert (=> b!822223 m!764165))

(declare-fun m!764167 () Bool)

(assert (=> b!822223 m!764167))

(assert (=> b!822223 m!764163))

(declare-fun m!764169 () Bool)

(assert (=> b!822223 m!764169))

(declare-fun m!764171 () Bool)

(assert (=> b!822223 m!764171))

(declare-fun m!764173 () Bool)

(assert (=> b!822223 m!764173))

(declare-fun m!764175 () Bool)

(assert (=> b!822229 m!764175))

(declare-fun m!764177 () Bool)

(assert (=> b!822229 m!764177))

(declare-fun m!764179 () Bool)

(assert (=> b!822229 m!764179))

(declare-fun m!764181 () Bool)

(assert (=> mapNonEmpty!23764 m!764181))

(check-sat (not b!822230) tp_is_empty!14769 (not b_next!13059) b_and!21949 (not mapNonEmpty!23764) (not b!822229) (not b!822226) (not b!822223) (not start!70826))
(check-sat b_and!21949 (not b_next!13059))
