; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4444 () Bool)

(assert start!4444)

(declare-fun b_free!1207 () Bool)

(declare-fun b_next!1207 () Bool)

(assert (=> start!4444 (= b_free!1207 (not b_next!1207))))

(declare-fun tp!5059 () Bool)

(declare-fun b_and!2031 () Bool)

(assert (=> start!4444 (= tp!5059 b_and!2031)))

(declare-fun b!34350 () Bool)

(declare-fun e!21804 () Bool)

(assert (=> b!34350 (= e!21804 false)))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!147 0))(
  ( (MissingZero!147 (index!2710 (_ BitVec 32))) (Found!147 (index!2711 (_ BitVec 32))) (Intermediate!147 (undefined!959 Bool) (index!2712 (_ BitVec 32)) (x!6909 (_ BitVec 32))) (Undefined!147) (MissingVacant!147 (index!2713 (_ BitVec 32))) )
))
(declare-fun lt!12778 () SeekEntryResult!147)

(declare-datatypes ((array!2329 0))(
  ( (array!2330 (arr!1112 (Array (_ BitVec 32) (_ BitVec 64))) (size!1213 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2329)

(declare-fun seekEntry!0 ((_ BitVec 64) array!2329 (_ BitVec 32)) SeekEntryResult!147)

(assert (=> b!34350 (= lt!12778 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!34351 () Bool)

(declare-fun res!20810 () Bool)

(assert (=> b!34351 (=> (not res!20810) (not e!21804))))

(declare-fun arrayContainsKey!0 (array!2329 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!34351 (= res!20810 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!1888 () Bool)

(declare-fun mapRes!1888 () Bool)

(declare-fun tp!5058 () Bool)

(declare-fun e!21805 () Bool)

(assert (=> mapNonEmpty!1888 (= mapRes!1888 (and tp!5058 e!21805))))

(declare-datatypes ((V!1907 0))(
  ( (V!1908 (val!807 Int)) )
))
(declare-datatypes ((ValueCell!581 0))(
  ( (ValueCellFull!581 (v!1902 V!1907)) (EmptyCell!581) )
))
(declare-datatypes ((array!2331 0))(
  ( (array!2332 (arr!1113 (Array (_ BitVec 32) ValueCell!581)) (size!1214 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2331)

(declare-fun mapRest!1888 () (Array (_ BitVec 32) ValueCell!581))

(declare-fun mapValue!1888 () ValueCell!581)

(declare-fun mapKey!1888 () (_ BitVec 32))

(assert (=> mapNonEmpty!1888 (= (arr!1113 _values!1501) (store mapRest!1888 mapKey!1888 mapValue!1888))))

(declare-fun b!34352 () Bool)

(declare-fun e!21803 () Bool)

(declare-fun tp_is_empty!1561 () Bool)

(assert (=> b!34352 (= e!21803 tp_is_empty!1561)))

(declare-fun res!20812 () Bool)

(assert (=> start!4444 (=> (not res!20812) (not e!21804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4444 (= res!20812 (validMask!0 mask!2294))))

(assert (=> start!4444 e!21804))

(assert (=> start!4444 true))

(assert (=> start!4444 tp!5059))

(declare-fun e!21806 () Bool)

(declare-fun array_inv!739 (array!2331) Bool)

(assert (=> start!4444 (and (array_inv!739 _values!1501) e!21806)))

(declare-fun array_inv!740 (array!2329) Bool)

(assert (=> start!4444 (array_inv!740 _keys!1833)))

(assert (=> start!4444 tp_is_empty!1561))

(declare-fun b!34353 () Bool)

(declare-fun res!20811 () Bool)

(assert (=> b!34353 (=> (not res!20811) (not e!21804))))

(declare-datatypes ((List!903 0))(
  ( (Nil!900) (Cons!899 (h!1466 (_ BitVec 64)) (t!3610 List!903)) )
))
(declare-fun arrayNoDuplicates!0 (array!2329 (_ BitVec 32) List!903) Bool)

(assert (=> b!34353 (= res!20811 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!900))))

(declare-fun b!34354 () Bool)

(assert (=> b!34354 (= e!21805 tp_is_empty!1561)))

(declare-fun b!34355 () Bool)

(assert (=> b!34355 (= e!21806 (and e!21803 mapRes!1888))))

(declare-fun condMapEmpty!1888 () Bool)

(declare-fun mapDefault!1888 () ValueCell!581)

