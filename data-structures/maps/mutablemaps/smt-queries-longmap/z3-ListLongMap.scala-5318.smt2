; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71174 () Bool)

(assert start!71174)

(declare-fun b_free!13317 () Bool)

(declare-fun b_next!13317 () Bool)

(assert (=> start!71174 (= b_free!13317 (not b_next!13317))))

(declare-fun tp!46711 () Bool)

(declare-fun b_and!22261 () Bool)

(assert (=> start!71174 (= tp!46711 b_and!22261)))

(declare-fun b!826265 () Bool)

(declare-fun e!460130 () Bool)

(assert (=> b!826265 (= e!460130 true)))

(declare-datatypes ((V!25037 0))(
  ( (V!25038 (val!7561 Int)) )
))
(declare-datatypes ((tuple2!10024 0))(
  ( (tuple2!10025 (_1!5022 (_ BitVec 64)) (_2!5022 V!25037)) )
))
(declare-fun lt!373898 () tuple2!10024)

(declare-datatypes ((List!15863 0))(
  ( (Nil!15860) (Cons!15859 (h!16988 tuple2!10024) (t!22218 List!15863)) )
))
(declare-datatypes ((ListLongMap!8861 0))(
  ( (ListLongMap!8862 (toList!4446 List!15863)) )
))
(declare-fun lt!373891 () ListLongMap!8861)

(declare-fun lt!373899 () tuple2!10024)

(declare-fun lt!373893 () ListLongMap!8861)

(declare-fun +!1907 (ListLongMap!8861 tuple2!10024) ListLongMap!8861)

(assert (=> b!826265 (= lt!373893 (+!1907 (+!1907 lt!373891 lt!373899) lt!373898))))

(declare-fun lt!373889 () ListLongMap!8861)

(declare-fun lt!373897 () ListLongMap!8861)

(declare-fun lt!373895 () ListLongMap!8861)

(assert (=> b!826265 (and (= lt!373889 lt!373897) (= lt!373895 lt!373897) (= lt!373895 lt!373889))))

(declare-fun lt!373896 () ListLongMap!8861)

(assert (=> b!826265 (= lt!373897 (+!1907 lt!373896 lt!373899))))

(declare-fun lt!373894 () ListLongMap!8861)

(assert (=> b!826265 (= lt!373889 (+!1907 lt!373894 lt!373899))))

(declare-fun zeroValueBefore!34 () V!25037)

(declare-datatypes ((Unit!28327 0))(
  ( (Unit!28328) )
))
(declare-fun lt!373887 () Unit!28327)

(declare-fun zeroValueAfter!34 () V!25037)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!230 (ListLongMap!8861 (_ BitVec 64) V!25037 V!25037) Unit!28327)

