; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70260 () Bool)

(assert start!70260)

(declare-fun b_free!12629 () Bool)

(declare-fun b_next!12629 () Bool)

(assert (=> start!70260 (= b_free!12629 (not b_next!12629))))

(declare-fun tp!44608 () Bool)

(declare-fun b_and!21435 () Bool)

(assert (=> start!70260 (= tp!44608 b_and!21435)))

(declare-fun b!815832 () Bool)

(declare-fun res!557168 () Bool)

(declare-fun e!452514 () Bool)

(assert (=> b!815832 (=> (not res!557168) (not e!452514))))

(declare-datatypes ((array!44860 0))(
  ( (array!44861 (arr!21484 (Array (_ BitVec 32) (_ BitVec 64))) (size!21905 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44860)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24119 0))(
  ( (V!24120 (val!7217 Int)) )
))
(declare-datatypes ((ValueCell!6754 0))(
  ( (ValueCellFull!6754 (v!9640 V!24119)) (EmptyCell!6754) )
))
(declare-datatypes ((array!44862 0))(
  ( (array!44863 (arr!21485 (Array (_ BitVec 32) ValueCell!6754)) (size!21906 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44862)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!815832 (= res!557168 (and (= (size!21906 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21905 _keys!976) (size!21906 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!815833 () Bool)

(declare-fun e!452518 () Bool)

(assert (=> b!815833 (= e!452518 true)))

(declare-fun zeroValueAfter!34 () V!24119)

(declare-fun minValue!754 () V!24119)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9484 0))(
  ( (tuple2!9485 (_1!4752 (_ BitVec 64)) (_2!4752 V!24119)) )
))
(declare-datatypes ((List!15354 0))(
  ( (Nil!15351) (Cons!15350 (h!16479 tuple2!9484) (t!21683 List!15354)) )
))
(declare-datatypes ((ListLongMap!8321 0))(
  ( (ListLongMap!8322 (toList!4176 List!15354)) )
))
(declare-fun lt!365333 () ListLongMap!8321)

(declare-fun getCurrentListMap!2365 (array!44860 array!44862 (_ BitVec 32) (_ BitVec 32) V!24119 V!24119 (_ BitVec 32) Int) ListLongMap!8321)

(assert (=> b!815833 (= lt!365333 (getCurrentListMap!2365 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24119)

(declare-fun lt!365332 () ListLongMap!8321)

(declare-fun +!1764 (ListLongMap!8321 tuple2!9484) ListLongMap!8321)

(assert (=> b!815833 (= lt!365332 (+!1764 (getCurrentListMap!2365 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun res!557170 () Bool)

(assert (=> start!70260 (=> (not res!557170) (not e!452514))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70260 (= res!557170 (validMask!0 mask!1312))))

(assert (=> start!70260 e!452514))

(declare-fun tp_is_empty!14339 () Bool)

(assert (=> start!70260 tp_is_empty!14339))

(declare-fun array_inv!17169 (array!44860) Bool)

(assert (=> start!70260 (array_inv!17169 _keys!976)))

(assert (=> start!70260 true))

(declare-fun e!452515 () Bool)

(declare-fun array_inv!17170 (array!44862) Bool)

(assert (=> start!70260 (and (array_inv!17170 _values!788) e!452515)))

(assert (=> start!70260 tp!44608))

(declare-fun b!815834 () Bool)

(declare-fun e!452513 () Bool)

(assert (=> b!815834 (= e!452513 tp_is_empty!14339)))

(declare-fun b!815835 () Bool)

(assert (=> b!815835 (= e!452514 (not e!452518))))

(declare-fun res!557169 () Bool)

(assert (=> b!815835 (=> res!557169 e!452518)))

(assert (=> b!815835 (= res!557169 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!365334 () ListLongMap!8321)

(declare-fun lt!365335 () ListLongMap!8321)

(assert (=> b!815835 (= lt!365334 lt!365335)))

(declare-datatypes ((Unit!27808 0))(
  ( (Unit!27809) )
))
(declare-fun lt!365331 () Unit!27808)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!341 (array!44860 array!44862 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24119 V!24119 V!24119 V!24119 (_ BitVec 32) Int) Unit!27808)

(assert (=> b!815835 (= lt!365331 (lemmaNoChangeToArrayThenSameMapNoExtras!341 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2225 (array!44860 array!44862 (_ BitVec 32) (_ BitVec 32) V!24119 V!24119 (_ BitVec 32) Int) ListLongMap!8321)

(assert (=> b!815835 (= lt!365335 (getCurrentListMapNoExtraKeys!2225 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815835 (= lt!365334 (getCurrentListMapNoExtraKeys!2225 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815836 () Bool)

(declare-fun e!452517 () Bool)

(assert (=> b!815836 (= e!452517 tp_is_empty!14339)))

(declare-fun mapIsEmpty!23095 () Bool)

(declare-fun mapRes!23095 () Bool)

(assert (=> mapIsEmpty!23095 mapRes!23095))

(declare-fun b!815837 () Bool)

(assert (=> b!815837 (= e!452515 (and e!452517 mapRes!23095))))

(declare-fun condMapEmpty!23095 () Bool)

(declare-fun mapDefault!23095 () ValueCell!6754)

