; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42140 () Bool)

(assert start!42140)

(declare-fun b_free!11665 () Bool)

(declare-fun b_next!11665 () Bool)

(assert (=> start!42140 (= b_free!11665 (not b_next!11665))))

(declare-fun tp!41017 () Bool)

(declare-fun b_and!20105 () Bool)

(assert (=> start!42140 (= tp!41017 b_and!20105)))

(declare-fun b!470168 () Bool)

(declare-fun res!281012 () Bool)

(declare-fun e!275438 () Bool)

(assert (=> b!470168 (=> (not res!281012) (not e!275438))))

(declare-datatypes ((array!29917 0))(
  ( (array!29918 (arr!14379 (Array (_ BitVec 32) (_ BitVec 64))) (size!14731 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29917)

(declare-datatypes ((List!8771 0))(
  ( (Nil!8768) (Cons!8767 (h!9623 (_ BitVec 64)) (t!14741 List!8771)) )
))
(declare-fun arrayNoDuplicates!0 (array!29917 (_ BitVec 32) List!8771) Bool)

(assert (=> b!470168 (= res!281012 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8768))))

(declare-fun mapNonEmpty!21340 () Bool)

(declare-fun mapRes!21340 () Bool)

(declare-fun tp!41016 () Bool)

(declare-fun e!275434 () Bool)

(assert (=> mapNonEmpty!21340 (= mapRes!21340 (and tp!41016 e!275434))))

(declare-datatypes ((V!18563 0))(
  ( (V!18564 (val!6591 Int)) )
))
(declare-datatypes ((ValueCell!6203 0))(
  ( (ValueCellFull!6203 (v!8878 V!18563)) (EmptyCell!6203) )
))
(declare-datatypes ((array!29919 0))(
  ( (array!29920 (arr!14380 (Array (_ BitVec 32) ValueCell!6203)) (size!14732 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29919)

(declare-fun mapValue!21340 () ValueCell!6203)

(declare-fun mapKey!21340 () (_ BitVec 32))

(declare-fun mapRest!21340 () (Array (_ BitVec 32) ValueCell!6203))

(assert (=> mapNonEmpty!21340 (= (arr!14380 _values!833) (store mapRest!21340 mapKey!21340 mapValue!21340))))

(declare-fun b!470169 () Bool)

(declare-fun res!281010 () Bool)

(assert (=> b!470169 (=> (not res!281010) (not e!275438))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29917 (_ BitVec 32)) Bool)

(assert (=> b!470169 (= res!281010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!21340 () Bool)

(assert (=> mapIsEmpty!21340 mapRes!21340))

(declare-fun b!470170 () Bool)

(declare-fun tp_is_empty!13093 () Bool)

(assert (=> b!470170 (= e!275434 tp_is_empty!13093)))

(declare-fun res!281013 () Bool)

(assert (=> start!42140 (=> (not res!281013) (not e!275438))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42140 (= res!281013 (validMask!0 mask!1365))))

(assert (=> start!42140 e!275438))

(assert (=> start!42140 tp_is_empty!13093))

(assert (=> start!42140 tp!41017))

(assert (=> start!42140 true))

(declare-fun array_inv!10372 (array!29917) Bool)

(assert (=> start!42140 (array_inv!10372 _keys!1025)))

(declare-fun e!275436 () Bool)

(declare-fun array_inv!10373 (array!29919) Bool)

(assert (=> start!42140 (and (array_inv!10373 _values!833) e!275436)))

(declare-fun b!470171 () Bool)

(declare-fun e!275435 () Bool)

(assert (=> b!470171 (= e!275435 tp_is_empty!13093)))

(declare-fun b!470172 () Bool)

(assert (=> b!470172 (= e!275436 (and e!275435 mapRes!21340))))

(declare-fun condMapEmpty!21340 () Bool)

(declare-fun mapDefault!21340 () ValueCell!6203)

