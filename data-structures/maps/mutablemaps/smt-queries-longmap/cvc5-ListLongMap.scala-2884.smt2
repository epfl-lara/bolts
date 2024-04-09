; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41442 () Bool)

(assert start!41442)

(declare-fun b_free!11113 () Bool)

(declare-fun b_next!11113 () Bool)

(assert (=> start!41442 (= b_free!11113 (not b_next!11113))))

(declare-fun tp!39334 () Bool)

(declare-fun b_and!19467 () Bool)

(assert (=> start!41442 (= tp!39334 b_and!19467)))

(declare-fun b!462765 () Bool)

(declare-fun res!276800 () Bool)

(declare-fun e!270139 () Bool)

(assert (=> b!462765 (=> (not res!276800) (not e!270139))))

(declare-datatypes ((array!28843 0))(
  ( (array!28844 (arr!13851 (Array (_ BitVec 32) (_ BitVec 64))) (size!14203 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28843)

(declare-datatypes ((List!8367 0))(
  ( (Nil!8364) (Cons!8363 (h!9219 (_ BitVec 64)) (t!14319 List!8367)) )
))
(declare-fun arrayNoDuplicates!0 (array!28843 (_ BitVec 32) List!8367) Bool)

(assert (=> b!462765 (= res!276800 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8364))))

(declare-fun mapNonEmpty!20485 () Bool)

(declare-fun mapRes!20485 () Bool)

(declare-fun tp!39333 () Bool)

(declare-fun e!270138 () Bool)

(assert (=> mapNonEmpty!20485 (= mapRes!20485 (and tp!39333 e!270138))))

(declare-datatypes ((V!17827 0))(
  ( (V!17828 (val!6315 Int)) )
))
(declare-datatypes ((ValueCell!5927 0))(
  ( (ValueCellFull!5927 (v!8598 V!17827)) (EmptyCell!5927) )
))
(declare-datatypes ((array!28845 0))(
  ( (array!28846 (arr!13852 (Array (_ BitVec 32) ValueCell!5927)) (size!14204 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28845)

(declare-fun mapKey!20485 () (_ BitVec 32))

(declare-fun mapValue!20485 () ValueCell!5927)

(declare-fun mapRest!20485 () (Array (_ BitVec 32) ValueCell!5927))

(assert (=> mapNonEmpty!20485 (= (arr!13852 _values!833) (store mapRest!20485 mapKey!20485 mapValue!20485))))

(declare-fun b!462766 () Bool)

(declare-fun e!270142 () Bool)

(declare-fun e!270141 () Bool)

(assert (=> b!462766 (= e!270142 (and e!270141 mapRes!20485))))

(declare-fun condMapEmpty!20485 () Bool)

(declare-fun mapDefault!20485 () ValueCell!5927)

