; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70906 () Bool)

(assert start!70906)

(declare-fun b_free!13119 () Bool)

(declare-fun b_next!13119 () Bool)

(assert (=> start!70906 (= b_free!13119 (not b_next!13119))))

(declare-fun tp!46105 () Bool)

(declare-fun b_and!22021 () Bool)

(assert (=> start!70906 (= tp!46105 b_and!22021)))

(declare-fun b!823124 () Bool)

(declare-fun res!561457 () Bool)

(declare-fun e!457811 () Bool)

(assert (=> b!823124 (=> (not res!561457) (not e!457811))))

(declare-datatypes ((array!45810 0))(
  ( (array!45811 (arr!21950 (Array (_ BitVec 32) (_ BitVec 64))) (size!22371 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45810)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24773 0))(
  ( (V!24774 (val!7462 Int)) )
))
(declare-datatypes ((ValueCell!6999 0))(
  ( (ValueCellFull!6999 (v!9890 V!24773)) (EmptyCell!6999) )
))
(declare-datatypes ((array!45812 0))(
  ( (array!45813 (arr!21951 (Array (_ BitVec 32) ValueCell!6999)) (size!22372 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45812)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!823124 (= res!561457 (and (= (size!22372 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22371 _keys!976) (size!22372 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!823125 () Bool)

(declare-fun e!457814 () Bool)

(declare-fun e!457813 () Bool)

(declare-fun mapRes!23857 () Bool)

(assert (=> b!823125 (= e!457814 (and e!457813 mapRes!23857))))

(declare-fun condMapEmpty!23857 () Bool)

(declare-fun mapDefault!23857 () ValueCell!6999)

(assert (=> b!823125 (= condMapEmpty!23857 (= (arr!21951 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6999)) mapDefault!23857)))))

(declare-fun mapIsEmpty!23857 () Bool)

(assert (=> mapIsEmpty!23857 mapRes!23857))

(declare-fun b!823126 () Bool)

(declare-fun e!457812 () Bool)

(assert (=> b!823126 (= e!457812 true)))

(declare-datatypes ((tuple2!9860 0))(
  ( (tuple2!9861 (_1!4940 (_ BitVec 64)) (_2!4940 V!24773)) )
))
(declare-datatypes ((List!15718 0))(
  ( (Nil!15715) (Cons!15714 (h!16843 tuple2!9860) (t!22065 List!15718)) )
))
(declare-datatypes ((ListLongMap!8697 0))(
  ( (ListLongMap!8698 (toList!4364 List!15718)) )
))
(declare-fun lt!371039 () ListLongMap!8697)

(declare-fun lt!371043 () ListLongMap!8697)

(declare-fun lt!371042 () tuple2!9860)

(declare-fun +!1866 (ListLongMap!8697 tuple2!9860) ListLongMap!8697)

(assert (=> b!823126 (= lt!371039 (+!1866 lt!371043 lt!371042))))

(declare-fun zeroValueAfter!34 () V!24773)

(declare-fun minValue!754 () V!24773)

(declare-fun lt!371041 () ListLongMap!8697)

(declare-datatypes ((Unit!28172 0))(
  ( (Unit!28173) )
))
(declare-fun lt!371047 () Unit!28172)

(declare-fun addCommutativeForDiffKeys!461 (ListLongMap!8697 (_ BitVec 64) V!24773 (_ BitVec 64) V!24773) Unit!28172)

(assert (=> b!823126 (= lt!371047 (addCommutativeForDiffKeys!461 lt!371041 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!371044 () ListLongMap!8697)

(assert (=> b!823126 (= lt!371044 lt!371039)))

(declare-fun lt!371038 () tuple2!9860)

(assert (=> b!823126 (= lt!371039 (+!1866 (+!1866 lt!371041 lt!371042) lt!371038))))

(assert (=> b!823126 (= lt!371042 (tuple2!9861 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!371040 () ListLongMap!8697)

(assert (=> b!823126 (= lt!371040 lt!371043)))

(assert (=> b!823126 (= lt!371043 (+!1866 lt!371041 lt!371038))))

(assert (=> b!823126 (= lt!371038 (tuple2!9861 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2496 (array!45810 array!45812 (_ BitVec 32) (_ BitVec 32) V!24773 V!24773 (_ BitVec 32) Int) ListLongMap!8697)

(assert (=> b!823126 (= lt!371044 (getCurrentListMap!2496 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24773)

(assert (=> b!823126 (= lt!371040 (getCurrentListMap!2496 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823127 () Bool)

(declare-fun tp_is_empty!14829 () Bool)

(assert (=> b!823127 (= e!457813 tp_is_empty!14829)))

(declare-fun b!823128 () Bool)

(assert (=> b!823128 (= e!457811 (not e!457812))))

(declare-fun res!561455 () Bool)

(assert (=> b!823128 (=> res!561455 e!457812)))

(assert (=> b!823128 (= res!561455 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!371045 () ListLongMap!8697)

(assert (=> b!823128 (= lt!371041 lt!371045)))

(declare-fun lt!371046 () Unit!28172)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!502 (array!45810 array!45812 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24773 V!24773 V!24773 V!24773 (_ BitVec 32) Int) Unit!28172)

(assert (=> b!823128 (= lt!371046 (lemmaNoChangeToArrayThenSameMapNoExtras!502 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2386 (array!45810 array!45812 (_ BitVec 32) (_ BitVec 32) V!24773 V!24773 (_ BitVec 32) Int) ListLongMap!8697)

(assert (=> b!823128 (= lt!371045 (getCurrentListMapNoExtraKeys!2386 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823128 (= lt!371041 (getCurrentListMapNoExtraKeys!2386 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823129 () Bool)

(declare-fun res!561456 () Bool)

(assert (=> b!823129 (=> (not res!561456) (not e!457811))))

(declare-datatypes ((List!15719 0))(
  ( (Nil!15716) (Cons!15715 (h!16844 (_ BitVec 64)) (t!22066 List!15719)) )
))
(declare-fun arrayNoDuplicates!0 (array!45810 (_ BitVec 32) List!15719) Bool)

(assert (=> b!823129 (= res!561456 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15716))))

(declare-fun b!823130 () Bool)

(declare-fun e!457815 () Bool)

(assert (=> b!823130 (= e!457815 tp_is_empty!14829)))

(declare-fun b!823131 () Bool)

(declare-fun res!561458 () Bool)

(assert (=> b!823131 (=> (not res!561458) (not e!457811))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45810 (_ BitVec 32)) Bool)

(assert (=> b!823131 (= res!561458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!561459 () Bool)

(assert (=> start!70906 (=> (not res!561459) (not e!457811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70906 (= res!561459 (validMask!0 mask!1312))))

(assert (=> start!70906 e!457811))

(assert (=> start!70906 tp_is_empty!14829))

(declare-fun array_inv!17495 (array!45810) Bool)

(assert (=> start!70906 (array_inv!17495 _keys!976)))

(assert (=> start!70906 true))

(declare-fun array_inv!17496 (array!45812) Bool)

(assert (=> start!70906 (and (array_inv!17496 _values!788) e!457814)))

(assert (=> start!70906 tp!46105))

(declare-fun mapNonEmpty!23857 () Bool)

(declare-fun tp!46104 () Bool)

(assert (=> mapNonEmpty!23857 (= mapRes!23857 (and tp!46104 e!457815))))

(declare-fun mapValue!23857 () ValueCell!6999)

(declare-fun mapRest!23857 () (Array (_ BitVec 32) ValueCell!6999))

(declare-fun mapKey!23857 () (_ BitVec 32))

(assert (=> mapNonEmpty!23857 (= (arr!21951 _values!788) (store mapRest!23857 mapKey!23857 mapValue!23857))))

(assert (= (and start!70906 res!561459) b!823124))

(assert (= (and b!823124 res!561457) b!823131))

(assert (= (and b!823131 res!561458) b!823129))

(assert (= (and b!823129 res!561456) b!823128))

(assert (= (and b!823128 (not res!561455)) b!823126))

(assert (= (and b!823125 condMapEmpty!23857) mapIsEmpty!23857))

(assert (= (and b!823125 (not condMapEmpty!23857)) mapNonEmpty!23857))

(get-info :version)

(assert (= (and mapNonEmpty!23857 ((_ is ValueCellFull!6999) mapValue!23857)) b!823130))

(assert (= (and b!823125 ((_ is ValueCellFull!6999) mapDefault!23857)) b!823127))

(assert (= start!70906 b!823125))

(declare-fun m!765327 () Bool)

(assert (=> b!823128 m!765327))

(declare-fun m!765329 () Bool)

(assert (=> b!823128 m!765329))

(declare-fun m!765331 () Bool)

(assert (=> b!823128 m!765331))

(declare-fun m!765333 () Bool)

(assert (=> b!823126 m!765333))

(declare-fun m!765335 () Bool)

(assert (=> b!823126 m!765335))

(assert (=> b!823126 m!765333))

(declare-fun m!765337 () Bool)

(assert (=> b!823126 m!765337))

(declare-fun m!765339 () Bool)

(assert (=> b!823126 m!765339))

(declare-fun m!765341 () Bool)

(assert (=> b!823126 m!765341))

(declare-fun m!765343 () Bool)

(assert (=> b!823126 m!765343))

(declare-fun m!765345 () Bool)

(assert (=> b!823126 m!765345))

(declare-fun m!765347 () Bool)

(assert (=> b!823129 m!765347))

(declare-fun m!765349 () Bool)

(assert (=> start!70906 m!765349))

(declare-fun m!765351 () Bool)

(assert (=> start!70906 m!765351))

(declare-fun m!765353 () Bool)

(assert (=> start!70906 m!765353))

(declare-fun m!765355 () Bool)

(assert (=> mapNonEmpty!23857 m!765355))

(declare-fun m!765357 () Bool)

(assert (=> b!823131 m!765357))

(check-sat (not b!823128) (not b!823129) (not b!823131) (not start!70906) tp_is_empty!14829 b_and!22021 (not mapNonEmpty!23857) (not b!823126) (not b_next!13119))
(check-sat b_and!22021 (not b_next!13119))
