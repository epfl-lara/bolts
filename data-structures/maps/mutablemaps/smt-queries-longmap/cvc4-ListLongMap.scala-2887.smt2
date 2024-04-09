; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41464 () Bool)

(assert start!41464)

(declare-fun b_free!11135 () Bool)

(declare-fun b_next!11135 () Bool)

(assert (=> start!41464 (= b_free!11135 (not b_next!11135))))

(declare-fun tp!39399 () Bool)

(declare-fun b_and!19489 () Bool)

(assert (=> start!41464 (= tp!39399 b_and!19489)))

(declare-fun b!462996 () Bool)

(declare-fun e!270304 () Bool)

(declare-fun tp_is_empty!12563 () Bool)

(assert (=> b!462996 (= e!270304 tp_is_empty!12563)))

(declare-fun mapIsEmpty!20518 () Bool)

(declare-fun mapRes!20518 () Bool)

(assert (=> mapIsEmpty!20518 mapRes!20518))

(declare-fun b!462997 () Bool)

(declare-fun res!276930 () Bool)

(declare-fun e!270305 () Bool)

(assert (=> b!462997 (=> (not res!276930) (not e!270305))))

(declare-datatypes ((array!28885 0))(
  ( (array!28886 (arr!13872 (Array (_ BitVec 32) (_ BitVec 64))) (size!14224 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28885)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28885 (_ BitVec 32)) Bool)

(assert (=> b!462997 (= res!276930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!20518 () Bool)

(declare-fun tp!39400 () Bool)

(assert (=> mapNonEmpty!20518 (= mapRes!20518 (and tp!39400 e!270304))))

(declare-datatypes ((V!17855 0))(
  ( (V!17856 (val!6326 Int)) )
))
(declare-datatypes ((ValueCell!5938 0))(
  ( (ValueCellFull!5938 (v!8609 V!17855)) (EmptyCell!5938) )
))
(declare-fun mapRest!20518 () (Array (_ BitVec 32) ValueCell!5938))

(declare-fun mapValue!20518 () ValueCell!5938)

(declare-fun mapKey!20518 () (_ BitVec 32))

(declare-datatypes ((array!28887 0))(
  ( (array!28888 (arr!13873 (Array (_ BitVec 32) ValueCell!5938)) (size!14225 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28887)

(assert (=> mapNonEmpty!20518 (= (arr!13873 _values!833) (store mapRest!20518 mapKey!20518 mapValue!20518))))

(declare-fun b!462998 () Bool)

(declare-fun e!270307 () Bool)

(assert (=> b!462998 (= e!270307 tp_is_empty!12563)))

(declare-fun b!462999 () Bool)

(declare-fun res!276929 () Bool)

(assert (=> b!462999 (=> (not res!276929) (not e!270305))))

(declare-datatypes ((List!8385 0))(
  ( (Nil!8382) (Cons!8381 (h!9237 (_ BitVec 64)) (t!14337 List!8385)) )
))
(declare-fun arrayNoDuplicates!0 (array!28885 (_ BitVec 32) List!8385) Bool)

(assert (=> b!462999 (= res!276929 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8382))))

(declare-fun b!463000 () Bool)

(assert (=> b!463000 (= e!270305 false)))

(declare-fun minValueBefore!38 () V!17855)

(declare-fun zeroValue!794 () V!17855)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8258 0))(
  ( (tuple2!8259 (_1!4139 (_ BitVec 64)) (_2!4139 V!17855)) )
))
(declare-datatypes ((List!8386 0))(
  ( (Nil!8383) (Cons!8382 (h!9238 tuple2!8258) (t!14338 List!8386)) )
))
(declare-datatypes ((ListLongMap!7185 0))(
  ( (ListLongMap!7186 (toList!3608 List!8386)) )
))
(declare-fun lt!209280 () ListLongMap!7185)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1776 (array!28885 array!28887 (_ BitVec 32) (_ BitVec 32) V!17855 V!17855 (_ BitVec 32) Int) ListLongMap!7185)

(assert (=> b!463000 (= lt!209280 (getCurrentListMapNoExtraKeys!1776 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463001 () Bool)

(declare-fun e!270303 () Bool)

(assert (=> b!463001 (= e!270303 (and e!270307 mapRes!20518))))

(declare-fun condMapEmpty!20518 () Bool)

(declare-fun mapDefault!20518 () ValueCell!5938)

