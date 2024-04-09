; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71188 () Bool)

(assert start!71188)

(declare-fun b_free!13331 () Bool)

(declare-fun b_next!13331 () Bool)

(assert (=> start!71188 (= b_free!13331 (not b_next!13331))))

(declare-fun tp!46752 () Bool)

(declare-fun b_and!22275 () Bool)

(assert (=> start!71188 (= tp!46752 b_and!22275)))

(declare-fun b!826475 () Bool)

(declare-fun res!563508 () Bool)

(declare-fun e!460300 () Bool)

(assert (=> b!826475 (=> (not res!563508) (not e!460300))))

(declare-datatypes ((array!46222 0))(
  ( (array!46223 (arr!22152 (Array (_ BitVec 32) (_ BitVec 64))) (size!22573 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46222)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25055 0))(
  ( (V!25056 (val!7568 Int)) )
))
(declare-datatypes ((ValueCell!7105 0))(
  ( (ValueCellFull!7105 (v!9998 V!25055)) (EmptyCell!7105) )
))
(declare-datatypes ((array!46224 0))(
  ( (array!46225 (arr!22153 (Array (_ BitVec 32) ValueCell!7105)) (size!22574 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46224)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!826475 (= res!563508 (and (= (size!22574 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22573 _keys!976) (size!22574 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!563504 () Bool)

(assert (=> start!71188 (=> (not res!563504) (not e!460300))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71188 (= res!563504 (validMask!0 mask!1312))))

(assert (=> start!71188 e!460300))

(declare-fun tp_is_empty!15041 () Bool)

(assert (=> start!71188 tp_is_empty!15041))

(declare-fun array_inv!17641 (array!46222) Bool)

(assert (=> start!71188 (array_inv!17641 _keys!976)))

(assert (=> start!71188 true))

(declare-fun e!460302 () Bool)

(declare-fun array_inv!17642 (array!46224) Bool)

(assert (=> start!71188 (and (array_inv!17642 _values!788) e!460302)))

(assert (=> start!71188 tp!46752))

(declare-fun b!826476 () Bool)

(declare-fun e!460305 () Bool)

(assert (=> b!826476 (= e!460305 true)))

(declare-datatypes ((tuple2!10038 0))(
  ( (tuple2!10039 (_1!5029 (_ BitVec 64)) (_2!5029 V!25055)) )
))
(declare-fun lt!374186 () tuple2!10038)

(declare-datatypes ((List!15876 0))(
  ( (Nil!15873) (Cons!15872 (h!17001 tuple2!10038) (t!22231 List!15876)) )
))
(declare-datatypes ((ListLongMap!8875 0))(
  ( (ListLongMap!8876 (toList!4453 List!15876)) )
))
(declare-fun lt!374181 () ListLongMap!8875)

(declare-fun lt!374183 () ListLongMap!8875)

(declare-fun lt!374184 () tuple2!10038)

(declare-fun +!1914 (ListLongMap!8875 tuple2!10038) ListLongMap!8875)

(assert (=> b!826476 (= lt!374181 (+!1914 (+!1914 lt!374183 lt!374184) lt!374186))))

(declare-fun lt!374185 () ListLongMap!8875)

(declare-fun lt!374189 () ListLongMap!8875)

(declare-fun lt!374192 () ListLongMap!8875)

(assert (=> b!826476 (and (= lt!374185 lt!374189) (= lt!374192 lt!374189) (= lt!374192 lt!374185))))

(declare-fun lt!374187 () ListLongMap!8875)

(assert (=> b!826476 (= lt!374189 (+!1914 lt!374187 lt!374184))))

(declare-fun lt!374180 () ListLongMap!8875)

(assert (=> b!826476 (= lt!374185 (+!1914 lt!374180 lt!374184))))

(declare-fun zeroValueBefore!34 () V!25055)

(declare-fun zeroValueAfter!34 () V!25055)

(declare-datatypes ((Unit!28341 0))(
  ( (Unit!28342) )
))
(declare-fun lt!374191 () Unit!28341)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!236 (ListLongMap!8875 (_ BitVec 64) V!25055 V!25055) Unit!28341)

(assert (=> b!826476 (= lt!374191 (addSameAsAddTwiceSameKeyDiffValues!236 lt!374180 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!460303 () Bool)

(assert (=> b!826476 e!460303))

(declare-fun res!563505 () Bool)

(assert (=> b!826476 (=> (not res!563505) (not e!460303))))

(declare-fun lt!374190 () ListLongMap!8875)

(assert (=> b!826476 (= res!563505 (= lt!374190 lt!374187))))

(declare-fun lt!374188 () tuple2!10038)

(assert (=> b!826476 (= lt!374187 (+!1914 lt!374180 lt!374188))))

(assert (=> b!826476 (= lt!374180 (+!1914 lt!374183 lt!374186))))

(assert (=> b!826476 (= lt!374184 (tuple2!10039 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!460304 () Bool)

(assert (=> b!826476 e!460304))

(declare-fun res!563506 () Bool)

(assert (=> b!826476 (=> (not res!563506) (not e!460304))))

(assert (=> b!826476 (= res!563506 (= lt!374190 (+!1914 (+!1914 lt!374183 lt!374188) lt!374186)))))

(declare-fun minValue!754 () V!25055)

(assert (=> b!826476 (= lt!374186 (tuple2!10039 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!826476 (= lt!374188 (tuple2!10039 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2558 (array!46222 array!46224 (_ BitVec 32) (_ BitVec 32) V!25055 V!25055 (_ BitVec 32) Int) ListLongMap!8875)

(assert (=> b!826476 (= lt!374192 (getCurrentListMap!2558 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826476 (= lt!374190 (getCurrentListMap!2558 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!374193 () ListLongMap!8875)

(declare-fun b!826477 () Bool)

(assert (=> b!826477 (= e!460304 (= lt!374192 (+!1914 (+!1914 lt!374193 (tuple2!10039 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!374186)))))

(declare-fun b!826478 () Bool)

(assert (=> b!826478 (= e!460303 (= lt!374192 (+!1914 (+!1914 lt!374193 lt!374186) lt!374184)))))

(declare-fun mapIsEmpty!24187 () Bool)

(declare-fun mapRes!24187 () Bool)

(assert (=> mapIsEmpty!24187 mapRes!24187))

(declare-fun b!826479 () Bool)

(assert (=> b!826479 (= e!460300 (not e!460305))))

(declare-fun res!563509 () Bool)

(assert (=> b!826479 (=> res!563509 e!460305)))

(assert (=> b!826479 (= res!563509 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!826479 (= lt!374183 lt!374193)))

(declare-fun lt!374182 () Unit!28341)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!578 (array!46222 array!46224 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25055 V!25055 V!25055 V!25055 (_ BitVec 32) Int) Unit!28341)

(assert (=> b!826479 (= lt!374182 (lemmaNoChangeToArrayThenSameMapNoExtras!578 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2462 (array!46222 array!46224 (_ BitVec 32) (_ BitVec 32) V!25055 V!25055 (_ BitVec 32) Int) ListLongMap!8875)

(assert (=> b!826479 (= lt!374193 (getCurrentListMapNoExtraKeys!2462 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826479 (= lt!374183 (getCurrentListMapNoExtraKeys!2462 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826480 () Bool)

(declare-fun res!563510 () Bool)

(assert (=> b!826480 (=> (not res!563510) (not e!460300))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46222 (_ BitVec 32)) Bool)

(assert (=> b!826480 (= res!563510 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!826481 () Bool)

(declare-fun e!460299 () Bool)

(assert (=> b!826481 (= e!460299 tp_is_empty!15041)))

(declare-fun b!826482 () Bool)

(assert (=> b!826482 (= e!460302 (and e!460299 mapRes!24187))))

(declare-fun condMapEmpty!24187 () Bool)

(declare-fun mapDefault!24187 () ValueCell!7105)

