; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41526 () Bool)

(assert start!41526)

(declare-fun b_free!11185 () Bool)

(declare-fun b_next!11185 () Bool)

(assert (=> start!41526 (= b_free!11185 (not b_next!11185))))

(declare-fun tp!39553 () Bool)

(declare-fun b_and!19543 () Bool)

(assert (=> start!41526 (= tp!39553 b_and!19543)))

(declare-fun mapIsEmpty!20596 () Bool)

(declare-fun mapRes!20596 () Bool)

(assert (=> mapIsEmpty!20596 mapRes!20596))

(declare-fun b!463594 () Bool)

(declare-fun e!270728 () Bool)

(declare-fun tp_is_empty!12613 () Bool)

(assert (=> b!463594 (= e!270728 tp_is_empty!12613)))

(declare-fun b!463595 () Bool)

(declare-fun e!270726 () Bool)

(assert (=> b!463595 (= e!270726 false)))

(declare-datatypes ((V!17923 0))(
  ( (V!17924 (val!6351 Int)) )
))
(declare-datatypes ((tuple2!8298 0))(
  ( (tuple2!8299 (_1!4159 (_ BitVec 64)) (_2!4159 V!17923)) )
))
(declare-datatypes ((List!8423 0))(
  ( (Nil!8420) (Cons!8419 (h!9275 tuple2!8298) (t!14377 List!8423)) )
))
(declare-datatypes ((ListLongMap!7225 0))(
  ( (ListLongMap!7226 (toList!3628 List!8423)) )
))
(declare-fun lt!209442 () ListLongMap!7225)

(declare-fun zeroValue!794 () V!17923)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!28983 0))(
  ( (array!28984 (arr!13920 (Array (_ BitVec 32) (_ BitVec 64))) (size!14272 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28983)

(declare-datatypes ((ValueCell!5963 0))(
  ( (ValueCellFull!5963 (v!8634 V!17923)) (EmptyCell!5963) )
))
(declare-datatypes ((array!28985 0))(
  ( (array!28986 (arr!13921 (Array (_ BitVec 32) ValueCell!5963)) (size!14273 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28985)

(declare-fun minValueAfter!38 () V!17923)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1796 (array!28983 array!28985 (_ BitVec 32) (_ BitVec 32) V!17923 V!17923 (_ BitVec 32) Int) ListLongMap!7225)

(assert (=> b!463595 (= lt!209442 (getCurrentListMapNoExtraKeys!1796 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!17923)

(declare-fun lt!209441 () ListLongMap!7225)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!463595 (= lt!209441 (getCurrentListMapNoExtraKeys!1796 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463596 () Bool)

(declare-fun res!277259 () Bool)

(assert (=> b!463596 (=> (not res!277259) (not e!270726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28983 (_ BitVec 32)) Bool)

(assert (=> b!463596 (= res!277259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!463597 () Bool)

(declare-fun e!270729 () Bool)

(assert (=> b!463597 (= e!270729 tp_is_empty!12613)))

(declare-fun res!277257 () Bool)

(assert (=> start!41526 (=> (not res!277257) (not e!270726))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41526 (= res!277257 (validMask!0 mask!1365))))

(assert (=> start!41526 e!270726))

(assert (=> start!41526 tp_is_empty!12613))

(assert (=> start!41526 tp!39553))

(assert (=> start!41526 true))

(declare-fun array_inv!10040 (array!28983) Bool)

(assert (=> start!41526 (array_inv!10040 _keys!1025)))

(declare-fun e!270727 () Bool)

(declare-fun array_inv!10041 (array!28985) Bool)

(assert (=> start!41526 (and (array_inv!10041 _values!833) e!270727)))

(declare-fun b!463598 () Bool)

(declare-fun res!277258 () Bool)

(assert (=> b!463598 (=> (not res!277258) (not e!270726))))

(declare-datatypes ((List!8424 0))(
  ( (Nil!8421) (Cons!8420 (h!9276 (_ BitVec 64)) (t!14378 List!8424)) )
))
(declare-fun arrayNoDuplicates!0 (array!28983 (_ BitVec 32) List!8424) Bool)

(assert (=> b!463598 (= res!277258 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8421))))

(declare-fun b!463599 () Bool)

(assert (=> b!463599 (= e!270727 (and e!270728 mapRes!20596))))

(declare-fun condMapEmpty!20596 () Bool)

(declare-fun mapDefault!20596 () ValueCell!5963)

