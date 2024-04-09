; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71082 () Bool)

(assert start!71082)

(declare-fun b_free!13245 () Bool)

(declare-fun b_next!13245 () Bool)

(assert (=> start!71082 (= b_free!13245 (not b_next!13245))))

(declare-fun tp!46492 () Bool)

(declare-fun b_and!22177 () Bool)

(assert (=> start!71082 (= tp!46492 b_and!22177)))

(declare-fun b!824979 () Bool)

(declare-fun res!562501 () Bool)

(declare-fun e!459139 () Bool)

(assert (=> b!824979 (=> (not res!562501) (not e!459139))))

(declare-datatypes ((array!46058 0))(
  ( (array!46059 (arr!22071 (Array (_ BitVec 32) (_ BitVec 64))) (size!22492 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46058)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46058 (_ BitVec 32)) Bool)

(assert (=> b!824979 (= res!562501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!824980 () Bool)

(declare-fun e!459137 () Bool)

(declare-fun e!459138 () Bool)

(declare-fun mapRes!24055 () Bool)

(assert (=> b!824980 (= e!459137 (and e!459138 mapRes!24055))))

(declare-fun condMapEmpty!24055 () Bool)

(declare-datatypes ((V!24941 0))(
  ( (V!24942 (val!7525 Int)) )
))
(declare-datatypes ((ValueCell!7062 0))(
  ( (ValueCellFull!7062 (v!9954 V!24941)) (EmptyCell!7062) )
))
(declare-datatypes ((array!46060 0))(
  ( (array!46061 (arr!22072 (Array (_ BitVec 32) ValueCell!7062)) (size!22493 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46060)

(declare-fun mapDefault!24055 () ValueCell!7062)

(assert (=> b!824980 (= condMapEmpty!24055 (= (arr!22072 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7062)) mapDefault!24055)))))

(declare-fun b!824981 () Bool)

(declare-fun res!562497 () Bool)

(assert (=> b!824981 (=> (not res!562497) (not e!459139))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!824981 (= res!562497 (and (= (size!22493 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22492 _keys!976) (size!22493 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!824982 () Bool)

(declare-fun e!459136 () Bool)

(assert (=> b!824982 (= e!459139 (not e!459136))))

(declare-fun res!562498 () Bool)

(assert (=> b!824982 (=> res!562498 e!459136)))

(assert (=> b!824982 (= res!562498 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9958 0))(
  ( (tuple2!9959 (_1!4989 (_ BitVec 64)) (_2!4989 V!24941)) )
))
(declare-datatypes ((List!15805 0))(
  ( (Nil!15802) (Cons!15801 (h!16930 tuple2!9958) (t!22158 List!15805)) )
))
(declare-datatypes ((ListLongMap!8795 0))(
  ( (ListLongMap!8796 (toList!4413 List!15805)) )
))
(declare-fun lt!372206 () ListLongMap!8795)

(declare-fun lt!372208 () ListLongMap!8795)

(assert (=> b!824982 (= lt!372206 lt!372208)))

(declare-fun zeroValueBefore!34 () V!24941)

(declare-datatypes ((Unit!28267 0))(
  ( (Unit!28268) )
))
(declare-fun lt!372209 () Unit!28267)

(declare-fun zeroValueAfter!34 () V!24941)

(declare-fun minValue!754 () V!24941)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!547 (array!46058 array!46060 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24941 V!24941 V!24941 V!24941 (_ BitVec 32) Int) Unit!28267)

(assert (=> b!824982 (= lt!372209 (lemmaNoChangeToArrayThenSameMapNoExtras!547 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2431 (array!46058 array!46060 (_ BitVec 32) (_ BitVec 32) V!24941 V!24941 (_ BitVec 32) Int) ListLongMap!8795)

(assert (=> b!824982 (= lt!372208 (getCurrentListMapNoExtraKeys!2431 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824982 (= lt!372206 (getCurrentListMapNoExtraKeys!2431 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824983 () Bool)

(assert (=> b!824983 (= e!459136 true)))

(declare-fun lt!372207 () tuple2!9958)

(declare-fun lt!372201 () ListLongMap!8795)

(declare-fun lt!372205 () tuple2!9958)

(declare-fun +!1875 (ListLongMap!8795 tuple2!9958) ListLongMap!8795)

(assert (=> b!824983 (= lt!372201 (+!1875 (+!1875 lt!372206 lt!372207) lt!372205))))

(declare-fun lt!372198 () ListLongMap!8795)

(declare-fun lt!372200 () ListLongMap!8795)

(declare-fun lt!372203 () ListLongMap!8795)

(assert (=> b!824983 (and (= lt!372198 lt!372200) (= lt!372203 lt!372200) (= lt!372203 lt!372198))))

(declare-fun lt!372204 () ListLongMap!8795)

(assert (=> b!824983 (= lt!372200 (+!1875 lt!372204 lt!372207))))

(declare-fun lt!372197 () ListLongMap!8795)

(assert (=> b!824983 (= lt!372198 (+!1875 lt!372197 lt!372207))))

(declare-fun lt!372199 () Unit!28267)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!203 (ListLongMap!8795 (_ BitVec 64) V!24941 V!24941) Unit!28267)

(assert (=> b!824983 (= lt!372199 (addSameAsAddTwiceSameKeyDiffValues!203 lt!372197 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!459142 () Bool)

(assert (=> b!824983 e!459142))

(declare-fun res!562499 () Bool)

(assert (=> b!824983 (=> (not res!562499) (not e!459142))))

(declare-fun lt!372196 () ListLongMap!8795)

(assert (=> b!824983 (= res!562499 (= lt!372196 lt!372204))))

(declare-fun lt!372202 () tuple2!9958)

(assert (=> b!824983 (= lt!372204 (+!1875 lt!372197 lt!372202))))

(assert (=> b!824983 (= lt!372197 (+!1875 lt!372206 lt!372205))))

(assert (=> b!824983 (= lt!372207 (tuple2!9959 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!459140 () Bool)

(assert (=> b!824983 e!459140))

(declare-fun res!562500 () Bool)

(assert (=> b!824983 (=> (not res!562500) (not e!459140))))

(assert (=> b!824983 (= res!562500 (= lt!372196 (+!1875 (+!1875 lt!372206 lt!372202) lt!372205)))))

(assert (=> b!824983 (= lt!372205 (tuple2!9959 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!824983 (= lt!372202 (tuple2!9959 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2525 (array!46058 array!46060 (_ BitVec 32) (_ BitVec 32) V!24941 V!24941 (_ BitVec 32) Int) ListLongMap!8795)

(assert (=> b!824983 (= lt!372203 (getCurrentListMap!2525 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824983 (= lt!372196 (getCurrentListMap!2525 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824984 () Bool)

(assert (=> b!824984 (= e!459142 (= lt!372203 (+!1875 (+!1875 lt!372208 lt!372205) lt!372207)))))

(declare-fun b!824985 () Bool)

(declare-fun res!562502 () Bool)

(assert (=> b!824985 (=> (not res!562502) (not e!459139))))

(declare-datatypes ((List!15806 0))(
  ( (Nil!15803) (Cons!15802 (h!16931 (_ BitVec 64)) (t!22159 List!15806)) )
))
(declare-fun arrayNoDuplicates!0 (array!46058 (_ BitVec 32) List!15806) Bool)

(assert (=> b!824985 (= res!562502 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15803))))

(declare-fun res!562503 () Bool)

(assert (=> start!71082 (=> (not res!562503) (not e!459139))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71082 (= res!562503 (validMask!0 mask!1312))))

(assert (=> start!71082 e!459139))

(declare-fun tp_is_empty!14955 () Bool)

(assert (=> start!71082 tp_is_empty!14955))

(declare-fun array_inv!17585 (array!46058) Bool)

(assert (=> start!71082 (array_inv!17585 _keys!976)))

(assert (=> start!71082 true))

(declare-fun array_inv!17586 (array!46060) Bool)

(assert (=> start!71082 (and (array_inv!17586 _values!788) e!459137)))

(assert (=> start!71082 tp!46492))

(declare-fun b!824986 () Bool)

(assert (=> b!824986 (= e!459140 (= lt!372203 (+!1875 (+!1875 lt!372208 (tuple2!9959 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!372205)))))

(declare-fun mapNonEmpty!24055 () Bool)

(declare-fun tp!46491 () Bool)

(declare-fun e!459141 () Bool)

(assert (=> mapNonEmpty!24055 (= mapRes!24055 (and tp!46491 e!459141))))

(declare-fun mapKey!24055 () (_ BitVec 32))

(declare-fun mapRest!24055 () (Array (_ BitVec 32) ValueCell!7062))

(declare-fun mapValue!24055 () ValueCell!7062)

(assert (=> mapNonEmpty!24055 (= (arr!22072 _values!788) (store mapRest!24055 mapKey!24055 mapValue!24055))))

(declare-fun b!824987 () Bool)

(assert (=> b!824987 (= e!459138 tp_is_empty!14955)))

(declare-fun mapIsEmpty!24055 () Bool)

(assert (=> mapIsEmpty!24055 mapRes!24055))

(declare-fun b!824988 () Bool)

(assert (=> b!824988 (= e!459141 tp_is_empty!14955)))

(assert (= (and start!71082 res!562503) b!824981))

(assert (= (and b!824981 res!562497) b!824979))

(assert (= (and b!824979 res!562501) b!824985))

(assert (= (and b!824985 res!562502) b!824982))

(assert (= (and b!824982 (not res!562498)) b!824983))

(assert (= (and b!824983 res!562500) b!824986))

(assert (= (and b!824983 res!562499) b!824984))

(assert (= (and b!824980 condMapEmpty!24055) mapIsEmpty!24055))

(assert (= (and b!824980 (not condMapEmpty!24055)) mapNonEmpty!24055))

(get-info :version)

(assert (= (and mapNonEmpty!24055 ((_ is ValueCellFull!7062) mapValue!24055)) b!824988))

(assert (= (and b!824980 ((_ is ValueCellFull!7062) mapDefault!24055)) b!824987))

(assert (= start!71082 b!824980))

(declare-fun m!767051 () Bool)

(assert (=> b!824983 m!767051))

(declare-fun m!767053 () Bool)

(assert (=> b!824983 m!767053))

(declare-fun m!767055 () Bool)

(assert (=> b!824983 m!767055))

(declare-fun m!767057 () Bool)

(assert (=> b!824983 m!767057))

(declare-fun m!767059 () Bool)

(assert (=> b!824983 m!767059))

(declare-fun m!767061 () Bool)

(assert (=> b!824983 m!767061))

(assert (=> b!824983 m!767055))

(declare-fun m!767063 () Bool)

(assert (=> b!824983 m!767063))

(declare-fun m!767065 () Bool)

(assert (=> b!824983 m!767065))

(declare-fun m!767067 () Bool)

(assert (=> b!824983 m!767067))

(assert (=> b!824983 m!767053))

(declare-fun m!767069 () Bool)

(assert (=> b!824983 m!767069))

(declare-fun m!767071 () Bool)

(assert (=> b!824983 m!767071))

(declare-fun m!767073 () Bool)

(assert (=> b!824985 m!767073))

(declare-fun m!767075 () Bool)

(assert (=> mapNonEmpty!24055 m!767075))

(declare-fun m!767077 () Bool)

(assert (=> start!71082 m!767077))

(declare-fun m!767079 () Bool)

(assert (=> start!71082 m!767079))

(declare-fun m!767081 () Bool)

(assert (=> start!71082 m!767081))

(declare-fun m!767083 () Bool)

(assert (=> b!824984 m!767083))

(assert (=> b!824984 m!767083))

(declare-fun m!767085 () Bool)

(assert (=> b!824984 m!767085))

(declare-fun m!767087 () Bool)

(assert (=> b!824986 m!767087))

(assert (=> b!824986 m!767087))

(declare-fun m!767089 () Bool)

(assert (=> b!824986 m!767089))

(declare-fun m!767091 () Bool)

(assert (=> b!824982 m!767091))

(declare-fun m!767093 () Bool)

(assert (=> b!824982 m!767093))

(declare-fun m!767095 () Bool)

(assert (=> b!824982 m!767095))

(declare-fun m!767097 () Bool)

(assert (=> b!824979 m!767097))

(check-sat (not b!824985) (not b!824982) (not b!824986) (not b!824983) (not mapNonEmpty!24055) (not b!824984) (not b!824979) (not start!71082) tp_is_empty!14955 (not b_next!13245) b_and!22177)
(check-sat b_and!22177 (not b_next!13245))
