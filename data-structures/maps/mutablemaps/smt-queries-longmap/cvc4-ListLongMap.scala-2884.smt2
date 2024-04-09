; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41446 () Bool)

(assert start!41446)

(declare-fun b_free!11117 () Bool)

(declare-fun b_next!11117 () Bool)

(assert (=> start!41446 (= b_free!11117 (not b_next!11117))))

(declare-fun tp!39346 () Bool)

(declare-fun b_and!19471 () Bool)

(assert (=> start!41446 (= tp!39346 b_and!19471)))

(declare-fun b!462807 () Bool)

(declare-fun res!276823 () Bool)

(declare-fun e!270170 () Bool)

(assert (=> b!462807 (=> (not res!276823) (not e!270170))))

(declare-datatypes ((array!28851 0))(
  ( (array!28852 (arr!13855 (Array (_ BitVec 32) (_ BitVec 64))) (size!14207 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28851)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28851 (_ BitVec 32)) Bool)

(assert (=> b!462807 (= res!276823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!20491 () Bool)

(declare-fun mapRes!20491 () Bool)

(assert (=> mapIsEmpty!20491 mapRes!20491))

(declare-fun b!462808 () Bool)

(declare-fun e!270168 () Bool)

(declare-fun tp_is_empty!12545 () Bool)

(assert (=> b!462808 (= e!270168 tp_is_empty!12545)))

(declare-fun b!462809 () Bool)

(assert (=> b!462809 (= e!270170 false)))

(declare-datatypes ((V!17831 0))(
  ( (V!17832 (val!6317 Int)) )
))
(declare-fun minValueBefore!38 () V!17831)

(declare-fun zeroValue!794 () V!17831)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5929 0))(
  ( (ValueCellFull!5929 (v!8600 V!17831)) (EmptyCell!5929) )
))
(declare-datatypes ((array!28853 0))(
  ( (array!28854 (arr!13856 (Array (_ BitVec 32) ValueCell!5929)) (size!14208 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28853)

(declare-datatypes ((tuple2!8242 0))(
  ( (tuple2!8243 (_1!4131 (_ BitVec 64)) (_2!4131 V!17831)) )
))
(declare-datatypes ((List!8370 0))(
  ( (Nil!8367) (Cons!8366 (h!9222 tuple2!8242) (t!14322 List!8370)) )
))
(declare-datatypes ((ListLongMap!7169 0))(
  ( (ListLongMap!7170 (toList!3600 List!8370)) )
))
(declare-fun lt!209253 () ListLongMap!7169)

(declare-fun getCurrentListMapNoExtraKeys!1768 (array!28851 array!28853 (_ BitVec 32) (_ BitVec 32) V!17831 V!17831 (_ BitVec 32) Int) ListLongMap!7169)

(assert (=> b!462809 (= lt!209253 (getCurrentListMapNoExtraKeys!1768 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!462810 () Bool)

(declare-fun res!276824 () Bool)

(assert (=> b!462810 (=> (not res!276824) (not e!270170))))

(declare-datatypes ((List!8371 0))(
  ( (Nil!8368) (Cons!8367 (h!9223 (_ BitVec 64)) (t!14323 List!8371)) )
))
(declare-fun arrayNoDuplicates!0 (array!28851 (_ BitVec 32) List!8371) Bool)

(assert (=> b!462810 (= res!276824 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8368))))

(declare-fun b!462811 () Bool)

(declare-fun e!270171 () Bool)

(declare-fun e!270172 () Bool)

(assert (=> b!462811 (= e!270171 (and e!270172 mapRes!20491))))

(declare-fun condMapEmpty!20491 () Bool)

(declare-fun mapDefault!20491 () ValueCell!5929)

