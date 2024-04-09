; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21184 () Bool)

(assert start!21184)

(declare-fun b_free!5623 () Bool)

(declare-fun b_next!5623 () Bool)

(assert (=> start!21184 (= b_free!5623 (not b_next!5623))))

(declare-fun tp!19940 () Bool)

(declare-fun b_and!12507 () Bool)

(assert (=> start!21184 (= tp!19940 b_and!12507)))

(declare-fun b!213144 () Bool)

(declare-fun res!104292 () Bool)

(declare-fun e!138655 () Bool)

(assert (=> b!213144 (=> (not res!104292) (not e!138655))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!213144 (= res!104292 (validKeyInArray!0 k!843))))

(declare-fun b!213145 () Bool)

(declare-fun e!138654 () Bool)

(declare-fun tp_is_empty!5485 () Bool)

(assert (=> b!213145 (= e!138654 tp_is_empty!5485)))

(declare-fun b!213146 () Bool)

(declare-fun e!138656 () Bool)

(declare-fun e!138652 () Bool)

(assert (=> b!213146 (= e!138656 e!138652)))

(declare-fun res!104293 () Bool)

(assert (=> b!213146 (=> res!104293 e!138652)))

(assert (=> b!213146 (= res!104293 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!6961 0))(
  ( (V!6962 (val!2787 Int)) )
))
(declare-datatypes ((tuple2!4216 0))(
  ( (tuple2!4217 (_1!2118 (_ BitVec 64)) (_2!2118 V!6961)) )
))
(declare-datatypes ((List!3127 0))(
  ( (Nil!3124) (Cons!3123 (h!3765 tuple2!4216) (t!8086 List!3127)) )
))
(declare-datatypes ((ListLongMap!3143 0))(
  ( (ListLongMap!3144 (toList!1587 List!3127)) )
))
(declare-fun lt!110098 () ListLongMap!3143)

(declare-fun lt!110091 () ListLongMap!3143)

(assert (=> b!213146 (= lt!110098 lt!110091)))

(declare-fun lt!110088 () ListLongMap!3143)

(declare-fun lt!110095 () tuple2!4216)

(declare-fun +!580 (ListLongMap!3143 tuple2!4216) ListLongMap!3143)

(assert (=> b!213146 (= lt!110091 (+!580 lt!110088 lt!110095))))

(declare-fun lt!110094 () ListLongMap!3143)

(declare-fun lt!110090 () ListLongMap!3143)

(assert (=> b!213146 (= lt!110094 lt!110090)))

(declare-fun lt!110089 () ListLongMap!3143)

(assert (=> b!213146 (= lt!110090 (+!580 lt!110089 lt!110095))))

(declare-fun lt!110097 () ListLongMap!3143)

(assert (=> b!213146 (= lt!110094 (+!580 lt!110097 lt!110095))))

(declare-fun minValue!615 () V!6961)

(assert (=> b!213146 (= lt!110095 (tuple2!4217 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!213147 () Bool)

(declare-fun res!104288 () Bool)

(assert (=> b!213147 (=> (not res!104288) (not e!138655))))

(declare-datatypes ((array!10174 0))(
  ( (array!10175 (arr!4827 (Array (_ BitVec 32) (_ BitVec 64))) (size!5152 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10174)

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!213147 (= res!104288 (= (select (arr!4827 _keys!825) i!601) k!843))))

(declare-fun b!213148 () Bool)

(declare-fun e!138651 () Bool)

(declare-fun e!138653 () Bool)

(declare-fun mapRes!9326 () Bool)

(assert (=> b!213148 (= e!138651 (and e!138653 mapRes!9326))))

(declare-fun condMapEmpty!9326 () Bool)

(declare-datatypes ((ValueCell!2399 0))(
  ( (ValueCellFull!2399 (v!4793 V!6961)) (EmptyCell!2399) )
))
(declare-datatypes ((array!10176 0))(
  ( (array!10177 (arr!4828 (Array (_ BitVec 32) ValueCell!2399)) (size!5153 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10176)

(declare-fun mapDefault!9326 () ValueCell!2399)

