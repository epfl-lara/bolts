; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33474 () Bool)

(assert start!33474)

(declare-fun mapNonEmpty!11463 () Bool)

(declare-fun mapRes!11463 () Bool)

(declare-fun tp!23838 () Bool)

(declare-fun e!203819 () Bool)

(assert (=> mapNonEmpty!11463 (= mapRes!11463 (and tp!23838 e!203819))))

(declare-datatypes ((V!9935 0))(
  ( (V!9936 (val!3404 Int)) )
))
(declare-datatypes ((ValueCell!3016 0))(
  ( (ValueCellFull!3016 (v!5559 V!9935)) (EmptyCell!3016) )
))
(declare-datatypes ((array!17035 0))(
  ( (array!17036 (arr!8049 (Array (_ BitVec 32) ValueCell!3016)) (size!8401 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17035)

(declare-fun mapKey!11463 () (_ BitVec 32))

(declare-fun mapRest!11463 () (Array (_ BitVec 32) ValueCell!3016))

(declare-fun mapValue!11463 () ValueCell!3016)

(assert (=> mapNonEmpty!11463 (= (arr!8049 _values!1525) (store mapRest!11463 mapKey!11463 mapValue!11463))))

(declare-fun b!331978 () Bool)

(declare-fun tp_is_empty!6719 () Bool)

(assert (=> b!331978 (= e!203819 tp_is_empty!6719)))

(declare-fun b!331979 () Bool)

(declare-fun e!203820 () Bool)

(assert (=> b!331979 (= e!203820 false)))

(declare-fun lt!158934 () Bool)

(declare-datatypes ((array!17037 0))(
  ( (array!17038 (arr!8050 (Array (_ BitVec 32) (_ BitVec 64))) (size!8402 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17037)

(declare-datatypes ((List!4607 0))(
  ( (Nil!4604) (Cons!4603 (h!5459 (_ BitVec 64)) (t!9697 List!4607)) )
))
(declare-fun arrayNoDuplicates!0 (array!17037 (_ BitVec 32) List!4607) Bool)

(assert (=> b!331979 (= lt!158934 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4604))))

(declare-fun b!331980 () Bool)

(declare-fun res!182958 () Bool)

(assert (=> b!331980 (=> (not res!182958) (not e!203820))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17037 (_ BitVec 32)) Bool)

(assert (=> b!331980 (= res!182958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!331981 () Bool)

(declare-fun res!182959 () Bool)

(assert (=> b!331981 (=> (not res!182959) (not e!203820))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!331981 (= res!182959 (and (= (size!8401 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8402 _keys!1895) (size!8401 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!331983 () Bool)

(declare-fun e!203818 () Bool)

(assert (=> b!331983 (= e!203818 tp_is_empty!6719)))

(declare-fun mapIsEmpty!11463 () Bool)

(assert (=> mapIsEmpty!11463 mapRes!11463))

(declare-fun res!182960 () Bool)

(assert (=> start!33474 (=> (not res!182960) (not e!203820))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33474 (= res!182960 (validMask!0 mask!2385))))

(assert (=> start!33474 e!203820))

(assert (=> start!33474 true))

(declare-fun e!203816 () Bool)

(declare-fun array_inv!5984 (array!17035) Bool)

(assert (=> start!33474 (and (array_inv!5984 _values!1525) e!203816)))

(declare-fun array_inv!5985 (array!17037) Bool)

(assert (=> start!33474 (array_inv!5985 _keys!1895)))

(declare-fun b!331982 () Bool)

(assert (=> b!331982 (= e!203816 (and e!203818 mapRes!11463))))

(declare-fun condMapEmpty!11463 () Bool)

(declare-fun mapDefault!11463 () ValueCell!3016)

