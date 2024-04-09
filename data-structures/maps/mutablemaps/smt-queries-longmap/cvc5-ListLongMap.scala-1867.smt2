; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33644 () Bool)

(assert start!33644)

(declare-fun b_free!6871 () Bool)

(declare-fun b_next!6871 () Bool)

(assert (=> start!33644 (= b_free!6871 (not b_next!6871))))

(declare-fun tp!24116 () Bool)

(declare-fun b_and!14069 () Bool)

(assert (=> start!33644 (= tp!24116 b_and!14069)))

(declare-fun b!333673 () Bool)

(declare-fun res!183926 () Bool)

(declare-fun e!204882 () Bool)

(assert (=> b!333673 (=> (not res!183926) (not e!204882))))

(declare-datatypes ((array!17237 0))(
  ( (array!17238 (arr!8146 (Array (_ BitVec 32) (_ BitVec 64))) (size!8498 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17237)

(declare-datatypes ((List!4666 0))(
  ( (Nil!4663) (Cons!4662 (h!5518 (_ BitVec 64)) (t!9762 List!4666)) )
))
(declare-fun arrayNoDuplicates!0 (array!17237 (_ BitVec 32) List!4666) Bool)

(assert (=> b!333673 (= res!183926 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4663))))

(declare-fun mapIsEmpty!11631 () Bool)

(declare-fun mapRes!11631 () Bool)

(assert (=> mapIsEmpty!11631 mapRes!11631))

(declare-fun mapNonEmpty!11631 () Bool)

(declare-fun tp!24117 () Bool)

(declare-fun e!204880 () Bool)

(assert (=> mapNonEmpty!11631 (= mapRes!11631 (and tp!24117 e!204880))))

(declare-datatypes ((V!10075 0))(
  ( (V!10076 (val!3456 Int)) )
))
(declare-datatypes ((ValueCell!3068 0))(
  ( (ValueCellFull!3068 (v!5614 V!10075)) (EmptyCell!3068) )
))
(declare-fun mapRest!11631 () (Array (_ BitVec 32) ValueCell!3068))

(declare-fun mapKey!11631 () (_ BitVec 32))

(declare-datatypes ((array!17239 0))(
  ( (array!17240 (arr!8147 (Array (_ BitVec 32) ValueCell!3068)) (size!8499 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17239)

(declare-fun mapValue!11631 () ValueCell!3068)

(assert (=> mapNonEmpty!11631 (= (arr!8147 _values!1525) (store mapRest!11631 mapKey!11631 mapValue!11631))))

(declare-fun b!333674 () Bool)

(declare-fun res!183923 () Bool)

(assert (=> b!333674 (=> (not res!183923) (not e!204882))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!333674 (= res!183923 (validKeyInArray!0 k!1348))))

(declare-fun b!333675 () Bool)

(declare-fun e!204881 () Bool)

(assert (=> b!333675 (= e!204882 e!204881)))

(declare-fun res!183920 () Bool)

(assert (=> b!333675 (=> (not res!183920) (not e!204881))))

(declare-datatypes ((SeekEntryResult!3159 0))(
  ( (MissingZero!3159 (index!14815 (_ BitVec 32))) (Found!3159 (index!14816 (_ BitVec 32))) (Intermediate!3159 (undefined!3971 Bool) (index!14817 (_ BitVec 32)) (x!33272 (_ BitVec 32))) (Undefined!3159) (MissingVacant!3159 (index!14818 (_ BitVec 32))) )
))
(declare-fun lt!159380 () SeekEntryResult!3159)

(assert (=> b!333675 (= res!183920 (and (is-Found!3159 lt!159380) (= (select (arr!8146 _keys!1895) (index!14816 lt!159380)) k!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17237 (_ BitVec 32)) SeekEntryResult!3159)

(assert (=> b!333675 (= lt!159380 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!333676 () Bool)

(declare-fun res!183925 () Bool)

(assert (=> b!333676 (=> (not res!183925) (not e!204882))))

(declare-fun zeroValue!1467 () V!10075)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10075)

(declare-datatypes ((tuple2!5024 0))(
  ( (tuple2!5025 (_1!2522 (_ BitVec 64)) (_2!2522 V!10075)) )
))
(declare-datatypes ((List!4667 0))(
  ( (Nil!4664) (Cons!4663 (h!5519 tuple2!5024) (t!9763 List!4667)) )
))
(declare-datatypes ((ListLongMap!3951 0))(
  ( (ListLongMap!3952 (toList!1991 List!4667)) )
))
(declare-fun contains!2031 (ListLongMap!3951 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1514 (array!17237 array!17239 (_ BitVec 32) (_ BitVec 32) V!10075 V!10075 (_ BitVec 32) Int) ListLongMap!3951)

(assert (=> b!333676 (= res!183925 (not (contains!2031 (getCurrentListMap!1514 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!333677 () Bool)

(declare-fun res!183924 () Bool)

(assert (=> b!333677 (=> (not res!183924) (not e!204882))))

(assert (=> b!333677 (= res!183924 (and (= (size!8499 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8498 _keys!1895) (size!8499 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!333678 () Bool)

(declare-fun res!183922 () Bool)

(assert (=> b!333678 (=> (not res!183922) (not e!204882))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17237 (_ BitVec 32)) Bool)

(assert (=> b!333678 (= res!183922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!333679 () Bool)

(assert (=> b!333679 (= e!204881 (not true))))

(declare-fun arrayContainsKey!0 (array!17237 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!333679 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10376 0))(
  ( (Unit!10377) )
))
(declare-fun lt!159381 () Unit!10376)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17237 (_ BitVec 64) (_ BitVec 32)) Unit!10376)

(assert (=> b!333679 (= lt!159381 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!14816 lt!159380)))))

(declare-fun res!183919 () Bool)

(assert (=> start!33644 (=> (not res!183919) (not e!204882))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33644 (= res!183919 (validMask!0 mask!2385))))

(assert (=> start!33644 e!204882))

(assert (=> start!33644 true))

(declare-fun tp_is_empty!6823 () Bool)

(assert (=> start!33644 tp_is_empty!6823))

(assert (=> start!33644 tp!24116))

(declare-fun e!204879 () Bool)

(declare-fun array_inv!6054 (array!17239) Bool)

(assert (=> start!33644 (and (array_inv!6054 _values!1525) e!204879)))

(declare-fun array_inv!6055 (array!17237) Bool)

(assert (=> start!33644 (array_inv!6055 _keys!1895)))

(declare-fun b!333680 () Bool)

(declare-fun e!204878 () Bool)

(assert (=> b!333680 (= e!204879 (and e!204878 mapRes!11631))))

(declare-fun condMapEmpty!11631 () Bool)

(declare-fun mapDefault!11631 () ValueCell!3068)

