; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38286 () Bool)

(assert start!38286)

(declare-fun b!394701 () Bool)

(declare-fun e!238973 () Bool)

(declare-datatypes ((List!6458 0))(
  ( (Nil!6455) (Cons!6454 (h!7310 (_ BitVec 64)) (t!11640 List!6458)) )
))
(declare-fun noDuplicate!193 (List!6458) Bool)

(assert (=> b!394701 (= e!238973 (not (noDuplicate!193 Nil!6455)))))

(declare-fun b!394702 () Bool)

(declare-fun e!238974 () Bool)

(declare-fun tp_is_empty!9779 () Bool)

(assert (=> b!394702 (= e!238974 tp_is_empty!9779)))

(declare-fun b!394703 () Bool)

(declare-fun res!226311 () Bool)

(assert (=> b!394703 (=> (not res!226311) (not e!238973))))

(declare-datatypes ((array!23439 0))(
  ( (array!23440 (arr!11172 (Array (_ BitVec 32) (_ BitVec 64))) (size!11524 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23439)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23439 (_ BitVec 32)) Bool)

(assert (=> b!394703 (= res!226311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!394704 () Bool)

(declare-fun e!238970 () Bool)

(assert (=> b!394704 (= e!238970 tp_is_empty!9779)))

(declare-fun mapIsEmpty!16272 () Bool)

(declare-fun mapRes!16272 () Bool)

(assert (=> mapIsEmpty!16272 mapRes!16272))

(declare-fun mapNonEmpty!16272 () Bool)

(declare-fun tp!32067 () Bool)

(assert (=> mapNonEmpty!16272 (= mapRes!16272 (and tp!32067 e!238974))))

(declare-datatypes ((V!14143 0))(
  ( (V!14144 (val!4934 Int)) )
))
(declare-datatypes ((ValueCell!4546 0))(
  ( (ValueCellFull!4546 (v!7175 V!14143)) (EmptyCell!4546) )
))
(declare-fun mapValue!16272 () ValueCell!4546)

(declare-fun mapKey!16272 () (_ BitVec 32))

(declare-fun mapRest!16272 () (Array (_ BitVec 32) ValueCell!4546))

(declare-datatypes ((array!23441 0))(
  ( (array!23442 (arr!11173 (Array (_ BitVec 32) ValueCell!4546)) (size!11525 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23441)

(assert (=> mapNonEmpty!16272 (= (arr!11173 _values!549) (store mapRest!16272 mapKey!16272 mapValue!16272))))

(declare-fun b!394706 () Bool)

(declare-fun e!238971 () Bool)

(assert (=> b!394706 (= e!238971 (and e!238970 mapRes!16272))))

(declare-fun condMapEmpty!16272 () Bool)

(declare-fun mapDefault!16272 () ValueCell!4546)

