; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41434 () Bool)

(assert start!41434)

(declare-fun b_free!11105 () Bool)

(declare-fun b_next!11105 () Bool)

(assert (=> start!41434 (= b_free!11105 (not b_next!11105))))

(declare-fun tp!39310 () Bool)

(declare-fun b_and!19459 () Bool)

(assert (=> start!41434 (= tp!39310 b_and!19459)))

(declare-fun b!462681 () Bool)

(declare-fun res!276749 () Bool)

(declare-fun e!270081 () Bool)

(assert (=> b!462681 (=> (not res!276749) (not e!270081))))

(declare-datatypes ((array!28827 0))(
  ( (array!28828 (arr!13843 (Array (_ BitVec 32) (_ BitVec 64))) (size!14195 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28827)

(declare-datatypes ((List!8362 0))(
  ( (Nil!8359) (Cons!8358 (h!9214 (_ BitVec 64)) (t!14314 List!8362)) )
))
(declare-fun arrayNoDuplicates!0 (array!28827 (_ BitVec 32) List!8362) Bool)

(assert (=> b!462681 (= res!276749 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8359))))

(declare-fun b!462682 () Bool)

(declare-fun e!270080 () Bool)

(declare-fun tp_is_empty!12533 () Bool)

(assert (=> b!462682 (= e!270080 tp_is_empty!12533)))

(declare-fun b!462683 () Bool)

(declare-fun res!276752 () Bool)

(assert (=> b!462683 (=> (not res!276752) (not e!270081))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!17815 0))(
  ( (V!17816 (val!6311 Int)) )
))
(declare-datatypes ((ValueCell!5923 0))(
  ( (ValueCellFull!5923 (v!8594 V!17815)) (EmptyCell!5923) )
))
(declare-datatypes ((array!28829 0))(
  ( (array!28830 (arr!13844 (Array (_ BitVec 32) ValueCell!5923)) (size!14196 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28829)

(assert (=> b!462683 (= res!276752 (and (= (size!14196 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14195 _keys!1025) (size!14196 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!462684 () Bool)

(assert (=> b!462684 (= e!270081 false)))

(declare-fun minValueBefore!38 () V!17815)

(declare-fun zeroValue!794 () V!17815)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8236 0))(
  ( (tuple2!8237 (_1!4128 (_ BitVec 64)) (_2!4128 V!17815)) )
))
(declare-datatypes ((List!8363 0))(
  ( (Nil!8360) (Cons!8359 (h!9215 tuple2!8236) (t!14315 List!8363)) )
))
(declare-datatypes ((ListLongMap!7163 0))(
  ( (ListLongMap!7164 (toList!3597 List!8363)) )
))
(declare-fun lt!209235 () ListLongMap!7163)

(declare-fun getCurrentListMapNoExtraKeys!1765 (array!28827 array!28829 (_ BitVec 32) (_ BitVec 32) V!17815 V!17815 (_ BitVec 32) Int) ListLongMap!7163)

(assert (=> b!462684 (= lt!209235 (getCurrentListMapNoExtraKeys!1765 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!276750 () Bool)

(assert (=> start!41434 (=> (not res!276750) (not e!270081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41434 (= res!276750 (validMask!0 mask!1365))))

(assert (=> start!41434 e!270081))

(assert (=> start!41434 tp_is_empty!12533))

(assert (=> start!41434 tp!39310))

(assert (=> start!41434 true))

(declare-fun array_inv!9992 (array!28827) Bool)

(assert (=> start!41434 (array_inv!9992 _keys!1025)))

(declare-fun e!270078 () Bool)

(declare-fun array_inv!9993 (array!28829) Bool)

(assert (=> start!41434 (and (array_inv!9993 _values!833) e!270078)))

(declare-fun b!462685 () Bool)

(declare-fun e!270082 () Bool)

(assert (=> b!462685 (= e!270082 tp_is_empty!12533)))

(declare-fun mapNonEmpty!20473 () Bool)

(declare-fun mapRes!20473 () Bool)

(declare-fun tp!39309 () Bool)

(assert (=> mapNonEmpty!20473 (= mapRes!20473 (and tp!39309 e!270080))))

(declare-fun mapRest!20473 () (Array (_ BitVec 32) ValueCell!5923))

(declare-fun mapKey!20473 () (_ BitVec 32))

(declare-fun mapValue!20473 () ValueCell!5923)

(assert (=> mapNonEmpty!20473 (= (arr!13844 _values!833) (store mapRest!20473 mapKey!20473 mapValue!20473))))

(declare-fun b!462686 () Bool)

(declare-fun res!276751 () Bool)

(assert (=> b!462686 (=> (not res!276751) (not e!270081))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28827 (_ BitVec 32)) Bool)

(assert (=> b!462686 (= res!276751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!20473 () Bool)

(assert (=> mapIsEmpty!20473 mapRes!20473))

(declare-fun b!462687 () Bool)

(assert (=> b!462687 (= e!270078 (and e!270082 mapRes!20473))))

(declare-fun condMapEmpty!20473 () Bool)

(declare-fun mapDefault!20473 () ValueCell!5923)

