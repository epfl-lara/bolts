; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70266 () Bool)

(assert start!70266)

(declare-fun b_free!12635 () Bool)

(declare-fun b_next!12635 () Bool)

(assert (=> start!70266 (= b_free!12635 (not b_next!12635))))

(declare-fun tp!44625 () Bool)

(declare-fun b_and!21441 () Bool)

(assert (=> start!70266 (= tp!44625 b_and!21441)))

(declare-fun b!815904 () Bool)

(declare-fun e!452570 () Bool)

(declare-fun e!452567 () Bool)

(assert (=> b!815904 (= e!452570 (not e!452567))))

(declare-fun res!557213 () Bool)

(assert (=> b!815904 (=> res!557213 e!452567)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!815904 (= res!557213 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24127 0))(
  ( (V!24128 (val!7220 Int)) )
))
(declare-datatypes ((tuple2!9490 0))(
  ( (tuple2!9491 (_1!4755 (_ BitVec 64)) (_2!4755 V!24127)) )
))
(declare-datatypes ((List!15358 0))(
  ( (Nil!15355) (Cons!15354 (h!16483 tuple2!9490) (t!21687 List!15358)) )
))
(declare-datatypes ((ListLongMap!8327 0))(
  ( (ListLongMap!8328 (toList!4179 List!15358)) )
))
(declare-fun lt!365377 () ListLongMap!8327)

(declare-fun lt!365379 () ListLongMap!8327)

(assert (=> b!815904 (= lt!365377 lt!365379)))

(declare-datatypes ((array!44872 0))(
  ( (array!44873 (arr!21490 (Array (_ BitVec 32) (_ BitVec 64))) (size!21911 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44872)

(declare-fun minValue!754 () V!24127)

(declare-datatypes ((ValueCell!6757 0))(
  ( (ValueCellFull!6757 (v!9643 V!24127)) (EmptyCell!6757) )
))
(declare-datatypes ((array!44874 0))(
  ( (array!44875 (arr!21491 (Array (_ BitVec 32) ValueCell!6757)) (size!21912 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44874)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27814 0))(
  ( (Unit!27815) )
))
(declare-fun lt!365376 () Unit!27814)

(declare-fun zeroValueBefore!34 () V!24127)

(declare-fun zeroValueAfter!34 () V!24127)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!344 (array!44872 array!44874 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24127 V!24127 V!24127 V!24127 (_ BitVec 32) Int) Unit!27814)

(assert (=> b!815904 (= lt!365376 (lemmaNoChangeToArrayThenSameMapNoExtras!344 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2228 (array!44872 array!44874 (_ BitVec 32) (_ BitVec 32) V!24127 V!24127 (_ BitVec 32) Int) ListLongMap!8327)

(assert (=> b!815904 (= lt!365379 (getCurrentListMapNoExtraKeys!2228 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815904 (= lt!365377 (getCurrentListMapNoExtraKeys!2228 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815905 () Bool)

(declare-fun res!557214 () Bool)

(assert (=> b!815905 (=> (not res!557214) (not e!452570))))

(declare-datatypes ((List!15359 0))(
  ( (Nil!15356) (Cons!15355 (h!16484 (_ BitVec 64)) (t!21688 List!15359)) )
))
(declare-fun arrayNoDuplicates!0 (array!44872 (_ BitVec 32) List!15359) Bool)

(assert (=> b!815905 (= res!557214 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15356))))

(declare-fun b!815906 () Bool)

(declare-fun e!452572 () Bool)

(declare-fun tp_is_empty!14345 () Bool)

(assert (=> b!815906 (= e!452572 tp_is_empty!14345)))

(declare-fun b!815907 () Bool)

(declare-fun res!557215 () Bool)

(assert (=> b!815907 (=> (not res!557215) (not e!452570))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44872 (_ BitVec 32)) Bool)

(assert (=> b!815907 (= res!557215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!815908 () Bool)

(declare-fun e!452569 () Bool)

(assert (=> b!815908 (= e!452569 tp_is_empty!14345)))

(declare-fun b!815909 () Bool)

(assert (=> b!815909 (= e!452567 true)))

(declare-fun lt!365378 () ListLongMap!8327)

(declare-fun getCurrentListMap!2367 (array!44872 array!44874 (_ BitVec 32) (_ BitVec 32) V!24127 V!24127 (_ BitVec 32) Int) ListLongMap!8327)

(assert (=> b!815909 (= lt!365378 (getCurrentListMap!2367 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365380 () ListLongMap!8327)

(declare-fun +!1766 (ListLongMap!8327 tuple2!9490) ListLongMap!8327)

(assert (=> b!815909 (= lt!365380 (+!1766 (getCurrentListMap!2367 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9491 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun res!557211 () Bool)

(assert (=> start!70266 (=> (not res!557211) (not e!452570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70266 (= res!557211 (validMask!0 mask!1312))))

(assert (=> start!70266 e!452570))

(assert (=> start!70266 tp_is_empty!14345))

(declare-fun array_inv!17173 (array!44872) Bool)

(assert (=> start!70266 (array_inv!17173 _keys!976)))

(assert (=> start!70266 true))

(declare-fun e!452568 () Bool)

(declare-fun array_inv!17174 (array!44874) Bool)

(assert (=> start!70266 (and (array_inv!17174 _values!788) e!452568)))

(assert (=> start!70266 tp!44625))

(declare-fun b!815910 () Bool)

(declare-fun mapRes!23104 () Bool)

(assert (=> b!815910 (= e!452568 (and e!452569 mapRes!23104))))

(declare-fun condMapEmpty!23104 () Bool)

(declare-fun mapDefault!23104 () ValueCell!6757)

