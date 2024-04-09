; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70376 () Bool)

(assert start!70376)

(declare-fun b_free!12709 () Bool)

(declare-fun b_next!12709 () Bool)

(assert (=> start!70376 (= b_free!12709 (not b_next!12709))))

(declare-fun tp!44854 () Bool)

(declare-fun b_and!21539 () Bool)

(assert (=> start!70376 (= tp!44854 b_and!21539)))

(declare-fun b!817140 () Bool)

(declare-fun e!453433 () Bool)

(assert (=> b!817140 (= e!453433 (not true))))

(declare-datatypes ((V!24227 0))(
  ( (V!24228 (val!7257 Int)) )
))
(declare-datatypes ((tuple2!9540 0))(
  ( (tuple2!9541 (_1!4780 (_ BitVec 64)) (_2!4780 V!24227)) )
))
(declare-datatypes ((List!15409 0))(
  ( (Nil!15406) (Cons!15405 (h!16534 tuple2!9540) (t!21742 List!15409)) )
))
(declare-datatypes ((ListLongMap!8377 0))(
  ( (ListLongMap!8378 (toList!4204 List!15409)) )
))
(declare-fun lt!366137 () ListLongMap!8377)

(declare-fun lt!366135 () ListLongMap!8377)

(assert (=> b!817140 (= lt!366137 lt!366135)))

(declare-fun zeroValueBefore!34 () V!24227)

(declare-datatypes ((array!45012 0))(
  ( (array!45013 (arr!21558 (Array (_ BitVec 32) (_ BitVec 64))) (size!21979 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45012)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24227)

(declare-fun minValue!754 () V!24227)

(declare-datatypes ((ValueCell!6794 0))(
  ( (ValueCellFull!6794 (v!9682 V!24227)) (EmptyCell!6794) )
))
(declare-datatypes ((array!45014 0))(
  ( (array!45015 (arr!21559 (Array (_ BitVec 32) ValueCell!6794)) (size!21980 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45014)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!27862 0))(
  ( (Unit!27863) )
))
(declare-fun lt!366136 () Unit!27862)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!366 (array!45012 array!45014 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24227 V!24227 V!24227 V!24227 (_ BitVec 32) Int) Unit!27862)

(assert (=> b!817140 (= lt!366136 (lemmaNoChangeToArrayThenSameMapNoExtras!366 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2250 (array!45012 array!45014 (_ BitVec 32) (_ BitVec 32) V!24227 V!24227 (_ BitVec 32) Int) ListLongMap!8377)

(assert (=> b!817140 (= lt!366135 (getCurrentListMapNoExtraKeys!2250 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817140 (= lt!366137 (getCurrentListMapNoExtraKeys!2250 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23221 () Bool)

(declare-fun mapRes!23221 () Bool)

(assert (=> mapIsEmpty!23221 mapRes!23221))

(declare-fun b!817141 () Bool)

(declare-fun res!557912 () Bool)

(assert (=> b!817141 (=> (not res!557912) (not e!453433))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45012 (_ BitVec 32)) Bool)

(assert (=> b!817141 (= res!557912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!817142 () Bool)

(declare-fun e!453434 () Bool)

(declare-fun tp_is_empty!14419 () Bool)

(assert (=> b!817142 (= e!453434 tp_is_empty!14419)))

(declare-fun b!817143 () Bool)

(declare-fun res!557913 () Bool)

(assert (=> b!817143 (=> (not res!557913) (not e!453433))))

(declare-datatypes ((List!15410 0))(
  ( (Nil!15407) (Cons!15406 (h!16535 (_ BitVec 64)) (t!21743 List!15410)) )
))
(declare-fun arrayNoDuplicates!0 (array!45012 (_ BitVec 32) List!15410) Bool)

(assert (=> b!817143 (= res!557913 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15407))))

(declare-fun b!817144 () Bool)

(declare-fun res!557910 () Bool)

(assert (=> b!817144 (=> (not res!557910) (not e!453433))))

(assert (=> b!817144 (= res!557910 (and (= (size!21980 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21979 _keys!976) (size!21980 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!817145 () Bool)

(declare-fun e!453437 () Bool)

(assert (=> b!817145 (= e!453437 (and e!453434 mapRes!23221))))

(declare-fun condMapEmpty!23221 () Bool)

(declare-fun mapDefault!23221 () ValueCell!6794)

