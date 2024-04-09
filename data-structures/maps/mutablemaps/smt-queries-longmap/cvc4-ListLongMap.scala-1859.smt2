; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33546 () Bool)

(assert start!33546)

(declare-fun b_free!6827 () Bool)

(declare-fun b_next!6827 () Bool)

(assert (=> start!33546 (= b_free!6827 (not b_next!6827))))

(declare-fun tp!23975 () Bool)

(declare-fun b_and!14019 () Bool)

(assert (=> start!33546 (= tp!23975 b_and!14019)))

(declare-fun b!332676 () Bool)

(declare-fun res!183367 () Bool)

(declare-fun e!204295 () Bool)

(assert (=> b!332676 (=> (not res!183367) (not e!204295))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!332676 (= res!183367 (validKeyInArray!0 k!1348))))

(declare-fun mapNonEmpty!11556 () Bool)

(declare-fun mapRes!11556 () Bool)

(declare-fun tp!23976 () Bool)

(declare-fun e!204293 () Bool)

(assert (=> mapNonEmpty!11556 (= mapRes!11556 (and tp!23976 e!204293))))

(declare-datatypes ((V!10015 0))(
  ( (V!10016 (val!3434 Int)) )
))
(declare-datatypes ((ValueCell!3046 0))(
  ( (ValueCellFull!3046 (v!5589 V!10015)) (EmptyCell!3046) )
))
(declare-fun mapValue!11556 () ValueCell!3046)

(declare-datatypes ((array!17149 0))(
  ( (array!17150 (arr!8105 (Array (_ BitVec 32) ValueCell!3046)) (size!8457 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17149)

(declare-fun mapRest!11556 () (Array (_ BitVec 32) ValueCell!3046))

(declare-fun mapKey!11556 () (_ BitVec 32))

(assert (=> mapNonEmpty!11556 (= (arr!8105 _values!1525) (store mapRest!11556 mapKey!11556 mapValue!11556))))

(declare-fun res!183369 () Bool)

(assert (=> start!33546 (=> (not res!183369) (not e!204295))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33546 (= res!183369 (validMask!0 mask!2385))))

(assert (=> start!33546 e!204295))

(assert (=> start!33546 true))

(declare-fun tp_is_empty!6779 () Bool)

(assert (=> start!33546 tp_is_empty!6779))

(assert (=> start!33546 tp!23975))

(declare-fun e!204297 () Bool)

(declare-fun array_inv!6026 (array!17149) Bool)

(assert (=> start!33546 (and (array_inv!6026 _values!1525) e!204297)))

(declare-datatypes ((array!17151 0))(
  ( (array!17152 (arr!8106 (Array (_ BitVec 32) (_ BitVec 64))) (size!8458 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17151)

(declare-fun array_inv!6027 (array!17151) Bool)

(assert (=> start!33546 (array_inv!6027 _keys!1895)))

(declare-fun b!332677 () Bool)

(declare-fun res!183370 () Bool)

(assert (=> b!332677 (=> (not res!183370) (not e!204295))))

(declare-datatypes ((List!4636 0))(
  ( (Nil!4633) (Cons!4632 (h!5488 (_ BitVec 64)) (t!9726 List!4636)) )
))
(declare-fun arrayNoDuplicates!0 (array!17151 (_ BitVec 32) List!4636) Bool)

(assert (=> b!332677 (= res!183370 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4633))))

(declare-datatypes ((SeekEntryResult!3145 0))(
  ( (MissingZero!3145 (index!14759 (_ BitVec 32))) (Found!3145 (index!14760 (_ BitVec 32))) (Intermediate!3145 (undefined!3957 Bool) (index!14761 (_ BitVec 32)) (x!33164 (_ BitVec 32))) (Undefined!3145) (MissingVacant!3145 (index!14762 (_ BitVec 32))) )
))
(declare-fun lt!159015 () SeekEntryResult!3145)

(declare-fun b!332678 () Bool)

(assert (=> b!332678 (= e!204295 (and (is-Found!3145 lt!159015) (= (select (arr!8106 _keys!1895) (index!14760 lt!159015)) k!1348) (bvslt (index!14760 lt!159015) #b00000000000000000000000000000000)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17151 (_ BitVec 32)) SeekEntryResult!3145)

(assert (=> b!332678 (= lt!159015 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!332679 () Bool)

(declare-fun res!183371 () Bool)

(assert (=> b!332679 (=> (not res!183371) (not e!204295))))

(declare-fun zeroValue!1467 () V!10015)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10015)

(declare-datatypes ((tuple2!4998 0))(
  ( (tuple2!4999 (_1!2509 (_ BitVec 64)) (_2!2509 V!10015)) )
))
(declare-datatypes ((List!4637 0))(
  ( (Nil!4634) (Cons!4633 (h!5489 tuple2!4998) (t!9727 List!4637)) )
))
(declare-datatypes ((ListLongMap!3925 0))(
  ( (ListLongMap!3926 (toList!1978 List!4637)) )
))
(declare-fun contains!2015 (ListLongMap!3925 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1501 (array!17151 array!17149 (_ BitVec 32) (_ BitVec 32) V!10015 V!10015 (_ BitVec 32) Int) ListLongMap!3925)

(assert (=> b!332679 (= res!183371 (not (contains!2015 (getCurrentListMap!1501 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapIsEmpty!11556 () Bool)

(assert (=> mapIsEmpty!11556 mapRes!11556))

(declare-fun b!332680 () Bool)

(declare-fun res!183368 () Bool)

(assert (=> b!332680 (=> (not res!183368) (not e!204295))))

(assert (=> b!332680 (= res!183368 (and (= (size!8457 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8458 _keys!1895) (size!8457 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!332681 () Bool)

(declare-fun e!204294 () Bool)

(assert (=> b!332681 (= e!204294 tp_is_empty!6779)))

(declare-fun b!332682 () Bool)

(assert (=> b!332682 (= e!204297 (and e!204294 mapRes!11556))))

(declare-fun condMapEmpty!11556 () Bool)

(declare-fun mapDefault!11556 () ValueCell!3046)

