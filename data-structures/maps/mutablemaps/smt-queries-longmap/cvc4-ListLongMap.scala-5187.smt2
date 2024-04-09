; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70136 () Bool)

(assert start!70136)

(declare-fun b_free!12533 () Bool)

(declare-fun b_next!12533 () Bool)

(assert (=> start!70136 (= b_free!12533 (not b_next!12533))))

(declare-fun tp!44314 () Bool)

(declare-fun b_and!21323 () Bool)

(assert (=> start!70136 (= tp!44314 b_and!21323)))

(declare-fun b!814592 () Bool)

(declare-fun e!451622 () Bool)

(declare-fun tp_is_empty!14243 () Bool)

(assert (=> b!814592 (= e!451622 tp_is_empty!14243)))

(declare-fun b!814593 () Bool)

(declare-fun e!451623 () Bool)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((array!44672 0))(
  ( (array!44673 (arr!21392 (Array (_ BitVec 32) (_ BitVec 64))) (size!21813 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44672)

(assert (=> b!814593 (= e!451623 (not (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!21813 _keys!976)))))))

(declare-datatypes ((V!23991 0))(
  ( (V!23992 (val!7169 Int)) )
))
(declare-datatypes ((tuple2!9404 0))(
  ( (tuple2!9405 (_1!4712 (_ BitVec 64)) (_2!4712 V!23991)) )
))
(declare-datatypes ((List!15277 0))(
  ( (Nil!15274) (Cons!15273 (h!16402 tuple2!9404) (t!21602 List!15277)) )
))
(declare-datatypes ((ListLongMap!8241 0))(
  ( (ListLongMap!8242 (toList!4136 List!15277)) )
))
(declare-fun lt!364696 () ListLongMap!8241)

(declare-fun lt!364697 () ListLongMap!8241)

(assert (=> b!814593 (= lt!364696 lt!364697)))

(declare-fun zeroValueBefore!34 () V!23991)

(declare-fun zeroValueAfter!34 () V!23991)

(declare-fun minValue!754 () V!23991)

(declare-datatypes ((ValueCell!6706 0))(
  ( (ValueCellFull!6706 (v!9592 V!23991)) (EmptyCell!6706) )
))
(declare-datatypes ((array!44674 0))(
  ( (array!44675 (arr!21393 (Array (_ BitVec 32) ValueCell!6706)) (size!21814 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44674)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!27728 0))(
  ( (Unit!27729) )
))
(declare-fun lt!364695 () Unit!27728)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!301 (array!44672 array!44674 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23991 V!23991 V!23991 V!23991 (_ BitVec 32) Int) Unit!27728)

(assert (=> b!814593 (= lt!364695 (lemmaNoChangeToArrayThenSameMapNoExtras!301 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2185 (array!44672 array!44674 (_ BitVec 32) (_ BitVec 32) V!23991 V!23991 (_ BitVec 32) Int) ListLongMap!8241)

(assert (=> b!814593 (= lt!364697 (getCurrentListMapNoExtraKeys!2185 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814593 (= lt!364696 (getCurrentListMapNoExtraKeys!2185 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814594 () Bool)

(declare-fun res!556468 () Bool)

(assert (=> b!814594 (=> (not res!556468) (not e!451623))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44672 (_ BitVec 32)) Bool)

(assert (=> b!814594 (= res!556468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!22945 () Bool)

(declare-fun mapRes!22945 () Bool)

(declare-fun tp!44313 () Bool)

(declare-fun e!451625 () Bool)

(assert (=> mapNonEmpty!22945 (= mapRes!22945 (and tp!44313 e!451625))))

(declare-fun mapKey!22945 () (_ BitVec 32))

(declare-fun mapValue!22945 () ValueCell!6706)

(declare-fun mapRest!22945 () (Array (_ BitVec 32) ValueCell!6706))

(assert (=> mapNonEmpty!22945 (= (arr!21393 _values!788) (store mapRest!22945 mapKey!22945 mapValue!22945))))

(declare-fun b!814595 () Bool)

(declare-fun e!451621 () Bool)

(assert (=> b!814595 (= e!451621 (and e!451622 mapRes!22945))))

(declare-fun condMapEmpty!22945 () Bool)

(declare-fun mapDefault!22945 () ValueCell!6706)

