; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33698 () Bool)

(assert start!33698)

(declare-fun b_free!6925 () Bool)

(declare-fun b_next!6925 () Bool)

(assert (=> start!33698 (= b_free!6925 (not b_next!6925))))

(declare-fun tp!24278 () Bool)

(declare-fun b_and!14123 () Bool)

(assert (=> start!33698 (= tp!24278 b_and!14123)))

(declare-fun b!334564 () Bool)

(declare-fun e!205365 () Bool)

(declare-fun e!205369 () Bool)

(assert (=> b!334564 (= e!205365 e!205369)))

(declare-fun res!184569 () Bool)

(assert (=> b!334564 (=> (not res!184569) (not e!205369))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!17339 0))(
  ( (array!17340 (arr!8197 (Array (_ BitVec 32) (_ BitVec 64))) (size!8549 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17339)

(declare-datatypes ((SeekEntryResult!3178 0))(
  ( (MissingZero!3178 (index!14891 (_ BitVec 32))) (Found!3178 (index!14892 (_ BitVec 32))) (Intermediate!3178 (undefined!3990 Bool) (index!14893 (_ BitVec 32)) (x!33363 (_ BitVec 32))) (Undefined!3178) (MissingVacant!3178 (index!14894 (_ BitVec 32))) )
))
(declare-fun lt!159546 () SeekEntryResult!3178)

(assert (=> b!334564 (= res!184569 (and (is-Found!3178 lt!159546) (= (select (arr!8197 _keys!1895) (index!14892 lt!159546)) k!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17339 (_ BitVec 32)) SeekEntryResult!3178)

(assert (=> b!334564 (= lt!159546 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!334565 () Bool)

(declare-fun res!184574 () Bool)

(declare-fun e!205367 () Bool)

(assert (=> b!334565 (=> (not res!184574) (not e!205367))))

(declare-datatypes ((List!4702 0))(
  ( (Nil!4699) (Cons!4698 (h!5554 (_ BitVec 64)) (t!9798 List!4702)) )
))
(declare-fun arrayNoDuplicates!0 (array!17339 (_ BitVec 32) List!4702) Bool)

(assert (=> b!334565 (= res!184574 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4699))))

(declare-fun b!334566 () Bool)

(declare-fun res!184573 () Bool)

(assert (=> b!334566 (=> (not res!184573) (not e!205367))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17339 (_ BitVec 32)) Bool)

(assert (=> b!334566 (= res!184573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!11712 () Bool)

(declare-fun mapRes!11712 () Bool)

(assert (=> mapIsEmpty!11712 mapRes!11712))

(declare-fun b!334567 () Bool)

(assert (=> b!334567 (= e!205367 e!205365)))

(declare-fun res!184570 () Bool)

(assert (=> b!334567 (=> (not res!184570) (not e!205365))))

(declare-datatypes ((V!10147 0))(
  ( (V!10148 (val!3483 Int)) )
))
(declare-datatypes ((tuple2!5060 0))(
  ( (tuple2!5061 (_1!2540 (_ BitVec 64)) (_2!2540 V!10147)) )
))
(declare-datatypes ((List!4703 0))(
  ( (Nil!4700) (Cons!4699 (h!5555 tuple2!5060) (t!9799 List!4703)) )
))
(declare-datatypes ((ListLongMap!3987 0))(
  ( (ListLongMap!3988 (toList!2009 List!4703)) )
))
(declare-fun lt!159549 () ListLongMap!3987)

(declare-fun contains!2049 (ListLongMap!3987 (_ BitVec 64)) Bool)

(assert (=> b!334567 (= res!184570 (not (contains!2049 lt!159549 k!1348)))))

(declare-fun zeroValue!1467 () V!10147)

(declare-datatypes ((ValueCell!3095 0))(
  ( (ValueCellFull!3095 (v!5641 V!10147)) (EmptyCell!3095) )
))
(declare-datatypes ((array!17341 0))(
  ( (array!17342 (arr!8198 (Array (_ BitVec 32) ValueCell!3095)) (size!8550 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17341)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10147)

(declare-fun defaultEntry!1528 () Int)

(declare-fun getCurrentListMap!1532 (array!17339 array!17341 (_ BitVec 32) (_ BitVec 32) V!10147 V!10147 (_ BitVec 32) Int) ListLongMap!3987)

(assert (=> b!334567 (= lt!159549 (getCurrentListMap!1532 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!334568 () Bool)

(declare-fun res!184568 () Bool)

(assert (=> b!334568 (=> (not res!184568) (not e!205369))))

(declare-fun arrayContainsKey!0 (array!17339 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!334568 (= res!184568 (arrayContainsKey!0 _keys!1895 k!1348 (index!14892 lt!159546)))))

(declare-fun b!334569 () Bool)

(declare-fun e!205368 () Bool)

(declare-fun e!205370 () Bool)

(assert (=> b!334569 (= e!205368 (and e!205370 mapRes!11712))))

(declare-fun condMapEmpty!11712 () Bool)

(declare-fun mapDefault!11712 () ValueCell!3095)

