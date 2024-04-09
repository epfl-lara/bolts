; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!718 () Bool)

(assert start!718)

(declare-fun b_free!151 () Bool)

(declare-fun b_next!151 () Bool)

(assert (=> start!718 (= b_free!151 (not b_next!151))))

(declare-fun tp!676 () Bool)

(declare-fun b_and!293 () Bool)

(assert (=> start!718 (= tp!676 b_and!293)))

(declare-fun b!4958 () Bool)

(declare-fun e!2651 () Bool)

(assert (=> b!4958 (= e!2651 (not true))))

(declare-fun e!2652 () Bool)

(assert (=> b!4958 e!2652))

(declare-fun c!299 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(assert (=> b!4958 (= c!299 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!483 0))(
  ( (V!484 (val!120 Int)) )
))
(declare-datatypes ((ValueCell!98 0))(
  ( (ValueCellFull!98 (v!1209 V!483)) (EmptyCell!98) )
))
(declare-datatypes ((array!391 0))(
  ( (array!392 (arr!186 (Array (_ BitVec 32) ValueCell!98)) (size!248 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!391)

(declare-fun minValue!1434 () V!483)

(declare-datatypes ((array!393 0))(
  ( (array!394 (arr!187 (Array (_ BitVec 32) (_ BitVec 64))) (size!249 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!393)

(declare-fun zeroValue!1434 () V!483)

(declare-fun defaultEntry!1495 () Int)

(declare-datatypes ((Unit!53 0))(
  ( (Unit!54) )
))
(declare-fun lt!807 () Unit!53)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun lemmaKeyInListMapIsInArray!14 (array!393 array!391 (_ BitVec 32) (_ BitVec 32) V!483 V!483 (_ BitVec 64) Int) Unit!53)

(assert (=> b!4958 (= lt!807 (lemmaKeyInListMapIsInArray!14 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!4959 () Bool)

(declare-fun e!2650 () Bool)

(declare-fun tp_is_empty!229 () Bool)

(assert (=> b!4959 (= e!2650 tp_is_empty!229)))

(declare-fun b!4961 () Bool)

(declare-fun res!5991 () Bool)

(assert (=> b!4961 (=> (not res!5991) (not e!2651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!4961 (= res!5991 (validKeyInArray!0 k!1278))))

(declare-fun b!4962 () Bool)

(declare-fun res!5993 () Bool)

(assert (=> b!4962 (=> (not res!5993) (not e!2651))))

(declare-datatypes ((List!117 0))(
  ( (Nil!114) (Cons!113 (h!679 (_ BitVec 64)) (t!2248 List!117)) )
))
(declare-fun arrayNoDuplicates!0 (array!393 (_ BitVec 32) List!117) Bool)

(assert (=> b!4962 (= res!5993 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!114))))

(declare-fun b!4963 () Bool)

(declare-fun e!2654 () Bool)

(declare-fun mapRes!308 () Bool)

(assert (=> b!4963 (= e!2654 (and e!2650 mapRes!308))))

(declare-fun condMapEmpty!308 () Bool)

(declare-fun mapDefault!308 () ValueCell!98)

