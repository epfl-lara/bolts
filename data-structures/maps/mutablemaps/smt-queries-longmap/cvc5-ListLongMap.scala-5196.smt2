; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70200 () Bool)

(assert start!70200)

(declare-fun b_free!12583 () Bool)

(declare-fun b_next!12583 () Bool)

(assert (=> start!70200 (= b_free!12583 (not b_next!12583))))

(declare-fun tp!44467 () Bool)

(declare-fun b_and!21381 () Bool)

(assert (=> start!70200 (= tp!44467 b_and!21381)))

(declare-fun mapIsEmpty!23023 () Bool)

(declare-fun mapRes!23023 () Bool)

(assert (=> mapIsEmpty!23023 mapRes!23023))

(declare-fun b!815202 () Bool)

(declare-fun e!452053 () Bool)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((array!44774 0))(
  ( (array!44775 (arr!21442 (Array (_ BitVec 32) (_ BitVec 64))) (size!21863 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44774)

(assert (=> b!815202 (= e!452053 (not (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!21863 _keys!976)))))))

(declare-datatypes ((V!24059 0))(
  ( (V!24060 (val!7194 Int)) )
))
(declare-datatypes ((tuple2!9448 0))(
  ( (tuple2!9449 (_1!4734 (_ BitVec 64)) (_2!4734 V!24059)) )
))
(declare-datatypes ((List!15321 0))(
  ( (Nil!15318) (Cons!15317 (h!16446 tuple2!9448) (t!21648 List!15321)) )
))
(declare-datatypes ((ListLongMap!8285 0))(
  ( (ListLongMap!8286 (toList!4158 List!15321)) )
))
(declare-fun lt!364962 () ListLongMap!8285)

(declare-fun lt!364960 () ListLongMap!8285)

(assert (=> b!815202 (= lt!364962 lt!364960)))

(declare-fun zeroValueBefore!34 () V!24059)

(declare-fun zeroValueAfter!34 () V!24059)

(declare-fun minValue!754 () V!24059)

(declare-datatypes ((ValueCell!6731 0))(
  ( (ValueCellFull!6731 (v!9617 V!24059)) (EmptyCell!6731) )
))
(declare-datatypes ((array!44776 0))(
  ( (array!44777 (arr!21443 (Array (_ BitVec 32) ValueCell!6731)) (size!21864 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44776)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!27772 0))(
  ( (Unit!27773) )
))
(declare-fun lt!364961 () Unit!27772)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!323 (array!44774 array!44776 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24059 V!24059 V!24059 V!24059 (_ BitVec 32) Int) Unit!27772)

(assert (=> b!815202 (= lt!364961 (lemmaNoChangeToArrayThenSameMapNoExtras!323 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2207 (array!44774 array!44776 (_ BitVec 32) (_ BitVec 32) V!24059 V!24059 (_ BitVec 32) Int) ListLongMap!8285)

(assert (=> b!815202 (= lt!364960 (getCurrentListMapNoExtraKeys!2207 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815202 (= lt!364962 (getCurrentListMapNoExtraKeys!2207 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815203 () Bool)

(declare-fun res!556799 () Bool)

(assert (=> b!815203 (=> (not res!556799) (not e!452053))))

(assert (=> b!815203 (= res!556799 (and (= (size!21864 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21863 _keys!976) (size!21864 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!815204 () Bool)

(declare-fun res!556797 () Bool)

(assert (=> b!815204 (=> (not res!556797) (not e!452053))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44774 (_ BitVec 32)) Bool)

(assert (=> b!815204 (= res!556797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!815205 () Bool)

(declare-fun e!452052 () Bool)

(declare-fun tp_is_empty!14293 () Bool)

(assert (=> b!815205 (= e!452052 tp_is_empty!14293)))

(declare-fun b!815206 () Bool)

(declare-fun e!452051 () Bool)

(assert (=> b!815206 (= e!452051 (and e!452052 mapRes!23023))))

(declare-fun condMapEmpty!23023 () Bool)

(declare-fun mapDefault!23023 () ValueCell!6731)

