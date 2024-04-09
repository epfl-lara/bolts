; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33734 () Bool)

(assert start!33734)

(declare-fun b_free!6961 () Bool)

(declare-fun b_next!6961 () Bool)

(assert (=> start!33734 (= b_free!6961 (not b_next!6961))))

(declare-fun tp!24386 () Bool)

(declare-fun b_and!14159 () Bool)

(assert (=> start!33734 (= tp!24386 b_and!14159)))

(declare-fun res!185006 () Bool)

(declare-fun e!205749 () Bool)

(assert (=> start!33734 (=> (not res!185006) (not e!205749))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33734 (= res!185006 (validMask!0 mask!2385))))

(assert (=> start!33734 e!205749))

(assert (=> start!33734 true))

(declare-fun tp_is_empty!6913 () Bool)

(assert (=> start!33734 tp_is_empty!6913))

(assert (=> start!33734 tp!24386))

(declare-datatypes ((V!10195 0))(
  ( (V!10196 (val!3501 Int)) )
))
(declare-datatypes ((ValueCell!3113 0))(
  ( (ValueCellFull!3113 (v!5659 V!10195)) (EmptyCell!3113) )
))
(declare-datatypes ((array!17407 0))(
  ( (array!17408 (arr!8231 (Array (_ BitVec 32) ValueCell!3113)) (size!8583 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17407)

(declare-fun e!205746 () Bool)

(declare-fun array_inv!6102 (array!17407) Bool)

(assert (=> start!33734 (and (array_inv!6102 _values!1525) e!205746)))

(declare-datatypes ((array!17409 0))(
  ( (array!17410 (arr!8232 (Array (_ BitVec 32) (_ BitVec 64))) (size!8584 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17409)

(declare-fun array_inv!6103 (array!17409) Bool)

(assert (=> start!33734 (array_inv!6103 _keys!1895)))

(declare-fun b!335158 () Bool)

(declare-fun res!184999 () Bool)

(assert (=> b!335158 (=> (not res!184999) (not e!205749))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17409 (_ BitVec 32)) Bool)

(assert (=> b!335158 (= res!184999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!335159 () Bool)

(declare-fun e!205747 () Bool)

(assert (=> b!335159 (= e!205747 (not true))))

(declare-datatypes ((tuple2!5084 0))(
  ( (tuple2!5085 (_1!2552 (_ BitVec 64)) (_2!2552 V!10195)) )
))
(declare-datatypes ((List!4725 0))(
  ( (Nil!4722) (Cons!4721 (h!5577 tuple2!5084) (t!9821 List!4725)) )
))
(declare-datatypes ((ListLongMap!4011 0))(
  ( (ListLongMap!4012 (toList!2021 List!4725)) )
))
(declare-fun lt!159763 () ListLongMap!4011)

(declare-datatypes ((SeekEntryResult!3191 0))(
  ( (MissingZero!3191 (index!14943 (_ BitVec 32))) (Found!3191 (index!14944 (_ BitVec 32))) (Intermediate!3191 (undefined!4003 Bool) (index!14945 (_ BitVec 32)) (x!33424 (_ BitVec 32))) (Undefined!3191) (MissingVacant!3191 (index!14946 (_ BitVec 32))) )
))
(declare-fun lt!159764 () SeekEntryResult!3191)

(declare-fun contains!2061 (ListLongMap!4011 (_ BitVec 64)) Bool)

(assert (=> b!335159 (contains!2061 lt!159763 (select (arr!8232 _keys!1895) (index!14944 lt!159764)))))

(declare-fun zeroValue!1467 () V!10195)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((Unit!10424 0))(
  ( (Unit!10425) )
))
(declare-fun lt!159765 () Unit!10424)

(declare-fun minValue!1467 () V!10195)

(declare-fun lemmaValidKeyInArrayIsInListMap!158 (array!17409 array!17407 (_ BitVec 32) (_ BitVec 32) V!10195 V!10195 (_ BitVec 32) Int) Unit!10424)

(assert (=> b!335159 (= lt!159765 (lemmaValidKeyInArrayIsInListMap!158 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!14944 lt!159764) defaultEntry!1528))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17409 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!335159 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-fun lt!159762 () Unit!10424)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17409 (_ BitVec 64) (_ BitVec 32)) Unit!10424)

(assert (=> b!335159 (= lt!159762 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!14944 lt!159764)))))

(declare-fun b!335160 () Bool)

(declare-fun res!185001 () Bool)

(assert (=> b!335160 (=> (not res!185001) (not e!205749))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!335160 (= res!185001 (validKeyInArray!0 k!1348))))

(declare-fun b!335161 () Bool)

(declare-fun e!205745 () Bool)

(declare-fun mapRes!11766 () Bool)

(assert (=> b!335161 (= e!205746 (and e!205745 mapRes!11766))))

(declare-fun condMapEmpty!11766 () Bool)

(declare-fun mapDefault!11766 () ValueCell!3113)

