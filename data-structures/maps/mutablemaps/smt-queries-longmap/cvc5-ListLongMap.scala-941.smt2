; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20754 () Bool)

(assert start!20754)

(declare-fun b_free!5401 () Bool)

(declare-fun b_next!5401 () Bool)

(assert (=> start!20754 (= b_free!5401 (not b_next!5401))))

(declare-fun tp!19234 () Bool)

(declare-fun b_and!12165 () Bool)

(assert (=> start!20754 (= tp!19234 b_and!12165)))

(declare-fun b!207582 () Bool)

(declare-fun e!135504 () Bool)

(assert (=> b!207582 (= e!135504 (not true))))

(declare-datatypes ((V!6657 0))(
  ( (V!6658 (val!2673 Int)) )
))
(declare-datatypes ((tuple2!4052 0))(
  ( (tuple2!4053 (_1!2036 (_ BitVec 64)) (_2!2036 V!6657)) )
))
(declare-datatypes ((List!2969 0))(
  ( (Nil!2966) (Cons!2965 (h!3607 tuple2!4052) (t!7908 List!2969)) )
))
(declare-datatypes ((ListLongMap!2979 0))(
  ( (ListLongMap!2980 (toList!1505 List!2969)) )
))
(declare-fun lt!106433 () ListLongMap!2979)

(declare-datatypes ((ValueCell!2285 0))(
  ( (ValueCellFull!2285 (v!4639 V!6657)) (EmptyCell!2285) )
))
(declare-datatypes ((array!9720 0))(
  ( (array!9721 (arr!4610 (Array (_ BitVec 32) ValueCell!2285)) (size!4935 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9720)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((array!9722 0))(
  ( (array!9723 (arr!4611 (Array (_ BitVec 32) (_ BitVec 64))) (size!4936 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9722)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6657)

(declare-fun zeroValue!615 () V!6657)

(declare-fun getCurrentListMap!1067 (array!9722 array!9720 (_ BitVec 32) (_ BitVec 32) V!6657 V!6657 (_ BitVec 32) Int) ListLongMap!2979)

(assert (=> b!207582 (= lt!106433 (getCurrentListMap!1067 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106435 () array!9720)

(declare-fun lt!106438 () ListLongMap!2979)

(assert (=> b!207582 (= lt!106438 (getCurrentListMap!1067 _keys!825 lt!106435 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106434 () ListLongMap!2979)

(declare-fun lt!106432 () ListLongMap!2979)

(assert (=> b!207582 (and (= lt!106434 lt!106432) (= lt!106432 lt!106434))))

(declare-fun lt!106437 () ListLongMap!2979)

(declare-fun v!520 () V!6657)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun +!522 (ListLongMap!2979 tuple2!4052) ListLongMap!2979)

(assert (=> b!207582 (= lt!106432 (+!522 lt!106437 (tuple2!4053 k!843 v!520)))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6339 0))(
  ( (Unit!6340) )
))
(declare-fun lt!106436 () Unit!6339)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!180 (array!9722 array!9720 (_ BitVec 32) (_ BitVec 32) V!6657 V!6657 (_ BitVec 32) (_ BitVec 64) V!6657 (_ BitVec 32) Int) Unit!6339)

(assert (=> b!207582 (= lt!106436 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!180 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!438 (array!9722 array!9720 (_ BitVec 32) (_ BitVec 32) V!6657 V!6657 (_ BitVec 32) Int) ListLongMap!2979)

(assert (=> b!207582 (= lt!106434 (getCurrentListMapNoExtraKeys!438 _keys!825 lt!106435 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207582 (= lt!106435 (array!9721 (store (arr!4610 _values!649) i!601 (ValueCellFull!2285 v!520)) (size!4935 _values!649)))))

(assert (=> b!207582 (= lt!106437 (getCurrentListMapNoExtraKeys!438 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!207583 () Bool)

(declare-fun res!100835 () Bool)

(assert (=> b!207583 (=> (not res!100835) (not e!135504))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207583 (= res!100835 (validKeyInArray!0 k!843))))

(declare-fun b!207584 () Bool)

(declare-fun e!135503 () Bool)

(declare-fun e!135505 () Bool)

(declare-fun mapRes!8954 () Bool)

(assert (=> b!207584 (= e!135503 (and e!135505 mapRes!8954))))

(declare-fun condMapEmpty!8954 () Bool)

(declare-fun mapDefault!8954 () ValueCell!2285)

