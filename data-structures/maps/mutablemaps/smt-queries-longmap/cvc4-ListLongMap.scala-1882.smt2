; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33738 () Bool)

(assert start!33738)

(declare-fun b_free!6965 () Bool)

(declare-fun b_next!6965 () Bool)

(assert (=> start!33738 (= b_free!6965 (not b_next!6965))))

(declare-fun tp!24399 () Bool)

(declare-fun b_and!14163 () Bool)

(assert (=> start!33738 (= tp!24399 b_and!14163)))

(declare-fun b!335224 () Bool)

(declare-fun e!205785 () Bool)

(declare-fun e!205786 () Bool)

(assert (=> b!335224 (= e!205785 e!205786)))

(declare-fun res!185054 () Bool)

(assert (=> b!335224 (=> (not res!185054) (not e!205786))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!17415 0))(
  ( (array!17416 (arr!8235 (Array (_ BitVec 32) (_ BitVec 64))) (size!8587 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17415)

(declare-datatypes ((SeekEntryResult!3193 0))(
  ( (MissingZero!3193 (index!14951 (_ BitVec 32))) (Found!3193 (index!14952 (_ BitVec 32))) (Intermediate!3193 (undefined!4005 Bool) (index!14953 (_ BitVec 32)) (x!33426 (_ BitVec 32))) (Undefined!3193) (MissingVacant!3193 (index!14954 (_ BitVec 32))) )
))
(declare-fun lt!159788 () SeekEntryResult!3193)

(assert (=> b!335224 (= res!185054 (and (is-Found!3193 lt!159788) (= (select (arr!8235 _keys!1895) (index!14952 lt!159788)) k!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17415 (_ BitVec 32)) SeekEntryResult!3193)

(assert (=> b!335224 (= lt!159788 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!335225 () Bool)

(declare-fun e!205790 () Bool)

(assert (=> b!335225 (= e!205790 e!205785)))

(declare-fun res!185052 () Bool)

(assert (=> b!335225 (=> (not res!185052) (not e!205785))))

(declare-datatypes ((V!10199 0))(
  ( (V!10200 (val!3503 Int)) )
))
(declare-datatypes ((tuple2!5088 0))(
  ( (tuple2!5089 (_1!2554 (_ BitVec 64)) (_2!2554 V!10199)) )
))
(declare-datatypes ((List!4728 0))(
  ( (Nil!4725) (Cons!4724 (h!5580 tuple2!5088) (t!9824 List!4728)) )
))
(declare-datatypes ((ListLongMap!4015 0))(
  ( (ListLongMap!4016 (toList!2023 List!4728)) )
))
(declare-fun lt!159787 () ListLongMap!4015)

(declare-fun contains!2063 (ListLongMap!4015 (_ BitVec 64)) Bool)

(assert (=> b!335225 (= res!185052 (not (contains!2063 lt!159787 k!1348)))))

(declare-fun zeroValue!1467 () V!10199)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3115 0))(
  ( (ValueCellFull!3115 (v!5661 V!10199)) (EmptyCell!3115) )
))
(declare-datatypes ((array!17417 0))(
  ( (array!17418 (arr!8236 (Array (_ BitVec 32) ValueCell!3115)) (size!8588 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17417)

(declare-fun minValue!1467 () V!10199)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun getCurrentListMap!1544 (array!17415 array!17417 (_ BitVec 32) (_ BitVec 32) V!10199 V!10199 (_ BitVec 32) Int) ListLongMap!4015)

(assert (=> b!335225 (= lt!159787 (getCurrentListMap!1544 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!335226 () Bool)

(declare-fun res!185051 () Bool)

(assert (=> b!335226 (=> (not res!185051) (not e!205790))))

(declare-datatypes ((List!4729 0))(
  ( (Nil!4726) (Cons!4725 (h!5581 (_ BitVec 64)) (t!9825 List!4729)) )
))
(declare-fun arrayNoDuplicates!0 (array!17415 (_ BitVec 32) List!4729) Bool)

(assert (=> b!335226 (= res!185051 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4726))))

(declare-fun b!335227 () Bool)

(declare-fun res!185047 () Bool)

(assert (=> b!335227 (=> (not res!185047) (not e!205786))))

(declare-fun arrayContainsKey!0 (array!17415 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!335227 (= res!185047 (arrayContainsKey!0 _keys!1895 k!1348 (index!14952 lt!159788)))))

(declare-fun b!335228 () Bool)

(declare-fun res!185053 () Bool)

(assert (=> b!335228 (=> (not res!185053) (not e!205790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17415 (_ BitVec 32)) Bool)

(assert (=> b!335228 (= res!185053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun res!185050 () Bool)

(assert (=> start!33738 (=> (not res!185050) (not e!205790))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33738 (= res!185050 (validMask!0 mask!2385))))

(assert (=> start!33738 e!205790))

(assert (=> start!33738 true))

(declare-fun tp_is_empty!6917 () Bool)

(assert (=> start!33738 tp_is_empty!6917))

(assert (=> start!33738 tp!24399))

(declare-fun e!205789 () Bool)

(declare-fun array_inv!6106 (array!17417) Bool)

(assert (=> start!33738 (and (array_inv!6106 _values!1525) e!205789)))

(declare-fun array_inv!6107 (array!17415) Bool)

(assert (=> start!33738 (array_inv!6107 _keys!1895)))

(declare-fun b!335229 () Bool)

(declare-fun e!205787 () Bool)

(declare-fun mapRes!11772 () Bool)

(assert (=> b!335229 (= e!205789 (and e!205787 mapRes!11772))))

(declare-fun condMapEmpty!11772 () Bool)

(declare-fun mapDefault!11772 () ValueCell!3115)

