; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38842 () Bool)

(assert start!38842)

(declare-fun b!405260 () Bool)

(declare-fun res!233979 () Bool)

(declare-fun e!243678 () Bool)

(assert (=> b!405260 (=> (not res!233979) (not e!243678))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!405260 (= res!233979 (validKeyInArray!0 k!794))))

(declare-fun b!405261 () Bool)

(declare-fun res!233974 () Bool)

(assert (=> b!405261 (=> (not res!233974) (not e!243678))))

(declare-datatypes ((array!24365 0))(
  ( (array!24366 (arr!11629 (Array (_ BitVec 32) (_ BitVec 64))) (size!11981 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24365)

(declare-datatypes ((List!6741 0))(
  ( (Nil!6738) (Cons!6737 (h!7593 (_ BitVec 64)) (t!11923 List!6741)) )
))
(declare-fun arrayNoDuplicates!0 (array!24365 (_ BitVec 32) List!6741) Bool)

(assert (=> b!405261 (= res!233974 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6738))))

(declare-fun b!405262 () Bool)

(declare-fun e!243679 () Bool)

(declare-fun tp_is_empty!10253 () Bool)

(assert (=> b!405262 (= e!243679 tp_is_empty!10253)))

(declare-fun mapNonEmpty!17001 () Bool)

(declare-fun mapRes!17001 () Bool)

(declare-fun tp!33120 () Bool)

(assert (=> mapNonEmpty!17001 (= mapRes!17001 (and tp!33120 e!243679))))

(declare-fun mapKey!17001 () (_ BitVec 32))

(declare-datatypes ((V!14775 0))(
  ( (V!14776 (val!5171 Int)) )
))
(declare-datatypes ((ValueCell!4783 0))(
  ( (ValueCellFull!4783 (v!7414 V!14775)) (EmptyCell!4783) )
))
(declare-datatypes ((array!24367 0))(
  ( (array!24368 (arr!11630 (Array (_ BitVec 32) ValueCell!4783)) (size!11982 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24367)

(declare-fun mapValue!17001 () ValueCell!4783)

(declare-fun mapRest!17001 () (Array (_ BitVec 32) ValueCell!4783))

(assert (=> mapNonEmpty!17001 (= (arr!11630 _values!549) (store mapRest!17001 mapKey!17001 mapValue!17001))))

(declare-fun b!405263 () Bool)

(declare-fun e!243675 () Bool)

(assert (=> b!405263 (= e!243675 tp_is_empty!10253)))

(declare-fun b!405264 () Bool)

(declare-fun res!233977 () Bool)

(assert (=> b!405264 (=> (not res!233977) (not e!243678))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!405264 (= res!233977 (or (= (select (arr!11629 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11629 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!405265 () Bool)

(declare-fun e!243674 () Bool)

(assert (=> b!405265 (= e!243674 (and e!243675 mapRes!17001))))

(declare-fun condMapEmpty!17001 () Bool)

(declare-fun mapDefault!17001 () ValueCell!4783)

