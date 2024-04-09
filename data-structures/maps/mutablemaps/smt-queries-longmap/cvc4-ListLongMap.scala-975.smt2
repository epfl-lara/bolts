; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21104 () Bool)

(assert start!21104)

(declare-fun b_free!5603 () Bool)

(declare-fun b_next!5603 () Bool)

(assert (=> start!21104 (= b_free!5603 (not b_next!5603))))

(declare-fun tp!19870 () Bool)

(declare-fun b_and!12451 () Bool)

(assert (=> start!21104 (= tp!19870 b_and!12451)))

(declare-fun mapIsEmpty!9287 () Bool)

(declare-fun mapRes!9287 () Bool)

(assert (=> mapIsEmpty!9287 mapRes!9287))

(declare-fun b!212219 () Bool)

(declare-fun res!103777 () Bool)

(declare-fun e!138098 () Bool)

(assert (=> b!212219 (=> (not res!103777) (not e!138098))))

(declare-datatypes ((array!10132 0))(
  ( (array!10133 (arr!4809 (Array (_ BitVec 32) (_ BitVec 64))) (size!5134 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10132)

(declare-datatypes ((List!3113 0))(
  ( (Nil!3110) (Cons!3109 (h!3751 (_ BitVec 64)) (t!8066 List!3113)) )
))
(declare-fun arrayNoDuplicates!0 (array!10132 (_ BitVec 32) List!3113) Bool)

(assert (=> b!212219 (= res!103777 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3110))))

(declare-fun b!212220 () Bool)

(declare-fun res!103778 () Bool)

(assert (=> b!212220 (=> (not res!103778) (not e!138098))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!212220 (= res!103778 (= (select (arr!4809 _keys!825) i!601) k!843))))

(declare-fun b!212221 () Bool)

(declare-fun e!138095 () Bool)

(assert (=> b!212221 (= e!138098 (not e!138095))))

(declare-fun res!103776 () Bool)

(assert (=> b!212221 (=> res!103776 e!138095)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!212221 (= res!103776 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6933 0))(
  ( (V!6934 (val!2777 Int)) )
))
(declare-datatypes ((ValueCell!2389 0))(
  ( (ValueCellFull!2389 (v!4771 V!6933)) (EmptyCell!2389) )
))
(declare-datatypes ((array!10134 0))(
  ( (array!10135 (arr!4810 (Array (_ BitVec 32) ValueCell!2389)) (size!5135 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10134)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6933)

(declare-fun zeroValue!615 () V!6933)

(declare-datatypes ((tuple2!4200 0))(
  ( (tuple2!4201 (_1!2110 (_ BitVec 64)) (_2!2110 V!6933)) )
))
(declare-datatypes ((List!3114 0))(
  ( (Nil!3111) (Cons!3110 (h!3752 tuple2!4200) (t!8067 List!3114)) )
))
(declare-datatypes ((ListLongMap!3127 0))(
  ( (ListLongMap!3128 (toList!1579 List!3114)) )
))
(declare-fun lt!109396 () ListLongMap!3127)

(declare-fun getCurrentListMap!1107 (array!10132 array!10134 (_ BitVec 32) (_ BitVec 32) V!6933 V!6933 (_ BitVec 32) Int) ListLongMap!3127)

(assert (=> b!212221 (= lt!109396 (getCurrentListMap!1107 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109399 () ListLongMap!3127)

(declare-fun lt!109393 () array!10134)

(assert (=> b!212221 (= lt!109399 (getCurrentListMap!1107 _keys!825 lt!109393 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109394 () ListLongMap!3127)

(declare-fun lt!109395 () ListLongMap!3127)

(assert (=> b!212221 (and (= lt!109394 lt!109395) (= lt!109395 lt!109394))))

(declare-fun v!520 () V!6933)

(declare-fun lt!109397 () ListLongMap!3127)

(declare-fun +!572 (ListLongMap!3127 tuple2!4200) ListLongMap!3127)

(assert (=> b!212221 (= lt!109395 (+!572 lt!109397 (tuple2!4201 k!843 v!520)))))

(declare-datatypes ((Unit!6445 0))(
  ( (Unit!6446) )
))
(declare-fun lt!109398 () Unit!6445)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!224 (array!10132 array!10134 (_ BitVec 32) (_ BitVec 32) V!6933 V!6933 (_ BitVec 32) (_ BitVec 64) V!6933 (_ BitVec 32) Int) Unit!6445)

(assert (=> b!212221 (= lt!109398 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!224 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!506 (array!10132 array!10134 (_ BitVec 32) (_ BitVec 32) V!6933 V!6933 (_ BitVec 32) Int) ListLongMap!3127)

(assert (=> b!212221 (= lt!109394 (getCurrentListMapNoExtraKeys!506 _keys!825 lt!109393 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!212221 (= lt!109393 (array!10135 (store (arr!4810 _values!649) i!601 (ValueCellFull!2389 v!520)) (size!5135 _values!649)))))

(assert (=> b!212221 (= lt!109397 (getCurrentListMapNoExtraKeys!506 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!212222 () Bool)

(declare-fun e!138099 () Bool)

(declare-fun tp_is_empty!5465 () Bool)

(assert (=> b!212222 (= e!138099 tp_is_empty!5465)))

(declare-fun res!103781 () Bool)

(assert (=> start!21104 (=> (not res!103781) (not e!138098))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21104 (= res!103781 (validMask!0 mask!1149))))

(assert (=> start!21104 e!138098))

(declare-fun e!138097 () Bool)

(declare-fun array_inv!3173 (array!10134) Bool)

(assert (=> start!21104 (and (array_inv!3173 _values!649) e!138097)))

(assert (=> start!21104 true))

(assert (=> start!21104 tp_is_empty!5465))

(declare-fun array_inv!3174 (array!10132) Bool)

(assert (=> start!21104 (array_inv!3174 _keys!825)))

(assert (=> start!21104 tp!19870))

(declare-fun b!212223 () Bool)

(declare-fun res!103780 () Bool)

(assert (=> b!212223 (=> (not res!103780) (not e!138098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10132 (_ BitVec 32)) Bool)

(assert (=> b!212223 (= res!103780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!212224 () Bool)

(declare-fun res!103782 () Bool)

(assert (=> b!212224 (=> (not res!103782) (not e!138098))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!212224 (= res!103782 (validKeyInArray!0 k!843))))

(declare-fun mapNonEmpty!9287 () Bool)

(declare-fun tp!19871 () Bool)

(assert (=> mapNonEmpty!9287 (= mapRes!9287 (and tp!19871 e!138099))))

(declare-fun mapValue!9287 () ValueCell!2389)

(declare-fun mapRest!9287 () (Array (_ BitVec 32) ValueCell!2389))

(declare-fun mapKey!9287 () (_ BitVec 32))

(assert (=> mapNonEmpty!9287 (= (arr!4810 _values!649) (store mapRest!9287 mapKey!9287 mapValue!9287))))

(declare-fun b!212225 () Bool)

(declare-fun res!103779 () Bool)

(assert (=> b!212225 (=> (not res!103779) (not e!138098))))

(assert (=> b!212225 (= res!103779 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5134 _keys!825))))))

(declare-fun b!212226 () Bool)

(declare-fun e!138100 () Bool)

(assert (=> b!212226 (= e!138100 tp_is_empty!5465)))

(declare-fun b!212227 () Bool)

(assert (=> b!212227 (= e!138095 (= lt!109399 (+!572 lt!109394 (tuple2!4201 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun b!212228 () Bool)

(assert (=> b!212228 (= e!138097 (and e!138100 mapRes!9287))))

(declare-fun condMapEmpty!9287 () Bool)

(declare-fun mapDefault!9287 () ValueCell!2389)

