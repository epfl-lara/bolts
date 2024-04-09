; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38862 () Bool)

(assert start!38862)

(declare-fun b!405650 () Bool)

(declare-fun res!234281 () Bool)

(declare-fun e!243856 () Bool)

(assert (=> b!405650 (=> (not res!234281) (not e!243856))))

(declare-datatypes ((array!24403 0))(
  ( (array!24404 (arr!11648 (Array (_ BitVec 32) (_ BitVec 64))) (size!12000 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24403)

(declare-datatypes ((V!14803 0))(
  ( (V!14804 (val!5181 Int)) )
))
(declare-datatypes ((ValueCell!4793 0))(
  ( (ValueCellFull!4793 (v!7424 V!14803)) (EmptyCell!4793) )
))
(declare-datatypes ((array!24405 0))(
  ( (array!24406 (arr!11649 (Array (_ BitVec 32) ValueCell!4793)) (size!12001 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24405)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!405650 (= res!234281 (and (= (size!12001 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12000 _keys!709) (size!12001 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!17031 () Bool)

(declare-fun mapRes!17031 () Bool)

(assert (=> mapIsEmpty!17031 mapRes!17031))

(declare-fun b!405651 () Bool)

(declare-fun res!234277 () Bool)

(assert (=> b!405651 (=> (not res!234277) (not e!243856))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!405651 (= res!234277 (validKeyInArray!0 k!794))))

(declare-fun b!405652 () Bool)

(declare-fun e!243855 () Bool)

(assert (=> b!405652 (= e!243855 false)))

(declare-fun lt!188361 () Bool)

(declare-fun lt!188360 () array!24403)

(declare-datatypes ((List!6748 0))(
  ( (Nil!6745) (Cons!6744 (h!7600 (_ BitVec 64)) (t!11930 List!6748)) )
))
(declare-fun arrayNoDuplicates!0 (array!24403 (_ BitVec 32) List!6748) Bool)

(assert (=> b!405652 (= lt!188361 (arrayNoDuplicates!0 lt!188360 #b00000000000000000000000000000000 Nil!6745))))

(declare-fun res!234282 () Bool)

(assert (=> start!38862 (=> (not res!234282) (not e!243856))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38862 (= res!234282 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12000 _keys!709))))))

(assert (=> start!38862 e!243856))

(assert (=> start!38862 true))

(declare-fun e!243857 () Bool)

(declare-fun array_inv!8510 (array!24405) Bool)

(assert (=> start!38862 (and (array_inv!8510 _values!549) e!243857)))

(declare-fun array_inv!8511 (array!24403) Bool)

(assert (=> start!38862 (array_inv!8511 _keys!709)))

(declare-fun b!405653 () Bool)

(declare-fun res!234280 () Bool)

(assert (=> b!405653 (=> (not res!234280) (not e!243856))))

(assert (=> b!405653 (= res!234280 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6745))))

(declare-fun b!405654 () Bool)

(declare-fun res!234278 () Bool)

(assert (=> b!405654 (=> (not res!234278) (not e!243856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!405654 (= res!234278 (validMask!0 mask!1025))))

(declare-fun b!405655 () Bool)

(declare-fun res!234275 () Bool)

(assert (=> b!405655 (=> (not res!234275) (not e!243856))))

(declare-fun arrayContainsKey!0 (array!24403 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!405655 (= res!234275 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!405656 () Bool)

(declare-fun e!243854 () Bool)

(declare-fun tp_is_empty!10273 () Bool)

(assert (=> b!405656 (= e!243854 tp_is_empty!10273)))

(declare-fun b!405657 () Bool)

(declare-fun e!243859 () Bool)

(assert (=> b!405657 (= e!243859 tp_is_empty!10273)))

(declare-fun mapNonEmpty!17031 () Bool)

(declare-fun tp!33150 () Bool)

(assert (=> mapNonEmpty!17031 (= mapRes!17031 (and tp!33150 e!243854))))

(declare-fun mapRest!17031 () (Array (_ BitVec 32) ValueCell!4793))

(declare-fun mapKey!17031 () (_ BitVec 32))

(declare-fun mapValue!17031 () ValueCell!4793)

(assert (=> mapNonEmpty!17031 (= (arr!11649 _values!549) (store mapRest!17031 mapKey!17031 mapValue!17031))))

(declare-fun b!405658 () Bool)

(declare-fun res!234274 () Bool)

(assert (=> b!405658 (=> (not res!234274) (not e!243856))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24403 (_ BitVec 32)) Bool)

(assert (=> b!405658 (= res!234274 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!405659 () Bool)

(assert (=> b!405659 (= e!243857 (and e!243859 mapRes!17031))))

(declare-fun condMapEmpty!17031 () Bool)

(declare-fun mapDefault!17031 () ValueCell!4793)

