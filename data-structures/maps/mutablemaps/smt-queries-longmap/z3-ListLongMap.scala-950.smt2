; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20810 () Bool)

(assert start!20810)

(declare-fun b_free!5451 () Bool)

(declare-fun b_next!5451 () Bool)

(assert (=> start!20810 (= b_free!5451 (not b_next!5451))))

(declare-fun tp!19393 () Bool)

(declare-fun b_and!12215 () Bool)

(assert (=> start!20810 (= tp!19393 b_and!12215)))

(declare-fun b!208386 () Bool)

(declare-fun res!101386 () Bool)

(declare-fun e!135921 () Bool)

(assert (=> b!208386 (=> (not res!101386) (not e!135921))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!208386 (= res!101386 (validKeyInArray!0 k0!843))))

(declare-fun b!208387 () Bool)

(declare-fun res!101385 () Bool)

(assert (=> b!208387 (=> (not res!101385) (not e!135921))))

(declare-datatypes ((array!9828 0))(
  ( (array!9829 (arr!4664 (Array (_ BitVec 32) (_ BitVec 64))) (size!4989 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9828)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9828 (_ BitVec 32)) Bool)

(assert (=> b!208387 (= res!101385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!208389 () Bool)

(declare-fun e!135923 () Bool)

(declare-fun tp_is_empty!5313 () Bool)

(assert (=> b!208389 (= e!135923 tp_is_empty!5313)))

(declare-fun mapNonEmpty!9038 () Bool)

(declare-fun mapRes!9038 () Bool)

(declare-fun tp!19394 () Bool)

(assert (=> mapNonEmpty!9038 (= mapRes!9038 (and tp!19394 e!135923))))

(declare-datatypes ((V!6731 0))(
  ( (V!6732 (val!2701 Int)) )
))
(declare-datatypes ((ValueCell!2313 0))(
  ( (ValueCellFull!2313 (v!4667 V!6731)) (EmptyCell!2313) )
))
(declare-fun mapValue!9038 () ValueCell!2313)

(declare-datatypes ((array!9830 0))(
  ( (array!9831 (arr!4665 (Array (_ BitVec 32) ValueCell!2313)) (size!4990 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9830)

(declare-fun mapRest!9038 () (Array (_ BitVec 32) ValueCell!2313))

(declare-fun mapKey!9038 () (_ BitVec 32))

(assert (=> mapNonEmpty!9038 (= (arr!4665 _values!649) (store mapRest!9038 mapKey!9038 mapValue!9038))))

(declare-fun b!208390 () Bool)

(declare-fun res!101384 () Bool)

(assert (=> b!208390 (=> (not res!101384) (not e!135921))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!208390 (= res!101384 (and (= (size!4990 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4989 _keys!825) (size!4990 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!208391 () Bool)

(declare-fun res!101388 () Bool)

(assert (=> b!208391 (=> (not res!101388) (not e!135921))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!208391 (= res!101388 (= (select (arr!4664 _keys!825) i!601) k0!843))))

(declare-fun mapIsEmpty!9038 () Bool)

(assert (=> mapIsEmpty!9038 mapRes!9038))

(declare-fun b!208392 () Bool)

(declare-fun res!101383 () Bool)

(assert (=> b!208392 (=> (not res!101383) (not e!135921))))

(declare-datatypes ((List!3009 0))(
  ( (Nil!3006) (Cons!3005 (h!3647 (_ BitVec 64)) (t!7948 List!3009)) )
))
(declare-fun arrayNoDuplicates!0 (array!9828 (_ BitVec 32) List!3009) Bool)

(assert (=> b!208392 (= res!101383 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3006))))

(declare-fun b!208393 () Bool)

(declare-fun res!101389 () Bool)

(assert (=> b!208393 (=> (not res!101389) (not e!135921))))

(assert (=> b!208393 (= res!101389 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4989 _keys!825))))))

(declare-fun res!101387 () Bool)

(assert (=> start!20810 (=> (not res!101387) (not e!135921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20810 (= res!101387 (validMask!0 mask!1149))))

(assert (=> start!20810 e!135921))

(declare-fun e!135924 () Bool)

(declare-fun array_inv!3085 (array!9830) Bool)

(assert (=> start!20810 (and (array_inv!3085 _values!649) e!135924)))

(assert (=> start!20810 true))

(assert (=> start!20810 tp_is_empty!5313))

(declare-fun array_inv!3086 (array!9828) Bool)

(assert (=> start!20810 (array_inv!3086 _keys!825)))

(assert (=> start!20810 tp!19393))

(declare-fun b!208388 () Bool)

(assert (=> b!208388 (= e!135921 false)))

(declare-datatypes ((tuple2!4090 0))(
  ( (tuple2!4091 (_1!2055 (_ BitVec 64)) (_2!2055 V!6731)) )
))
(declare-datatypes ((List!3010 0))(
  ( (Nil!3007) (Cons!3006 (h!3648 tuple2!4090) (t!7949 List!3010)) )
))
(declare-datatypes ((ListLongMap!3017 0))(
  ( (ListLongMap!3018 (toList!1524 List!3010)) )
))
(declare-fun lt!106806 () ListLongMap!3017)

(declare-fun v!520 () V!6731)

(declare-fun zeroValue!615 () V!6731)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6731)

(declare-fun getCurrentListMapNoExtraKeys!457 (array!9828 array!9830 (_ BitVec 32) (_ BitVec 32) V!6731 V!6731 (_ BitVec 32) Int) ListLongMap!3017)

(assert (=> b!208388 (= lt!106806 (getCurrentListMapNoExtraKeys!457 _keys!825 (array!9831 (store (arr!4665 _values!649) i!601 (ValueCellFull!2313 v!520)) (size!4990 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106807 () ListLongMap!3017)

(assert (=> b!208388 (= lt!106807 (getCurrentListMapNoExtraKeys!457 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!208394 () Bool)

(declare-fun e!135922 () Bool)

(assert (=> b!208394 (= e!135922 tp_is_empty!5313)))

(declare-fun b!208395 () Bool)

(assert (=> b!208395 (= e!135924 (and e!135922 mapRes!9038))))

(declare-fun condMapEmpty!9038 () Bool)

(declare-fun mapDefault!9038 () ValueCell!2313)

(assert (=> b!208395 (= condMapEmpty!9038 (= (arr!4665 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2313)) mapDefault!9038)))))

(assert (= (and start!20810 res!101387) b!208390))

(assert (= (and b!208390 res!101384) b!208387))

(assert (= (and b!208387 res!101385) b!208392))

(assert (= (and b!208392 res!101383) b!208393))

(assert (= (and b!208393 res!101389) b!208386))

(assert (= (and b!208386 res!101386) b!208391))

(assert (= (and b!208391 res!101388) b!208388))

(assert (= (and b!208395 condMapEmpty!9038) mapIsEmpty!9038))

(assert (= (and b!208395 (not condMapEmpty!9038)) mapNonEmpty!9038))

(get-info :version)

(assert (= (and mapNonEmpty!9038 ((_ is ValueCellFull!2313) mapValue!9038)) b!208389))

(assert (= (and b!208395 ((_ is ValueCellFull!2313) mapDefault!9038)) b!208394))

(assert (= start!20810 b!208395))

(declare-fun m!236041 () Bool)

(assert (=> b!208387 m!236041))

(declare-fun m!236043 () Bool)

(assert (=> b!208391 m!236043))

(declare-fun m!236045 () Bool)

(assert (=> b!208392 m!236045))

(declare-fun m!236047 () Bool)

(assert (=> b!208386 m!236047))

(declare-fun m!236049 () Bool)

(assert (=> mapNonEmpty!9038 m!236049))

(declare-fun m!236051 () Bool)

(assert (=> b!208388 m!236051))

(declare-fun m!236053 () Bool)

(assert (=> b!208388 m!236053))

(declare-fun m!236055 () Bool)

(assert (=> b!208388 m!236055))

(declare-fun m!236057 () Bool)

(assert (=> start!20810 m!236057))

(declare-fun m!236059 () Bool)

(assert (=> start!20810 m!236059))

(declare-fun m!236061 () Bool)

(assert (=> start!20810 m!236061))

(check-sat (not b!208386) (not b!208392) tp_is_empty!5313 (not b!208387) (not start!20810) (not b_next!5451) (not mapNonEmpty!9038) b_and!12215 (not b!208388))
(check-sat b_and!12215 (not b_next!5451))
