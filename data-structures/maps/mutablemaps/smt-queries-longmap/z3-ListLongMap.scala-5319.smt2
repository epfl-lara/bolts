; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71180 () Bool)

(assert start!71180)

(declare-fun b_free!13323 () Bool)

(declare-fun b_next!13323 () Bool)

(assert (=> start!71180 (= b_free!13323 (not b_next!13323))))

(declare-fun tp!46728 () Bool)

(declare-fun b_and!22267 () Bool)

(assert (=> start!71180 (= tp!46728 b_and!22267)))

(declare-fun b!826355 () Bool)

(declare-fun e!460205 () Bool)

(declare-fun tp_is_empty!15033 () Bool)

(assert (=> b!826355 (= e!460205 tp_is_empty!15033)))

(declare-datatypes ((V!25045 0))(
  ( (V!25046 (val!7564 Int)) )
))
(declare-datatypes ((tuple2!10030 0))(
  ( (tuple2!10031 (_1!5025 (_ BitVec 64)) (_2!5025 V!25045)) )
))
(declare-datatypes ((List!15868 0))(
  ( (Nil!15865) (Cons!15864 (h!16993 tuple2!10030) (t!22223 List!15868)) )
))
(declare-datatypes ((ListLongMap!8867 0))(
  ( (ListLongMap!8868 (toList!4449 List!15868)) )
))
(declare-fun lt!374016 () ListLongMap!8867)

(declare-fun lt!374015 () tuple2!10030)

(declare-fun e!460203 () Bool)

(declare-fun b!826356 () Bool)

(declare-fun lt!374023 () ListLongMap!8867)

(declare-fun lt!374020 () tuple2!10030)

(declare-fun +!1910 (ListLongMap!8867 tuple2!10030) ListLongMap!8867)

(assert (=> b!826356 (= e!460203 (= lt!374023 (+!1910 (+!1910 lt!374016 lt!374020) lt!374015)))))

(declare-fun b!826357 () Bool)

(declare-fun res!563421 () Bool)

(declare-fun e!460204 () Bool)

(assert (=> b!826357 (=> (not res!563421) (not e!460204))))

