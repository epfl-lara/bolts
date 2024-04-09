; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70152 () Bool)

(assert start!70152)

(declare-fun b_free!12535 () Bool)

(declare-fun b_next!12535 () Bool)

(assert (=> start!70152 (= b_free!12535 (not b_next!12535))))

(declare-fun tp!44322 () Bool)

(declare-fun b_and!21333 () Bool)

(assert (=> start!70152 (= tp!44322 b_and!21333)))

(declare-fun mapIsEmpty!22951 () Bool)

(declare-fun mapRes!22951 () Bool)

(assert (=> mapIsEmpty!22951 mapRes!22951))

(declare-fun b!814698 () Bool)

(declare-fun res!556511 () Bool)

(declare-fun e!451692 () Bool)

(assert (=> b!814698 (=> (not res!556511) (not e!451692))))

(declare-datatypes ((array!44678 0))(
  ( (array!44679 (arr!21394 (Array (_ BitVec 32) (_ BitVec 64))) (size!21815 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44678)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23995 0))(
  ( (V!23996 (val!7170 Int)) )
))
(declare-datatypes ((ValueCell!6707 0))(
  ( (ValueCellFull!6707 (v!9593 V!23995)) (EmptyCell!6707) )
))
(declare-datatypes ((array!44680 0))(
  ( (array!44681 (arr!21395 (Array (_ BitVec 32) ValueCell!6707)) (size!21816 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44680)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!814698 (= res!556511 (and (= (size!21816 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21815 _keys!976) (size!21816 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814699 () Bool)

(declare-fun e!451694 () Bool)

(declare-fun tp_is_empty!14245 () Bool)

(assert (=> b!814699 (= e!451694 tp_is_empty!14245)))

(declare-fun b!814700 () Bool)

(declare-fun res!556510 () Bool)

(assert (=> b!814700 (=> (not res!556510) (not e!451692))))

(declare-datatypes ((List!15278 0))(
  ( (Nil!15275) (Cons!15274 (h!16403 (_ BitVec 64)) (t!21605 List!15278)) )
))
(declare-fun arrayNoDuplicates!0 (array!44678 (_ BitVec 32) List!15278) Bool)

(assert (=> b!814700 (= res!556510 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15275))))

(declare-fun b!814701 () Bool)

(assert (=> b!814701 (= e!451692 (not true))))

(declare-datatypes ((tuple2!9406 0))(
  ( (tuple2!9407 (_1!4713 (_ BitVec 64)) (_2!4713 V!23995)) )
))
(declare-datatypes ((List!15279 0))(
  ( (Nil!15276) (Cons!15275 (h!16404 tuple2!9406) (t!21606 List!15279)) )
))
(declare-datatypes ((ListLongMap!8243 0))(
  ( (ListLongMap!8244 (toList!4137 List!15279)) )
))
(declare-fun lt!364744 () ListLongMap!8243)

(declare-fun lt!364746 () ListLongMap!8243)

(assert (=> b!814701 (= lt!364744 lt!364746)))

(declare-fun zeroValueBefore!34 () V!23995)

(declare-fun zeroValueAfter!34 () V!23995)

(declare-fun minValue!754 () V!23995)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27730 0))(
  ( (Unit!27731) )
))
(declare-fun lt!364745 () Unit!27730)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!302 (array!44678 array!44680 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23995 V!23995 V!23995 V!23995 (_ BitVec 32) Int) Unit!27730)

(assert (=> b!814701 (= lt!364745 (lemmaNoChangeToArrayThenSameMapNoExtras!302 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2186 (array!44678 array!44680 (_ BitVec 32) (_ BitVec 32) V!23995 V!23995 (_ BitVec 32) Int) ListLongMap!8243)

(assert (=> b!814701 (= lt!364746 (getCurrentListMapNoExtraKeys!2186 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814701 (= lt!364744 (getCurrentListMapNoExtraKeys!2186 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814702 () Bool)

(declare-fun res!556509 () Bool)

(assert (=> b!814702 (=> (not res!556509) (not e!451692))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44678 (_ BitVec 32)) Bool)

(assert (=> b!814702 (= res!556509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814703 () Bool)

(declare-fun e!451691 () Bool)

(assert (=> b!814703 (= e!451691 tp_is_empty!14245)))

(declare-fun b!814704 () Bool)

(declare-fun e!451695 () Bool)

(assert (=> b!814704 (= e!451695 (and e!451691 mapRes!22951))))

(declare-fun condMapEmpty!22951 () Bool)

(declare-fun mapDefault!22951 () ValueCell!6707)

