; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69968 () Bool)

(assert start!69968)

(declare-fun b_free!12377 () Bool)

(declare-fun b_next!12377 () Bool)

(assert (=> start!69968 (= b_free!12377 (not b_next!12377))))

(declare-fun tp!43842 () Bool)

(declare-fun b_and!21163 () Bool)

(assert (=> start!69968 (= tp!43842 b_and!21163)))

(declare-fun b!812881 () Bool)

(declare-fun e!450404 () Bool)

(assert (=> b!812881 (= e!450404 false)))

(declare-datatypes ((V!23783 0))(
  ( (V!23784 (val!7091 Int)) )
))
(declare-datatypes ((tuple2!9288 0))(
  ( (tuple2!9289 (_1!4654 (_ BitVec 64)) (_2!4654 V!23783)) )
))
(declare-datatypes ((List!15160 0))(
  ( (Nil!15157) (Cons!15156 (h!16285 tuple2!9288) (t!21483 List!15160)) )
))
(declare-datatypes ((ListLongMap!8125 0))(
  ( (ListLongMap!8126 (toList!4078 List!15160)) )
))
(declare-fun lt!364172 () ListLongMap!8125)

(declare-fun zeroValueBefore!34 () V!23783)

(declare-datatypes ((array!44364 0))(
  ( (array!44365 (arr!21239 (Array (_ BitVec 32) (_ BitVec 64))) (size!21660 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44364)

(declare-fun minValue!754 () V!23783)

(declare-datatypes ((ValueCell!6628 0))(
  ( (ValueCellFull!6628 (v!9514 V!23783)) (EmptyCell!6628) )
))
(declare-datatypes ((array!44366 0))(
  ( (array!44367 (arr!21240 (Array (_ BitVec 32) ValueCell!6628)) (size!21661 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44366)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2127 (array!44364 array!44366 (_ BitVec 32) (_ BitVec 32) V!23783 V!23783 (_ BitVec 32) Int) ListLongMap!8125)

(assert (=> b!812881 (= lt!364172 (getCurrentListMapNoExtraKeys!2127 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!812882 () Bool)

(declare-fun e!450403 () Bool)

(declare-fun tp_is_empty!14087 () Bool)

(assert (=> b!812882 (= e!450403 tp_is_empty!14087)))

(declare-fun mapIsEmpty!22708 () Bool)

(declare-fun mapRes!22708 () Bool)

(assert (=> mapIsEmpty!22708 mapRes!22708))

(declare-fun b!812883 () Bool)

(declare-fun res!555505 () Bool)

(assert (=> b!812883 (=> (not res!555505) (not e!450404))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44364 (_ BitVec 32)) Bool)

(assert (=> b!812883 (= res!555505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!22708 () Bool)

(declare-fun tp!43843 () Bool)

(assert (=> mapNonEmpty!22708 (= mapRes!22708 (and tp!43843 e!450403))))

(declare-fun mapValue!22708 () ValueCell!6628)

(declare-fun mapRest!22708 () (Array (_ BitVec 32) ValueCell!6628))

(declare-fun mapKey!22708 () (_ BitVec 32))

(assert (=> mapNonEmpty!22708 (= (arr!21240 _values!788) (store mapRest!22708 mapKey!22708 mapValue!22708))))

(declare-fun b!812884 () Bool)

(declare-fun e!450406 () Bool)

(assert (=> b!812884 (= e!450406 tp_is_empty!14087)))

(declare-fun b!812885 () Bool)

(declare-fun e!450405 () Bool)

(assert (=> b!812885 (= e!450405 (and e!450406 mapRes!22708))))

(declare-fun condMapEmpty!22708 () Bool)

(declare-fun mapDefault!22708 () ValueCell!6628)

