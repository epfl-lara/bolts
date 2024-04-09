; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70894 () Bool)

(assert start!70894)

(declare-fun b_free!13107 () Bool)

(declare-fun b_next!13107 () Bool)

(assert (=> start!70894 (= b_free!13107 (not b_next!13107))))

(declare-fun tp!46068 () Bool)

(declare-fun b_and!22009 () Bool)

(assert (=> start!70894 (= tp!46068 b_and!22009)))

(declare-fun mapNonEmpty!23839 () Bool)

(declare-fun mapRes!23839 () Bool)

(declare-fun tp!46069 () Bool)

(declare-fun e!457707 () Bool)

(assert (=> mapNonEmpty!23839 (= mapRes!23839 (and tp!46069 e!457707))))

(declare-datatypes ((V!24757 0))(
  ( (V!24758 (val!7456 Int)) )
))
(declare-datatypes ((ValueCell!6993 0))(
  ( (ValueCellFull!6993 (v!9884 V!24757)) (EmptyCell!6993) )
))
(declare-datatypes ((array!45788 0))(
  ( (array!45789 (arr!21939 (Array (_ BitVec 32) ValueCell!6993)) (size!22360 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45788)

(declare-fun mapRest!23839 () (Array (_ BitVec 32) ValueCell!6993))

(declare-fun mapValue!23839 () ValueCell!6993)

(declare-fun mapKey!23839 () (_ BitVec 32))

(assert (=> mapNonEmpty!23839 (= (arr!21939 _values!788) (store mapRest!23839 mapKey!23839 mapValue!23839))))

(declare-fun b!822980 () Bool)

(declare-fun res!561365 () Bool)

(declare-fun e!457708 () Bool)

(assert (=> b!822980 (=> (not res!561365) (not e!457708))))

(declare-datatypes ((array!45790 0))(
  ( (array!45791 (arr!21940 (Array (_ BitVec 32) (_ BitVec 64))) (size!22361 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45790)

(declare-datatypes ((List!15708 0))(
  ( (Nil!15705) (Cons!15704 (h!16833 (_ BitVec 64)) (t!22055 List!15708)) )
))
(declare-fun arrayNoDuplicates!0 (array!45790 (_ BitVec 32) List!15708) Bool)

(assert (=> b!822980 (= res!561365 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15705))))

(declare-fun b!822981 () Bool)

(declare-fun e!457704 () Bool)

(declare-fun e!457703 () Bool)

(assert (=> b!822981 (= e!457704 (and e!457703 mapRes!23839))))

(declare-fun condMapEmpty!23839 () Bool)

(declare-fun mapDefault!23839 () ValueCell!6993)

(assert (=> b!822981 (= condMapEmpty!23839 (= (arr!21939 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6993)) mapDefault!23839)))))

(declare-fun b!822982 () Bool)

(declare-fun tp_is_empty!14817 () Bool)

(assert (=> b!822982 (= e!457703 tp_is_empty!14817)))

(declare-fun b!822983 () Bool)

(declare-fun e!457705 () Bool)

(assert (=> b!822983 (= e!457708 (not e!457705))))

(declare-fun res!561366 () Bool)

(assert (=> b!822983 (=> res!561366 e!457705)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822983 (= res!561366 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9850 0))(
  ( (tuple2!9851 (_1!4935 (_ BitVec 64)) (_2!4935 V!24757)) )
))
(declare-datatypes ((List!15709 0))(
  ( (Nil!15706) (Cons!15705 (h!16834 tuple2!9850) (t!22056 List!15709)) )
))
(declare-datatypes ((ListLongMap!8687 0))(
  ( (ListLongMap!8688 (toList!4359 List!15709)) )
))
(declare-fun lt!370862 () ListLongMap!8687)

(declare-fun lt!370863 () ListLongMap!8687)

(assert (=> b!822983 (= lt!370862 lt!370863)))

(declare-fun zeroValueBefore!34 () V!24757)

(declare-fun minValue!754 () V!24757)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueAfter!34 () V!24757)

(declare-datatypes ((Unit!28162 0))(
  ( (Unit!28163) )
))
(declare-fun lt!370861 () Unit!28162)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!498 (array!45790 array!45788 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24757 V!24757 V!24757 V!24757 (_ BitVec 32) Int) Unit!28162)

(assert (=> b!822983 (= lt!370861 (lemmaNoChangeToArrayThenSameMapNoExtras!498 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2382 (array!45790 array!45788 (_ BitVec 32) (_ BitVec 32) V!24757 V!24757 (_ BitVec 32) Int) ListLongMap!8687)

(assert (=> b!822983 (= lt!370863 (getCurrentListMapNoExtraKeys!2382 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822983 (= lt!370862 (getCurrentListMapNoExtraKeys!2382 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822984 () Bool)

(assert (=> b!822984 (= e!457705 true)))

(declare-fun lt!370859 () ListLongMap!8687)

(declare-fun lt!370867 () ListLongMap!8687)

(declare-fun lt!370860 () tuple2!9850)

(declare-fun +!1861 (ListLongMap!8687 tuple2!9850) ListLongMap!8687)

(assert (=> b!822984 (= lt!370859 (+!1861 lt!370867 lt!370860))))

(declare-fun lt!370866 () Unit!28162)

(declare-fun addCommutativeForDiffKeys!456 (ListLongMap!8687 (_ BitVec 64) V!24757 (_ BitVec 64) V!24757) Unit!28162)

(assert (=> b!822984 (= lt!370866 (addCommutativeForDiffKeys!456 lt!370862 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370864 () ListLongMap!8687)

(assert (=> b!822984 (= lt!370864 lt!370859)))

(declare-fun lt!370865 () tuple2!9850)

(assert (=> b!822984 (= lt!370859 (+!1861 (+!1861 lt!370862 lt!370860) lt!370865))))

(assert (=> b!822984 (= lt!370860 (tuple2!9851 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370858 () ListLongMap!8687)

(assert (=> b!822984 (= lt!370858 lt!370867)))

(assert (=> b!822984 (= lt!370867 (+!1861 lt!370862 lt!370865))))

(assert (=> b!822984 (= lt!370865 (tuple2!9851 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun getCurrentListMap!2491 (array!45790 array!45788 (_ BitVec 32) (_ BitVec 32) V!24757 V!24757 (_ BitVec 32) Int) ListLongMap!8687)

(assert (=> b!822984 (= lt!370864 (getCurrentListMap!2491 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822984 (= lt!370858 (getCurrentListMap!2491 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822985 () Bool)

(assert (=> b!822985 (= e!457707 tp_is_empty!14817)))

(declare-fun res!561367 () Bool)

(assert (=> start!70894 (=> (not res!561367) (not e!457708))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70894 (= res!561367 (validMask!0 mask!1312))))

(assert (=> start!70894 e!457708))

(assert (=> start!70894 tp_is_empty!14817))

(declare-fun array_inv!17487 (array!45790) Bool)

(assert (=> start!70894 (array_inv!17487 _keys!976)))

(assert (=> start!70894 true))

(declare-fun array_inv!17488 (array!45788) Bool)

(assert (=> start!70894 (and (array_inv!17488 _values!788) e!457704)))

(assert (=> start!70894 tp!46068))

(declare-fun mapIsEmpty!23839 () Bool)

(assert (=> mapIsEmpty!23839 mapRes!23839))

(declare-fun b!822986 () Bool)

(declare-fun res!561368 () Bool)

(assert (=> b!822986 (=> (not res!561368) (not e!457708))))

(assert (=> b!822986 (= res!561368 (and (= (size!22360 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22361 _keys!976) (size!22360 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822987 () Bool)

(declare-fun res!561369 () Bool)

(assert (=> b!822987 (=> (not res!561369) (not e!457708))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45790 (_ BitVec 32)) Bool)

(assert (=> b!822987 (= res!561369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!70894 res!561367) b!822986))

(assert (= (and b!822986 res!561368) b!822987))

(assert (= (and b!822987 res!561369) b!822980))

(assert (= (and b!822980 res!561365) b!822983))

(assert (= (and b!822983 (not res!561366)) b!822984))

(assert (= (and b!822981 condMapEmpty!23839) mapIsEmpty!23839))

(assert (= (and b!822981 (not condMapEmpty!23839)) mapNonEmpty!23839))

(get-info :version)

(assert (= (and mapNonEmpty!23839 ((_ is ValueCellFull!6993) mapValue!23839)) b!822985))

(assert (= (and b!822981 ((_ is ValueCellFull!6993) mapDefault!23839)) b!822982))

(assert (= start!70894 b!822981))

(declare-fun m!765135 () Bool)

(assert (=> mapNonEmpty!23839 m!765135))

(declare-fun m!765137 () Bool)

(assert (=> b!822983 m!765137))

(declare-fun m!765139 () Bool)

(assert (=> b!822983 m!765139))

(declare-fun m!765141 () Bool)

(assert (=> b!822983 m!765141))

(declare-fun m!765143 () Bool)

(assert (=> b!822987 m!765143))

(declare-fun m!765145 () Bool)

(assert (=> start!70894 m!765145))

(declare-fun m!765147 () Bool)

(assert (=> start!70894 m!765147))

(declare-fun m!765149 () Bool)

(assert (=> start!70894 m!765149))

(declare-fun m!765151 () Bool)

(assert (=> b!822980 m!765151))

(declare-fun m!765153 () Bool)

(assert (=> b!822984 m!765153))

(declare-fun m!765155 () Bool)

(assert (=> b!822984 m!765155))

(assert (=> b!822984 m!765153))

(declare-fun m!765157 () Bool)

(assert (=> b!822984 m!765157))

(declare-fun m!765159 () Bool)

(assert (=> b!822984 m!765159))

(declare-fun m!765161 () Bool)

(assert (=> b!822984 m!765161))

(declare-fun m!765163 () Bool)

(assert (=> b!822984 m!765163))

(declare-fun m!765165 () Bool)

(assert (=> b!822984 m!765165))

(check-sat (not b!822983) (not b!822984) (not b_next!13107) (not b!822987) (not mapNonEmpty!23839) (not b!822980) b_and!22009 tp_is_empty!14817 (not start!70894))
(check-sat b_and!22009 (not b_next!13107))
