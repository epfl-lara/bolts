; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20860 () Bool)

(assert start!20860)

(declare-fun b_free!5501 () Bool)

(declare-fun b_next!5501 () Bool)

(assert (=> start!20860 (= b_free!5501 (not b_next!5501))))

(declare-fun tp!19543 () Bool)

(declare-fun b_and!12265 () Bool)

(assert (=> start!20860 (= tp!19543 b_and!12265)))

(declare-fun b!209136 () Bool)

(declare-fun res!101914 () Bool)

(declare-fun e!136300 () Bool)

(assert (=> b!209136 (=> (not res!101914) (not e!136300))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!209136 (= res!101914 (validKeyInArray!0 k!843))))

(declare-fun b!209137 () Bool)

(declare-fun res!101913 () Bool)

(assert (=> b!209137 (=> (not res!101913) (not e!136300))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9924 0))(
  ( (array!9925 (arr!4712 (Array (_ BitVec 32) (_ BitVec 64))) (size!5037 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9924)

(assert (=> b!209137 (= res!101913 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5037 _keys!825))))))

(declare-fun b!209138 () Bool)

(declare-fun res!101909 () Bool)

(assert (=> b!209138 (=> (not res!101909) (not e!136300))))

(declare-datatypes ((List!3037 0))(
  ( (Nil!3034) (Cons!3033 (h!3675 (_ BitVec 64)) (t!7976 List!3037)) )
))
(declare-fun arrayNoDuplicates!0 (array!9924 (_ BitVec 32) List!3037) Bool)

(assert (=> b!209138 (= res!101909 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3034))))

(declare-fun b!209139 () Bool)

(declare-fun e!136298 () Bool)

(declare-fun tp_is_empty!5363 () Bool)

(assert (=> b!209139 (= e!136298 tp_is_empty!5363)))

(declare-fun b!209141 () Bool)

(assert (=> b!209141 (= e!136300 false)))

(declare-datatypes ((V!6797 0))(
  ( (V!6798 (val!2726 Int)) )
))
(declare-datatypes ((ValueCell!2338 0))(
  ( (ValueCellFull!2338 (v!4692 V!6797)) (EmptyCell!2338) )
))
(declare-datatypes ((array!9926 0))(
  ( (array!9927 (arr!4713 (Array (_ BitVec 32) ValueCell!2338)) (size!5038 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9926)

(declare-datatypes ((tuple2!4118 0))(
  ( (tuple2!4119 (_1!2069 (_ BitVec 64)) (_2!2069 V!6797)) )
))
(declare-datatypes ((List!3038 0))(
  ( (Nil!3035) (Cons!3034 (h!3676 tuple2!4118) (t!7977 List!3038)) )
))
(declare-datatypes ((ListLongMap!3045 0))(
  ( (ListLongMap!3046 (toList!1538 List!3038)) )
))
(declare-fun lt!106957 () ListLongMap!3045)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun v!520 () V!6797)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6797)

(declare-fun zeroValue!615 () V!6797)

(declare-fun getCurrentListMapNoExtraKeys!471 (array!9924 array!9926 (_ BitVec 32) (_ BitVec 32) V!6797 V!6797 (_ BitVec 32) Int) ListLongMap!3045)

(assert (=> b!209141 (= lt!106957 (getCurrentListMapNoExtraKeys!471 _keys!825 (array!9927 (store (arr!4713 _values!649) i!601 (ValueCellFull!2338 v!520)) (size!5038 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106956 () ListLongMap!3045)

(assert (=> b!209141 (= lt!106956 (getCurrentListMapNoExtraKeys!471 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapNonEmpty!9113 () Bool)

(declare-fun mapRes!9113 () Bool)

(declare-fun tp!19544 () Bool)

(assert (=> mapNonEmpty!9113 (= mapRes!9113 (and tp!19544 e!136298))))

(declare-fun mapKey!9113 () (_ BitVec 32))

(declare-fun mapValue!9113 () ValueCell!2338)

(declare-fun mapRest!9113 () (Array (_ BitVec 32) ValueCell!2338))

(assert (=> mapNonEmpty!9113 (= (arr!4713 _values!649) (store mapRest!9113 mapKey!9113 mapValue!9113))))

(declare-fun b!209142 () Bool)

(declare-fun res!101911 () Bool)

(assert (=> b!209142 (=> (not res!101911) (not e!136300))))

(assert (=> b!209142 (= res!101911 (= (select (arr!4712 _keys!825) i!601) k!843))))

(declare-fun b!209143 () Bool)

(declare-fun e!136297 () Bool)

(assert (=> b!209143 (= e!136297 tp_is_empty!5363)))

(declare-fun b!209144 () Bool)

(declare-fun e!136299 () Bool)

(assert (=> b!209144 (= e!136299 (and e!136297 mapRes!9113))))

(declare-fun condMapEmpty!9113 () Bool)

(declare-fun mapDefault!9113 () ValueCell!2338)

