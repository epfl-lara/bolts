; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42138 () Bool)

(assert start!42138)

(declare-fun b_free!11663 () Bool)

(declare-fun b_next!11663 () Bool)

(assert (=> start!42138 (= b_free!11663 (not b_next!11663))))

(declare-fun tp!41011 () Bool)

(declare-fun b_and!20103 () Bool)

(assert (=> start!42138 (= tp!41011 b_and!20103)))

(declare-fun b!470147 () Bool)

(declare-fun res!280998 () Bool)

(declare-fun e!275423 () Bool)

(assert (=> b!470147 (=> (not res!280998) (not e!275423))))

(declare-datatypes ((array!29913 0))(
  ( (array!29914 (arr!14377 (Array (_ BitVec 32) (_ BitVec 64))) (size!14729 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29913)

(declare-datatypes ((List!8769 0))(
  ( (Nil!8766) (Cons!8765 (h!9621 (_ BitVec 64)) (t!14739 List!8769)) )
))
(declare-fun arrayNoDuplicates!0 (array!29913 (_ BitVec 32) List!8769) Bool)

(assert (=> b!470147 (= res!280998 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8766))))

(declare-fun mapNonEmpty!21337 () Bool)

(declare-fun mapRes!21337 () Bool)

(declare-fun tp!41010 () Bool)

(declare-fun e!275422 () Bool)

(assert (=> mapNonEmpty!21337 (= mapRes!21337 (and tp!41010 e!275422))))

(declare-fun mapKey!21337 () (_ BitVec 32))

(declare-datatypes ((V!18559 0))(
  ( (V!18560 (val!6590 Int)) )
))
(declare-datatypes ((ValueCell!6202 0))(
  ( (ValueCellFull!6202 (v!8877 V!18559)) (EmptyCell!6202) )
))
(declare-datatypes ((array!29915 0))(
  ( (array!29916 (arr!14378 (Array (_ BitVec 32) ValueCell!6202)) (size!14730 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29915)

(declare-fun mapRest!21337 () (Array (_ BitVec 32) ValueCell!6202))

(declare-fun mapValue!21337 () ValueCell!6202)

(assert (=> mapNonEmpty!21337 (= (arr!14378 _values!833) (store mapRest!21337 mapKey!21337 mapValue!21337))))

(declare-fun b!470148 () Bool)

(declare-fun res!280999 () Bool)

(assert (=> b!470148 (=> (not res!280999) (not e!275423))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29913 (_ BitVec 32)) Bool)

(assert (=> b!470148 (= res!280999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!470149 () Bool)

(declare-fun tp_is_empty!13091 () Bool)

(assert (=> b!470149 (= e!275422 tp_is_empty!13091)))

(declare-fun mapIsEmpty!21337 () Bool)

(assert (=> mapIsEmpty!21337 mapRes!21337))

(declare-fun res!281001 () Bool)

(assert (=> start!42138 (=> (not res!281001) (not e!275423))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42138 (= res!281001 (validMask!0 mask!1365))))

(assert (=> start!42138 e!275423))

(assert (=> start!42138 tp_is_empty!13091))

(assert (=> start!42138 tp!41011))

(assert (=> start!42138 true))

(declare-fun array_inv!10370 (array!29913) Bool)

(assert (=> start!42138 (array_inv!10370 _keys!1025)))

(declare-fun e!275421 () Bool)

(declare-fun array_inv!10371 (array!29915) Bool)

(assert (=> start!42138 (and (array_inv!10371 _values!833) e!275421)))

(declare-fun b!470150 () Bool)

(declare-fun e!275419 () Bool)

(assert (=> b!470150 (= e!275419 tp_is_empty!13091)))

(declare-fun b!470151 () Bool)

(assert (=> b!470151 (= e!275423 (not true))))

(declare-datatypes ((tuple2!8648 0))(
  ( (tuple2!8649 (_1!4334 (_ BitVec 64)) (_2!4334 V!18559)) )
))
(declare-datatypes ((List!8770 0))(
  ( (Nil!8767) (Cons!8766 (h!9622 tuple2!8648) (t!14740 List!8770)) )
))
(declare-datatypes ((ListLongMap!7575 0))(
  ( (ListLongMap!7576 (toList!3803 List!8770)) )
))
(declare-fun lt!213375 () ListLongMap!7575)

(declare-fun lt!213374 () ListLongMap!7575)

(assert (=> b!470151 (= lt!213375 lt!213374)))

(declare-datatypes ((Unit!13732 0))(
  ( (Unit!13733) )
))
(declare-fun lt!213376 () Unit!13732)

(declare-fun minValueBefore!38 () V!18559)

(declare-fun zeroValue!794 () V!18559)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18559)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!160 (array!29913 array!29915 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18559 V!18559 V!18559 V!18559 (_ BitVec 32) Int) Unit!13732)

(assert (=> b!470151 (= lt!213376 (lemmaNoChangeToArrayThenSameMapNoExtras!160 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1965 (array!29913 array!29915 (_ BitVec 32) (_ BitVec 32) V!18559 V!18559 (_ BitVec 32) Int) ListLongMap!7575)

(assert (=> b!470151 (= lt!213374 (getCurrentListMapNoExtraKeys!1965 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470151 (= lt!213375 (getCurrentListMapNoExtraKeys!1965 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!470152 () Bool)

(assert (=> b!470152 (= e!275421 (and e!275419 mapRes!21337))))

(declare-fun condMapEmpty!21337 () Bool)

(declare-fun mapDefault!21337 () ValueCell!6202)

