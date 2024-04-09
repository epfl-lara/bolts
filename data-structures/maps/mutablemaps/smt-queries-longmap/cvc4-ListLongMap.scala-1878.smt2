; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33714 () Bool)

(assert start!33714)

(declare-fun b_free!6941 () Bool)

(declare-fun b_next!6941 () Bool)

(assert (=> start!33714 (= b_free!6941 (not b_next!6941))))

(declare-fun tp!24326 () Bool)

(declare-fun b_and!14139 () Bool)

(assert (=> start!33714 (= tp!24326 b_and!14139)))

(declare-fun mapIsEmpty!11736 () Bool)

(declare-fun mapRes!11736 () Bool)

(assert (=> mapIsEmpty!11736 mapRes!11736))

(declare-fun res!184761 () Bool)

(declare-fun e!205538 () Bool)

(assert (=> start!33714 (=> (not res!184761) (not e!205538))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33714 (= res!184761 (validMask!0 mask!2385))))

(assert (=> start!33714 e!205538))

(assert (=> start!33714 true))

(declare-fun tp_is_empty!6893 () Bool)

(assert (=> start!33714 tp_is_empty!6893))

(assert (=> start!33714 tp!24326))

(declare-datatypes ((V!10167 0))(
  ( (V!10168 (val!3491 Int)) )
))
(declare-datatypes ((ValueCell!3103 0))(
  ( (ValueCellFull!3103 (v!5649 V!10167)) (EmptyCell!3103) )
))
(declare-datatypes ((array!17371 0))(
  ( (array!17372 (arr!8213 (Array (_ BitVec 32) ValueCell!3103)) (size!8565 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17371)

(declare-fun e!205536 () Bool)

(declare-fun array_inv!6090 (array!17371) Bool)

(assert (=> start!33714 (and (array_inv!6090 _values!1525) e!205536)))

(declare-datatypes ((array!17373 0))(
  ( (array!17374 (arr!8214 (Array (_ BitVec 32) (_ BitVec 64))) (size!8566 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17373)

(declare-fun array_inv!6091 (array!17373) Bool)

(assert (=> start!33714 (array_inv!6091 _keys!1895)))

(declare-fun b!334828 () Bool)

(declare-fun e!205535 () Bool)

(assert (=> b!334828 (= e!205535 tp_is_empty!6893)))

(declare-fun b!334829 () Bool)

(declare-fun res!184759 () Bool)

(assert (=> b!334829 (=> (not res!184759) (not e!205538))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17373 (_ BitVec 32)) Bool)

(assert (=> b!334829 (= res!184759 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!334830 () Bool)

(declare-fun e!205533 () Bool)

(assert (=> b!334830 (= e!205533 (not true))))

(declare-datatypes ((tuple2!5072 0))(
  ( (tuple2!5073 (_1!2546 (_ BitVec 64)) (_2!2546 V!10167)) )
))
(declare-datatypes ((List!4714 0))(
  ( (Nil!4711) (Cons!4710 (h!5566 tuple2!5072) (t!9810 List!4714)) )
))
(declare-datatypes ((ListLongMap!3999 0))(
  ( (ListLongMap!4000 (toList!2015 List!4714)) )
))
(declare-fun lt!159645 () ListLongMap!3999)

(declare-datatypes ((SeekEntryResult!3184 0))(
  ( (MissingZero!3184 (index!14915 (_ BitVec 32))) (Found!3184 (index!14916 (_ BitVec 32))) (Intermediate!3184 (undefined!3996 Bool) (index!14917 (_ BitVec 32)) (x!33385 (_ BitVec 32))) (Undefined!3184) (MissingVacant!3184 (index!14918 (_ BitVec 32))) )
))
(declare-fun lt!159642 () SeekEntryResult!3184)

(declare-fun contains!2055 (ListLongMap!3999 (_ BitVec 64)) Bool)

(assert (=> b!334830 (contains!2055 lt!159645 (select (arr!8214 _keys!1895) (index!14916 lt!159642)))))

(declare-fun zeroValue!1467 () V!10167)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((Unit!10416 0))(
  ( (Unit!10417) )
))
(declare-fun lt!159644 () Unit!10416)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10167)

(declare-fun lemmaValidKeyInArrayIsInListMap!154 (array!17373 array!17371 (_ BitVec 32) (_ BitVec 32) V!10167 V!10167 (_ BitVec 32) Int) Unit!10416)

(assert (=> b!334830 (= lt!159644 (lemmaValidKeyInArrayIsInListMap!154 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!14916 lt!159642) defaultEntry!1528))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17373 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!334830 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-fun lt!159643 () Unit!10416)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17373 (_ BitVec 64) (_ BitVec 32)) Unit!10416)

(assert (=> b!334830 (= lt!159643 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!14916 lt!159642)))))

(declare-fun b!334831 () Bool)

(declare-fun res!184762 () Bool)

(assert (=> b!334831 (=> (not res!184762) (not e!205538))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!334831 (= res!184762 (validKeyInArray!0 k!1348))))

(declare-fun b!334832 () Bool)

(declare-fun e!205537 () Bool)

(assert (=> b!334832 (= e!205537 e!205533)))

(declare-fun res!184763 () Bool)

(assert (=> b!334832 (=> (not res!184763) (not e!205533))))

(assert (=> b!334832 (= res!184763 (and (is-Found!3184 lt!159642) (= (select (arr!8214 _keys!1895) (index!14916 lt!159642)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17373 (_ BitVec 32)) SeekEntryResult!3184)

(assert (=> b!334832 (= lt!159642 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!11736 () Bool)

(declare-fun tp!24327 () Bool)

(assert (=> mapNonEmpty!11736 (= mapRes!11736 (and tp!24327 e!205535))))

(declare-fun mapKey!11736 () (_ BitVec 32))

(declare-fun mapRest!11736 () (Array (_ BitVec 32) ValueCell!3103))

(declare-fun mapValue!11736 () ValueCell!3103)

(assert (=> mapNonEmpty!11736 (= (arr!8213 _values!1525) (store mapRest!11736 mapKey!11736 mapValue!11736))))

(declare-fun b!334833 () Bool)

(declare-fun res!184760 () Bool)

(assert (=> b!334833 (=> (not res!184760) (not e!205533))))

(assert (=> b!334833 (= res!184760 (arrayContainsKey!0 _keys!1895 k!1348 (index!14916 lt!159642)))))

(declare-fun b!334834 () Bool)

(declare-fun res!184766 () Bool)

(assert (=> b!334834 (=> (not res!184766) (not e!205538))))

(assert (=> b!334834 (= res!184766 (and (= (size!8565 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8566 _keys!1895) (size!8565 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!334835 () Bool)

(declare-fun e!205534 () Bool)

(assert (=> b!334835 (= e!205536 (and e!205534 mapRes!11736))))

(declare-fun condMapEmpty!11736 () Bool)

(declare-fun mapDefault!11736 () ValueCell!3103)

