; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20932 () Bool)

(assert start!20932)

(declare-fun b_free!5533 () Bool)

(declare-fun b_next!5533 () Bool)

(assert (=> start!20932 (= b_free!5533 (not b_next!5533))))

(declare-fun tp!19646 () Bool)

(declare-fun b_and!12321 () Bool)

(assert (=> start!20932 (= tp!19646 b_and!12321)))

(declare-fun mapIsEmpty!9167 () Bool)

(declare-fun mapRes!9167 () Bool)

(assert (=> mapIsEmpty!9167 mapRes!9167))

(declare-datatypes ((V!6841 0))(
  ( (V!6842 (val!2742 Int)) )
))
(declare-datatypes ((tuple2!4140 0))(
  ( (tuple2!4141 (_1!2080 (_ BitVec 64)) (_2!2080 V!6841)) )
))
(declare-fun lt!107522 () tuple2!4140)

(declare-datatypes ((List!3059 0))(
  ( (Nil!3056) (Cons!3055 (h!3697 tuple2!4140) (t!8002 List!3059)) )
))
(declare-datatypes ((ListLongMap!3067 0))(
  ( (ListLongMap!3068 (toList!1549 List!3059)) )
))
(declare-fun lt!107520 () ListLongMap!3067)

(declare-fun lt!107514 () tuple2!4140)

(declare-fun e!136798 () Bool)

(declare-fun b!210019 () Bool)

(declare-fun lt!107516 () ListLongMap!3067)

(declare-fun +!542 (ListLongMap!3067 tuple2!4140) ListLongMap!3067)

(assert (=> b!210019 (= e!136798 (= lt!107520 (+!542 (+!542 lt!107516 lt!107522) lt!107514)))))

(declare-fun b!210020 () Bool)

(declare-fun res!102430 () Bool)

(declare-fun e!136802 () Bool)

(assert (=> b!210020 (=> (not res!102430) (not e!136802))))

(declare-datatypes ((array!9988 0))(
  ( (array!9989 (arr!4742 (Array (_ BitVec 32) (_ BitVec 64))) (size!5067 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9988)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!210020 (= res!102430 (= (select (arr!4742 _keys!825) i!601) k!843))))

(declare-fun b!210021 () Bool)

(declare-fun res!102433 () Bool)

(assert (=> b!210021 (=> (not res!102433) (not e!136802))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!210021 (= res!102433 (validKeyInArray!0 k!843))))

(declare-fun mapNonEmpty!9167 () Bool)

(declare-fun tp!19645 () Bool)

(declare-fun e!136797 () Bool)

(assert (=> mapNonEmpty!9167 (= mapRes!9167 (and tp!19645 e!136797))))

(declare-fun mapKey!9167 () (_ BitVec 32))

(declare-datatypes ((ValueCell!2354 0))(
  ( (ValueCellFull!2354 (v!4716 V!6841)) (EmptyCell!2354) )
))
(declare-datatypes ((array!9990 0))(
  ( (array!9991 (arr!4743 (Array (_ BitVec 32) ValueCell!2354)) (size!5068 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9990)

(declare-fun mapRest!9167 () (Array (_ BitVec 32) ValueCell!2354))

(declare-fun mapValue!9167 () ValueCell!2354)

(assert (=> mapNonEmpty!9167 (= (arr!4743 _values!649) (store mapRest!9167 mapKey!9167 mapValue!9167))))

(declare-fun lt!107519 () ListLongMap!3067)

(declare-fun e!136796 () Bool)

(declare-fun lt!107517 () ListLongMap!3067)

(declare-fun b!210022 () Bool)

(assert (=> b!210022 (= e!136796 (= lt!107519 (+!542 (+!542 lt!107517 lt!107522) lt!107514)))))

(assert (=> b!210022 e!136798))

(declare-fun res!102432 () Bool)

(assert (=> b!210022 (=> (not res!102432) (not e!136798))))

(declare-fun lt!107518 () ListLongMap!3067)

(assert (=> b!210022 (= res!102432 (= lt!107519 (+!542 (+!542 lt!107518 lt!107522) lt!107514)))))

(declare-fun minValue!615 () V!6841)

(assert (=> b!210022 (= lt!107514 (tuple2!4141 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun zeroValue!615 () V!6841)

(assert (=> b!210022 (= lt!107522 (tuple2!4141 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!210023 () Bool)

(declare-fun res!102431 () Bool)

(assert (=> b!210023 (=> (not res!102431) (not e!136802))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9988 (_ BitVec 32)) Bool)

(assert (=> b!210023 (= res!102431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!210024 () Bool)

(declare-fun res!102436 () Bool)

(assert (=> b!210024 (=> (not res!102436) (not e!136802))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!210024 (= res!102436 (and (= (size!5068 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5067 _keys!825) (size!5068 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!210025 () Bool)

(declare-fun e!136799 () Bool)

(declare-fun e!136801 () Bool)

(assert (=> b!210025 (= e!136799 (and e!136801 mapRes!9167))))

(declare-fun condMapEmpty!9167 () Bool)

(declare-fun mapDefault!9167 () ValueCell!2354)

