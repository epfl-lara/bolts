; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21030 () Bool)

(assert start!21030)

(declare-fun b_free!5569 () Bool)

(declare-fun b_next!5569 () Bool)

(assert (=> start!21030 (= b_free!5569 (not b_next!5569))))

(declare-fun tp!19762 () Bool)

(declare-fun b_and!12393 () Bool)

(assert (=> start!21030 (= tp!19762 b_and!12393)))

(declare-fun b!211235 () Bool)

(declare-fun e!137517 () Bool)

(declare-fun e!137521 () Bool)

(assert (=> b!211235 (= e!137517 (not e!137521))))

(declare-fun res!103165 () Bool)

(assert (=> b!211235 (=> res!103165 e!137521)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!211235 (= res!103165 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6889 0))(
  ( (V!6890 (val!2760 Int)) )
))
(declare-datatypes ((ValueCell!2372 0))(
  ( (ValueCellFull!2372 (v!4746 V!6889)) (EmptyCell!2372) )
))
(declare-datatypes ((array!10062 0))(
  ( (array!10063 (arr!4776 (Array (_ BitVec 32) ValueCell!2372)) (size!5101 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10062)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6889)

(declare-fun defaultEntry!657 () Int)

(declare-datatypes ((tuple2!4168 0))(
  ( (tuple2!4169 (_1!2094 (_ BitVec 64)) (_2!2094 V!6889)) )
))
(declare-datatypes ((List!3085 0))(
  ( (Nil!3082) (Cons!3081 (h!3723 tuple2!4168) (t!8034 List!3085)) )
))
(declare-datatypes ((ListLongMap!3095 0))(
  ( (ListLongMap!3096 (toList!1563 List!3085)) )
))
(declare-fun lt!108622 () ListLongMap!3095)

(declare-datatypes ((array!10064 0))(
  ( (array!10065 (arr!4777 (Array (_ BitVec 32) (_ BitVec 64))) (size!5102 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10064)

(declare-fun minValue!615 () V!6889)

(declare-fun getCurrentListMap!1092 (array!10064 array!10062 (_ BitVec 32) (_ BitVec 32) V!6889 V!6889 (_ BitVec 32) Int) ListLongMap!3095)

(assert (=> b!211235 (= lt!108622 (getCurrentListMap!1092 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108621 () array!10062)

(declare-fun lt!108623 () ListLongMap!3095)

(assert (=> b!211235 (= lt!108623 (getCurrentListMap!1092 _keys!825 lt!108621 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108626 () ListLongMap!3095)

(declare-fun lt!108627 () ListLongMap!3095)

(assert (=> b!211235 (and (= lt!108626 lt!108627) (= lt!108627 lt!108626))))

(declare-fun lt!108624 () ListLongMap!3095)

(declare-fun v!520 () V!6889)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun +!556 (ListLongMap!3095 tuple2!4168) ListLongMap!3095)

(assert (=> b!211235 (= lt!108627 (+!556 lt!108624 (tuple2!4169 k!843 v!520)))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6411 0))(
  ( (Unit!6412) )
))
(declare-fun lt!108628 () Unit!6411)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!209 (array!10064 array!10062 (_ BitVec 32) (_ BitVec 32) V!6889 V!6889 (_ BitVec 32) (_ BitVec 64) V!6889 (_ BitVec 32) Int) Unit!6411)

(assert (=> b!211235 (= lt!108628 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!209 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!491 (array!10064 array!10062 (_ BitVec 32) (_ BitVec 32) V!6889 V!6889 (_ BitVec 32) Int) ListLongMap!3095)

(assert (=> b!211235 (= lt!108626 (getCurrentListMapNoExtraKeys!491 _keys!825 lt!108621 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!211235 (= lt!108621 (array!10063 (store (arr!4776 _values!649) i!601 (ValueCellFull!2372 v!520)) (size!5101 _values!649)))))

(assert (=> b!211235 (= lt!108624 (getCurrentListMapNoExtraKeys!491 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!211237 () Bool)

(declare-fun e!137516 () Bool)

(declare-fun e!137519 () Bool)

(declare-fun mapRes!9230 () Bool)

(assert (=> b!211237 (= e!137516 (and e!137519 mapRes!9230))))

(declare-fun condMapEmpty!9230 () Bool)

(declare-fun mapDefault!9230 () ValueCell!2372)

