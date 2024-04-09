; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33464 () Bool)

(assert start!33464)

(declare-fun b!331889 () Bool)

(declare-fun e!203742 () Bool)

(declare-fun tp_is_empty!6709 () Bool)

(assert (=> b!331889 (= e!203742 tp_is_empty!6709)))

(declare-fun b!331890 () Bool)

(declare-fun e!203741 () Bool)

(assert (=> b!331890 (= e!203741 false)))

(declare-fun lt!158919 () Bool)

(declare-datatypes ((array!17015 0))(
  ( (array!17016 (arr!8039 (Array (_ BitVec 32) (_ BitVec 64))) (size!8391 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17015)

(declare-datatypes ((List!4604 0))(
  ( (Nil!4601) (Cons!4600 (h!5456 (_ BitVec 64)) (t!9694 List!4604)) )
))
(declare-fun arrayNoDuplicates!0 (array!17015 (_ BitVec 32) List!4604) Bool)

(assert (=> b!331890 (= lt!158919 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4601))))

(declare-fun b!331891 () Bool)

(declare-fun res!182914 () Bool)

(assert (=> b!331891 (=> (not res!182914) (not e!203741))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!9923 0))(
  ( (V!9924 (val!3399 Int)) )
))
(declare-datatypes ((ValueCell!3011 0))(
  ( (ValueCellFull!3011 (v!5554 V!9923)) (EmptyCell!3011) )
))
(declare-datatypes ((array!17017 0))(
  ( (array!17018 (arr!8040 (Array (_ BitVec 32) ValueCell!3011)) (size!8392 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17017)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!331891 (= res!182914 (and (= (size!8392 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8391 _keys!1895) (size!8392 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!331888 () Bool)

(declare-fun e!203743 () Bool)

(declare-fun mapRes!11448 () Bool)

(assert (=> b!331888 (= e!203743 (and e!203742 mapRes!11448))))

(declare-fun condMapEmpty!11448 () Bool)

(declare-fun mapDefault!11448 () ValueCell!3011)