(assert (=> b!826265 (= lt!373887 (addSameAsAddTwiceSameKeyDiffValues!230 lt!373894 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!460132 () Bool)

(assert (=> b!826265 e!460132))

(declare-fun res!563361 () Bool)

(assert (=> b!826265 (=> (not res!563361) (not e!460132))))

(declare-fun lt!373886 () ListLongMap!8861)

(assert (=> b!826265 (= res!563361 (= lt!373886 lt!373896))))

(declare-fun lt!373890 () tuple2!10024)

(assert (=> b!826265 (= lt!373896 (+!1907 lt!373894 lt!373890))))

(assert (=> b!826265 (= lt!373894 (+!1907 lt!373891 lt!373898))))

(assert (=> b!826265 (= lt!373899 (tuple2!10025 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!460137 () Bool)

(assert (=> b!826265 e!460137))

(declare-fun res!563360 () Bool)

(assert (=> b!826265 (=> (not res!563360) (not e!460137))))

(assert (=> b!826265 (= res!563360 (= lt!373886 (+!1907 (+!1907 lt!373891 lt!373890) lt!373898)))))

(declare-fun minValue!754 () V!25037)

(assert (=> b!826265 (= lt!373898 (tuple2!10025 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!826265 (= lt!373890 (tuple2!10025 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((array!46194 0))(
  ( (array!46195 (arr!22138 (Array (_ BitVec 32) (_ BitVec 64))) (size!22559 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46194)

(declare-datatypes ((ValueCell!7098 0))(
  ( (ValueCellFull!7098 (v!9991 V!25037)) (EmptyCell!7098) )
))
(declare-datatypes ((array!46196 0))(
  ( (array!46197 (arr!22139 (Array (_ BitVec 32) ValueCell!7098)) (size!22560 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46196)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2552 (array!46194 array!46196 (_ BitVec 32) (_ BitVec 32) V!25037 V!25037 (_ BitVec 32) Int) ListLongMap!8861)

(assert (=> b!826265 (= lt!373895 (getCurrentListMap!2552 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!826265 (= lt!373886 (getCurrentListMap!2552 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826266 () Bool)

(declare-fun e!460134 () Bool)

(declare-fun tp_is_empty!15027 () Bool)

(assert (=> b!826266 (= e!460134 tp_is_empty!15027)))

(declare-fun b!826267 () Bool)

(declare-fun e!460133 () Bool)

(declare-fun mapRes!24166 () Bool)

(assert (=> b!826267 (= e!460133 (and e!460134 mapRes!24166))))

(declare-fun condMapEmpty!24166 () Bool)

(declare-fun mapDefault!24166 () ValueCell!7098)

(assert (=> b!826267 (= condMapEmpty!24166 (= (arr!22139 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7098)) mapDefault!24166)))))

(declare-fun lt!373892 () ListLongMap!8861)

(declare-fun b!826268 () Bool)

(assert (=> b!826268 (= e!460137 (= lt!373895 (+!1907 (+!1907 lt!373892 (tuple2!10025 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!373898)))))

(declare-fun b!826269 () Bool)

(assert (=> b!826269 (= e!460132 (= lt!373895 (+!1907 (+!1907 lt!373892 lt!373898) lt!373899)))))

(declare-fun b!826270 () Bool)

(declare-fun res!563358 () Bool)

(declare-fun e!460131 () Bool)

(assert (=> b!826270 (=> (not res!563358) (not e!460131))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46194 (_ BitVec 32)) Bool)

(assert (=> b!826270 (= res!563358 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!826271 () Bool)

(assert (=> b!826271 (= e!460131 (not e!460130))))

(declare-fun res!563359 () Bool)

(assert (=> b!826271 (=> res!563359 e!460130)))

(assert (=> b!826271 (= res!563359 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!826271 (= lt!373891 lt!373892)))

(declare-fun lt!373888 () Unit!28327)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!572 (array!46194 array!46196 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25037 V!25037 V!25037 V!25037 (_ BitVec 32) Int) Unit!28327)

(assert (=> b!826271 (= lt!373888 (lemmaNoChangeToArrayThenSameMapNoExtras!572 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2456 (array!46194 array!46196 (_ BitVec 32) (_ BitVec 32) V!25037 V!25037 (_ BitVec 32) Int) ListLongMap!8861)

(assert (=> b!826271 (= lt!373892 (getCurrentListMapNoExtraKeys!2456 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826271 (= lt!373891 (getCurrentListMapNoExtraKeys!2456 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24166 () Bool)

(assert (=> mapIsEmpty!24166 mapRes!24166))

(declare-fun b!826272 () Bool)

(declare-fun res!563363 () Bool)

(assert (=> b!826272 (=> (not res!563363) (not e!460131))))

(declare-datatypes ((List!15864 0))(
  ( (Nil!15861) (Cons!15860 (h!16989 (_ BitVec 64)) (t!22219 List!15864)) )
))
(declare-fun arrayNoDuplicates!0 (array!46194 (_ BitVec 32) List!15864) Bool)

(assert (=> b!826272 (= res!563363 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15861))))

(declare-fun mapNonEmpty!24166 () Bool)

(declare-fun tp!46710 () Bool)

(declare-fun e!460135 () Bool)

(assert (=> mapNonEmpty!24166 (= mapRes!24166 (and tp!46710 e!460135))))

(declare-fun mapRest!24166 () (Array (_ BitVec 32) ValueCell!7098))

(declare-fun mapValue!24166 () ValueCell!7098)

(declare-fun mapKey!24166 () (_ BitVec 32))

(assert (=> mapNonEmpty!24166 (= (arr!22139 _values!788) (store mapRest!24166 mapKey!24166 mapValue!24166))))

(declare-fun res!563362 () Bool)

(assert (=> start!71174 (=> (not res!563362) (not e!460131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71174 (= res!563362 (validMask!0 mask!1312))))

(assert (=> start!71174 e!460131))

(assert (=> start!71174 tp_is_empty!15027))

(declare-fun array_inv!17631 (array!46194) Bool)

(assert (=> start!71174 (array_inv!17631 _keys!976)))

(assert (=> start!71174 true))

(declare-fun array_inv!17632 (array!46196) Bool)

(assert (=> start!71174 (and (array_inv!17632 _values!788) e!460133)))

(assert (=> start!71174 tp!46711))

(declare-fun b!826273 () Bool)

(assert (=> b!826273 (= e!460135 tp_is_empty!15027)))

(declare-fun b!826274 () Bool)

(declare-fun res!563357 () Bool)

(assert (=> b!826274 (=> (not res!563357) (not e!460131))))

(assert (=> b!826274 (= res!563357 (and (= (size!22560 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22559 _keys!976) (size!22560 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!71174 res!563362) b!826274))

(assert (= (and b!826274 res!563357) b!826270))

(assert (= (and b!826270 res!563358) b!826272))

(assert (= (and b!826272 res!563363) b!826271))

(assert (= (and b!826271 (not res!563359)) b!826265))

(assert (= (and b!826265 res!563360) b!826268))

(assert (= (and b!826265 res!563361) b!826269))

(assert (= (and b!826267 condMapEmpty!24166) mapIsEmpty!24166))

(assert (= (and b!826267 (not condMapEmpty!24166)) mapNonEmpty!24166))

(get-info :version)

(assert (= (and mapNonEmpty!24166 ((_ is ValueCellFull!7098) mapValue!24166)) b!826273))

(assert (= (and b!826267 ((_ is ValueCellFull!7098) mapDefault!24166)) b!826266))

(assert (= start!71174 b!826267))

(declare-fun m!769089 () Bool)

(assert (=> b!826271 m!769089))

(declare-fun m!769091 () Bool)

(assert (=> b!826271 m!769091))

(declare-fun m!769093 () Bool)

(assert (=> b!826271 m!769093))

(declare-fun m!769095 () Bool)

(assert (=> b!826272 m!769095))

(declare-fun m!769097 () Bool)

(assert (=> start!71174 m!769097))

(declare-fun m!769099 () Bool)

(assert (=> start!71174 m!769099))

(declare-fun m!769101 () Bool)

(assert (=> start!71174 m!769101))

(declare-fun m!769103 () Bool)

(assert (=> mapNonEmpty!24166 m!769103))

(declare-fun m!769105 () Bool)

(assert (=> b!826269 m!769105))

(assert (=> b!826269 m!769105))

(declare-fun m!769107 () Bool)

(assert (=> b!826269 m!769107))

(declare-fun m!769109 () Bool)

(assert (=> b!826270 m!769109))

(declare-fun m!769111 () Bool)

(assert (=> b!826268 m!769111))

(assert (=> b!826268 m!769111))

(declare-fun m!769113 () Bool)

(assert (=> b!826268 m!769113))

(declare-fun m!769115 () Bool)

(assert (=> b!826265 m!769115))

(declare-fun m!769117 () Bool)

(assert (=> b!826265 m!769117))

(declare-fun m!769119 () Bool)

(assert (=> b!826265 m!769119))

(declare-fun m!769121 () Bool)

(assert (=> b!826265 m!769121))

(declare-fun m!769123 () Bool)

(assert (=> b!826265 m!769123))

(declare-fun m!769125 () Bool)

(assert (=> b!826265 m!769125))

(declare-fun m!769127 () Bool)

(assert (=> b!826265 m!769127))

(assert (=> b!826265 m!769121))

(declare-fun m!769129 () Bool)

(assert (=> b!826265 m!769129))

(declare-fun m!769131 () Bool)

(assert (=> b!826265 m!769131))

(declare-fun m!769133 () Bool)

(assert (=> b!826265 m!769133))

(declare-fun m!769135 () Bool)

(assert (=> b!826265 m!769135))

(assert (=> b!826265 m!769117))

(check-sat (not b!826268) (not b_next!13317) (not b!826271) b_and!22261 (not b!826272) (not start!71174) (not b!826269) (not b!826265) tp_is_empty!15027 (not mapNonEmpty!24166) (not b!826270))
(check-sat b_and!22261 (not b_next!13317))
