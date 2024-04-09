; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70840 () Bool)

(assert start!70840)

(declare-fun b_free!13073 () Bool)

(declare-fun b_next!13073 () Bool)

(assert (=> start!70840 (= b_free!13073 (not b_next!13073))))

(declare-fun tp!45964 () Bool)

(declare-fun b_and!21963 () Bool)

(assert (=> start!70840 (= tp!45964 b_and!21963)))

(declare-fun res!561035 () Bool)

(declare-fun e!457286 () Bool)

(assert (=> start!70840 (=> (not res!561035) (not e!457286))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70840 (= res!561035 (validMask!0 mask!1312))))

(assert (=> start!70840 e!457286))

(declare-fun tp_is_empty!14783 () Bool)

(assert (=> start!70840 tp_is_empty!14783))

(declare-datatypes ((array!45718 0))(
  ( (array!45719 (arr!21905 (Array (_ BitVec 32) (_ BitVec 64))) (size!22326 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45718)

(declare-fun array_inv!17463 (array!45718) Bool)

(assert (=> start!70840 (array_inv!17463 _keys!976)))

(assert (=> start!70840 true))

(declare-datatypes ((V!24711 0))(
  ( (V!24712 (val!7439 Int)) )
))
(declare-datatypes ((ValueCell!6976 0))(
  ( (ValueCellFull!6976 (v!9866 V!24711)) (EmptyCell!6976) )
))
(declare-datatypes ((array!45720 0))(
  ( (array!45721 (arr!21906 (Array (_ BitVec 32) ValueCell!6976)) (size!22327 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45720)

(declare-fun e!457288 () Bool)

(declare-fun array_inv!17464 (array!45720) Bool)

(assert (=> start!70840 (and (array_inv!17464 _values!788) e!457288)))

(assert (=> start!70840 tp!45964))

(declare-fun b!822391 () Bool)

(declare-fun res!561032 () Bool)

(assert (=> b!822391 (=> (not res!561032) (not e!457286))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45718 (_ BitVec 32)) Bool)

(assert (=> b!822391 (= res!561032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!822392 () Bool)

(declare-fun res!561034 () Bool)

(assert (=> b!822392 (=> (not res!561034) (not e!457286))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!822392 (= res!561034 (and (= (size!22327 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22326 _keys!976) (size!22327 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822393 () Bool)

(declare-fun e!457284 () Bool)

(assert (=> b!822393 (= e!457284 tp_is_empty!14783)))

(declare-fun b!822394 () Bool)

(declare-fun e!457287 () Bool)

(assert (=> b!822394 (= e!457286 (not e!457287))))

(declare-fun res!561031 () Bool)

(assert (=> b!822394 (=> res!561031 e!457287)))

(assert (=> b!822394 (= res!561031 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9820 0))(
  ( (tuple2!9821 (_1!4920 (_ BitVec 64)) (_2!4920 V!24711)) )
))
(declare-datatypes ((List!15680 0))(
  ( (Nil!15677) (Cons!15676 (h!16805 tuple2!9820) (t!22025 List!15680)) )
))
(declare-datatypes ((ListLongMap!8657 0))(
  ( (ListLongMap!8658 (toList!4344 List!15680)) )
))
(declare-fun lt!370197 () ListLongMap!8657)

(declare-fun lt!370202 () ListLongMap!8657)

(assert (=> b!822394 (= lt!370197 lt!370202)))

(declare-datatypes ((Unit!28130 0))(
  ( (Unit!28131) )
))
(declare-fun lt!370200 () Unit!28130)

(declare-fun zeroValueBefore!34 () V!24711)

(declare-fun zeroValueAfter!34 () V!24711)

(declare-fun minValue!754 () V!24711)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!486 (array!45718 array!45720 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24711 V!24711 V!24711 V!24711 (_ BitVec 32) Int) Unit!28130)

(assert (=> b!822394 (= lt!370200 (lemmaNoChangeToArrayThenSameMapNoExtras!486 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2370 (array!45718 array!45720 (_ BitVec 32) (_ BitVec 32) V!24711 V!24711 (_ BitVec 32) Int) ListLongMap!8657)

(assert (=> b!822394 (= lt!370202 (getCurrentListMapNoExtraKeys!2370 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822394 (= lt!370197 (getCurrentListMapNoExtraKeys!2370 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822395 () Bool)

(assert (=> b!822395 (= e!457287 true)))

(declare-fun lt!370198 () ListLongMap!8657)

(declare-fun lt!370196 () ListLongMap!8657)

(declare-fun lt!370193 () tuple2!9820)

(declare-fun +!1847 (ListLongMap!8657 tuple2!9820) ListLongMap!8657)

(assert (=> b!822395 (= lt!370198 (+!1847 lt!370196 lt!370193))))

(declare-fun lt!370201 () Unit!28130)

(declare-fun addCommutativeForDiffKeys!442 (ListLongMap!8657 (_ BitVec 64) V!24711 (_ BitVec 64) V!24711) Unit!28130)

(assert (=> b!822395 (= lt!370201 (addCommutativeForDiffKeys!442 lt!370197 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370195 () ListLongMap!8657)

(assert (=> b!822395 (= lt!370195 lt!370198)))

(declare-fun lt!370199 () tuple2!9820)

(assert (=> b!822395 (= lt!370198 (+!1847 (+!1847 lt!370197 lt!370193) lt!370199))))

(assert (=> b!822395 (= lt!370193 (tuple2!9821 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370194 () ListLongMap!8657)

(assert (=> b!822395 (= lt!370194 lt!370196)))

(assert (=> b!822395 (= lt!370196 (+!1847 lt!370197 lt!370199))))

(assert (=> b!822395 (= lt!370199 (tuple2!9821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun getCurrentListMap!2477 (array!45718 array!45720 (_ BitVec 32) (_ BitVec 32) V!24711 V!24711 (_ BitVec 32) Int) ListLongMap!8657)

(assert (=> b!822395 (= lt!370195 (getCurrentListMap!2477 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822395 (= lt!370194 (getCurrentListMap!2477 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23785 () Bool)

(declare-fun mapRes!23785 () Bool)

(assert (=> mapIsEmpty!23785 mapRes!23785))

(declare-fun b!822396 () Bool)

(declare-fun e!457285 () Bool)

(assert (=> b!822396 (= e!457288 (and e!457285 mapRes!23785))))

(declare-fun condMapEmpty!23785 () Bool)

(declare-fun mapDefault!23785 () ValueCell!6976)

