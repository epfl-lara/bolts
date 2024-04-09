; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20790 () Bool)

(assert start!20790)

(declare-fun b_free!5431 () Bool)

(declare-fun b_next!5431 () Bool)

(assert (=> start!20790 (= b_free!5431 (not b_next!5431))))

(declare-fun tp!19333 () Bool)

(declare-fun b_and!12195 () Bool)

(assert (=> start!20790 (= tp!19333 b_and!12195)))

(declare-fun mapNonEmpty!9008 () Bool)

(declare-fun mapRes!9008 () Bool)

(declare-fun tp!19334 () Bool)

(declare-fun e!135772 () Bool)

(assert (=> mapNonEmpty!9008 (= mapRes!9008 (and tp!19334 e!135772))))

(declare-datatypes ((V!6705 0))(
  ( (V!6706 (val!2691 Int)) )
))
(declare-datatypes ((ValueCell!2303 0))(
  ( (ValueCellFull!2303 (v!4657 V!6705)) (EmptyCell!2303) )
))
(declare-fun mapValue!9008 () ValueCell!2303)

(declare-datatypes ((array!9790 0))(
  ( (array!9791 (arr!4645 (Array (_ BitVec 32) ValueCell!2303)) (size!4970 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9790)

(declare-fun mapRest!9008 () (Array (_ BitVec 32) ValueCell!2303))

(declare-fun mapKey!9008 () (_ BitVec 32))

(assert (=> mapNonEmpty!9008 (= (arr!4645 _values!649) (store mapRest!9008 mapKey!9008 mapValue!9008))))

(declare-fun b!208086 () Bool)

(declare-fun e!135774 () Bool)

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!208086 (= e!135774 (bvsge i!601 (size!4970 _values!649)))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((tuple2!4074 0))(
  ( (tuple2!4075 (_1!2047 (_ BitVec 64)) (_2!2047 V!6705)) )
))
(declare-datatypes ((List!2993 0))(
  ( (Nil!2990) (Cons!2989 (h!3631 tuple2!4074) (t!7932 List!2993)) )
))
(declare-datatypes ((ListLongMap!3001 0))(
  ( (ListLongMap!3002 (toList!1516 List!2993)) )
))
(declare-fun lt!106753 () ListLongMap!3001)

(declare-fun zeroValue!615 () V!6705)

(declare-datatypes ((array!9792 0))(
  ( (array!9793 (arr!4646 (Array (_ BitVec 32) (_ BitVec 64))) (size!4971 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9792)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6705)

(declare-fun getCurrentListMapNoExtraKeys!449 (array!9792 array!9790 (_ BitVec 32) (_ BitVec 32) V!6705 V!6705 (_ BitVec 32) Int) ListLongMap!3001)

(assert (=> b!208086 (= lt!106753 (getCurrentListMapNoExtraKeys!449 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!9008 () Bool)

(assert (=> mapIsEmpty!9008 mapRes!9008))

(declare-fun b!208087 () Bool)

(declare-fun res!101175 () Bool)

(assert (=> b!208087 (=> (not res!101175) (not e!135774))))

(assert (=> b!208087 (= res!101175 (and (= (size!4970 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4971 _keys!825) (size!4970 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!208088 () Bool)

(declare-fun res!101176 () Bool)

(assert (=> b!208088 (=> (not res!101176) (not e!135774))))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!208088 (= res!101176 (= (select (arr!4646 _keys!825) i!601) k!843))))

(declare-fun b!208089 () Bool)

(declare-fun res!101177 () Bool)

(assert (=> b!208089 (=> (not res!101177) (not e!135774))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!208089 (= res!101177 (validKeyInArray!0 k!843))))

(declare-fun b!208090 () Bool)

(declare-fun e!135775 () Bool)

(declare-fun tp_is_empty!5293 () Bool)

(assert (=> b!208090 (= e!135775 tp_is_empty!5293)))

(declare-fun b!208091 () Bool)

(assert (=> b!208091 (= e!135772 tp_is_empty!5293)))

(declare-fun b!208092 () Bool)

(declare-fun res!101174 () Bool)

(assert (=> b!208092 (=> (not res!101174) (not e!135774))))

(declare-datatypes ((List!2994 0))(
  ( (Nil!2991) (Cons!2990 (h!3632 (_ BitVec 64)) (t!7933 List!2994)) )
))
(declare-fun arrayNoDuplicates!0 (array!9792 (_ BitVec 32) List!2994) Bool)

(assert (=> b!208092 (= res!101174 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2991))))

(declare-fun res!101178 () Bool)

(assert (=> start!20790 (=> (not res!101178) (not e!135774))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20790 (= res!101178 (validMask!0 mask!1149))))

(assert (=> start!20790 e!135774))

(declare-fun e!135773 () Bool)

(declare-fun array_inv!3071 (array!9790) Bool)

(assert (=> start!20790 (and (array_inv!3071 _values!649) e!135773)))

(assert (=> start!20790 true))

(assert (=> start!20790 tp_is_empty!5293))

(declare-fun array_inv!3072 (array!9792) Bool)

(assert (=> start!20790 (array_inv!3072 _keys!825)))

(assert (=> start!20790 tp!19333))

(declare-fun b!208093 () Bool)

(assert (=> b!208093 (= e!135773 (and e!135775 mapRes!9008))))

(declare-fun condMapEmpty!9008 () Bool)

(declare-fun mapDefault!9008 () ValueCell!2303)

