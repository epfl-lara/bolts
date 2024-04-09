; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70226 () Bool)

(assert start!70226)

(declare-fun b_free!12595 () Bool)

(declare-fun b_next!12595 () Bool)

(assert (=> start!70226 (= b_free!12595 (not b_next!12595))))

(declare-fun tp!44506 () Bool)

(declare-fun b_and!21401 () Bool)

(assert (=> start!70226 (= tp!44506 b_and!21401)))

(declare-fun b!815424 () Bool)

(declare-fun res!556913 () Bool)

(declare-fun e!452208 () Bool)

(assert (=> b!815424 (=> (not res!556913) (not e!452208))))

(declare-datatypes ((array!44798 0))(
  ( (array!44799 (arr!21453 (Array (_ BitVec 32) (_ BitVec 64))) (size!21874 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44798)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24075 0))(
  ( (V!24076 (val!7200 Int)) )
))
(declare-datatypes ((ValueCell!6737 0))(
  ( (ValueCellFull!6737 (v!9623 V!24075)) (EmptyCell!6737) )
))
(declare-datatypes ((array!44800 0))(
  ( (array!44801 (arr!21454 (Array (_ BitVec 32) ValueCell!6737)) (size!21875 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44800)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!815424 (= res!556913 (and (= (size!21875 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21874 _keys!976) (size!21875 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!815426 () Bool)

(declare-fun e!452210 () Bool)

(assert (=> b!815426 (= e!452208 (not e!452210))))

(declare-fun res!556912 () Bool)

(assert (=> b!815426 (=> res!556912 e!452210)))

(assert (=> b!815426 (= res!556912 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9458 0))(
  ( (tuple2!9459 (_1!4739 (_ BitVec 64)) (_2!4739 V!24075)) )
))
(declare-datatypes ((List!15329 0))(
  ( (Nil!15326) (Cons!15325 (h!16454 tuple2!9458) (t!21658 List!15329)) )
))
(declare-datatypes ((ListLongMap!8295 0))(
  ( (ListLongMap!8296 (toList!4163 List!15329)) )
))
(declare-fun lt!365078 () ListLongMap!8295)

(declare-fun lt!365076 () ListLongMap!8295)

(assert (=> b!815426 (= lt!365078 lt!365076)))

(declare-fun zeroValueAfter!34 () V!24075)

(declare-fun minValue!754 () V!24075)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27782 0))(
  ( (Unit!27783) )
))
(declare-fun lt!365080 () Unit!27782)

(declare-fun zeroValueBefore!34 () V!24075)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!328 (array!44798 array!44800 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24075 V!24075 V!24075 V!24075 (_ BitVec 32) Int) Unit!27782)

(assert (=> b!815426 (= lt!365080 (lemmaNoChangeToArrayThenSameMapNoExtras!328 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2212 (array!44798 array!44800 (_ BitVec 32) (_ BitVec 32) V!24075 V!24075 (_ BitVec 32) Int) ListLongMap!8295)

(assert (=> b!815426 (= lt!365076 (getCurrentListMapNoExtraKeys!2212 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815426 (= lt!365078 (getCurrentListMapNoExtraKeys!2212 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815427 () Bool)

(declare-fun res!556915 () Bool)

(assert (=> b!815427 (=> (not res!556915) (not e!452208))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44798 (_ BitVec 32)) Bool)

(assert (=> b!815427 (= res!556915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23044 () Bool)

(declare-fun mapRes!23044 () Bool)

(assert (=> mapIsEmpty!23044 mapRes!23044))

(declare-fun b!815428 () Bool)

(declare-fun e!452209 () Bool)

(declare-fun tp_is_empty!14305 () Bool)

(assert (=> b!815428 (= e!452209 tp_is_empty!14305)))

(declare-fun b!815429 () Bool)

(declare-fun res!556911 () Bool)

(assert (=> b!815429 (=> (not res!556911) (not e!452208))))

(declare-datatypes ((List!15330 0))(
  ( (Nil!15327) (Cons!15326 (h!16455 (_ BitVec 64)) (t!21659 List!15330)) )
))
(declare-fun arrayNoDuplicates!0 (array!44798 (_ BitVec 32) List!15330) Bool)

(assert (=> b!815429 (= res!556911 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15327))))

(declare-fun b!815430 () Bool)

(declare-fun e!452212 () Bool)

(assert (=> b!815430 (= e!452212 tp_is_empty!14305)))

(declare-fun mapNonEmpty!23044 () Bool)

(declare-fun tp!44505 () Bool)

(assert (=> mapNonEmpty!23044 (= mapRes!23044 (and tp!44505 e!452212))))

(declare-fun mapRest!23044 () (Array (_ BitVec 32) ValueCell!6737))

(declare-fun mapKey!23044 () (_ BitVec 32))

(declare-fun mapValue!23044 () ValueCell!6737)

(assert (=> mapNonEmpty!23044 (= (arr!21454 _values!788) (store mapRest!23044 mapKey!23044 mapValue!23044))))

(declare-fun b!815431 () Bool)

(assert (=> b!815431 (= e!452210 true)))

(declare-fun lt!365079 () ListLongMap!8295)

(declare-fun getCurrentListMap!2356 (array!44798 array!44800 (_ BitVec 32) (_ BitVec 32) V!24075 V!24075 (_ BitVec 32) Int) ListLongMap!8295)

(assert (=> b!815431 (= lt!365079 (getCurrentListMap!2356 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365077 () ListLongMap!8295)

(declare-fun +!1755 (ListLongMap!8295 tuple2!9458) ListLongMap!8295)

(assert (=> b!815431 (= lt!365077 (+!1755 (getCurrentListMap!2356 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9459 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun res!556914 () Bool)

(assert (=> start!70226 (=> (not res!556914) (not e!452208))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70226 (= res!556914 (validMask!0 mask!1312))))

(assert (=> start!70226 e!452208))

(assert (=> start!70226 tp_is_empty!14305))

(declare-fun array_inv!17145 (array!44798) Bool)

(assert (=> start!70226 (array_inv!17145 _keys!976)))

(assert (=> start!70226 true))

(declare-fun e!452211 () Bool)

(declare-fun array_inv!17146 (array!44800) Bool)

(assert (=> start!70226 (and (array_inv!17146 _values!788) e!452211)))

(assert (=> start!70226 tp!44506))

(declare-fun b!815425 () Bool)

(assert (=> b!815425 (= e!452211 (and e!452209 mapRes!23044))))

(declare-fun condMapEmpty!23044 () Bool)

(declare-fun mapDefault!23044 () ValueCell!6737)

