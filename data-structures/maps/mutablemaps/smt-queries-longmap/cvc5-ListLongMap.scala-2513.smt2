; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38904 () Bool)

(assert start!38904)

(declare-fun b!406469 () Bool)

(declare-fun res!234911 () Bool)

(declare-fun e!244235 () Bool)

(assert (=> b!406469 (=> (not res!234911) (not e!244235))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!406469 (= res!234911 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!17094 () Bool)

(declare-fun mapRes!17094 () Bool)

(declare-fun tp!33213 () Bool)

(declare-fun e!244233 () Bool)

(assert (=> mapNonEmpty!17094 (= mapRes!17094 (and tp!33213 e!244233))))

(declare-datatypes ((V!14859 0))(
  ( (V!14860 (val!5202 Int)) )
))
(declare-datatypes ((ValueCell!4814 0))(
  ( (ValueCellFull!4814 (v!7445 V!14859)) (EmptyCell!4814) )
))
(declare-datatypes ((array!24487 0))(
  ( (array!24488 (arr!11690 (Array (_ BitVec 32) ValueCell!4814)) (size!12042 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24487)

(declare-fun mapKey!17094 () (_ BitVec 32))

(declare-fun mapRest!17094 () (Array (_ BitVec 32) ValueCell!4814))

(declare-fun mapValue!17094 () ValueCell!4814)

(assert (=> mapNonEmpty!17094 (= (arr!11690 _values!549) (store mapRest!17094 mapKey!17094 mapValue!17094))))

(declare-fun res!234912 () Bool)

(assert (=> start!38904 (=> (not res!234912) (not e!244235))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24489 0))(
  ( (array!24490 (arr!11691 (Array (_ BitVec 32) (_ BitVec 64))) (size!12043 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24489)

(assert (=> start!38904 (= res!234912 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12043 _keys!709))))))

(assert (=> start!38904 e!244235))

(assert (=> start!38904 true))

(declare-fun e!244234 () Bool)

(declare-fun array_inv!8540 (array!24487) Bool)

(assert (=> start!38904 (and (array_inv!8540 _values!549) e!244234)))

(declare-fun array_inv!8541 (array!24489) Bool)

(assert (=> start!38904 (array_inv!8541 _keys!709)))

(declare-fun mapIsEmpty!17094 () Bool)

(assert (=> mapIsEmpty!17094 mapRes!17094))

(declare-fun b!406470 () Bool)

(declare-fun res!234906 () Bool)

(assert (=> b!406470 (=> (not res!234906) (not e!244235))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!406470 (= res!234906 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12043 _keys!709))))))

(declare-fun b!406471 () Bool)

(declare-fun res!234910 () Bool)

(assert (=> b!406471 (=> (not res!234910) (not e!244235))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24489 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!406471 (= res!234910 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!406472 () Bool)

(declare-fun res!234905 () Bool)

(assert (=> b!406472 (=> (not res!234905) (not e!244235))))

(assert (=> b!406472 (= res!234905 (or (= (select (arr!11691 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11691 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!406473 () Bool)

(declare-fun tp_is_empty!10315 () Bool)

(assert (=> b!406473 (= e!244233 tp_is_empty!10315)))

(declare-fun b!406474 () Bool)

(declare-fun res!234904 () Bool)

(assert (=> b!406474 (=> (not res!234904) (not e!244235))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24489 (_ BitVec 32)) Bool)

(assert (=> b!406474 (= res!234904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!406475 () Bool)

(declare-fun e!244237 () Bool)

(assert (=> b!406475 (= e!244237 false)))

(declare-fun lt!188486 () Bool)

(declare-fun lt!188487 () array!24489)

(declare-datatypes ((List!6765 0))(
  ( (Nil!6762) (Cons!6761 (h!7617 (_ BitVec 64)) (t!11947 List!6765)) )
))
(declare-fun arrayNoDuplicates!0 (array!24489 (_ BitVec 32) List!6765) Bool)

(assert (=> b!406475 (= lt!188486 (arrayNoDuplicates!0 lt!188487 #b00000000000000000000000000000000 Nil!6762))))

(declare-fun b!406476 () Bool)

(declare-fun res!234908 () Bool)

(assert (=> b!406476 (=> (not res!234908) (not e!244235))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!406476 (= res!234908 (validKeyInArray!0 k!794))))

(declare-fun b!406477 () Bool)

(declare-fun e!244236 () Bool)

(assert (=> b!406477 (= e!244236 tp_is_empty!10315)))

(declare-fun b!406478 () Bool)

(assert (=> b!406478 (= e!244234 (and e!244236 mapRes!17094))))

(declare-fun condMapEmpty!17094 () Bool)

(declare-fun mapDefault!17094 () ValueCell!4814)

