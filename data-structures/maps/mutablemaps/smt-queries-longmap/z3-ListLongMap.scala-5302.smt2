; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71042 () Bool)

(assert start!71042)

(declare-fun b_free!13221 () Bool)

(declare-fun b_next!13221 () Bool)

(assert (=> start!71042 (= b_free!13221 (not b_next!13221))))

(declare-fun tp!46416 () Bool)

(declare-fun b_and!22143 () Bool)

(assert (=> start!71042 (= tp!46416 b_and!22143)))

(declare-fun mapIsEmpty!24016 () Bool)

(declare-fun mapRes!24016 () Bool)

(assert (=> mapIsEmpty!24016 mapRes!24016))

(declare-fun b!824533 () Bool)

(declare-fun e!458821 () Bool)

(assert (=> b!824533 (= e!458821 true)))

(declare-datatypes ((V!24909 0))(
  ( (V!24910 (val!7513 Int)) )
))
(declare-fun zeroValueBefore!34 () V!24909)

(declare-datatypes ((array!46008 0))(
  ( (array!46009 (arr!22047 (Array (_ BitVec 32) (_ BitVec 64))) (size!22468 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46008)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24909)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((ValueCell!7050 0))(
  ( (ValueCellFull!7050 (v!9942 V!24909)) (EmptyCell!7050) )
))
(declare-datatypes ((array!46010 0))(
  ( (array!46011 (arr!22048 (Array (_ BitVec 32) ValueCell!7050)) (size!22469 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46010)

(declare-datatypes ((tuple2!9934 0))(
  ( (tuple2!9935 (_1!4977 (_ BitVec 64)) (_2!4977 V!24909)) )
))
(declare-datatypes ((List!15785 0))(
  ( (Nil!15782) (Cons!15781 (h!16910 tuple2!9934) (t!22136 List!15785)) )
))
(declare-datatypes ((ListLongMap!8771 0))(
  ( (ListLongMap!8772 (toList!4401 List!15785)) )
))
(declare-fun lt!371898 () ListLongMap!8771)

(declare-fun getCurrentListMap!2514 (array!46008 array!46010 (_ BitVec 32) (_ BitVec 32) V!24909 V!24909 (_ BitVec 32) Int) ListLongMap!8771)

(assert (=> b!824533 (= lt!371898 (getCurrentListMap!2514 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!24016 () Bool)

(declare-fun tp!46417 () Bool)

(declare-fun e!458816 () Bool)

(assert (=> mapNonEmpty!24016 (= mapRes!24016 (and tp!46417 e!458816))))

(declare-fun mapValue!24016 () ValueCell!7050)

(declare-fun mapKey!24016 () (_ BitVec 32))

(declare-fun mapRest!24016 () (Array (_ BitVec 32) ValueCell!7050))

(assert (=> mapNonEmpty!24016 (= (arr!22048 _values!788) (store mapRest!24016 mapKey!24016 mapValue!24016))))

(declare-fun b!824534 () Bool)

(declare-fun e!458820 () Bool)

(declare-fun e!458819 () Bool)

(assert (=> b!824534 (= e!458820 (and e!458819 mapRes!24016))))

(declare-fun condMapEmpty!24016 () Bool)

(declare-fun mapDefault!24016 () ValueCell!7050)

(assert (=> b!824534 (= condMapEmpty!24016 (= (arr!22048 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7050)) mapDefault!24016)))))

(declare-fun b!824535 () Bool)

(declare-fun tp_is_empty!14931 () Bool)

(assert (=> b!824535 (= e!458819 tp_is_empty!14931)))

(declare-fun res!562250 () Bool)

(declare-fun e!458818 () Bool)

(assert (=> start!71042 (=> (not res!562250) (not e!458818))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71042 (= res!562250 (validMask!0 mask!1312))))

(assert (=> start!71042 e!458818))

(assert (=> start!71042 tp_is_empty!14931))

(declare-fun array_inv!17571 (array!46008) Bool)

(assert (=> start!71042 (array_inv!17571 _keys!976)))

(assert (=> start!71042 true))

(declare-fun array_inv!17572 (array!46010) Bool)

(assert (=> start!71042 (and (array_inv!17572 _values!788) e!458820)))

(assert (=> start!71042 tp!46416))

(declare-fun b!824536 () Bool)

(declare-fun res!562249 () Bool)

(assert (=> b!824536 (=> (not res!562249) (not e!458818))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46008 (_ BitVec 32)) Bool)

(assert (=> b!824536 (= res!562249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!824537 () Bool)

(assert (=> b!824537 (= e!458816 tp_is_empty!14931)))

(declare-fun b!824538 () Bool)

(assert (=> b!824538 (= e!458818 (not e!458821))))

(declare-fun res!562252 () Bool)

(assert (=> b!824538 (=> res!562252 e!458821)))

(assert (=> b!824538 (= res!562252 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!371899 () ListLongMap!8771)

(declare-fun lt!371897 () ListLongMap!8771)

(assert (=> b!824538 (= lt!371899 lt!371897)))

(declare-datatypes ((Unit!28244 0))(
  ( (Unit!28245) )
))
(declare-fun lt!371896 () Unit!28244)

(declare-fun zeroValueAfter!34 () V!24909)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!537 (array!46008 array!46010 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24909 V!24909 V!24909 V!24909 (_ BitVec 32) Int) Unit!28244)

(assert (=> b!824538 (= lt!371896 (lemmaNoChangeToArrayThenSameMapNoExtras!537 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2421 (array!46008 array!46010 (_ BitVec 32) (_ BitVec 32) V!24909 V!24909 (_ BitVec 32) Int) ListLongMap!8771)

(assert (=> b!824538 (= lt!371897 (getCurrentListMapNoExtraKeys!2421 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824538 (= lt!371899 (getCurrentListMapNoExtraKeys!2421 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824539 () Bool)

(declare-fun res!562253 () Bool)

(assert (=> b!824539 (=> (not res!562253) (not e!458818))))

(assert (=> b!824539 (= res!562253 (and (= (size!22469 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22468 _keys!976) (size!22469 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!824540 () Bool)

(declare-fun res!562251 () Bool)

(assert (=> b!824540 (=> (not res!562251) (not e!458818))))

(declare-datatypes ((List!15786 0))(
  ( (Nil!15783) (Cons!15782 (h!16911 (_ BitVec 64)) (t!22137 List!15786)) )
))
(declare-fun arrayNoDuplicates!0 (array!46008 (_ BitVec 32) List!15786) Bool)

(assert (=> b!824540 (= res!562251 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15783))))

(assert (= (and start!71042 res!562250) b!824539))

(assert (= (and b!824539 res!562253) b!824536))

(assert (= (and b!824536 res!562249) b!824540))

(assert (= (and b!824540 res!562251) b!824538))

(assert (= (and b!824538 (not res!562252)) b!824533))

(assert (= (and b!824534 condMapEmpty!24016) mapIsEmpty!24016))

(assert (= (and b!824534 (not condMapEmpty!24016)) mapNonEmpty!24016))

(get-info :version)

(assert (= (and mapNonEmpty!24016 ((_ is ValueCellFull!7050) mapValue!24016)) b!824537))

(assert (= (and b!824534 ((_ is ValueCellFull!7050) mapDefault!24016)) b!824535))

(assert (= start!71042 b!824534))

(declare-fun m!766671 () Bool)

(assert (=> b!824538 m!766671))

(declare-fun m!766673 () Bool)

(assert (=> b!824538 m!766673))

(declare-fun m!766675 () Bool)

(assert (=> b!824538 m!766675))

(declare-fun m!766677 () Bool)

(assert (=> start!71042 m!766677))

(declare-fun m!766679 () Bool)

(assert (=> start!71042 m!766679))

(declare-fun m!766681 () Bool)

(assert (=> start!71042 m!766681))

(declare-fun m!766683 () Bool)

(assert (=> b!824533 m!766683))

(declare-fun m!766685 () Bool)

(assert (=> mapNonEmpty!24016 m!766685))

(declare-fun m!766687 () Bool)

(assert (=> b!824536 m!766687))

(declare-fun m!766689 () Bool)

(assert (=> b!824540 m!766689))

(check-sat (not b!824540) (not b_next!13221) (not mapNonEmpty!24016) tp_is_empty!14931 (not b!824538) (not b!824533) (not start!71042) (not b!824536) b_and!22143)
(check-sat b_and!22143 (not b_next!13221))
