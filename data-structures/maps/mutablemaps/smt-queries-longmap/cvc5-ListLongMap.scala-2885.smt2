; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41448 () Bool)

(assert start!41448)

(declare-fun b_free!11119 () Bool)

(declare-fun b_next!11119 () Bool)

(assert (=> start!41448 (= b_free!11119 (not b_next!11119))))

(declare-fun tp!39351 () Bool)

(declare-fun b_and!19473 () Bool)

(assert (=> start!41448 (= tp!39351 b_and!19473)))

(declare-fun b!462828 () Bool)

(declare-fun e!270185 () Bool)

(declare-fun tp_is_empty!12547 () Bool)

(assert (=> b!462828 (= e!270185 tp_is_empty!12547)))

(declare-fun b!462829 () Bool)

(declare-fun res!276833 () Bool)

(declare-fun e!270183 () Bool)

(assert (=> b!462829 (=> (not res!276833) (not e!270183))))

(declare-datatypes ((array!28855 0))(
  ( (array!28856 (arr!13857 (Array (_ BitVec 32) (_ BitVec 64))) (size!14209 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28855)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28855 (_ BitVec 32)) Bool)

(assert (=> b!462829 (= res!276833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!462830 () Bool)

(declare-fun res!276834 () Bool)

(assert (=> b!462830 (=> (not res!276834) (not e!270183))))

(declare-datatypes ((List!8372 0))(
  ( (Nil!8369) (Cons!8368 (h!9224 (_ BitVec 64)) (t!14324 List!8372)) )
))
(declare-fun arrayNoDuplicates!0 (array!28855 (_ BitVec 32) List!8372) Bool)

(assert (=> b!462830 (= res!276834 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8369))))

(declare-fun b!462831 () Bool)

(declare-fun e!270184 () Bool)

(assert (=> b!462831 (= e!270184 tp_is_empty!12547)))

(declare-fun b!462832 () Bool)

(assert (=> b!462832 (= e!270183 false)))

(declare-datatypes ((V!17835 0))(
  ( (V!17836 (val!6318 Int)) )
))
(declare-fun minValueBefore!38 () V!17835)

(declare-fun zeroValue!794 () V!17835)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((tuple2!8244 0))(
  ( (tuple2!8245 (_1!4132 (_ BitVec 64)) (_2!4132 V!17835)) )
))
(declare-datatypes ((List!8373 0))(
  ( (Nil!8370) (Cons!8369 (h!9225 tuple2!8244) (t!14325 List!8373)) )
))
(declare-datatypes ((ListLongMap!7171 0))(
  ( (ListLongMap!7172 (toList!3601 List!8373)) )
))
(declare-fun lt!209256 () ListLongMap!7171)

(declare-datatypes ((ValueCell!5930 0))(
  ( (ValueCellFull!5930 (v!8601 V!17835)) (EmptyCell!5930) )
))
(declare-datatypes ((array!28857 0))(
  ( (array!28858 (arr!13858 (Array (_ BitVec 32) ValueCell!5930)) (size!14210 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28857)

(declare-fun getCurrentListMapNoExtraKeys!1769 (array!28855 array!28857 (_ BitVec 32) (_ BitVec 32) V!17835 V!17835 (_ BitVec 32) Int) ListLongMap!7171)

(assert (=> b!462832 (= lt!209256 (getCurrentListMapNoExtraKeys!1769 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!462833 () Bool)

(declare-fun e!270187 () Bool)

(declare-fun mapRes!20494 () Bool)

(assert (=> b!462833 (= e!270187 (and e!270184 mapRes!20494))))

(declare-fun condMapEmpty!20494 () Bool)

(declare-fun mapDefault!20494 () ValueCell!5930)

