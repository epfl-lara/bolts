; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38928 () Bool)

(assert start!38928)

(declare-fun mapNonEmpty!17130 () Bool)

(declare-fun mapRes!17130 () Bool)

(declare-fun tp!33249 () Bool)

(declare-fun e!244449 () Bool)

(assert (=> mapNonEmpty!17130 (= mapRes!17130 (and tp!33249 e!244449))))

(declare-datatypes ((V!14891 0))(
  ( (V!14892 (val!5214 Int)) )
))
(declare-datatypes ((ValueCell!4826 0))(
  ( (ValueCellFull!4826 (v!7457 V!14891)) (EmptyCell!4826) )
))
(declare-fun mapRest!17130 () (Array (_ BitVec 32) ValueCell!4826))

(declare-fun mapValue!17130 () ValueCell!4826)

(declare-datatypes ((array!24533 0))(
  ( (array!24534 (arr!11713 (Array (_ BitVec 32) ValueCell!4826)) (size!12065 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24533)

(declare-fun mapKey!17130 () (_ BitVec 32))

(assert (=> mapNonEmpty!17130 (= (arr!11713 _values!549) (store mapRest!17130 mapKey!17130 mapValue!17130))))

(declare-fun b!406937 () Bool)

(declare-fun e!244452 () Bool)

(declare-fun e!244448 () Bool)

(assert (=> b!406937 (= e!244452 e!244448)))

(declare-fun res!235270 () Bool)

(assert (=> b!406937 (=> (not res!235270) (not e!244448))))

(declare-datatypes ((array!24535 0))(
  ( (array!24536 (arr!11714 (Array (_ BitVec 32) (_ BitVec 64))) (size!12066 (_ BitVec 32))) )
))
(declare-fun lt!188558 () array!24535)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24535 (_ BitVec 32)) Bool)

(assert (=> b!406937 (= res!235270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188558 mask!1025))))

(declare-fun _keys!709 () array!24535)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!406937 (= lt!188558 (array!24536 (store (arr!11714 _keys!709) i!563 k!794) (size!12066 _keys!709)))))

(declare-fun b!406938 () Bool)

(declare-fun res!235267 () Bool)

(assert (=> b!406938 (=> (not res!235267) (not e!244452))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!406938 (= res!235267 (validKeyInArray!0 k!794))))

(declare-fun b!406939 () Bool)

(declare-fun e!244453 () Bool)

(declare-fun tp_is_empty!10339 () Bool)

(assert (=> b!406939 (= e!244453 tp_is_empty!10339)))

(declare-fun b!406940 () Bool)

(assert (=> b!406940 (= e!244449 tp_is_empty!10339)))

(declare-fun res!235272 () Bool)

(assert (=> start!38928 (=> (not res!235272) (not e!244452))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38928 (= res!235272 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12066 _keys!709))))))

(assert (=> start!38928 e!244452))

(assert (=> start!38928 true))

(declare-fun e!244451 () Bool)

(declare-fun array_inv!8556 (array!24533) Bool)

(assert (=> start!38928 (and (array_inv!8556 _values!549) e!244451)))

(declare-fun array_inv!8557 (array!24535) Bool)

(assert (=> start!38928 (array_inv!8557 _keys!709)))

(declare-fun mapIsEmpty!17130 () Bool)

(assert (=> mapIsEmpty!17130 mapRes!17130))

(declare-fun b!406941 () Bool)

(declare-fun res!235266 () Bool)

(assert (=> b!406941 (=> (not res!235266) (not e!244452))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!406941 (= res!235266 (and (= (size!12065 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12066 _keys!709) (size!12065 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!406942 () Bool)

(declare-fun res!235263 () Bool)

(assert (=> b!406942 (=> (not res!235263) (not e!244452))))

(declare-datatypes ((List!6776 0))(
  ( (Nil!6773) (Cons!6772 (h!7628 (_ BitVec 64)) (t!11958 List!6776)) )
))
(declare-fun arrayNoDuplicates!0 (array!24535 (_ BitVec 32) List!6776) Bool)

(assert (=> b!406942 (= res!235263 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6773))))

(declare-fun b!406943 () Bool)

(assert (=> b!406943 (= e!244448 false)))

(declare-fun lt!188559 () Bool)

(assert (=> b!406943 (= lt!188559 (arrayNoDuplicates!0 lt!188558 #b00000000000000000000000000000000 Nil!6773))))

(declare-fun b!406944 () Bool)

(declare-fun res!235264 () Bool)

(assert (=> b!406944 (=> (not res!235264) (not e!244452))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!406944 (= res!235264 (validMask!0 mask!1025))))

(declare-fun b!406945 () Bool)

(assert (=> b!406945 (= e!244451 (and e!244453 mapRes!17130))))

(declare-fun condMapEmpty!17130 () Bool)

(declare-fun mapDefault!17130 () ValueCell!4826)

