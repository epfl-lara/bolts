; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33494 () Bool)

(assert start!33494)

(declare-fun b!332158 () Bool)

(declare-fun e!203966 () Bool)

(declare-fun tp_is_empty!6739 () Bool)

(assert (=> b!332158 (= e!203966 tp_is_empty!6739)))

(declare-fun b!332159 () Bool)

(declare-fun e!203968 () Bool)

(assert (=> b!332159 (= e!203968 tp_is_empty!6739)))

(declare-fun b!332160 () Bool)

(declare-fun res!183048 () Bool)

(declare-fun e!203967 () Bool)

(assert (=> b!332160 (=> (not res!183048) (not e!203967))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!9963 0))(
  ( (V!9964 (val!3414 Int)) )
))
(declare-datatypes ((ValueCell!3026 0))(
  ( (ValueCellFull!3026 (v!5569 V!9963)) (EmptyCell!3026) )
))
(declare-datatypes ((array!17071 0))(
  ( (array!17072 (arr!8067 (Array (_ BitVec 32) ValueCell!3026)) (size!8419 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17071)

(declare-datatypes ((array!17073 0))(
  ( (array!17074 (arr!8068 (Array (_ BitVec 32) (_ BitVec 64))) (size!8420 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17073)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!332160 (= res!183048 (and (= (size!8419 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8420 _keys!1895) (size!8419 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!183050 () Bool)

(assert (=> start!33494 (=> (not res!183050) (not e!203967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33494 (= res!183050 (validMask!0 mask!2385))))

(assert (=> start!33494 e!203967))

(assert (=> start!33494 true))

(declare-fun e!203969 () Bool)

(declare-fun array_inv!5998 (array!17071) Bool)

(assert (=> start!33494 (and (array_inv!5998 _values!1525) e!203969)))

(declare-fun array_inv!5999 (array!17073) Bool)

(assert (=> start!33494 (array_inv!5999 _keys!1895)))

(declare-fun mapIsEmpty!11493 () Bool)

(declare-fun mapRes!11493 () Bool)

(assert (=> mapIsEmpty!11493 mapRes!11493))

(declare-fun mapNonEmpty!11493 () Bool)

(declare-fun tp!23868 () Bool)

(assert (=> mapNonEmpty!11493 (= mapRes!11493 (and tp!23868 e!203968))))

(declare-fun mapValue!11493 () ValueCell!3026)

(declare-fun mapRest!11493 () (Array (_ BitVec 32) ValueCell!3026))

(declare-fun mapKey!11493 () (_ BitVec 32))

(assert (=> mapNonEmpty!11493 (= (arr!8067 _values!1525) (store mapRest!11493 mapKey!11493 mapValue!11493))))

(declare-fun b!332161 () Bool)

(assert (=> b!332161 (= e!203967 false)))

(declare-fun lt!158964 () Bool)

(declare-datatypes ((List!4612 0))(
  ( (Nil!4609) (Cons!4608 (h!5464 (_ BitVec 64)) (t!9702 List!4612)) )
))
(declare-fun arrayNoDuplicates!0 (array!17073 (_ BitVec 32) List!4612) Bool)

(assert (=> b!332161 (= lt!158964 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4609))))

(declare-fun b!332162 () Bool)

(declare-fun res!183049 () Bool)

(assert (=> b!332162 (=> (not res!183049) (not e!203967))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17073 (_ BitVec 32)) Bool)

(assert (=> b!332162 (= res!183049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!332163 () Bool)

(assert (=> b!332163 (= e!203969 (and e!203966 mapRes!11493))))

(declare-fun condMapEmpty!11493 () Bool)

(declare-fun mapDefault!11493 () ValueCell!3026)

