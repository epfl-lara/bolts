; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20798 () Bool)

(assert start!20798)

(declare-fun b_free!5439 () Bool)

(declare-fun b_next!5439 () Bool)

(assert (=> start!20798 (= b_free!5439 (not b_next!5439))))

(declare-fun tp!19357 () Bool)

(declare-fun b_and!12203 () Bool)

(assert (=> start!20798 (= tp!19357 b_and!12203)))

(declare-fun b!208206 () Bool)

(declare-fun e!135834 () Bool)

(declare-fun e!135832 () Bool)

(declare-fun mapRes!9020 () Bool)

(assert (=> b!208206 (= e!135834 (and e!135832 mapRes!9020))))

(declare-fun condMapEmpty!9020 () Bool)

(declare-datatypes ((V!6715 0))(
  ( (V!6716 (val!2695 Int)) )
))
(declare-datatypes ((ValueCell!2307 0))(
  ( (ValueCellFull!2307 (v!4661 V!6715)) (EmptyCell!2307) )
))
(declare-datatypes ((array!9806 0))(
  ( (array!9807 (arr!4653 (Array (_ BitVec 32) ValueCell!2307)) (size!4978 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9806)

(declare-fun mapDefault!9020 () ValueCell!2307)

(assert (=> b!208206 (= condMapEmpty!9020 (= (arr!4653 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2307)) mapDefault!9020)))))

(declare-fun mapIsEmpty!9020 () Bool)

(assert (=> mapIsEmpty!9020 mapRes!9020))

(declare-fun b!208207 () Bool)

(declare-fun res!101263 () Bool)

(declare-fun e!135833 () Bool)

(assert (=> b!208207 (=> (not res!101263) (not e!135833))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9808 0))(
  ( (array!9809 (arr!4654 (Array (_ BitVec 32) (_ BitVec 64))) (size!4979 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9808)

(assert (=> b!208207 (= res!101263 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4979 _keys!825))))))

(declare-fun b!208208 () Bool)

(declare-fun tp_is_empty!5301 () Bool)

(assert (=> b!208208 (= e!135832 tp_is_empty!5301)))

(declare-fun b!208209 () Bool)

(declare-fun res!101257 () Bool)

(assert (=> b!208209 (=> (not res!101257) (not e!135833))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9808 (_ BitVec 32)) Bool)

(assert (=> b!208209 (= res!101257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!208210 () Bool)

(assert (=> b!208210 (= e!135833 (bvsgt #b00000000000000000000000000000000 (size!4979 _keys!825)))))

(declare-fun v!520 () V!6715)

(declare-fun zeroValue!615 () V!6715)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6715)

(declare-datatypes ((tuple2!4080 0))(
  ( (tuple2!4081 (_1!2050 (_ BitVec 64)) (_2!2050 V!6715)) )
))
(declare-datatypes ((List!3000 0))(
  ( (Nil!2997) (Cons!2996 (h!3638 tuple2!4080) (t!7939 List!3000)) )
))
(declare-datatypes ((ListLongMap!3007 0))(
  ( (ListLongMap!3008 (toList!1519 List!3000)) )
))
(declare-fun lt!106771 () ListLongMap!3007)

(declare-fun getCurrentListMapNoExtraKeys!452 (array!9808 array!9806 (_ BitVec 32) (_ BitVec 32) V!6715 V!6715 (_ BitVec 32) Int) ListLongMap!3007)

(assert (=> b!208210 (= lt!106771 (getCurrentListMapNoExtraKeys!452 _keys!825 (array!9807 (store (arr!4653 _values!649) i!601 (ValueCellFull!2307 v!520)) (size!4978 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106770 () ListLongMap!3007)

(assert (=> b!208210 (= lt!106770 (getCurrentListMapNoExtraKeys!452 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!208211 () Bool)

(declare-fun res!101262 () Bool)

(assert (=> b!208211 (=> (not res!101262) (not e!135833))))

(assert (=> b!208211 (= res!101262 (and (= (size!4978 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4979 _keys!825) (size!4978 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!208212 () Bool)

(declare-fun e!135831 () Bool)

(assert (=> b!208212 (= e!135831 tp_is_empty!5301)))

(declare-fun mapNonEmpty!9020 () Bool)

(declare-fun tp!19358 () Bool)

(assert (=> mapNonEmpty!9020 (= mapRes!9020 (and tp!19358 e!135831))))

(declare-fun mapKey!9020 () (_ BitVec 32))

(declare-fun mapRest!9020 () (Array (_ BitVec 32) ValueCell!2307))

(declare-fun mapValue!9020 () ValueCell!2307)

(assert (=> mapNonEmpty!9020 (= (arr!4653 _values!649) (store mapRest!9020 mapKey!9020 mapValue!9020))))

(declare-fun b!208213 () Bool)

(declare-fun res!101261 () Bool)

(assert (=> b!208213 (=> (not res!101261) (not e!135833))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!208213 (= res!101261 (validKeyInArray!0 k0!843))))

(declare-fun res!101260 () Bool)

(assert (=> start!20798 (=> (not res!101260) (not e!135833))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20798 (= res!101260 (validMask!0 mask!1149))))

(assert (=> start!20798 e!135833))

(declare-fun array_inv!3075 (array!9806) Bool)

(assert (=> start!20798 (and (array_inv!3075 _values!649) e!135834)))

(assert (=> start!20798 true))

(assert (=> start!20798 tp_is_empty!5301))

(declare-fun array_inv!3076 (array!9808) Bool)

(assert (=> start!20798 (array_inv!3076 _keys!825)))

(assert (=> start!20798 tp!19357))

(declare-fun b!208214 () Bool)

(declare-fun res!101258 () Bool)

(assert (=> b!208214 (=> (not res!101258) (not e!135833))))

(declare-datatypes ((List!3001 0))(
  ( (Nil!2998) (Cons!2997 (h!3639 (_ BitVec 64)) (t!7940 List!3001)) )
))
(declare-fun arrayNoDuplicates!0 (array!9808 (_ BitVec 32) List!3001) Bool)

(assert (=> b!208214 (= res!101258 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2998))))

(declare-fun b!208215 () Bool)

(declare-fun res!101259 () Bool)

(assert (=> b!208215 (=> (not res!101259) (not e!135833))))

(assert (=> b!208215 (= res!101259 (= (select (arr!4654 _keys!825) i!601) k0!843))))

(assert (= (and start!20798 res!101260) b!208211))

(assert (= (and b!208211 res!101262) b!208209))

(assert (= (and b!208209 res!101257) b!208214))

(assert (= (and b!208214 res!101258) b!208207))

(assert (= (and b!208207 res!101263) b!208213))

(assert (= (and b!208213 res!101261) b!208215))

(assert (= (and b!208215 res!101259) b!208210))

(assert (= (and b!208206 condMapEmpty!9020) mapIsEmpty!9020))

(assert (= (and b!208206 (not condMapEmpty!9020)) mapNonEmpty!9020))

(get-info :version)

(assert (= (and mapNonEmpty!9020 ((_ is ValueCellFull!2307) mapValue!9020)) b!208212))

(assert (= (and b!208206 ((_ is ValueCellFull!2307) mapDefault!9020)) b!208208))

(assert (= start!20798 b!208206))

(declare-fun m!235909 () Bool)

(assert (=> b!208214 m!235909))

(declare-fun m!235911 () Bool)

(assert (=> start!20798 m!235911))

(declare-fun m!235913 () Bool)

(assert (=> start!20798 m!235913))

(declare-fun m!235915 () Bool)

(assert (=> start!20798 m!235915))

(declare-fun m!235917 () Bool)

(assert (=> b!208210 m!235917))

(declare-fun m!235919 () Bool)

(assert (=> b!208210 m!235919))

(declare-fun m!235921 () Bool)

(assert (=> b!208210 m!235921))

(declare-fun m!235923 () Bool)

(assert (=> b!208209 m!235923))

(declare-fun m!235925 () Bool)

(assert (=> mapNonEmpty!9020 m!235925))

(declare-fun m!235927 () Bool)

(assert (=> b!208213 m!235927))

(declare-fun m!235929 () Bool)

(assert (=> b!208215 m!235929))

(check-sat (not mapNonEmpty!9020) (not b!208213) (not b_next!5439) (not start!20798) (not b!208210) b_and!12203 tp_is_empty!5301 (not b!208214) (not b!208209))
(check-sat b_and!12203 (not b_next!5439))
