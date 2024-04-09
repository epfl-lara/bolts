; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41494 () Bool)

(assert start!41494)

(declare-fun b_free!11153 () Bool)

(declare-fun b_next!11153 () Bool)

(assert (=> start!41494 (= b_free!11153 (not b_next!11153))))

(declare-fun tp!39457 () Bool)

(declare-fun b_and!19511 () Bool)

(assert (=> start!41494 (= tp!39457 b_and!19511)))

(declare-fun b!463258 () Bool)

(declare-fun e!270487 () Bool)

(assert (=> b!463258 (= e!270487 false)))

(declare-datatypes ((V!17879 0))(
  ( (V!17880 (val!6335 Int)) )
))
(declare-datatypes ((tuple2!8276 0))(
  ( (tuple2!8277 (_1!4148 (_ BitVec 64)) (_2!4148 V!17879)) )
))
(declare-datatypes ((List!8401 0))(
  ( (Nil!8398) (Cons!8397 (h!9253 tuple2!8276) (t!14355 List!8401)) )
))
(declare-datatypes ((ListLongMap!7203 0))(
  ( (ListLongMap!7204 (toList!3617 List!8401)) )
))
(declare-fun lt!209345 () ListLongMap!7203)

(declare-fun zeroValue!794 () V!17879)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!28923 0))(
  ( (array!28924 (arr!13890 (Array (_ BitVec 32) (_ BitVec 64))) (size!14242 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28923)

(declare-datatypes ((ValueCell!5947 0))(
  ( (ValueCellFull!5947 (v!8618 V!17879)) (EmptyCell!5947) )
))
(declare-datatypes ((array!28925 0))(
  ( (array!28926 (arr!13891 (Array (_ BitVec 32) ValueCell!5947)) (size!14243 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28925)

(declare-fun minValueAfter!38 () V!17879)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1785 (array!28923 array!28925 (_ BitVec 32) (_ BitVec 32) V!17879 V!17879 (_ BitVec 32) Int) ListLongMap!7203)

(assert (=> b!463258 (= lt!209345 (getCurrentListMapNoExtraKeys!1785 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!17879)

(declare-fun lt!209346 () ListLongMap!7203)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!463258 (= lt!209346 (getCurrentListMapNoExtraKeys!1785 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!20548 () Bool)

(declare-fun mapRes!20548 () Bool)

(assert (=> mapIsEmpty!20548 mapRes!20548))

(declare-fun mapNonEmpty!20548 () Bool)

(declare-fun tp!39456 () Bool)

(declare-fun e!270486 () Bool)

(assert (=> mapNonEmpty!20548 (= mapRes!20548 (and tp!39456 e!270486))))

(declare-fun mapValue!20548 () ValueCell!5947)

(declare-fun mapRest!20548 () (Array (_ BitVec 32) ValueCell!5947))

(declare-fun mapKey!20548 () (_ BitVec 32))

(assert (=> mapNonEmpty!20548 (= (arr!13891 _values!833) (store mapRest!20548 mapKey!20548 mapValue!20548))))

(declare-fun b!463260 () Bool)

(declare-fun res!277065 () Bool)

(assert (=> b!463260 (=> (not res!277065) (not e!270487))))

(declare-datatypes ((List!8402 0))(
  ( (Nil!8399) (Cons!8398 (h!9254 (_ BitVec 64)) (t!14356 List!8402)) )
))
(declare-fun arrayNoDuplicates!0 (array!28923 (_ BitVec 32) List!8402) Bool)

(assert (=> b!463260 (= res!277065 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8399))))

(declare-fun b!463261 () Bool)

(declare-fun res!277067 () Bool)

(assert (=> b!463261 (=> (not res!277067) (not e!270487))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28923 (_ BitVec 32)) Bool)

(assert (=> b!463261 (= res!277067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!463262 () Bool)

(declare-fun tp_is_empty!12581 () Bool)

(assert (=> b!463262 (= e!270486 tp_is_empty!12581)))

(declare-fun res!277066 () Bool)

(assert (=> start!41494 (=> (not res!277066) (not e!270487))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41494 (= res!277066 (validMask!0 mask!1365))))

(assert (=> start!41494 e!270487))

(assert (=> start!41494 tp_is_empty!12581))

(assert (=> start!41494 tp!39457))

(assert (=> start!41494 true))

(declare-fun array_inv!10022 (array!28923) Bool)

(assert (=> start!41494 (array_inv!10022 _keys!1025)))

(declare-fun e!270489 () Bool)

(declare-fun array_inv!10023 (array!28925) Bool)

(assert (=> start!41494 (and (array_inv!10023 _values!833) e!270489)))

(declare-fun b!463259 () Bool)

(declare-fun e!270488 () Bool)

(assert (=> b!463259 (= e!270488 tp_is_empty!12581)))

(declare-fun b!463263 () Bool)

(assert (=> b!463263 (= e!270489 (and e!270488 mapRes!20548))))

(declare-fun condMapEmpty!20548 () Bool)

(declare-fun mapDefault!20548 () ValueCell!5947)

