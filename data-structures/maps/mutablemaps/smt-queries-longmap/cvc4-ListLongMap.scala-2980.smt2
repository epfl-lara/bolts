; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42168 () Bool)

(assert start!42168)

(declare-fun b_free!11693 () Bool)

(declare-fun b_next!11693 () Bool)

(assert (=> start!42168 (= b_free!11693 (not b_next!11693))))

(declare-fun tp!41100 () Bool)

(declare-fun b_and!20133 () Bool)

(assert (=> start!42168 (= tp!41100 b_and!20133)))

(declare-fun res!281178 () Bool)

(declare-fun e!275648 () Bool)

(assert (=> start!42168 (=> (not res!281178) (not e!275648))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42168 (= res!281178 (validMask!0 mask!1365))))

(assert (=> start!42168 e!275648))

(declare-fun tp_is_empty!13121 () Bool)

(assert (=> start!42168 tp_is_empty!13121))

(assert (=> start!42168 tp!41100))

(assert (=> start!42168 true))

(declare-datatypes ((array!29969 0))(
  ( (array!29970 (arr!14405 (Array (_ BitVec 32) (_ BitVec 64))) (size!14757 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29969)

(declare-fun array_inv!10396 (array!29969) Bool)

(assert (=> start!42168 (array_inv!10396 _keys!1025)))

(declare-datatypes ((V!18599 0))(
  ( (V!18600 (val!6605 Int)) )
))
(declare-datatypes ((ValueCell!6217 0))(
  ( (ValueCellFull!6217 (v!8892 V!18599)) (EmptyCell!6217) )
))
(declare-datatypes ((array!29971 0))(
  ( (array!29972 (arr!14406 (Array (_ BitVec 32) ValueCell!6217)) (size!14758 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29971)

(declare-fun e!275647 () Bool)

(declare-fun array_inv!10397 (array!29971) Bool)

(assert (=> start!42168 (and (array_inv!10397 _values!833) e!275647)))

(declare-fun mapIsEmpty!21382 () Bool)

(declare-fun mapRes!21382 () Bool)

(assert (=> mapIsEmpty!21382 mapRes!21382))

(declare-fun mapNonEmpty!21382 () Bool)

(declare-fun tp!41101 () Bool)

(declare-fun e!275646 () Bool)

(assert (=> mapNonEmpty!21382 (= mapRes!21382 (and tp!41101 e!275646))))

(declare-fun mapRest!21382 () (Array (_ BitVec 32) ValueCell!6217))

(declare-fun mapValue!21382 () ValueCell!6217)

(declare-fun mapKey!21382 () (_ BitVec 32))

(assert (=> mapNonEmpty!21382 (= (arr!14406 _values!833) (store mapRest!21382 mapKey!21382 mapValue!21382))))

(declare-fun b!470462 () Bool)

(declare-fun res!281180 () Bool)

(assert (=> b!470462 (=> (not res!281180) (not e!275648))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29969 (_ BitVec 32)) Bool)

(assert (=> b!470462 (= res!281180 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!470463 () Bool)

(declare-fun res!281179 () Bool)

(assert (=> b!470463 (=> (not res!281179) (not e!275648))))

(declare-datatypes ((List!8790 0))(
  ( (Nil!8787) (Cons!8786 (h!9642 (_ BitVec 64)) (t!14760 List!8790)) )
))
(declare-fun arrayNoDuplicates!0 (array!29969 (_ BitVec 32) List!8790) Bool)

(assert (=> b!470463 (= res!281179 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8787))))

(declare-fun b!470464 () Bool)

(declare-fun e!275645 () Bool)

(assert (=> b!470464 (= e!275647 (and e!275645 mapRes!21382))))

(declare-fun condMapEmpty!21382 () Bool)

(declare-fun mapDefault!21382 () ValueCell!6217)

