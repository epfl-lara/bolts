; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39186 () Bool)

(assert start!39186)

(declare-fun b_free!9445 () Bool)

(declare-fun b_next!9445 () Bool)

(assert (=> start!39186 (= b_free!9445 (not b_next!9445))))

(declare-fun tp!33863 () Bool)

(declare-fun b_and!16849 () Bool)

(assert (=> start!39186 (= tp!33863 b_and!16849)))

(declare-fun mapNonEmpty!17517 () Bool)

(declare-fun mapRes!17517 () Bool)

(declare-fun tp!33864 () Bool)

(declare-fun e!246775 () Bool)

(assert (=> mapNonEmpty!17517 (= mapRes!17517 (and tp!33864 e!246775))))

(declare-datatypes ((V!15235 0))(
  ( (V!15236 (val!5343 Int)) )
))
(declare-datatypes ((ValueCell!4955 0))(
  ( (ValueCellFull!4955 (v!7586 V!15235)) (EmptyCell!4955) )
))
(declare-datatypes ((array!25033 0))(
  ( (array!25034 (arr!11963 (Array (_ BitVec 32) ValueCell!4955)) (size!12315 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25033)

(declare-fun mapRest!17517 () (Array (_ BitVec 32) ValueCell!4955))

(declare-fun mapKey!17517 () (_ BitVec 32))

(declare-fun mapValue!17517 () ValueCell!4955)

(assert (=> mapNonEmpty!17517 (= (arr!11963 _values!549) (store mapRest!17517 mapKey!17517 mapValue!17517))))

(declare-fun b!412422 () Bool)

(declare-fun res!239592 () Bool)

(declare-fun e!246770 () Bool)

(assert (=> b!412422 (=> (not res!239592) (not e!246770))))

(declare-datatypes ((array!25035 0))(
  ( (array!25036 (arr!11964 (Array (_ BitVec 32) (_ BitVec 64))) (size!12316 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25035)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!412422 (= res!239592 (or (= (select (arr!11964 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11964 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!412423 () Bool)

(declare-fun res!239590 () Bool)

(declare-fun e!246774 () Bool)

(assert (=> b!412423 (=> (not res!239590) (not e!246774))))

(declare-fun lt!189478 () array!25035)

(declare-datatypes ((List!6918 0))(
  ( (Nil!6915) (Cons!6914 (h!7770 (_ BitVec 64)) (t!12100 List!6918)) )
))
(declare-fun arrayNoDuplicates!0 (array!25035 (_ BitVec 32) List!6918) Bool)

(assert (=> b!412423 (= res!239590 (arrayNoDuplicates!0 lt!189478 #b00000000000000000000000000000000 Nil!6915))))

(declare-fun b!412424 () Bool)

(declare-fun res!239587 () Bool)

(assert (=> b!412424 (=> (not res!239587) (not e!246770))))

(assert (=> b!412424 (= res!239587 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6915))))

(declare-fun b!412426 () Bool)

(declare-fun res!239598 () Bool)

(assert (=> b!412426 (=> (not res!239598) (not e!246774))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!412426 (= res!239598 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!17517 () Bool)

(assert (=> mapIsEmpty!17517 mapRes!17517))

(declare-fun b!412427 () Bool)

(declare-fun tp_is_empty!10597 () Bool)

(assert (=> b!412427 (= e!246775 tp_is_empty!10597)))

(declare-fun b!412428 () Bool)

(declare-fun e!246772 () Bool)

(declare-fun e!246771 () Bool)

(assert (=> b!412428 (= e!246772 (and e!246771 mapRes!17517))))

(declare-fun condMapEmpty!17517 () Bool)

(declare-fun mapDefault!17517 () ValueCell!4955)

