; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38988 () Bool)

(assert start!38988)

(declare-fun mapIsEmpty!17220 () Bool)

(declare-fun mapRes!17220 () Bool)

(assert (=> mapIsEmpty!17220 mapRes!17220))

(declare-fun b!408108 () Bool)

(declare-fun e!244988 () Bool)

(declare-fun e!244993 () Bool)

(assert (=> b!408108 (= e!244988 e!244993)))

(declare-fun res!236168 () Bool)

(assert (=> b!408108 (=> (not res!236168) (not e!244993))))

(declare-datatypes ((array!24653 0))(
  ( (array!24654 (arr!11773 (Array (_ BitVec 32) (_ BitVec 64))) (size!12125 (_ BitVec 32))) )
))
(declare-fun lt!188738 () array!24653)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24653 (_ BitVec 32)) Bool)

(assert (=> b!408108 (= res!236168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188738 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun _keys!709 () array!24653)

(assert (=> b!408108 (= lt!188738 (array!24654 (store (arr!11773 _keys!709) i!563 k!794) (size!12125 _keys!709)))))

(declare-fun b!408109 () Bool)

(declare-fun e!244990 () Bool)

(declare-fun tp_is_empty!10399 () Bool)

(assert (=> b!408109 (= e!244990 tp_is_empty!10399)))

(declare-fun b!408110 () Bool)

(assert (=> b!408110 (= e!244993 false)))

(declare-fun lt!188739 () Bool)

(declare-datatypes ((List!6803 0))(
  ( (Nil!6800) (Cons!6799 (h!7655 (_ BitVec 64)) (t!11985 List!6803)) )
))
(declare-fun arrayNoDuplicates!0 (array!24653 (_ BitVec 32) List!6803) Bool)

(assert (=> b!408110 (= lt!188739 (arrayNoDuplicates!0 lt!188738 #b00000000000000000000000000000000 Nil!6800))))

(declare-fun b!408111 () Bool)

(declare-fun e!244989 () Bool)

(assert (=> b!408111 (= e!244989 tp_is_empty!10399)))

(declare-fun b!408112 () Bool)

(declare-fun res!236164 () Bool)

(assert (=> b!408112 (=> (not res!236164) (not e!244988))))

(assert (=> b!408112 (= res!236164 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6800))))

(declare-fun b!408113 () Bool)

(declare-fun e!244992 () Bool)

(assert (=> b!408113 (= e!244992 (and e!244989 mapRes!17220))))

(declare-fun condMapEmpty!17220 () Bool)

(declare-datatypes ((V!14971 0))(
  ( (V!14972 (val!5244 Int)) )
))
(declare-datatypes ((ValueCell!4856 0))(
  ( (ValueCellFull!4856 (v!7487 V!14971)) (EmptyCell!4856) )
))
(declare-datatypes ((array!24655 0))(
  ( (array!24656 (arr!11774 (Array (_ BitVec 32) ValueCell!4856)) (size!12126 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24655)

(declare-fun mapDefault!17220 () ValueCell!4856)

