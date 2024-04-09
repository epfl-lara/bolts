; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33542 () Bool)

(assert start!33542)

(declare-fun b_free!6823 () Bool)

(declare-fun b_next!6823 () Bool)

(assert (=> start!33542 (= b_free!6823 (not b_next!6823))))

(declare-fun tp!23964 () Bool)

(declare-fun b_and!14015 () Bool)

(assert (=> start!33542 (= tp!23964 b_and!14015)))

(declare-fun b!332622 () Bool)

(declare-fun e!204265 () Bool)

(declare-fun tp_is_empty!6775 () Bool)

(assert (=> b!332622 (= e!204265 tp_is_empty!6775)))

(declare-fun b!332623 () Bool)

(declare-fun e!204266 () Bool)

(assert (=> b!332623 (= e!204266 tp_is_empty!6775)))

(declare-fun res!183332 () Bool)

(declare-fun e!204267 () Bool)

(assert (=> start!33542 (=> (not res!183332) (not e!204267))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33542 (= res!183332 (validMask!0 mask!2385))))

(assert (=> start!33542 e!204267))

(assert (=> start!33542 true))

(assert (=> start!33542 tp_is_empty!6775))

(assert (=> start!33542 tp!23964))

(declare-datatypes ((V!10011 0))(
  ( (V!10012 (val!3432 Int)) )
))
(declare-datatypes ((ValueCell!3044 0))(
  ( (ValueCellFull!3044 (v!5587 V!10011)) (EmptyCell!3044) )
))
(declare-datatypes ((array!17141 0))(
  ( (array!17142 (arr!8101 (Array (_ BitVec 32) ValueCell!3044)) (size!8453 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17141)

(declare-fun e!204264 () Bool)

(declare-fun array_inv!6022 (array!17141) Bool)

(assert (=> start!33542 (and (array_inv!6022 _values!1525) e!204264)))

(declare-datatypes ((array!17143 0))(
  ( (array!17144 (arr!8102 (Array (_ BitVec 32) (_ BitVec 64))) (size!8454 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17143)

(declare-fun array_inv!6023 (array!17143) Bool)

(assert (=> start!33542 (array_inv!6023 _keys!1895)))

(declare-fun b!332624 () Bool)

(declare-fun res!183333 () Bool)

(assert (=> b!332624 (=> (not res!183333) (not e!204267))))

(declare-datatypes ((List!4632 0))(
  ( (Nil!4629) (Cons!4628 (h!5484 (_ BitVec 64)) (t!9722 List!4632)) )
))
(declare-fun arrayNoDuplicates!0 (array!17143 (_ BitVec 32) List!4632) Bool)

(assert (=> b!332624 (= res!183333 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4629))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3143 0))(
  ( (MissingZero!3143 (index!14751 (_ BitVec 32))) (Found!3143 (index!14752 (_ BitVec 32))) (Intermediate!3143 (undefined!3955 Bool) (index!14753 (_ BitVec 32)) (x!33162 (_ BitVec 32))) (Undefined!3143) (MissingVacant!3143 (index!14754 (_ BitVec 32))) )
))
(declare-fun lt!159009 () SeekEntryResult!3143)

(declare-fun b!332625 () Bool)

(assert (=> b!332625 (= e!204267 (and (is-Found!3143 lt!159009) (= (select (arr!8102 _keys!1895) (index!14752 lt!159009)) k!1348) (bvslt (index!14752 lt!159009) #b00000000000000000000000000000000)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17143 (_ BitVec 32)) SeekEntryResult!3143)

(assert (=> b!332625 (= lt!159009 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!11550 () Bool)

(declare-fun mapRes!11550 () Bool)

(assert (=> mapIsEmpty!11550 mapRes!11550))

(declare-fun b!332626 () Bool)

(declare-fun res!183331 () Bool)

(assert (=> b!332626 (=> (not res!183331) (not e!204267))))

(declare-fun zeroValue!1467 () V!10011)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10011)

(declare-datatypes ((tuple2!4994 0))(
  ( (tuple2!4995 (_1!2507 (_ BitVec 64)) (_2!2507 V!10011)) )
))
(declare-datatypes ((List!4633 0))(
  ( (Nil!4630) (Cons!4629 (h!5485 tuple2!4994) (t!9723 List!4633)) )
))
(declare-datatypes ((ListLongMap!3921 0))(
  ( (ListLongMap!3922 (toList!1976 List!4633)) )
))
(declare-fun contains!2013 (ListLongMap!3921 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1499 (array!17143 array!17141 (_ BitVec 32) (_ BitVec 32) V!10011 V!10011 (_ BitVec 32) Int) ListLongMap!3921)

(assert (=> b!332626 (= res!183331 (not (contains!2013 (getCurrentListMap!1499 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!332627 () Bool)

(declare-fun res!183334 () Bool)

(assert (=> b!332627 (=> (not res!183334) (not e!204267))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17143 (_ BitVec 32)) Bool)

(assert (=> b!332627 (= res!183334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!11550 () Bool)

(declare-fun tp!23963 () Bool)

(assert (=> mapNonEmpty!11550 (= mapRes!11550 (and tp!23963 e!204265))))

(declare-fun mapRest!11550 () (Array (_ BitVec 32) ValueCell!3044))

(declare-fun mapKey!11550 () (_ BitVec 32))

(declare-fun mapValue!11550 () ValueCell!3044)

(assert (=> mapNonEmpty!11550 (= (arr!8101 _values!1525) (store mapRest!11550 mapKey!11550 mapValue!11550))))

(declare-fun b!332628 () Bool)

(declare-fun res!183330 () Bool)

(assert (=> b!332628 (=> (not res!183330) (not e!204267))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!332628 (= res!183330 (validKeyInArray!0 k!1348))))

(declare-fun b!332629 () Bool)

(declare-fun res!183335 () Bool)

(assert (=> b!332629 (=> (not res!183335) (not e!204267))))

(assert (=> b!332629 (= res!183335 (and (= (size!8453 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8454 _keys!1895) (size!8453 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!332630 () Bool)

(assert (=> b!332630 (= e!204264 (and e!204266 mapRes!11550))))

(declare-fun condMapEmpty!11550 () Bool)

(declare-fun mapDefault!11550 () ValueCell!3044)

