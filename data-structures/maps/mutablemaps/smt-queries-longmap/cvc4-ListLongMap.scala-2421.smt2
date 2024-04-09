; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38266 () Bool)

(assert start!38266)

(declare-fun b!394547 () Bool)

(declare-fun e!238866 () Bool)

(declare-fun tp_is_empty!9767 () Bool)

(assert (=> b!394547 (= e!238866 tp_is_empty!9767)))

(declare-fun mapNonEmpty!16251 () Bool)

(declare-fun mapRes!16251 () Bool)

(declare-fun tp!32046 () Bool)

(declare-fun e!238865 () Bool)

(assert (=> mapNonEmpty!16251 (= mapRes!16251 (and tp!32046 e!238865))))

(declare-datatypes ((V!14127 0))(
  ( (V!14128 (val!4928 Int)) )
))
(declare-datatypes ((ValueCell!4540 0))(
  ( (ValueCellFull!4540 (v!7169 V!14127)) (EmptyCell!4540) )
))
(declare-datatypes ((array!23415 0))(
  ( (array!23416 (arr!11161 (Array (_ BitVec 32) ValueCell!4540)) (size!11513 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23415)

(declare-fun mapKey!16251 () (_ BitVec 32))

(declare-fun mapValue!16251 () ValueCell!4540)

(declare-fun mapRest!16251 () (Array (_ BitVec 32) ValueCell!4540))

(assert (=> mapNonEmpty!16251 (= (arr!11161 _values!549) (store mapRest!16251 mapKey!16251 mapValue!16251))))

(declare-fun b!394549 () Bool)

(declare-fun res!226225 () Bool)

(declare-fun e!238869 () Bool)

(assert (=> b!394549 (=> (not res!226225) (not e!238869))))

(declare-datatypes ((array!23417 0))(
  ( (array!23418 (arr!11162 (Array (_ BitVec 32) (_ BitVec 64))) (size!11514 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23417)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!394549 (= res!226225 (and (= (size!11513 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11514 _keys!709) (size!11513 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!394550 () Bool)

(declare-fun res!226226 () Bool)

(assert (=> b!394550 (=> (not res!226226) (not e!238869))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23417 (_ BitVec 32)) Bool)

(assert (=> b!394550 (= res!226226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!394551 () Bool)

(assert (=> b!394551 (= e!238869 (bvsgt #b00000000000000000000000000000000 (size!11514 _keys!709)))))

(declare-fun mapIsEmpty!16251 () Bool)

(assert (=> mapIsEmpty!16251 mapRes!16251))

(declare-fun res!226223 () Bool)

(assert (=> start!38266 (=> (not res!226223) (not e!238869))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38266 (= res!226223 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11514 _keys!709))))))

(assert (=> start!38266 e!238869))

(assert (=> start!38266 true))

(declare-fun e!238867 () Bool)

(declare-fun array_inv!8170 (array!23415) Bool)

(assert (=> start!38266 (and (array_inv!8170 _values!549) e!238867)))

(declare-fun array_inv!8171 (array!23417) Bool)

(assert (=> start!38266 (array_inv!8171 _keys!709)))

(declare-fun b!394548 () Bool)

(declare-fun res!226224 () Bool)

(assert (=> b!394548 (=> (not res!226224) (not e!238869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!394548 (= res!226224 (validMask!0 mask!1025))))

(declare-fun b!394552 () Bool)

(assert (=> b!394552 (= e!238865 tp_is_empty!9767)))

(declare-fun b!394553 () Bool)

(assert (=> b!394553 (= e!238867 (and e!238866 mapRes!16251))))

(declare-fun condMapEmpty!16251 () Bool)

(declare-fun mapDefault!16251 () ValueCell!4540)

