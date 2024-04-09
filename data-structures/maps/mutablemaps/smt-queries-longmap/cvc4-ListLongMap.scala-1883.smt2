; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33744 () Bool)

(assert start!33744)

(declare-fun b_free!6971 () Bool)

(declare-fun b_next!6971 () Bool)

(assert (=> start!33744 (= b_free!6971 (not b_next!6971))))

(declare-fun tp!24416 () Bool)

(declare-fun b_and!14169 () Bool)

(assert (=> start!33744 (= tp!24416 b_and!14169)))

(declare-fun b!335323 () Bool)

(declare-fun e!205851 () Bool)

(declare-fun tp_is_empty!6923 () Bool)

(assert (=> b!335323 (= e!205851 tp_is_empty!6923)))

(declare-fun b!335324 () Bool)

(declare-fun res!185124 () Bool)

(declare-fun e!205850 () Bool)

(assert (=> b!335324 (=> (not res!185124) (not e!205850))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!335324 (= res!185124 (validKeyInArray!0 k!1348))))

(declare-fun b!335325 () Bool)

(declare-fun e!205853 () Bool)

(assert (=> b!335325 (= e!205853 (not true))))

(declare-datatypes ((V!10207 0))(
  ( (V!10208 (val!3506 Int)) )
))
(declare-datatypes ((tuple2!5094 0))(
  ( (tuple2!5095 (_1!2557 (_ BitVec 64)) (_2!2557 V!10207)) )
))
(declare-datatypes ((List!4734 0))(
  ( (Nil!4731) (Cons!4730 (h!5586 tuple2!5094) (t!9830 List!4734)) )
))
(declare-datatypes ((ListLongMap!4021 0))(
  ( (ListLongMap!4022 (toList!2026 List!4734)) )
))
(declare-fun lt!159824 () ListLongMap!4021)

(declare-datatypes ((array!17427 0))(
  ( (array!17428 (arr!8241 (Array (_ BitVec 32) (_ BitVec 64))) (size!8593 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17427)

(declare-datatypes ((SeekEntryResult!3196 0))(
  ( (MissingZero!3196 (index!14963 (_ BitVec 32))) (Found!3196 (index!14964 (_ BitVec 32))) (Intermediate!3196 (undefined!4008 Bool) (index!14965 (_ BitVec 32)) (x!33437 (_ BitVec 32))) (Undefined!3196) (MissingVacant!3196 (index!14966 (_ BitVec 32))) )
))
(declare-fun lt!159825 () SeekEntryResult!3196)

(declare-fun contains!2066 (ListLongMap!4021 (_ BitVec 64)) Bool)

(assert (=> b!335325 (contains!2066 lt!159824 (select (arr!8241 _keys!1895) (index!14964 lt!159825)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((Unit!10432 0))(
  ( (Unit!10433) )
))
(declare-fun lt!159823 () Unit!10432)

(declare-fun zeroValue!1467 () V!10207)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3118 0))(
  ( (ValueCellFull!3118 (v!5664 V!10207)) (EmptyCell!3118) )
))
(declare-datatypes ((array!17429 0))(
  ( (array!17430 (arr!8242 (Array (_ BitVec 32) ValueCell!3118)) (size!8594 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17429)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10207)

(declare-fun lemmaValidKeyInArrayIsInListMap!162 (array!17427 array!17429 (_ BitVec 32) (_ BitVec 32) V!10207 V!10207 (_ BitVec 32) Int) Unit!10432)

(assert (=> b!335325 (= lt!159823 (lemmaValidKeyInArrayIsInListMap!162 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!14964 lt!159825) defaultEntry!1528))))

(declare-fun arrayContainsKey!0 (array!17427 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!335325 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-fun lt!159822 () Unit!10432)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17427 (_ BitVec 64) (_ BitVec 32)) Unit!10432)

(assert (=> b!335325 (= lt!159822 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!14964 lt!159825)))))

(declare-fun b!335326 () Bool)

(declare-fun res!185122 () Bool)

(assert (=> b!335326 (=> (not res!185122) (not e!205850))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17427 (_ BitVec 32)) Bool)

(assert (=> b!335326 (= res!185122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!11781 () Bool)

(declare-fun mapRes!11781 () Bool)

(declare-fun tp!24417 () Bool)

(assert (=> mapNonEmpty!11781 (= mapRes!11781 (and tp!24417 e!205851))))

(declare-fun mapValue!11781 () ValueCell!3118)

(declare-fun mapRest!11781 () (Array (_ BitVec 32) ValueCell!3118))

(declare-fun mapKey!11781 () (_ BitVec 32))

(assert (=> mapNonEmpty!11781 (= (arr!8242 _values!1525) (store mapRest!11781 mapKey!11781 mapValue!11781))))

(declare-fun b!335327 () Bool)

(declare-fun res!185120 () Bool)

(assert (=> b!335327 (=> (not res!185120) (not e!205850))))

(assert (=> b!335327 (= res!185120 (and (= (size!8594 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8593 _keys!1895) (size!8594 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!335328 () Bool)

(declare-fun e!205852 () Bool)

(assert (=> b!335328 (= e!205852 tp_is_empty!6923)))

(declare-fun b!335329 () Bool)

(declare-fun e!205848 () Bool)

(assert (=> b!335329 (= e!205848 (and e!205852 mapRes!11781))))

(declare-fun condMapEmpty!11781 () Bool)

(declare-fun mapDefault!11781 () ValueCell!3118)

