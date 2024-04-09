; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33750 () Bool)

(assert start!33750)

(declare-fun b_free!6977 () Bool)

(declare-fun b_next!6977 () Bool)

(assert (=> start!33750 (= b_free!6977 (not b_next!6977))))

(declare-fun tp!24434 () Bool)

(declare-fun b_and!14175 () Bool)

(assert (=> start!33750 (= tp!24434 b_and!14175)))

(declare-fun b!335422 () Bool)

(declare-fun res!185197 () Bool)

(declare-fun e!205917 () Bool)

(assert (=> b!335422 (=> (not res!185197) (not e!205917))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!335422 (= res!185197 (validKeyInArray!0 k!1348))))

(declare-fun b!335423 () Bool)

(declare-fun e!205916 () Bool)

(declare-fun tp_is_empty!6929 () Bool)

(assert (=> b!335423 (= e!205916 tp_is_empty!6929)))

(declare-fun b!335424 () Bool)

(declare-fun res!185198 () Bool)

(assert (=> b!335424 (=> (not res!185198) (not e!205917))))

(declare-datatypes ((array!17437 0))(
  ( (array!17438 (arr!8246 (Array (_ BitVec 32) (_ BitVec 64))) (size!8598 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17437)

(declare-datatypes ((List!4737 0))(
  ( (Nil!4734) (Cons!4733 (h!5589 (_ BitVec 64)) (t!9833 List!4737)) )
))
(declare-fun arrayNoDuplicates!0 (array!17437 (_ BitVec 32) List!4737) Bool)

(assert (=> b!335424 (= res!185198 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4734))))

(declare-fun b!335425 () Bool)

(declare-fun e!205914 () Bool)

(declare-fun e!205912 () Bool)

(assert (=> b!335425 (= e!205914 e!205912)))

(declare-fun res!185192 () Bool)

(assert (=> b!335425 (=> (not res!185192) (not e!205912))))

(declare-datatypes ((SeekEntryResult!3198 0))(
  ( (MissingZero!3198 (index!14971 (_ BitVec 32))) (Found!3198 (index!14972 (_ BitVec 32))) (Intermediate!3198 (undefined!4010 Bool) (index!14973 (_ BitVec 32)) (x!33447 (_ BitVec 32))) (Undefined!3198) (MissingVacant!3198 (index!14974 (_ BitVec 32))) )
))
(declare-fun lt!159858 () SeekEntryResult!3198)

(assert (=> b!335425 (= res!185192 (and (is-Found!3198 lt!159858) (= (select (arr!8246 _keys!1895) (index!14972 lt!159858)) k!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17437 (_ BitVec 32)) SeekEntryResult!3198)

(assert (=> b!335425 (= lt!159858 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!335426 () Bool)

(assert (=> b!335426 (= e!205917 e!205914)))

(declare-fun res!185193 () Bool)

(assert (=> b!335426 (=> (not res!185193) (not e!205914))))

(declare-datatypes ((V!10215 0))(
  ( (V!10216 (val!3509 Int)) )
))
(declare-datatypes ((tuple2!5098 0))(
  ( (tuple2!5099 (_1!2559 (_ BitVec 64)) (_2!2559 V!10215)) )
))
(declare-datatypes ((List!4738 0))(
  ( (Nil!4735) (Cons!4734 (h!5590 tuple2!5098) (t!9834 List!4738)) )
))
(declare-datatypes ((ListLongMap!4025 0))(
  ( (ListLongMap!4026 (toList!2028 List!4738)) )
))
(declare-fun lt!159859 () ListLongMap!4025)

(declare-fun contains!2068 (ListLongMap!4025 (_ BitVec 64)) Bool)

(assert (=> b!335426 (= res!185193 (not (contains!2068 lt!159859 k!1348)))))

(declare-fun zeroValue!1467 () V!10215)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3121 0))(
  ( (ValueCellFull!3121 (v!5667 V!10215)) (EmptyCell!3121) )
))
(declare-datatypes ((array!17439 0))(
  ( (array!17440 (arr!8247 (Array (_ BitVec 32) ValueCell!3121)) (size!8599 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17439)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10215)

(declare-fun getCurrentListMap!1548 (array!17437 array!17439 (_ BitVec 32) (_ BitVec 32) V!10215 V!10215 (_ BitVec 32) Int) ListLongMap!4025)

(assert (=> b!335426 (= lt!159859 (getCurrentListMap!1548 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!335427 () Bool)

(assert (=> b!335427 (= e!205912 (not true))))

(assert (=> b!335427 (contains!2068 lt!159859 (select (arr!8246 _keys!1895) (index!14972 lt!159858)))))

(declare-datatypes ((Unit!10436 0))(
  ( (Unit!10437) )
))
(declare-fun lt!159860 () Unit!10436)

(declare-fun lemmaValidKeyInArrayIsInListMap!164 (array!17437 array!17439 (_ BitVec 32) (_ BitVec 32) V!10215 V!10215 (_ BitVec 32) Int) Unit!10436)

(assert (=> b!335427 (= lt!159860 (lemmaValidKeyInArrayIsInListMap!164 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!14972 lt!159858) defaultEntry!1528))))

(declare-fun arrayContainsKey!0 (array!17437 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!335427 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-fun lt!159861 () Unit!10436)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17437 (_ BitVec 64) (_ BitVec 32)) Unit!10436)

(assert (=> b!335427 (= lt!159861 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!14972 lt!159858)))))

(declare-fun b!335428 () Bool)

(declare-fun e!205915 () Bool)

(declare-fun mapRes!11790 () Bool)

(assert (=> b!335428 (= e!205915 (and e!205916 mapRes!11790))))

(declare-fun condMapEmpty!11790 () Bool)

(declare-fun mapDefault!11790 () ValueCell!3121)

