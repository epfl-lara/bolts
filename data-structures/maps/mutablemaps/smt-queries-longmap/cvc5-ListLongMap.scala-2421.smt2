; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38262 () Bool)

(assert start!38262)

(declare-fun mapIsEmpty!16245 () Bool)

(declare-fun mapRes!16245 () Bool)

(assert (=> mapIsEmpty!16245 mapRes!16245))

(declare-fun b!394505 () Bool)

(declare-fun e!238837 () Bool)

(declare-fun tp_is_empty!9763 () Bool)

(assert (=> b!394505 (= e!238837 tp_is_empty!9763)))

(declare-fun b!394506 () Bool)

(declare-fun res!226202 () Bool)

(declare-fun e!238836 () Bool)

(assert (=> b!394506 (=> (not res!226202) (not e!238836))))

(declare-datatypes ((array!23407 0))(
  ( (array!23408 (arr!11157 (Array (_ BitVec 32) (_ BitVec 64))) (size!11509 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23407)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14123 0))(
  ( (V!14124 (val!4926 Int)) )
))
(declare-datatypes ((ValueCell!4538 0))(
  ( (ValueCellFull!4538 (v!7167 V!14123)) (EmptyCell!4538) )
))
(declare-datatypes ((array!23409 0))(
  ( (array!23410 (arr!11158 (Array (_ BitVec 32) ValueCell!4538)) (size!11510 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23409)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!394506 (= res!226202 (and (= (size!11510 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11509 _keys!709) (size!11510 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!394507 () Bool)

(assert (=> b!394507 (= e!238836 (bvsgt #b00000000000000000000000000000000 (size!11509 _keys!709)))))

(declare-fun mapNonEmpty!16245 () Bool)

(declare-fun tp!32040 () Bool)

(declare-fun e!238838 () Bool)

(assert (=> mapNonEmpty!16245 (= mapRes!16245 (and tp!32040 e!238838))))

(declare-fun mapValue!16245 () ValueCell!4538)

(declare-fun mapRest!16245 () (Array (_ BitVec 32) ValueCell!4538))

(declare-fun mapKey!16245 () (_ BitVec 32))

(assert (=> mapNonEmpty!16245 (= (arr!11158 _values!549) (store mapRest!16245 mapKey!16245 mapValue!16245))))

(declare-fun b!394508 () Bool)

(declare-fun res!226199 () Bool)

(assert (=> b!394508 (=> (not res!226199) (not e!238836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!394508 (= res!226199 (validMask!0 mask!1025))))

(declare-fun res!226200 () Bool)

(assert (=> start!38262 (=> (not res!226200) (not e!238836))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38262 (= res!226200 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11509 _keys!709))))))

(assert (=> start!38262 e!238836))

(assert (=> start!38262 true))

(declare-fun e!238835 () Bool)

(declare-fun array_inv!8166 (array!23409) Bool)

(assert (=> start!38262 (and (array_inv!8166 _values!549) e!238835)))

(declare-fun array_inv!8167 (array!23407) Bool)

(assert (=> start!38262 (array_inv!8167 _keys!709)))

(declare-fun b!394509 () Bool)

(assert (=> b!394509 (= e!238838 tp_is_empty!9763)))

(declare-fun b!394510 () Bool)

(declare-fun res!226201 () Bool)

(assert (=> b!394510 (=> (not res!226201) (not e!238836))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23407 (_ BitVec 32)) Bool)

(assert (=> b!394510 (= res!226201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!394511 () Bool)

(assert (=> b!394511 (= e!238835 (and e!238837 mapRes!16245))))

(declare-fun condMapEmpty!16245 () Bool)

(declare-fun mapDefault!16245 () ValueCell!4538)

