; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70180 () Bool)

(assert start!70180)

(declare-fun b_free!12563 () Bool)

(declare-fun b_next!12563 () Bool)

(assert (=> start!70180 (= b_free!12563 (not b_next!12563))))

(declare-fun tp!44406 () Bool)

(declare-fun b_and!21361 () Bool)

(assert (=> start!70180 (= tp!44406 b_and!21361)))

(declare-fun b!814992 () Bool)

(declare-fun res!556680 () Bool)

(declare-fun e!451905 () Bool)

(assert (=> b!814992 (=> (not res!556680) (not e!451905))))

(declare-datatypes ((array!44734 0))(
  ( (array!44735 (arr!21422 (Array (_ BitVec 32) (_ BitVec 64))) (size!21843 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44734)

(declare-datatypes ((List!15305 0))(
  ( (Nil!15302) (Cons!15301 (h!16430 (_ BitVec 64)) (t!21632 List!15305)) )
))
(declare-fun arrayNoDuplicates!0 (array!44734 (_ BitVec 32) List!15305) Bool)

(assert (=> b!814992 (= res!556680 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15302))))

(declare-fun res!556677 () Bool)

(assert (=> start!70180 (=> (not res!556677) (not e!451905))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70180 (= res!556677 (validMask!0 mask!1312))))

(assert (=> start!70180 e!451905))

(declare-fun tp_is_empty!14273 () Bool)

(assert (=> start!70180 tp_is_empty!14273))

(declare-fun array_inv!17121 (array!44734) Bool)

(assert (=> start!70180 (array_inv!17121 _keys!976)))

(assert (=> start!70180 true))

(declare-datatypes ((V!24031 0))(
  ( (V!24032 (val!7184 Int)) )
))
(declare-datatypes ((ValueCell!6721 0))(
  ( (ValueCellFull!6721 (v!9607 V!24031)) (EmptyCell!6721) )
))
(declare-datatypes ((array!44736 0))(
  ( (array!44737 (arr!21423 (Array (_ BitVec 32) ValueCell!6721)) (size!21844 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44736)

(declare-fun e!451904 () Bool)

(declare-fun array_inv!17122 (array!44736) Bool)

(assert (=> start!70180 (and (array_inv!17122 _values!788) e!451904)))

(assert (=> start!70180 tp!44406))

(declare-fun b!814993 () Bool)

(declare-fun res!556679 () Bool)

(assert (=> b!814993 (=> (not res!556679) (not e!451905))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!814993 (= res!556679 (and (= (size!21844 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21843 _keys!976) (size!21844 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814994 () Bool)

(declare-fun e!451901 () Bool)

(assert (=> b!814994 (= e!451901 tp_is_empty!14273)))

(declare-fun mapNonEmpty!22993 () Bool)

(declare-fun mapRes!22993 () Bool)

(declare-fun tp!44407 () Bool)

(assert (=> mapNonEmpty!22993 (= mapRes!22993 (and tp!44407 e!451901))))

(declare-fun mapKey!22993 () (_ BitVec 32))

(declare-fun mapValue!22993 () ValueCell!6721)

(declare-fun mapRest!22993 () (Array (_ BitVec 32) ValueCell!6721))

(assert (=> mapNonEmpty!22993 (= (arr!21423 _values!788) (store mapRest!22993 mapKey!22993 mapValue!22993))))

(declare-fun b!814995 () Bool)

(declare-fun e!451902 () Bool)

(assert (=> b!814995 (= e!451902 tp_is_empty!14273)))

(declare-fun b!814996 () Bool)

(assert (=> b!814996 (= e!451905 (not true))))

(declare-datatypes ((tuple2!9432 0))(
  ( (tuple2!9433 (_1!4726 (_ BitVec 64)) (_2!4726 V!24031)) )
))
(declare-datatypes ((List!15306 0))(
  ( (Nil!15303) (Cons!15302 (h!16431 tuple2!9432) (t!21633 List!15306)) )
))
(declare-datatypes ((ListLongMap!8269 0))(
  ( (ListLongMap!8270 (toList!4150 List!15306)) )
))
(declare-fun lt!364872 () ListLongMap!8269)

(declare-fun lt!364870 () ListLongMap!8269)

(assert (=> b!814996 (= lt!364872 lt!364870)))

(declare-fun zeroValueBefore!34 () V!24031)

(declare-fun zeroValueAfter!34 () V!24031)

(declare-fun minValue!754 () V!24031)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27756 0))(
  ( (Unit!27757) )
))
(declare-fun lt!364871 () Unit!27756)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!315 (array!44734 array!44736 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24031 V!24031 V!24031 V!24031 (_ BitVec 32) Int) Unit!27756)

(assert (=> b!814996 (= lt!364871 (lemmaNoChangeToArrayThenSameMapNoExtras!315 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2199 (array!44734 array!44736 (_ BitVec 32) (_ BitVec 32) V!24031 V!24031 (_ BitVec 32) Int) ListLongMap!8269)

(assert (=> b!814996 (= lt!364870 (getCurrentListMapNoExtraKeys!2199 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814996 (= lt!364872 (getCurrentListMapNoExtraKeys!2199 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814997 () Bool)

(declare-fun res!556678 () Bool)

(assert (=> b!814997 (=> (not res!556678) (not e!451905))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44734 (_ BitVec 32)) Bool)

(assert (=> b!814997 (= res!556678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!22993 () Bool)

(assert (=> mapIsEmpty!22993 mapRes!22993))

(declare-fun b!814998 () Bool)

(assert (=> b!814998 (= e!451904 (and e!451902 mapRes!22993))))

(declare-fun condMapEmpty!22993 () Bool)

(declare-fun mapDefault!22993 () ValueCell!6721)

