; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33566 () Bool)

(assert start!33566)

(declare-fun b_free!6829 () Bool)

(declare-fun b_next!6829 () Bool)

(assert (=> start!33566 (= b_free!6829 (not b_next!6829))))

(declare-fun tp!23984 () Bool)

(declare-fun b_and!14023 () Bool)

(assert (=> start!33566 (= tp!23984 b_and!14023)))

(declare-fun b!332830 () Bool)

(declare-fun res!183434 () Bool)

(declare-fun e!204389 () Bool)

(assert (=> b!332830 (=> (not res!183434) (not e!204389))))

(declare-datatypes ((array!17155 0))(
  ( (array!17156 (arr!8107 (Array (_ BitVec 32) (_ BitVec 64))) (size!8459 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17155)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17155 (_ BitVec 32)) Bool)

(assert (=> b!332830 (= res!183434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!332831 () Bool)

(declare-fun res!183433 () Bool)

(assert (=> b!332831 (=> (not res!183433) (not e!204389))))

(declare-datatypes ((V!10019 0))(
  ( (V!10020 (val!3435 Int)) )
))
(declare-datatypes ((ValueCell!3047 0))(
  ( (ValueCellFull!3047 (v!5591 V!10019)) (EmptyCell!3047) )
))
(declare-datatypes ((array!17157 0))(
  ( (array!17158 (arr!8108 (Array (_ BitVec 32) ValueCell!3047)) (size!8460 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17157)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!332831 (= res!183433 (and (= (size!8460 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8459 _keys!1895) (size!8460 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!11562 () Bool)

(declare-fun mapRes!11562 () Bool)

(assert (=> mapIsEmpty!11562 mapRes!11562))

(declare-fun b!332832 () Bool)

(declare-fun res!183431 () Bool)

(assert (=> b!332832 (=> (not res!183431) (not e!204389))))

(declare-datatypes ((List!4638 0))(
  ( (Nil!4635) (Cons!4634 (h!5490 (_ BitVec 64)) (t!9730 List!4638)) )
))
(declare-fun arrayNoDuplicates!0 (array!17155 (_ BitVec 32) List!4638) Bool)

(assert (=> b!332832 (= res!183431 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4635))))

(declare-fun b!332833 () Bool)

(declare-fun e!204391 () Bool)

(declare-fun tp_is_empty!6781 () Bool)

(assert (=> b!332833 (= e!204391 tp_is_empty!6781)))

(declare-fun b!332834 () Bool)

(declare-fun res!183430 () Bool)

(assert (=> b!332834 (=> (not res!183430) (not e!204389))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!332834 (= res!183430 (validKeyInArray!0 k!1348))))

(declare-fun b!332835 () Bool)

(declare-datatypes ((SeekEntryResult!3146 0))(
  ( (MissingZero!3146 (index!14763 (_ BitVec 32))) (Found!3146 (index!14764 (_ BitVec 32))) (Intermediate!3146 (undefined!3958 Bool) (index!14765 (_ BitVec 32)) (x!33183 (_ BitVec 32))) (Undefined!3146) (MissingVacant!3146 (index!14766 (_ BitVec 32))) )
))
(declare-fun lt!159114 () SeekEntryResult!3146)

(assert (=> b!332835 (= e!204389 (and (is-Found!3146 lt!159114) (= (select (arr!8107 _keys!1895) (index!14764 lt!159114)) k!1348) (bvsge (index!14764 lt!159114) #b00000000000000000000000000000000) (bvsge (index!14764 lt!159114) (size!8459 _keys!1895))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17155 (_ BitVec 32)) SeekEntryResult!3146)

(assert (=> b!332835 (= lt!159114 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun res!183429 () Bool)

(assert (=> start!33566 (=> (not res!183429) (not e!204389))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33566 (= res!183429 (validMask!0 mask!2385))))

(assert (=> start!33566 e!204389))

(assert (=> start!33566 true))

(assert (=> start!33566 tp_is_empty!6781))

(assert (=> start!33566 tp!23984))

(declare-fun e!204390 () Bool)

(declare-fun array_inv!6028 (array!17157) Bool)

(assert (=> start!33566 (and (array_inv!6028 _values!1525) e!204390)))

(declare-fun array_inv!6029 (array!17155) Bool)

(assert (=> start!33566 (array_inv!6029 _keys!1895)))

(declare-fun mapNonEmpty!11562 () Bool)

(declare-fun tp!23985 () Bool)

(assert (=> mapNonEmpty!11562 (= mapRes!11562 (and tp!23985 e!204391))))

(declare-fun mapKey!11562 () (_ BitVec 32))

(declare-fun mapValue!11562 () ValueCell!3047)

(declare-fun mapRest!11562 () (Array (_ BitVec 32) ValueCell!3047))

(assert (=> mapNonEmpty!11562 (= (arr!8108 _values!1525) (store mapRest!11562 mapKey!11562 mapValue!11562))))

(declare-fun b!332836 () Bool)

(declare-fun e!204393 () Bool)

(assert (=> b!332836 (= e!204393 tp_is_empty!6781)))

(declare-fun b!332837 () Bool)

(assert (=> b!332837 (= e!204390 (and e!204393 mapRes!11562))))

(declare-fun condMapEmpty!11562 () Bool)

(declare-fun mapDefault!11562 () ValueCell!3047)

