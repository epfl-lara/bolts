; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70256 () Bool)

(assert start!70256)

(declare-fun b_free!12625 () Bool)

(declare-fun b_next!12625 () Bool)

(assert (=> start!70256 (= b_free!12625 (not b_next!12625))))

(declare-fun tp!44596 () Bool)

(declare-fun b_and!21431 () Bool)

(assert (=> start!70256 (= tp!44596 b_and!21431)))

(declare-fun mapNonEmpty!23089 () Bool)

(declare-fun mapRes!23089 () Bool)

(declare-fun tp!44595 () Bool)

(declare-fun e!452481 () Bool)

(assert (=> mapNonEmpty!23089 (= mapRes!23089 (and tp!44595 e!452481))))

(declare-datatypes ((V!24115 0))(
  ( (V!24116 (val!7215 Int)) )
))
(declare-datatypes ((ValueCell!6752 0))(
  ( (ValueCellFull!6752 (v!9638 V!24115)) (EmptyCell!6752) )
))
(declare-fun mapValue!23089 () ValueCell!6752)

(declare-fun mapKey!23089 () (_ BitVec 32))

(declare-datatypes ((array!44852 0))(
  ( (array!44853 (arr!21480 (Array (_ BitVec 32) ValueCell!6752)) (size!21901 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44852)

(declare-fun mapRest!23089 () (Array (_ BitVec 32) ValueCell!6752))

(assert (=> mapNonEmpty!23089 (= (arr!21480 _values!788) (store mapRest!23089 mapKey!23089 mapValue!23089))))

(declare-fun b!815784 () Bool)

(declare-fun res!557140 () Bool)

(declare-fun e!452477 () Bool)

(assert (=> b!815784 (=> (not res!557140) (not e!452477))))

(declare-datatypes ((array!44854 0))(
  ( (array!44855 (arr!21481 (Array (_ BitVec 32) (_ BitVec 64))) (size!21902 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44854)

(declare-datatypes ((List!15350 0))(
  ( (Nil!15347) (Cons!15346 (h!16475 (_ BitVec 64)) (t!21679 List!15350)) )
))
(declare-fun arrayNoDuplicates!0 (array!44854 (_ BitVec 32) List!15350) Bool)

(assert (=> b!815784 (= res!557140 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15347))))

(declare-fun b!815785 () Bool)

(declare-fun tp_is_empty!14335 () Bool)

(assert (=> b!815785 (= e!452481 tp_is_empty!14335)))

(declare-fun b!815786 () Bool)

(declare-fun e!452480 () Bool)

(assert (=> b!815786 (= e!452480 tp_is_empty!14335)))

(declare-fun b!815787 () Bool)

(declare-fun res!557138 () Bool)

(assert (=> b!815787 (=> (not res!557138) (not e!452477))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!815787 (= res!557138 (and (= (size!21901 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21902 _keys!976) (size!21901 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!815788 () Bool)

(declare-fun e!452479 () Bool)

(assert (=> b!815788 (= e!452479 true)))

(declare-datatypes ((tuple2!9480 0))(
  ( (tuple2!9481 (_1!4750 (_ BitVec 64)) (_2!4750 V!24115)) )
))
(declare-datatypes ((List!15351 0))(
  ( (Nil!15348) (Cons!15347 (h!16476 tuple2!9480) (t!21680 List!15351)) )
))
(declare-datatypes ((ListLongMap!8317 0))(
  ( (ListLongMap!8318 (toList!4174 List!15351)) )
))
(declare-fun lt!365303 () ListLongMap!8317)

(declare-fun zeroValueAfter!34 () V!24115)

(declare-fun minValue!754 () V!24115)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2363 (array!44854 array!44852 (_ BitVec 32) (_ BitVec 32) V!24115 V!24115 (_ BitVec 32) Int) ListLongMap!8317)

(assert (=> b!815788 (= lt!365303 (getCurrentListMap!2363 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24115)

(declare-fun lt!365302 () ListLongMap!8317)

(declare-fun +!1762 (ListLongMap!8317 tuple2!9480) ListLongMap!8317)

(assert (=> b!815788 (= lt!365302 (+!1762 (getCurrentListMap!2363 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9481 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!815789 () Bool)

(declare-fun res!557139 () Bool)

(assert (=> b!815789 (=> (not res!557139) (not e!452477))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44854 (_ BitVec 32)) Bool)

(assert (=> b!815789 (= res!557139 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23089 () Bool)

(assert (=> mapIsEmpty!23089 mapRes!23089))

(declare-fun res!557137 () Bool)

(assert (=> start!70256 (=> (not res!557137) (not e!452477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70256 (= res!557137 (validMask!0 mask!1312))))

(assert (=> start!70256 e!452477))

(assert (=> start!70256 tp_is_empty!14335))

(declare-fun array_inv!17165 (array!44854) Bool)

(assert (=> start!70256 (array_inv!17165 _keys!976)))

(assert (=> start!70256 true))

(declare-fun e!452482 () Bool)

(declare-fun array_inv!17166 (array!44852) Bool)

(assert (=> start!70256 (and (array_inv!17166 _values!788) e!452482)))

(assert (=> start!70256 tp!44596))

(declare-fun b!815790 () Bool)

(assert (=> b!815790 (= e!452477 (not e!452479))))

(declare-fun res!557136 () Bool)

(assert (=> b!815790 (=> res!557136 e!452479)))

(assert (=> b!815790 (= res!557136 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!365305 () ListLongMap!8317)

(declare-fun lt!365301 () ListLongMap!8317)

(assert (=> b!815790 (= lt!365305 lt!365301)))

(declare-datatypes ((Unit!27804 0))(
  ( (Unit!27805) )
))
(declare-fun lt!365304 () Unit!27804)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!339 (array!44854 array!44852 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24115 V!24115 V!24115 V!24115 (_ BitVec 32) Int) Unit!27804)

(assert (=> b!815790 (= lt!365304 (lemmaNoChangeToArrayThenSameMapNoExtras!339 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2223 (array!44854 array!44852 (_ BitVec 32) (_ BitVec 32) V!24115 V!24115 (_ BitVec 32) Int) ListLongMap!8317)

(assert (=> b!815790 (= lt!365301 (getCurrentListMapNoExtraKeys!2223 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815790 (= lt!365305 (getCurrentListMapNoExtraKeys!2223 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815791 () Bool)

(assert (=> b!815791 (= e!452482 (and e!452480 mapRes!23089))))

(declare-fun condMapEmpty!23089 () Bool)

(declare-fun mapDefault!23089 () ValueCell!6752)

