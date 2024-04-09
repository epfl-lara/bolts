; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70000 () Bool)

(assert start!70000)

(declare-fun b_free!12409 () Bool)

(declare-fun b_next!12409 () Bool)

(assert (=> start!70000 (= b_free!12409 (not b_next!12409))))

(declare-fun tp!43939 () Bool)

(declare-fun b_and!21195 () Bool)

(assert (=> start!70000 (= tp!43939 b_and!21195)))

(declare-fun b!813217 () Bool)

(declare-fun res!555698 () Bool)

(declare-fun e!450644 () Bool)

(assert (=> b!813217 (=> (not res!555698) (not e!450644))))

(declare-datatypes ((array!44426 0))(
  ( (array!44427 (arr!21270 (Array (_ BitVec 32) (_ BitVec 64))) (size!21691 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44426)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44426 (_ BitVec 32)) Bool)

(assert (=> b!813217 (= res!555698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!22756 () Bool)

(declare-fun mapRes!22756 () Bool)

(declare-fun tp!43938 () Bool)

(declare-fun e!450643 () Bool)

(assert (=> mapNonEmpty!22756 (= mapRes!22756 (and tp!43938 e!450643))))

(declare-datatypes ((V!23827 0))(
  ( (V!23828 (val!7107 Int)) )
))
(declare-datatypes ((ValueCell!6644 0))(
  ( (ValueCellFull!6644 (v!9530 V!23827)) (EmptyCell!6644) )
))
(declare-fun mapRest!22756 () (Array (_ BitVec 32) ValueCell!6644))

(declare-fun mapKey!22756 () (_ BitVec 32))

(declare-fun mapValue!22756 () ValueCell!6644)

(declare-datatypes ((array!44428 0))(
  ( (array!44429 (arr!21271 (Array (_ BitVec 32) ValueCell!6644)) (size!21692 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44428)

(assert (=> mapNonEmpty!22756 (= (arr!21271 _values!788) (store mapRest!22756 mapKey!22756 mapValue!22756))))

(declare-fun b!813218 () Bool)

(declare-fun e!450647 () Bool)

(declare-fun tp_is_empty!14119 () Bool)

(assert (=> b!813218 (= e!450647 tp_is_empty!14119)))

(declare-fun res!555696 () Bool)

(assert (=> start!70000 (=> (not res!555696) (not e!450644))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70000 (= res!555696 (validMask!0 mask!1312))))

(assert (=> start!70000 e!450644))

(assert (=> start!70000 tp_is_empty!14119))

(declare-fun array_inv!17011 (array!44426) Bool)

(assert (=> start!70000 (array_inv!17011 _keys!976)))

(assert (=> start!70000 true))

(declare-fun e!450645 () Bool)

(declare-fun array_inv!17012 (array!44428) Bool)

(assert (=> start!70000 (and (array_inv!17012 _values!788) e!450645)))

(assert (=> start!70000 tp!43939))

(declare-fun b!813219 () Bool)

(assert (=> b!813219 (= e!450644 (bvsgt #b00000000000000000000000000000000 (size!21691 _keys!976)))))

(declare-fun zeroValueBefore!34 () V!23827)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!23827)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9312 0))(
  ( (tuple2!9313 (_1!4666 (_ BitVec 64)) (_2!4666 V!23827)) )
))
(declare-datatypes ((List!15184 0))(
  ( (Nil!15181) (Cons!15180 (h!16309 tuple2!9312) (t!21507 List!15184)) )
))
(declare-datatypes ((ListLongMap!8149 0))(
  ( (ListLongMap!8150 (toList!4090 List!15184)) )
))
(declare-fun lt!364220 () ListLongMap!8149)

(declare-fun getCurrentListMapNoExtraKeys!2139 (array!44426 array!44428 (_ BitVec 32) (_ BitVec 32) V!23827 V!23827 (_ BitVec 32) Int) ListLongMap!8149)

(assert (=> b!813219 (= lt!364220 (getCurrentListMapNoExtraKeys!2139 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813220 () Bool)

(declare-fun res!555695 () Bool)

(assert (=> b!813220 (=> (not res!555695) (not e!450644))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!813220 (= res!555695 (and (= (size!21692 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21691 _keys!976) (size!21692 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813221 () Bool)

(declare-fun res!555697 () Bool)

(assert (=> b!813221 (=> (not res!555697) (not e!450644))))

(declare-datatypes ((List!15185 0))(
  ( (Nil!15182) (Cons!15181 (h!16310 (_ BitVec 64)) (t!21508 List!15185)) )
))
(declare-fun arrayNoDuplicates!0 (array!44426 (_ BitVec 32) List!15185) Bool)

(assert (=> b!813221 (= res!555697 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15182))))

(declare-fun b!813222 () Bool)

(assert (=> b!813222 (= e!450643 tp_is_empty!14119)))

(declare-fun mapIsEmpty!22756 () Bool)

(assert (=> mapIsEmpty!22756 mapRes!22756))

(declare-fun b!813223 () Bool)

(assert (=> b!813223 (= e!450645 (and e!450647 mapRes!22756))))

(declare-fun condMapEmpty!22756 () Bool)

(declare-fun mapDefault!22756 () ValueCell!6644)

