; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70508 () Bool)

(assert start!70508)

(declare-fun b_free!12811 () Bool)

(declare-fun b_next!12811 () Bool)

(assert (=> start!70508 (= b_free!12811 (not b_next!12811))))

(declare-fun tp!45166 () Bool)

(declare-fun b_and!21659 () Bool)

(assert (=> start!70508 (= tp!45166 b_and!21659)))

(declare-fun b!818547 () Bool)

(declare-fun e!454451 () Bool)

(declare-fun e!454456 () Bool)

(assert (=> b!818547 (= e!454451 (not e!454456))))

(declare-fun res!558717 () Bool)

(assert (=> b!818547 (=> res!558717 e!454456)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!818547 (= res!558717 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24363 0))(
  ( (V!24364 (val!7308 Int)) )
))
(declare-datatypes ((tuple2!9618 0))(
  ( (tuple2!9619 (_1!4819 (_ BitVec 64)) (_2!4819 V!24363)) )
))
(declare-datatypes ((List!15483 0))(
  ( (Nil!15480) (Cons!15479 (h!16608 tuple2!9618) (t!21820 List!15483)) )
))
(declare-datatypes ((ListLongMap!8455 0))(
  ( (ListLongMap!8456 (toList!4243 List!15483)) )
))
(declare-fun lt!366898 () ListLongMap!8455)

(declare-fun lt!366905 () ListLongMap!8455)

(assert (=> b!818547 (= lt!366898 lt!366905)))

(declare-fun zeroValueBefore!34 () V!24363)

(declare-datatypes ((array!45214 0))(
  ( (array!45215 (arr!21657 (Array (_ BitVec 32) (_ BitVec 64))) (size!22078 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45214)

(declare-fun zeroValueAfter!34 () V!24363)

(declare-fun minValue!754 () V!24363)

(declare-datatypes ((ValueCell!6845 0))(
  ( (ValueCellFull!6845 (v!9733 V!24363)) (EmptyCell!6845) )
))
(declare-datatypes ((array!45216 0))(
  ( (array!45217 (arr!21658 (Array (_ BitVec 32) ValueCell!6845)) (size!22079 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45216)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-datatypes ((Unit!27935 0))(
  ( (Unit!27936) )
))
(declare-fun lt!366901 () Unit!27935)

(declare-fun defaultEntry!796 () Int)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!402 (array!45214 array!45216 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24363 V!24363 V!24363 V!24363 (_ BitVec 32) Int) Unit!27935)

(assert (=> b!818547 (= lt!366901 (lemmaNoChangeToArrayThenSameMapNoExtras!402 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2286 (array!45214 array!45216 (_ BitVec 32) (_ BitVec 32) V!24363 V!24363 (_ BitVec 32) Int) ListLongMap!8455)

(assert (=> b!818547 (= lt!366905 (getCurrentListMapNoExtraKeys!2286 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818547 (= lt!366898 (getCurrentListMapNoExtraKeys!2286 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun e!454452 () Bool)

(declare-fun lt!366906 () ListLongMap!8455)

(declare-fun b!818548 () Bool)

(declare-fun +!1788 (ListLongMap!8455 tuple2!9618) ListLongMap!8455)

(assert (=> b!818548 (= e!454452 (= lt!366906 (+!1788 lt!366905 (tuple2!9619 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun mapNonEmpty!23380 () Bool)

(declare-fun mapRes!23380 () Bool)

(declare-fun tp!45165 () Bool)

(declare-fun e!454450 () Bool)

(assert (=> mapNonEmpty!23380 (= mapRes!23380 (and tp!45165 e!454450))))

(declare-fun mapValue!23380 () ValueCell!6845)

(declare-fun mapKey!23380 () (_ BitVec 32))

(declare-fun mapRest!23380 () (Array (_ BitVec 32) ValueCell!6845))

(assert (=> mapNonEmpty!23380 (= (arr!21658 _values!788) (store mapRest!23380 mapKey!23380 mapValue!23380))))

(declare-fun b!818550 () Bool)

(declare-fun res!558715 () Bool)

(assert (=> b!818550 (=> (not res!558715) (not e!454451))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45214 (_ BitVec 32)) Bool)

(assert (=> b!818550 (= res!558715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!818551 () Bool)

(declare-fun e!454454 () Bool)

(declare-fun tp_is_empty!14521 () Bool)

(assert (=> b!818551 (= e!454454 tp_is_empty!14521)))

(declare-fun b!818552 () Bool)

(declare-fun res!558718 () Bool)

(assert (=> b!818552 (=> (not res!558718) (not e!454451))))

(assert (=> b!818552 (= res!558718 (and (= (size!22079 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22078 _keys!976) (size!22079 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!818553 () Bool)

(declare-fun e!454455 () Bool)

(assert (=> b!818553 (= e!454455 (and e!454454 mapRes!23380))))

(declare-fun condMapEmpty!23380 () Bool)

(declare-fun mapDefault!23380 () ValueCell!6845)

