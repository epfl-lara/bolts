; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70072 () Bool)

(assert start!70072)

(declare-fun b_free!12469 () Bool)

(declare-fun b_next!12469 () Bool)

(assert (=> start!70072 (= b_free!12469 (not b_next!12469))))

(declare-fun tp!44122 () Bool)

(declare-fun b_and!21259 () Bool)

(assert (=> start!70072 (= tp!44122 b_and!21259)))

(declare-fun mapIsEmpty!22849 () Bool)

(declare-fun mapRes!22849 () Bool)

(assert (=> mapIsEmpty!22849 mapRes!22849))

(declare-fun b!813920 () Bool)

(declare-fun res!556084 () Bool)

(declare-fun e!451142 () Bool)

(assert (=> b!813920 (=> (not res!556084) (not e!451142))))

(declare-datatypes ((array!44546 0))(
  ( (array!44547 (arr!21329 (Array (_ BitVec 32) (_ BitVec 64))) (size!21750 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44546)

(declare-datatypes ((List!15233 0))(
  ( (Nil!15230) (Cons!15229 (h!16358 (_ BitVec 64)) (t!21558 List!15233)) )
))
(declare-fun arrayNoDuplicates!0 (array!44546 (_ BitVec 32) List!15233) Bool)

(assert (=> b!813920 (= res!556084 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15230))))

(declare-fun b!813921 () Bool)

(assert (=> b!813921 (= e!451142 false)))

(declare-datatypes ((V!23907 0))(
  ( (V!23908 (val!7137 Int)) )
))
(declare-datatypes ((tuple2!9358 0))(
  ( (tuple2!9359 (_1!4689 (_ BitVec 64)) (_2!4689 V!23907)) )
))
(declare-datatypes ((List!15234 0))(
  ( (Nil!15231) (Cons!15230 (h!16359 tuple2!9358) (t!21559 List!15234)) )
))
(declare-datatypes ((ListLongMap!8195 0))(
  ( (ListLongMap!8196 (toList!4113 List!15234)) )
))
(declare-fun lt!364423 () ListLongMap!8195)

(declare-fun zeroValueAfter!34 () V!23907)

(declare-fun minValue!754 () V!23907)

(declare-datatypes ((ValueCell!6674 0))(
  ( (ValueCellFull!6674 (v!9560 V!23907)) (EmptyCell!6674) )
))
(declare-datatypes ((array!44548 0))(
  ( (array!44549 (arr!21330 (Array (_ BitVec 32) ValueCell!6674)) (size!21751 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44548)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2162 (array!44546 array!44548 (_ BitVec 32) (_ BitVec 32) V!23907 V!23907 (_ BitVec 32) Int) ListLongMap!8195)

(assert (=> b!813921 (= lt!364423 (getCurrentListMapNoExtraKeys!2162 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!23907)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!364424 () ListLongMap!8195)

(assert (=> b!813921 (= lt!364424 (getCurrentListMapNoExtraKeys!2162 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813922 () Bool)

(declare-fun e!451144 () Bool)

(declare-fun tp_is_empty!14179 () Bool)

(assert (=> b!813922 (= e!451144 tp_is_empty!14179)))

(declare-fun b!813923 () Bool)

(declare-fun res!556083 () Bool)

(assert (=> b!813923 (=> (not res!556083) (not e!451142))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44546 (_ BitVec 32)) Bool)

(assert (=> b!813923 (= res!556083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!22849 () Bool)

(declare-fun tp!44121 () Bool)

(declare-fun e!451141 () Bool)

(assert (=> mapNonEmpty!22849 (= mapRes!22849 (and tp!44121 e!451141))))

(declare-fun mapKey!22849 () (_ BitVec 32))

(declare-fun mapRest!22849 () (Array (_ BitVec 32) ValueCell!6674))

(declare-fun mapValue!22849 () ValueCell!6674)

(assert (=> mapNonEmpty!22849 (= (arr!21330 _values!788) (store mapRest!22849 mapKey!22849 mapValue!22849))))

(declare-fun b!813924 () Bool)

(declare-fun e!451143 () Bool)

(assert (=> b!813924 (= e!451143 (and e!451144 mapRes!22849))))

(declare-fun condMapEmpty!22849 () Bool)

(declare-fun mapDefault!22849 () ValueCell!6674)

