; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70326 () Bool)

(assert start!70326)

(declare-fun b_free!12677 () Bool)

(declare-fun b_next!12677 () Bool)

(assert (=> start!70326 (= b_free!12677 (not b_next!12677))))

(declare-fun tp!44755 () Bool)

(declare-fun b_and!21495 () Bool)

(assert (=> start!70326 (= tp!44755 b_and!21495)))

(declare-fun b!816592 () Bool)

(declare-fun e!453055 () Bool)

(assert (=> b!816592 (= e!453055 true)))

(declare-datatypes ((array!44952 0))(
  ( (array!44953 (arr!21529 (Array (_ BitVec 32) (_ BitVec 64))) (size!21950 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44952)

(declare-datatypes ((V!24183 0))(
  ( (V!24184 (val!7241 Int)) )
))
(declare-fun zeroValueAfter!34 () V!24183)

(declare-datatypes ((ValueCell!6778 0))(
  ( (ValueCellFull!6778 (v!9665 V!24183)) (EmptyCell!6778) )
))
(declare-datatypes ((array!44954 0))(
  ( (array!44955 (arr!21530 (Array (_ BitVec 32) ValueCell!6778)) (size!21951 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44954)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((tuple2!9518 0))(
  ( (tuple2!9519 (_1!4769 (_ BitVec 64)) (_2!4769 V!24183)) )
))
(declare-datatypes ((List!15389 0))(
  ( (Nil!15386) (Cons!15385 (h!16514 tuple2!9518) (t!21720 List!15389)) )
))
(declare-datatypes ((ListLongMap!8355 0))(
  ( (ListLongMap!8356 (toList!4193 List!15389)) )
))
(declare-fun lt!365816 () ListLongMap!8355)

(declare-fun defaultEntry!796 () Int)

(declare-fun minValue!754 () V!24183)

(declare-fun getCurrentListMap!2379 (array!44952 array!44954 (_ BitVec 32) (_ BitVec 32) V!24183 V!24183 (_ BitVec 32) Int) ListLongMap!8355)

(assert (=> b!816592 (= lt!365816 (getCurrentListMap!2379 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24183)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!365817 () ListLongMap!8355)

(declare-fun +!1778 (ListLongMap!8355 tuple2!9518) ListLongMap!8355)

(assert (=> b!816592 (= lt!365817 (+!1778 (getCurrentListMap!2379 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9519 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!816593 () Bool)

(declare-fun res!557612 () Bool)

(declare-fun e!453058 () Bool)

(assert (=> b!816593 (=> (not res!557612) (not e!453058))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44952 (_ BitVec 32)) Bool)

(assert (=> b!816593 (= res!557612 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!816594 () Bool)

(assert (=> b!816594 (= e!453058 (not e!453055))))

(declare-fun res!557611 () Bool)

(assert (=> b!816594 (=> res!557611 e!453055)))

(assert (=> b!816594 (= res!557611 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!365813 () ListLongMap!8355)

(declare-fun lt!365815 () ListLongMap!8355)

(assert (=> b!816594 (= lt!365813 lt!365815)))

(declare-datatypes ((Unit!27840 0))(
  ( (Unit!27841) )
))
(declare-fun lt!365814 () Unit!27840)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!356 (array!44952 array!44954 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24183 V!24183 V!24183 V!24183 (_ BitVec 32) Int) Unit!27840)

(assert (=> b!816594 (= lt!365814 (lemmaNoChangeToArrayThenSameMapNoExtras!356 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2240 (array!44952 array!44954 (_ BitVec 32) (_ BitVec 32) V!24183 V!24183 (_ BitVec 32) Int) ListLongMap!8355)

(assert (=> b!816594 (= lt!365815 (getCurrentListMapNoExtraKeys!2240 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!816594 (= lt!365813 (getCurrentListMapNoExtraKeys!2240 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!816595 () Bool)

(declare-fun res!557609 () Bool)

(assert (=> b!816595 (=> (not res!557609) (not e!453058))))

(declare-datatypes ((List!15390 0))(
  ( (Nil!15387) (Cons!15386 (h!16515 (_ BitVec 64)) (t!21721 List!15390)) )
))
(declare-fun arrayNoDuplicates!0 (array!44952 (_ BitVec 32) List!15390) Bool)

(assert (=> b!816595 (= res!557609 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15387))))

(declare-fun b!816596 () Bool)

(declare-fun res!557608 () Bool)

(assert (=> b!816596 (=> (not res!557608) (not e!453058))))

(assert (=> b!816596 (= res!557608 (and (= (size!21951 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21950 _keys!976) (size!21951 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!23170 () Bool)

(declare-fun mapRes!23170 () Bool)

(declare-fun tp!44754 () Bool)

(declare-fun e!453057 () Bool)

(assert (=> mapNonEmpty!23170 (= mapRes!23170 (and tp!44754 e!453057))))

(declare-fun mapValue!23170 () ValueCell!6778)

(declare-fun mapRest!23170 () (Array (_ BitVec 32) ValueCell!6778))

(declare-fun mapKey!23170 () (_ BitVec 32))

(assert (=> mapNonEmpty!23170 (= (arr!21530 _values!788) (store mapRest!23170 mapKey!23170 mapValue!23170))))

(declare-fun res!557610 () Bool)

(assert (=> start!70326 (=> (not res!557610) (not e!453058))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70326 (= res!557610 (validMask!0 mask!1312))))

(assert (=> start!70326 e!453058))

(declare-fun tp_is_empty!14387 () Bool)

(assert (=> start!70326 tp_is_empty!14387))

(declare-fun array_inv!17199 (array!44952) Bool)

(assert (=> start!70326 (array_inv!17199 _keys!976)))

(assert (=> start!70326 true))

(declare-fun e!453059 () Bool)

(declare-fun array_inv!17200 (array!44954) Bool)

(assert (=> start!70326 (and (array_inv!17200 _values!788) e!453059)))

(assert (=> start!70326 tp!44755))

(declare-fun b!816597 () Bool)

(assert (=> b!816597 (= e!453057 tp_is_empty!14387)))

(declare-fun mapIsEmpty!23170 () Bool)

(assert (=> mapIsEmpty!23170 mapRes!23170))

(declare-fun b!816598 () Bool)

(declare-fun e!453060 () Bool)

(assert (=> b!816598 (= e!453060 tp_is_empty!14387)))

(declare-fun b!816599 () Bool)

(assert (=> b!816599 (= e!453059 (and e!453060 mapRes!23170))))

(declare-fun condMapEmpty!23170 () Bool)

(declare-fun mapDefault!23170 () ValueCell!6778)