(declare-datatypes ((array!46206 0))(
  ( (array!46207 (arr!22144 (Array (_ BitVec 32) (_ BitVec 64))) (size!22565 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46206)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7101 0))(
  ( (ValueCellFull!7101 (v!9994 V!25045)) (EmptyCell!7101) )
))
(declare-datatypes ((array!46208 0))(
  ( (array!46209 (arr!22145 (Array (_ BitVec 32) ValueCell!7101)) (size!22566 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46208)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!826357 (= res!563421 (and (= (size!22566 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22565 _keys!976) (size!22566 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!826358 () Bool)

(declare-fun res!563425 () Bool)

(assert (=> b!826358 (=> (not res!563425) (not e!460204))))

(declare-datatypes ((List!15869 0))(
  ( (Nil!15866) (Cons!15865 (h!16994 (_ BitVec 64)) (t!22224 List!15869)) )
))
(declare-fun arrayNoDuplicates!0 (array!46206 (_ BitVec 32) List!15869) Bool)

(assert (=> b!826358 (= res!563425 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15866))))

(declare-fun b!826360 () Bool)

(declare-fun e!460206 () Bool)

(declare-fun e!460209 () Bool)

(declare-fun mapRes!24175 () Bool)

(assert (=> b!826360 (= e!460206 (and e!460209 mapRes!24175))))

(declare-fun condMapEmpty!24175 () Bool)

(declare-fun mapDefault!24175 () ValueCell!7101)

(assert (=> b!826360 (= condMapEmpty!24175 (= (arr!22145 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7101)) mapDefault!24175)))))

(declare-fun b!826361 () Bool)

(declare-fun e!460202 () Bool)

(assert (=> b!826361 (= e!460202 true)))

(declare-fun lt!374021 () ListLongMap!8867)

(declare-fun lt!374017 () ListLongMap!8867)

(assert (=> b!826361 (= lt!374021 (+!1910 (+!1910 lt!374017 lt!374015) lt!374020))))

(declare-fun lt!374024 () ListLongMap!8867)

(declare-fun lt!374012 () ListLongMap!8867)

(assert (=> b!826361 (and (= lt!374024 lt!374012) (= lt!374023 lt!374012) (= lt!374023 lt!374024))))

(declare-fun lt!374013 () ListLongMap!8867)

(assert (=> b!826361 (= lt!374012 (+!1910 lt!374013 lt!374015))))

(declare-fun lt!374019 () ListLongMap!8867)

(assert (=> b!826361 (= lt!374024 (+!1910 lt!374019 lt!374015))))

(declare-fun zeroValueBefore!34 () V!25045)

(declare-fun zeroValueAfter!34 () V!25045)

(declare-datatypes ((Unit!28333 0))(
  ( (Unit!28334) )
))
(declare-fun lt!374018 () Unit!28333)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!232 (ListLongMap!8867 (_ BitVec 64) V!25045 V!25045) Unit!28333)

(assert (=> b!826361 (= lt!374018 (addSameAsAddTwiceSameKeyDiffValues!232 lt!374019 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!826361 e!460203))

(declare-fun res!563420 () Bool)

(assert (=> b!826361 (=> (not res!563420) (not e!460203))))

(declare-fun lt!374022 () ListLongMap!8867)

(assert (=> b!826361 (= res!563420 (= lt!374022 lt!374013))))

(declare-fun lt!374014 () tuple2!10030)

(assert (=> b!826361 (= lt!374013 (+!1910 lt!374019 lt!374014))))

(assert (=> b!826361 (= lt!374019 (+!1910 lt!374017 lt!374020))))

(assert (=> b!826361 (= lt!374015 (tuple2!10031 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!460207 () Bool)

(assert (=> b!826361 e!460207))

(declare-fun res!563426 () Bool)

(assert (=> b!826361 (=> (not res!563426) (not e!460207))))

(assert (=> b!826361 (= res!563426 (= lt!374022 (+!1910 (+!1910 lt!374017 lt!374014) lt!374020)))))

(declare-fun minValue!754 () V!25045)

(assert (=> b!826361 (= lt!374020 (tuple2!10031 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!826361 (= lt!374014 (tuple2!10031 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2554 (array!46206 array!46208 (_ BitVec 32) (_ BitVec 32) V!25045 V!25045 (_ BitVec 32) Int) ListLongMap!8867)

(assert (=> b!826361 (= lt!374023 (getCurrentListMap!2554 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826361 (= lt!374022 (getCurrentListMap!2554 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!24175 () Bool)

(declare-fun tp!46729 () Bool)

(assert (=> mapNonEmpty!24175 (= mapRes!24175 (and tp!46729 e!460205))))

(declare-fun mapValue!24175 () ValueCell!7101)

(declare-fun mapKey!24175 () (_ BitVec 32))

(declare-fun mapRest!24175 () (Array (_ BitVec 32) ValueCell!7101))

(assert (=> mapNonEmpty!24175 (= (arr!22145 _values!788) (store mapRest!24175 mapKey!24175 mapValue!24175))))

(declare-fun b!826362 () Bool)

(declare-fun res!563422 () Bool)

(assert (=> b!826362 (=> (not res!563422) (not e!460204))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46206 (_ BitVec 32)) Bool)

(assert (=> b!826362 (= res!563422 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!826363 () Bool)

(assert (=> b!826363 (= e!460204 (not e!460202))))

(declare-fun res!563423 () Bool)

(assert (=> b!826363 (=> res!563423 e!460202)))

(assert (=> b!826363 (= res!563423 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!826363 (= lt!374017 lt!374016)))

(declare-fun lt!374025 () Unit!28333)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!574 (array!46206 array!46208 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25045 V!25045 V!25045 V!25045 (_ BitVec 32) Int) Unit!28333)

(assert (=> b!826363 (= lt!374025 (lemmaNoChangeToArrayThenSameMapNoExtras!574 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2458 (array!46206 array!46208 (_ BitVec 32) (_ BitVec 32) V!25045 V!25045 (_ BitVec 32) Int) ListLongMap!8867)

(assert (=> b!826363 (= lt!374016 (getCurrentListMapNoExtraKeys!2458 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826363 (= lt!374017 (getCurrentListMapNoExtraKeys!2458 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826364 () Bool)

(assert (=> b!826364 (= e!460209 tp_is_empty!15033)))

(declare-fun mapIsEmpty!24175 () Bool)

(assert (=> mapIsEmpty!24175 mapRes!24175))

(declare-fun res!563424 () Bool)

(assert (=> start!71180 (=> (not res!563424) (not e!460204))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71180 (= res!563424 (validMask!0 mask!1312))))

(assert (=> start!71180 e!460204))

(assert (=> start!71180 tp_is_empty!15033))

(declare-fun array_inv!17635 (array!46206) Bool)

(assert (=> start!71180 (array_inv!17635 _keys!976)))

(assert (=> start!71180 true))

(declare-fun array_inv!17636 (array!46208) Bool)

(assert (=> start!71180 (and (array_inv!17636 _values!788) e!460206)))

(assert (=> start!71180 tp!46728))

(declare-fun b!826359 () Bool)

(assert (=> b!826359 (= e!460207 (= lt!374023 (+!1910 (+!1910 lt!374016 (tuple2!10031 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!374020)))))

(assert (= (and start!71180 res!563424) b!826357))

(assert (= (and b!826357 res!563421) b!826362))

(assert (= (and b!826362 res!563422) b!826358))

(assert (= (and b!826358 res!563425) b!826363))

(assert (= (and b!826363 (not res!563423)) b!826361))

(assert (= (and b!826361 res!563426) b!826359))

(assert (= (and b!826361 res!563420) b!826356))

(assert (= (and b!826360 condMapEmpty!24175) mapIsEmpty!24175))

(assert (= (and b!826360 (not condMapEmpty!24175)) mapNonEmpty!24175))

(get-info :version)

(assert (= (and mapNonEmpty!24175 ((_ is ValueCellFull!7101) mapValue!24175)) b!826355))

(assert (= (and b!826360 ((_ is ValueCellFull!7101) mapDefault!24175)) b!826364))

(assert (= start!71180 b!826360))

(declare-fun m!769233 () Bool)

(assert (=> start!71180 m!769233))

(declare-fun m!769235 () Bool)

(assert (=> start!71180 m!769235))

(declare-fun m!769237 () Bool)

(assert (=> start!71180 m!769237))

(declare-fun m!769239 () Bool)

(assert (=> b!826362 m!769239))

(declare-fun m!769241 () Bool)

(assert (=> b!826361 m!769241))

(declare-fun m!769243 () Bool)

(assert (=> b!826361 m!769243))

(declare-fun m!769245 () Bool)

(assert (=> b!826361 m!769245))

(declare-fun m!769247 () Bool)

(assert (=> b!826361 m!769247))

(declare-fun m!769249 () Bool)

(assert (=> b!826361 m!769249))

(assert (=> b!826361 m!769247))

(declare-fun m!769251 () Bool)

(assert (=> b!826361 m!769251))

(declare-fun m!769253 () Bool)

(assert (=> b!826361 m!769253))

(assert (=> b!826361 m!769243))

(declare-fun m!769255 () Bool)

(assert (=> b!826361 m!769255))

(declare-fun m!769257 () Bool)

(assert (=> b!826361 m!769257))

(declare-fun m!769259 () Bool)

(assert (=> b!826361 m!769259))

(declare-fun m!769261 () Bool)

(assert (=> b!826361 m!769261))

(declare-fun m!769263 () Bool)

(assert (=> b!826356 m!769263))

(assert (=> b!826356 m!769263))

(declare-fun m!769265 () Bool)

(assert (=> b!826356 m!769265))

(declare-fun m!769267 () Bool)

(assert (=> b!826359 m!769267))

(assert (=> b!826359 m!769267))

(declare-fun m!769269 () Bool)

(assert (=> b!826359 m!769269))

(declare-fun m!769271 () Bool)

(assert (=> b!826358 m!769271))

(declare-fun m!769273 () Bool)

(assert (=> b!826363 m!769273))

(declare-fun m!769275 () Bool)

(assert (=> b!826363 m!769275))

(declare-fun m!769277 () Bool)

(assert (=> b!826363 m!769277))

(declare-fun m!769279 () Bool)

(assert (=> mapNonEmpty!24175 m!769279))

(check-sat b_and!22267 (not b!826363) (not b!826361) tp_is_empty!15033 (not b!826356) (not b!826358) (not b!826359) (not b!826362) (not start!71180) (not b_next!13323) (not mapNonEmpty!24175))
(check-sat b_and!22267 (not b_next!13323))
