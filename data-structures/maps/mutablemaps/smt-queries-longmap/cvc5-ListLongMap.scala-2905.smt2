; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41580 () Bool)

(assert start!41580)

(declare-fun b_free!11239 () Bool)

(declare-fun b_next!11239 () Bool)

(assert (=> start!41580 (= b_free!11239 (not b_next!11239))))

(declare-fun tp!39715 () Bool)

(declare-fun b_and!19597 () Bool)

(assert (=> start!41580 (= tp!39715 b_and!19597)))

(declare-fun mapNonEmpty!20677 () Bool)

(declare-fun mapRes!20677 () Bool)

(declare-fun tp!39714 () Bool)

(declare-fun e!271135 () Bool)

(assert (=> mapNonEmpty!20677 (= mapRes!20677 (and tp!39714 e!271135))))

(declare-datatypes ((V!17995 0))(
  ( (V!17996 (val!6378 Int)) )
))
(declare-datatypes ((ValueCell!5990 0))(
  ( (ValueCellFull!5990 (v!8661 V!17995)) (EmptyCell!5990) )
))
(declare-datatypes ((array!29083 0))(
  ( (array!29084 (arr!13970 (Array (_ BitVec 32) ValueCell!5990)) (size!14322 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29083)

(declare-fun mapKey!20677 () (_ BitVec 32))

(declare-fun mapRest!20677 () (Array (_ BitVec 32) ValueCell!5990))

(declare-fun mapValue!20677 () ValueCell!5990)

(assert (=> mapNonEmpty!20677 (= (arr!13970 _values!833) (store mapRest!20677 mapKey!20677 mapValue!20677))))

(declare-fun b!464161 () Bool)

(declare-fun res!277582 () Bool)

(declare-fun e!271133 () Bool)

(assert (=> b!464161 (=> (not res!277582) (not e!271133))))

(declare-datatypes ((array!29085 0))(
  ( (array!29086 (arr!13971 (Array (_ BitVec 32) (_ BitVec 64))) (size!14323 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29085)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29085 (_ BitVec 32)) Bool)

(assert (=> b!464161 (= res!277582 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!20677 () Bool)

(assert (=> mapIsEmpty!20677 mapRes!20677))

(declare-fun b!464162 () Bool)

(declare-fun e!271131 () Bool)

(declare-fun e!271134 () Bool)

(assert (=> b!464162 (= e!271131 (and e!271134 mapRes!20677))))

(declare-fun condMapEmpty!20677 () Bool)

(declare-fun mapDefault!20677 () ValueCell!5990)

