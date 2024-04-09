; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33456 () Bool)

(assert start!33456)

(declare-fun b!331816 () Bool)

(declare-fun e!203682 () Bool)

(assert (=> b!331816 (= e!203682 false)))

(declare-fun lt!158907 () Bool)

(declare-datatypes ((array!16999 0))(
  ( (array!17000 (arr!8031 (Array (_ BitVec 32) (_ BitVec 64))) (size!8383 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!16999)

(declare-datatypes ((List!4601 0))(
  ( (Nil!4598) (Cons!4597 (h!5453 (_ BitVec 64)) (t!9691 List!4601)) )
))
(declare-fun arrayNoDuplicates!0 (array!16999 (_ BitVec 32) List!4601) Bool)

(assert (=> b!331816 (= lt!158907 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4598))))

(declare-fun res!182877 () Bool)

(assert (=> start!33456 (=> (not res!182877) (not e!203682))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33456 (= res!182877 (validMask!0 mask!2385))))

(assert (=> start!33456 e!203682))

(assert (=> start!33456 true))

(declare-datatypes ((V!9911 0))(
  ( (V!9912 (val!3395 Int)) )
))
(declare-datatypes ((ValueCell!3007 0))(
  ( (ValueCellFull!3007 (v!5550 V!9911)) (EmptyCell!3007) )
))
(declare-datatypes ((array!17001 0))(
  ( (array!17002 (arr!8032 (Array (_ BitVec 32) ValueCell!3007)) (size!8384 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17001)

(declare-fun e!203685 () Bool)

(declare-fun array_inv!5970 (array!17001) Bool)

(assert (=> start!33456 (and (array_inv!5970 _values!1525) e!203685)))

(declare-fun array_inv!5971 (array!16999) Bool)

(assert (=> start!33456 (array_inv!5971 _keys!1895)))

(declare-fun b!331817 () Bool)

(declare-fun e!203683 () Bool)

(declare-fun tp_is_empty!6701 () Bool)

(assert (=> b!331817 (= e!203683 tp_is_empty!6701)))

(declare-fun b!331818 () Bool)

(declare-fun res!182879 () Bool)

(assert (=> b!331818 (=> (not res!182879) (not e!203682))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16999 (_ BitVec 32)) Bool)

(assert (=> b!331818 (= res!182879 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!11436 () Bool)

(declare-fun mapRes!11436 () Bool)

(assert (=> mapIsEmpty!11436 mapRes!11436))

(declare-fun b!331819 () Bool)

(declare-fun e!203684 () Bool)

(assert (=> b!331819 (= e!203684 tp_is_empty!6701)))

(declare-fun b!331820 () Bool)

(declare-fun res!182878 () Bool)

(assert (=> b!331820 (=> (not res!182878) (not e!203682))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!331820 (= res!182878 (and (= (size!8384 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8383 _keys!1895) (size!8384 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!11436 () Bool)

(declare-fun tp!23811 () Bool)

(assert (=> mapNonEmpty!11436 (= mapRes!11436 (and tp!23811 e!203684))))

(declare-fun mapRest!11436 () (Array (_ BitVec 32) ValueCell!3007))

(declare-fun mapValue!11436 () ValueCell!3007)

(declare-fun mapKey!11436 () (_ BitVec 32))

(assert (=> mapNonEmpty!11436 (= (arr!8032 _values!1525) (store mapRest!11436 mapKey!11436 mapValue!11436))))

(declare-fun b!331821 () Bool)

(assert (=> b!331821 (= e!203685 (and e!203683 mapRes!11436))))

(declare-fun condMapEmpty!11436 () Bool)

(declare-fun mapDefault!11436 () ValueCell!3007)

