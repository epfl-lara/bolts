; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33660 () Bool)

(assert start!33660)

(declare-fun b_free!6887 () Bool)

(declare-fun b_next!6887 () Bool)

(assert (=> start!33660 (= b_free!6887 (not b_next!6887))))

(declare-fun tp!24164 () Bool)

(declare-fun b_and!14085 () Bool)

(assert (=> start!33660 (= tp!24164 b_and!14085)))

(declare-fun b!333937 () Bool)

(declare-fun e!205026 () Bool)

(declare-fun tp_is_empty!6839 () Bool)

(assert (=> b!333937 (= e!205026 tp_is_empty!6839)))

(declare-fun b!333938 () Bool)

(declare-fun res!184118 () Bool)

(declare-fun e!205023 () Bool)

(assert (=> b!333938 (=> (not res!184118) (not e!205023))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10095 0))(
  ( (V!10096 (val!3464 Int)) )
))
(declare-datatypes ((ValueCell!3076 0))(
  ( (ValueCellFull!3076 (v!5622 V!10095)) (EmptyCell!3076) )
))
(declare-datatypes ((array!17269 0))(
  ( (array!17270 (arr!8162 (Array (_ BitVec 32) ValueCell!3076)) (size!8514 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17269)

(declare-datatypes ((array!17271 0))(
  ( (array!17272 (arr!8163 (Array (_ BitVec 32) (_ BitVec 64))) (size!8515 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17271)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!333938 (= res!184118 (and (= (size!8514 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8515 _keys!1895) (size!8514 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!333939 () Bool)

(declare-fun res!184117 () Bool)

(assert (=> b!333939 (=> (not res!184117) (not e!205023))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17271 (_ BitVec 32)) Bool)

(assert (=> b!333939 (= res!184117 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!333940 () Bool)

(declare-fun res!184113 () Bool)

(assert (=> b!333940 (=> (not res!184113) (not e!205023))))

(declare-datatypes ((List!4676 0))(
  ( (Nil!4673) (Cons!4672 (h!5528 (_ BitVec 64)) (t!9772 List!4676)) )
))
(declare-fun arrayNoDuplicates!0 (array!17271 (_ BitVec 32) List!4676) Bool)

(assert (=> b!333940 (= res!184113 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4673))))

(declare-fun mapNonEmpty!11655 () Bool)

(declare-fun mapRes!11655 () Bool)

(declare-fun tp!24165 () Bool)

(assert (=> mapNonEmpty!11655 (= mapRes!11655 (and tp!24165 e!205026))))

(declare-fun mapRest!11655 () (Array (_ BitVec 32) ValueCell!3076))

(declare-fun mapKey!11655 () (_ BitVec 32))

(declare-fun mapValue!11655 () ValueCell!3076)

(assert (=> mapNonEmpty!11655 (= (arr!8162 _values!1525) (store mapRest!11655 mapKey!11655 mapValue!11655))))

(declare-fun b!333942 () Bool)

(declare-fun e!205025 () Bool)

(declare-fun e!205024 () Bool)

(assert (=> b!333942 (= e!205025 (and e!205024 mapRes!11655))))

(declare-fun condMapEmpty!11655 () Bool)

(declare-fun mapDefault!11655 () ValueCell!3076)

